`default_nettype none
`timescale 1ns/ 1ps

module memory (//input
	       pc_add_in, pc_in, alu_result, mem_data, to_Reg_in, 
	       mem_write_en, reg_write_en_in, opcode_in, 
	       write_reg_sel_in, clk, rst, halt, dout_mmu, mem_stall,
	       //output
	       pc_add_out, pc_in_delay, to_Reg_out, write_reg_sel_out,opcode_out
	       ,reg_write_en_out,  mem_stage_result, mem_stage_result_wr, 
	       addr, mem_data_out,
		din_mmu, CPU_rw, CPU_en);

	input wire clk, rst, mem_write_en, reg_write_en_in, halt, mem_stall;
	
	input wire [4:0] opcode_in, write_reg_sel_in;
	input wire [23:0] pc_add_in, pc_in, alu_result, mem_data, to_Reg_in;
	input wire [23:0] dout_mmu;
	
	output wire reg_write_en_out, CPU_rw, CPU_en;
	output wire [4:0] opcode_out, write_reg_sel_out;
	output wire [23:0] pc_add_out, pc_in_delay, to_Reg_out,mem_stage_result;
	output wire [23:0] addr, din_mmu, mem_stage_result_wr, mem_data_out;

	wire mem_write_en_xm_halted, is_load, is_load_no_halt, is_load_no_stall;
	wire is_load_no_stall_out, addr_match, addr_match_delay;
   	wire [23:0]  mem_read_data, alu_result_wr,  store_buf_delay;
    wire [23:0] buf_sel_out;
	reg [23:0] store_buf, store_buf_next, store_addr, store_addr_next;

        assign mem_write_en_xm_halted = mem_write_en & !halt ;
        assign is_load = opcode_in[4] & !opcode_in[3] & !opcode_in[2] 
				& !opcode_in[1] & opcode_in[0];
   
        assign is_load_no_halt = is_load & !halt ;
        assign is_load_no_stall = is_load & !mem_stall;
   
  /* assign mem_stall = 1'b0;
  memory2c data_mem(.data_out(mem_read_data), .data_in(mem_addr_xm), .addr(alu_result_xm), .enable(1'b1), 
                     .wr(mem_write_en_xm), .createdump(halt), .clk(clk), .rst(rst));*/
   
   wire LD_xm;

   assign LD_xm = opcode_in[4] & (!opcode_in[3]) & (!opcode_in[2]) & 
			(!opcode_in[1])& opcode_in[0];
 


 
  
   // alias the correct signals	
	assign din_mmu = mem_data;

	assign addr = alu_result;
	// we assume writing when !is_load_no_halt because write is active low
	assign CPU_rw = is_load_no_halt;
	assign CPU_en = is_load_no_halt | mem_write_en_xm_halted;

	assign mem_read_data = dout_mmu;

	// if the incoming address equals the stored address in the store flops
	// which contain data that is most likely being recently written to memory
	assign addr_match = (addr == store_addr);
	
	// xm latch
	// |---|             mw latch
	// |   |alu_result   |---|alu_result_wr       [load_select_mux]
	// |   |------------>|   |------------------->|\
	// |---|	     |   |store_flop          | |
        //        |---|    /-|   |----\  [buf_sel_mux]| |
        //        |   |---/  |---|     \-------->|\   | |mem_data_out
	//	  |---|		                 | |->| |------>
        // store_data_flop   |---|mem_read_data  | |  | |
	//                   |mem|-------------->|/   |/
	//                   |---|


    // [buf_sel_mux]
    assign buf_sel_out = (addr_match_delay) ? store_buf_delay : mem_read_data;

    // [load_select_mux]
    assign mem_data_out = (is_load_no_stall_out) ? buf_sel_out : alu_result_wr;



	
	// alias this in such a fashion that we don't have to rename signals
 	assign mem_stage_result = (is_load_no_halt) ? dout_mmu : alu_result;
	assign mem_stage_result_wr = alu_result_wr;

   // MW LATCH MW LATCH MW LATCH MW LATCH MW LATCH MW LATCH MW LATCH MW LATCH
   
   wire[23:0] pc_add_mw, pc_in_mw, to_Reg_mw;
   wire [4:0] opcode_mw, opcode_into_mw;
   wire reg_write_into_mw;

   // feed NOPs into mw for the case of a mem stall
   assign opcode_into_mw[0] = {mem_stall | opcode_in[0]};
   assign opcode_into_mw[4:1] = {4{(!mem_stall)}} & opcode_in[4:1];

  // disable reg_write if we're stalling
   assign reg_write_into_mw = reg_write_en_in && !mem_stall;

   wire  stall_mw_neg, stall_opcode_mw_neg;
   assign stall_mw_neg = !(mem_stall);
   // if we have a load, all bets are off, we will pass it through anyway
   assign stall_opcode_mw_neg = (opcode_in == 5'b10001) || stall_mw_neg ;//!mem_stall_instr;

	// we are plugging the alu result from execute into the mw latch so we
	// have a delay, if we do a load, then it needs to bypass the latch
	// because it takes a clock cycle to get data out
   dff_en mw_latch_mem_stage_result [23:0] (.d(alu_result), .q(alu_result_wr), .clk(clk), .rst(rst), .en(stall_opcode_mw_neg));

   dff_en mw_latch_pc [23:0] (.d(pc_add_in), .q(pc_add_out), .clk(clk), .rst(rst), .en(stall_mw_neg));
   dff_en mw_latch_pc_in [23:0] (.d(pc_in), .q(pc_in_delay), .clk(clk), .rst(rst), .en(stall_mw_neg)); 
   dff_en mw_latch_to_Reg [23:0] (.d(to_Reg_in), .q(to_Reg_out), .clk(clk), .rst(rst), .en(stall_mw_neg)); 
   dff_en mw_latch_store_data [23:0] (.d(store_buf), .q(store_buf_delay), .clk(clk), .rst(rst), .en(stall_mw_neg)); 
   dff_en mw_latch_match   (.d(addr_match), .q(addr_match_delay), .clk(clk), .rst(rst), .en(stall_mw_neg)); 
    // don't freeze the opcode because that helps for our test output
   dff_en mw_latch_opcode[4:0] (.d(opcode_into_mw), .q(opcode_out), .clk(clk), .rst(rst), .en(stall_opcode_mw_neg));
   dff_en mw_latch_write_reg[4:0] (.d(write_reg_sel_in), .q(write_reg_sel_out), .clk(clk), .rst(rst), .en(stall_mw_neg));
   // don't freeze the write because we only want to write once
   dff_en mw_latch_reg_write (.d(reg_write_into_mw), .q(reg_write_en_out), .clk(clk), .rst(rst) , .en(stall_opcode_mw_neg));   
   dff_en mw_latch_is_load (.d(is_load_no_stall), .q(is_load_no_stall_out), 
		.clk(clk), .rst(rst) , .en(stall_opcode_mw_neg));   

   // STORE BUF FLOPS STORE BUF FLOPS STORE BUF FLOPS STORE BUF FLOPS STORE BUF FLOPS 

	always @(posedge clk, posedge rst) begin
		if (rst) begin
			store_buf <= 24'b0;
			store_addr <= 24'b0;
		end else begin
			store_buf <= store_buf_next;
			store_addr <= store_addr_next;
		end
	end

	always @(*) begin
		// if it is a store...
		if (opcode_in == 5'b10000 || opcode_in == 5'b10011) begin
			store_buf_next = mem_data;
			store_addr_next = addr;
		end else begin
			store_buf_next = store_buf;
			store_addr_next = store_addr;
		end
	end
   

endmodule
