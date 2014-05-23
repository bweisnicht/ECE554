`timescale 1ns / 1ps
`default_nettype none

module t_spart_control;


	reg clk, rst; 
	wire ce, iorw, rxd;
	reg [3:0] addr;
	wire [23:0] data;
	
	wire txd, ack, drdy, tx_rdy;

	spart_control sc0(.clk(clk), .rst(rst), .rx_in(rxd), .chip_enable(ce)
	, .r_w(iorw), .addr(4'b0), .data(data), .tx_out(txd),
			.ack(ack), .drdy(drdy), .tx_rdy(tx_rdy));

	
	assign iorw = 1'b0;
	assign ce = tx_rdy;
	assign rxd = 1'b0;

	assign data = 24'h8a4f1b;
	
	initial begin
		clk = 1'b0;
		forever clk = #5 ~clk;
	end

	initial begin
		rst = 1'b1;
		#10;
		rst = 1'b0;
		while (ack) begin	
			#10;
		end
		while (!ack) begin
		    #10;
		    
		    end
		$stop;
	end


endmodule
