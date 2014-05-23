`timescale 1ns / 1ps
`default_nettype none

module t_top_level_proc_interrupt;

	reg clk, rst, iorw_prev, cpu_en_prev, handling_fd, handling_dx, handling_xm;
    reg handling_mw; 
	wire  rxd, handling;
	reg [3:0] addr;
	wire [23:0] data, pc_cur, pc_adjusted;
	reg [23:0]  pc_prev, addr_prev, pc_prev2;
	
	wire txd, ack, drdy, tx_rdy;

	integer file, r, file2, file3;

	localparam QUART = 2, HALF = 4, WHOLE = 8; 

	top_level_proc_interrupt tls0(
        .clk(clk),         // 100mhz clock
        .rst(rst),         // Asynchronous reset, tied to dip switch 0
        .txd(txd),        // RS232 Transmit Data
        .rxd(rxd)         // RS232 Recieve Data

         );
	// if we want to compare output files we want to be able to match pc's
    assign pc_adjusted = pc_cur; //- tls0.proc0.fetch0.fetch0.START_PC;

    // if we're handling, it means we're in interrupt handle mode
    assign handling = tls0.proc0.fetch0.int0.handling;
	
	assign rxd = 1'b0;

	assign data = 24'h8a4f1b;
	assign pc_cur = (tls0.proc0.pc_add_mw-1);
	 
    // clock setup
	initial begin
		clk = 1'b0;
		forever clk = #(HALF) ~clk;
	end


	initial begin
		pc_prev = 24'hffffff; 
		file = $fopen("reg.trace", "w");
		file2 = $fopen("mem.trace", "w");
        file3 = $fopen ("int.trace", "w");
		rst = 1'b1;
 	 #(WHOLE);
 	 #(WHOLE);
 	 #(WHOLE);
		rst = 1'b0;
		//wait for a halt command
		while (!tls0.proc0.halt) begin	
		   #(WHOLE);
	   end
	  	$fclose(file);
		$fclose(file2);
        $fclose(file3);
		$stop;
	end	

	always @(tls0.ack) begin
		$display("%t: ack %d", $time, tls0.ack);
	end	

  // logic for creation of reg trace
	always @(posedge clk)  begin
		if (tls0.proc0.reg_write_en_mem && !handling_mw) begin
			if ( pc_prev != tls0.proc0.pc_in_mw) begin
				$fwrite(file, "0x%h r%0d [0x%h] %b\n", pc_adjusted, 
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

	 // logic for creation of interrupt trace
	always @(posedge clk)  begin
		if (tls0.proc0.reg_write_en_mem && handling_mw) begin
			if ( pc_prev != tls0.proc0.pc_in_mw) begin
				$fwrite(file3, "0x%h r%0d [0x%h] %b\n", pc_adjusted, 
						tls0.proc0.write_reg_sel_mem, tls0.proc0.write_data, 
						tls0.proc0.opcode_mw);
			
			end
		pc_prev <= tls0.proc0.pc_in_mw;
		end
	end

	// store mem data for the sake of testing
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

   // the virtual flip flops to make sure handling status is in phase
   always @(posedge clk, posedge rst) begin
      if (rst) begin
			handling_fd <= 1'b0;
			handling_dx <= 1'b0;
            handling_xm <= 1'b0;
            handling_mw <= 1'b0;
	  end else
	  begin
           handling_mw <= handling_xm;
           handling_xm <= handling_dx;
           handling_dx <= handling_fd;
           handling_fd <= handling;

	  end
   end

endmodule

