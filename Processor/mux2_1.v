// a 2-1 multiplexer module 
module mux2_1 (input wire InA, InB, S, output wire Out);

wire notS, A_nand, B_nand;



not S0 (notS, S);

nand A0 (A_nand, notS, InA);

nand B0 (B_nand, S, InB);

nand E0 (Out, A_nand, B_nand);

endmodule
