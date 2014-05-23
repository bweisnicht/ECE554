`default_nettype none

module rx_spart(input wire clk, rst, rx_in, brg_en, iocs, iorw,
		input wire [1:0] ioaddr, output wire [7:0] rx_data,
		output wire rda);
	wire shift_buf, buf_val, shift_0, shift_15;

   rx_buf buf0(.clk(clk), .rst(rst), .shift(shift_buf), .rx_in_avg(buf_val),
		.rx_data(rx_data));	
	 rx_shift rxshift(.rx_in(rx_in), .clk(clk), .rst(rst), .brg_en(brg_en), 
		.shift_0(shift_0), .shift_15(shift_15));
	rx_control rxctrl(.clk(clk), .rst(rst), .brg_en(brg_en), 
		.shift_0(shift_0), .shift_15(shift_15), .iocs(iocs), 
		.iorw(iorw), .ioaddr(ioaddr), .rda(rda),
		   .shift_buf(shift_buf), .buf_val(buf_val), .rx_in(rx_in));


endmodule
