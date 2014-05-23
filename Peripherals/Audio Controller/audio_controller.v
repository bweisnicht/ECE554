`timescale 1ns/100ps
module audio_controller (clk, rst, bit_clk, cmd_addr, cmd_data, cmd_valid,
             left_data, left_valid,
             right_data, right_valid,
             sdata_out, sync, ready, left_data_reg);
			 
   
   input rst;
   input clk;
   input bit_clk;
   input [7:0] cmd_addr;
   input [15:0] cmd_data;
   input cmd_valid;
   input [19:0] left_data, right_data;
   input left_valid, right_valid;

   output reg ready;
   output reg sdata_out;
   output reg sync;
   output reg [19:0] left_data_reg;
   
   reg [19:0] cmd_addr_reg;
   reg [19:0] cmd_data_reg;
   reg cmd_valid_reg;
   reg [19:0] right_data_reg;
   //reg [19:0] left_data_reg;
   reg right_valid_reg;
   reg left_valid_reg;
   reg [7:0] bit_count;
	
	//bit_clk cycle counter
	always@(posedge bit_clk, posedge rst) begin
	    if(rst) 
	       bit_count <= 0;
	    else 
	       bit_count <= bit_count + 1;
	end
	
	//assert ready signal when new data can be latched
	always@(posedge bit_clk, posedge rst) begin
	    if(rst) 
	       ready <= 0;
	    else if (bit_count == 128) 
			ready <= 1'b1;
		 else if (bit_count == 2)
			ready <= 1'b0;
	end
	
	//sync signal asserted for 16 bit_clk cycles of slot 0
	always@(posedge bit_clk, posedge rst) begin
	    if(rst)
		   sync <= 0;
		 else if(bit_count == 255)
			sync <= 1;
		 else if(bit_count == 15)
			sync <= 0;
		 else 
			sync <= sync;
   end
	
	//command and data registers; new data latched at end of frame
	always@(posedge bit_clk, posedge rst) begin
	    if(rst) begin
			cmd_addr_reg <= 0;
		   cmd_data_reg <= 0;
		   cmd_valid_reg <= 0;
		   right_data_reg <= 0;
		   left_data_reg <= 0;
		   right_valid_reg <= 0;
		   left_valid_reg <= 0;
		 end else if (bit_count == 255) begin
			cmd_addr_reg <= {cmd_addr, 12'h000};
			cmd_data_reg <= {cmd_data, 4'h0};
			cmd_valid_reg <= cmd_valid;
			right_data_reg <= right_data; 
			left_data_reg <= left_data;
			right_valid_reg <= right_valid;
			left_valid_reg <= left_valid;
		 end
	end
			
	//serial data output logic
	always@(posedge bit_clk, posedge rst) begin
	   if(rst) begin
			sdata_out <= 0;
			
		end
		
		//slot 0
		else if((bit_count >= 0) && (bit_count <= 15)) begin
			case (bit_count[3:0])
				4'h0: sdata_out <= 1;
				4'h1: sdata_out <= cmd_valid_reg;
				4'h2: sdata_out <= cmd_valid_reg;
				4'h3: sdata_out <= left_valid_reg;
				4'h4: sdata_out <= right_valid_reg;
				default: sdata_out <= 0;
			endcase
		end
		
		//slot 1
		else if ((bit_count >= 16) && (bit_count <= 35)) begin
			if (cmd_valid_reg) 
				sdata_out <= cmd_addr_reg[35-bit_count];
			else
				sdata_out <= 0;
		end
		
		//slot 2
		else if ((bit_count >= 36) && (bit_count <= 55)) begin
			if (cmd_valid_reg) 
				sdata_out <= cmd_data_reg[55-bit_count];
			else
				sdata_out <= 0;
		end
		
		//slot 3
		else if ((bit_count >= 56) && (bit_count <= 75)) begin
			if (left_valid_reg) begin
				sdata_out <= left_data_reg[75-bit_count];
			end else begin
				sdata_out <= 0;
			end
        end
		
		//slot 4
		else if ((bit_count >= 76) && (bit_count <= 95))
            if (left_valid_reg) begin
				sdata_out <= right_data_reg[95-bit_count];
			end else begin
				sdata_out <= 0;
			end 
			
		//slot else
		else sdata_out <= 1'b0;
	end
endmodule
			
		
		
		
		
		
			
			
			
			