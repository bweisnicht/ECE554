`default_nettype none 
`timescale 1ns/ 1ps

module MMU(/*system*/ clk, rst,
        /*fpga buttons*/ /*in*/ fpga_data, fpga_drdy, fpga_int,
                /*out*/ fpga_ce, fpga_addr,
        /*vga*/ /*in*/ vga_addr, vga_clk, /*out*/ vga_data,
        /*compact flash*/ /*in*/  cf_data_in, cf_addr_in, cf_rd_en,
                                  cf_clk, cf_wr_en,
                /*out*/ cf_data_out, cf_addr_out, cf_rd_empty, cf_wr_full,
        /* filter*/ /*in*/ filt_data_buf, filt_drdy, filt_rd_en, filt_clk, 
                /*out*/ filt_data_coef, filt_addr_coef, filt_addr_buf,
                filt_rd_empty, filt_ce, filt_rw,
        /*codec*/ /*out*/ codec_data, codec_addr, codec_ce, 
        /*spart*/ /*in*/ spart_ack, spart_drdy, spart_tx, 
                /*inout*/ spart_data,
                /*out*/   spart_addr, spart_ce, spart_rw,
        /*cpu*/ /*in*/ din_mmu, cpu_en, cpu_rw, cpu_addr,
                /*out*/ dout_mmu, mmu_stall, interrupt, interrupt_filt, interrupt_fpga);

/* interface definitions~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
        /*system*/
        input wire clk, rst;

        /*fpga buttons*/
        input wire [23:0] fpga_data;
        input wire fpga_drdy, fpga_int;
        
        output wire [1:0] fpga_addr;
        output wire fpga_ce;

        /*vga*/
        input wire [10:0] vga_addr;
        input wire vga_clk;

        output wire [23:0] vga_data;

        /*compact flash*/
        input wire [23:0] cf_data_in;
        input wire [10:0] cf_addr_in;
        input wire cf_rd_en, cf_clk, cf_wr_en;

        output wire [23:0] cf_data_out;
        output wire [10:0] cf_addr_out;
        output wire cf_rd_empty, cf_wr_full;

        /* filter*/
        input wire [23:0] filt_data_buf;
        input wire filt_drdy, filt_rd_en, filt_clk;

        output wire [23:0] filt_data_coef;
        output wire [2:0] filt_addr_coef, filt_addr_buf;
        output wire filt_rd_empty, filt_ce, filt_rw;

        /* codec*/
        output wire [23:0] codec_data;
        output wire [3:0] codec_addr;
        output wire codec_ce;

        /* spart*/
        input wire spart_ack, spart_drdy, spart_tx;

        output wire [23:0] spart_data;

        output wire [1:0] spart_addr;
        output wire spart_ce, spart_rw;

        /* cpu*/
        input wire [23:0] din_mmu, cpu_addr;
        input wire cpu_en, cpu_rw;

        output wire [23:0] dout_mmu;
        output wire mmu_stall, interrupt;
		  
		  output wire interrupt_fpga, interrupt_filt;
/* interface definitions~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/

        /* enable signals from the decoder*/
        wire cpu_mem_en, cpu_filt_en, cpu_cf_en, cpu_vga_en, cpu_codec_en;
        wire cpu_timer_en, cpu_fpga_en, cpu_spart_en, cpu_interrupt_en;
        reg cpu_mem_en_del, cpu_filt_en_del, cpu_cf_en_del, cpu_vga_en_del;
        reg cpu_codec_en_del, cpu_timer_en_del, cpu_fpga_en_del, cpu_spart_en_del;
    reg cpu_interrupt_en_del;

        /* interrupt registers*/
        reg [23:0] interrupt_reg, interrupt_reg_next;
        wire interrupt_now;

        /*"virtual" addresses local to each MMU*/
        wire [1:0] timer_addr, spart_addr_virt;
    wire [12:0] filt_virt_addr;
        wire [3:0] codec_virt_addr;
        wire [10:0] cf_addr, vga_addr_virt;

        /* dout's*/
        wire [23:0] fpga_dout, vga_dout, cf_dout, filt_dout;
        wire [23:0] timer_dout, mem_dout, codec_dout_next;
	reg [23:0] codec_dout;

        /* address wires*/
        wire [13:0] mem_addr;

        /*mem stall*/
        wire fpga_stall, cf_stall, filt_stall;

        /*interrupt wires into interrupt*/
        wire  filt_int, timer_int, cf_int;

        /*interrupt wires from interrupt*/
        wire cf_int_in, filt_int_in, fpga_int_in, filt_int_reg_in;

        /* data memory wires*/
        wire cpu_mem_wr;

        /*spart wires*/
        /* data from spart*/
        wire [23:0] dout_spart;
        
        wire spart_stall;
        
   
    assign cpu_mem_wr = cpu_mem_en & !cpu_rw;
        data_memory dm0(
                .clka(clk),
                .dina(din_mmu),
                .addra(mem_addr),
                .wea(cpu_mem_wr),
                //.ssra(rst),
                .douta(mem_dout));
        
        
        MMU_Decoder dec0(// input
                .addr(cpu_addr), .CPU_en(cpu_en),
                   // output
                .mem_addr(mem_addr), .CPU_mem_en(cpu_mem_en), 
                .filt_addr(filt_virt_addr), .CPU_filt_en(cpu_filt_en),
                .cf_addr(cf_addr), .CPU_cf_en(cpu_cf_en), .vga_addr(vga_addr_virt), 
                .CPU_vga_en(cpu_vga_en), .codec_addr(codec_virt_addr), 
                .CPU_codec_en(cpu_codec_en), .timer_addr(timer_addr), 
                .CPU_timer_en(cpu_timer_en), .fpga_addr(fpga_addr), 
                .CPU_fpga_en(cpu_fpga_en), .spart_addr(spart_addr_virt), 
                .CPU_spart_en(cpu_spart_en), 
                .CPU_interrupt_en(cpu_interrupt_en));

        MMU_Buttons but0(.clk(clk), .rst(rst), .fpga_drdy(fpga_drdy), 
                .data_fpga(fpga_data), .dout_mmu(fpga_dout),  
                .cpu_stall(fpga_stall), .cpu_en_fpga(cpu_fpga_en), 
                .fpga_ce(fpga_ce));

        MMU_VGA vga0 (.clk(clk), .rst(rst), .vga_clk(vga_clk), 
                .din_mmu(din_mmu), .dout_mmu(vga_data), 
                .CPU_en_VGA(cpu_vga_en), .CPU_addr(vga_addr_virt), 
                .VGA_addr(vga_addr));

        MMU_CF cf0(.clk(clk), .rst(rst), .CPU_en_CF(cpu_cf_en), 
                .CPU_addr(cf_addr), .din_mmu(din_mmu), .dout_mmu(cf_dout), 
                .cf_addr_in(cf_addr_in), .cf_addr_out(cf_addr_out), 
                .cf_data_in(cf_data_in), .cf_data_out(cf_data_out), 
                .fifo_rd_en(cf_rd_en), .fifo_rd_empty(cf_rd_empty), 
                .CF_clk(cf_clk), .fifo_wr_en(cf_wr_en), 
                .fifo_wr_full(cf_wr_full), .CF_int(cf_int),
                .CPU_stall(cf_stall), .CF_int_in(cf_int_in), 
                .CPU_rw(cpu_rw));

        MMU_Filt filt0(.clk(clk), .rst(rst), .CPU_en_filt(cpu_filt_en), 
                .CPU_addr(filt_virt_addr), .din_mmu(din_mmu), .dout_mmu(filt_dout),
                .filt_ce(filt_ce), .filt_rw(filt_rw), 
                .filt_addr_buf(filt_addr_buf), .filt_addr_coef(filt_addr_coef), 
                .filt_drdy(filt_drdy),
                .fifo_rd_en(filt_rd_en), .fifo_rd_empty(filt_rd_empty), 
                .filt_clk(filt_clk), .filt_data_buf(filt_data_buf),
                .filt_int(filt_int), .CPU_stall(filt_stall), 
                .filt_int_in(filt_int_in), .CPU_rw(cpu_rw),
                .filt_data_coef(filt_data_coef));

        MMU_Codec codec0(.clk(clk), .rst(rst), .din_mmu(din_mmu), 
                .dout_mmu(codec_dout_next), .CPU_en_codec(cpu_codec_en), 
                .CPU_addr(codec_virt_addr), .CPU_rw(cpu_rw), .codec_ce(codec_ce), 
                .codec_addr(codec_addr), .codec_data(codec_data));

        MMU_Timer timer0(.clk(clk), .rst(rst), .din_mmu(din_mmu), 
                .dout_mmu(timer_dout), .CPU_en_timer(cpu_timer_en), 
                .CPU_addr(cpu_addr), .CPU_rw(cpu_rw), 
                .int_TCNT(timer_int));

        MMU_Spart spart0(.clk(clk), .rst(rst), .din_mmu(din_mmu), 
                .dout_mmu(dout_spart), .CPU_addr(spart_addr_virt), 
                .spart_ce(spart_ce), .spart_rw(spart_rw), .CPU_rw(cpu_rw)
                , .spart_addr(spart_addr), .spart_ack(spart_ack), 
                .spart_drdy(spart_drdy), .spart_tx(spart_tx), .spart_cpu_en(cpu_spart_en), 
                .mem_stall(spart_stall) , .spart_data(spart_data)
                  );

        /*interrupt HDL */
        assign interrupt = |interrupt_reg;
        assign interrupt_now = |interrupt_reg;
        always @(posedge clk, posedge rst) begin
                if (rst) begin
                        interrupt_reg <= 24'b0;
                end else begin
                        interrupt_reg <= interrupt_reg_next;
                end
        end

        always @(*) begin
                // if we are writing to the cpu address
                if (cpu_interrupt_en && !cpu_rw) begin
                        interrupt_reg_next = din_mmu;
                end else begin
                        interrupt_reg_next = {18'b0, 1'b0, 1'b0,
                                filt_int_reg_in, fpga_int, 2'b0};
                end
        end
		 assign interrupt_filt = interrupt_reg[3];
		 assign interrupt_fpga = interrupt_reg[2];
	// if the filt_int_in is one, then the new value going into int reg
	// will be dependent on the CPU  having read the values
	assign filt_int_reg_in = filt_int_in ? 1'b0 : filt_int;

        // the aliases of the interrupt register that are input back into the 
        // various mmu modules for control purposes
        assign cf_int_in = interrupt_reg[5];
        // we will lower the filt_int_in if the cpu reads the data
        // and there is an active interrupt request
        assign filt_int_in = (cpu_rw & cpu_filt_en)&filt_int;
        assign fpga_int_in = interrupt_reg[2];


        /* END interrupt HDL*/

    /* flip flops for enable mux signals*/

    always @(posedge clk, posedge rst) begin
                if (rst) begin
                        cpu_fpga_en_del <= 1'b0;
                        cpu_vga_en_del <= 1'b0;
                        cpu_cf_en_del <= 1'b0;
                        cpu_filt_en_del <= 1'b0;
                        cpu_codec_en_del <= 1'b0;
                        cpu_interrupt_en_del <= 1'b0;
                        cpu_timer_en_del <= 1'b0;
                        cpu_mem_en_del <= 1'b0;
	
                end else begin
                        cpu_fpga_en_del <= cpu_fpga_en;
                        cpu_vga_en_del <= cpu_vga_en;
                        cpu_cf_en_del <= cpu_cf_en;
                        cpu_filt_en_del <= cpu_filt_en;
                        cpu_codec_en_del <= cpu_codec_en;
                        cpu_interrupt_en_del <= cpu_interrupt_en;
                        cpu_timer_en_del <= cpu_timer_en;
                        cpu_mem_en_del <= cpu_mem_en;

                end
    end

    /* end flip flops                  */

        assign dout_mmu = (cpu_fpga_en_del) ? fpga_dout :
                          (cpu_cf_en_del)  ? cf_dout   :
                          (cpu_filt_en_del) ? filt_dout :
                          (cpu_interrupt_en_del) ? interrupt_reg:
                          (cpu_timer_en_del)   ? timer_dout:
                          (cpu_mem_en_del)     ? mem_dout:
                          24'b0;

        assign mmu_stall = fpga_stall | cf_stall | filt_stall | spart_stall;

endmodule


