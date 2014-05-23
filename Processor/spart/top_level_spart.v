`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:   
// Design Name: 
// Module Name:    top_level 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module top_level_spart(
    input wire clk,         // 100mhz clock
    input wire rst,         // Asynchronous reset, tied to dip switch 0
    output  wire txd,        // RS232 Transmit Data
    input wire rxd         // RS232 Recieve Data
    );
	
	
	wire iocs, ce, ack, drdy;
	wire iorw, clkin,  slow_clk;
	wire rda, LOCKED_OUT;
	wire tbr, tx_rdy, full;
	// two states, you start by buffering then you go idle (!buffering)
	reg buffering, next_buffering;
	wire [1:0] ioaddr;
	wire [7:0] databus;
	wire [23:0] data;
	
	localparam COUNT = 10'd1023;
	localparam BUF = 1'b1, IDLE = 1'b0;
	
		/*spart_clk instance_name (
         .CLKIN_IN(clk), 
         .RST_IN(rst), 
         .CLKIN_IBUFG_OUT(clk), 
         .CLK0_OUT(clkin), 
         .LOCKED_OUT(LOCKED_OUT)
         );*/

	spart_control sc0(.clk(clk), .rst(rst), .rx_in(rxd), .chip_enable(ce)
	, .r_w(iorw), .addr(4'b0), .data(data), .tx_out(txd),
			.ack(ack), .drdy(drdy), .tx_rdy(tx_rdy));	

	assign  iorw = 1'b0;
	assign ce = buffering;
	

	
	counter_x #(.COUNT(COUNT)) cx (.clk(clk) , .rst(rst), .full(full),
						.incr(sc0.tbr), .cnt_rst(1'b0));
       	
	assign data = 24'hfeeded;

	always @(posedge clk, posedge rst) begin
		if (rst) begin
			buffering <= BUF;
		end else begin
			buffering <= next_buffering;
		end
	end

	always @(*) begin
		if (buffering == BUF) begin
			if (ack) begin
				next_buffering = IDLE;
			end else begin
				next_buffering = BUF;
			end
		end else begin
			next_buffering = IDLE;
		end
	end

					 
endmodule

