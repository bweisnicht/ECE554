module tb_displayplane ();
	
	reg [23:0] din;
	reg almost_empty, almost_full;
	reg clk, rst;
	wire [12:0] addr;
	wire [23:0] dout;
	wire fifo_rd_en;
	
	displayplane UUT(din, almost_empty, almost_full, clk, rst, addr, dout, fifo_rd_en);
	
	initial begin
		clk = 0;
		forever #5 clk = ~clk;
	end
	
	initial #100000 $stop;
	
	initial $monitor("%t, addr=%d", $time, addr);
	
	initial begin
		rst = 1'b0;
		
		#10
		rst = 1'b1;
		
		#10
		rst = 1'b0;
		almost_empty = 1'b1;
		almost_full = 1'b0;
		
		#50000
		almost_empty = 1'b0;
		almost_full = 1'b1;
		
		#10000
		almost_empty = 1'b1;
		almost_full = 1'b0;
	end

endmodule

