`timescale 1ns / 1ps
module CF_CP(CF_MPD, CF_MPA, CF_MPBRDY, CF_MPIRQ, CF_MP_OE_Z, CF_MP_WE_Z, CF_MP_CE_Z, cmd, enable, clk, DR, nextAddr,
      datain, dataO, addr);
    input CF_MPBRDY, CF_MPIRQ;
    input[1:0] cmd;
    input enable, clk;
    input [5:0] addr;
    input [15:0] datain;
	
	output wire [6:0] CF_MPA;					
	output reg CF_MP_CE_Z, CF_MP_WE_Z, CF_MP_OE_Z;
	output wire [15:0] dataO;
	output reg DR, nextAddr;
	
	reg transmit;
	reg [15:0] CF_MPDin;
	reg [4:0] cycle;
	wire [15:0] CF_MPDBuff;
	
	inout [15:0] CF_MPD;
	
	assign CF_MPDBuff = datain;
	assign dataO = CF_MPDin;
	assign CF_MPA = {addr[5:0], 1'b0};
	

//***** CMD  LIST******
//  0 - write one
//  1 - read one
//  2 - write multiple
//  3 - read multiple
always @ (posedge clk) begin
    
   //write one
   if ( cmd == 0 && enable == 1) begin
	        CF_MP_OE_Z <= 1;
	        CF_MPDin <= 0;
	        nextAddr <= 0;
	        DR <= 0;
	        if ( cycle == 0) begin
	           CF_MP_CE_Z <= 0;
	           CF_MP_WE_Z <= 1;
	           transmit <= 0;
	           cycle <= 1;
	           end
	        else if ( cycle == 1) begin
	            CF_MP_CE_Z <= 0;
	            CF_MP_WE_Z <= 0;
	            transmit <= 1;
	            cycle <= 2;
	            end
	        else if ( cycle == 2 ) begin
	            CF_MP_CE_Z <= 1;
	            CF_MP_WE_Z <= 1;
	            transmit <= 0;
	            cycle <= 3;
	            nextAddr <= 1;
	            end
	        else begin
	            CF_MP_CE_Z <= 1;
	            CF_MP_WE_Z <= 1;
	            CF_MP_OE_Z <= 1;
	            transmit <= 0;
	            cycle <= 0;
	            end
	    end
	    
	   //read one
	   else if (cmd == 1 && enable == 1) begin
	        CF_MP_WE_Z <= 1;
	        nextAddr <= 0;
	        DR <= 0;
	        if ( cycle == 0) begin
	           CF_MPDin <= 0;
	           CF_MP_CE_Z <= 0;
	           CF_MP_OE_Z <= 1;
	           transmit <= 0;
	           cycle <= 1;
	           end
	        else if ( cycle == 1) begin
	            CF_MPDin <= 0;
	            CF_MP_CE_Z <= 0;
	            CF_MP_OE_Z <= 1;
	            transmit <= 0;
	            cycle <= 2;
	            end
	        else if ( cycle == 2 ) begin
	            CF_MPDin <= CF_MPD;
	            CF_MP_CE_Z <= 0;
	            CF_MP_OE_Z <= 0;
	            DR <= 1;
	            transmit <= 0;
	            cycle <= 3;
	            end
	        else if ( cycle == 3 ) begin
	            CF_MPDin <= CF_MPD;
	            CF_MP_CE_Z <= 1;
	            CF_MP_OE_Z <= 1;
	            transmit <= 0;
	            DR <= 1;
	            cycle <= 4;
	            nextAddr <= 1;
					end
	        else begin
	            CF_MP_CE_Z <= 1;
	            CF_MP_OE_Z <= 1;
	            CF_MP_OE_Z <= 1;
	            CF_MPDin <= 0;
	            transmit <= 0;
	            cycle <= 0;
	            end
	        end
	       
	       //write multiple
      else if ( cmd == 2 && enable == 1) begin
	        CF_MP_OE_Z <= 1;
	        CF_MPDin <= 0;
	        nextAddr <= 0;
	        DR <= 0;
	        if ( cycle == 0) begin
	           CF_MP_CE_Z <= 0;
	           CF_MP_WE_Z <= 1;
	           transmit <= 0;
	           cycle <= 1;
	           end
	        else if ( cycle == 1) begin
	            CF_MP_CE_Z <= 0;
	            CF_MP_WE_Z <= 0;
	            transmit <= 1;
	            cycle <= 0;
	            nextAddr <= 1;
	            end
	       /* else if ( cycle == 2 ) begin
	            CF_MP_CE_Z <= 1;
	            CF_MP_WE_Z <= 1;
	            transmit <= 0;
	            cycle <= 0;
	            nextAddr <= 1;
	            end */
	        else begin
	            CF_MP_CE_Z <= 1;
	            CF_MP_WE_Z <= 1;
	            CF_MP_OE_Z <= 1;
	            transmit <= 0;
	            cycle <= 0;
	            end
	    end
	    
	    
	       //read multiple 
	     else if (cmd == 3 && enable == 1)  begin
	        CF_MP_WE_Z <= 1;
	        nextAddr <= 0;
	        DR <= 0;
	         if ( cycle == 0) begin
	           CF_MPDin <= 0;
	           CF_MP_CE_Z <= 0;
	           CF_MP_OE_Z <= 1;
	           transmit <= 0;
	           cycle <= 1;
	           end
	        else if ( cycle == 1) begin
	            CF_MPDin <= 0;
	            CF_MP_CE_Z <= 0;
	            CF_MP_OE_Z <= 1;
	            transmit <= 0;
	            cycle <= 2;
	            end
	        else if ( cycle == 2 ) begin
	            CF_MPDin <= CF_MPD;
	            CF_MP_CE_Z <= 0;
	            CF_MP_OE_Z <= 0;
	            DR <= 1;
	            transmit <= 0;
	            cycle <= 0;
	            nextAddr <= 1;
	            end
	        else if ( cycle == 3 ) begin
	            CF_MPDin <= CF_MPD;
	            CF_MP_CE_Z <= 0;
	            CF_MP_OE_Z <= 1;
	            transmit <= 0;
	            DR <= 1;
	            cycle <= 0;
	            nextAddr <= 1; 
					end
	        else begin
	            CF_MP_CE_Z <= 1;
	            CF_MP_OE_Z <= 1;
	            CF_MP_OE_Z <= 1;
	            CF_MPDin <= 0;
	            transmit <= 0;
	            cycle <= 0;
	           
	        end
	     end
	     else begin
	            CF_MP_WE_Z <= 1;
	            nextAddr <= 0;
	            DR <= 0;
	            CF_MP_CE_Z <= 1;
	            CF_MP_OE_Z <= 1;
	            CF_MP_OE_Z <= 1;
	            CF_MPDin <= 0;
	            transmit <= 0;
	            cycle <= 0;
	     end
	        
	  end
	   
	   
	  assign CF_MPD = (transmit)? CF_MPDBuff	: 16'bz;
	  
	   
endmodule