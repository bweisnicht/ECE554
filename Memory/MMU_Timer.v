`default_nettype none 
`timescale 1ns/ 10ps

module MMU_Timer(clk, rst, din_mmu, dout_mmu, CPU_en_timer, CPU_addr, 
				CPU_rw, int_TCNT);

		input wire clk, rst, CPU_en_timer, CPU_rw;

		input wire [1:0] CPU_addr;
		input wire [23:0] din_mmu;

		output wire int_TCNT;
		output wire [23:0] dout_mmu;
	
	reg [23:0] div_buf, count_out;
	wire [23:0] next_buf;
	
	// code taken from baud generator from mini-proj1
	always@(posedge clk, posedge rst)
	  if(rst)
	    div_buf <= 24'h0000;
	  else if (CPU_en_timer)
	    div_buf <= next_buf;    
	      
	    
	// Next Buffer value logic based on Processor IO address//
	assign next_buf = ((CPU_addr == 2'b00) & CPU_en_timer & !CPU_rw ) ? 
			  din_mmu : div_buf;
                    
	//Down Counter
	always@(posedge clk, posedge rst)
 	 if(rst)
  	  count_out <= 24'h0000;
 	 else if(int_TCNT)
    	  count_out <= div_buf;
  	else count_out <= count_out - 1;

	// if CPU_addr[0] == 1, then we will output current countdown
		// otherwise we will output countdown value
	assign dout_mmu = CPU_addr[0] ? count_out : div_buf;

	// if the timer has reached 0, then we will send an interrrupt to the
		// interrupt register
	assign int_TCNT = !(|(count_out)); 
	

	



endmodule
