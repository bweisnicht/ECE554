`default_nettype none

module tx_spart (input wire [7:0] databus, input wire brg_en, clk, rst, iocs, 
				iorw, input wire [1:0] ioaddr, output wire tx_out, tbr);
	
	wire tx_go, shift, load;	
	wire [7:0] buf_wire;
	
	tx_buffer buf0 (.tx_go(tx_go), .clk(clk), .rst(rst), .tbr(tbr),
					 .databus(databus), .buf_out(buf_wire));

	tx_control fsm0( .ioaddr(ioaddr), .iorw(iorw), .iocs(iocs),
					.brg_en(brg_en), .clk(clk), .rst(rst),
					.tbr(tbr), .shift(shift), .load(load),
					.tx_go(tx_go));

	tx_shift_reg txsr (.shift(shift), .load(load), .clk(clk), .rst(rst),
					 .buf_in(buf_wire), .tx_out(tx_out));

endmodule
