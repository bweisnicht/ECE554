`default_nettype none

module tx_shift_reg (input wire shift, load, clk, rst,
					 input wire [7:0] buf_in, output wire tx_out);

	reg [8:0] shift_reg, next_input;

	assign tx_out = shift_reg[0];

	//synchronous behavior
	always @(posedge clk, posedge rst) begin
		if (rst) begin
			shift_reg <= 9'b1_1111_1111;
		end else begin
			shift_reg <= next_input;
		end
	end

	// combinational behavior
	always @(*) begin
		if (load) begin
			// load with contents of buffer
			next_input = {buf_in, 1'b0};
		end else if (shift) begin
			//shift out most significant bit
			next_input = {1'b1, shift_reg[8:1]};
		end else begin
			next_input = shift_reg;
		end
	end

endmodule
