`timescale 1 ps/1 ps
module wtu_top(clk,rst,fifo_rd_en,fifo_ready,mem_write,mem_ready,fifo_data,mem_data, mem_addr);
   parameter  BITWIDTH=24;
   parameter  DEPTH=3;
   localparam DEPTH_BW=clog2(DEPTH);
   localparam WIDTH=2**DEPTH;
   input wire clk, rst;
   input wire fifo_ready, mem_ready;
   output wire  mem_write;
   output /*reg*/ wire fifo_rd_en;
   input wire [BITWIDTH-1:0] fifo_data;

   output reg [BITWIDTH-1:0] mem_data;
   output wire [DEPTH-1:0] mem_addr;
   
   wire [2:0] mode;
   localparam LOAD=0;
   localparam TFORM_L2R=1;
   localparam TFORM_R2L=2;
   localparam DONE=3;

   wire tform_mode; assign tform_mode=(mode==TFORM_L2R || mode==TFORM_R2L);
   reg [2:0] mode_reg;
   always @(posedge clk) begin
      mode_reg<=mode;
   end
   wire [DEPTH-1:0] addr;
   assign mem_addr=mode==DONE ? addr : 0;
   //always @(*)
   //   fifo_rd_en = mode==LOAD && fifo_ready && mode_reg==LOAD;
   assign mem_write  = mode==DONE && (mem_ready || (addr>=1));

   //Write enable logic.  Left is enabled when loading in data or when
   //transforming from right-to-left, right is enabled only during left-to-right
   wire [DEPTH_BW-1:0] iterations;
   wire last_iteration = (tform_mode) && (iterations == DEPTH-1);
   reg wrR, wrR0, wrR1, wrL0, wrL1;
   always @(*) begin
      wrR=(mode==TFORM_L2R);
      // during the last iteration, we write sequentially to the output register
      // so the address needs to be taken into account
      wrR0=wrR;
      wrR1=wrR;

      if(mode==LOAD) begin
         wrL0=fifo_rd_en && ~addr[DEPTH-1];
         wrL1=fifo_rd_en &&  addr[DEPTH-1];
      end else if(mode==TFORM_R2L) begin
         wrL0=1;
         wrL1=1;
      end else begin
         wrL0=0;
         wrL1=0;
      end
   end
   
   wire [BITWIDTH*2-1:0] rd_dataL0, rd_dataL1, rd_dataR0, rd_dataR1;
   //Write data logic
   wire [BITWIDTH-1:0] lp,hp;
   reg  [BITWIDTH-1:0] wr_dataL0, wr_dataL1, wr_dataR0, wr_dataR1;
   always @(*) begin
      if(mode==LOAD) begin
         wr_dataL0=fifo_data;
         wr_dataL1=fifo_data;
         wr_dataR0=0;
         wr_dataR1=0;
      end else if(tform_mode) begin
         wr_dataL0=lp;
         wr_dataR0=lp;
         wr_dataL1=hp;
         wr_dataR1=hp;
      end else begin
         wr_dataL0=0;
         wr_dataL1=0;
         wr_dataR0=0;
         wr_dataR1=0;
      end
   end

   //Address logic
   reg  [DEPTH-2:0] wraddr; 
   reg  [DEPTH-3:0] rdaddr;
   reg  [DEPTH-1:0] revAddr;
   integer i;
   always @(*) begin
      rdaddr=0;
      wraddr=0;
      for(i=0; i<DEPTH; i=i+1)
         revAddr[i]=addr[DEPTH-1-i];
      if(mode==DONE) begin
         rdaddr=revAddr[DEPTH-2:1];
      end else begin
         rdaddr=addr[DEPTH-2:1];
      end
      if(tform_mode) begin
         wraddr=addr[DEPTH-1:1];
      end else begin
         wraddr=addr[DEPTH-2:0];
      end
   end

   //Since the read ports are double-wide, use this logic to determine which
   // half of the data is what we need
   always @(*) begin
      if(DEPTH%2==0) begin //L
         if(revAddr[DEPTH-1]) 
            mem_data = revAddr[0] ? rd_dataL1[BITWIDTH*2-1:BITWIDTH] : rd_dataL1[BITWIDTH-1:0];
         else
            mem_data = revAddr[0] ? rd_dataL0[BITWIDTH*2-1:BITWIDTH] : rd_dataL0[BITWIDTH-1:0];
      end else begin //R
         if(revAddr[DEPTH-1]) 
            mem_data = revAddr[0] ? rd_dataR1[BITWIDTH*2-1:BITWIDTH] : rd_dataR1[BITWIDTH-1:0];
         else
            mem_data = revAddr[0] ? rd_dataR0[BITWIDTH*2-1:BITWIDTH] : rd_dataR0[BITWIDTH-1:0];
      end
   end

   // WTU input logic - determines which side the WTU should source from
   reg [BITWIDTH-1:0] in, in_prev;
   always @(*) 
      case(mode)
      TFORM_L2R: {in_prev, in}= addr[DEPTH-1] ? rd_dataL1 : rd_dataL0;
      TFORM_R2L: {in_prev, in}= addr[DEPTH-1] ? rd_dataR1 : rd_dataR0;
      default:   {in,in_prev} =0;
      endcase

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
                  .wr_data(wr_dataR0),
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
                  .wr_data(wr_dataR1),
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
                  .rst(rst),
                  .fifo_rd_en(fifo_rd_en)
                 );

function integer clog2;
    input integer value;
    begin
        value = value - 1;
        for(clog2=0; value>0; clog2 = clog2 + 1)
            value = value >> 1;
    end
endfunction

endmodule

