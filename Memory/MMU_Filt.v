`default_nettype none 
`timescale 1ns/ 10ps

module MMU_Filt (clk, rst, CPU_en_filt, CPU_addr, din_mmu, dout_mmu,
		filt_ce, filt_rw, filt_addr_buf, filt_addr_coef, filt_drdy,
		fifo_rd_en, fifo_rd_empty, filt_clk, filt_data_buf,
		 filt_int, CPU_stall, filt_int_in, CPU_rw,
	 	filt_data_coef);

	input wire clk, rst, CPU_en_filt, filt_drdy, fifo_rd_en;
        input wire filt_clk;
	input wire filt_int_in, CPU_rw;
	input wire [12:0] CPU_addr;
	input wire [23:0] din_mmu, filt_data_buf;

	output wire filt_ce, filt_rw, filt_int, CPU_stall;
	output wire fifo_rd_empty;
	output wire [2:0] filt_addr_buf, filt_addr_coef;
	output wire [23:0] dout_mmu, filt_data_coef;


	localparam WIDTH = 24, NUM_SAMPLES = 1024, INCR = 1;
	//fsm outputs
	wire fifo_out_wr, fifo_ini_rd;

	//fsm inputs
	wire fifo_out_full, fifo_in_empty;

	//fifo_out outputs
	wire [26:0] fifo_out, fifo_in;

	//memory buf input
	wire mem_wr_buf, filt_wr_sel;
	wire [11:0] filt_wr_addr;

	//memory buf read
	wire [11:0] buf_rd_addr;

	// memory buf output
	wire [23:0] dout_mem_buf;

	// memory coef input
	wire mem_wr_coef;

	// memory coef output
	wire [23:0] dout_mem_coef;

	// control signal
	wire rd_coeff_next;
	reg rd_coeff;

	// assign statements@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
	
	// the address concatenated with the data for the sake of the fifo
	assign fifo_in = {CPU_addr[2:0], din_mmu};

	//separate data for the sake of the filter
	assign filt_addr_coef = fifo_out[26:24];
	assign filt_data_coef = fifo_out[23:0];

	//we use the least significant values of the 1024 counter to guide the
	//reading of the filter register buffers
	assign filt_addr_buf = filt_wr_addr[2:0];

	// if filt_int = 1, then we want to read the buffer memory, otherwise
        // we want to get out of the way of the writing
	assign buf_rd_addr = CPU_addr[11:0];

	// we will use mem_wr_buf as both the incrment of the counter and the
	// mem_wr_buf for the buffer
	// if the filter has data ready and the CPU doesn't have an unanswered
	// interrupt request
	assign mem_wr_buf = filt_drdy & !filt_int_in; 

	// the enable signal for the coefficient section of the memory
	assign mem_wr_coef = !CPU_rw & CPU_en_filt;

	// assign data for the fifo_out_wr
	// if we're writing to the address domain of filt from the CPU
	// and the filter isn't full, then we write to the fifo
	assign fifo_out_wr = mem_wr_coef & !fifo_out_full;

	// if the msb of CPU_addr is 1, then we are reading coefficients
	assign rd_coeff_next = CPU_addr[12];

	// select output from bufs or coefs
	assign dout_mmu = rd_coeff ? dout_mem_coef : dout_mem_buf;

	always @(posedge clk) begin
		rd_coeff <= rd_coeff_next;
	end

	// CPU stall conditions
	// we stall if we cannot write to the fifo and we're trying to write
	assign CPU_stall = fifo_out_full & CPU_en_filt & !CPU_rw;
	
	// module declarations MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM

	filtFifo filt_fifo_rd(
		.din(fifo_in),
		.rd_clk(filt_clk),
		.rd_en(fifo_rd_en),
		.rst(rst),
		.wr_clk(clk),
		.wr_en(fifo_out_wr),
		.dout(fifo_out),
		.empty(fifo_rd_empty),
		.full(fifo_out_full));


	filter_memory mem_buf(
	.clka(filt_clk),
	.dina(filt_data_buf),
	.addra(filt_wr_addr[11:0]),
	.wea(mem_wr_buf),
	.clkb(clk),
	.addrb(buf_rd_addr),
	.doutb(dout_mem_buf));

	filter_memory_coef mem_coef(
	.clka(clk),
	.dina(din_mmu),
	.addra(CPU_addr[2:0]),
	.wea(mem_wr_coef),
	.clkb(clk),
	.addrb(CPU_addr[2:0]),
	.doutb(dout_mem_coef));

	// we are only counting up to 1024, so we have two extra bits
	assign filt_wr_addr[11:10] = 2'b0;

	counter_x_output_sat #(.COUNT(NUM_SAMPLES), .INCR(INCR)) cntSAMP(
		.clk(filt_clk), .rst(rst), .full(filt_int), .incr(mem_wr_buf),
		.count(filt_wr_addr), .cnt_rst(filt_int_in));

		


endmodule
