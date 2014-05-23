module tb_mem_unit ();

   parameter  WR_WIDTH=24;
   localparam RD_WIDTH=WR_WIDTH<<1; // *2
   parameter  WR_DEPTH=8;
   localparam RD_DEPTH=WR_DEPTH>>1; // /2
   
   localparam RDA_BITWIDTH=clog2(RD_DEPTH);
   localparam WRA_BITWIDTH=clog2(WR_DEPTH);
   
   reg  clk, rst;
   reg  [RDA_BITWIDTH-1:0] rd_addr;
   reg  [WRA_BITWIDTH-1:0] wr_addr;
   wire [RD_WIDTH-1:0] rd_data;
   reg  [WR_WIDTH-1:0] wr_data;
   reg wr_en;

   mem_unit 
         #(
           .WR_WIDTH(WR_WIDTH),
           .WR_DEPTH(WR_DEPTH)
         ) UUT (
                .clk(clk),
                .rst(rst),
                .rd_addr(rd_addr),
                .rd_data(rd_data),
                .wr_addr(wr_addr),
                .wr_data(wr_data),
                .wr_en(wr_en)
               );

   integer k;
   initial begin
      $display("Testing memory unit!!\n");
      $display("Parameters:\n");
      $display("Write Data Bitwidth   :%4d\n", WR_WIDTH);
      $display("Write Address Bitwidth:%4d\n", WRA_BITWIDTH);
      $display("Write Depth           :%4d\n", WR_DEPTH);
      $display("Read Data Bitwidth    :%4d\n", RD_WIDTH);
      $display("Read Address Bitwidth :%4d\n", RDA_BITWIDTH);
      $display("Read Depth            :%4d\n", RD_DEPTH);
      clk=0;
      rst=1;
      wr_en=0;
      wr_data=0;
      wr_addr=0;
      rd_addr=RDA_BITWIDTH-1;
      #10
      rst=0;
      wr_en=1;
      @(posedge clk);
      for(k=0; k<WR_DEPTH; k=k+1) begin
         @(posedge clk);
         wr_addr=k;
         wr_data=k;
         @(posedge clk);
      end
      @(posedge clk);
      wr_en=0;
      for(k=0; k<RD_DEPTH; k=k+1) begin
         @(posedge clk);
         rd_addr=k;
         #1
         $display("rd_addr=%3h", rd_addr);
         $display("rd_data=%3h", rd_data);
         $display("%4h: %4h\n%4h: %4h\n",
               (rd_addr<<1)+0,   rd_data[WR_WIDTH-1:0],
               (rd_addr<<1)+1, rd_data[RD_WIDTH-1:WR_WIDTH]);
      end
      @(posedge clk)$finish;
   end
   always #5 clk<=~clk;

   `include "clog2.v"

endmodule
