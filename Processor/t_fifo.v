module t_fifo;

      localparam CLK = 100;

       reg [63:0] d_in;
       reg clk, reset, wr, rd;
       integer counter;

       wire [63: 0] d_out;
       wire full, empty, data_out_valid, err;


       fifo_hier QP2
           ( .data_in_valid(wr), .pop_fifo(rd), . data_in(d_in), 
            .fifo_full(full), .fifo_empty(empty), .data_out(d_out), .data_out_valid(data_out_valid));
            
       initial begin
        clk = 1;
        forever clk = #(100/2) ~clk;  
       end
       
       initial begin
         // reset all the values
         reset = 1'b1;
         d_in = 63'd234;
         rd = 1'b0;
         wr = 1'b0;
         #(2*CLK) reset = 1'b0;
         #(CLK/2);
         //test a read to see what happens
         rd = 1'b1;
         #(CLK);
         if (d_out != 64'b0)
            $display("%t: error reading empty fifo", $time);
         rd = 1'b0;
         
         // start writing and fill up the fifo
         #CLK wr = 1'b1;
         for (counter = 3'd1; counter < (3'd5); counter = counter + 1) begin
              d_in = counter*64'h2222_2222_2222_2222;
              #CLK;
         end
         // overfill the fifo to see what happens
         #(6*CLK)
         
         // read from the fifo
         wr = 1'b0;
         rd = 1'b1;
         d_in = 64'hab;
         
         // read and write with a queue that has room for one more
         #CLK wr = 1'b1;
         
         for (counter = 1; counter < 5; counter = counter + 1) begin
              d_in = counter*64'h1110_0000_0000_0000;
              #CLK;
         end
         
         // read and write with a queue that has room for two more
         wr = 1'b0;
         #CLK;
         wr = 1'b1;
         for (counter = 1; counter < 5; counter = counter + 1) begin
              d_in = counter*64'h230_0000_0000_0000;
              #CLK;
         end
         
         // read and write with a queue that has room for one more
         wr = 1'b0;
         #CLK;
         wr = 1'b1;
         for (counter = 600; counter < 605; counter = counter + 1) begin
              d_in = counter*64'h3333_3333_3333_3333;
              #CLK;
         end
         
         // quit writing
         wr = 1'b0;
         #(2*CLK);
         $stop;
       end
       
       initial begin
         $monitor ("%t: din: %h | full: %b| empty: %b", $time, d_in, full, empty);
       end
            
endmodule
