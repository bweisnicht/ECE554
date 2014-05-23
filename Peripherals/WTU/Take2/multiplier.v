`timescale 1 ps/1 ps
module multiplier (clk,rst,data_in,addr_in,en,ready,fifo_ready,fifo_data,fifo_rd_en,data_out,addr_out, wr_en, fifo_addr);
   parameter BITWIDTH=24;
   parameter    DEPTH=3;
   parameter    WIDTH=2**DEPTH;

   input wire clk,rst;
   input wire en,fifo_ready;
   output reg ready, fifo_rd_en, wr_en;
   input wire signed [BITWIDTH-1:0] data_in;
   output reg signed [BITWIDTH-1:0] data_out;
   input wire        [DEPTH-1:0]    addr_in;
   output reg        [DEPTH-1:0]    addr_out;
   input wire signed [BITWIDTH-1:0] fifo_data;
   input wire        [DEPTH-1:0]    fifo_addr;

	reg [WIDTH-1:0] writes;
	
   reg state;
   localparam IDLE=0;
   localparam LOAD=1;

   reg [BITWIDTH-1:0] coefficients [0:WIDTH-1];

   wire [BITWIDTH*2-1:0] prod;
   reg  [BITWIDTH*2-1:0] data;
   reg overflow;
   reg neg;
   always @(*) begin
         if (neg) begin
            overflow=(~&data[BITWIDTH*2-1:BITWIDTH]);
         end else begin
            overflow=(|data[BITWIDTH*2-1:BITWIDTH]);
         end
   end
   wire [23:0] multiplier;
   always @(*) begin
       if(neg)
          data_out=overflow ? 24'h800000 : data[23:0];
       else
          data_out=overflow ? 24'h7fffff : data[23:0];
   end
   
   assign multiplier = coefficients[addr_in];
   mul_unit mul (
                 //.a({8'd0,data_in[BITWIDTH-1:8]}),
                 .a(data_in),
                 .b(multiplier),
                 .p(prod)
                );
      
   integer i;
   //assign neg = data_in[BITWIDTH-1];
   always @(posedge clk, posedge rst) begin
      wr_en<=en;
      if(rst) begin
         neg <= 0;
         state<=IDLE;
         wr_en<=0;
         writes<=0;
         ready<=0;
         //for(i=0;i<WIDTH;i=i+1)
         //   coefficients[i]<=24'd1;
         coefficients[0]<=8;
         coefficients[1]<=8;
         coefficients[2]<=8;
         coefficients[3]<=8;
         coefficients[4]<=8;
         coefficients[5]<=8;
         coefficients[6]<=8;
         coefficients[7]<=8;
      end else begin
         neg <= data_in[BITWIDTH-1];
         //Overflow detection
         //if(neg) begin
         //   data<=//<=overflow ? prod[BITWIDTH-1:0] : 24'h800000;
         //end else begin
         //   data//<=overflow ? 24'h7fffff : prod[BITWIDTH-1:0];
         //end
         data<=prod;
         fifo_rd_en<=0;
         if(fifo_ready) begin
             coefficients[fifo_addr]<=fifo_data;
             fifo_rd_en<=1;
         end
         case(state)
            IDLE: begin
                  addr_out<=0;
                  ready<=1;
                  if(en) begin
							state<=LOAD;
							addr_out<=addr_in;
							ready<=0;
							writes<=8'd1<<addr_in;
                  end else if(fifo_ready) begin
							fifo_rd_en<=1;
                  end
               end
            LOAD: begin
                  writes<=writes | 8'd1<<addr_in;
						addr_out<=addr_in;
                  if(&writes) begin
                     writes<=0;
                     state<=IDLE;
                  end
               end
         endcase
      end
   end

endmodule

