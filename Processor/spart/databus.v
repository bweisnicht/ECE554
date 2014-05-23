`default_nettype none

module databus (inout wire [7:0] databus_driver, input wire [7:0] databus_rx, 
			input wire [1:0] ioaddr, input wire rda, tbr, iorw);

	wire [7:0] incoming_rx_data;

	// the incoming data from the rxtx
	assign incoming_rx_data = (ioaddr[0]) ? {6'b0, tbr, rda} : databus_rx;

	//assign databus_driver = (iorw) ? incoming_rx_data : 8'bz;
        assign databus_driver = iorw ? incoming_rx_data : 8'bz;

endmodule
