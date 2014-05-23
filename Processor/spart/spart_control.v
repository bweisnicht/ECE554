`timescale 1ns / 1ps
`default_nettype none

module spart_control (clk, rst, rx_in, chip_enable, r_w, addr, data, tx_out,
			ack, drdy, tx_rdy, clk_spart);
		input wire clk, rst, rx_in, chip_enable, r_w, clk_spart;
		input wire [1:0] addr;
		input wire [23:0] data;
		output wire tx_out;
		output reg ack;
		output wire drdy;
		// tx_rdy means that the parser is in idle mode and the tx
		// is ready to transmit
		output wire tx_rdy;

		wire new_data;
		wire iorw, iocs;
		wire tbr, buf_rdy;
		wire ack_in, fifo_full;
		wire [1:0] ioaddr;
		wire [7:0] databus;
		reg prev_buf_rdy, prev_new_data;

		assign new_data = !r_w & chip_enable & buf_rdy;
		assign tx_rdy = buf_rdy; //& !prev_new_data;
		// if chip enable is asserted, and buf_rdy isn't asserted
		// not only that, if the previous cycle buf rdy was rdy
		assign ack_in = prev_buf_rdy & !buf_rdy & chip_enable;
	// The baud rate is always 38400
	// Instantiate your SPART here
	spart spart0( .clk(clk_spart),
                 .rst(rst),
					  .iocs(iocs),
					  .iorw(r_w),
					  .rda(drdy),
					  .tbr(tbr),
					  .ioaddr(ioaddr),
					  .databus(databus),
					  .txd(tx_out),
					  .rxd(rx_in)
					);

	// Instantiate your driver here
	driver driver0(  .clk(clk_spart),
 			.rst(rst),
 			.data(data),
 			.rda(drdy),
			.iocs(iocs),
			.iorw(iorw),
 			.new_tx_data(new_data),
 			.tbr(tbr),
 			.ioaddr(ioaddr),
			.buf_rdy(buf_rdy),
			.fifo_full(fifo_full),
 			.databus(databus)
					 );

	

	always @(posedge clk, posedge rst) begin
		if (rst) begin
			ack <= 1'b0;
			prev_buf_rdy <= 1'b1;
			prev_new_data <= 1'b0;
		end else begin
			ack <= ack_in;
			prev_buf_rdy <= buf_rdy;
			prev_new_data <= new_data;
		end
	end


endmodule
