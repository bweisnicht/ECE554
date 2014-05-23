
module interrupt_handler (//input
	                  clk, rst, interrupt, opcode, pc_stor_in, mem_stall,
		          //output
			  drain, pc_stor_out, interrupt_switch, reti);

		input wire clk, rst, interrupt, mem_stall;
		input wire [4:0] opcode;
		input wire [23:0] pc_stor_in;

		output reg drain, interrupt_switch;
        output wire reti;
		output reg [23:0] pc_stor_out;

	// for pc_stor_in, it will capture the cycle after the interrupt is
	// given, so pc_stor_in should be connected to pc
	localparam RETI = 5'b00010;
	localparam IDLE = 1'b0, HANDLING = 1'b1;

	reg  handling, next_handling, interrupt_delay;
	reg [23:0] next_store;

	assign reti = (opcode == RETI);

	//sequential logic
	always @(posedge clk, posedge rst) begin
		if (rst) begin
			handling <= IDLE;
			pc_stor_out <= 24'b0;
 			interrupt_delay <= 1'b0;
		end else begin
			handling <= next_handling;
			pc_stor_out <= next_store;
            interrupt_delay <= interrupt;
		end
	end

	// nextstate logic
	always @(*) begin
		interrupt_switch = 1'b0;
		drain = 1'b0;
		casex (handling)
		  IDLE:
		  begin
			  if (interrupt && !mem_stall) begin
				  next_handling = HANDLING;
			  	  interrupt_switch = 1'b1;
			  end else
				  next_handling = IDLE;
		  end
		  HANDLING:
          begin
             if ((opcode == 5'b00010)) begin
                 next_handling = IDLE;
            end /*else if ((opcode == 5'b00010) && interrupt) begin
                 next_handling = HANDLING;
            end */else begin
               next_handling = HANDLING;
             end
          end
		  default:
	        next_handling = IDLE;
		endcase
	end
	
	// pc store logic
	always @(*) begin
        // the only time we'll upload a new value is if we're not in interrupt
		// handling mode
		if ((handling == IDLE) && interrupt && !interrupt_delay)
			next_store = pc_stor_in;
		else 
			next_store = pc_stor_out;
	end

endmodule
