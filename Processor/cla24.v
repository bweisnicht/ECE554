module cla24(InA, InB, Cin, sign, Sum, Gen, Prop, OFL, Cout);
	input [15:0] InA, InB;
	input Cin, sign;
	output [15:0] Sum;
	output Gen, Prop, OFL, Cout;
	wire [3:0] c, g, p, pAndc;
	wire [2:0] ofl;
	
	cla4 submod1(InA[3:0], InB[3:0], Cin, sign, Sum[3:0], g[0], p[0], ofl[0]);
	and2 submod2(Cin, p[0], pAndc[0]);
	or2  submod3(pAndc[0], g[0], c[0]);
	
	cla4 submod4(InA[7:4], InB[7:4], c[0], sign, Sum[7:4], g[1], p[1], ofl[1]);
	and2 submod5(c[0], p[1], pAndc[1]);
	or2  submod6(pAndc[1], g[1], c[1]);
	
	cla4 submod7(InA[11:8], InB[11:8], c[1], sign, Sum[11:8], g[2], p[2], ofl[2]);
	and2 submod8(c[1], p[2], pAndc[2]);
	or2  submod9(pAndc[2], g[2], c[2]);
	
	cla4 submod10(InA[15:12], InB[15:12], c[2], sign, Sum[15:12], g[3], p[3], OFL);
	and2 submod11(c[2], p[3], pAndc[3]);
	or2  submod12(pAndc[3], g[3], c[3]);
	
	assign Cout = c[3];
	assign Gen = (g[0]&p[1]&p[2]&p[3]) | (g[1]&p[2]&p[3]) | (g[2]&p[3]) | g[3];
	assign Prop = p[0]&p[1]&p[2]&p[3];
	
endmodule
