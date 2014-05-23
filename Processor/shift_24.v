`default_nettype none
module shift_24(In, Cnt, Op, Out, InRev1);
	input wire [23:0] In;
	input wire [4:0] Cnt;
	input wire [1:0] Op;
	output wire [23:0] Out, InRev1;
	wire [23:0]  InRev2, RealInput, MSB;
	reg [23:0] InA1;
	wire S, RotShift;
	wire [11:0] SS;
	reg [5:0] i;

	
	//Setup rotate signals to indicate whether we are doing a rotate or a shift on each end.
	assign RotShift = !Op[0];	

	//Setup the value of the shift (In[15] for arithmetic, 0 for logical)
	mux2_1 submod2(.InB(In[23]), .InA(1'b0), .S(Op[1]), .Out(S));
	assign SS = {11{S}};
	
	//Flip if left
        assign InRev1[0] = In[23];
        assign InRev1[1] = In[22];
        assign InRev1[2] = In[21];
        assign InRev1[3] = In[20];
        assign InRev1[4] = In[19];
        assign InRev1[5] = In[18];
        assign InRev1[6] =  In[17];
        assign InRev1[7] =  In[16];
        assign InRev1[8] =  In[15];
        assign InRev1[9] =  In[14];
        assign InRev1[10] = In[13];
        assign InRev1[11] = In[12];
        assign InRev1[12] = In[11];
        assign InRev1[13] = In[10];
        assign InRev1[14] = In[9];
        assign InRev1[15] = In[8];
		assign InRev1[16] =  In[7];
        assign InRev1[17] =  In[6];
        assign InRev1[18] = In[5];
        assign InRev1[19] = In[4];
        assign InRev1[20] = In[3];
        assign InRev1[21] = In[2];
        assign InRev1[22] = In[1];
        assign InRev1[23] = In[0];
		

    assign RealInput = (Op[1]) ? In : InRev1;
    
    //align extra bits for shifting
    assign MSB = (RotShift) ? RealInput : 
                 (Op[1])    ? {24{In[23]}} : {24{1'b0}};


    always @(*) begin
    for (i = 6'b0; i < 6'd24; i = i + 1) begin
      if (i+Cnt < 6'd24) begin
        InA1[i] <= RealInput[i+Cnt];
      end else begin
        InA1[i] <= MSB[i+Cnt-24];
      end
    end
  end

    


	        //Flip if left
        assign InRev2[0] = InA1[23];
        assign InRev2[1] = InA1[22];
        assign InRev2[2] = InA1[21];
        assign InRev2[3] = InA1[20];
        assign InRev2[4] = InA1[19];
        assign InRev2[5] = InA1[18];
        assign InRev2[6] =  InA1[17];
        assign InRev2[7] =  InA1[16];
        assign InRev2[8] =  InA1[15];
        assign InRev2[9] =  InA1[14];
        assign InRev2[10] = InA1[13];
        assign InRev2[11] = InA1[12];
        assign InRev2[12] = InA1[11];
        assign InRev2[13] = InA1[10];
        assign InRev2[14] = InA1[9];
        assign InRev2[15] = InA1[8];
		assign InRev2[16] =  InA1[7];
        assign InRev2[17] =  InA1[6];
        assign InRev2[18] = InA1[5];
        assign InRev2[19] = InA1[4];
        assign InRev2[20] = InA1[3];
        assign InRev2[21] = InA1[2];
        assign InRev2[22] = InA1[1];
        assign InRev2[23] = InA1[0];

	mux2_1 submod12 [23:0](.InB(InA1), .InA(InRev2), .S(Op[1]), .Out(Out));
	
endmodule
