`timescale 1ns / 1ps
`default_nettype none
// push pb4 in order to skip a song
module t_top_level_firmware;

	reg clk, rst, clk_fast, iorw_prev, cpu_en_prev; 
	wire ce, iorw;
	reg [3:0] addr;
	wire [23:0] data, pc_cur;
	reg [23:0]  pc_prev, addr_prev, pc_prev2;
	
	wire txd, ack, drdy, tx_rdy;

	integer file, r, file2, r2;

	/*button variables*/
	reg pb0, pb1, pb2, pb3, pb4, eq0, eq1, eq2;
	/*end button variables*/

	/*vga wires*/
	wire vsync, hsync, blank, comp_sync, vgaclk;
	wire [7:0] pixel_r, pixel_g, pixel_b;
	wire [3:0] led;
	/*end vga wires*/

	/*spart wires*/
	reg rxd;
	/*end spart wires*/

	/*codec wires*/
	reg bit_clk;
	wire audio_reset;
	wire sdata_out;
	wire sync;
	/*end codec wires*/

	localparam QUART = 2, HALF = 4, WHOLE = 32; 

	top_level_firmware_test tls0(
                 .clk(clk),       
                 .rst(rst),         // Asynchronous reset, tied to dip switch 0
                 // spart
                 // input
                 // input
                 .bit_clk(bit_clk),
                 // output
                 .audio_reset(audio_reset),
                 .sdata_out(sdata_out),
                 .sync(sync),
                 // buttons
                 // input
                 .pb0(pb0), 
	         .pb1(pb1), 
		 .pb2(pb2), 
		 .pb3(pb3), 
		 .pb4(pb4),
                 .eq0(eq0), 
		 .eq1(eq1), 
		 .eq2(eq2));

	
	assign iorw = 1'b0;
	assign ce = tx_rdy;

	assign data = 24'h8a4f1b;
	assign pc_cur = (tls0.proc0.pc_add_mw-1);
	
	initial begin
		clk = 1'b0;
		forever clk = #(HALF) ~clk;
	end


	/*initialize bit_clk*/
	initial begin
		bit_clk = 1'b0;
		forever bit_clk = #(32) ~bit_clk;
	end

	initial begin
		pb0 = 0;
		pb1 = 0;
		pb2 = 0;
		pb3 = 0;
		pb4 = 0;
		eq0 = 0;
		eq1 = 0;
		eq2 = 0;
		pc_prev = 24'hffffff; 
		file = $fopen("reg.trace", "w");
		file2 = $fopen("mem.trace", "w");
		rst = 1'b1;
		rxd = 1'b0;

 	 #(WHOLE);
 	 #(WHOLE);
 	 #(WHOLE);


		rst = 1'b0;

		 	#(700);
		 			
		#(WHOLE);
		#(WHOLE);
		#(WHOLE);
		pb4= 1'b0;

		// increase sound
	while (!tls0.mmu0.cpu_codec_en) begin
		#(WHOLE);
	end
	#(3000);
	// press equalize button
	/*pb3 = 1;
        #(WHOLE);
        #(WHOLE);
        pb3 = 0;
	#(100);
	while (tls0.proc0.fetch0.int0.handling) begin
		#(WHOLE);
	end
	#(100);
	// press up
	pb1 = 1;
	#(WHOLE);
	#(WHOLE);
        #(WHOLE);
	pb1 = 0;
	
	  	$fclose(file);
		$fclose(file2);
	//	$stop;*/
	end	

	always @(tls0.ack) begin
		$display("%t: ack %d", $time, tls0.ack);
	end	

  // logic for creation of reg trace
	always @(posedge clk)  begin
		if (tls0.proc0.reg_write_en_mem) begin
			if ( pc_prev != tls0.proc0.pc_in_mw) begin
				$fwrite(file, "0x%h r%0d [0x%h] %b\n", pc_cur, 
						tls0.proc0.write_reg_sel_mem, tls0.proc0.write_data, 
						tls0.proc0.opcode_mw);
			
			end
		pc_prev <= tls0.proc0.pc_in_mw;
		end
	end
	
	// logic for creation of mem trace
	always @(posedge clk) begin
		// if we previously had a load
	  if (cpu_en_prev) begin
	      if (iorw_prev && (tls0.proc0.opcode_mw != 5'b00001)) begin// load
	           $fwrite(file2, "pc=[0x%h] addr=[0x%h] data=[0x%h] %b\n", 
					pc_prev2, addr_prev, tls0.dout_mmu, 
					tls0.proc0.opcode_mw);

	      end
      end 
      if (tls0.CPU_en) begin
         if (!tls0.iorw && (tls0.proc0.opcode_xm != 5'b00001)) begin
               $fwrite(file2, "pc=[0x%h] addr=[0x%h] data=[0x%h] %b\n", 
					tls0.proc0.pc_in_mw,
					tls0.addr, tls0.data, tls0.proc0.opcode_xm);
		  end
	  end
	
	end

	// store data for the sake of testing
	always @(posedge clk, posedge rst) begin
		if (rst) begin
			addr_prev <= 24'b0;
			pc_prev2      <= 24'b0;
            iorw_prev    <= 1'b0;
            cpu_en_prev  <= 1'b0;
		end
		else begin
			addr_prev <= tls0.addr;
			pc_prev2 <= tls0.proc0.pc_in_mw;
			cpu_en_prev <= tls0.CPU_en;
			iorw_prev <= tls0.iorw;
		end
    end

endmodule

