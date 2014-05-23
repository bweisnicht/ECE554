`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    
// Design Name: 
// Module Name:    driver 
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
module driver(
 input wire clk,
 input wire rst,
 input wire [23:0] data,
 input wire rda,
 input wire new_tx_data, // an external signal from the MMU
 // which says we have data from the CPU to give to the transmitter
 input wire tbr, // transmit buffer ready - the transmitter itself is
	 // ready send new data
 output reg [1:0] ioaddr,
 output reg iocs,
 output reg iorw,
 output wire buf_rdy, fifo_full,
 inout wire [7:0] databus
 );

localparam S_IDLE = 3'd0, S_DIV_LOW = 3'd1, S_DIV_HIGH = 3'd2;
localparam S_SEND = 3'd3,  S_SEND_PRE = 3'd4, S_BUF = 3'd5;

localparam BAUD_4800 = 16'h0515, BAUD_9600 = 16'h028A;
localparam BAUD_19200 = 16'h0145, BAUD_38400 = 16'h0028;


reg new_baud, next_new_baud, take_data;
reg [2:0] state, nextstate;
reg [7:0] data_values, data_value_stored;
reg [15:0] baud_curr, next_baud;
wire [7:0] data_wire, rd_wire, data_fifo;
wire [1:0] br_cfg;
wire new_data, write_data;

assign br_cfg = 2'b11;
assign write_data = new_tx_data;
	
parse_data pd0( .data(data), .out(data_fifo), .hasdata(new_data), .clk(clk), 
		.rst(rst), .take(take_data), .write(write_data), 
		.buf_rdy(buf_rdy), .fifo_full(fifo_full));
// data wire is data values, and you're sending data_values to the
// transmitter via the databus
assign data_wire = data_values;

//assign databus = (~iorw) ? data_wire: 8'hzz;
assign databus = (!iorw) ? data_wire: 8'hzz;

always @(posedge clk, posedge rst) begin
	if (rst) begin
		state <= S_IDLE;
		new_baud <= 1'b1;
		data_value_stored <= 8'h0;
	end else begin
		state <= nextstate;
		baud_curr <= next_baud;
		new_baud <= next_new_baud;
		data_value_stored <= data_values;
	end
end

always @(*) begin
	iorw = 1'b1;
	data_values = 8'd0;
	take_data = 1'b0;
	ioaddr = 2'b01;
	iocs = 1'b1;
	case (state)
		S_IDLE: begin
		    iocs = 1'b0;
			if (new_baud) begin
				nextstate  = S_DIV_LOW;
			end else if (new_tx_data) begin
				nextstate = S_BUF;
			end else begin
				nextstate = S_IDLE;
			end
			ioaddr = 2'b01;
		end
		S_DIV_LOW: begin
			iorw = 1'b0;
			nextstate = S_DIV_HIGH;
			data_values = baud_curr[7:0];
			ioaddr = 2'b10;
		end
		S_DIV_HIGH: begin
			iorw = 1'b0;
			nextstate = S_IDLE;
			data_values = baud_curr[15:8];
			ioaddr = 2'b11;
		end
		S_BUF: begin // send buffer data into 
		       if (new_data) begin
				nextstate = S_SEND_PRE;
				// take_data means we are taking
				// data from the queue in parse_data
				take_data = 1'b1;
				end else 
				nextstate = S_BUF;
		end
		S_SEND_PRE: begin // so tbr can go down
			iorw = 1'b0;
			ioaddr = 2'b00;
			nextstate = S_SEND;
			// the data we write is from the fifo
			// remember, in the s_buf state we sent a
			// take data signal which prepared the fifo to
			// spit out the next data
			data_values = data_fifo;
		end
		S_SEND: begin
			iorw = 1'b0;
			data_values = data_value_stored;
			// if the transmit buffer is not ready
		        // that means we are transmitting the first
			// encoded (to ASCII) nibble
			//
			// otherwise, we need to see if the fifo has
		        // data waiting to send, if it does then we
		        // restart the sending process
			//
			// otherwise, we just return to idle
			if (!tbr)
				nextstate = S_SEND;
			else if (!new_data) begin
				nextstate = S_IDLE;
				
			end else  begin
				nextstate = S_SEND_PRE;
				take_data = 1'b1;
				iocs = 1'b0;				
			end
			ioaddr = 2'b00;
			iorw = 1'b0;
			
		end
	endcase
end

always @(*) begin
	if (next_baud != baud_curr) begin
		next_new_baud = 1'b1;
	end else if (state == S_DIV_HIGH) begin
		next_new_baud = 1'b0;
	end else begin
		next_new_baud = new_baud;
	end
end

//baud select
always @(*) begin
	case (br_cfg)
		2'b00:
		begin
			next_baud = BAUD_4800;
		end
		2'b01:
		begin
			next_baud = BAUD_9600;
		end
		2'b10:
		begin
			next_baud = BAUD_19200;
		end
		2'b11:
		begin
			next_baud = BAUD_38400;
		end
	endcase
end

endmodule





