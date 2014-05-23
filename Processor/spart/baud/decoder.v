`default_nettype none

module decoder (input wire [15:0] count, output wire enable);

	assign enable = !(|(count));

	endmodule
