`default_nettype none

module t_databus;

	reg [7:0] databus_values, rx_driver;
	reg [1:0] ioaddr;
	reg rda, tbr, iorw;
	wire [7:0] databus_connection, tx_wire;	
	integer sentinel;

	databus dbs0(.databus_driver(databus_connection), .databus_rx(rx_driver), 
				.ioaddr(ioaddr), .rda(rda), .tbr(tbr), .iorw(iorw), 
				.databus_tx(tx_wire));

	assign databus_connection = (iorw) ? 8'bz : databus_values;

	initial begin


		for (sentinel = 0; sentinel < 5; sentinel = sentinel + 1) begin
		ioaddr = $unsigned($random);
		iorw = $unsigned($random);
		tbr = $unsigned($random);
		rda = $unsigned($random);

		databus_values = $unsigned($random);
		rx_driver = $unsigned($random);

		#5;
		
		ioaddr = $unsigned($random);
		iorw = $unsigned($random);
		tbr = $unsigned($random);
		rda = $unsigned($random);

		databus_values = $unsigned($random);
		rx_driver = $unsigned($random);
		#5;

		ioaddr = $unsigned($random);
		iorw = $unsigned($random);
		tbr = $unsigned($random);
		rda = $unsigned($random);

		databus_values = $unsigned($random);
		rx_driver = $unsigned($random);
		#5;

		ioaddr = $unsigned($random);
		iorw = $unsigned($random);
		tbr = $unsigned($random);
		rda = $unsigned($random);

		databus_values = $unsigned($random);
		rx_driver = $unsigned($random);
		#5;

		ioaddr = $unsigned($random);
		iorw = $unsigned($random);
		tbr = $unsigned($random);
		rda = $unsigned($random);

		databus_values = $unsigned($random);
		rx_driver = $unsigned($random);
		#5;
		end
		$stop;
		
	end


endmodule
