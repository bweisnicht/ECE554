`default_nettype none 
`timescale 1ns/ 10ps

module MMU_Spart(clk, rst, din_mmu, dout_mmu, CPU_addr, spart_ce, spart_rw, CPU_rw,
	         spart_addr, spart_ack, spart_drdy, spart_tx, spart_cpu_en, mem_stall
                  , spart_data);

		 
		input wire clk, rst, spart_ack, spart_drdy, spart_tx, CPU_rw;
		input wire spart_cpu_en;
		input wire [1:0] CPU_addr;
		input wire [23:0] din_mmu;

                output wire [23:0] spart_data;

		output wire spart_ce, spart_rw, mem_stall;
		output wire [1:0] spart_addr;
		output wire [23:0] dout_mmu;

		//reg [23:0] din_mmu_temp;
	
		wire write_enable;

	        assign spart_data = din_mmu;

		assign spart_rw = CPU_rw;

		assign spart_ce = spart_cpu_en;

		// if we are trying to write to the transmitter
                // and it is busy sending, then we will stall
		assign mem_stall = spart_cpu_en & !spart_rw & !spart_tx;

		assign spart_addr = CPU_addr;

		// we aren't going to be using the receiver, so don't worry
		// about it for now
		assign dout_mmu = 24'h0;

		/*always @(posedge clk, posedge rst) begin
			if (rst) begin
				din_mmu_temp <= 24'b0;
			end else if (spart_cpu_en & spart_tx) begin
				din_mmu_temp <= din_mmu;
			end else begin
				din_mmu_temp <= din_mmu_temp;
			end
		end*/
		



endmodule
