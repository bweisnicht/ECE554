`timescale 1 ps/1 ps
module memi_unit (clk, rst, rd_addr, rd_data, wr_addr, wr_data, wr_en, mode);
   parameter  RD_WIDTH=24;
   localparam WR_WIDTH=RD_WIDTH<<1; // *2
   parameter  RD_DEPTH=8;
   localparam WR_DEPTH=RD_DEPTH>>1; // /2
   
   localparam RDA_BITWIDTH=clog2(RD_DEPTH);
   localparam WRA_BITWIDTH=clog2(WR_DEPTH);
   
   input wire  clk, rst, wr_en, mode;//mode - 1=48-bit writes, 
   input wire  [RDA_BITWIDTH-1:0] rd_addr;
   input wire  [RDA_BITWIDTH-1:0] wr_addr;
   output wire [RD_WIDTH-1:0] rd_data;
   input wire  [WR_WIDTH-1:0] wr_data;
   
   reg [WR_WIDTH-1:0] memory [0:WR_DEPTH-1];
   
   assign rd_data = rd_addr[0] ?  memory[rd_addr[RDA_BITWIDTH-1:1]][WR_WIDTH-1:RD_WIDTH] :
                                  memory[rd_addr[RDA_BITWIDTH-1:1]][RD_WIDTH-1:0];

   integer i;
   initial begin
      for(i=0; i<WR_DEPTH; i=i+1) 
         memory[i]=0; 
   end

   wire [WR_WIDTH-1:0] mem;
   wire [RD_WIDTH-1:0] wr_dataL, memL, memH;
   assign mem = memory[wr_addr[RDA_BITWIDTH-1:1]];
   assign memL= mem[RD_WIDTH-1:0];
   assign memH= mem[WR_WIDTH-1:RD_WIDTH];
   assign wr_dataL = wr_data[RD_WIDTH-1:0];
   always @(posedge clk) begin
      if(wr_en) begin
         if(mode)
            memory[wr_addr[RDA_BITWIDTH-1:1]]<=wr_data;
         else
            if(wr_addr[0])
               memory[wr_addr[RDA_BITWIDTH-1:1]]<={wr_dataL,memL};
            else
               memory[wr_addr[RDA_BITWIDTH-1:1]]<={memH,wr_dataL};
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
