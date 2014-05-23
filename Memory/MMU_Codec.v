`default_nettype none 
`timescale 1ns/ 10ps

module MMU_Codec(clk, rst, din_mmu, dout_mmu, CPU_en_codec, CPU_addr, 
				CPU_rw, codec_ce, codec_addr, codec_data);

		input wire clk, rst, CPU_en_codec, CPU_rw;

		input wire [3:0] CPU_addr;
		input wire [23:0] din_mmu;

		output wire codec_ce;
		output wire [3:0] codec_addr;
		output wire [23:0] dout_mmu, codec_data;
	
		wire write_enable;

		assign write_enable = !CPU_rw & CPU_en_codec;
		assign codec_ce = write_enable; 
		assign codec_addr = CPU_addr;

		assign codec_data = din_mmu;
	// single port ram with a size of 0x10
	 /*codec_memory codec_mem(
		.clka(clk),
		.dina(din_mmu),
		.addra(CPU_addr),
		.wea(CPU_rw),
		.douta(dout_mmu));*/

		



endmodule
