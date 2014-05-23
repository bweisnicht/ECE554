/* $Author: karu $ */
/* $LastChangedDate: 2009-03-04 23:09:45 -0600 (Wed, 04 Mar 2009) $ */
/* $Rev: 45 $ */
module proc_hier_bench();

   /* BEGIN DO NOT TOUCH */
   
   /*AUTOWIRE*/
   // Beginning of automatic wires (for undeclared instantiated-module outputs)
   // End of automatics
   

   wire [15:0] PC;
   wire [15:0] Inst;           /* This should be the 15 bits of the FF that
                                  stores instructions fetched from instruction memory
                               */
   wire        RegWrite;       /* Whether register file is being written to */
   wire [2:0]  WriteRegister;  /* What register is written */
   wire [15:0] WriteData;      /* Data */
   wire        MemWrite;       /* Similar as above but for memory */
   wire        MemRead, Imm_Sel, mux811sel, SLBI, zero, beq;
   wire [15:0] MemAddress;
   wire [15:0] MemData, Alu_Immediate, Read_Data1, toReg, immed_logic_toreg, imm8_sext, imm8_out,imm8_zeros;
   wire [3:0]  AluOp;
   wire [4:0]  ConInstr;
   wire [10:0] immed_logic_imm;
   wire [4:0] opdx, opxm, opmw;

   wire        Halt;         /* Halt executed and in Memory or writeback stage */
        
   integer     inst_count;
   integer     trace_file;
   integer     sim_log_file;
     

   proc_hier DUT();
   

   initial begin
      $display("Hello world...simulation starting");
      $display("See verilogsim.log and verilogsim.trace for output");
      inst_count = 0;
      trace_file = $fopen("verilogsim.trace");
      sim_log_file = $fopen("verilogsim.log");
      
   end

   always @ (posedge DUT.c0.clk) begin
      if (!DUT.c0.rst) begin
         if (Halt || RegWrite || MemWrite) begin
            inst_count = inst_count + 1;
         end
         $fdisplay(sim_log_file, "SIMLOG:: Cycle  PC: %8x Instr: %8x RegWrite: %d RegtoWriteTo: %3x writeData: %5x MemRead: %d MemWrite: %d MemAddress: %5x MemData: %8x ALUOP: %4x Immediate: %8x Read_Data1: %8x ImmSel: %d flush %d opcodedx %8b opcodexm %8b opcodemw %8b",
                  
                  PC,
                  Inst,
                  RegWrite,
                  WriteRegister,
                  WriteData,
                  MemRead,
                  MemWrite,
                  MemAddress,
                  MemData,
		  AluOp,
		  Alu_Immediate,
		  Read_Data1,
		  Imm_Sel,
		  flush,
		  opdx,
		  opxm,
		  opmw);//,
		  //ConInstr,
		  //toReg,
		  //immed_logic_imm,
		  //immed_logic_toreg,
		//mux811sel,
		  //imm8_sext,
		  //imm8_out,
		  //imm8_zeros,
		  //SLBI);
         if (RegWrite) begin
            if (MemWrite) begin
               // stu
               $fdisplay(trace_file,"INUM: %8d PC: 0x%04x REG: %d VALUE: 0x%04x ADDR: 0x%04x VALUE: 0x%04x",
                         (inst_count-1),
                        PC,
                        WriteRegister,
                        WriteData,
                        MemAddress,
                        MemData);
            end else if (MemRead) begin
               // ld
               $fdisplay(trace_file,"INUM: %8d PC: 0x%04x REG: %d VALUE: 0x%04x ADDR: 0x%04x",
                         (inst_count-1),
                        PC,
                        WriteRegister,
                        WriteData,
                        MemAddress);
            end else begin
               $fdisplay(trace_file,"INUM: %8d PC: 0x%04x REG: %d VALUE: 0x%04x",
                         (inst_count-1),
                        PC,
                        WriteRegister,
                        WriteData );
            end
         end else if (Halt) begin
            $fdisplay(sim_log_file, "SIMLOG:: Processor halted\n");
            $fdisplay(sim_log_file, "SIMLOG:: sim_cycles %d\n", 1'b0);
            $fdisplay(sim_log_file, "SIMLOG:: inst_count %d\n", inst_count);
            $fdisplay(trace_file, "INUM: %8d PC: 0x%04x",
                      (inst_count-1),
                      PC );

            $fclose(trace_file);
            $fclose(sim_log_file);
            
            $finish;
         end else begin // if (RegWrite)
            if (MemWrite) begin
               // st
               $fdisplay(trace_file,"INUM: %8d PC: 0x%04x ADDR: 0x%04x VALUE: 0x%04x",
                         (inst_count-1),
                        PC,
                        MemAddress,
                        MemData);
            end else begin
               // conditional branch or NOP
               // Need better checking in pipelined testbench
               inst_count = inst_count + 1;
               $fdisplay(trace_file, "INUM: %8d PC: 0x%04x",
                         (inst_count-1),
                         PC );
            end
         end 
      end
      
   end

   /* END DO NOT TOUCH */

   /* Assign internal signals to top level wires
      The internal module names and signal names will vary depending
      on your naming convention and your design */

   // Edit the example below. You must change the signal
   // names on the right hand side
    
   assign PC = DUT.p0.fetch0.pc_out;
   assign Inst = DUT.p0.instruction;

   assign opdx = DUT.p0.opcode_dx;
   assign opxm = DUT.p0.opcode_xm;
   assign opmw = DUT.p0.opcode_mw;
   
   assign RegWrite = DUT.p0.reg_write;
   // Is memory being read, one bit signal (1 means yes, 0 means no)
   
   assign WriteRegister = DUT.p0.write_reg;
   // The name of the register being written to. (3 bit signal)

   assign WriteData = DUT.p0.write_data;
   // Data being written to the register. (16 bits)
   
   assign MemRead =  1'b1;
   // Is memory being read, one bit signal (1 means yes, 0 means no)
   
   assign MemWrite = (DUT.p0.write_enable);
   // Is memory being written to (1 bit signal)
   
   assign MemAddress = DUT.p0.alu_result;
   // Address to access memory with (for both reads and writes to memory, 16 bits)
   
   assign MemData = DUT.p0.read2data;
   // Data to be written to memory for memory writes (16 bits)
   
   assign Halt = DUT.p0.halt;
   // Is processor halted (1 bit signal)
  
  assign Alu_Immediate = DUT.p0.to_ALU;

   assign AluOp = DUT.p0.alu_op;

   assign Read_Data1 = DUT.p0.read1data;

   assign ConInstr = DUT.p0.control.instruction[15:11];

   assign immed_logic_toreg = DUT.p0.imm_d.to_Reg;

   assign mux811sel = DUT.p0.imm_d.mux_imm8_11_sel;
   
   assign imm8_sext = DUT.p0.imm_d.imm8_sext;

   assign imm8_out = DUT.p0.imm_d.imm8_out;
   
   assign toReg = DUT.p0.to_Reg;

   assign immed_logic_imm = DUT.p0.imm_d.imm;
   
   /* Add anything else you want here */

   assign Imm_Sel = DUT.p0.imm;

   assign SLBI = DUT.p0.imm_d.SLBI;

   assign zero = DUT.p0.zero;
 
   assign flush = DUT.p0.flush;

   assign imm8_zeros = DUT.p0.imm_d.imm8_zeros;

endmodule

// DUMMY LINE FOR REV CONTROL :0:
