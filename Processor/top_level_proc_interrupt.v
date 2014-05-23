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
module top_level_proc_interrupt(
    input wire clk,         // 100mhz clock
    input wire rst,         // Asynchronous reset, tied to dip switch 0
    output  wire txd,        // RS232 Transmit Data
    input wire rxd   ,      // RS232 Recieve Data
	 input wire clk2x
    );
	
	
	wire iocs, CPU_en, ack, drdy, ce, next_gated_rst;
	wire iorw, clkin, clk_fast;
	wire rda, LOCKED_OUT;
	wire tbr, tx_rdy, full;
	// two states, you start by buffering then you go idle (!buffering)
	reg buffering, next_buffering, gated_rst, real_rst;
	wire [1:0] ioaddr;
	wire [23:0] data, addr;
    /*interrupt handle signals*/
    reg interrupt_test;
    integer random_delay;
    reg [2:0] random_seed;

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
	wire cpu_en_cf, cf_rd_en, cf_clk, cf_wr_en, cf_int;

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
	
	localparam COUNT = 16;
	localparam BUF = 1'b1, IDLE = 1'b0;
	
    // behavior for the interrupt for the sake of testing
	initial begin
       interrupt_test = 1'b0;
       while (1==1) begin
  			random_seed = $unsigned($random);
            random_delay = (random_seed << 7);
            #(random_delay);
            interrupt_test = 1'b1;
            #(139);
            interrupt_test = 1'b0;
		end
	end
	// MAKE SURE TO DELETE THIS WHEN WE SYNTH IT

	spart_control sc0(.clk(clk), .rst(rst), .rx_in(rxd), .chip_enable(CPU_en)
	, .r_w(iorw), .addr(4'b0), .data(data), .tx_out(txd),
			.ack(ack), .drdy(drdy), .tx_rdy(tx_rdy));	

	assign ce = buffering;
	// we are going to make a specific rst because the dcm is super janky
	assign next_gated_rst = !LOCKED_OUT | rst;


	// I am dying a bit on the inside

	
       proc proc0 (/*AUTOARG*/
       // Outputs
       .din_mmu(data), .addr(addr), .CPU_rw(iorw), .CPU_en(CPU_en),
       // Inputs
       .clk(clk), .rst(rst), .dout_mmu(dout_mmu), .mmu_stall(mmu_stall), 
	       .interrupt(interrupt_test)
       );

		MMU mmu0(/*system*/ .clk(clk), .rst(rst),
	/*fpga buttons*/ /*in*/ .fpga_data(fpga_data), .fpga_drdy(fpga_drdy), 
					.fpga_int(fpga_int),
		/*out*/ .fpga_ce(fpga_ce), .fpga_addr(fpga_addr),
	/*vga*/ /*in*/ .vga_addr(vga_addr), .vga_clk(vga_clk), 
			/*out*/ .vga_data(vga_data),
	/*compact flash*/ /*in*/  .cf_data_in(cf_data_in), .cf_addr_in(cf_addr_in), 					.cpu_en_cf(cpu_en_cf), .cf_rd_en(cf_rd_en), 
					.cf_clk(cf_clk), .cf_wr_en(cf_wr_en), .cf_int(cf_int),
		/*out*/ .cf_data_out(cf_data_out), .cf_addr_out(cf_addr_out), 
					.cf_rd_empty(cf_rd_empty), .cf_wr_full(cf_wr_full),
	/* filter*/ /*in*/ .filt_data_buf(filt_data_buf), .filt_drdy(filt_drdy), 
					.filt_rd_en(filt_rd_en), .filt_clk(filt_clk), 
		/*out*/.filt_data_coef(filt_data_coef), .filt_addr_coef(filt_addr_coef), 
				.filt_addr_buf(filt_addr_buf),
		.filt_rd_empty(filt_rd_empty), .filt_ce(filt_ce), .filt_rw(filt_rw),
	/*codec*/ /*out*/ .codec_data(codec_data), .codec_addr(codec_addr), 
					.codec_ce(codec_ce), 
	/*spart*/ /*in*/ .spart_ack(spart_ack), .spart_drdy(spart_drdy), 
			.spart_tx(spart_tx), 
		/*inout*/ .spart_data(spart_data),
		/*out*/   .spart_addr(spart_addr), .spart_ce(spart_ce), 
				.spart_rw(spart_rw),
	/*cpu*/ /*in*/ .din_mmu(data), .cpu_en(CPU_en), .cpu_rw(iorw), 
			.cpu_addr(addr),
		/*out*/ .dout_mmu(dout_mmu), .mmu_stall(mmu_stall), 
				.interrupt(interrupt));
 
       always @(posedge clk, posedge rst) begin
	       if (rst) begin
		       gated_rst <= 1'b1;
	       end else begin
		       gated_rst <= next_gated_rst;
	       end
       end

       always @(*) begin
	       if (LOCKED_OUT) begin
		       if (next_gated_rst) begin
			       real_rst = clk_fast;
		       end else begin
			       real_rst = 1'b0;
		       end
	       end else begin
		       real_rst = 1'b1;
	       end
       end

	always @(posedge clk, posedge rst) begin
		if (rst) begin
			buffering <= BUF;
		end else begin
			buffering <= next_buffering;
		end
	end

	always @(*) begin
		if (buffering == BUF) begin
			if (ack) begin
				next_buffering = IDLE;
			end else begin
				next_buffering = BUF;
			end
		end else begin
			next_buffering = IDLE;
		end
	end

					 
endmodule
