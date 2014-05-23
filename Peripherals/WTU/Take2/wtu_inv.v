`timescale 1 ps/1 ps
module wtu_inv(clk,rst,in_data,in_addr,in_ready,fifo_ready,fifo_data,fifo_wr_en);
   parameter   BITWIDTH=24;
   parameter   DEPTH=3;
   localparam  DEPTH_BW=clog2(DEPTH);
   localparam  WIDTH=2**DEPTH;
   input wire  clk, rst;
   input wire  fifo_ready, in_ready;
   output wire fifo_wr_en;
   output reg  [BITWIDTH-1:0] fifo_data;

   input wire  [BITWIDTH-1:0] in_data;
   output wire [DEPTH-1:0] in_addr;
   
   wire [2:0] mode;
   localparam LOAD=0;
   localparam TFORM_L2R=1;
   localparam TFORM_R2L=2;
   localparam DONE=3;

   wire tform_mode; assign tform_mode=(mode==TFORM_L2R || mode==TFORM_R2L);
   
   assign fifo_wr_en = mode==DONE && fifo_ready;
   
   wire [DEPTH-1:0] addr;
   assign in_addr=(mode==LOAD) ? addr : 0;

   //Write enable logic.  Left is enabled when loading in data or when
   //transforming from right-to-left, right is enabled only during left-to-right
   wire [DEPTH_BW-1:0] iterations;
   reg  [DEPTH-1:0] revAddr;
   wire last_iteration = (tform_mode) && (iterations == DEPTH-1);
   reg wrR, wrR0, wrR1, wrL0, wrL1;
   always @(*) begin
      if(mode==LOAD) begin
         wrL0=in_ready && ~revAddr[DEPTH-1];
         wrL1=in_ready &&  revAddr[DEPTH-1];
         wrR0=0;
         wrR1=0;
      end else if(mode==TFORM_R2L) begin
         wrL0=~addr[DEPTH-2];
         wrL1= addr[DEPTH-2];
         wrR0=0;
         wrR1=0;
      end else if(mode==TFORM_L2R) begin
         wrL0=0;
         wrL1=0;
         wrR0=~addr[DEPTH-2];
         wrR1= addr[DEPTH-2];
      end else begin
         wrL0=0;
         wrL1=0;
         wrR0=0;
         wrR1=0;
      end
   end
   
   wire [BITWIDTH-1:0] rd_dataL0, rd_dataL1, rd_dataR0, rd_dataR1;

   //Write data logic
   reg  [BITWIDTH-1:0] lp,hp;
   reg  [BITWIDTH*2-1:0] wr_dataL0, wr_dataL1, wr_dataR0, wr_dataR1;
   wire [BITWIDTH-1:0] in, in_prev;
   always @(*) begin
      if(mode==LOAD) begin
         wr_dataL0={24'b0, in_data};
         wr_dataL1={24'b0, in_data};
         wr_dataR0=0;
         wr_dataR1=0;
      end else if(tform_mode) begin
         wr_dataL0={in,in_prev};
         wr_dataR0={in,in_prev};
         wr_dataL1={in,in_prev};
         wr_dataR1={in,in_prev};
      end else begin
         wr_dataL0=0;
         wr_dataL1=0;
         wr_dataR0=0;
         wr_dataR1=0;
      end
   end

   //Address logic
   reg  [DEPTH-2:0] wraddr; 
   reg  [DEPTH-2:0] rdaddr;
   integer i;
   always @(*) begin
      wraddr=0;
      rdaddr=0;
      for(i=0; i<DEPTH; i=i+1)
         revAddr[i]=addr[DEPTH-1-i];
      case(mode)
      LOAD: begin
            wraddr=revAddr[DEPTH-2:0];
            rdaddr=0;
         end
      TFORM_L2R: begin
            wraddr={addr[DEPTH-3:0],1'b0};
            rdaddr=addr[DEPTH-2:0];
         end
      TFORM_R2L: begin
            wraddr={addr[DEPTH-3:0],1'b0};
            rdaddr=addr[DEPTH-2:0];
         end
      DONE: begin
            rdaddr=addr[DEPTH-2:0];
            wraddr=0;
         end
      endcase
   end

   //Since the read ports are double-wide, use this logic to determine which
   // half of the data is what we need
   always @(*) begin
      if(mode==DONE) begin
         if(DEPTH%2==0) begin //L
            fifo_data=addr[DEPTH-1] ? rd_dataL1 : rd_dataL0;
         end else begin //R
            fifo_data=addr[DEPTH-1] ? rd_dataR1 : rd_dataR0;
         end
      end else begin
         fifo_data=0;
      end
   end

   // WTU input logic - determines which side the WTU should source from
   always @(*) 
      case(mode)
      TFORM_L2R: {lp, hp}= {rd_dataL0, rd_dataL1};
      TFORM_R2L: {lp, hp}= {rd_dataR0, rd_dataR1};
      default: {lp,hp}=0;
      endcase

   // "Left" memory unit
   //TODO:  Update for flipped io
   memi_unit #(
            .RD_WIDTH(BITWIDTH),
            .RD_DEPTH(WIDTH>>1)
           )memL0(
                  .clk(clk),
                  .rst(rst),
                  .rd_addr(rdaddr),
                  .rd_data(rd_dataL0),
                  .wr_addr(wraddr),
                  .wr_data(wr_dataL0),//lp),
                  .wr_en(wrL0),
                  .mode(mode!=LOAD)
                 );
   memi_unit #(
            .RD_WIDTH(BITWIDTH),
            .RD_DEPTH(WIDTH>>1)
           )memL1(
                  .clk(clk),
                  .rst(rst),
                  .rd_addr(rdaddr),
                  .rd_data(rd_dataL1),
                  .wr_addr(wraddr),
                  .wr_data(wr_dataL1),//hp),
                  .wr_en(wrL1),
                  .mode(mode!=LOAD)
                 );
   // Wavelet transform.
   //TODO:  Update for flipped io
   wti_unit wtu0 (
                  .in(in),
                  .in_prev(in_prev),
                  .lpi(lp),
                  .hpi(hp)
                 );
   // "Right" memory unit
   //TODO:  Update for flipped io
   memi_unit #(
            .RD_WIDTH(BITWIDTH),
            .RD_DEPTH(WIDTH>>1)
           )memR0(
                  .clk(clk),
                  .rst(rst),
                  .rd_addr(rdaddr),
                  .rd_data(rd_dataR0),
                  .wr_addr(wraddr),
                  .wr_data(wr_dataR0),
                  .wr_en(wrR0),
                  .mode(mode!=LOAD)
                 );
   memi_unit #(
            .RD_WIDTH(BITWIDTH),
            .RD_DEPTH(WIDTH>>1)
           )memR1(
                  .clk(clk),
                  .rst(rst),
                  .rd_addr(rdaddr),
                  .rd_data(rd_dataR1),
                  .wr_addr(wraddr),
                  .wr_data(wr_dataR1),
                  .wr_en(wrR1),
                  .mode(mode!=LOAD)
                 );

   wti_logic #(
            .DEPTH(DEPTH)
           )wtl0 (
                  .addr(addr),
                  .mode(mode),
                  .fifo_ready(fifo_ready),
                  .mem_ready(in_ready),
                  .iterations(iterations),
                  .clk(clk),
                  .rst(rst)
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

