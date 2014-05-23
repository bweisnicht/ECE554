module t_Filter_AudioController();
   reg clk,rst,bit_clk,sw;
   wire audio_reset,sdata_out,sync;
   wire [19:0] left_data;
   Filter_AudioController UUT (
                   .clk(clk),
                   .rst(rst),
                   .bit_clk(bit_clk),
                   .sw(sw),
                   .audio_reset(audio_reset),
                   .sdata_out(sdata_out),
                   .sync(sync),
                   .left_data(left_data)
                  );
   initial begin
      sw=1;
      clk=0;
      rst=1;
      bit_clk=0;
      #5
      rst=0;
      #1000000
      $stop;
   end
   always #1 clk<=~clk;

   reg [1:0] counter;
   always @(posedge clk) begin
      if(rst) begin
         bit_clk<=0;
         counter<=0;
      end else begin
         counter<=counter-1;
         if(counter==0) begin
            bit_clk<=~bit_clk;
         end
      end
   end

endmodule
