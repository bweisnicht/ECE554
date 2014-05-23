module tb_wtu_unit ();
reg clk, rst;
wire [23:0] in_b;
reg [15:0] in;
assign in_b={in,8'b0};
wire en;
assign en = clk;
wire [23:0] lpo, hpo;
wtu #(.WIDTH(24),.WT_WIDTH(8)) UUT (clk,rst,in,out);

initial begin
	$monitor(lpo,hpo);
	clk=0;
	rst=1;
	#7;
	rst=0;
    @(posedge clk);
	in=16'd5125;
	
	@(posedge clk);
	in=16'd15657;
	#100;
	$finish;
end

always #5 clk = ~clk;
endmodule
