`default_nettype none
`timescale 1ns/ 100ps

module t_reg;

	reg clk, clk2, write;
	reg [4:0] addra, addrb;
	reg [23:0]  dina;
	wire [23:0] doutb;
	wire [4:0] addrb_real;
	integer x;

	reg_file rf0(
	.clka(clk),
	.dina(dina),
	.addra(addra),
	.wea(write),
	/*.douta(douta),*/
	.clkb(clk),
	/*.dinb(dinb),*/
	.addrb(addrb_real),
	/*.web(write),*/
	.doutb(doutb));

     localparam WHOLE = 8;
     localparam HALF  = WHOLE/2;
     localparam QUART = WHOLE/4;


     assign addrb_real = addrb;
    
     initial begin
     	clk = 1'b0;
	clk2 = 1'b0;
     end

     initial begin
	forever clk = #(HALF) ~clk;
	 end
	
     initial begin
	forever clk2 = #(QUART) ~clk2;
     end 


     initial begin
	addra = 5'd31;
	dina = 24'b0;

	addrb = 5'd0;

	
	write = 1'b1;
	for (x = 0; x < 32; x = x + 1) begin
		dina = x;
		addra = x;
		#(WHOLE);
	end
	write = 1'b0;
	#(WHOLE);

	for (x = 0; x < 32; x = x + 1) begin
		addrb = x;
		#(WHOLE);
	end
	$stop;
end

endmodule



