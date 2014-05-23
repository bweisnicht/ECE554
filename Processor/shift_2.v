module shift_16(In, Cnt, Op, Out, InRev1);
	input [15:0] In;
	input [3:0] Cnt;
	input [1:0] Op;
	output [15:0] Out, InRev1;
	wire [15:0] InA1, InA2, InA4, InA8, InA16, InRev2, InB2, InB4, InB8, InB16;
	wire S, RotShift;
	wire [7:0] SS;
	
	assign zero = 0;
	
	//Setup rotate signals to indicate whether we are doing a rotate or a shift on each end.
	not1 submod1( Op[0], RotShift);
	
	//Setup the value of the shift (In[15] for arithmetic, 0 for logical)
	mux2_1 submod2(.InB(In[15]), .InA(zero), .S(Op[1]), .Out(S));
	assign SS = {8{S}};
	
	//Flip if left
        assign InRev1[0] = In[15];
        assign InRev1[1] = In[14];
        assign InRev1[2] = In[13];
        assign InRev1[3] = In[12];
        assign InRev1[4] = In[11];
        assign InRev1[5] = In[10];
        assign InRev1[6] =  In[9];
        assign InRev1[7] =  In[8];
        assign InRev1[8] =  In[7];
        assign InRev1[9] =  In[6];
        assign InRev1[10] = In[5];
        assign InRev1[11] = In[4];
        assign InRev1[12] = In[3];
        assign InRev1[13] = In[2];
        assign InRev1[14] = In[1];
        assign InRev1[15] = In[0];
	
	// left or right? 0 = right
	mux2_1x16 submod3(.InB(In[15:0]), .InA(InRev1[15:0]),  .Cin(Op[1]), .Out(InA16[15:0]));
	
	//Go through each row of muxes.
	//Top Row
	assign InB16[7:0] = InA16[15:8];
	mux2_1x8 submod4(.InB(InA16[7:0]),  .InA(SS[7:0]), .Cin(RotShift) , .Out(InB16[15:8]));
	
	mux2_1x16 submod5(.InB(InB16[15:0]), .InA(InA16[15:0]), .Cin(Cnt[3]), .Out(InA8[15:0]));
	
	//Second Row
	assign InB8[11:0] = InA8[15:4];
	mux2_1x4 submod6(.InB(InA8[3:0]), .InA(SS[3:0]), .Cin(RotShift)  , .Out(InB8[15:12]));
	
	mux2_1x16 submod7(.InB(InB8[15:0]), .InA(InA8[15:0]), .Cin(Cnt[2]), .Out(InA4[15:0]));
	
	//Third Row
	assign InB4[13:0] = InA4[15:2];
	mux2_1x2 submod8(.InB(InA4[1:0]), .InA(SS[1:0]), .Cin(RotShift)  , .Out(InB4[15:14]));
	
	mux2_1x16 submod9(.InB(InB4[15:0]), .InA(InA4[15:0]), .Cin(Cnt[1]), .Out(InA2[15:0]));
	
	//Final Row
	assign InB2[14:0] = InA2[15:1];
	mux2_1 submod10(.InB(InA2[0]), .InA(SS[0]), .S(RotShift)  , .Out(InB2[15]));

	mux2_1x16 submod11(.InB(InB2[15:0]), .InA(InA2[15:0]), .Cin(Cnt[0]), .Out(InA1[15:0]) );
	
	        //Flip if left
        assign InRev2[0] = InA1[15];
        assign InRev2[1] = InA1[14];
        assign InRev2[2] = InA1[13];
        assign InRev2[3] = InA1[12];
        assign InRev2[4] = InA1[11];
        assign InRev2[5] = InA1[10];
        assign InRev2[6] =  InA1[9];
        assign InRev2[7] =  InA1[8];
        assign InRev2[8] =  InA1[7];
        assign InRev2[9] =  InA1[6];
        assign InRev2[10] = InA1[5];
        assign InRev2[11] = InA1[4];
        assign InRev2[12] = InA1[3];
        assign InRev2[13] = InA1[2];
        assign InRev2[14] = InA1[1];
        assign InRev2[15] = InA1[0];

	mux2_1x16 submod12(.InB(InA1[15:0]), .InA(InRev2[15:0]), .Cin(Op[1]), .Out(Out[15:0]));
	
endmodule
