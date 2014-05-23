module tb_VGA_TopLevelWrapper();
reg  clk_100mhz,rst;
wire vsync,hsync,blank,comp_sync;
wire [7:0] pixel_r,pixel_g,pixel_b;
wire [3:0] led;
VGA_TopLevelWrapper UUT (
                     clk_100mhz,
                     rst,
                     vsync,
                     hsync,
                     blank,
                     comp_sync,
                     pixel_r,
                     pixel_g,
                     pixel_b,
							vgaclk,
							led
                    );
initial begin
    clk_100mhz=0;
    rst=1;
    #150;
    rst=0;
    #100_000 $stop;
end
always #5 clk_100mhz<=~clk_100mhz;

endmodule