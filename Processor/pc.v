`default_nettype none

module pc (pc_in, pc_add, pc_out, stall, clk, rst);
    input wire [23:0] pc_in;
    input wire clk, rst, stall;
    output reg [23:0] pc_out;
    output reg [23:0] pc_add;
    
    wire stall_neg;
    reg [23:0] pc_out_next;

    assign stall_neg = !stall;

    /* dff_en pc0 [23:0] (.d(pc_in), .q(pc_out) , .en(stall_neg), .clk(clk), .rst(rst));

  
     
     incr_by2 incr2 (.in(pc_out), .out(pc_add));*/

    // start at PC = 32
    localparam START_PC = 24'd389;

    always @(posedge clk, posedge rst) begin 
	if (rst) begin
	   pc_out <= START_PC;
	end else begin
	   pc_out <= pc_out_next;
	end
    end

    always @(*) begin
	if (stall_neg) begin
	   pc_out_next = pc_in;
	end else begin
	   pc_out_next = pc_out;
	end
        pc_add = pc_out + 24'd1;
    end
     
endmodule

