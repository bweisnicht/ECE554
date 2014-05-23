module button_tb();

reg clk;
reg rst;
reg pb0;
reg pb1, pb2, pb3, pb4;
reg eq0, eq1, eq2, eq3;
reg fpga_ce;
reg [1:0] fpga_addr;
wire [23:0] fpga_data;


buttons b0(clk, rst, pb0, pb1, pb2, pb3, pb4, eq0, eq1, eq2, eq3, fpga_ce, fpga_addr, fpga_data, fpga_drdy, fpga_int);

initial clk = 0;
always
  ///////////////////
  // 500MHz clock // 
  /////////////////
  #1 clk = ~clk;

initial begin
	pb0 = 1;
	pb1 = 1; 
	pb2 = 1;
	pb3 = 1; 
	pb4 = 1; 
	rst = 0;
	eq0 = 1;
	eq1 = 1;
	eq2 = 1;
	eq3 = 1; 
	fpga_ce =0;
	fpga_addr = 2'b00;
	#10 rst = 1;
	#10 rst = 0;
	#5000 pb0 = 0;
	#500000 pb0 = 1;
	#1000 fpga_ce = 1;
	#1005 fpga_ce = 0;
	#5000 pb1 = 0;
	#500000 pb1 = 1;
	#40000 fpga_ce = 1;
	#1005 fpga_ce = 0;
	#50000 eq1 = 0;
end

endmodule