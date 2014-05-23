`default_nettype none

module t_rx_shift;
	
	integer sentinel;
	reg rx_in, clk, rst, brg_en;
	wire shift_0, shift_15;
	
	localparam HALF = 5, WHOLE = 10, BRG = 40;

	 rx_shift rx0(.rx_in(rx_in), .clk(clk), .rst(rst), .brg_en(brg_en), 
		.shift_0(shift_0), .shift_15(shift_15));

	initial begin
		clk = 1'b0;
		forever clk = #(HALF) ~clk;
	end

	initial begin
		while (1==1) begin
			brg_en = 1'b0;
			#(BRG);
			brg_en = 1'b1;
			#(WHOLE);
		end
	end

	initial begin
		rx_in = 1'b1;
		rst = 1'b1;
		#(WHOLE); 
		rst = 1'b0;
		
		for (sentinel = 0; sentinel < 100; sentinel = sentinel + 1) begin
		rx_in = $unsigned($random);
		#(BRG);
	end
	$stop;
end

endmodule

