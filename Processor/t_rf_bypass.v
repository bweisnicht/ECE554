`default_nettype none
`timescale 1ns/ 100ps

module t_rf_bypass;

     reg clk, rst,  write;
     reg [4:0] read1regsel, read2regsel, writeregsel;
     reg [23:0] writedata;

     wire [23:0] read1data, read2data;
     wire err;

     integer sentinel;
     
     localparam WHOLE = 8;
     localparam HALF  = WHOLE/2;
     localparam QUART = WHOLE/4;

     rf_bypass rf0(
                // Outputs
           	.read1data(read1data), .read2data(read2data), .err(err),
          	 	// Inputs
           	.clk(clk),  .rst(rst), .read1regsel(read1regsel), 
		.read2regsel(read2regsel), .writeregsel(writeregsel), 
		.writedata(writedata), .write(write)
                );

    
     initial begin
     	clk = 1'b0;
     end


     initial begin
	forever clk = #(HALF) ~clk;
	 end
	

	initial begin
		read1regsel = 5'b0;
		read2regsel = 5'b0;
		writeregsel = 5'b0;
		writedata = 24'b0;
		write = 1'b0;
		rst = 1'b1;
		#(WHOLE);
		rst = 1'b0;
		#(WHOLE);

		write = 1'b1;
		#(WHOLE);
		for (sentinel = 0; sentinel < 32; sentinel = sentinel + 1) begin
			writeregsel = sentinel;
			writedata = sentinel;
			#(WHOLE);
		end

		write = 1'b0;
		for (sentinel = 0; sentinel < 32; sentinel = sentinel + 1) begin
			read1regsel = sentinel;
			read2regsel = sentinel;

			#(WHOLE);
		end
		$display("%t: out of sync", $time);
		write = 1'b1;
		for (sentinel = 0; sentinel < 32; sentinel = sentinel + 1) begin
			read1regsel = sentinel-1;
			read2regsel = sentinel-1;
			writeregsel = sentinel;
			writedata = sentinel*2;
			#(WHOLE);
		end
		$display("donezo");
		$stop;	
	end

	always @(posedge clk) begin
		if (!write) begin
		#(HALF-1);
		if (read1regsel != read1data) begin
			$display("%t r1: actual data- %h | expected: %h", 
				$time, read1data, read1regsel);
		end
		if (read2regsel != read2data) begin
			$display("%t r2: actual data- %h | expected: %h", 
				$time, read2data, read2regsel);
		end
	end else begin
		#(WHOLE+1);
	end
	end	

endmodule
