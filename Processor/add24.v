`default_nettype none
module add24(InA, InB, Cin, Sum, OFL, Cout);
	input wire [23:0] InA, InB;
	input wire Cin;
	output wire [23:0] Sum;
	output wire OFL, Cout;
	wire [3:0] c, g, p, pAndc;
	wire [2:0] ofl;
	
	wire [24:0] InA_big, InB_big, temp_Sum;

	assign InA_big = {InA[23], InA[23:0]};
	assign InB_big = {InB[23], InB[23:0]};
	// this may not be legit
	assign temp_Sum = InA_big + InB_big + Cin;
        assign Sum = temp_Sum[23:0];
	
	// if signs of InA and InB are the same and the signs of InA and sum don't agree
	assign OFL = !(InA[23] ^ InB[23]) & (InA[23] ^ temp_Sum[24]);
        assign Cout = temp_Sum[24];
	
endmodule
