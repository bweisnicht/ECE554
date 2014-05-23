`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:54:21 04/11/2013 
// Design Name: 
// Module Name:    mmu_filter 
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
module mmu_filter(/*system*/ clk, rst,
	/*fpga buttons*/ /*in*/ fpga_data, fpga_drdy, fpga_int,
		/*out*/ fpga_ce, fpga_addr,
	/*vga*/ /*in*/ vga_addr, vga_clk, /*out*/ vga_data,
	/*compact flash*/ /*in*/  cf_data_in, cf_addr_in, cpu_en_cf, cf_rd_en,
	                          cf_clk, cf_wr_en,
		/*out*/ cf_data_out, cf_addr_out, cf_rd_empty, cf_wr_full,
	/* filter*/ /*in*/ filt_data_buf, filt_drdy, filt_rd_en, filt_clk, 
		/*out*/ filt_data_coef, filt_addr_coef, filt_addr_buf,
		filt_rd_empty, filt_ce, filt_rw,
	/*codec*/ /*out*/ codec_data, codec_addr, codec_ce, 
	/*spart*/ /*in*/ spart_ack, spart_drdy, spart_tx, 
		/*inout*/ spart_data,
		/*out*/   spart_addr, spart_ce, spart_rw,
	/*cpu*/ /*in*/ din_mmu, cpu_en, cpu_rw, cpu_addr,
		/*out*/ dout_mmu, mmu_stall, interrupt,
      clk,rst,
               in_fifo_ready,   in_fifo_data,   in_fifo_rd_en,
               out_fifo_ready,  out_fifo_data,  out_fifo_wr_en,
               coeff_fifo_ready,coeff_fifo_data,coeff_fifo_rd_en,
               freq_fifo_ready, freq_fifo_data, freq_fifo_wr_en
    );
MMU mmu0     (
              // FPGA Buttons interface
              .fpga_data(),
              .fpga_drdy(),
              .fpga_int(),
              .fpga_ce(),
              .fpga_addr(),
              // VGA
              .vga_addr(),
              .vga_clk(),
              .vga_data(),
              // Compact Flash
              .cf_data_in(),
              .cf_addr_in(),
              .cpu_en_cf(),
              .cf_rd_en(),
              .cf_clk(),
              .cf_wr_en(),
              .cf_data_out(),
              .cf_addr_out(),
              .cf_rd_empty(),
              .cf_wr_full(),
              // Filter
              .filt_data_buf(),
              .filt_drdy(),
              .filt_rd_en(),
              .filt_clk(),
              .filt_data_coef(),
              .filt_addr_coef(),
              .filt_addr_buf(),
              .filt_rd_empty(),
              .filt_ce(),
              .filt_rw(),
              // Codec
              .codec_data(),
              .codec_addr(),
              .codec_ce(),
              // SPART
              .spart_ack(),
              .spart_drdy(),
              .spart_tx(),
              .spart_data(),
              .spart_addr(),
              .spart_ce(),
              .spart_rw(),
              // CPU Interface
              .din_mmu(),
              .cpu_en(),
              .cpu_rw(),
              .cpu_addr(),
              .dout_mmu(),
              .mmu_stall(), 
              .interrupt()
             );
filter filt0 (
              .clk(clk),
              .rst(rst),
              // WT Input
              .in_fifo_ready(),
              .in_fifo_data(),
              .in_fifo_rd_en(),
              // Inverse WT output
              .out_fifo_ready(),
              .out_fifo_data(),
              .out_fifo_wr_en(),
              // Frequency coefficient input
              .coeff_fifo_ready(),
              .coeff_fifo_data(),
              .coeff_fifo_rd_en(),
              // Frequency data output
              .filt_data_buf(),
              .filt_addr_buf(),
              .filt_drdy()
             );
endmodule
