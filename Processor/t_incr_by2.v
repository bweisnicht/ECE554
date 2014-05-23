module t_incr_by2;

   wire [15:0] out;
   reg [15:0] in, e_out;
   integer count;
  incr_by2 incr2 (.in(in), .out(out));
  
  initial begin
     
     for (count = 0; count < 65532; count = count + 1)
     begin
       in = count;
       #5;
       e_out = count + 2'b10;
       #5;
     end
 end
 
 
always @(e_out) begin
   #1;
   if (e_out != out)
     $display ("%t: we have an error! %d + 2 = %d", $time, in, out);
 end
 
 endmodule