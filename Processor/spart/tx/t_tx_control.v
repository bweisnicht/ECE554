`timescale 1ns/ 100ps
`default_nettype none

module t_tx_control;

	reg [1:0] ioaddr;
	reg [8:0] shift_reg;
	reg clk, rst, iorw, iocs, brg_en;
	wire TBR, shift, load, tx_go;

	localparam HALF = 5, WHOLE = 10, BRG= 100;

	tx_control tx( .ioaddr(ioaddr) ,.iorw(iorw), .iocs(iocs),
					.brg_en(brg_en), .clk(clk), .rst(rst),
					.tbr(TBR), .shift(shift), .load(load), .tx_go(tx_go));

	initial begin
		clk = 1'b0;
		forever clk = #(HALF) ~clk;
	end


	initial begin
		brg_en = 1'b0;
		while (1==1) begin
			#1620;

			brg_en = 1'b1;
			#(WHOLE);
			brg_en = 1'b0;
		end
	end

	initial begin
		shift_reg <= 9'h0a0;
		rst = 1'b1;
		#(WHOLE);
		rst = 1'b0;
		
		ioaddr = 2'b00;
		iorw = 1'b0;
		iocs = 1'b1;
		#300;
		
		while (TBR == 1'b0) begin
			#(WHOLE);
		end
		$stop;
	end
	
	always @(shift) begin
		if (shift) begin
			shift_reg <= {shift_reg[7:0], 1'b1};
		end
	end

endmodule
