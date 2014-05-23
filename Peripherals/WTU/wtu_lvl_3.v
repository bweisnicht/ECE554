module wtu_lvl_3 (
                    input wire [23:0] in,
                    input wire [2:0] ld_a,
                    input wire [2:0] ld_b,
                    input wire [2:0] ld_o,
                    input wire clk, rst,
                    output wire [191:0] out
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
wire [95:0] hs,ls;
wtu_lvl_2 wtu_hp (
                       .in(hpo),
                       .ld_a(ld_a[2:1]),
                       .ld_b(ld_b[2:1]),
                       .ld_o(ld_o[2:1]),
                       .clk(clk),
                       .rst(rst),
                       .out(hs)
                      );

wtu_lvl_2 wtu_lp (
                       .in(lpo),
                       .ld_a(ld_a[2:1]),
                       .ld_b(ld_b[2:1]),
                       .ld_o(ld_o[2:1]),
                       .clk(clk),
                       .rst(rst),
                       .out(ls)
                      );


assign out = {hs,ls};

endmodule     

