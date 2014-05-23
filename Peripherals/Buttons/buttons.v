module buttons(clk, rst, pb0, pb1, pb2, pb3, pb4, eq0, eq1, eq2,fpga_ce, fpga_addr, fpga_data, fpga_drdy, fpga_int, curr_status);

input clk, rst;
input pb0, pb1, pb2, pb3, pb4;
input eq0, eq1, eq2;
input [1:0] fpga_addr;
input fpga_ce;
output reg [23:0] fpga_data;
output reg fpga_drdy;
output reg fpga_int;
output [23:0] curr_status;
 
reg [23:0] currStatus;
reg [23:0] prevStatus0;
reg [23:0] prevStatus1;
reg [23:0] prevStatus2;

reg pb0_sync0;
reg pb0_sync1;
reg pb0_state;
reg [15:0] pb0_cnt; 

reg pb1_sync0;
reg pb1_sync1;
reg pb1_state;
reg [15:0] pb1_cnt;

reg pb2_sync0;
reg pb2_sync1;
reg pb2_state;
reg [15:0] pb2_cnt;

reg pb3_sync0;
reg pb3_sync1;
reg pb3_state;
reg [15:0] pb3_cnt;

reg pb4_sync0;
reg pb4_sync1;
reg pb4_state;
reg [15:0] pb4_cnt;

reg eq0_sync, eq1_sync, eq2_sync;
reg [15:0] eq0_cnt, eq1_cnt, eq2_cnt;
reg eq0_state, eq1_state, eq2_state;

wire ds_change;
wire pb_change;

// pb0 = enter (4)
// pb1 = up    (2)
// pb2 = down  (3)
// pb3 = left  (0)
// pb4 = right (1)


assign curr_status = currStatus;

always @(posedge clk)begin 
	if(rst) begin
		pb0_sync0 <= 0;
		pb1_sync0 <= 0;
		pb2_sync0 <= 0;
		pb3_sync0 <= 0;
		pb4_sync0 <= 0;
		eq0_sync <= 0;
		eq1_sync <= 0;
		eq2_sync <= 0;
	end else begin
		pb0_sync0 <= ~pb0;
		pb1_sync0 <= ~pb1;
		pb2_sync0 <= ~pb2;
		pb3_sync0 <= ~pb3;
		pb4_sync0 <= ~pb4;
		eq0_sync <= ~eq0;
		eq1_sync <= ~eq1;
		eq2_sync <= ~eq2;
	end
end
		
always @(posedge clk) begin
	if(rst) begin 
		pb0_sync1 <= 0;
		pb1_sync1 <= 0;
		pb2_sync1 <= 0;
		pb3_sync1 <= 0;
		pb4_sync1 <= 0;
	end else begin
		pb0_sync1 <= pb0_sync0;
		pb1_sync1 <= pb1_sync0;
		pb2_sync1 <= pb2_sync0;
		pb3_sync1 <= pb3_sync0;
		pb4_sync1 <= pb4_sync0;
	end 
end

wire pb0_idle = (pb0_state==pb0_sync1);
wire pb0_cnt_done = (pb0_cnt == 16'hffff);
wire pb1_idle = (pb1_state==pb1_sync1);
wire pb1_cnt_done = (pb1_cnt == 16'hffff);
wire pb2_idle = (pb2_state==pb2_sync1);
wire pb2_cnt_done = (pb2_cnt == 16'hffff);
wire pb3_idle = (pb3_state==pb3_sync1);
wire pb3_cnt_done = (pb3_cnt == 16'hffff);
wire pb4_idle = (pb4_state==pb4_sync1);
wire pb4_cnt_done = (pb4_cnt == 16'hffff);
wire eq0_cnt_done = (eq0_cnt == 16'hffff);
wire eq1_cnt_done = (eq1_cnt == 16'hffff);
wire eq2_cnt_done = (eq2_cnt == 16'hffff);

always@(posedge clk) begin
	if(rst) begin
		eq0_cnt <= 0;
		eq0_state <= 0;
	end
	else if(eq0_state != eq0_sync)begin
		eq0_cnt <= eq0_cnt + 1;
		if(eq0_cnt_done) begin 
			eq0_state <= ~eq0_state;
			eq0_cnt <= 0;
		end
	end
end

always@(posedge clk) begin
	if(rst) begin
		eq1_cnt <= 0;
		eq1_state <= 0;
	end
	else if(eq1_state != eq1_sync)begin
		eq1_cnt <= eq1_cnt + 1;
		if(eq1_cnt_done) begin 
			eq1_state <= ~eq1_state;
			eq1_cnt <= 0;
		end
	end
end

always@(posedge clk) begin
	if(rst) begin
		eq2_cnt <= 0;
		eq2_state <= 0;
	end
	else if(eq2_state != eq2_sync)begin
		eq2_cnt <= eq2_cnt + 1;
		if(eq2_cnt_done) begin 
			eq2_state <= ~eq2_state;
			eq2_cnt <= 0;
		end
	end
end	
	
	
always@(posedge clk) begin
	if (rst) begin
		pb0_cnt <= 0;
		pb0_state <=0;
	end else if(pb0_idle) 
		pb0_cnt <= 0;
	else begin
		pb0_cnt <= pb0_cnt + 1; 
		if(pb0_cnt_done) pb0_state <= ~pb0_state;
	end
end

always@(posedge clk) begin
	if (rst) begin
		pb1_cnt <= 0;
		pb1_state <=0;
	end else if(pb1_idle) 
		pb1_cnt <= 0;
	else begin
		pb1_cnt <= pb1_cnt + 1; 
		if(pb1_cnt_done) pb1_state <= ~pb1_state;
	end
end

always@(posedge clk) begin
	if (rst) begin
		pb2_cnt <= 0;
		pb2_state <=0;
	end else if(pb2_idle) 
		pb2_cnt <= 0;
	else begin
		pb2_cnt <= pb2_cnt + 1; 
		if(pb2_cnt_done) pb2_state <= ~pb2_state;
	end
end

always@(posedge clk) begin
	if (rst) begin
		pb3_cnt <= 0;
		pb3_state <=0;
	end else if(pb3_idle) 
		pb3_cnt <= 0;
	else begin
		pb3_cnt <= pb3_cnt + 1; 
		if(pb3_cnt_done) pb3_state <= ~pb3_state;
	end
end

always@(posedge clk) begin
	if (rst) begin
		pb4_cnt <= 0;
		pb4_state <=0;
	end else if(pb4_idle) 
		pb4_cnt <= 0;
	else begin
		pb4_cnt <= pb4_cnt + 1; 
		if(pb4_cnt_done) pb4_state <= ~pb4_state;
	end
end


wire pb0_press = ~pb0_state & ~pb0_idle & pb0_cnt_done;
wire pb1_press = ~pb1_state & ~pb1_idle & pb1_cnt_done;
wire pb2_press = ~pb2_state & ~pb2_idle & pb2_cnt_done;
wire pb3_press = ~pb3_state & ~pb3_idle & pb3_cnt_done;
wire pb4_press = ~pb4_state & ~pb4_idle & pb4_cnt_done;




assign ds_change = (eq0_state != currStatus[5]) | (eq1_state != currStatus[6]) | (eq2_state != currStatus[7]);
assign pb_change = (pb0_press | pb1_press | pb2_press | pb3_press | pb4_press);

// pb0 = enter (4)
// pb1 = up    (2)
// pb2 = down  (3)
// pb3 = left  (0)
// pb4 = right (1)

always@(posedge clk) begin
	if (rst) begin
		currStatus <= 0;
		prevStatus0 <= 0;
		prevStatus1 <= 0;
		prevStatus2 <= 0;
	end else if ((ds_change | pb_change) && ~fpga_drdy) begin
		currStatus <= {16'b0, eq2_state, eq1_state, eq0_state, pb0_press, pb2_press, pb1_press, pb4_press, pb3_press};
		prevStatus0 <= currStatus;
		prevStatus1 <= prevStatus0;
		prevStatus2 <= prevStatus1; 
	end	
end

always@(posedge clk) begin 
	if (rst)begin 
		fpga_drdy <= 0;
		fpga_int <= 0;
	end else if (ds_change | pb_change) begin
		fpga_drdy <= 1;
		fpga_int <= 1;
	end else if (fpga_ce) begin
		fpga_drdy <= 0;
		fpga_int <= 0;
	end
end

always@(posedge clk) begin
	if (rst)
		fpga_data <= 0;
	else if(fpga_ce && (fpga_addr == 2'b00))
		fpga_data <= currStatus;
	else if(fpga_ce && (fpga_addr == 2'b01)) 
		fpga_data <= prevStatus0;
	else if(fpga_ce && (fpga_addr == 2'b10)) 
		fpga_data <= prevStatus1;
	else if(fpga_ce && (fpga_addr == 2'b11)) 
		fpga_data <= prevStatus2;
end
endmodule 

		
		
