`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:01:33 01/24/2013 
// Design Name: 
// Module Name:    timingen
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: Was vgamult, now top-level timing generator module
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module timingen (rst, clk_25mhz, blank, comp_sync, hsync, vsync, pixel_r, pixel_g, pixel_b, empty, fifo_read, data_in, zero_zero, vsync_in, hsync_in);
     input rst;
    input wire clk_25mhz;
    output blank;
    output comp_sync;
     output hsync;
     output vsync;
     output reg [7:0] pixel_r;
     output reg [7:0] pixel_g;
     output reg [7:0] pixel_b;
     input empty;
     output reg fifo_read;
     input data_in;
     input zero_zero;
	  input wire vsync_in;
	  input wire hsync_in;
    
    wire [9:0] pixel_x;
    wire [9:0] pixel_y;
    
    vga_logic  vgal1(clk_25mhz, rst, blank, comp_sync, hsync, vsync, pixel_x, pixel_y, zero_zero);

    wire deadzone;
    assign deadzone = ( (pixel_x > 10'd640) || (pixel_y > 10'd480) );
	 wire clearZero;
    reg zeroed;
	 assign clearZero = zeroed && (pixel_x==10'b0) && (pixel_y==10'b0);
    always @(posedge clk_25mhz, posedge rst) begin
      if(rst) begin
         fifo_read <= 1'b0;
         zeroed <= 1'b0;
      end else begin
			if(clearZero) begin
				fifo_read <= 1'b1;
				zeroed <= 1'b0;
			end else if(zeroed) begin
            fifo_read <= 1'b0;
				zeroed <= 1'b1;
         end else begin
            if(zero_zero) begin
               if((pixel_x!=10'b0) || (pixel_y!=10'b0)) begin
                  zeroed <= 1'b1;
                  fifo_read <= 1'b0;
               end else begin
						fifo_read <= ~(empty | deadzone);
						zeroed <= 1'b0;
					end
            end else begin
					zeroed <= 1'b0;
               fifo_read <= ~(empty | deadzone);
            end
         end
      end
    end

	 always @(*) begin
		if (zero_zero) begin
			{pixel_r, pixel_g, pixel_b} = 24'hff0000;		
		end else if (vsync_in && hsync_in) begin
			{pixel_r, pixel_g, pixel_b} = 24'h00ff00;
		//end else if (vsync_in) begin
		//	{pixel_r, pixel_g, pixel_b} = 24'h0000ff;
		end else if (hsync_in) begin
			{pixel_r, pixel_g, pixel_b} = 24'h007f00;
		end else if (empty) begin
			{pixel_r, pixel_g, pixel_b} = 24'h7f0000;
		end else begin
			{pixel_r, pixel_g, pixel_b} = data_in ? 24'hffffff : 24'h000000;
		end
	 end
endmodule
