`default_nettype none
module tb_wtu_top ();
   reg clk, rst;
   reg fifo_ready;
   wire fifo_rd_en;

   parameter BITWIDTH=24;
   parameter DEPTH=3;
   localparam WIDTH=2**DEPTH;
   wire  [BITWIDTH-1:0] fifo_data;
   
   reg [BITWIDTH-9:0] fifo [0:WIDTH-1];
   reg [DEPTH-1:0] addr;

   assign fifo_data={fifo[addr],8'h0};
   wire mem_ready; assign mem_ready=1'b1;
   wire [BITWIDTH-1:0] mem_data;
   wire mem_write;

   wtu_top #(
          .BITWIDTH(BITWIDTH),
          .DEPTH(DEPTH)
         ) UUT (
                .clk(clk),
                .rst(rst),
                .fifo_ready(fifo_ready),
                .mem_ready(mem_ready),
                .fifo_rd_en(fifo_rd_en),
                .fifo_data(fifo_data),
                .mem_data(mem_data),
                .mem_write(mem_write)
               );
   
   initial begin
      $readmemh("wtu_input8.txt", fifo);
      clk=0;
      rst=1;
      fifo_ready=0;
      addr=0;
      #10
      rst=0;
      @(posedge clk)
      fifo_ready=1;

      #400
      $finish;
   end
   
   always @(posedge clk) begin
      if(addr==(2**DEPTH)-1)begin
         @(posedge clk);
         fifo_ready=0;
      end
   end
   always @(posedge clk) begin
      if(fifo_rd_en) addr<=addr+1;
   end
   
   always #5 clk<=~clk;
endmodule
