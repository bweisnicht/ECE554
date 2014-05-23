`timescale 1ns/100ps
`default_nettype none
module audio_top(
    /**inputs**/

    input wire clk, //system clock
	 input wire filt_clk,
    input wire global_reset, //system reset
    input wire bit_clk, //12Mhz codec clock
    input wire [19:0] pcm_data, //audio data from filter
    input wire wr_fifo, //filter signal to write new audio data to fifo
    input wire filt_codec_wr_fifo,
    input wire codec_ce,
    input wire[2:0] codec_addr,
    input wire [23:0] codec_data,
    
    output wire fifo_full,
	 output wire fifo_empty,
    output reg audio_reset, //codec reset 
    output wire sdata_out, //codec serial data 
    output wire sync, //codec sync signal
    output wire [19:0] left_data_reg);
   
    wire [7:0] cmd_addr;
    wire [15:0] cmd_data;
    wire cmd_valid, /*fifo_empty,*/ cont_ready;
    wire [19:0] left_in_data, right_in_data;
    wire [19:0] left_out_data, right_out_data;
    wire [19:0] fifo_out_data;
    reg [11:0] reset_timer;	
    reg ready,ready_pre_sync;
    reg pause;

    //pause register, 1'b1 when MMU is sending value 1 at address 1
    //unpaused when MMU sends value 0 at address 1 
    always@(posedge clk, posedge global_reset) begin
	if (global_reset) begin
		pause <= 0;
   end else if ((codec_ce) && (codec_addr == 3'b001) && (codec_data == 20'h00001)) begin
		pause <= 1; 
	end else if ((codec_ce) && (codec_addr == 3'b001) && (codec_data == 20'h00000)) begin
		pause <= 0;
	end else
		pause <= pause;
   end
	 
    //1us hold audio_reset
    always @(posedge clk, posedge global_reset) begin
        if (global_reset) begin
		audio_reset <= 1'b0;
		reset_timer <= 0;
        end else if (reset_timer == 4095)
		audio_reset <= 1'b1;
        else
		reset_timer <= reset_timer + 1;
    end
	
	
	
	
	filt_codec_fifo fifo(.din(pcm_data), .wr_en((wr_fifo) && (!fifo_full)), .rd_en((ready && (!ready_pre_sync)) && (!pause)), .wr_clk(filt_clk), .rd_clk(clk),
		.rst(global_reset), .dout(fifo_out_data), .full(fifo_full), .empty(fifo_empty));
	
	audio_controller a0(clk, global_reset, bit_clk, cmd_addr, cmd_data, cmd_valid,
            fifo_out_data, 1'b1, fifo_out_data, 1'b1,
            sdata_out, sync, cont_ready, left_data_reg);
			 
	audio_cmd c0(clk,global_reset,codec_ce,codec_addr,codec_data,ready,
			cmd_addr,cmd_data,cmd_valid);
			
   
   //synchronize ready signal with system clock
   always @ (posedge clk, posedge global_reset) begin
     if(global_reset) begin
         ready_pre_sync <= 0;
         ready <= 0;
     end else begin   
        ready_pre_sync <= cont_ready;
        ready <= ready_pre_sync;
     end
   end
  
endmodule
	
	
	
	
   
   

