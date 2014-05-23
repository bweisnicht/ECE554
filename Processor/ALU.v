`default_nettype none
module ALU(A, B, Cin, Op, invA, invB, sign, Out, OFL, Zero, Cout);
	input wire [23:0] A, B;
	input wire Cin;
	input wire [3:0] Op;
	input wire invA, invB, sign;
	output wire [23:0] Out;
	output wire OFL, Zero, Cout;
	wire[23:0]  A1, B1, bsOut, claOut, orOut, xorOut, andOut, prepreOut, preOut, mux00, mux01, mux1, revA, orIn;
	wire [1:0] adjusted_shift_op;
	wire [4:0] shift_amnt; // amount to shift
	wire zero, dummyG, dummyP, ofl, nzero, SLBI, BTR, submod9_sel;
	
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
	
	assign zero = 1'b0;
	assign SLBI = Op[3] & (~Op[0]);
	assign BTR = Op[3] & Op[0];
	
	// invert in case we want to subtract 
	assign A1 = (A ^ {24{invA}});
	assign B1 = (B ^ {24{invB}});
	

	
	mux2_1 mux_SLBI_shift[4:0] (.InA(B1[4:0]), .InB(5'd12), .S(SLBI), .Out(shift_amnt));
	
	mux2_1 orChoose[23:0] (.InA(A1), .InB(bsOut), .S(SLBI), .Out(orIn));
	
	mux2_1 shift_op[1:0] (.InA(Op[1:0]), .InB(2'b1) ,.S(SLBI), .Out(adjusted_shift_op));
	
	shift_24 submod3(.In(A1[23:0]), .Cnt(shift_amnt), .Op(adjusted_shift_op), .Out(bsOut), .InRev1(revA));
	add24 add0(.InA(A1[23:0]), .InB(B1[23:0]), .Cin(Cin), .Sum(claOut),.OFL(ofl), .Cout(Cout));
	
	
	assign orOut = orIn | B1;
	assign xorOut = A1 ^ B1;
	assign andOut = A1 & B1;

	
	assign submod9_sel = Op[0] | SLBI;
	
	mux2_1 submod8 [23:0]( .InB(andOut), .InA(xorOut), .S(Op[0]), .Out(mux00));
	mux2_1 submod9 [23:0]( .InB(orOut),  .InA(claOut), .S(Op[0]), .Out(mux01));
	mux2_1 submod10[23:0](.InB(mux00),  .InA(mux01),  .S(Op[1]), .Out(mux1));
	mux2_1 submod11[23:0](.InB(mux1),   .InA(bsOut),  .S(Op[2]), .Out(prepreOut));
	mux2_1 submod12[23:0](.InB(revA), .InA(prepreOut), .S(BTR), .Out(preOut));
	mux2_1 or_mux[23:0] (.InB(orOut), .InA(preOut), .S(SLBI), .Out(Out));
	
	assign Zero = ~|Out;
	
	assign OFL = ~|{Op[1:0]} & ofl & Op[2];
	
endmodule
