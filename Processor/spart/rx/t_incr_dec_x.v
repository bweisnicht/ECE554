`default_nettype none

module t_incr_dec_x;

	integer sentinel;
	reg clk, rst, incr, dec, cnt_rst;
	wire [4:0] count;
	incr_dec_x #(.COUNT(16)) id0(.clk(clk), .rst(rst), .count(count), 
		.incr(incr), .dec(dec), .cnt_rst(cnt_rst));

	initial begin
		clk = 1'b0;
		forever clk = #5 ~clk;
	end
		
	initial begin
		rst = 1'b1;
		cnt_rst = 1'b0;
		dec = 1'b0;
		incr = 1'b0;
		#10;
		rst = 1'b0;
		for (sentinel = 0; sentinel < 20; sentinel = sentinel +1) begin
			incr = 1'b1;
			#10;
		end
		incr = 1'b0;
		for (sentinel = 0; sentinel < 20; sentinel = sentinel +1) begin
			dec = 1'b1;
			#10;
		end

		dec = 1'b0;

		for (sentinel = 0; sentinel < 10; sentinel = sentinel +1) begin
			incr = 1'b1;
			#10;
		end
		cnt_rst = 1'b1;
		#10;
		cnt_rst = 1'b0;
		#10;

		$stop;
	end


	endmodule	
