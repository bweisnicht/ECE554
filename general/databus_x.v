`default_nettype none

module databus_x (databus, databus_in, databus_in_out, databus_out);
	parameter WIDTH = 24;
	inout wire [(WIDTH - 1):0] databus;
	input wire [(WIDTH - 1):0] databus_in;
	output wire [(WIDTH - 1):0] databus_out;
	input wire databus_in_out;

	//         databus_in_out
	//                |
	//master_side     |       bidirectional side 
	//                |	
	//databus_in |-----------|   
	//---------->|           | databus
	//           |databus    |<------>
	//databus_out|module     |
	//<----------|           |
	//           |-----------|
	//
	//           (databus_in_out == 1) databus_in -> databus
	//           (databus_in_out == 0) databus    <- databus_out


	// this layout may ot may not work
        assign databus = databus_in_out ? databus_in : {WIDTH{1'bz}};

	assign databus_out = databus_in_out ? databus : {WIDTH{1'b0}};

endmodule

