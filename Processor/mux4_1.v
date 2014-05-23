

module mux4_1 (input wire InA, InB, InC, InD, input wire [1:0] S, output wire Out);

     wire [1:0] mux_out;

     mux2_1 mux0 (.InA(InA), .InB(InB), .S(S[0]), .Out(mux_out[0]));
     mux2_1 mux1 (.InA(InC), .InB(InD), .S(S[0]), .Out(mux_out[1]));
     mux2_1 mux2 (.InA(mux_out[0]), .InB(mux_out[1]), .S(S[1]), .Out(Out));
 

endmodule
