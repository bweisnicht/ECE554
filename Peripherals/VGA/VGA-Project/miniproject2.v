// Top-level file for miniproject2
`default_nettype none
module miniproject2 (
                     input wire  clk_100mhz,
                     input wire  clk_25mhz,
                     input wire  rst,
                     output wire vsync,
                     output wire hsync,
                     output wire blank,
                     output wire comp_sync,
                     output wire [7:0] pixel_r,
                     output wire [7:0] pixel_g,
                     output wire [7:0] pixel_b,
							output wire vgaclk,
							output wire [3:0] led,
                     output wire [10:0] ram_addr,
                     input  wire [23:0] ram_data
                    );
	 wire zz_in, zz_out;

    wire fifo_data;
    wire fifo_almost_empty, fifo_almost_full, fifo_empty, fifo_full;
    wire fifo_write, fifo_read;
		  
    //assign led[0] = clk_100mhz;
	 //assign led[1] = clk_25mhz;
	 //assign led[2] = fifo_almost_full;
	 //assign led[3] = fifo_full;
	 
    assign vgaclk = clk_25mhz;
	 
	 wire dp_data;
	 wire dp_vsync,dp_hsync;
	 displayplane dp0(.din(ram_data), 
							.full(fifo_full),
							.almost_full(fifo_almost_full), 
							.clk(clk_100mhz), .rst(rst), 
							.addr(ram_addr), 
							.dout(dp_data), 
							.fifo_wr_en(fifo_write),
							.zero_zero(zz_in),
							.vsync(dp_vsync),
							.hsync(dp_hsync),
                     .led(led)
						  );	

	 wire fifo_vsync,fifo_hsync;
    vga_xclk_fifo fifo0 (
                // Reset (not sure about synchronosity)
                .rst(rst),

                // DisplayPlane 100MHz interface
                .din({dp_vsync,dp_hsync,zz_in,dp_data}),
                .wr_clk(clk_100mhz),
                .wr_en(fifo_write),
                .almost_empty(fifo_almost_empty),
                .almost_full(fifo_almost_full),
                .full(fifo_full),

                // Timingen 25MHz interface
                .rd_clk(clk_25mhz),
                .rd_en(fifo_read),
                .dout({fifo_vsync,fifo_hsync,zz_out,fifo_data}),

                //Common signal(s)
                .empty(fifo_empty)
               );
    
    timingen timingen0 (
                        // Clocking/reset
                        .rst(rst),
                        .clk_25mhz(clk_25mhz),

                        // Color input data
                        .empty(fifo_empty),
                        .fifo_read(fifo_read),
                        .data_in(fifo_data),

                        //Slightly-less-important VGA signals
                        .blank(blank),
                        .comp_sync(comp_sync),

                        // Important VGA signals
                        .hsync(hsync),
                        .vsync(vsync),
                        .pixel_r(pixel_r),
                        .pixel_g(pixel_g),
                        .pixel_b(pixel_b),
								
								.zero_zero(zz_out),
								.vsync_in(fifo_vsync),
								.hsync_in(fifo_hsync)
                       );

endmodule
