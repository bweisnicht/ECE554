`default_nettype none

module write_control (rd, rt, rs, jal_jalr, reg_dest, wc_mux_sel, write_reg);
	input wire [4:0] rd, rt, rs;
	input wire jal_jalr, reg_dest, wc_mux_sel;
	output wire [4:0] write_reg;
	wire [4:0] rdrt_select, rs31_select;
	wire bor, aor;
	
	
	assign bor = wc_mux_sel;
	assign aor = jal_jalr;
	
	mux2_1  regdest [4:0](.InB(rt), .InA(rd), .S(reg_dest), .Out(rdrt_select));
	mux2_1  jaljalr [4:0](.InB(5'd31), .InA(rs), .S(aor), .Out(rs31_select));
	mux2_1 writereg [4:0] (.InA(rdrt_select), .InB(rs31_select), .S(bor), .Out(write_reg));
	
endmodule
