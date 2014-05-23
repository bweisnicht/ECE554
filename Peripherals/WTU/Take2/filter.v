`timescale 1 ps/1 ps
`default_nettype none
module filter (clk,rst, filt_clk,
               in_fifo_ready,   in_fifo_data,   in_fifo_rd_en,
               out_fifo_ready,  out_fifo_data,  out_fifo_wr_en,
               coeff_fifo_ready,coeff_fifo_data,coeff_fifo_rd_en,
               filt_data_buf, filt_addr_buf, filt_drdy, coeff_fifo_addr
              );
   parameter BITWIDTH=24;
   parameter DEPTH=3;
   localparam WIDTH=2**DEPTH;
   //FifoDataWidth, for combining address and data in MMU interfaces
   localparam FDW=BITWIDTH+DEPTH;
   
   input  wire clk, rst;
   input  wire in_fifo_ready, out_fifo_ready, coeff_fifo_ready;
   output wire in_fifo_rd_en, out_fifo_wr_en, coeff_fifo_rd_en, filt_drdy;
   output wire filt_clk;

   input  wire [BITWIDTH-1:0]      coeff_fifo_data;
   input  wire [DEPTH-1:0]     coeff_fifo_addr;
   output wire [BITWIDTH-1:0] filt_data_buf;
   input  wire [DEPTH-1:0]    filt_addr_buf;
   input  wire [BITWIDTH-1:0] in_fifo_data;
   output wire [BITWIDTH-1:0] out_fifo_data;
   
   wire [DEPTH-1:0] wtu_out_addr, mul_addr_out, wtu_inv_addr_in;
   wire [BITWIDTH-1:0] wtu_out, mul_data_out, wtu_inv_data_in;
   wire wtu_wr_en;

   assign filt_clk = clk;

/*
                 /---\
                 |MMU| <--\
                 \---/     \
                   |coeff   |freq
                   |fifo    |fifo
                   V        |
        |---|    |---|    |---|     |---|    |-----|
in      | W |    | M |    | M |     | M |    | W I |    out
fifo -> | T | -> | U | -> | M | /-> | E | -> | T N | -> fifo
        | U |    | L | |  | U | |   | M |    | U V |
        |---|    |---| |  |---| /   |---|    |-----|
                        \      /
                         \----/
*/
   wire ready, mul_ready, mmu_ready, mem_ready, wtu_inv_mem_ready, mem_wr_en;
   assign ready = mul_ready & mmu_ready & mem_ready;
   // WTU 
   wtu_top    #(
                .BITWIDTH(BITWIDTH),
                .DEPTH(DEPTH)
               )
               WTU
               (
                .clk(clk),
                .rst(rst),
                .fifo_ready(in_fifo_ready),
                .fifo_rd_en(in_fifo_rd_en),
                .fifo_data(in_fifo_data),
                .mem_ready(ready),
                .mem_data(wtu_out),
                .mem_write(wtu_wr_en),
                .mem_addr(wtu_out_addr)
               );
   // MUL
   multiplier #(
                .BITWIDTH(BITWIDTH),
                .WIDTH(WIDTH),
                .DEPTH(DEPTH)
               )
               MUL
               (
                .clk(clk),
                .rst(rst),
                //WTU Interface
                //.data_in({{4{wtu_out[23]}},wtu_out[23:4]}), //arithmetic right-shift to divide by 16, giving us 0-15 as possible coefficient values
                .data_in({{4{wtu_out[23]}},wtu_out[23:4]}), 
                //.data_in(wtu_out),
                .addr_in(wtu_out_addr),
                .en(wtu_wr_en),
                .wr_en(mem_wr_en),
                .ready(mul_ready),
                //Coefficient Interface
                .fifo_ready(coeff_fifo_ready),
                .fifo_data(coeff_fifo_data),
                .fifo_addr(coeff_fifo_addr),
                .fifo_rd_en(coeff_fifo_rd_en),
                //Mem/MMU interface
                .data_out(mul_data_out),
                .addr_out(mul_addr_out)
               );
   // MMU
   mmu_buf    #(
                .BITWIDTH(BITWIDTH),
                .WIDTH(WIDTH),
                .DEPTH(DEPTH)
               )
               MMU
               (
                .clk(clk),
                .rst(rst),
                //WTU Interface
                .in_ready(mmu_ready),
                //MUL Interface
                .in_data(mul_data_out),
                .wr_en(mem_wr_en),
                .in_addr(mul_addr_out),
                //WTU_INV Interface
                .out_data(filt_data_buf),
                .out_addr(filt_addr_buf),
                .out_ready(filt_drdy)
               );
   // MEM
   mem        #(
                .BITWIDTH(BITWIDTH),
                .WIDTH(WIDTH),
                .DEPTH(DEPTH)
               )
               MEM
               (
                .clk(clk),
                .rst(rst),
                //WTU Interface
                .in_ready(mem_ready),
                //MUL Interface
                .in_data(mul_data_out),
                .wr_en(mem_wr_en),
                .in_addr(mul_addr_out),
                //WTU_INV Interface
                .out_data(wtu_inv_data_in),
                .out_addr(wtu_inv_addr_in),
                .out_ready(wtu_inv_mem_ready)
               );
   // WTU INV
   wtu_inv    #(
                .BITWIDTH(BITWIDTH),
                .DEPTH(DEPTH)
               )
               WTU_INV
               (
                .clk(clk),
                .rst(rst),
                //MEM Interface
                .in_data(wtu_inv_data_in),
                .in_addr(wtu_inv_addr_in),
                .in_ready(wtu_inv_mem_ready),
                //Out FIFO Interface
                .fifo_ready(out_fifo_ready),
                .fifo_data(out_fifo_data),
                .fifo_wr_en(out_fifo_wr_en)
               );
   
endmodule
