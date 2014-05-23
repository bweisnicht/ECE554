`default_nettype none

module tx_control( input wire [1:0] ioaddr, input wire iorw, iocs,
					input wire brg_en, clk, rst,
					output reg tbr, shift, load,
					output wire tx_go);
	
		localparam IDLE = 2'd0, BUFFERED = 2'd1, COUNT_SAMP = 2'd2, COUNT_BITS = 2'd3;	
		localparam SAMPLE_RATE = 17, NUM_BITS = 9;
		
		reg [1:0] state, nextstate;
		reg incr_samp, rst_samp, incr_bits, rst_bits;
		wire  counted_samp, counted_bits;
		
		// if this is true, then we will get out of idle state
		assign tx_go = !(|ioaddr) & !iorw & iocs;
		
		// counters
		counter_x #(.COUNT(SAMPLE_RATE)) cnt16(.clk(clk), .rst(rst), 
					.full(counted_samp), .incr(incr_samp), .cnt_rst(rst_samp));
		counter_x #(.COUNT(NUM_BITS+1)) cnt9(.clk(clk), .rst(rst), 
					.full(counted_bits), .incr(incr_bits), .cnt_rst(rst_bits));
	
		always @(posedge clk, posedge rst) begin
				if (rst) begin
					state <= IDLE;
				end else begin
					state <= nextstate;
				end
		end

		// next state logic
		always @(*) begin
			tbr = 1'b0;
			load = 1'b0;
			shift = 1'b0;
			incr_samp = 1'b0;
			rst_samp = 1'b0;
			incr_bits = 1'b0;
			rst_bits = 1'b0;
			case (state)
				IDLE: 
				begin
					tbr = 1'b1;
					rst_bits = 1'b1;
					if (tx_go) 
						nextstate = BUFFERED;
					else begin
						nextstate = IDLE;
					end
				end
				BUFFERED:
				begin
					if (brg_en) begin
						load = 1'b1;
						rst_samp = 1'b1;
						nextstate = COUNT_SAMP;
					end else begin
						nextstate = BUFFERED;
					end
				end
				COUNT_SAMP:
				begin
					if (brg_en) begin
						incr_samp = 1'b1;
						nextstate = COUNT_SAMP;
					end else begin
						nextstate = COUNT_SAMP;
					end
					if (counted_samp) begin
						nextstate = COUNT_BITS;
						shift = 1'b1;
						
					end	
				end
				COUNT_BITS:
				begin
					if (counted_bits) begin
						// if we shipped all the bits, then we can return 2 idle
						nextstate = IDLE;
						rst_bits = 1'b1;
					end else begin
						// otherwise go back into the 16 counter
						nextstate = COUNT_SAMP;
						rst_samp = 1'b1;
						incr_bits = 1'b1;
					end
				end
			endcase

		end

endmodule
