`timescale 1ns/100ps
module top_level(
    /**inputs**/
	 input clk, //system clock
    input rst, //system reset
	 input bit_clk, //12Mhz codec clock

	 output reg audio_reset, //codec reset 
    output sdata_out, //codec serial data 
    output sync); //codec sync signal
	 
	 reg [11:0] reset_timer;
    wire [7:0] cmd_addr;
    wire [15:0] cmd_data;
    wire cmd_valid;
    wire [19:0] left_in_data, right_in_data;
    wire [19:0] left_out_data, right_out_data;
	 wire global_reset;
	 wire [19:0] fifo_out_data;
	
	reg ready,ready_pre_sync;
   reg [5:0] index;
   reg [19:0] pcm_data;
    
	//clock generator
	clk_gen clk_gen (
    .CLKIN_IN(clk), 
    .RST_IN(rst), 
    .CLKFX_OUT(test), 
    .CLKIN_IBUFG_OUT(clk0_buf), 
    .CLK0_OUT(clk100), 
    .LOCKED_OUT(locked_dcm)
    );
	 
	 //1us hold audio_reset
    always @(posedge clk100) begin
        if (global_reset) begin
			audio_reset <= 1'b0;
			reset_timer <= 0;
        end else if (reset_timer == 4095)
			audio_reset <= 1'b1;
        else
			reset_timer <= reset_timer + 1;
    end
	
	
	assign global_reset = rst | ~locked_dcm;
	
	fifo fifo(.din(pcm_data), .wr_en((ready) && (!fifo_full)), .rd_en(ready), .wr_clk(clk100), .rd_clk(clk100),
		.rst(global_reset), .dout(fifo_out_data), .full(fifo_full), .empty(fifo_empty));
	
	audio_controller a0(clk100, global_reset, bit_clk, cmd_addr, cmd_data, cmd_valid,
            fifo_out_data, 1'b1, fifo_out_data, 1'b1,
            sdata_out, sync, cont_ready);
			 
	audio_cmd c0(clk100,global_reset,codec_ce,codec_addr,codec_data,ready,
			cmd_addr,cmd_data,cmd_valid);
			
   
   //synchronize ready signal with system clock
   always @ (posedge clk100) begin
     if(global_reset) begin
         ready_pre_sync <= 0;
         ready <= 0;
     end else begin   
        ready_pre_sync <= cont_ready;
        ready <= ready_pre_sync;
     end
   end
   
  

   
   always @(posedge clk100) begin
	   if (global_reset) begin
		   index <= 0;
	   end else if(ready && ~ready_pre_sync) begin
		   index <= index+1;
     end
   end
   
   // one cycle of 750Hz sinewave in 64 20-bit samples
   always @(posedge clk100) begin
      if(global_reset) 
         pcm_data <= 0;
      else begin
        case (index)
        6'h00: pcm_data <= 20'h00000;
        6'h01: pcm_data <= 20'h0C8BD;
        6'h02: pcm_data <= 20'h18F8B;
        6'h03: pcm_data <= 20'h25280;
        6'h04: pcm_data <= 20'h30FBC;
        6'h05: pcm_data <= 20'h3C56B;
        6'h06: pcm_data <= 20'h471CE;
        6'h07: pcm_data <= 20'h5133C;
        6'h08: pcm_data <= 20'h5A827;
        6'h09: pcm_data <= 20'h62F20;
        6'h0A: pcm_data <= 20'h6A6D9;
        6'h0B: pcm_data <= 20'h70E2C;
        6'h0C: pcm_data <= 20'h7641A;
        6'h0D: pcm_data <= 20'h7A7D0;
        6'h0E: pcm_data <= 20'h7D8A5;
        6'h0F: pcm_data <= 20'h7F623;
        6'h10: pcm_data <= 20'h7FFFF;
        6'h11: pcm_data <= 20'h7F623;
        6'h12: pcm_data <= 20'h7D8A5;
        6'h13: pcm_data <= 20'h7A7D0;
        6'h14: pcm_data <= 20'h7641A;
        6'h15: pcm_data <= 20'h70E2C;
        6'h16: pcm_data <= 20'h6A6D9;
        6'h17: pcm_data <= 20'h62F20;
        6'h18: pcm_data <= 20'h5A827;
        6'h19: pcm_data <= 20'h5133C;
        6'h1A: pcm_data <= 20'h471CE;
        6'h1B: pcm_data <= 20'h3C56B;
        6'h1C: pcm_data <= 20'h30FBC;
        6'h1D: pcm_data <= 20'h25280;
        6'h1E: pcm_data <= 20'h18F8B;
        6'h1F: pcm_data <= 20'h0C8BD;
        6'h20: pcm_data <= 20'h00000;
        6'h21: pcm_data <= 20'hF3743;
        6'h22: pcm_data <= 20'hE7075;
        6'h23: pcm_data <= 20'hDAD80;
        6'h24: pcm_data <= 20'hCF044;
        6'h25: pcm_data <= 20'hC3A95;
        6'h26: pcm_data <= 20'hB8E32;
        6'h27: pcm_data <= 20'hAECC4;
        6'h28: pcm_data <= 20'hA57D9;
        6'h29: pcm_data <= 20'h9D0E0;
        6'h2A: pcm_data <= 20'h95927;
        6'h2B: pcm_data <= 20'h8F1D4;
        6'h2C: pcm_data <= 20'h89BE6;
        6'h2D: pcm_data <= 20'h85830;
        6'h2E: pcm_data <= 20'h8275B;
        6'h2F: pcm_data <= 20'h809DD;
        6'h30: pcm_data <= 20'h80000;
        6'h31: pcm_data <= 20'h809DD;
        6'h32: pcm_data <= 20'h8275B;
        6'h33: pcm_data <= 20'h85830;
        6'h34: pcm_data <= 20'h89BE6;
        6'h35: pcm_data <= 20'h8F1D4;
        6'h36: pcm_data <= 20'h95927;
        6'h37: pcm_data <= 20'h9D0E0;
        6'h38: pcm_data <= 20'hA57D9;
        6'h39: pcm_data <= 20'hAECC4;
        6'h3A: pcm_data <= 20'hB8E32;
        6'h3B: pcm_data <= 20'hC3A95;
        6'h3C: pcm_data <= 20'hCF044;
        6'h3D: pcm_data <= 20'hDAD80;
        6'h3E: pcm_data <= 20'hE7075;
        6'h3F: pcm_data <= 20'hF3743;
		  default: pcm_data <= 0;
      endcase
    end 
   end 
endmodule
	
	
	
	
   
   