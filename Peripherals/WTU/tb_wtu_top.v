module tb_wtu_top ();

reg clk,rst;
wire [23:0] in_b;
wire [15:0] in;
assign in_b = {in,8'b0};
reg en;
wire [191:0] out;
wire in_en;
wtu_topLevel UUT(
                 .in(in_b),
                 .en(en),
                 .in_en(in_en),
                 .clk(clk),
                 .rst(rst),
                 .out(out)
                );
    wire signed [23:0] outs0;
	assign outs0=out[23:0];
    wire signed [23:0] outs1;
	assign outs1=out[47:24];
    wire signed [23:0] outs2;
	assign outs2=out[71:48];
    wire signed [23:0] outs3;
	assign outs3=out[95:72];
    wire signed [23:0] outs4;
	assign outs4=out[119:96];
    wire signed [23:0] outs5;
	assign outs5=out[143:120];
    wire signed [23:0] outs6;
	assign outs6=out[167:144];
    wire signed [23:0] outs7;
	assign outs7=out[191:168];

inputFiles files(
                 .clk(clk),
                 .rst(rst),
                 .en(in_en),
                 .out(in)
                );
initial begin
    en=0;
    clk=0;
    rst=1;
  //  in=0;
    #7;
    rst=0;
    en=1;
    @(posedge clk);
/*
    @(posedge clk)
    en=1;
    in=5125;
    @(posedge clk)
    en=1;
    in=15657;
    @(posedge clk)
    en=1;
    in=5358;
    @(posedge clk)
    en=1;
    in=15899;
    @(posedge clk)
    en=1;
    in=5246;
    @(posedge clk)
    en=1;
    in=235;
    @(posedge clk)
    en=1;
    in=11358;
    @(posedge clk)
    en=1;
    in=20354;
    @(posedge clk)
    en=1;
    in=30589;
    @(posedge clk)
    en=1;
    in=-31258;
    @(posedge clk)
    en=1;
    in=30252;
    @(posedge clk)
    en=1;
    in=-29872;
    @(posedge clk)
    en=1;
    in=31234;
    @(posedge clk)
    en=1;
    in=9585;
    @(posedge clk)
    en=1;
    in=14268;
    @(posedge clk)
    en=1;
    in=4265;
    @(posedge clk)
    en=1;
    in=9666;
    @(posedge clk)
    en=1;
    in=14235;
    @(posedge clk)
    en=1;
    in=18635;
    @(posedge clk)
    en=1;
    in=25365;
    @(posedge clk)
    en=1;
    in=31256;
    @(posedge clk)
    en=1;
    in=28282;
    @(posedge clk)
    en=1;
    in=29092;
    @(posedge clk)
    en=1;
    in=5123;
    @(posedge clk)
    en=1;
    in=21234;
    @(posedge clk)
    en=1;
    in=-14112;
    @(posedge clk)
    en=1;
    in=11111;
    @(posedge clk)
    en=1;
    in=5555;
    @(posedge clk)
    en=1;
    in=15352;
    @(posedge clk)
    en=1;
    in=23625;
    @(posedge clk)
    en=1;
    in=5123;
    @(posedge clk)
    en=1;
    in=-5123;

*/
    #5000;
    $finish;
end

always #5 clk <= ~clk;
endmodule

module inputFiles (input wire clk, rst, 
                   input wire en, 
                   output reg [15:0] out);
    reg [4:0] address;
    always @(posedge clk, posedge rst) begin
        if(rst) begin
            address<=0;
        end else if(en) begin
            address<=address+1;
        end else begin
            address<=address;
        end
    end
    always @(*) begin
        case(address)
			5'd0 : out=5125;
			5'd1 : out=15657;
			5'd2 : out=5358;
			5'd3 : out=15899;
			5'd4 : out=5246;
			5'd5 : out=235;
			5'd6 : out=11358;
			5'd7 : out=20354;
			5'd8 : out=30589;
			5'd9 : out=-31258;
			5'd10 : out=30252;
			5'd11 : out=-29872;
			5'd12 : out=31234;
			5'd13 : out=9585;
			5'd14 : out=14268;
			5'd15 : out=4265;
			5'd16 : out=9666;
			5'd17 : out=14235;
			5'd18 : out=18635;
			5'd19 : out=25365;
			5'd20 : out=31256;
			5'd21 : out=28282;
			5'd22 : out=29092;
			5'd23 : out=5123;
			5'd24 : out=21234;
			5'd25 : out=-14112;
			5'd26 : out=11111;
			5'd27 : out=5555;
			5'd28 : out=15352;
			5'd29 : out=23625;
			5'd30 : out=5123;
			5'd31 : out=-5123;

        endcase
    end
endmodule

