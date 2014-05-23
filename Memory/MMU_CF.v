`default_nettype none 
`timescale 1ns/ 10ps

module MMU_CF (clk, rst, CPU_en_CF, CPU_addr,  din_mmu,
		dout_mmu, cf_addr_in, cf_addr_out, cf_data_in, cf_data_out, 
		fifo_rd_en, fifo_rd_empty, CF_clk, fifo_wr_en, fifo_wr_full,
		 CF_int, CPU_stall, CF_int_in, CPU_rw);

	input wire clk, rst, CPU_en_CF, fifo_rd_en;
        input wire CF_clk, fifo_wr_en;
	input wire CF_int_in, CPU_rw;
	input wire [10:0] CPU_addr, cf_addr_in;
	input wire [23:0] din_mmu, cf_data_in;



	output wire fifo_wr_full, CF_int, CPU_stall;
	output wire fifo_rd_empty;
	output wire [10:0] cf_addr_out;
	output wire [23:0] dout_mmu, cf_data_out;


	localparam WIDTH = 35;
	// 
	// CPU_addr ->  fifo_mc_data_in|------| fifo_mc_data_out
	//   11        --------------->| fifo |---------------->
	// DOUT_MMU ->         35      |------|
	//   24

	// fifo_rd inputs mc means mmu-compactflash
	wire [34:0] fifo_mc_data_in;
	wire fifo_mc_wr_en;

	// fifo_rd outputs
	wire [34:0] fifo_mc_data_out;
	wire fifo_mc_full;

	
	// fifo_wr inputs cm means compactflash-mmu
	wire [34:0] fifo_cm_data_in;

	//fifo_wr outputs cm means compactflash-mmu
	wire [34:0] fifo_cm_data_out;
	wire fifo_wr_empty;

	// memory inputs
	// address  from the compact flash input fifo to the mmu memory
	wire [10:0] cf_addr_in_mem, mem_addr_in;
	// data from the compact flash input fifo to the mmu memory
	wire [23:0] cf_data_in_mem, mem_data_in;
	wire mem_write_enable;

	assign fifo_mc_data_in = {CPU_addr, din_mmu};
	assign cf_data_out = fifo_mc_data_out[23:0];
	assign cf_addr_out = fifo_mc_data_out[34:24];


	assign fifo_cm_data_in = {cf_addr_in, cf_data_in};
	assign cf_data_in_mem = fifo_cm_data_out[23:0];
	assign cf_addr_in_mem = fifo_cm_data_out[34:24];

	// CPU Memory stall assign statement!
	// if we are doing a write request, and either the MMU is uploading
		// data from the CF, or if the CF is not taking data from its
			// input fifo, then we will wait for a response
	assign CPU_stall = CPU_en_CF & (((CPU_rw) & (!fifo_wr_empty)) || 
				(!CPU_rw & fifo_mc_full));


	

	// CF reads MMU aka FIFO OUT
	//	  |------|
	// MMU -->|fifo  |--> CF
	// 	  |------|
	CFFifo CF_fifo_rd(
		.din(fifo_mc_data_in),
		.rd_clk(CF_clk),
		.rd_en(fifo_rd_en),
		.rst(rst),
		.wr_clk(clk),
		.wr_en(fifo_mc_wr_en),
		.dout(fifo_mc_data_out),
		.empty(fifo_rd_empty),
		.full(fifo_mc_full));

	// we will write data to the "CF" if we don't have a full buffer
	// and if we have a write request from the CPU
	assign fifo_mc_wr_en = !fifo_mc_full & !CPU_rw & CPU_en_CF;
	// CF writes to MMU aka FIFO IN
	//       |------|
	//MMU <--|fifo  |<-- CF
	//       |------|
	CFFifo filt_fifo_wr(
		.din(fifo_cm_data_in),
		.rd_clk(clk),
		.rd_en(!fifo_wr_empty),
		.rst(rst),
		.wr_clk(CF_clk),
		.wr_en(fifo_wr_en), // input signal
		.dout(fifo_cm_data_out),
		.empty(fifo_wr_empty),
		.full(fifo_wr_full)); // output signal



	//  memory code! memory code! memory code! memory code! memory code!
	
	assign mem_addr_in = fifo_wr_empty ? din_mmu : cf_addr_in_mem;
	assign mem_data_in = fifo_wr_empty ? CPU_addr : cf_data_in_mem;
	// we will write if there is data waiting in the input buffer of the
		// compact flash or if we have a write request from CPU
	assign mem_write_enable = !fifo_wr_empty | (!CPU_rw & CPU_en_CF);

	// the cf size is the same as the filter, so we are using this for now
	/*filter_memory mem0(
	.clka(clk),
	.dina(mem_data_in),
	.addra({1'b0, mem_addr_in}),
	.wea( mem_write_enable),
	.clkb(clk),
	.addrb({1'b0, CPU_addr}), // read addr port, input from CPU	
	.doutb(dout_mmu)); // the CF doesn't ever want to read from SRAM
	// so we can directly connect the output of the SRAM read port to
	// the output back to CPU*/
	

	assign dout_mmu = 24'h0;


endmodule
