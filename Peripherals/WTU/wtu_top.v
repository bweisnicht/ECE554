module wtu_topLevel(
                    input wire [23:0] in,
                    input wire en,
                    input wire clk,rst,
                    output wire [191:0] out,
                    output wire in_en
                   );
    wire [2:0] ld_a, ld_b, ld_o;
    assign in_en = ld_a[0] | ld_b[0];
    loader #(3) ld (
                            .clk(clk),
                            .rst(rst),
                            .en(en),
                            .ld_a(ld_a),
                            .ld_b(ld_b),
                            .ld_o(ld_o)
                           );
    wtu_lvl_3 wtu0 (
                      .in(in),
                      .ld_a(ld_a),
                      .ld_b(ld_b),
                      .ld_o(ld_o),
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

endmodule
