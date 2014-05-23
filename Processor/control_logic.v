module control_logic (reg_write, reg_dest, wc_mux_sel, write_enable, jal_jalr, jal_j,
                      alu_op, ori_andi, gt_5bit_imm, imm, instruction, slbi, ret,
                       write_reg_dx, reg_write_dx, write_reg_xm, reg_write_xm, opcode
                      , read1sel,clk, rst,  bypass_slot1_xm, bypass_slot1_mw,
                       bypass_slot2_xm, bypass_slot2_mw, flush, lbi);
   input wire [23:0] instruction;
   input wire [4:0] write_reg_dx, write_reg_xm, read1sel;
   input wire reg_write_dx, reg_write_xm, clk, rst, flush;
   output reg  reg_dest, wc_mux_sel;
   output reg   gt_5bit_imm, imm, slbi, ret, lbi;
   output wire  jal_jalr, jal_j, ori_andi, write_enable, reg_write;
   output wire bypass_slot1_xm, bypass_slot1_mw, bypass_slot2_xm, bypass_slot2_mw;
   output reg [3:0] alu_op;
   output wire [4:0] opcode;
 
   // wc_mux_sel is the thing we plug into the most significant mux of write_control.v
  
   wire [3:0] math_mux_out, shift_mux_out;

   localparam HALT = 5'b0, NOP = 5'b1, ADDI = 5'b01000, SUBI = 5'b01001;
   localparam ORI = 5'b01010, ANDI = 5'b01011, ROLI = 5'b10100, SLLI = 5'b10101;
   localparam RORI = 5'b10110, SRAI = 5'b10111, ST = 5'b10000, LD = 5'b10001;
   localparam STU = 5'b10011, BTR = 5'b11001, MATH = 5'b11011, SHIFT = 5'b11010;
   localparam SEQ = 5'b11100, SLT = 5'b11101, SLE = 5'b11110, SCO = 5'b11111;
   
   localparam BEQZ = 5'b01100, BNEZ = 5'b01101, BLTZ = 5'b01111;
   
   localparam LBI = 5'b11000, SBLI = 5'b10010;
   
   localparam J = 5'b00100, JR = 5'b00101, JAL = 5'b00110, JALR = 5'b00111;
   
   localparam RET = 5'b01110, SIIC = 5'b00010, NOP_RTI = 5'b00011;
  
      // Op : function
	//0000 ROL
	//0001 SLL
	//0010 ROR
	//0011 SRA
	//0100 ADD
	//0101 OR
	//0110 XOR
	//0111 AND
	//1000 SBLI
	//1001 BTR
	//1010 SEQ
	//1011 SLT
	//1100 SLE
	//1101 SCO
	//1110 SUB
   // alu Ops:
   localparam ROL = 4'b0000, SLL = 4'b0001, ROR = 4'b0010, SRA = 4'b0011;
   localparam ADD = 4'b0100, OR = 4'b0101, XOR = 4'b0110, AND = 4'b0111;
   localparam SLBI_op = 4'b1000, BTR_op = 4'b1001, SEQ_op = 4'b1010, SLT_op = 4'b1011;
   localparam SLE_op = 4'b1100, SCO_op = 4'b1101, SUB = 4'b1110;

   // make sure we can trust these simplification as always being true
   assign jal_jalr = !instruction[23] & !instruction[22] & instruction[20];
   assign jal_j = !(instruction[23] | instruction[22] | instruction[19]);
   assign ori_andi = !instruction[23] & instruction[22] & instruction[20];

   // handle data hazard stalls!
   reg write_enable_pre, reg_write_pre, uses_reg1;
   wire [3:0] opcode_msb;
   wire opcode_lsb,  store, stu, uses_two;

   assign store = instruction[23] & !(|(instruction[22:19]));
   assign stu = instruction[23] & (!(|instruction[22:21])) & (&instruction[20:19]);
   assign uses_two = !imm || store || stu;
  // if [(the reg we want to read from) == (the reg to be written to in the dx stage) 
  // AND we're actually writing to it AND we're actually using the register1
  // then we will have two stalls
   assign bypass_slot1_xm = ( |(!(read1sel ^ write_reg_dx)) && reg_write_dx && uses_reg1);
   // if we have a case where we could use either, we want to use the newest data,
   assign bypass_slot1_mw = ( |(!(read1sel ^ write_reg_xm)) && reg_write_xm && uses_reg1) && !bypass_slot1_xm;
   
   assign bypass_slot2_xm = ( |(!(instruction[13:9] ^ write_reg_dx)) && reg_write_dx && uses_two);
   // if we have a case where we could use either, we want to use the newest data,
   assign bypass_slot2_mw = (( |(!(instruction[13:9] ^ write_reg_xm)) && reg_write_xm && uses_two) && !bypass_slot2_xm); 



   

   assign write_enable = (!flush && write_enable_pre);
   assign reg_write = (!flush && reg_write_pre);

   assign opcode_msb = ({4{(!flush)}} & instruction[23:20]);
   assign opcode_lsb = (flush | instruction[19]);

   assign opcode = {opcode_msb, opcode_lsb};
   
   always @(instruction) begin
       // set default values

       reg_dest <= 1'b0;
       write_enable_pre <= 1'b0; 
       gt_5bit_imm <= 1'b0;
       imm <= 1'b0;
       alu_op <= 4'b0;
       reg_write_pre <=1'b0;
       wc_mux_sel <= 1'b0;
       uses_reg1 <= 1'b1;
       lbi <= 1'b0;
       ret <= 1'b0;
       slbi <= 1'b0;
       
       casex (instruction[23:19]) 
            HALT:
            begin
            imm <= 1'b1;
            end
            NOP:
            begin
            imm <= 1'b1;
            uses_reg1 <= 1'b0;
            end
            // block 1
            ADDI:
            begin
              reg_write_pre <= 1'b1;
              reg_dest <= 1'b1;
              write_enable_pre <= 1'b0;
              gt_5bit_imm <= 1'b0;
              imm <= 1'b1;

              alu_op <= ADD;
            end
            SUBI:
            begin
              reg_write_pre <= 1'b1;
              reg_dest <= 1'b1;
              write_enable_pre <= 1'b0;
              gt_5bit_imm <= 1'b0;
              imm <= 1'b1;
              alu_op <= SUB;
            end
            ORI:
            begin
              reg_write_pre <= 1'b1;
              reg_dest <= 1'b1;
              write_enable_pre <= 1'b0;
              gt_5bit_imm <= 1'b0;
              imm <= 1'b1;
              alu_op <= OR;
            end
            ANDI:
            begin
              reg_write_pre <= 1'b1;
              reg_dest <= 1'b1;
              write_enable_pre <= 1'b0;
              gt_5bit_imm <= 1'b0;
              imm <= 1'b1;
              alu_op <= AND;
            end
            ROLI:
            begin
              reg_write_pre <= 1'b1;
              reg_dest <= 1'b1;
              write_enable_pre <= 1'b0;
              gt_5bit_imm <= 1'b0;
              imm <= 1'b1;
              alu_op <= ROL;
            end
            SLLI:
            begin
              reg_write_pre <= 1'b1;
              reg_dest <= 1'b1;
              write_enable_pre <= 1'b0;
              gt_5bit_imm <= 1'b0;
              imm <= 1'b1;
              alu_op <= SLL;
            end
            RORI:
            begin
              reg_write_pre <= 1'b1;
              reg_dest <= 1'b1;
              write_enable_pre <= 1'b0;
              gt_5bit_imm <= 1'b0;
              imm <= 1'b1;
              alu_op <= ROR;
            end
            SRAI:
            begin
              reg_write_pre <= 1'b1;
              reg_dest <= 1'b1;
              write_enable_pre <= 1'b0;
              gt_5bit_imm <= 1'b0;
              imm <= 1'b1;
              alu_op <= SRA;
            end
            // block 2:
            ST:
            begin
              reg_write_pre <= 1'b0;
              write_enable_pre <= 1'b1;
              gt_5bit_imm <= 1'b0;
              imm <= 1'b1;
              alu_op <= ADD;
            end
            LD:
            begin
              reg_write_pre <= 1'b1;
              reg_dest <= 1'b1;
              write_enable_pre <= 1'b0;
              gt_5bit_imm <= 1'b0;
              imm <= 1'b1;
              alu_op <= ADD;
            end
            STU: // this will use Rs as its source
            begin
              reg_write_pre <= 1'b1;
              write_enable_pre <= 1'b1;
              gt_5bit_imm <= 1'b0;
              imm <= 1'b1;
              alu_op <= ADD;
              wc_mux_sel <= 1'b1; 
            end
            BTR: 
            begin
              reg_write_pre <= 1'b1;
              reg_dest <= 1'b0;
              write_enable_pre <= 1'b0;
              alu_op <= BTR_op;
              imm <= 1'b1;
            end
            //block 3:
            MATH:
            begin
              reg_write_pre <= 1'b1;
              reg_dest <= 1'b0;
              write_enable_pre <= 1'b0;
              imm <= 1'b0;
              alu_op <= math_mux_out;
            end
            SHIFT:
            begin
              reg_write_pre <= 1'b1;
              reg_dest <= 1'b0;
              write_enable_pre <= 1'b0;
              imm <= 1'b0;
              alu_op <= shift_mux_out;
            end
            SEQ:
            begin
              reg_write_pre <= 1'b1;
              write_enable_pre <= 1'b0;
              imm <= 1'b0;
              alu_op <= SEQ_op;
            end
            SLT:
            begin
              reg_write_pre <= 1'b1;
              write_enable_pre <= 1'b0;
              imm <= 1'b0;
              alu_op <= SLT_op;
            end
            SLE:
            begin
              reg_write_pre <= 1'b1;
              write_enable_pre <= 1'b0;
              imm <= 1'b0;
              alu_op <= SLE_op;
            end  
            SCO:
            begin
              reg_write_pre <= 1'b1;
              write_enable_pre <= 1'b0;
              imm <= 1'b0;
              alu_op <= SCO_op;
            end 
            // block 4: branches
            BEQZ:
            begin
              reg_write_pre <= 1'b0;
              write_enable_pre <= 1'b0;
              gt_5bit_imm <= 1'b1;
              imm <= 1'b1;
              alu_op <= ADD;
            end
            BNEZ:
            begin
              reg_write_pre <= 1'b0;
              write_enable_pre <= 1'b0;
              gt_5bit_imm <= 1'b1;
              imm <= 1'b1;
              alu_op <= ADD;
            end
            BLTZ:
            begin
              reg_write_pre <= 1'b0;
              write_enable_pre <= 1'b0;
              gt_5bit_imm <= 1'b1;
              imm <= 1'b1;
              alu_op <= ADD;
            end
            // block 5: load bytes
            LBI:
            begin
              reg_write_pre <= 1'b1;
              write_enable_pre <= 1'b0;
              wc_mux_sel <= 1'b1; 
              gt_5bit_imm <= 1'b1;
              uses_reg1 <= 1'b0;
              imm <= 1'b1;
	      lbi <= 1'b1;
            end
            SBLI:
            begin
              reg_write_pre <= 1'b1;
              write_enable_pre <= 1'b0;
              gt_5bit_imm <= 1'b1;
              imm <= 1'b1;
              alu_op <= SLBI_op; 
              slbi <= 1'b1; 
              wc_mux_sel <= 1'b1; 
            end
            // block 6: Jumps
            J:
            begin
              reg_write_pre <= 1'b0;
              write_enable_pre <= 1'b0;
              gt_5bit_imm <= 1'b1;
              uses_reg1 <= 1'b0;
            end
            JR:
            begin
              reg_write_pre <= 1'b0;
              write_enable_pre <= 1'b0;
              gt_5bit_imm <= 1'b1;
              imm <= 1'b1;
              alu_op <= ADD;       
            end
            JAL:
            begin
              reg_write_pre <= 1'b1;
              write_enable_pre <= 1'b0;
              gt_5bit_imm <= 1'b1;
              wc_mux_sel <= 1'b1; 
              uses_reg1 <= 1'b0;
             end
            JALR:
            begin
              reg_write_pre <= 1'b1;
              write_enable_pre <= 1'b0;
              gt_5bit_imm <= 1'b1;
              imm <= 1'b1;
              alu_op <= ADD;
              wc_mux_sel <= 1'b1; 
            end
            RET:
            begin
              reg_write_pre <= 1'b0;
              write_enable_pre <= 1'b0;
              ret <= 1'b1;
              imm <= 1'b1;
            end
            
            NOP_RTI:
            begin
               reg_write_pre <= 1'b0;
               write_enable_pre <= 1'b0;
               imm <= 1'b1;
            end 
            default:
            begin
            end
            endcase
         end
         
         mux4_1 mux_math_op [3:0] (.InA(ADD), .InB(SUB), .InC(OR), .InD(AND), .S(instruction[1:0]), .Out(math_mux_out));
         mux4_1 mux_shift_op [3:0] (.InA(ROL), .InB(SLL), .InC(ROR), .InD(SRA), .S(instruction[1:0]), .Out(shift_mux_out));

endmodule
