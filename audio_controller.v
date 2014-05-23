`timescale 1ns/100ps
module audio_controller();

reg bit_clk;
reg rst_n;
reg pcm_in;
reg read_pcm;
reg [15:0] volume;
reg set_volume;

audio_fsm FSM1(bit_clk, rst_n, read_pcm, pcm_in, volume, set_volume, sync, sdata_out, read_fifo);

initial bit_clk = 0;
always
  ///////////////////
  // 500MHz clock // 
  /////////////////
  #1 bit_clk = ~bit_clk;

initial begin
	pcm_in = 1;
	set_volume = 0;
	rst_n = 1;
	#5 rst_n = 0;
	#1 rst_n = 1;
end

endmodule
