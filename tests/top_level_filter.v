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
module top_level_filter(
    // system
    input wire clk,         // 100mhz clock
    input wire rst,         // Asynchronous reset, tied to dip switch 0
    // spart
      // input
    input wire rxd   ,      // RS232 Recieve Data
      // output
    output  wire txd        // RS232 Transmit Data
    

    );
	
	
	wire iocs, CPU_en, ack, drdy, next_gated_rst;
	wire iorw, clkin, clk_fast;
	wire rda, LOCKED_OUT;
	wire tbr, tx_rdy, full;
	wire [1:0] ioaddr;
	wire [23:0] data, addr;

	/* MMU wire*/
	/*fpga buttons*/
	wire [23:0] fpga_data;
	wire fpga_drdy, fpga_int;
	
	wire [1:0] fpga_addr;
	wire fpga_ce;
	assign fpga_int = 1'b0;

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
	wire filt_codec_wr_fifo, filt_codec_full_fifo, filt_rd_cf;
	/* end filt wires*/

	/* buttons wires*/
	wire [23:0] curr_status;
	/*end buttons wires*/

	/*DCM wires*/
	wire clk_sys;
	/*end DCM wires*/
	
	/*CF rom wires*/
	wire count_full, cf_fifo_empty, cf_fifo_full;
	wire [9:0] filt_addr;
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
/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
/*spart spart spart spart spart spart spart spart spart spart spart spart    */
     spart_control sc0(
     // inputs
     .clk(clk_sys),
     .clk_spart(clk_sys), 
     .rst(rst_real), 
     .rx_in(rxd), 
     .chip_enable(spart_ce), 
     .r_w(spart_rw), 
     .addr(spart_addr), 
     .data(spart_data), 
     // outputs
     .tx_out(txd),
     .ack(spart_ack), 
     .drdy(spart_drdy), 
     .tx_rdy(tx_rdy));	
/* END spart END spart END spart END spart END spart END spart END spart    */
/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
/* proc proc proc proc proc proc proc proc proc proc proc proc proc proc    */	
     proc_test proc0 (/*AUTOARG*/
     // Inputs
     .clk(clk_sys), 
     .rst(rst_real), 
     .dout_mmu(dout_mmu), 
     .mmu_stall(mmu_stall), 
     .interrupt(interrupt),
     // Outputs
     .din_mmu(data), 
     .addr(addr), 
     .CPU_rw(iorw), 
     .CPU_en(CPU_en));
/* END proc END proc END proc END proc END proc END proc END proc END proc*/
/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
/* CF rom CF rom CF rom CF rom CF rom CF rom CF rom CF rom CF rom CF rom CF*/

   filt_data fd0(
	.clka(clk_sys),
	.addra(filt_addr),
	.douta(cf_data));

   counter_x_output #(.COUNT(FILT_MEM_SIZE), .INCR(1)) cx0 (
	.clk(clk_sys), 
	.rst(rst_real), 
	.count(filt_addr), 
	.incr(1'b1), 
	.cnt_rst(count_full), 
	.full(count_full));

   cf_filt_fifo cff0(
	.din(cf_data),
	.rd_clk(clk_sys),
	.rd_en(filt_rd_cf),
	.rst(rst_real),
	.wr_clk(clk_sys),
	.wr_en(!cf_fifo_full),
	.dout(cf_in_data),
	.empty(cf_fifo_empty),
	.full(cf_fifo_full));


   
/* end CF rom end CF rom end CF rom end CF rom end CF rom end CF rom end CF*/
/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
/* filter filter filter filter filter filter filter filter filter filter */
     assign filt_codec_full_fifo=0;
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
     .out_fifo_data(pcm_data[23:4]),
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
     .vga_clk(vga_clk), 
     /*out*/ 
     .vga_data(vga_data),
     //--------------------------------
     /*compact flash*/ /*in*/  
     .cf_data_in(cf_data_in), 
     .cf_addr_in(cf_addr_in), 					
 //    .cpu_en_cf(cpu_en_cf), 
     .cf_rd_en(cf_rd_en), 
     .cf_clk(cf_clk), 
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
     .interrupt(interrupt));
/* end MMU end MMU end MMU end MMU end MMU end MMU end MMU end MMU end MMU */
/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/

					 
endmodule
