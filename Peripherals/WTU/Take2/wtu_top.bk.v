module wtu_top(clk,rst,fifo_rd_en,fifo_ready,mem_write,mem_ready,fifo_data,mem_data);
   input wire clk, rst;
   input wire fifo_ready, mem_ready;
   output wire fifo_rd_en, mem_write;
   parameter  BITWIDTH=24;
   parameter  DEPTH=3;
   localparam DEPTH_BW=clog2(DEPTH);
   input wire [BITWIDTH-1:0] fifo_data;
   output reg [BITWIDTH-1:0] mem_data;
   localparam WIDTH=2**DEPTH;
   
   wire [2:0] mode;
   localparam LOAD=0;
   localparam TFORM_L2R=1;
   localparam TFORM_R2L=2;
   localparam DONE=3;
   
   assign fifo_rd_en = mode==LOAD && fifo_ready;
   assign mem_write  = mode==DONE && mem_ready;
   
   wire [DEPTH-1:0] addr;
   wire [BITWIDTH*2-1:0] rd_dataL0, rd_dataL1, rd_dataR0, rd_dataR1;

   always @(*) begin
      if(DEPTH%2==0) begin //R
         if(addr[DEPTH-1]) 
            mem_data = addr[0] ? rd_dataL1[BITWIDTH*2-1:BITWIDTH] : rd_dataL1[BITWIDTH-1:0];
         else
            mem_data = addr[0] ? rd_dataL0[BITWIDTH*2-1:BITWIDTH] : rd_dataL0[BITWIDTH-1:0];
      end else begin //L
         if(addr[DEPTH-1]) 
            mem_data = addr[0] ? rd_dataR1[BITWIDTH*2-1:BITWIDTH] : rd_dataR1[BITWIDTH-1:0];
         else
            mem_data = addr[0] ? rd_dataR0[BITWIDTH*2-1:BITWIDTH] : rd_dataR0[BITWIDTH-1:0];
      end
   end
   
   wire wrL, wrR;
   assign wrL= ( (mode==LOAD && fifo_ready) || (mode==TFORM_R2L) );
   assign wrR=   (mode==TFORM_L2R) ;
   
   wire wrR0, wrR1, wrL0, wrL1;   
   assign wrR0 = wrR;// && ~addr[DEPTH-1];
   assign wrR1 = wrR;// &&  addr[DEPTH-1];
   assign wrL0 = (mode==LOAD) ? wrL && ~addr[DEPTH-1] : wrL;
   assign wrL1 = (mode==LOAD) ? wrL &&  addr[DEPTH-1] : wrL;
   reg [BITWIDTH-1:0] in, in_prev;

   always @(*) 
      case(mode)
      TFORM_L2R: {in_prev, in}= addr[DEPTH-1] ? rd_dataL1 : rd_dataL0;
      TFORM_R2L: {in_prev, in}= addr[DEPTH-1] ? rd_dataR1 : rd_dataR0;
      default: {in,in_prev}=0;
      endcase

   wire [BITWIDTH-1:0] lp,hp;
   wire [BITWIDTH-1:0] wr_dataL0, wr_dataL1;
   assign wr_dataL0 = (mode==LOAD) ? fifo_data : lp;
   assign wr_dataL1 = (mode==LOAD) ? fifo_data : hp;

   wire [DEPTH-2:0] wraddr; 
   assign wraddr=(mode==LOAD || mode==DONE) ? addr[DEPTH-2:0] : addr[DEPTH-1:1];
   wire [DEPTH-3:0] rdaddr; assign rdaddr=addr[DEPTH-2:1];
   // "Left" memory unit
   mem_unit #(
            .WR_WIDTH(BITWIDTH),
            .WR_DEPTH(WIDTH>>1)
           )memL0(
                  .clk(clk),
                  .rst(rst),
                  .rd_addr(rdaddr),
                  .rd_data(rd_dataL0),
                  .wr_addr(wraddr),
                  .wr_data(wr_dataL0),//lp),
                  .wr_en(wrL0)
                 );
   mem_unit #(
            .WR_WIDTH(BITWIDTH),
            .WR_DEPTH(WIDTH>>1)
           )memL1(
                  .clk(clk),
                  .rst(rst),
                  .rd_addr(rdaddr),
                  .rd_data(rd_dataL1),
                  .wr_addr(wraddr),
                  .wr_data(wr_dataL1),//hp),
                  .wr_en(wrL1)
                 );
   // Wavelet transform.
   wtu_unit wtu0 (
                  .in(in),
                  .in_prev(in_prev),
                  .lpo(lp),
                  .hpo(hp)
                 );
   // "Right" memory unit
   mem_unit #(
            .WR_WIDTH(BITWIDTH),
            .WR_DEPTH(WIDTH>>1)
           )memR0(
                  .clk(clk),
                  .rst(rst),
                  .rd_addr(rdaddr),
                  .rd_data(rd_dataR0),
                  .wr_addr(wraddr),
                  .wr_data(lp),
                  .wr_en(wrR0)
                 );
   mem_unit #(
            .WR_WIDTH(BITWIDTH),
            .WR_DEPTH(WIDTH>>1)
           )memR1(
                  .clk(clk),
                  .rst(rst),
                  .rd_addr(rdaddr),
                  .rd_data(rd_dataR1),
                  .wr_addr(wraddr),
                  .wr_data(hp),
                  .wr_en(wrR1)
                 );

   wt_logic #(
            .DEPTH(DEPTH)
           )wtl0 (
                  .addr(addr),
                  .mode(mode),
                  .fifo_ready(fifo_ready),
                  .mem_ready(mem_ready),
                  .iterations(iterations),
                  .clk(clk),
                  .rst(rst)
                 );
   `include "clog2.v"
endmodule

