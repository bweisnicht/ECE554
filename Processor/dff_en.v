

module dff_en (input wire clk, d, rst, en, output wire q);

	wire d_muxed;
	dff dff_en(.q(q), .d(d_muxed), .clk(clk), .rst(rst));
	mux2_1 mx (.InA(q), .InB(d), .S(en), .Out(d_muxed));
	
endmodule
