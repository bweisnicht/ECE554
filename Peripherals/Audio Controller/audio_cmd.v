`timescale 1ns/100ps
	module audio_cmd(
	input clk,
	input rst,
	input codec_ce,
	input [2:0] codec_addr,
	input [23:0] codec_data,
	input ready,
	output reg [7:0] cmd_addr,
	output reg [15:0] cmd_data,
	output reg cmd_valid);

	reg [3:0] state;
	reg prev_ready;
	reg [15:0] volume;
	
	//latch new volume data if MMU ce asserted
	always@(posedge clk, posedge rst) begin
		if(rst) 
			volume <= 0;
		else if (codec_ce & (codec_addr == 0))
			volume <= codec_data[15:0];
	end
	
	//increment state when controller is ready
	always@(posedge clk, posedge rst) begin
		if(rst) state <= 0;
		else if (ready && (!prev_ready)) 
			state <= state + 1;
	end
	
	//command startup sequence
	always@(posedge clk, posedge rst) begin
      if(rst) begin
         cmd_valid <= 0;
         cmd_addr  <= 0;
         cmd_data  <= 0;
      end else begin
         case(state)
            4'h0: begin
               cmd_valid <= 1;
               cmd_addr <=  8'h80;
               cmd_data <= 16'h0000;
            end
            4'h1: begin
               cmd_valid <= 1;
               cmd_addr <= 8'h80;
               cmd_data <= 16'h0000;
            end
            4'h2: begin 
               cmd_valid <= 1;
               cmd_addr <= 8'h04;
               cmd_data <= volume;
            end
            4'h4: begin
               cmd_valid <= 1;
               cmd_addr <= 8'h18;
               cmd_data <= 16'h0808;
            end
            4'h5: begin
               cmd_valid <= 1;
               cmd_addr <= 8'h0A;
               cmd_data <= 16'h0000;
            end
            4'h6: begin
               cmd_valid <= 1;
               cmd_addr <= 8'h20;
               cmd_data <= 16'h8000;
            end
				//enable sample rate
				4'h7: begin
               cmd_valid <= 1;
               cmd_addr <= 8'h2A;
               cmd_data <= 16'h0001;
            end
				//set sample rate(48000 default)
				4'h8: begin
               cmd_valid <= 1;
               cmd_addr <= 8'h2C;
               cmd_data <= 16'hBB80;
            end
            default: begin
               cmd_valid <= 0;
               cmd_addr <= 8'h00;
               cmd_data <= 16'h0000;
            end
         endcase
         prev_ready <= ready;
      end
	end
endmodule
				
				
	
	

