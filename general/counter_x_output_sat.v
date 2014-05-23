`default_nettype none

// a generic saturation counter
module counter_x_output_sat (clk, rst, count, incr, cnt_rst, full); 
    parameter COUNT = 40, INCR = 60;
    localparam STATE_SIZE = ceil_log2((COUNT)*INCR);
    input wire clk, rst, incr, cnt_rst;
  
    output wire [STATE_SIZE-1 :0] count;
    output wire full;

	
    localparam MAX_COUNT = (COUNT-1)*INCR;
	

	reg [STATE_SIZE-1 :0] state, nextstate;
	
	assign count = state;

	assign full = (state == MAX_COUNT);
	
	//synchronous behavior
	always @(posedge clk, posedge rst) begin
		if (rst) begin
			state <=  {(STATE_SIZE-1){1'b0}};
		end else begin
			state <= nextstate;
		end
	end

	//combinational logic
	always @(*) begin
		if (cnt_rst)  begin
			nextstate = {(STATE_SIZE-1){1'b0}};
		end else if ((state < (MAX_COUNT)) && incr) begin
			nextstate = state + INCR;
		end else if (!incr) begin
			nextstate = state;
		end else  begin
			nextstate = state;
		end
	end

    // ceiling of a log function in base 2, borrowed from the lecture notes,wk 7
    // copyright Michael Morrow
    function [63: 0] ceil_log2(input [63: 0] value);
    reg sticky; 
    reg [63:0] temp; 
    begin 
		sticky = 1'b0; 
		for (temp=64'd0; value>64'd1; temp=temp+1) begin 
			if((value[0]) & (|value[31:1])) 
				sticky = 1'b1; 
			value = value>>1; 
		end 
		ceil_log2 = temp + sticky; 
	end 
  endfunction
 
endmodule

