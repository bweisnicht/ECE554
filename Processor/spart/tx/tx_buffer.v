`default_nettype none

module tx_buffer (input wire tx_go, clk, rst, tbr,
					 input wire [7:0] databus, output reg [7:0] buf_out);

	wire buffer_enable;
	reg [7:0] next_data;

	assign buffer_enable = tx_go & tbr;

	always @(posedge clk, posedge rst) begin
		if (rst) begin
			buf_out <= 8'bx;
		end else begin
			buf_out <= next_data;
		end
	end

	always @(*) begin
		if (buffer_enable) 
			next_data = databus;
		else
			next_data = buf_out;
	end

endmodule
