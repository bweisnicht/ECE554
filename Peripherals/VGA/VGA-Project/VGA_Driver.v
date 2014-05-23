`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:01:37 03/07/2013 
// Design Name: 
// Module Name:    VGA_Driver 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//		This module is intended to serve as a top-level module, as well as interfacing with the 'MMU'
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module VGA_Driver(
						input wire  clk_100mhz,
						input wire  rst,
						output wire vsync,
						output wire hsync,
						output wire blank,
						output wire comp_sync,
						output wire [7:0] pixel_r,
						output wire [7:0] pixel_g,
						output wire [7:0] pixel_b,
						output wire vgaclk,
						output wire [3:0] led
					  );

miniproject2 UUT (
                     .clk_100mhz(clk_100mhz),
                     .rst(rst),
                     .vsync(vsync),
                     .hsync(hsync),
                     .blank(blank),
                     .comp_sync(comp_sync),
                     .pixel_r(pixel_r),
                     .pixel_g(pixel_g),
                     .pixel_b(pixel_b),
                     .vgaclk(vgaclk),
                     .led(led)
                    );
endmodule
