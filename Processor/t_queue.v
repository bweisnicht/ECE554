module t_queue;

      

       reg [63:0] d_in;
       reg clk, reset, wr, rd;
       reg [2: 0] counter;

       wire [63: 0] d_out;
       wire full, empty, data_out_valid, err;


       fifo QP2
           (.clk(clk), .rst(reset), .data_in_valid(wr), .pop_fifo(rd), . data_in(d_in), 
            .fifo_full(full), .fifo_empty(empty), .data_out(d_out), .data_out_valid(data_out_valid), .err(err));
            
       initial begin
        clk = 0;
        forever clk = #5 ~clk;  
       end
       
       initial begin
         reset = 1'b1;
         d_in = 63'd234;
         rd = 1'b0;
         wr = 1'b0;
         #10 reset = 1'b0;
         #10 wr = 1'b1;
         for (counter = 3'd1; counter < (3'd5); counter = counter + 1) begin
              d_in = counter;
              #10;
         end
         #180 wr = 1'b0;
         rd = 1'b1;
         d_in = 8'hab;
         #10 wr = 1'b1;
         
         #300;
         
         #10 rd= 1'b0; 
          wr = 1'b1;
          d_in = 8'h34;
         #10 wr = 1'b0;
          rd = 1'b1;
         #10 wr = 1'b1;
           rd = 1'b0;
           d_in = 8'h35;
         #10 wr = 1'b0;
             rd = 1'b1;
         #10 wr= 1'b1;
             rd = 1'b0;
         #150 wr= 1'b0;
         #10;
         #10 wr = 1'b1;
         #30;    
          wr = 1'b0;
          rd = 1'b1;
         #300;  
         $stop;
       end
       
       initial begin
         $monitor ("%t: din: %h | full: %b| empty: %b", $time, d_in, full, empty);
       end
            
endmodule
