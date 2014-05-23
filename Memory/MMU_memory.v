`default_nettype none 
`timescale 1ns/ 10ps

module MMU_memory (clk, rst, mem_wr, filt_wr_sel, CPU_addr, filt_addr, din_mmu,
	filt_in, dout_mmu);

	input wire clk, rst, mem_wr, filt_wr_sel;
	input wire [11:0] CPU_addr, filt_addr;
	input wire [23:0] filt_in, din_mmu;

	output wire [23:0] dout_mmu;

	wire [23:0] din, dout;
	reg [23:0] CPU_addr_stored, CPU_addr_stored_next;
	wire [12:0] rd_addr, wr_addr;

	assign din = filt_wr_sel ? filt_in : din_mmu;
	assign rd_addr = /*(!filt_wr_sel) ? filt_addr :*/ CPU_addr;
	assign wr_addr = filt_wr_sel ? filt_addr : CPU_addr;


	/* Filter MMU data space 
	*  0x000 data samples
	*     (example: 0x000 buf[0] (y_0[0],
		*       0x001 buf[1]  y_1[0],
		*       0x002 buf[2]  y_2[0],
		*       ...
		*       0x007 buf[7]  y_7[0],
		*       0x008 buf[0]  y_0[1],
		*       ...)
	*  0x3FF
	*
	*  0x400 reserved for a second buffer or a higher sampling rate
	*  0x7FF
	*
        *  0x800 reserved
	*  0xFF7   
	*
	*  0xFF8 coefficients
	*  0xFFF:w
	*
	*/
	
	/* Filter Register data space
	*  0b00000 data buffer space
	*  	(example: 0b00000 buf[0] (y_0[n],
		*         0b00001 buf[1]  y_1[n],
		*         ...
		*         0b00111 buf[7]  y_7[n])
		*  [WHERE n >= 0 and n <= 127]
	*  0b00111
	*  
	*  0b01000 reserved for additional buffers
	*  0b10111 
	*
	*  0b11000 coefficients for multiplication
	*  0b11111
	*/

	filter_memory mem0(
	.clka(clk),
	.dina(din),
	.addra(rd_addr),
	.wea(mem_wr),
	.clkb(clk),
	.addrb(wr_addr),
	.doutb(dout));

	/*// not sure about this, but we'll get back to it
	// however, this stores the CPU_addr in order to get
	// the right address to the filter
	always @(posedge clk, posedge rst) begin
		if (rst) begin
			CPU_addr_stored <= 24'bx;
		end else begin
			CPU_addr_stored <= CPU_addr_stored_next;
		end
	end

	always @(*) begin
		if (!filt_en) begin
			CPU_addr_stored_next <= CPU_addr;
		end else begin
			CPU_addr_stored_next <= CPU_addr_stored;
		end
	end*/

       endmodule
