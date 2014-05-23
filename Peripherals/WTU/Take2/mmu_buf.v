`timescale 1 ns/1 ps
module mmu_buf(clk,rst,in_ready,in_data,wr_en,in_addr,out_data,out_addr,out_ready);
   parameter BITWIDTH=24;
   parameter   DEPTH=3;
   parameter   WIDTH=2**DEPTH;

   input wire  clk,rst;
   output wire in_ready, out_ready;
   input wire  wr_en;
   input wire  [DEPTH-1:0] in_addr, out_addr;
   input wire  [BITWIDTH-1:0] in_data;
   output wire  [BITWIDTH-1:0] out_data;

   reg signed [BITWIDTH-1:0] memory [0:WIDTH-1];
   reg  [1:0] state;
   reg  [WIDTH-1:0] readLocations;
   reg  [WIDTH-1:0] writeLocations;
   wire [WIDTH-1:0] newWriteLocations;
   integer file, i;
   localparam IDLE=0;
   localparam LOAD=1;
   localparam READ=2;

   assign in_ready = (state==IDLE);
   assign out_ready= (state==READ);
   assign out_data = memory[out_addr];
   assign newWriteLocations = writeLocations | 8'd1<<in_addr;


   initial begin
        file = $fopen("filter.trace", "w");
        #3000000;
	$fclose(file);
	$stop;
   end
   always @(posedge clk, posedge rst) begin
      state<=state;
      readLocations<=readLocations;
      writeLocations<=writeLocations;
      if(rst) begin
         for(i=0;i<WIDTH;i=i+1)
            memory[i]<=0;
         state<=IDLE;
         readLocations<=0;
         writeLocations<=0;
      end else begin
         case(state)
            IDLE:
               begin
                  if(wr_en)begin
                     state<=LOAD;
                     memory[in_addr]<=in_data;
                     writeLocations<=8'd1<<in_addr;
                  end
               end
            LOAD:
               begin
                  memory[in_addr]<=in_data;
                  writeLocations<=newWriteLocations;
                  if(&newWriteLocations) begin
                     state<=READ;
		     for (i = 0; i < 8; i = i + 1) begin
			     $fwrite(file, "%d, ", memory[i]);
		     end
		     $fwrite(file,"\n");
                  end
               end
            READ:
               begin
                  readLocations <= readLocations | (8'd1<<out_addr);
                  if(&(readLocations | 8'd1<<out_addr)) begin
                     state<=IDLE;
                     readLocations<=0;
                  end
               end
            default:
               begin
                  state<=IDLE;
                  readLocations<=0;
                  writeLocations<=0;
               end
         endcase
      end
   end
endmodule

