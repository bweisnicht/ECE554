`timescale 1ns/100ps
module audio_tb();
    
reg clk;
reg rst;
reg codec_ce;
reg [23:0] codec_data;
reg [3:0] codec_addr;



initial clk = 0;
always #5 clk = ~clk;

//initial bit_clk = 0;
//always #40 bit_clk = ~bit_clk;
wire audio_reset;
  
top_level top(clk, rst, bit_clk, audio_reset, sdata_out,sync);
LM4550 ac97(.BIT_CLK(bit_clk),.SDATA_OUT(),.RESET(audio_reset), .SYNC(sync), .SDATA_IN(sdata_out));  

initial begin
	rst = 0;
	codec_ce = 0;
	#5 rst = 1;
	#5000 rst = 0;
	codec_addr = 4'b0000;
	codec_data = 23'b000000000001111100011111;
	#500000 codec_ce = 1;
	#10 codec_ce = 0;
end

endmodule

