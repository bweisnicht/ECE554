`timescale 1ns / 1ps
module t_toplvl ();
    reg rst, clk;
    wire [15:0] MPD;
    wire [6:0] MPA; 
    wire MPBRDY, MPIRQ, MPOE, MPWE, MPCE, dreq, cfrden, cfrdempty;
    wire cfclk, cfwren, cfwrfull, intcf;
    wire [10:0] cfoa, cfain;
    wire [23:0] cfdo, cfdin;
    wire [15:0] Data_to_WTU;
    wire txd, rxd;
    reg bclk;
    
    reg [15:0] tdata, dout;
      
 CF_INT uut( .CF_MPD(MPD), .CF_MPA(MPA), .CF_MPBRDY(MPBRDY), .CF_MPIRQ(MPIRQ), .CF_MP_OE_Z(MPOE), .CF_MP_WE_Z(MPWE),
   .CF_MP_CE_Z(MPCE), .FPGA_SYSTEMACE_CLOCK(clk), .rst(rst), .wtu_dataRequest(dreq), .data_to_wtu(data_to_wtu), 
   .cf_rd_en(cfrden),	.cf_rd_empty(cfrdempty), .cf_clk(cfclk), .cf_wr_en(cfwren),
    .cf_wr_full(cfwrfull), .int_CF(intcf),	.cf_data_out(cfdo), .cf_addr_out(cfao), 
    .cf_data_in(cfdin), .cf_addr_in(cfain), .wr_to_wtu(wr_to_wtu), 
    .txd(txd), .rxd(rxd), .clk(bclk) );   
	
	initial clk = 0;
	initial bclk = 0;
   initial begin	
	   rst = 0;
	   #15 rst = 1;
	   #10 rst = 0;

    end 

always 
  ///////////////////
  // 500MHz clock // 
  /////////////////
  #1 clk = ~clk;
  
always #2 bclk = ~bclk;

always @ ( posedge rst, posedge MPOE) begin
    if (rst ) begin
       dout <= 16'h0103;
    end
  else if ( MPOE ) begin
      dout <= 16'h010f;
    end
  else begin
      dout <= tdata;
    end
 end
  
  always @ (  posedge rst,posedge clk) begin
    if (rst ) begin
       tdata <= 16'h0103;
    end
  else begin
    tdata <= dout;
  end
  end
  
	
	assign MPD = (MPOE)? 16'bz : tdata; 
	
	
endmodule