`timescale 1 ps/1 ps
module wti_logic(addr, mode, clk, rst, fifo_ready, mem_ready, iterations);
   parameter DEPTH=8;
   localparam DEPTH_BW=clog2(DEPTH);
   localparam WIDTH=2**DEPTH;
   localparam MAX_ADDR=WIDTH-1;
   input wire fifo_ready, mem_ready;
   output reg [DEPTH-1:0] addr;
   
   output reg [2:0] mode;
   localparam LOAD=0;
   localparam TFORM_L2R=1;
   localparam TFORM_R2L=2;
   localparam DONE=3;
   
   input wire clk, rst;

   reg output_stage;
   reg delay;
   output reg [DEPTH_BW-1:0] iterations;
   always @(posedge clk, posedge rst) begin
      mode <=mode;
      addr<=addr;
      iterations<=iterations;
         delay<=0;
      if (rst) begin
         mode <=LOAD;
         addr<=0;
         iterations<=0;
      end else begin
      case(mode)
         LOAD:
            begin
               if(mem_ready) begin
                  delay<=1;
                  if(delay==1) begin
                      addr<=addr+1;
                      if(addr==MAX_ADDR) begin
                         mode<=TFORM_L2R;
                         iterations<=0;
                      end
                  end
               end
            end
         TFORM_L2R, TFORM_R2L:
            begin
               addr<=addr+1;
               if(addr==3) begin
                  iterations <= iterations+1;
                  addr<=0;
                  if(iterations==DEPTH-1) begin
                     mode<=DONE;
                     output_stage<=0;
                  end else begin
                     if(mode==TFORM_L2R) mode<=TFORM_R2L;
                     else /*==TFORM_R2L*/mode<=TFORM_L2R;                
                  end
               end
            end
         DONE:
            begin
               if(fifo_ready) begin
                  addr<=addr+1;
                  if(addr==MAX_ADDR) mode<=LOAD;
               end
            end
         default: mode<=LOAD;
         endcase
      end 
   end

function integer clog2;
    input integer value;
    begin
        value = value - 1;
        for(clog2=0; value>0; clog2 = clog2 + 1)
            value = value >> 1;
    end
endfunction

endmodule
