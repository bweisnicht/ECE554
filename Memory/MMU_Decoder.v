`default_nettype none 
`timescale 1ns/ 1ps

module MMU_Decoder(// input
			addr, CPU_en,
		   // output
		        mem_addr, CPU_mem_en, filt_addr, CPU_filt_en,
			cf_addr, CPU_cf_en, vga_addr, CPU_vga_en,
			codec_addr, CPU_codec_en, timer_addr, CPU_timer_en,
			fpga_addr, CPU_fpga_en, spart_addr, CPU_spart_en,
			CPU_interrupt_en);

		input wire CPU_en;
		input wire [23:0] addr;

		output wire [13:0] mem_addr;
		output wire [12:0] filt_addr;
		output wire [10:0] cf_addr;
		output wire [10:0] vga_addr;
		output wire [3:0]  codec_addr;
		output wire [1:0] timer_addr, fpga_addr, spart_addr;
		output wire CPU_mem_en, CPU_filt_en, CPU_cf_en, CPU_vga_en;
		output wire CPU_codec_en, CPU_timer_en, CPU_fpga_en;
		output wire CPU_spart_en, CPU_interrupt_en;

		assign CPU_mem_en = (addr >= 24'h000000) 
					&& (addr <= 24'h003fff) & CPU_en;

		assign CPU_filt_en = (addr >= 24'h004000) 
					&& (addr <= 24'h005007)& CPU_en;

		assign CPU_cf_en = (addr >= 24'h005008) 
					&& (addr <= 24'h006007) & CPU_en;

		assign CPU_vga_en = (addr >= 24'h006008) 
					&& (addr <= 24'h006807) & CPU_en;

		assign CPU_codec_en = (addr >= 24'h006808) 
					&& (addr <= 24'h006817) & CPU_en;

		assign CPU_timer_en = (addr >= 24'h006818) 
					&& (addr <= 24'h00681B) & CPU_en;

		assign CPU_fpga_en = (addr >= 24'h00681C) 
					&& (addr <= 24'h00681F) & CPU_en;

		assign CPU_spart_en = (addr >= 24'h006820) 
					&& (addr <= 24'h006823) & CPU_en;

		assign CPU_interrupt_en = (addr == 24'h006824) & CPU_en;

		assign mem_addr = addr - 24'h000000;

		assign filt_addr = (addr - 24'h004000);

		assign cf_addr = (addr - 24'h005008);

		assign vga_addr = (addr - 24'h006008);

		assign codec_addr = (addr - 24'h006808);

		assign timer_addr = (addr - 24'h006818);

		assign fpga_addr = (addr - 24'h00681C);

		assign spart_addr = (addr - 24'h006820);

endmodule
