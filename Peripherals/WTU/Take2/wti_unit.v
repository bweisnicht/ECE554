`timescale 1 ps/1 ps
`default_nettype none
module wti_unit(in, in_prev, lpi, hpi);
    parameter WIDTH=24;
    output wire signed [WIDTH-1:0] in, in_prev;
    input wire signed [WIDTH-1:0] lpi, hpi;

    assign in=hpi+lpi;
    assign in_prev=lpi-hpi;

endmodule
