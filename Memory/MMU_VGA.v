`default_nettype none 
`timescale 1ns/ 10ps

module MMU_VGA(clk, rst, vga_clk, din_mmu, dout_mmu, CPU_en_VGA, CPU_addr, 
				VGA_addr);

		input wire clk, rst, vga_clk, CPU_en_VGA;

		input wire [10:0] CPU_addr, VGA_addr;
		input wire [23:0] din_mmu;

		output wire [23:0] dout_mmu;

	// single port ram with a size of 0x800 
	vga_memory vgamem0(
	.clka(clk),
	.dina(din_mmu),
	.addra(CPU_addr),
	.wea(CPU_en_VGA),
	.doutb(dout_mmu),
	.clkb(vga_clk),
	.addrb(VGA_addr));

endmodule
