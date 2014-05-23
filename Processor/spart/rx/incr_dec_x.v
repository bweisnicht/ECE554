`default_nettype none

// a generic saturation counter
module incr_dec_x (clk, rst, count, incr, dec, cnt_rst); 
    parameter COUNT = 16;
    localparam STATE_SIZE = ceil_log2(COUNT);
    input wire clk, rst, incr, dec, cnt_rst;
  
    output wire [STATE_SIZE :0] count;

	

	

	reg [STATE_SIZE :0] state, nextstate;
	
	assign count = state;
	
	//synchronous behavior
	always @(posedge clk, posedge rst) begin
		if (rst) begin
			state <=  {(STATE_SIZE){1'b0}};
		end else begin
			state <= nextstate;
		end
	end

	//combinational logic
	always @(*) begin
		if (cnt_rst)  begin
			nextstate = {(STATE_SIZE){1'b0}};
		end else if ((state < (COUNT)) && incr) begin
			nextstate = state + 1'b1;
		end else if ((state > 0) && dec) begin
			nextstate = state - 1'b1;
		end else begin
			nextstate = state;
		end
	end

    // ceiling of a log function in base 2, borrowed from the lecture notes,wk 7
    // copyright Michael Morrow
    function [31: 0] ceil_log2(input [31: 0] value);
    reg sticky; 
    reg [31:0] temp; 
    begin 
		sticky = 1'b0; 
		for (temp=32'd0; value>32'd1; temp=temp+1) begin 
			if((value[0]) & (|value[31:1])) 
				sticky = 1'b1; 
			value = value>>1; 
		end 
		ceil_log2 = temp + sticky; 
	end 
  endfunction
 
endmodule

