`timescale 1ns / 1ps
`default_nettype none
/* $Author: karu $ */
/* $LastChangedDate: 2009-03-04 23:09:45 -0600 (Wed, 04 Mar 2009) $ */
/* $Rev: 45 $ */
// D-flipflop

module dff (q, d, clk, rst);

    output  wire      q;
    input   wire       d;
    input   wire       clk;
    input   wire       rst;

    reg            state;

    assign q = state;

    always @(posedge clk) begin
      state = rst? 0 : d;
    end

endmodule
// DUMMY LINE FOR REV CONTROL :0:
