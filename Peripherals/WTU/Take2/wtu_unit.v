`timescale 1 ps/1 ps
`default_nettype none
module wtu_unit(in, in_prev, lpo, hpo);
    parameter WIDTH=24;
    input wire signed [WIDTH-1:0] in, in_prev;
    output wire signed [WIDTH-1:0] lpo, hpo;

    wire [WIDTH:0] lp,hp;

    assign lp = (({in_prev[WIDTH-1],in_prev} + {in[WIDTH-1],in})>>>1);
    assign hp = (({in_prev[WIDTH-1],in_prev} - {in[WIDTH-1],in})>>>1);

    assign lpo=lp[WIDTH-1:0];
    assign hpo=hp[WIDTH-1:0];
    
endmodule
