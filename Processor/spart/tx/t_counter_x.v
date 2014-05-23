`default_nettype none

module t_counter_x;

	reg clk, rst, incr, cnt_rst;
	localparam SAMPLE_RATE = 9;
	integer sentinel, sentinel_2;
	wire counted_samp;

	initial begin
		clk = 1'b0;
		forever clk = #5 ~clk;
	end

	counter_x #(.COUNT(SAMPLE_RATE)) cnt16(.clk(clk), .rst(rst), 
				.full(counted_samp), .incr(incr), .cnt_rst(cnt_rst));

	initial begin
		rst = 1'b1;
		cnt_rst = 1'b0;
		#10;
		rst = 1'b0;
		#10;
		for (sentinel = 0; sentinel < SAMPLE_RATE; sentinel = sentinel + 1)
		begin
			incr = 1'b1;
			 #10;
			incr = 1'b0;
			#10;
			 
		end
		#40;
		cnt_rst = 1'b1;
		#10;
		cnt_rst = 1'b0;
		#30;
		incr = 1'b1;
		#10;
		incr = 1'b0;
		#40;
		incr = 1'b1;
		#10;
		incr = 1'b0;
		#10;
		incr = 1'b1;
		#10;
		incr = 1'b0;
		#50;
		incr = 1'b1;
		#30;
		incr = 1'b0;
		$stop;
	end



endmodule
