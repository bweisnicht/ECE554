`default_nettype none
`timescale 1ns/ 100ps

module proc (/*AUTOARG*/
   // Outputs
   din_mmu, addr, CPU_rw, CPU_en,
   // Inputs
   clk, rst, dout_mmu, mmu_stall, interrupt
   );

   input wire clk;
   input wire rst, interrupt;
   input wire [23:0] dout_mmu;
   input wire mmu_stall;

	output wire [23:0] din_mmu, addr;
	// CPU_rw = 1 -> read
	// CPU_rw = 0 -> write
	output wire CPU_rw, CPU_en;
  
   
   wire [23:0] pc_in, pc_add_fd, instruction_fd;


   wire [23:0] mem_stage_result_mem, mem_stage_result_wr, mem_data_out, pc_out_fd;

   wire [4:0]  write_reg_sel_ex;
   wire [4:0] write_reg_sel_mem, opcode_mw, opcode_xm;
   wire reg_write_en_dec;
   wire halt, flush,  mem_stall, reg_write_en_ex, bypass_conflict;
   wire mem_write_en_xm, reg_write_en_mem;
   wire drain, flush_fd;

	reg bypass_load, bypass_load_next;
		


   

   // fetch fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
   
	fetch fetch0 (.clk(clk), .rst(rst), .mem_stall(mem_stall), .pc_in(pc_in), 
				.flush(flush), .pc_add(pc_add_fd), .instruction(instruction_fd),
				.interrupt(interrupt) ,.drain(drain)
				, .flush_out(flush_fd), .pc_out(pc_out_fd));

   
   //decode ddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd

	wire [23:0] pc_add_dx, read1data_dx, read2data_dx, to_ALU_dx, to_Reg_dx;
	wire [23:0] write_data;
	wire [4:0] write_reg_sel_dec, opcode_dx;
    wire [3:0] alu_op_dx;
	wire [1:0] bypass_mem, bypass_wr;
	wire imm_sel_dx, mem_write_en_dx;



	decode decode0 (.pc_add_in(pc_add_fd), .instruction(instruction_fd), 
					.write_reg_sel_ex(write_reg_sel_ex), 
					.write_reg_sel_mem(write_reg_sel_mem), 
					.reg_write_en_ex(reg_write_en_ex), 
					.reg_write_en_mem(reg_write_en_mem), .flush(flush), 
					.clk(clk), .rst(rst), .pc_add_out(pc_add_dx), 
					.read1data(read1data_dx), .read2data(read2data_dx), 
					.to_ALU(to_ALU_dx), .to_Reg(to_Reg_dx), .opcode(opcode_dx), 
					.alu_op(alu_op_dx), .write_reg_sel(write_reg_sel_dec), 
					.imm_sel(imm_sel_dx), .mem_write_en(mem_write_en_dx), 
					.reg_write_en(reg_write_en_dec), .bypass_mem(bypass_mem), 
					.bypass_wr(bypass_wr), .write_data(write_data)
				, .mem_stall(mem_stall), .drain(drain),
			          .flush_fd(flush_fd));
	

   // execute xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

	   wire [23:0] pc_add_xm, pc_in_xm, alu_result_xm, mem_data_xm, to_Reg_xm;

   execute execute0( .pc_add_in(pc_add_dx),  .clk(clk), .rst(rst), 
			 .read1data(read1data_dx), .read2data_in(read2data_dx),
			 .to_ALU(to_ALU_dx), .to_Reg(to_Reg_dx), .bypass_mem(bypass_mem), 
			 .bypass_wr(bypass_wr), .opcode_in(opcode_dx), 
			 .write_reg_sel_in(write_reg_sel_dec),
		     .alu_op(alu_op_dx), .reg_write_en_in(reg_write_en_dec), 
			 .mem_write_en_in(mem_write_en_dx), .imm_sel(imm_sel_dx), 
		     .mem_stage_result_mem(mem_stage_result_mem), 
			 .mem_stage_result_wr(mem_stage_result_wr), 
			 .mem_stall(mem_stall),
				// output
			 .pc_add_out(pc_add_xm), .pc_in(pc_in), .alu_result(alu_result_xm), 
			 .mem_data(mem_data_xm), .pc_in_delay(pc_in_xm),
			 .mem_write_en_out(mem_write_en_xm), 
		     .reg_write_en_out(reg_write_en_ex), .flush(flush), 
			 .opcode_out(opcode_xm), 
			 .write_reg_sel_out(write_reg_sel_ex), .to_Reg_out(to_Reg_xm));

   // memory mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm
   wire [23:0] pc_add_mw, pc_in_mw, to_Reg_mw;


   memory mem0 (//input
	       .pc_add_in(pc_add_xm), .pc_in(pc_in_xm), 
	       .alu_result(alu_result_xm), .mem_data(mem_data_xm), 
	       .to_Reg_in(to_Reg_xm), .mem_write_en(mem_write_en_xm), 
	       .reg_write_en_in(reg_write_en_ex), .opcode_in(opcode_xm), 
	       .write_reg_sel_in(write_reg_sel_ex), .clk(clk), .rst(rst), 
	       .halt(halt), .dout_mmu(dout_mmu), .mem_stall(mem_stall),
	       //output
	       .pc_add_out(pc_add_mw), .pc_in_delay(pc_in_mw), 
	       .to_Reg_out(to_Reg_mw), .write_reg_sel_out(write_reg_sel_mem),
	       .opcode_out(opcode_mw), .reg_write_en_out(reg_write_en_mem), 
	        .mem_stage_result(mem_stage_result_mem),
	       .mem_stage_result_wr(mem_stage_result_wr), 
		.mem_data_out(mem_data_out),
	       .addr(addr), .din_mmu(din_mmu), .CPU_rw(CPU_rw), 
	       .CPU_en(CPU_en));
   // write wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww

   write wr0(//input
	      .pc_add(pc_add_mw), .to_Reg(to_Reg_mw), .opcode(opcode_mw), 
	      .mem_stage_result(mem_data_out), .clk(clk), .rst(rst),
	      //output
              .halt(halt), .write_result(write_data));

			// if it is a load or stu going into the mem stage, and we need a bypass, then stall
   assign mem_stall = mmu_stall | (bypass_conflict & bypass_load); //| halt;

   //assign bypass_mem_ex = bypass_conflic

   assign bypass_conflict =(((opcode_xm == 5'b10001) | (opcode_xm == 5'b10001)) 
						& (|bypass_mem));

	// state machine to handle a situation where we are trying to bypass load
	// data that is still being loaded by the memory
   always @(posedge clk, posedge rst) begin
		if (rst) begin
			bypass_load <= 1'b1;
		end
		else begin
			bypass_load <= bypass_load_next;
		end
	end
	
	always @(*) begin
		if (bypass_load) begin
			if (bypass_conflict)
				bypass_load_next = 1'b0;
			else
				bypass_load_next = 1'b1;
		end else begin
			bypass_load_next = 1'b1;
		end
	end
	// end state machine
   
   
endmodule
// DUMMY LINE FOR REV CONTROL :0:
