`default_nettype none

module baud (input wire [7:0] databus, input wire [1:0] ioaddr,
	     input wire clk, rst, iocs,
	     output wire enable);

	wire [15:0] buffer, count_out;

	div_buf db0 (.databus(databus), .ioaddr(ioaddr),
	        .clk(clk), .rst(rst), .iocs(iocs),
                .buffer(buffer));

	down_counter dc0(.clk(clk), .rst(rst), .load(enable),
		     .div_buf(buffer),
		     .count_out(count_out));
	
	decoder decode0 (.count(count_out), .enable(enable));

endmodule
