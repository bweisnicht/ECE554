`default_nettype none 
`timescale 1ns/ 10ps

module t_MMU_filt;

	localparam WIDTH = 24;

	//clock periods
	localparam WHOLE = 10, HALF = 5;
	localparam FILT_WHOLE = 26, FILT_HALF = 13;


	reg clk, rst, CPU_en_filt, filt_drdy, fifo_rd_en;
	reg filt_clk, fifo_wr_en,  filt_int_in, next_interrupt;
	reg CPU_rw, respond_to_interrupt;

	reg [6:0] random_delay;

	reg [12:0] CPU_addr;
	reg [23:0] din_mmu, filt_out;

	// coefficient matrix
	reg [23:0] coeff [0:7];

	wire [23:0] databus;

	wire filt_ce, filt_rw, filt_int, CPU_stall, fifo_rd_empty, fifo_wr_full;
	wire [4:0] filt_addr;
	wire [23:0] dout_mmu, filt_in;

	integer sentinel;

	databus_x #(.WIDTH(WIDTH)) db1 (.databus(databus), 
		.databus_in(filt_out), .databus_in_out(filt_rw),
		.databus_out(filt_in));

	MMU_Filt (.clk(clk), .rst(rst), .CPU_en_filt(CPU_en_filt), 
		.CPU_addr(CPU_addr), .databus(databus), .din_mmu(din_mmu),
		.dout_mmu(dout_mmu), .filt_ce(filt_ce), .filt_rw(filt_rw), 
		.filt_addr(filt_addr), .filt_drdy(filt_drdy), 
		.fifo_rd_en(fifo_rd_en), .fifo_rd_empty(fifo_rd_empty), 
		.filt_clk(filt_clk), .fifo_wr_en(fifo_wr_en), 
		.fifo_wr_full(fifo_wr_full), .filt_int(filt_int), 
		.CPU_stall(CPU_stall), 
		.data_rdy(data_rdy), .filt_int_in(filt_int_in),
		.CPU_rw(CPU_rw));

	// initialize clocks
	initial begin
		clk = 1'b0;
		forever clk = #(HALF) ~clk; 
	end

	initial begin
		filt_clk = 1'b0;
		forever filt_clk = #(FILT_HALF) ~filt_clk;
	end

	// respond to interrupt~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	
	always @(posedge clk, posedge rst) begin
		if (rst) begin
			filt_int_in <= 1'b0;
		end else begin
			filt_int_in <= next_interrupt;
		end
	end

	//combinational logic
	always @(*) begin
		if (respond_to_interrupt) begin
			next_interrupt = 1'b0;
		end else if (filt_int) begin
			next_interrupt = filt_int;
		end else begin
			next_interrupt = filt_int_in;
		end
	end

	//actual response
	always @(filt_int_in) begin
		// wait a random amount of time
		random_delay = $unsigned($random);
		for (sentinel = 0; sentinel < random_delay; sentinel = sentinel+ 1) begin
			#1;
		end
		respond_to_interrupt = 1'b1;
		#(WHOLE);
		#(WHOLE);
	end
	//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	
	// load from CPU
	task load_CPU;
	input [11:0] cpu_addr;
	begin
		//The CPU is interacting with the filter block of MMU
		CPU_en_filt = 1'b1;
		// The CPU wants to read
		CPU_rw = 1'b1;
		// wait for stall to end
		while (CPU_stall) begin
			#(WHOLE);
		end
		// should only read from buf space
		// check for errors
		if (dout_mmu[10:0] != cpu_addr)
			$display("%t: load @ %h | value: %h", $time, cpu_addr, dout_mmu);
	end
	endtask
	
	
	// store from CPU
	task store_CPU;
	input [11:0] cpu_addr;
	input [23:0] din;
	begin
		//The CPU is interacting with the filter block of MMU
		CPU_en_filt = 1'b1;
		// The CPU wants to write
		CPU_rw = 1'b0;
		if (cpu_addr < 12'hFF8) begin
			$display ("%t: segfault, must be between 0xFF8 and 0xFFF", $time);
		end else begin
		// wait for stall to end
		while (CPU_stall) begin
			#(WHOLE);
		end
		// wait for write time
		  #(FILT_WHOLE);
		  #(FILT_WHOLE);
		// check for errors
		if (din != coeff[cpu_addr[2:0]])
			$display("%t: store @ %h | value: %h | actual : %h", $time, cpu_addr, din, coeff[cpu_addr[2:0]]);
	        end
	end
	endtask
	

	// datardy from Filter
        task write_buf;
	input [23:0] filt_buf_data;
	begin

	end
	endtask

endmodule
