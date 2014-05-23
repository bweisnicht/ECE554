`timescale 1ns/ 100ps
`default_nettype none

module t_tx;

	reg [1:0] ioaddr;
	reg [7:0] databus_driver;
	reg [8:0] shift_reg;
	reg clk, rst, iorw, iocs, brg_en;
	wire [7:0] databus;
	wire tbr,  tx_out;

	localparam HALF = 5, WHOLE = 10, BRG= 100;

	assign databus = databus_driver;

	tx_spart tx(.databus(databus), .brg_en(brg_en), .clk(clk), .rst(rst), 
				.iocs(iocs), .iorw(iorw), .ioaddr(ioaddr), .tx_out(tx_out),
				 .tbr(tbr));

	baud baud(.databus(databus), .ioaddr(ioaddr),
	           .clk(clk), .rst(rst), .iocs(iocs), .enable(brg_en));

	driver drive(.clk(clk), .rst(rst), .br_cfg(2'b00), .iocs(iocs),
    output wire iorw,
    input rda,
    input tbr,
    output reg [1:0] ioaddr,
    inout wire [7:0] databus
    );

	initial begin
		clk = 1'b0;
		forever clk = #(HALF) ~clk;
	end


	

	initial begin
		shift_reg = 9'h0aa;
		databus_driver = shift_reg[7:0];
		rst = 1'b1;
		#(WHOLE);
		rst = 1'b0;
		
		ioaddr = 2'b00;
		iorw = 1'b0;
		iocs = 1'b1;
		#300;
		
		while (tbr == 1'b0) begin
			#(WHOLE);
		end
		$stop;
	end


endmodule
