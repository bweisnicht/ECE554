
`default_nettype none

module rx_control (input wire clk, rst, brg_en, shift_0, shift_15, iocs, iorw, rx_in,
		   input wire [1:0] ioaddr, output reg rda,
		   output reg shift_buf, buf_val);

    localparam S_DETECT = 3'd0, S_EVAL = 3'd1, S_INPUT = 3'd2, 
			      S_SHIFT = 3'd3, S_FULL = 3'd4;

    localparam COUNT_SAMP = 16, NUM_BITS = 8, SAMPLE_RATE = 16;

    localparam COUNT_BITS = ceil_log2(COUNT_SAMP);

    reg [2:0] state, nextstate;
    reg incr_0, dec_0, rst_0, incr_count, rst_count, incr_shift, rst_shift;
    wire [COUNT_BITS:0] count_0;
    wire full_count, count_gt_12, count_gt_8, full_shift, rx_go;


    assign rx_go = iocs & iorw & !(|ioaddr);
    assign count_gt_12 = (count_0 > 12);
    assign count_gt_8 = (count_0 > 8);

    always @(posedge clk, posedge rst) begin
	    if (rst) begin
		    state <= S_DETECT;
	    end else begin
		    state <= nextstate;
	    end

    end
	

	// combinational logic
    always @(*) begin
	    shift_buf = 1'b0;
	    incr_shift = 1'b0;
		rst_shift = 1'b0;
		buf_val = 1'b1;
		incr_0 = 1'b0;
		dec_0 = 1'b0;
		rst_0 = 1'b0;
		incr_count = 1'b0;
		rst_count = 1'b0;
		rda = 1'b0;
		nextstate = S_DETECT;
	    case (state) 
		S_DETECT: begin
		     if (brg_en & !rx_in) begin
			     incr_0 = 1'b1;
			     rst_count = 1'b1;
			     nextstate = S_EVAL;
		     end
		end
		S_EVAL: begin
		    nextstate= S_EVAL;
		    if (brg_en)  begin
			    if (!full_count)  begin
                               if (shift_0 & !shift_15)
				      incr_0 = 1'b1;
			       else if (!shift_0 & shift_15)
				      dec_0 = 1'b1;
			       incr_count = 1'b1;
			       nextstate = S_EVAL;
		             end else if (full_count) begin
				  rst_count = 1'b1;
				  //rst_0 = 1'b1;
				  if (count_gt_12) begin
					  nextstate = S_INPUT;
					  rst_shift = 1'b1; // reset the counter 
					  // of how many times we shifted the buffer
			          end
			          else
					  nextstate = S_DETECT;
		             end     
		    end
		end
		S_INPUT: begin
                     nextstate= S_INPUT;
		    if (brg_en)  begin
			    if (!full_count)  begin
                               if (shift_0 & !shift_15)
				      incr_0 = 1'b1;
			       else if (!shift_0 & shift_15)
				      dec_0 = 1'b1;
			       incr_count = 1'b1;
			       nextstate = S_INPUT;
		             end else if (full_count) begin
				  //rst_0 = 1'b1;
				  shift_buf = 1'b1;
				  nextstate = S_SHIFT;
				  buf_val = !count_gt_8;
		             end     
		    end
		end
		S_SHIFT: begin
		    if (!full_shift) begin
			    rst_count = 1'b1;
			    incr_shift = 1'b1;
			    nextstate = S_INPUT;
		    end else begin
			    nextstate = S_FULL;
		    end
		end
		S_FULL: begin
		      rda = 1'b1;
		      if (rx_go) begin
			      nextstate = S_DETECT;
			      rst_0 = 1'b1;
		      end else
			      nextstate = S_FULL;
		end
		default:
			nextstate = S_DETECT;
	endcase
    end    


    incr_dec_x #(.COUNT(COUNT_SAMP)) indc16 (.clk(clk), .rst(rst), .count(count_0),
	   	 .incr(incr_0), .dec(dec_0), .cnt_rst(rst_0));

    counter_x #(.COUNT(SAMPLE_RATE)) cnt16(.clk(clk), .rst(rst), 
		 .full(full_count), .incr(incr_count), .cnt_rst(rst_count));

    counter_x #(.COUNT(NUM_BITS)) cnt_shft(.clk(clk), .rst(rst), 
		 .full(full_shift), .incr(incr_shift), .cnt_rst(rst_shift));

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
