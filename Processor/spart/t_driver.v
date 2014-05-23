`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    
// Design Name: 
// Module Name:    driver 
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
module t_driver;

reg clk, rst,  temp;
reg [1:0] br_cfg;
reg [7:0] value;
wire [7:0] databus_temp, databus_real;

	wire iocs;
	wire iorw;
	wire rda, txd;
	wire tbr, rda_temp;
	wire [1:0] ioaddr;
	wire [7:0] databus, incoming_value;

assign incoming_value = temp ? value : databus;

assign databus_temp = (iorw) ? incoming_value : 8'bz;
assign rda_temp = temp ? 1'b1 : rda;

assign databus = (!iorw) ? databus_temp : 8'bz;

spart spart0( .clk(clk),
                 .rst(rst),
					  .iocs(iocs),
					  .iorw(iorw),
					  .rda(rda),
					  .tbr(tbr),
					  .ioaddr(ioaddr),
					  .databus(databus),
					  .txd(txd),
					  .rxd(txd)
					);

	// Instantiate your driver here
	driver driver0( .clk(clk),
	                .rst(rst),
						 .br_cfg(br_cfg),
						 .iocs(iocs),
						 .iorw(iorw),
						 .rda(rda_temp),
						 .tbr(tbr),
						 .ioaddr(ioaddr),
						 .databus(databus_temp)
					 );

	initial begin
		clk = 1'b0;
		forever clk = #5 ~clk;
	end

	initial begin
		value = 8'h55;
		br_cfg = 2'b11;
		rst = 1'b1;
		temp = 1'b0;
		#10;
		rst = 1'b0;
		// IDLE
		#10;
		// DIV LOW
		#10;
		// DIV HIGH
		#10;
	
		temp = 1'b1;
		//RECEIVE
		#10;
		#6;

		temp = 1'b0;

		#10000;
		br_cfg = 2'b00;
		while (tbr == 1'b0) begin
			#10;
		end
		#100;
		$stop;
	end


endmodule





