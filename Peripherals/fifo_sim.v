 module fifo_sim(clk,rst,read_fifo,data_out,fifo_full,fifo_empty);
     
 input clk;
 input rst;
 input read_fifo;
 
 output fifo_full;
 output fifo_empty;
 output [23:0] data_out;
 
 reg [19:0] pcm_data;
 reg [5:0] index;
 
 always @(posedge clk, posedge rst) begin
	   if (rst) begin
		   index <= 0;
	   end else if(read_fifo) begin
		   index <= index+1;
     end
   end
   
   // one cycle of 750Hz sinewave in 64 20-bit samples
   always @(*) begin
      if(rst) 
         pcm_data = 0;
      else begin
        case (index)
        6'h00: pcm_data = 20'h00000;
        6'h01: pcm_data = 20'h0C8BD;
        6'h02: pcm_data = 20'h18F8B;
        6'h03: pcm_data = 20'h25280;
        6'h04: pcm_data = 20'h30FBC;
        6'h05: pcm_data = 20'h3C56B;
        6'h06: pcm_data = 20'h471CE;
        6'h07: pcm_data = 20'h5133C;
        6'h08: pcm_data = 20'h5A827;
        6'h09: pcm_data = 20'h62F20;
        6'h0A: pcm_data = 20'h6A6D9;
        6'h0B: pcm_data = 20'h70E2C;
        6'h0C: pcm_data = 20'h7641A;
        6'h0D: pcm_data = 20'h7A7D0;
        6'h0E: pcm_data = 20'h7D8A5;
        6'h0F: pcm_data = 20'h7F623;
        6'h10: pcm_data = 20'h7FFFF;
        6'h11: pcm_data = 20'h7F623;
        6'h12: pcm_data = 20'h7D8A5;
        6'h13: pcm_data = 20'h7A7D0;
        6'h14: pcm_data = 20'h7641A;
        6'h15: pcm_data = 20'h70E2C;
        6'h16: pcm_data = 20'h6A6D9;
        6'h17: pcm_data = 20'h62F20;
        6'h18: pcm_data = 20'h5A827;
        6'h19: pcm_data = 20'h5133C;
        6'h1A: pcm_data = 20'h471CE;
        6'h1B: pcm_data = 20'h3C56B;
        6'h1C: pcm_data = 20'h30FBC;
        6'h1D: pcm_data = 20'h25280;
        6'h1E: pcm_data = 20'h18F8B;
        6'h1F: pcm_data = 20'h0C8BD;
        6'h20: pcm_data = 20'h00000;
        6'h21: pcm_data = 20'hF3743;
        6'h22: pcm_data = 20'hE7075;
        6'h23: pcm_data = 20'hDAD80;
        6'h24: pcm_data = 20'hCF044;
        6'h25: pcm_data = 20'hC3A95;
        6'h26: pcm_data = 20'hB8E32;
        6'h27: pcm_data = 20'hAECC4;
        6'h28: pcm_data = 20'hA57D9;
        6'h29: pcm_data = 20'h9D0E0;
        6'h2A: pcm_data = 20'h95927;
        6'h2B: pcm_data = 20'h8F1D4;
        6'h2C: pcm_data = 20'h89BE6;
        6'h2D: pcm_data = 20'h85830;
        6'h2E: pcm_data = 20'h8275B;
        6'h2F: pcm_data = 20'h809DD;
        6'h30: pcm_data = 20'h80000;
        6'h31: pcm_data = 20'h809DD;
        6'h32: pcm_data = 20'h8275B;
        6'h33: pcm_data = 20'h85830;
        6'h34: pcm_data = 20'h89BE6;
        6'h35: pcm_data = 20'h8F1D4;
        6'h36: pcm_data = 20'h95927;
        6'h37: pcm_data = 20'h9D0E0;
        6'h38: pcm_data = 20'hA57D9;
        6'h39: pcm_data = 20'hAECC4;
        6'h3A: pcm_data = 20'hB8E32;
        6'h3B: pcm_data = 20'hC3A95;
        6'h3C: pcm_data = 20'hCF044;
        6'h3D: pcm_data = 20'hDAD80;
        6'h3E: pcm_data = 20'hE7075;
        6'h3F: pcm_data = 20'hF3743;
		  default: pcm_data = 0;
      endcase
   end
end
      
assign data_out = {pcm_data, 4'b0000};
assign fifo_full = 1'b0;
assign fifo_empty = 1'b0;
      
endmodule