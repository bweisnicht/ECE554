`default_nettype none
module Filter_AudioController(clk,rst,bit_clk,audio_reset,sdata_out,sync,sw,left_data, led);
   input wire clk;
   input wire rst;
   input wire bit_clk;
   input wire sw;

   output wire audio_reset; // codec -> AC'97 chip
   output wire sdata_out;   // codec -> AC'97 chip
   output wire sync;        // codec -> AC'97 chip
   output wire [19:0] left_data;
   output wire [3:0] led;
   
   wire [19:0] left_data_reg;
   assign left_data = left_data_reg;

   wire [23:0] filter_out_data;       // filt -> codec
   wire        filter_out_wr_en;      // filt -> codec
   wire        filter_out_fifo_ready; // filt <- codec

   wire [23:0] filter_in_data;        // CF -> filt
   wire        filter_in_rd_en;       // CF <- filt
   wire        filter_in_fifo_ready;  // CF -> filt

   wire        codec_ce;   // Codec <?> MMU
   wire [2:0]  codec_addr; // Codec <?> MMU
   wire [23:0] codec_data; // Codec <?> MMU

   reg [1:0] clk_cnt;
   reg clk_div4;
   always @(posedge clk,posedge rst) begin
      if(rst) begin
         clk_cnt<=0;
      end else begin
         clk_cnt<=clk_cnt+1;
      end
   end
   
   always @(*) clk_div4=clk_cnt[1];
   wire filt_clk; assign filt_clk=clk_div4;
   
   assign led[0] = clk;
   assign led[1] = filt_clk;
   assign led[2] = rst;
   assign led[3] = audio_reset;

   wire swg_fifo_full,swg_fifo_empty;
   wire codec_fifo_full;
   assign filter_in_fifo_ready = !swg_fifo_empty;
   fifo_sim swg750hz (
              .clk(filt_clk),
              .rst(rst),
              .read_fifo(sw ? filter_in_rd_en : !codec_fifo_full),
              .fifo_full(swg_fifo_full),
              .fifo_empty(swg_fifo_empty),
              .data_out(filter_in_data)
              );

   wire filt_coeff_fifo_rd_en,filt_drdy;
   wire [23:0] filt_data_buf;
   reg [2:0] filt_addr_buf;
   // Code to drain the filter data output
   always @(posedge filt_clk, posedge rst) begin
      if(rst) begin
         filt_addr_buf<=0;
      end else if(filt_drdy) begin
         filt_addr_buf<=filt_addr_buf+1;
      end else begin
         filt_addr_buf<=0;
      end
   end
   wire nc1;
   filter wavelet_transformer (
              .clk(filt_clk),
              .rst(rst),
              .filt_clk(nc1),
              // CF emulator -> Filter interface
              .in_fifo_ready(filter_in_fifo_ready),
              .in_fifo_data(filter_in_data),
              .in_fifo_rd_en(filter_in_rd_en),
              // Filter -> Codec interface
              .out_fifo_ready(filter_out_fifo_ready),
              .out_fifo_data(filter_out_data),
              .out_fifo_wr_en(filter_out_wr_en),
              // MMU interface
              .coeff_fifo_ready(1'b0),
              .coeff_fifo_data(24'b1),
              .coeff_fifo_addr(3'b0),
              .coeff_fifo_rd_en(filt_coeff_fifo_rd_en),
              .filt_data_buf(filt_data_buf),
              .filt_addr_buf(filt_addr_buf),
              .filt_drdy(filt_drdy)
             );
   wire nc; // not-connected
   assign filter_out_fifo_ready=!codec_fifo_full;
   audio_top audio_controller (
              .clk(filt_clk),
              .global_reset(rst),
              .bit_clk(bit_clk),
              // Filter interface
              .pcm_data(sw ? filter_out_data[23:4] : filter_in_data[23:4]),
              .wr_fifo(sw ?  filter_out_wr_en      : ((!codec_fifo_full) && (!swg_fifo_empty))),
              .fifo_full(codec_fifo_full),
              .filt_codec_wr_fifo(nc),
              // MMU interface
              .codec_ce(codec_ce),
              .codec_addr(codec_addr),
              .codec_data(codec_data),
              // AC'97 interface
              .audio_reset(audio_reset),
              .sdata_out(sdata_out),
              .sync(sync),
              .left_data_reg(left_data_reg)
             );


endmodule

