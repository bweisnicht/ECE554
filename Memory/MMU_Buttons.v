`default_nettype none 
`timescale 1ns/ 10ps

module MMU_Buttons(clk, rst, fpga_drdy, data_fpga, dout_mmu,
	           cpu_stall, cpu_en_fpga, fpga_ce);

	// Do we want the status update to trigger when we have a drdy or a handled
	// interrupt?

		input wire clk, rst, fpga_drdy, cpu_en_fpga;
		
		input wire [23:0] data_fpga;

		output wire cpu_stall, fpga_ce;
		output wire [23:0] dout_mmu;

	assign dout_mmu = data_fpga;

	assign cpu_stall = 1'b0;

	// enable the buttons to read
	assign fpga_ce = cpu_en_fpga;

endmodule
