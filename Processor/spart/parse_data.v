`timescale 1ns / 1ps
`default_nettype none
// take a 24 bit value and output to spart in hex characters
module parse_data( data, out, hasdata, clk, rst, take, write, buf_rdy, fifo_full);
	// write = write the 6 nibbles of data to the spart
	input wire clk, rst, take, write;
	input wire [23:0] data;
	output wire hasdata, buf_rdy, fifo_full; // it has data as long as the fifo isn't
	// empty
	output wire [7:0] out;

	reg [2:0] hexplace, next_hexplace;
	reg [3:0] hex_in;
	reg [7:0] decoded_data;
	reg [23:0] stored_data;
	reg state, nextstate;
	wire [23:0] next_stored_data;
	wire [4:0] count;
	wire  fifo_empty, write_fifo;


	// 0 starts at 0x30 and it ends at 0x39 for 9
	localparam NUMBASE = 8'h30, RETURN = 8'h7C;
	// a starts at 0x61 and it ends at 0x66 for f
	localparam CHARBASE = 8'h57;
	localparam IDLE = 1'b0, WRITE = 1'b1;

	// the next stored data is either the previous value or the new 
	// value if the buffer is ready and you have a write command
	assign next_stored_data = (write) ? data : stored_data;
	assign write_fifo = ((state == WRITE) & (!fifo_full));
	assign hasdata = !fifo_empty;
	assign buf_rdy = (state == IDLE);

	// hexplace
        //    6         5        4         3       2        1       0
	// 23 - 20 | 19 - 16 | 15 - 12 | 11 - 8 | 7 - 4 | 3 - 0 | return
	always @(posedge clk, posedge rst) begin
		if (rst) begin
			hexplace <= 3'd7;
			state <= IDLE;
			stored_data <= 24'b0;
		end else begin
			hexplace <= next_hexplace;
			stored_data <= next_stored_data;
			state <= nextstate;
		end
	end

	//hex placement logic
	always @(*) begin
		if (state == WRITE && !fifo_full) begin
			next_hexplace = hexplace - 1'b1;
		end else if (state == IDLE)  begin
			next_hexplace = 3'd7;
		end else begin
			next_hexplace = hexplace;
		end
		casex (hexplace)
			3'd7: begin
				hex_in = stored_data[23:20];
			end
			3'd6: begin
				hex_in = stored_data[19:16];
			end
			3'd5: begin
				hex_in = stored_data[15:12];
			end
			3'd4: begin
				hex_in = stored_data[11:8];
			end
			3'd3: begin
				hex_in = stored_data[7:4];
			end
			3'd2: begin
				hex_in = stored_data[3:0];
			end
			default: begin
				hex_in = 4'b0;
			end
		endcase
	end

	//hex decoding
	always @(*) begin
		if ((hexplace == 3'b0) || (hexplace == 3'b1)) begin
			decoded_data = RETURN;
		end else begin
		if (hex_in < 4'd10)
			decoded_data = NUMBASE+hex_in;
		else
			decoded_data = CHARBASE+hex_in;
	       end
	end

	//nextstate logic
	always @(*) begin
		if (state == IDLE) begin
			if (write) begin
				nextstate = WRITE;
			end else begin
				nextstate = IDLE;
			end
		end else begin
			if (hexplace == 3'b0) begin
				nextstate = IDLE;
			end else begin
				nextstate = WRITE;
			end
		end
	end
	
	/*fifo_spart fs0(
	.din(decoded_data),
	.clk(clk),
	.rd_en(take),
	.rst(rst),
	.wr_en(write_fifo),
	.dout(out),
	.empty(fifo_empty),
	.full(fifo_full)*/
	
	assign fifo_empty = 1'b0;
	assign fifo_full = 1'b0;
	assign out = 24'h0;



endmodule

