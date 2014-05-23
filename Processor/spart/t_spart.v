`timescale 1ns/ 100ps
`default_nettype none

module t_spart;

	wire [1:0] ioaddr;
	reg clk, rst;
	wire [7:0] databus_driver;
	wire tbr,  tx_out, iorw, iocs, brg_en;

	localparam HALF = 5, WHOLE = 10;


	tx_spart tx(.databus(databus_driver), .brg_en(brg_en), .clk(clk), .rst(rst), 
				.iocs(iocs), .iorw(iorw), .ioaddr(ioaddr), .tx_out(tx_out),
				 .tbr(tbr));

	baud baud0(.databus(databus_driver), .ioaddr(ioaddr),
	           .clk(clk), .rst(rst), .iocs(iocs), .enable(brg_en));

	driver drive(.clk(clk), .rst(rst), .br_cfg(2'b00), .iocs(iocs), .iorw(iorw),
                 .rda(1'b0), .tbr(tbr), .ioaddr(ioaddr), 
					.databus(databus_driver));

	databus dbs0(.databus_driver(databus_driver), .databus_rx(8'b0), 
				.ioaddr(ioaddr), .rda(1'b0), .tbr(tbr), .iorw(iorw) );

	initial begin
		clk = 1'b0;
		forever clk = #(HALF) ~clk;
	end


	

	initial begin
		
		rst = 1'b1;
		
		#(WHOLE);
		rst = 1'b0;
		#300;
		#100000;
		
		while (tbr == 1'b0) begin
			#(WHOLE);
		end
		$stop;
	end


endmodule
