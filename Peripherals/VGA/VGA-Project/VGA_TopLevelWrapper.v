`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:34:17 04/22/2013 
// Design Name: 
// Module Name:    VGA_TopLevelWrapper 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module VGA_TopLevelWrapper(
                     input wire  clk_100mhz,
                     input wire  rst,
                     output wire vsync,
                     output wire hsync,
                     output wire blank,
                     output wire comp_sync,
                     output wire [7:0] pixel_r,
                     output wire [7:0] pixel_g,
                     output wire [7:0] pixel_b,
							output wire vgaclk,
							output wire [3:0] led
    );
wire rst_out,clk_25m,clk_100m,locked_dcm;
wire [10:0] ram_addr;
reg [23:0] ram_data;
always @(*)
   case(ram_addr)
      0: ram_data =  {8'd2,   8'd1,   8'd0};
      1: ram_data =  {8'd5,   8'd4,   8'd3};
      2: ram_data =  {8'd8,   8'd7,   8'd6};
      3: ram_data =  {8'd11,  8'd10,  8'd9};
      4: ram_data =  {8'd14,  8'd13,  8'd12};
      5: ram_data =  {8'd17,  8'd16,  8'd15};
      6: ram_data =  {8'd20,  8'd19,  8'd18};
      7: ram_data =  {8'd23,  8'd22,  8'd21};
      8: ram_data =  {8'd26,  8'd25,  8'd24};
      9: ram_data =  {8'd29,  8'd28,  8'd27};
      10: ram_data = {8'd32,  8'd31,  8'd30};
      11: ram_data = {8'd35,  8'd34,  8'd33};
      12: ram_data = {8'd38,  8'd37,  8'd36};
      13: ram_data = {8'd41,  8'd40,  8'd39};
      14: ram_data = {8'd44,  8'd43,  8'd42};
      15: ram_data = {8'd47,  8'd46,  8'd45};
      16: ram_data = {8'd50,  8'd49,  8'd48};
      17: ram_data = {8'd53,  8'd52,  8'd51};
      18: ram_data = {8'd56,  8'd55,  8'd54};
      19: ram_data = {8'd59,  8'd58,  8'd57};
      20: ram_data = {8'd62,  8'd61,  8'd60};
      21: ram_data = {8'd65,  8'd64,  8'd63};
      22: ram_data = {8'd68,  8'd67,  8'd66};
      23: ram_data = {8'd71,  8'd70,  8'd69};
      24: ram_data = {8'd74,  8'd73,  8'd72};
      25: ram_data = {8'd77,  8'd76,  8'd75};
      26: ram_data = {8'd80,  8'd79,  8'd78};
      27: ram_data = {8'd83,  8'd82,  8'd81};
      28: ram_data = {8'd86,  8'd85,  8'd84};
      29: ram_data = {8'd89,  8'd88,  8'd87};
      30: ram_data = {8'd92,  8'd91,  8'd90};
      31: ram_data = {8'd95,  8'd94,  8'd93};
      32: ram_data = {8'd98,  8'd97,  8'd96};
      33: ram_data = {8'd101, 8'd100, 8'd99};
      34: ram_data = {8'd104, 8'd103, 8'd102};
      35: ram_data = {8'd107, 8'd106, 8'd105};
      36: ram_data = {8'd110, 8'd109, 8'd108};
      37: ram_data = {8'd113, 8'd112, 8'd111};
      38: ram_data = {8'd116, 8'd115, 8'd114};
      39: ram_data = {8'd119, 8'd118, 8'd117};
      40: ram_data = {8'd122, 8'd121, 8'd120};
      41: ram_data = {8'd125, 8'd124, 8'd123};
      42: ram_data = {8'd94,  8'd127, 8'd126};
      default:ram_data={8'd95,8'd95,8'd95};
   endcase

miniproject2 vga_ctl(
                     .clk_100mhz(clk_100m),
                     .clk_25mhz(clk_25m),
                     .rst(rst_out),
                     .vsync(vsync),
                     .hsync(hsync),
                     .blank(blank),
                     .comp_sync(comp_sync),
                     .pixel_r(pixel_r),
                     .pixel_g(pixel_g),
                     .pixel_b(pixel_b),
							.vgaclk(vgaclk),
							.led(led),
                     .ram_addr(ram_addr),
                     .ram_data(ram_data)
                    );
wire nc;
assign rst_out = rst | (~locked_dcm);

// Hack for simulation
//reg [1:0] count;
//always @(posedge clk_100mhz, posedge rst)
   //if(rst)
   //   count<=0;
   //els/e
      //count<=count+1;

//assign clk_100m = clk_100mhz;
//assign clk_25m  = count[1];
//assign locked_dcm=1;
// End hack

vga_clk clk_gen(
                .CLKIN_IN(clk_100mhz),
                .RST_IN(rst),
                .CLKFX_OUT(clk_25m),
                .CLKIN_IBUFG_OUT(nc),
                .CLK0_OUT(clk_100m),
                .LOCKED_OUT(locked_dcm)
               );

endmodule
