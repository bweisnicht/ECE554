module displayplane (din, full, almost_full, clk, rst, addr, dout, fifo_wr_en, zero_zero, vsync, hsync, led);
	input [23:0] din;
	input full;
	input almost_full;
	input clk, rst;
	output reg [10:0] addr;
	output dout;
	output wire  fifo_wr_en;
	output wire zero_zero;
	output wire vsync;
	output wire hsync;
   output wire [3:0] led;

	reg [9:0] pixel_x;
	reg [9:0] pixel_y;
	
	assign vsync=pixel_y==10'b0;
	assign hsync=pixel_x==10'b0;
	
	assign zero_zero=(pixel_x==10'b0) && (pixel_y==10'b0);
	
	reg state;
	wire next_state;
	
	parameter IDLE = 1'b0, DRAW = 1'b1;
	parameter ROW_WIDTH = 10'd80, REPEAT = 3;
	
   //output logic
	assign fifo_wr_en = state==DRAW;
   
	wire [7:0] char_data;
	wire [9:0] char_addr;
	reg [1:0] subAddr;
   
   //assign led[0]=subAddr==2'b00;
   //assign led[1]=subAddr==2'b01;
   //assign led[2]=subAddr==2'b10;
   //assign led[3]=subAddr==2'b11;
   assign led = addr[3:0];

   reg [7:0] data_in;
	//assign char_addr = ((&pixel_x[2:0]) && (&pixel_y[2:0])) ? {7'd103,pixel_y[2:0]} :
                                                       //{data_in[6:0],pixel_y[2:0]};
   //assign char_addr = {7'd103,pixel_y[2:0]};
   //assign char_addr = (~pixel_y[0] && (&pixel_x[2:0])) ? {/*data_in[6:0]-1*/ 7'd103,pixel_y[2:0]} :
   //                                                         {data_in[6:0],pixel_y[2:0]} ;
   assign char_addr = {data_in[6:0], pixel_y[2:0]};

	//char_rom characters (.clka(clk),.addra(char_addr),.douta(char_data));
   font_rom_manual chars (.addr(char_addr),.dout(char_data));
	reg px;
	assign dout = px;
	always @(*) begin
		case(pixel_x[2:0]) 
			3'd0:px=char_data[7];
			3'd1:px=char_data[6];
			3'd2:px=char_data[5];
			3'd3:px=char_data[4];
			3'd4:px=char_data[3];
			3'd5:px=char_data[2];
			3'd6:px=char_data[1];
			3'd7:px=char_data[0];
		endcase
	end
	
	//next state logic

	assign next_state = (almost_full || full) ? IDLE : DRAW;
	

   //data_in decoding the 24-bit stuff
   always @(*) begin
      case(subAddr)
         2'b00:data_in=din[7:0];
         2'b01:data_in=din[15:8];
         2'b10:data_in=din[23:16];
         2'b11:data_in=8'd103;
      endcase
   end
	
	//sequential logic

	always @(posedge clk, posedge rst) begin
		if (rst) begin
			state <= IDLE;
			pixel_x <= 10'd0;
			pixel_y <= 10'd0;
         addr <= 0;
         subAddr<=2'b00;
		end else begin
			state <= next_state;
			case (state)
				IDLE: begin
							pixel_x <= pixel_x;
							pixel_y <= pixel_y;
                     addr <= addr;
					   end
					 
				DRAW: begin
                     //if(&pixel_y[2:0]) begin
                     //   if(&pixel_x[2:0]) begin
                     //      if(subAddr>=2'b10) begin
                     //         addr<=addr+1;
                     //         subAddr<=0;
                     //      end else begin
                     //         addr<=addr;
                     //         subAddr<=subAddr+1;
                     //      end
                     //   end
                     //end
							if (pixel_x==10'd640) begin
								pixel_x <= 10'd0;
                        if(&pixel_y[2:0]) begin
                           if(subAddr>=2'b10) begin
                              addr<=addr+1;
                              subAddr<=0;
                           end else begin
                              addr<=addr;
                              subAddr<=subAddr+1;
                           end
                        end else begin
                           if(subAddr==2'b10) begin
                              addr<=addr-26;
                              subAddr<=2'b00;
                           end else begin
                              addr<=addr-27;
                              subAddr<=subAddr+1;
                           end
                        end
								if(pixel_y==10'd479) begin
									pixel_y<=10'd0;
                           subAddr<=0;
                           addr<=0;
								end else begin
									pixel_y<=pixel_y+10'd1;
								end
							end else begin
                        if(&pixel_x[2:0]) begin
                           if(subAddr>=2'b10) begin
                              addr<=addr+1;
                              subAddr<=0;
                           end else begin
                              addr<=addr;
                              subAddr<=subAddr+1;
                           end
                        end
								pixel_x<=pixel_x+10'd1;
								pixel_y<=pixel_y;
							end
						end
			endcase
		end
	end	
endmodule
