`default_nettype none

module down_counter (input wire clk, rst, load,
		     input wire [15:0] div_buf,
		     output reg [15:0] count_out);
	     
	     reg [15:0] next_count;
	     always @(posedge clk, posedge rst) begin
		     if (rst == 1'b1) begin
			     count_out <= 16'b0;
		     end else begin
			     if (load == 1'b1) begin
				     count_out <= div_buf;
			     end else begin
				     count_out <= next_count;
			     end
		     end
	     end

	     // combinational logic
	     always @(*)  begin
		     next_count = count_out - 1'b1;
	     end

endmodule
