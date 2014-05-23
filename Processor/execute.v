`default_nettype none

module execute( // input
				pc_add_in,  clk, rst, read1data, read2data_in, to_ALU, 
				to_Reg, bypass_mem, bypass_wr, opcode_in, write_reg_sel_in
				, alu_op, reg_write_en_in, mem_write_en_in, imm_sel, 
				mem_stage_result_mem, mem_stage_result_wr, mem_stall,
				// output
				pc_add_out, pc_in, alu_result, mem_data, pc_in_delay,
				mem_write_en_out, reg_write_en_out, flush, opcode_out, 
				write_reg_sel_out, to_Reg_out);
		input wire clk, rst, reg_write_en_in, mem_write_en_in, imm_sel;
		input wire mem_stall;
		input wire [1:0] bypass_mem, bypass_wr;
		input wire [3:0] alu_op;
		input wire [4:0] opcode_in, write_reg_sel_in;
		input wire [23:0] pc_add_in, read1data, read2data_in, to_ALU, to_Reg;
		input wire [23:0] mem_stage_result_mem, mem_stage_result_wr;

		output wire mem_write_en_out, reg_write_en_out, flush;
		output wire [4:0] opcode_out, write_reg_sel_out;
		output wire [23:0] pc_add_out, pc_in, alu_result, mem_data, pc_in_delay;
		output wire [23:0] to_Reg_out;

		wire ofl, zero, flush_without_stall, lbi_execute , stall_xm_neg;
		wire [23:0] alu_slot1_in, alu_slot2_in, slot1_xm_out, slot2_xm_out;
		wire [23:0] alu_result_pre1, alu_result_pre2;

		assign flush = flush_without_stall & !mem_stall;
		assign lbi_execute = opcode_in[4] & opcode_in[3] & !opcode_in[2] & !opcode_in[1] & !opcode_in[0];
		assign stall_xm_neg = !(mem_stall);

 // FORWARDING MUXES forward forward forward forward forward forward forward forward 
   //mem_result_xm, alu_result_xm , alu_result_mw
    mux2_1 slot1_xm_mux[23:0] (.InA(read1data), .InB(mem_stage_result_mem), .S(bypass_mem[0]), .Out(slot1_xm_out));
    mux2_1 slot1_mw_mux[23:0] (.InA(slot1_xm_out), .InB(mem_stage_result_wr), .S(bypass_wr[0]), .Out(alu_slot1_in));

    mux2_1 slot2_xm_mux[23:0] (.InA(read2data_in), .InB(mem_stage_result_mem), .S(bypass_mem[1]), .Out(slot2_xm_out));
    mux2_1 slot2_mw_mux[23:0] (.InA(slot2_xm_out), .InB(mem_stage_result_wr), .S(bypass_wr[1]), .Out(alu_slot2_in));

   // END FORWARDING MUXES end end end end end end end end end end end end end end end 

   alu_with_logic alu0 (.readdata1(alu_slot1_in), .readdata2(alu_slot2_in), .immediate(to_ALU), 
                  .imm_sel(imm_sel), .sign(1'b1), .alu_op(alu_op), .zero(zero), 
                  .alu_result(alu_result_pre1), .OFL(ofl));

   // have a mux funnel in LBI into alu result
   
   mux2_1 lbi_into_alu_result[23:0] (.InA(alu_result_pre1), .InB(to_Reg), .S(lbi_execute), .Out(alu_result_pre2));

   // affirm that we plug in slot 2 in for readdata1 to accomodate for data forwarding 
   pc_logic pcl(.pc_add(pc_add_in), .immediate(to_ALU), .alu_result(alu_result_pre2), .readdata1(alu_slot1_in)
             , .epc(16'b0), .opcode(opcode_in), .pc_in(pc_in), .flush(flush_without_stall)
			); 


   // XM LATCH XM LATCH XM LATCH XM LATCH XM LATCH XM LATCH XM LATCH XM LATCH XM LATCH


   
   // when we have a mem stall, we need to freeze every latch

  
   dff_en xm_latch_pc [23:0] (.d(pc_add_in), .q(pc_add_out), .clk(clk), .rst(rst), .en(stall_xm_neg));
   dff_en xm_latch_pc_in [23:0] (.d(pc_in), .q(pc_in_delay), .clk(clk), .rst(rst), .en(stall_xm_neg)); 
   dff_en xm_latch_alu_result [23:0] (.d(alu_result_pre2), .q(alu_result), .clk(clk), .rst(rst), .en(stall_xm_neg));   
   dff_en xm_latch_read2data [23:0] (.d(alu_slot2_in), .q(mem_data), .clk(clk), .rst(rst), .en(stall_xm_neg)); 
   dff_en xm_latch_to_Reg[23:0] (.d(to_Reg), .q(to_Reg_out), .clk(clk), .rst(rst), .en(stall_xm_neg));

   dff_en xm_latch_opcode[4:0] (.d(opcode_in), .q(opcode_out), .clk(clk), .rst(rst), .en(stall_xm_neg));
   dff_en xm_latch_write_reg[4:0] (.d(write_reg_sel_in), .q(write_reg_sel_out), .clk(clk), .rst(rst), .en(stall_xm_neg));

  dff_en xm_latch_write_enable (.d(mem_write_en_in), .q(mem_write_en_out), .clk(clk), .rst(rst) , .en(stall_xm_neg));
   dff_en xm_latch_reg_write (.d(reg_write_en_in), .q(reg_write_en_out), .clk(clk), .rst(rst) , .en(stall_xm_neg));
                   

endmodule
