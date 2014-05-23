`default_nettype none
module alu_with_logic(readdata1, readdata2, immediate, imm_sel, sign, alu_op, zero, alu_result, OFL);
	input wire [23:0] readdata1, readdata2, immediate;
	input wire [3:0]alu_op; 
	input wire imm_sel, sign;
	output wire zero, OFL;
	output wire [23:0] alu_result;
	
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
	localparam ADD = 4'b0100;
	
	wire [23:0] B_input, temp_alu_result;
	wire [3:0] actual_op;
	wire [1:0] set_ops_sel;
        assign set_ops_sel = alu_op[1:0];

	wire subtract, add, seq, slt, sle, sco, Cout;
	wire seq_out, slt_out, sle_out, sco_out, set_ops_out, is_set_op, op_sel;

	assign add = (~alu_op[3]) & alu_op[2] & (~alu_op[1]) & (~alu_op[0]);
	assign seq = (alu_op[3] & alu_op[1]) & ~(alu_op[0] | alu_op[2]);
	assign slt = (alu_op[3] & ~alu_op[2] & alu_op[1] & alu_op[0]);
	assign sle = (alu_op[3] & alu_op[2]) & ~(alu_op[0] | alu_op[1]);
	assign sco = (alu_op[3] & alu_op[2] & ~alu_op[1] & alu_op[0]);
	// 1 must be in the most significant digit, you need at least a single 1 in op[2] or op[1]
	// but it can't be SCO
	assign subtract = alu_op[3] & (alu_op[2] | alu_op[1]) & ~(alu_op[2] & (~alu_op[1]) & alu_op[0]);
		
	
	
	// select whether we use a reg value or an immediate
	mux2_1 imm_mux[23:0] (.InA(readdata2), .InB(immediate), .S(imm_sel), .Out(B_input));
	
	
	assign op_sel = alu_op[3] & (alu_op[2] | alu_op[1]);
	mux2_1 op_mux[3:0] (.InA(alu_op), .InB(ADD), .S(op_sel), .Out(actual_op));
	
	ALU alu(.A(readdata1), .B(B_input), .Cin(subtract), .Op(actual_op), 
	          .invA(subtract), .invB(1'b0), .sign(sign), .Out(temp_alu_result), .OFL(OFL), .Zero(zero), .Cout(Cout));
	          
	assign seq_out = seq & zero;
	assign slt_out = (!temp_alu_result[23] & slt & !OFL & !zero) | (readdata1[23] & ~B_input[23] & slt);
	assign sle_out = sle & ((!temp_alu_result[23] & !OFL) | (readdata1[23] & ~B_input[23]));
	assign sco_out = Cout & sco;
	assign is_set_op = seq | slt | sle | sco;
	
	mux4_1 mux_set_ops (.InA(sle_out), .InB(sco_out), .InC(seq_out), .InD(slt_out), .S(set_ops_sel), .Out(set_ops_out));
	
	//
	mux2_1 mux_sel_out (.InA(temp_alu_result[0]), .InB(set_ops_out), .S(is_set_op), .Out(alu_result[0]));
	
	// mux2_1 mux_sel_out2 [14:0] (.InA(temp_alu_result), .InB(15'b0), .S(is_set_op), .Out(alu_result));
	// truncate the 23 most significant bits if you do end up setting the bits
	assign alu_result[23:1] = temp_alu_result[23:1] & (~({23{is_set_op}}));
	
	
	
endmodule
