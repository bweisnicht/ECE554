

module t_alu_with_logic;


   
   reg [15:0] readdata1, readdata2, immediate, e_Out;
   reg [3:0] alu_op;
   reg imm_sel, sign;
   wire zero, OFL;
   wire [15:0] alu_result;
   
   reg [15:0] count, alu_input2;
   reg [15:0] difference;
   reg cout;
   
   integer shift_incr;

   localparam ROL = 4'b0000, SLL = 4'b0001, ROR = 4'b0010, SRA = 4'b0011;
   localparam ADD = 4'b0100, OR = 4'b0101, XOR = 4'b0110, AND = 4'b0111;
   localparam SLBI = 4'b1000, BTR = 4'b1001, SEQ = 4'b1010, SLT = 4'b1011;
   localparam SLE = 4'b1100, SCO = 4'b1101, SUB = 4'b1110;


   alu_with_logic alu0 (.readdata1(readdata1), .readdata2(readdata2), .immediate(immediate), 
                        .imm_sel(imm_sel), .sign(sign), .alu_op(alu_op), 
                        .zero(zero), .alu_result(alu_result), .OFL(OFL));
                        
    initial
    begin
       sign = 1'b1;
       imm_sel = 1'b0;
       readdata1 = 16'h9aff;
       readdata2 = 16'h7888;
       alu_op = SLT;
       
       #10;
       
       for (count = 16'd0; count < 16'd100000; count = count + 1'b1) begin
          readdata1 = $unsigned($random);
          readdata2 = $unsigned($random);
          immediate = $unsigned($random);
          alu_op = count[3:0];
          
          if (alu_op == SLBI) begin
            imm_sel = 1'b1;
            immediate = {8'b0, immediate[7:0]};
          end
          else begin
            imm_sel = 1'b0;
          end
          
         #5;
       end
      
     end  
     
     
     always @(*) begin
        if (imm_sel)
           alu_input2 <= immediate;
        else
           alu_input2 <= readdata2;
      end
     
     always @(*) begin
        difference = alu_input2 - readdata1;
        casex(alu_op)
          ROL:
          begin
             e_Out = readdata1;
                for (shift_incr = 0; shift_incr < {1'b0, alu_input2[3:0]}; shift_incr = shift_incr + 1) begin
                     e_Out = {e_Out[14:0], e_Out[15]};
                end 
          end
          SLL:
          begin
             e_Out = readdata1 << alu_input2[3:0]; 
          end
          ROR: 
          begin
             e_Out = readdata1;
             for (shift_incr = 0; shift_incr < alu_input2[3:0]; shift_incr = shift_incr + 1) begin
                     e_Out = {e_Out[0], e_Out[15:1]};
             end
          end
          SRA:
          begin
             e_Out = readdata1;
             for (shift_incr = 0; shift_incr < alu_input2[3:0]; shift_incr = shift_incr + 1) begin
                     e_Out = {e_Out[15], e_Out[15:1]};
             end
          end
          ADD:
          begin
             e_Out = readdata1 + alu_input2;
          end
          OR:
          begin
             e_Out = readdata1 | alu_input2;
          end
          XOR:
          begin
             e_Out = readdata1 ^ alu_input2;
          end
          AND:
          begin
             e_Out = readdata1 & alu_input2;
          end
          SLBI:
          begin
             e_Out = (readdata1 << 8) | alu_input2[7:0];
          end
          BTR:
          begin
             e_Out[0] = readdata1[15];
             e_Out[1] = readdata1[14];
             e_Out[2] = readdata1[13];
             e_Out[3] = readdata1[12];
             e_Out[4] = readdata1[11];
             e_Out[5] = readdata1[10];
             e_Out[6] = readdata1[9];
             e_Out[7] = readdata1[8];
             e_Out[8] = readdata1[7];
             e_Out[9] = readdata1[6];
             e_Out[10] = readdata1[5];
             e_Out[11] = readdata1[4];
             e_Out[12] = readdata1[3];
             e_Out[13] = readdata1[2];
             e_Out[14] = readdata1[1];
             e_Out[15] = readdata1[0];
           end
           SEQ:
           begin
            e_Out = (readdata1 == alu_input2);
           end
           SLT:
           begin
              if ((!difference[15] & !OFL) | (readdata1[15] & ~alu_input2[15])) 
                e_Out = 16'd1;
             else
                e_Out = 16'b0;         
           end
           SLE:
           begin
             if ((difference == 17'b0) | !(difference[15] | OFL) | (readdata1[15] & ~alu_input2[15]))
                e_Out = 16'd1;
             else
                e_Out = 16'b0;
           end
           SCO:
           begin
            {cout, e_Out} = readdata1 + alu_input2;
            e_Out = {15'b0, cout};
           end
           SUB:
           begin
             e_Out = alu_input2 - readdata1;
           end
           default: begin
             e_Out = 16'bx;
           end
           endcase
          end
          
          always @(alu_result) begin
             #1;
             if (alu_result != e_Out) begin
                $display("%t: we have an error!", $time);
              end
           end
             
                        
endmodule