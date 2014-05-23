`default_nettype none
module write_reg_control (immediate, pc_add, opcode, mem_stage_result, write_data);
	input wire [23:0] immediate, pc_add, mem_stage_result;
	input wire [4:0] opcode;
	output wire [23:0] write_data;	
	
	wire mux_high_sel, mux_jump_sel, JAL, JALR, LBI, LD;
	wire [23:0] mux_mem_out, mux_jump_out; 
	
	assign mux_jump_sel = (!opcode[4]) & (!opcode[3]) & opcode[1];
	assign LBI = opcode[4] & opcode[3] & (!opcode[2]) & (!opcode[1])& (!opcode[0]);
	assign mux_high_sel = mux_jump_sel | LBI;
	
	mux2_1 mux_jump [23:0](.InA(immediate), .InB(pc_add), .S(mux_jump_sel), .Out(mux_jump_out));
	mux2_1 mux_high [23:0](.InA(mem_stage_result), .InB(mux_jump_out), .S(mux_high_sel), .Out(write_data));
	
	
	
endmodule

