`default_nettype none

module div_buf (input wire [7:0] databus, input wire [1:0] ioaddr,
	        input wire clk, rst, iocs,
                output reg [15:0] buffer);

	reg [15:0] next_buffer;

	always @(posedge clk, posedge rst) begin

		if (rst == 1'b1) begin
			buffer <= 16'b0;
		end else begin
			// if the processor is selecting this chip
			if (iocs) begin
			    buffer <= next_buffer;
			end else begin
				buffer <= buffer;
	        end
        end
    end

	// combination behavior
	always @(*) begin
		// default value
		next_buffer = buffer;
		// the only time we will be loading a value is if
		// the most significant bit of ioaddr is 1
		if (ioaddr[1] == 1'b1) begin
			if (ioaddr[0] == 1'b1) begin
				next_buffer = {databus,buffer[7:0]};
			end else begin
				next_buffer = {buffer[15:8], databus};
			end

		end else begin
		        next_buffer = buffer;
		end
	end

endmodule
