`default_nettype none
`timescale 1ns/ 100ps

module decode (pc_add_in, instruction, write_reg_sel_ex, write_reg_sel_mem, 
				reg_write_en_ex, reg_write_en_mem, flush, clk, rst, pc_add_out, read1data,
	
				read2data, to_ALU, to_Reg, opcode, alu_op, write_reg_sel, imm_sel, 
				mem_write_en, reg_write_en, bypass_mem, bypass_wr, write_data
				, mem_stall, drain, flush_fd);
		input wire reg_write_en_ex, reg_write_en_mem, flush, clk, rst, mem_stall;
		input wire flush_fd, drain;
		input wire [4:0] write_reg_sel_ex, write_reg_sel_mem;
		input wire [23:0] pc_add_in, instruction, write_data;
		
		output wire reg_write_en, mem_write_en, imm_sel;
		output wire [4:0] opcode, write_reg_sel;
		output wire [3:0] alu_op;
		output wire [1:0] bypass_mem, bypass_wr;
		output wire [23:0] pc_add_out, read1data, read2data, to_ALU, to_Reg;
	

	/*	assign reg_write_en = 1'b0;
		assign mem_write_en = 1'b0;
		assign imm_sel = 1'b0;
		assign opcode = 0;
		assign write_reg_sel = 0;
		assign alu_op = 0;
		assign  bypass_mem = 0;
		assign bypass_wr = 0;
		assign pc_add_out = 0;
		assign read1data = 0;
		assign read2data = 0;
		assign to_ALU = 0;
		assign to_Reg = 0;*/
		wire [23:0] to_ALU_pre, to_Reg_pre, read1data_pre, read2data_pre;
		wire [23:0] instruction_pre, read1data_stored, read2data_stored;
		wire [4:0] read_reg1, write_reg_sel_pre, opcode_pre;
		wire [3:0] alu_op_pre;
		wire [1:0] bypass_mem_pre, bypass_wr_pre;
		wire wc_mux_sel, reg_dest, jal_jalr, rf_err, jal_j, ori_andi, slbi, ret, lbi;
		wire gt_9bit_imm, reg_write_en_pre, mem_write_en_pre, imm_sel_pre, mem_stall_delay;

   
   wire [3:0] opcode_msb;
   wire opcode_lsb, feed_nops;

   assign feed_nops = flush_fd | drain;
   assign opcode_msb = ({4{(!feed_nops)}} & instruction[23:20]);
   assign opcode_lsb = (feed_nops | instruction[19]);
   assign instruction_pre = instruction;//{opcode_msb, opcode_lsb, instruction[18:0]};

    rf_bypass rf (.read1data(read1data_pre), .read2data(read2data_pre), .err(rf_err),
           		.clk(clk), .rst(rst), .read1regsel(read_reg1), 
           		.read2regsel(instruction_pre[13:9]), 
			.writeregsel(write_reg_sel_mem), .writedata(write_data), 
           		.write(reg_write_en_mem));

		
    assign read1data = (mem_stall_delay) ? read1data_stored : read1data_pre;
    assign read2data = (mem_stall_delay) ? read2data_stored : read2data_pre;
	 
                
    mux2_1 read_reg_mux[4:0] (.InA(instruction_pre[18:14]), .InB(5'd31), 
			.S(ret), .Out(read_reg1));

     imm_datapath imm_d (.imm(instruction_pre[18:0]), .jal_j(jal_j), .ori_andi(ori_andi), .SLBI(slbi)
                     , .gt_9bit_imm(gt_9bit_imm), .to_ALU(to_ALU_pre), .to_Reg(to_Reg_pre), .lbi(lbi));
   
      write_control wc(.rd(instruction_pre[8:4]), .rt(instruction_pre[13:9]), 
		.rs(instruction_pre[18:14]), 
                 .jal_jalr(jal_jalr), .reg_dest(reg_dest), .wc_mux_sel(wc_mux_sel)
					, .write_reg(write_reg_sel_pre));
   
   control_logic control (.reg_write(reg_write_en_pre), .reg_dest(reg_dest), .wc_mux_sel(wc_mux_sel), 
                       .write_enable(mem_write_en_pre), .jal_jalr(jal_jalr), .jal_j(jal_j),
                      .alu_op(alu_op_pre), .ori_andi(ori_andi), .gt_5bit_imm(gt_9bit_imm), 
                      .imm(imm_sel_pre), .instruction(instruction_pre),  .slbi(slbi), .ret(ret),
		       .write_reg_dx(write_reg_sel), .reg_write_dx(reg_write_en),
		      .write_reg_xm(write_reg_sel_ex), .reg_write_xm(reg_write_en_ex),
		      .opcode(opcode_pre), .read1sel(read_reg1), .clk(clk), .rst(rst), 
                      .bypass_slot1_xm(bypass_mem_pre[0]), .bypass_slot1_mw(bypass_wr_pre[0]), 
                      .bypass_slot2_xm(bypass_mem_pre[1]), .bypass_slot2_mw(bypass_wr_pre[1]),
	      	      .lbi(lbi), .flush(flush));
   // DX LATCH DX LATCH DX LATCH DX LATCH DX LATCH DX LATCH DX LATCH DX LATCH DX LATCH

    wire stall_dx_neg;
    // when we have a mem stall, we need to freeze everything (active low!)
    assign stall_dx_neg = !(mem_stall);


   dff_en dx_latch_pc [23:0] (.d(pc_add_in), .q(pc_add_out), .clk(clk), .rst(rst), .en(stall_dx_neg));
   // store a readdata in the event of a stall
   dff_en dx_latch_read1data [23:0] (.d(read1data_pre), .q(read1data_stored), .clk(clk), .rst(rst), .en(!mem_stall_delay));
   //store a read data in the even of a stall
  dff_en dx_latch_read2data [23:0] (.d(read2data_pre), .q(read2data_stored), .clk(clk), .rst(rst), .en(!mem_stall_delay));
  dff_en dx_latch_mem_stall (.d(mem_stall), .q(mem_stall_delay), .clk(clk), .rst(rst) , .en(1'b1));
   dff_en dx_latch_to_ALU[23:0] (.d(to_ALU_pre), .q(to_ALU), .clk(clk), .rst(rst), .en(stall_dx_neg));
   dff_en dx_latch_to_Reg[23:0] (.d(to_Reg_pre), .q(to_Reg), .clk(clk), .rst(rst), .en(stall_dx_neg));

   dff_en dx_latch_opcode[4:0] (.d(opcode_pre), .q(opcode), .clk(clk), .rst(rst), .en(stall_dx_neg));
   dff_en dx_latch_alu_op[3:0] (.d(alu_op_pre), .q(alu_op), .clk(clk), .rst(rst), .en(stall_dx_neg));
   dff_en dx_latch_write_reg[4:0] (.d(write_reg_sel_pre), .q(write_reg_sel), .clk(clk), .rst(rst), .en(stall_dx_neg));
   dff_en dx_latch_imm (.d(imm_sel_pre), .q(imm_sel), .clk(clk), .rst(rst) , .en(stall_dx_neg));
   dff_en dx_latch_mem_write_en (.d(mem_write_en_pre), .q(mem_write_en), .clk(clk), .rst(rst) , .en(stall_dx_neg));
   dff_en dx_latch_reg_write (.d(reg_write_en_pre), .q(reg_write_en), .clk(clk), .rst(rst) , .en(stall_dx_neg));

   dff_en dx_latch_bypass_xm[1:0] (.d(bypass_mem_pre), .q(bypass_mem), .clk(clk), .rst(rst) , .en(stall_dx_neg));
   dff_en dx_latch_bypass_mw[1:0] (.d(bypass_wr_pre), .q(bypass_wr), .clk(clk), .rst(rst) , .en(stall_dx_neg));

    
  
endmodule
