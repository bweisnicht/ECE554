`timescale 1 ps/1 ps
module mem_unit (clk, rst, rd_addr, rd_data, wr_addr, wr_data, wr_en);
   parameter  WR_WIDTH=24;
   localparam RD_WIDTH=WR_WIDTH<<1; // *2
   parameter  WR_DEPTH=8;
   localparam RD_DEPTH=WR_DEPTH>>1; // /2
   
   localparam RDA_BITWIDTH=clog2(RD_DEPTH);
   localparam WRA_BITWIDTH=clog2(WR_DEPTH);
   
   input wire  clk, rst, wr_en;
   input wire  [RDA_BITWIDTH-1:0] rd_addr;
   input wire  [WRA_BITWIDTH-1:0] wr_addr;
   output wire [RD_WIDTH-1:0] rd_data;
   input wire  [WR_WIDTH-1:0] wr_data;
   
   reg [WR_WIDTH-1:0] memory [0:WR_DEPTH-1];
   
   assign rd_data = {memory[{rd_addr,1'b1}], memory[{rd_addr,1'b0}]};

   integer i;
   initial begin
      for(i=0; i<WR_DEPTH; i=i+1) 
         memory[i]=0; 
   end

   always @(posedge clk) begin
      if(wr_en) begin
         memory[wr_addr]<=wr_data;
      end
   end
  
function integer clog2;
    input integer value;
    begin
        value = value - 1;
        for(clog2=0; value>0; clog2 = clog2 + 1)
            value = value >> 1;
    end
endfunction
    
endmodule
