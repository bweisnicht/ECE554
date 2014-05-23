`default_nettype none

module  fetch (clk,  rst, mem_stall, pc_in, flush, pc_add, instruction, interrupt
		, drain, flush_out, pc_out);
	
	input wire clk, rst, flush, mem_stall, interrupt;
	input wire [23:0] pc_in;
	output wire [23:0] pc_add, instruction, pc_out;
	output wire drain, flush_out;

	// if drain is asserted, then you will feed NOPS into the pipeline
		// until it clears out
	wire interrupt_switch, interrupt_switch_delay, reti, rst_delay,  mem_stall_delay, reti_delay;
	wire [23:0] pc_in_from_mux, pc_add_pre, pc_out_pre, instruction_pre, instruction_pre_pre;
    wire [23:0]  pc_interrupt, interrupt_result, flush_result,instruction_stored;
    wire [23:0] instruction_pre_flush, pc_stor_in, instr_addr, pc_interrupt_add;
	 // fetch fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
   
	// 0x000 is the location you go to for interrupt handling

   //      pc_in_from_mux
   //         |
   //     /-------\<- (reti or interrupt_switch)
   //    /__1___0__\
   //       ^   ^
   //       |   \-------------\
   //    ___|__ interrupt  ___|___
   //   /1___0_\<-switch  /_1___0_\<-flush
   //    ^   ^              ^   ^
   //    |   |              |   |
   //    0  pc_stor_out+1  pc_in pc_add_pre
   //
   // pc_stor_out+1 = pc_interrupt_add
   //
   // the pc_interrupt needs to be incremented because otherwise we will read
   // the pc_interrupt twice into the instruction
   
   assign pc_interrupt_add = pc_interrupt + 1'b1;
   assign interrupt_result = (interrupt_switch) ? 24'b0 : pc_interrupt;
   assign flush_result = (flush) ? pc_in : pc_add_pre;

   assign pc_in_from_mux = (reti | interrupt_switch) ? interrupt_result : flush_result;


   //      pc_stor_in
   //          |
   //       ___|___
   //      /_0___1_\<- flush
   //        |   | 
   //        |  pc_in
   //        |
   //      __|__
   //     /0___1\<-flush_out
   //      ^   ^
   //      |   |
   // pc_out   pc_out_pre
   //
   // if we have a flush, we are going to store the address the branch/jump
   // wants to jump to
   // otherwise, we are going to store the value of the pc in decode
   // think of a situation where you have a branch in decode when you get an 
   // interrupt, you would execute the instruction in fetch (perhaps mistakenly) 
   // if you let the pipeline just go as normal, you can execute a command when
   // you want to skip it over. As a result, we are going to store the decode
   // instruction so we avoid that whole can of worms
   // also, we want to store the pc if there is a branch in memory because
   // otherwise we're going to store the wrong pc_out

   assign pc_stor_in = (flush) ? pc_in : 
                       (flush_out) ? pc_out_pre : pc_out;

   interrupt_handler int0 (.clk(clk), .rst(rst), .interrupt(interrupt), 
	                   .opcode(instruction[23:19]), 
			   .pc_stor_in(pc_stor_in),
			   .drain(drain),
			   .reti(reti), .mem_stall(mem_stall),
			   .pc_stor_out(pc_interrupt),
			   .interrupt_switch(interrupt_switch));

   pc fetch0 (.pc_in(pc_in_from_mux), .pc_add(pc_add_pre), .pc_out(pc_out_pre), .stall(mem_stall), .clk(clk), .rst(rst));
   

	// new memory, must install it again with actual instructions
	instr_firmware instr_mem0(
	.clka(clk),
	.addra(instr_addr[9:0]),
	.douta(instruction_pre_flush));
   //    instr_addr
   //         |
   //      ___|___
   //     /_0___1_\<-reti
   //       ^   ^
   //       |   |
   //pc_out_pre  pc_in_from_mux
   //
   // in a situation where we are returning from reti, there might be a halt
   // as the next instruction (we don't want to execute that!!), but it will
   // take an extra cycle to get the stored interrupt pc back into the pc
   // and we cannot mask the halt depending on the reti with the flush opcode
   // mask because it causes a combinational loop
   assign instr_addr = (1'b0) ? pc_in_from_mux : pc_out_pre;

   // inject a nop in case we have a flush or a delayed interrupt_switch!
   assign instruction_pre_pre = ( flush_out| interrupt_switch_delay 
                                | interrupt_switch | reti_delay) ? 
          {5'b00001, instruction_pre_flush[18:0]} : instruction_pre_flush;
   
	// avoid issues when we are done resetting
   assign instruction_pre = //rst_delay ? {5'b1, instruction_pre_pre[18:0]} : 
						instruction_pre_pre;

	// a mux that will give you the stored instruction in the event of stall
    // also, in the event you want to switch to interrupt mode in the same cycle
    // , then we will not let the stored signal propagate, otherwise we could
    // have multiple writes
	assign instruction = (mem_stall_delay & !interrupt_switch) ? instruction_stored : instruction_pre;
   

   // FD LATCH FD LATCH FD LATCH FD LATCH FD LATCH FD LATCH FD LATCH FD LATCH FD LATCH
   

   // STALL IS ACTIVE LOW
   wire stall_fd_neg;
   assign stall_fd_neg = !(mem_stall & !flush);//  || (!(|instruction[23:19]) && mem_stall_instr && halt_det[2]) || (!hit_instr_mem & mem_stall_instr));
   //dff_en fd_latch_instruct[23:0] (.d(instruction_pre_2), .q(instruction), .clk(clk), .rst(rst), .en(stall_fd_neg));
   dff_en fd_latch_pc[23:0] (.d(pc_add_pre), .q(pc_add), .clk(clk), .rst(rst), .en(stall_fd_neg));
   dff_en fd_latch_pc2[23:0] (.d(pc_out_pre), .q(pc_out), .clk(clk), .rst(rst), .en(stall_fd_neg));
   dff_en fd_latch_flush (.d(flush), .q(flush_out), .clk(clk), .rst(rst), .en(stall_fd_neg));
   dff_en fd_latch_reti (.d(reti), .q(reti_delay), .clk(clk), .rst(rst), .en(stall_fd_neg));
	dff_en fd_latch_is (.d(interrupt_switch), .q(interrupt_switch_delay), .clk(clk), .rst(rst), .en(stall_fd_neg));
	// this will assure we start off on the right foot when reseting
   dff_en fd_latch_rst (.d(rst), .q(rst_delay), .clk(clk), .rst(1'b0), .en(stall_fd_neg));


	// when we have a stall, the instruction will be lost, so we need to store it
	// only until one clock cycle after the stall is done
   dff_en fd_latch_stall(.d(mem_stall), .q(mem_stall_delay), .clk(clk), .rst(rst), .en(1'b1)); 

   // store an instruction in the event of a stall
   dff_en fd_latch_instr [23:0](.d(instruction_pre), .q(instruction_stored), .clk(clk), .rst(rst), .en(!mem_stall_delay)); 
endmodule

