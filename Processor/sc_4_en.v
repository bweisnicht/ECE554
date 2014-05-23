
/* $Author: karu $ */
/* $LastChangedDate: 2009-03-04 23:09:45 -0600 (Wed, 04 Mar 2009) $ */
/* $Rev: 45 $ */

module sc_4_en( clk, rst, ctr_rst, out, err, en);
   input clk;
   input rst;
   input en;
   input ctr_rst;
   output [2:0] out;
   output err;

   // your code
   localparam SATURATION = 3'd4;

   wire [2:0] count, incrState;
   reg  [2:0] nextState;
   wire [1:0] cin;
   dff_en state_dff[2:0] (.q(count), .d(nextState), .clk(clk), .rst(rst), .en(en));
   assign out = count;

   // we have an error if the counter goes above 5, so...
   assign err = count[2] & count[1];   

   //incrementer
   assign incrState[0] = ~count[0];
   assign cin[0] = count[0];

   assign incrState[1] = count[1] ^ cin[0];
   assign incrState[2] = count[2] ^ cin[1];
   assign cin[1] = count[1] & cin[0];

   always @(ctr_rst, count, nextState) begin
   // state machine
   case (count)
     SATURATION: begin
         // if ctr_rst = 1 then nextState = 0
         nextState <= count & (~{3{ctr_rst}});

     end
     default: begin
         nextState <= incrState & (~{3{ctr_rst}});
     end
   endcase
   end
 
endmodule

// DUMMY LINE FOR REV CONTROL :1:

