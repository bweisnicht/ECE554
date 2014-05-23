`timescale 1 ps/1 ps
module tb_filter();
    parameter BITWIDTH=24;
    parameter DEPTH=3;
    parameter WIDTH=2**DEPTH;
    reg clk,rst;
    reg in_fifo_ready, out_fifo_ready,coeff_fifo_ready;
    wire in_fifo_rd_en, out_fifo_wr_en,coeff_fifo_rd_en,freq_fifo_wr_en;
    wire [BITWIDTH-1:0] out_fifo_data;
    wire [BITWIDTH-1:0] in_fifo_data;
    reg  [BITWIDTH-1:0] coeff_fifo_data;
    reg  [DEPTH-1:0]    coeff_fifo_addr;
    wire [BITWIDTH-1:0] filt_data_buf;
    reg  [DEPTH-1:0] filt_addr_buf;
    wire filt_drdy;
    wire filt_clk;

    filter #(
             .BITWIDTH(BITWIDTH),
             .DEPTH(DEPTH)
            )
            UUT (
                 clk,rst,filt_clk,
                 in_fifo_ready,   in_fifo_data,   in_fifo_rd_en,
                 out_fifo_ready,  out_fifo_data,  out_fifo_wr_en,
                 coeff_fifo_ready,coeff_fifo_data,coeff_fifo_rd_en,
                 filt_data_buf, filt_addr_buf, filt_drdy, coeff_fifo_addr
                );
    reg go;
    integer i;
    reg signed [BITWIDTH-1:0] memory [0:WIDTH-1];
    reg [DEPTH-1:0] addr;
    assign in_fifo_data=memory[addr];
    initial begin
       clk=0;
       rst=1;
       in_fifo_ready=0;
       out_fifo_ready=1;
       coeff_fifo_ready=0;
       coeff_fifo_data=1;
       coeff_fifo_addr=0;
       filt_addr_buf=0;
       addr=0;
       go=0;
       memory[0]=24'd1312000;
       memory[1]=24'd4008192;
       memory[2]=24'd1371648;
       memory[3]=24'd4070144;
       memory[4]=24'd1342976;
       memory[5]=24'd60160;
       memory[6]=24'd2907648;
       memory[7]=24'd5210624;
       #7
       rst=0;
       @(posedge clk);
       @(posedge clk);
       @(posedge clk);
       go=1;
       in_fifo_ready<=1;
       #200 //in_fifo_ready<=0;
       #10000 $stop;
    end

    always @(posedge clk) begin
       if(filt_drdy) begin
          filt_addr_buf<=filt_addr_buf+1;
       end else begin
          filt_addr_buf<=filt_addr_buf;
       end
    end

    always @(posedge clk) begin
       if(go) begin
          if(in_fifo_rd_en) begin
             addr<=addr+1;
          end
       end
    end

    always #5 clk=~clk;
endmodule
