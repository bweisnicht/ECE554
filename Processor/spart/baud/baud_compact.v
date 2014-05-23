`default_nettype none
`timescale 1ns / 1ps

module baud (input wire [7:0] databus, input wire [1:0] ioaddr,
	           input wire clk, rst, iocs, output wire enable);
	     
	reg [15:0] div_buf, count_out;
	wire [15:0] next_buf;

// Divison Buffer Load//	
	always@(posedge clk, posedge rst)
	  if(rst)
	    div_buf <= 16'h0000;
	  else if (iocs)
	    div_buf <= next_buf;    
	      
	    
// Next Buffer value logic based on Processor IO address//
assign next_buf = (ioaddr == 2'b10) ? {div_buf[15:8],databus} :
                  (ioaddr == 2'b10) ? {databus,div_buf[7:0]} :
                  div_buf;
                    
//Down Counter
always@(posedge clk, posedge rst)
  if(rst)
    count_out <= 16'h0000;
  else if(enable)
    count_out <= div_buf;
  else count_out <= count_out - 1;
    
//Decoder Logic
assign enable = !(| count_out);

endmodule
