`default_nettype none

module baud_old (input wire [7:0] DATABUS, input wire [1:0] IOADDR,
	     input wire clk, rst, IOCS,
	     output wire brg_enable);

	wire [15:0] buffer, count_out;
	wire enable;

	div_buf db0 (.DATABUS(DATABUS), .IOADDR(IOADDR),
	        .clk(clk), .rst(rst), .IOCS(IOCS),
                .buffer(buffer));

	down_counter dc0(.clk(clk), .rst(rst), .load(enable)
		     .div_buf(buffer),
		     .count_out(count_out));
	
	decoder decode0 (.count(count_out), .enable(enable));

endmodule
