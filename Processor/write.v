`default_nettype none

module write (//input
	      pc_add, to_Reg, opcode, mem_stage_result, clk, rst,
	      //output
              halt, write_result);
	input wire clk, rst;
	input wire [4:0] opcode;
	input wire [23:0] pc_add, to_Reg, mem_stage_result;
	
	output wire halt;
	output wire [23:0] write_result;
	
	wire sc_err, sc2_err, halt_det_en;
	wire [2:0] halt_det;


   write_reg_control wrc(.immediate(to_Reg), 
                      .pc_add(pc_add), .opcode(opcode),
		      .mem_stage_result(mem_stage_result),
                       .write_data(write_result));
   
   assign halt_det_en = 1'b1; //!mem_stall_instr;

   sc_4_en halt_det0 ( .clk(clk), .rst(rst), .ctr_rst(1'b0), .out(halt_det), .err(sc_err), .en(halt_det_en));

 

   
   assign halt = (halt_det[2] & !(|opcode)) ;

endmodule
