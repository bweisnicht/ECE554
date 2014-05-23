module top_level(clk,rst,eq0,eq1,eq2,eq3,pb0,pb1,pb2,pb3,pb4,test0);
   
   input eq0,eq1,eq2,eq3,pb0,pb1,pb2,pb3,pb4;
   input clk;
   input rst;
   output test0;
   
   wire [23:0] curr_status;
   
   buttons b0(clk, rst, pb0, pb1, pb2, pb3, pb4, eq0, eq1, eq2, eq3, 
        fpga_ce, fpga_addr, fpga_data, fpga_drdy, fpga_int, curr_status);
        
endmodule
             
   
   
   
   
   


