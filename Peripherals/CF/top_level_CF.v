`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:   
// Design Name: 
// Module Name:    top_level 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module top_level_CF(
    // system
    //input wire clk,          100mhz clock
     //input wire rst,         Asynchronous reset, tied to dip switch 0
    // spart
      // input
    input wire rxd   ,      // RS232 Recieve Data
      // output
    output  wire txd,        // RS232 Transmit Data
        // codec
      // input
    input wire bit_clk,
      // output
    output wire audio_reset,
    output wire sdata_out,
    output wire sync,
    // vga 
      //output
    output wire vsync,
    output wire hsync,
    output wire blank,
    output wire comp_sync,
    output wire [7:0] pixel_r,
    output wire [7:0] pixel_g,
    output wire [7:0] pixel_b,
    output wire vgaclk,
    // buttons
      // input
    input wire pb0, pb1, pb2, pb3, pb4,
    input wire eq0, eq1, eq2,
    // LEDS
    output wire LED_0, LED_1, LED_2, LED_3

    );
	
reg clk, rst;
	
	
	wire iocs, ack, drdy, next_gated_rst;
	wire clkin, clk_fast;
	wire rda, LOCKED_OUT;
	wire tbr, tx_rdy, full;
	wire [1:0] ioaddr;
	reg [23:0] data, addr;
	reg CPU_en, iorw, write;

	/* MMU wire*/
	/*fpga buttons*/
	wire [23:0] fpga_data;
	wire fpga_drdy, fpga_int;
	
	wire [1:0] fpga_addr;
	wire fpga_ce;

	/*vga*/
	wire [10:0] vga_addr;
	wire vga_clk;

	wire [23:0] vga_data;

	/*compact flash*/
	wire [23:0] cf_data_in;
	wire [10:0] cf_addr_in;
	wire cpu_en_cf, cf_rd_en, cf_clk, cf_wr_en;

	wire [23:0] cf_data_out;
	wire [10:0] cf_addr_out;
	wire cf_rd_empty, cf_wr_full;

	/* filter*/
	wire [23:0] filt_data_buf;
	wire filt_drdy, filt_rd_en, filt_clk;

	wire [23:0] filt_data_coef;
	wire [2:0] filt_addr_coef, filt_addr_buf;
	wire filt_rd_empty, filt_ce, filt_rw;

	/* codec*/
	wire [23:0] codec_data;
	wire [3:0] codec_addr;
	wire codec_ce;

	/* spart*/
	wire spart_ack, spart_drdy, spart_tx;

	wire [23:0] spart_data;

	wire [1:0] spart_addr;
	wire spart_ce, spart_rw;

	/* cpu*/
	wire [23:0] dout_mmu;
	wire mmu_stall, interrupt;
	/* end mmu wires*/
	
	/*DCM proc wires*/
        wire  rst_real, locked, clk_test, clk_spart, clk2;
	assign rst_real = rst | !locked;
	/*end DCM proc wires*/

	/* filt wires*/
	wire [23:0] pcm_data, cf_in_data;
	wire filt_codec_wr_fifo, filt_codec_full_fifo, filt_rd_cf,filt_codec_empty_fifo;
	/* end filt wires*/

	/* buttons wires*/
	wire [23:0] curr_status;
	/*end buttons wires*/

	/*DCM wires*/
	wire clk_sys;
	/*end DCM wires*/
	
	/*CF rom wires*/
	wire count_full, cf_fifo_empty, cf_fifo_full;
	wire [10:0] filt_addr;
	wire [23:0] cf_data;
	/*end CF rom wires*/
	localparam COUNT = 16, INTERRUPT = 50, FILT_MEM_SIZE = 1024;
	localparam BUF = 1'b1, IDLE = 1'b0;

     
     
/* DCM proc DCM proc DCM proc DCM proc DCM proc DCM proc DCM proc DCM proc*/

       system_clock instance_name (
         .CLKIN_IN(clk), 
         .RST_IN(rst), 
         .CLKIN_IBUFG_OUT(clk2), 
	 .CLKFX_OUT(clk_sys), 
         .CLK0_OUT(clk_spart), 
         .LOCKED_OUT(locked)
         );	
/* end DCM proc end DCM proc end DCM proc end DCM proc end DCM proc end DCM*/

/* CODEC CODEC CODEC CODEC CODEC CODEC CODEC CODEC CODEC CODEC CODEC CODEC */
   audio_top audio0 (
      //input
     .clk(clk_sys),
     .global_reset(rst_real),
	  .filt_clk(clk_sys),
     .bit_clk(bit_clk),
     .pcm_data(pcm_data),
     .wr_fifo(filt_codec_wr_fifo),
     .fifo_full(filt_codec_full_fifo),
	  .fifo_empty(filt_codec_empty_fifo),
     .codec_ce(codec_ce),
     .codec_addr(codec_addr),
     .codec_data(codec_data),
     .audio_reset(audio_reset),
     .sdata_out(sdata_out),
     .sync(sync));
/* END CODEC END CODEC END CODEC END CODEC END CODEC END CODEC END CODEC    */

/* filter filter filter filter filter filter filter filter filter filter */
     filter filt0 (
     // System     
     .clk(clk_sys),
     .rst(rst_real),
     // CF
     .in_fifo_ready(!cf_fifo_empty),
     .in_fifo_rd_en(filt_rd_cf),
     .in_fifo_data(cf_in_data),
     //Codec
     .out_fifo_ready(!filt_codec_full_fifo),
     .out_fifo_wr_en(filt_codec_wr_fifo),
     .out_fifo_data(pcm_data[19:0]),
     //MMU - coef
     .filt_clk(filt_clk),
     .coeff_fifo_ready(!filt_rd_empty),
     .coeff_fifo_rd_en(filt_rd_en),
     .coeff_fifo_data(filt_data_coef),
     .coeff_fifo_addr(filt_addr_coef),
     //MMU - buf
     .filt_drdy(filt_drdy),
     .filt_data_buf(filt_data_buf),
     .filt_addr_buf(filt_addr_buf));
/* END filter END filter END filter END filter END filter END filter     */
/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
/*MMU MMU MMU MMU MMU MMU MMU MMU MMU MMU MMU MMU MMU MMU MMU MMU MMU MMU     */
    wire led0, led1;
    assign LED_0 = !led0;
    assign LED_1 = !led1;
    assign LED_2 = !interrupt;
    assign LED_3 = !filt_codec_empty_fifo;
     MMU mmu0(/*system*/ 
     .clk(clk_sys), 
     .rst(rst_real),
     //--------------------------------
     /*fpga buttons*/ /*in*/ 
     .fpga_data(fpga_data), 
     .fpga_drdy(fpga_drdy), 
     .fpga_int(fpga_int),
     /*out*/ 
     .fpga_ce(fpga_ce), 
     .fpga_addr(fpga_addr),
     /*vga*/ /*in*/ 
     .vga_addr(vga_addr), 
     .vga_clk(clk_sys), 
     /*out*/ 
     .vga_data(vga_data),
     //--------------------------------
     /*compact flash*/ /*in*/  
     .cf_data_in(cf_data_in), 
     .cf_addr_in(cf_addr_in), 					
 //    .cpu_en_cf(cpu_en_cf), 
     .cf_rd_en(cf_rd_en), 
     .cf_clk(clk), 
     .cf_wr_en(cf_wr_en), 
     /*out*/ 
     .cf_data_out(cf_data_out), 
     .cf_addr_out(cf_addr_out), 
     .cf_rd_empty(cf_rd_empty), 
     .cf_wr_full(cf_wr_full),
     //--------------------------------
     /* filter*/ /*in*/ 
     .filt_data_buf(filt_data_buf), 
     .filt_drdy(filt_drdy), 
     .filt_rd_en(filt_rd_en), 
     .filt_clk(filt_clk), 
     /*out*/
     .filt_data_coef(filt_data_coef), 
     .filt_addr_coef(filt_addr_coef), 
     .filt_addr_buf(filt_addr_buf), 
     .filt_rd_empty(filt_rd_empty), 
     .filt_ce(filt_ce), 
     .filt_rw(filt_rw),
     //--------------------------------
     /*codec*/ /*out*/ 
     .codec_data(codec_data),
     .codec_addr(codec_addr),
     .codec_ce(codec_ce), 
     /*spart*/ /*in*/ 
     .spart_ack(spart_ack), 
     .spart_drdy(spart_drdy), 
     .spart_tx(tx_rdy), 
     /*inout*/ 
     .spart_data(spart_data),
     /*out*/   
     .spart_addr(spart_addr), 
     .spart_ce(spart_ce), 
     .spart_rw(spart_rw),
     //--------------------------------
     /*cpu*/ /*in*/ 
     .din_mmu(data), 
     .cpu_en(CPU_en), 
     .cpu_rw(iorw), 
     .cpu_addr(addr),
     /*out*/ 
     .dout_mmu(dout_mmu), 
     .mmu_stall(mmu_stall), 
     .interrupt(interrupt),
     .interrupt_filt(led0),
     .interrupt_fpga(led1));
/* end MMU end MMU end MMU end MMU end MMU end MMU end MMU end MMU end MMU */
/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/


/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
/*CF CF CF CF CF CF CF CF CF CF CF CF CF CF CF CF CF CF CF CF CF CF CF CF  */
wire cf_fif_full, int_CF, wr_to_wtu;
wire [23:0] data_from_cf;

fifo wtu_fifo(
	.din(data_from_cf),
	.rd_clk(clk_sys),
	.rd_en(filt_rd_cf),
	.rst(rst),
	.wr_clk(clk),
	.wr_en(wr_to_wtu),
	.dout(cf_in_data),
	.empty(cf_fifo_empty),
	.full(cf_fif_full));
	
SampleGen memInt( .clk(clk), .rst(rst),
.wtu_dataRequest(cf_fif_full), .data_to_wtu(data_from_cf), 
   .wr_to_wtu(wr_to_wtu), .cf_rd_en(cf_rd_en),
	.cf_rd_empty(cf_rd_empty), .cf_clk(cf_clk), .cf_wr_en(cf_wr_en), .cf_wr_full(cf_wr_full), 
	.int_CF(int_CF),
	.cf_data_out(cf_data_out), .cf_addr_out(cf_addr_out), .cf_data_in(cf_data_in), 
	.cf_addr_in(cf_addr_in) );

/* end CF end CF end CF end CF end CF end CF end CF end CF end CF end CF */
/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/


//********************************************* TESTBENCH *********************************\\
reg nxtsng;


initial clk = 0;
   initial begin
   	   write = 1;	   
	   rst = 0;
	   nxtsng = 0;
	   #15 rst = 1;
	   #10 rst = 0;
      #200 nxtsng = 1;
      #5 nxtsng = 0;
      #86;
      nxtsng = 1;
      write = 0;
      #2;
      while (mmu_stall) begin
	      #1;
	     end
      nxtsng = 0;

    end 

always 
  ///////////////////
  // 500MHz clock // 
  /////////////////
  #1 clk = ~clk;

  
  always @ (  posedge rst, posedge clk) begin
    if (rst ) begin
       data <= 0; //din_mmu 
     CPU_en <= 0; //cpu_en 
     iorw <= 0; //cpu_rw
     addr <= 0; //cpu_addr
    end
    else if ( nxtsng & write ) begin
     data <= 1; //din_mmu 
     CPU_en <= 1; //cpu_en 
     iorw <= 0; //cpu_rw
     addr <= 24'h05008; //cpu_addr
    end
    else if (nxtsng & !write) begin
     data <= 1; //din_mmu 
     CPU_en <= 1; //cpu_en 
     iorw <= 1; //cpu_rw
     addr <= 24'h05008; //cpu_addr
    end
  else begin
    data <= 0; //din_mmu 
     CPU_en <= 0; //cpu_en 
     iorw <= 0; //cpu_rw
     addr <= 0; //cpu_addr
  end
  end
  

endmodule
