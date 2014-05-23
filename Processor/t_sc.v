`default_nettype none

module t_sc;

localparam SATURATION = 3'd5, CLK = 100;

reg clk, rst, ctr_rst;
reg [2:0] e_out, e_nextState;



wire [2:0] out;

sc_hier sc0 (.ctr_rst(ctr_rst), .out(out));

initial begin
   clk = 1'b1;
   forever clk = #(CLK/2) ~clk;
end


initial begin
   rst = 1'b1;
   ctr_rst = 1'b0;
   #(2*CLK+1);
   rst = 1'b0;
   
   
   // go to one
   #CLK;
   ctr_rst = 1'b1;
   #CLK;
   ctr_rst = 1'b0;
   #CLK;
   
   // go to two
   ctr_rst = 1'b1;
   #CLK;
   ctr_rst = 1'b0;
   #(2*CLK);
   
   // go to three
   ctr_rst = 1'b1;
   #(CLK);
   ctr_rst = 1'b0;
   #(3*CLK);
   
   // go to four
   ctr_rst = 1'b1;
   #(CLK);
   ctr_rst = 1'b0;
   #(4*CLK);
   
   // go to five
   ctr_rst = 1'b1;
   #(CLK);
   ctr_rst = 1'b0; 
   #(5*CLK);
   
   
   // go from 0 then stall forever
   ctr_rst = 1'b1;
   #(CLK);
   
   ctr_rst = 1'b0;
   
   #(10*CLK);
   $stop;
end
   





always @(*) begin
    
    case (e_out)
      SATURATION: begin
         if (~ctr_rst) begin
            e_nextState <= e_out;
         end else begin
            e_nextState <= 3'b0;
         end
      end
      default:  begin
          if (~ctr_rst) begin
            e_nextState <= e_out + 1'b1;
         end else begin
            e_nextState <= 3'b0;
         end
         end
     endcase
  end
  
always @(posedge clk) begin
      if (rst) begin
         e_out <= 3'b0;
      end else begin
         e_out <= e_nextState;
  
      end
end     
   
always @(out) begin
     #1;
     if ((e_out != out)) begin
        $display("%t: error", $time);
     end
end

endmodule