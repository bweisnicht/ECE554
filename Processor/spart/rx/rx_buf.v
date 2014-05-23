`default_nettype none

module rx_buf (input wire clk, rst, shift, rx_in_avg,
		output reg [7:0] rx_data);

	reg [7:0] next_rx_data;

	always @(posedge clk, posedge rst) begin
		if (rst) begin
			rx_data <= 8'hFF;
		end else begin
			rx_data <= next_rx_data;
		end
	end

	// combinational logic
	always @(*) begin
		if (shift) begin
			next_rx_data = {rx_in_avg, rx_data[7:1]};
		end else begin
			next_rx_data = rx_data;
		end
	end

endmodule
