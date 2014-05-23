`default_nettype none
module pc_logic(pc_add, immediate, alu_result, readdata1, epc, opcode, pc_in, flush);

	input wire [23:0] pc_add, immediate, alu_result, readdata1, epc;
	input wire [4:0] opcode;
	output wire [23:0] pc_in;
	output  wire flush;
	
	wire BEQ, BNE, BLT, RET, NOP_RTI;
	wire pc_add_sel, jump_sel, dummy1, dummy2, dummy3, dummy4, J_JAL;
	wire [23:0] pc_imm_add, mux_pc_add_out, mux_jump_out, mux_ret_out;
	
	assign BEQ = (!opcode[4]) & opcode[3] & opcode[2] & (!opcode[1]) & (!opcode[0]);
	assign BNE = (!opcode[4]) & opcode[3] & opcode[2] & (!opcode[1]) & opcode[0];
	assign J_JAL = !(opcode[4] | opcode[3] | opcode[0]) & opcode[2];
	assign NOP_RTI = !(opcode[4] | opcode[3] | opcode[2] ) & opcode[1] & opcode[0];
	assign BLT = (!opcode[4]) & opcode[3] & opcode[2] & opcode[1] & opcode[0];
	assign RET = (!opcode[4]) & opcode[3] & opcode[2] & opcode[1] & (!opcode[0]);


	// addition logic for branches and jumps
	add24 bob(.InA(immediate), .InB(pc_add), .Cin(1'b0), .Sum(pc_imm_add), .OFL(dummy2), .Cout(dummy1));
	
	assign pc_add_sel = ((BEQ & (~|readdata1)) | (BNE & (|readdata1)) | (J_JAL) | (BLT & readdata1[23]));
	assign jump_sel = (!opcode[4]) & (!opcode[3]) & opcode[2] & opcode[0];
	
	mux2_1 mux_pc_add [23:0] (.InA(pc_add), .InB(pc_imm_add), .S(pc_add_sel), .Out(mux_pc_add_out));
	mux2_1 mux_jump [23:0] (.InA(mux_pc_add_out), .InB(alu_result), .S(jump_sel), .Out(mux_jump_out));
	mux2_1 mux_ret [23:0] (.InA(mux_jump_out), .InB(readdata1), .S(RET), .Out(mux_ret_out));
	mux2_1 mux_nop [23:0] (.InA(mux_ret_out), .InB(epc), .S(NOP_RTI), .Out(pc_in));



	assign flush = pc_add_sel | jump_sel | RET | NOP_RTI ;
	
endmodule
