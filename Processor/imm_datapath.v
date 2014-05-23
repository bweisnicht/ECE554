`default_nettype none

module imm_datapath (
   input wire [18:0] imm,
   input wire jal_j, ori_andi, SLBI, gt_9bit_imm, lbi,
   output wire [23:0] to_ALU,
   output wire [23:0] to_Reg);
   
   wire mux_imm9_sel, mux_imm14_19_sel, load_imm_sel;
   wire [8:0] imm9;
   wire [11:0] imm12;
   wire [13:0] imm14;
   wire [18:0] imm19;
   wire [23:0] imm9_sext, imm9_zeros, imm12_sext, imm12_zeros, imm14_sext, imm19_sext, imm14_out;
   wire [23:0] imm9_out, imm14_19_out, load_imm_out;
   
 

   assign imm9 = imm[8:0];
   assign imm12 = imm[11:0];
   assign imm14 = imm[13:0];
   assign imm19 = imm;
   assign load_imm_sel = SLBI | lbi;
   
   assign imm9_sext = {{15{imm9[8]}}, imm9};
   assign imm9_zeros = {15'b0, imm9};
   assign imm12_sext = {{12{imm12[11]}}, imm12};
   assign imm12_zeros = {12'b0, imm12};
   assign imm14_sext = {{10{imm14[13]}}, imm14};
   assign imm19_sext = {{5{imm19[18]}}, imm19};
   
   assign mux_imm9_sel = ori_andi ;
   assign mux_imm14_19_sel = jal_j;

   assign load_imm_out = (SLBI) ? imm12_zeros : imm12_sext;
   
   mux2_1 mux_imm9[23:0] (.InA(imm9_sext), .InB(imm9_zeros), .S(mux_imm9_sel), .Out(imm9_out));
   
   mux2_1 mux_imm14 [23:0] (.InA(imm14_sext), .InB(load_imm_out), 
	                .S(load_imm_sel), .Out(imm14_out));
   
   mux2_1 mux_imm14_19[23:0] (.InA(imm14_out), .InB(imm19_sext), .S(mux_imm14_19_sel), .Out(imm14_19_out));
   
   mux2_1 mux_overall[23:0] (.InA(imm9_out), .InB(imm14_19_out), .S(gt_9bit_imm), .Out(to_ALU));
   
   assign to_Reg = imm14_19_out;

   
endmodule   
