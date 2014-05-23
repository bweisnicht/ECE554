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
module top_level_buttons(
    // system
    input wire clk,         // 100mhz clock
    input wire rst,         // Asynchronous reset, tied to dip switch 0
    // spart
      // input
    input wire rxd   ,      // RS232 Recieve Data 
      // output
    output wire txd,
    // buttons
      // input
    input wire pb0, pb1, pb2, pb3, pb4,
    input wire eq0, eq1, eq2

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
	wire [23:0] pcm_data;
	wire filt_codec_wr_fifo, filt_codec_full_fifo;
	/* end filt wires*/

	/* buttons wires*/
	wire [23:0] curr_status;
	/*end buttons wires*/

	/*DCM wires*/
	wire clk_sys;
	/*end DCM wires*/

	/*button wires*/
	wire eq3;
	/*end wires*/
	localparam COUNT = 16, INTERRUPT = 50;
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
     proc proc0 (/*AUTOARG*/
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
/* Buttons Buttons Buttons Buttons Buttons Buttons Buttons Buttons Buttons  */
     buttons but0 (
      // input
     .clk(clk_sys),
     .rst(rst_real),
     .pb0(pb0),
     .pb1(pb1),
     .pb2(pb2),
     .pb3(pb3),
     .pb4(pb4),
     .eq0(eq0),
     .eq1(eq1),
     .eq2(eq2),
     .fpga_addr(fpga_addr),
     .fpga_ce(fpga_ce),
     // output
     .fpga_data(fpga_data),
     .fpga_drdy(fpga_drdy),
     .fpga_int(fpga_int),
     .curr_status(curr_status));
/* END Buttons END Buttons END Buttons END Buttons END Buttons END Buttons  */
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
     //.cpu_en_cf(cpu_en_cf), 
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
