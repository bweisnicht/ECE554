`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:   
// Design Name: 
// Module Name:    spart 
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
module spart(
    input wire clk,
    input wire rst,
    input wire iocs,
    input wire iorw,
    output wire rda,
    output wire tbr,
    input wire [1:0] ioaddr,
    inout wire [7:0] databus,
    output wire txd,
    input wire rxd
    );
    wire brg_enable;
    wire [7:0] rx_data;
    

	baud baud0(.databus(databus), .ioaddr(ioaddr),
	           .clk(clk), .rst(rst), .iocs(iocs), .enable(brg_enable));
	        
    tx_spart txs(.databus(databus), .brg_en(brg_enable), .clk(clk), .rst(rst), .iocs(iocs), 
				.iorw(iorw), .ioaddr(ioaddr), .tx_out(txd), .tbr(tbr));
	              

	databus db(.databus_driver(databus), .databus_rx(rx_data), 
				.ioaddr(ioaddr), .rda(rda), .tbr(tbr), .iorw(iorw));

     rx_spart rxs(.clk(clk), .rst(rst), .rx_in(rxd), .brg_en(brg_enable), 
	        .iocs(iocs), .iorw(iorw), .ioaddr(ioaddr), .rx_data(rx_data),
		.rda(rda));	


endmodule
