`default_nettype none
`timescale 1ns/ 100ps

module rf_bypass (
                // Outputs
           		read1data, read2data, err,
          	 	// Inputs
           		clk,  rst, read1regsel, read2regsel, writeregsel, writedata, write
                );
   input wire clk, rst;
   input wire [4:0] read1regsel;
   input wire [4:0] read2regsel;
   input wire [4:0] writeregsel;
   input wire [23:0] writedata;
   input wire       write;

   output wire [23:0] read1data;
   output wire [23:0] read2data;
   output wire err;

	wire  bypassA, bypassB;
	wire [23:0] douta, doutb, douta_2, doutb_2;
	wire [4:0] addrb;
	wire [23:0] douta_pre, doutb_pre;
	reg writeIn, nextWriteIn, bypassA_delay, bypassB_delay;
	reg bypassA_delay2, bypassB_delay2;
	reg [23:0] nextRead2Data, read2DataPre, writedata_delay;
	reg [23:0] writedata_delay2;

	// we are going have a clock signal double the speed of the regular clock
	// cycle so we can write to a register
	// it'll be plugged into B
	reg_file rf0(
	.clka(clk),
	.dina(writedata),
	.addra(writeregsel),
	.wea(write),
	.doutb(douta_pre),
	.clkb(clk),
	.addrb(read1regsel),
	.ssrb(rst));

	reg_file rf1(
	.clka(clk),
	.dina(writedata),
	.addra(writeregsel),
	.wea(write),
	.doutb(doutb_pre),
	.clkb(clk),
	.addrb(read2regsel),
	.ssrb(rst));


	/*
	contstruct a clock generator!!
	*/


	// conditions on which we would bypass
	assign bypassA = (writeregsel == read1regsel) & write;
	assign bypassB = (writeregsel == read2regsel) & write;

	assign read1data = (bypassA_delay) ? writedata_delay : douta;
	assign read2data = (bypassB_delay) ? writedata_delay : doutb;

	// if we have a read after write, we will take the stored data while
	// it writes during this clock cycle
	assign douta = (bypassA_delay2) ? douta_pre : douta_pre;
	assign doutb = (bypassB_delay2) ? doutb_pre : doutb_pre;


	// handle a read after write situation
	always @(posedge clk, posedge rst)  begin
		if (rst) begin
			writedata_delay <= 24'b0;
			writedata_delay2 <= 24'b0;
			bypassA_delay <= 1'b0;
			bypassB_delay <= 1'b0;
			bypassA_delay2 <= 1'b0;
			bypassB_delay2 <= 1'b0;
		end else begin
			bypassA_delay <= bypassA;
			bypassB_delay <= bypassB;
			writedata_delay <= writedata;
			writedata_delay2 <= writedata_delay;
			bypassA_delay2 <= bypassA_delay;
			bypassB_delay2 <= bypassB_delay;
		end
	end	


	/*
	//behavioral logic for write input behavior and read data
	always @(posedge clk2x, posedge rst) begin
		if (rst) begin
			writeIn <= 1'b0;
			read2DataPre <= 24'b0;
		end else begin
		writeIn <= nextWriteIn;
		read2DataPre <= nextRead2Data;
		end
	end

	always @(*) begin
		if (!clk) begin
			// if we are on the negative edge of the slow clock, then we want
			// the register value to be 0 so we never write when clock = 1
			nextWriteIn = 1'b0;
		end else begin
			nextWriteIn = write;
		end
		// if we are writing, we want the register to stay the same
		if (writeIn) begin
			nextRead2Data = read2DataPre;
		end else begin
			nextRead2Data = doutb;
		end	
	end
	*/
   
  

endmodule


