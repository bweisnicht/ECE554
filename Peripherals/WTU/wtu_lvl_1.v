module wtu_lvl_1 (
                    input wire [23:0] in,
                    input wire [0:0] ld_a,
                    input wire [0:0] ld_b,
                    input wire [0:0] ld_o,
                    input wire clk, rst,
                    output wire [47:0] out
                   );
wire [23:0] lpo, hpo;
wtu_unit wtu_m (.in(in),
                .ld_a(ld_a[0]),
                .ld_b(ld_b[0]),
                .ld_o(ld_o[0]),
                .clk(clk),
                .rst(rst),
                .lpo(lpo),
                .hpo(hpo)
               );
wire [23:0] hs,ls;
assign hs = hpo;
assign ls = lpo;

assign out = {hs,ls};

endmodule     

