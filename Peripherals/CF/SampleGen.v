`timescale 1ns / 1ps
module SampleGen ( clk, rst, wtu_dataRequest, data_to_wtu, wr_to_wtu,  cf_rd_en,
        cf_rd_empty, cf_clk, cf_wr_en, cf_wr_full, int_CF,
        cf_data_out, cf_addr_out, cf_data_in, cf_addr_in);
             //io
        input clk, rst, wtu_dataRequest, cf_rd_empty, cf_wr_full;
        input [23:0] cf_data_out;
        input [10:0] cf_addr_out;
                                                
        output wire [23:0] data_to_wtu;
        output reg wr_to_wtu; 
        output reg cf_rd_en, cf_wr_en, int_CF;
        output reg [23:0] cf_data_in;
        output wire [10:0] cf_addr_in;
        output wire cf_clk;  
              
        //misc registers 
        reg [18:0] index, maxIndex;
        reg [6:0] ptr, oldPtr;
        reg [239:0] CurrSamp; // 30 chars
        reg datavalid;
        reg [23:0] audioData;
                  wire [23:0] douta, doutb, doutc, doutd;
                  wire [15:0] douta_pre, doutb_pre, doutc_pre, doutd_pre;
                  reg updateptr;
                  reg [4:0] sendCnt; 
        
                  //**** number of roms available to choose from ****
        localparam MAXPTR = 2;
                  localparam ROM1_MAX = 19'b0000000011101111110;       //all values need to be padded with *_MAX[0] = 0
                  localparam ROM2_MAX = 19'b0000000000000010100;         
                  localparam ROM3_MAX = 19'b0000000000000000110;        
                  localparam ROM4_MAX = 19'b0101110111000000000;       
                  
                  
                  
//************************** FILTER INTERFACE *********************************           
                                  
                  //rom instantition 
                  fiftyhz    fiftyhz( .addra(index[10:1]), .douta(douta_pre), .clka(clk) );
						fivekhz    fivekhz( .addra(index[3:1]), .douta(doutb_pre), .clka(clk) );
						twentykhz  twentykhz( .addra(index[2:1]), .douta(doutc_pre), .clka(clk) );
						combosin   combosin( .addra(index[17:1]), .douta(doutd_pre), .clka(clk) );
						
                  // data out assignments
                  assign douta = {douta_pre, 8'd0};
                  assign doutb = {doutb_pre, 8'd0};
                  assign doutc = {doutc_pre, 8'd0};
                  assign doutd = {doutd_pre, 8'd0};

 
always @(*) begin
      if(rst) begin
                                 audioData <= douta;
               end
      else begin
        case (ptr) 
          0:begin
             audioData <= douta;        // label depending on rom data output for sample
                   end
                1:begin
              audioData <= doutb;                       // label depending on rom data output for sample
                   end
                2:begin
            audioData <= doutc;                         // label depending on rom data output for sample
                                end
                3:begin
             audioData <= doutd;                        // label depending on rom data output for sample
                   end
                default begin
                   audioData <= douta;                          // label depending on rom data output for sample
                   end 
                endcase
             end
           end  
                
                  //WTU data assignment
                  assign data_to_wtu = audioData;    
             
                  //attach index to all roms address in port
             always @(posedge clk, posedge rst) begin
                if ( rst == 1) begin
                        index <= 0;
                        wr_to_wtu <= 0;
                        end
                else if ( wtu_dataRequest == 0 ) begin 
                    if ( index >= maxIndex ) begin
                                                index <= 0;
                                                wr_to_wtu <= 1;
                                                end
                                        else begin
                                                   index <= index + 1;
                                                wr_to_wtu <= 1;
                                        end
                                end
                                else begin
                                        index <= index;
                                        wr_to_wtu <= 0;
                                        end
             end

//************************** MMU INTERFACE *********************************              
   
// change song command block 1    
   always @(posedge clk, posedge rst) begin
                 if ( rst ) begin
                        datavalid <= 0;
                        cf_rd_en <= 0;
                        end
       else if ( cf_rd_empty == 0 ) begin
           datavalid <= 1;
           cf_rd_en <= 1;
       end
       else begin
           datavalid <= 0;
           cf_rd_en <= 0;           
       end
   end
 // change song command block 2         
        always @(posedge datavalid, posedge rst) begin
             if (rst) begin
                  ptr <= 0;
               end
             else if ( datavalid == 1 ) begin
                 if ( (cf_addr_out == 11'd0) && ( cf_data_out == 24'd1) ) begin
                     if ( ptr >= MAXPTR ) begin
                         ptr <= 0;
                         end
                       else begin
                          ptr <= ptr + 1;
                          end
                       end
                 else begin
                   ptr <= ptr + 1;
                   end             
               end
             else begin
                   ptr <= ptr;
               end
          end
        
          //data to MMU
          assign cf_addr_in = {5'b00000, sendCnt};
          
          // CF interupt
          always @(posedge clk, posedge rst) begin
             if (rst) begin
                                int_CF <= 0;
                    oldPtr <= 7'b11111_11;
                 end
             else if ( updateptr ) begin
                                int_CF <= 0;
                oldPtr <= ptr;
                          end
             else begin
                                int_CF <= 0;
                 oldPtr <= oldPtr;
                 end
             end
             
          always @(posedge clk) begin
              if (rst) begin
                    sendCnt <= 0;
                    cf_wr_en <= 0;
                 end
              else if (updateptr) begin
                      sendCnt <= 0;
                      cf_wr_en <= 1;
                   end
               else if( ptr != oldPtr ) begin //send data to MMU
                      sendCnt <= sendCnt + 1;
                      cf_wr_en <= 1;
                      end
               else begin
                    sendCnt <= 0;
                    cf_wr_en <= 0;
                 end      
            end
            
            always@(*) begin
                if (ptr != oldPtr ) begin
                    updateptr <= 0; 
                   case ( sendCnt )
                        5'd0 : cf_data_in <= 24'd0; 
                        5'd1 : cf_data_in <= {16'd0, CurrSamp[7:0]};
                   5'd2 : cf_data_in <= {16'd0, CurrSamp[15:8]};
                   5'd3 : cf_data_in <= {16'd0, CurrSamp[23:16]};
                   5'd4 : cf_data_in <= {16'd0, CurrSamp[31:24]};
                   5'd5 : cf_data_in <= {16'd0, CurrSamp[39:32]};
                   5'd6 : cf_data_in <= {16'd0, CurrSamp[47:40]};
                   5'd7 : cf_data_in <= {16'd0, CurrSamp[55:48]};
                   5'd8 : cf_data_in <= {16'd0, CurrSamp[63:56]};
                   5'd9 : cf_data_in <= {16'd0, CurrSamp[71:64]};
                   5'd10 : cf_data_in <= {16'd0, CurrSamp[79:72]};
                   5'd11 : cf_data_in <= {16'd0, CurrSamp[87:80]};
                   5'd12 : cf_data_in <= {16'd0, CurrSamp[95:88]};
                   5'd13 : cf_data_in <= {16'd0, CurrSamp[103:96]};
                   5'd14 : cf_data_in <= {16'd0, CurrSamp[111:104]};
                   5'd15 : cf_data_in <= {16'd0, CurrSamp[119:112]};
                   5'd16 : cf_data_in <= {16'd0, CurrSamp[127:120]};
                   5'd17 : cf_data_in <= {16'd0, CurrSamp[135:128]};
                   5'd18 : cf_data_in <= {16'd0, CurrSamp[143:136]};
                   5'd19 : cf_data_in <= {16'd0, CurrSamp[151:144]};
                   5'd20 : cf_data_in <= {16'd0, CurrSamp[159:152]};
                   5'd21 : cf_data_in <= {16'd0, CurrSamp[167:160]};
                   5'd22 : cf_data_in <= {16'd0, CurrSamp[175:168]};
                   5'd23 : cf_data_in <= {16'd0, CurrSamp[183:176]};
                   5'd24 : cf_data_in <= {16'd0, CurrSamp[191:184]};
                   5'd25 : cf_data_in <= {16'd0, CurrSamp[199:192]};
                   5'd26 : cf_data_in <= {16'd0, CurrSamp[207:200]};
                   5'd27 : cf_data_in <= {16'd0, CurrSamp[215:208]};
                   5'd28 : cf_data_in <= {16'd0, CurrSamp[223:216]};
                   5'd29 : cf_data_in <= {16'd0, CurrSamp[231:224]};
                   5'd30 : begin
                          cf_data_in <= {16'd0, CurrSamp[239:232]}; 
                          updateptr <= 1;   
                          end
                   default begin
                          cf_data_in <= 24'd0;
                          updateptr <= 0; 
                         end
                     endcase
                     end
                   else begin
                       cf_data_in <= 24'd0;
                       updateptr <= 0; 
                       end
                end
            
          // assigning audio track name and rom file
          always @(posedge clk) begin
      if(rst) begin
             CurrSamp[7:0] <= 8'd0;
             CurrSamp[15:8] <= 8'd0;
             CurrSamp[23:16] <= 8'd0;
             CurrSamp[31:24] <= 8'd0;
             CurrSamp[39:32] <= 8'd0;
             CurrSamp[47:40] <= 8'd0;
             CurrSamp[55:48] <= 8'd0;
             CurrSamp[63:56] <= 8'd0;
             CurrSamp[71:64] <= 8'd0;
             CurrSamp[79:72] <= 8'd0;
             CurrSamp[87:80] <= 8'd0;
             CurrSamp[95:88] <= 8'd0;
             CurrSamp[103:96] <= 8'd0;
             CurrSamp[111:104] <= 8'd0;
             CurrSamp[119:112] <= 8'd0;
             CurrSamp[127:120] <= 8'd0;
             CurrSamp[135:128] <= 8'd0;
             CurrSamp[143:136] <= 8'd0;
             CurrSamp[151:144] <= 8'd0;
             CurrSamp[159:152] <= 8'd0;
             CurrSamp[167:160] <= 8'd0;
             CurrSamp[175:168] <= 8'd0;
             CurrSamp[183:176] <= 8'd0;
             CurrSamp[191:184] <= 8'd0;
             CurrSamp[199:192] <= 8'd0;
             CurrSamp[207:200] <= 8'd0;
             CurrSamp[215:208] <= 8'd0;
             CurrSamp[223:216] <= 8'd0;
             CurrSamp[231:224] <= 8'd0;
             CurrSamp[239:232] <= 8'd0;
               maxIndex <= ROM1_MAX;                      
               end
      else begin
        case (ptr) 
          0:begin // one cycle of 750Hz sinewave in 64 20-bit samples
             CurrSamp[7:0] <= 8'd22;
             CurrSamp[15:8] <= 8'd20;
             CurrSamp[23:16] <= 8'd15;
             CurrSamp[31:24] <= 8'd39;
             CurrSamp[39:32] <= 8'd89;
             CurrSamp[47:40] <= 8'd94; //space I think
             CurrSamp[55:48] <= 8'd82; 
             CurrSamp[63:56] <= 8'd72;
             CurrSamp[71:64] <= 8'd77;
             CurrSamp[79:72] <= 8'd68;
             CurrSamp[87:80] <= 8'd86;
             CurrSamp[95:88] <= 8'd64;
             CurrSamp[103:96] <= 8'd85;
             CurrSamp[111:104] <= 8'd68;
             CurrSamp[119:112] <= 8'd94;
             CurrSamp[127:120] <= 8'd94;
             CurrSamp[135:128] <= 8'd94;
             CurrSamp[143:136] <= 8'd94;
             CurrSamp[151:144] <= 8'd94;
             CurrSamp[159:152] <= 8'd94;
             CurrSamp[167:160] <= 8'd94;
             CurrSamp[175:168] <= 8'd94;
             CurrSamp[183:176] <= 8'd94;
             CurrSamp[191:184] <= 8'd94;
             CurrSamp[199:192] <= 8'd94;
             CurrSamp[207:200] <= 8'd94;
             CurrSamp[215:208] <= 8'd94;
             CurrSamp[223:216] <= 8'd94;
             CurrSamp[231:224] <= 8'd94;
             CurrSamp[239:232] <= 8'd94;
                    maxIndex <= ROM1_MAX;                                  
                   end
                1:begin
             CurrSamp[7:0] <= 8'd0;
             CurrSamp[15:8] <= 8'd0;
             CurrSamp[23:16] <= 8'd0;
             CurrSamp[31:24] <= 8'd0;
             CurrSamp[39:32] <= 8'd0;
             CurrSamp[47:40] <= 8'd0;
             CurrSamp[55:48] <= 8'd0;
             CurrSamp[63:56] <= 8'd0;
             CurrSamp[71:64] <= 8'd0;
             CurrSamp[79:72] <= 8'd0;
             CurrSamp[87:80] <= 8'd0;
             CurrSamp[95:88] <= 8'd0;
             CurrSamp[103:96] <= 8'd0;
             CurrSamp[111:104] <= 8'd0;
             CurrSamp[119:112] <= 8'd0;
             CurrSamp[127:120] <= 8'd0;
             CurrSamp[135:128] <= 8'd0;
             CurrSamp[143:136] <= 8'd0;
             CurrSamp[151:144] <= 8'd0;
             CurrSamp[159:152] <= 8'd0;
             CurrSamp[167:160] <= 8'd0;
             CurrSamp[175:168] <= 8'd0;
             CurrSamp[183:176] <= 8'd0;
             CurrSamp[191:184] <= 8'd0;
             CurrSamp[199:192] <= 8'd0;
             CurrSamp[207:200] <= 8'd0;
             CurrSamp[215:208] <= 8'd0;
             CurrSamp[223:216] <= 8'd0;
             CurrSamp[231:224] <= 8'd0;
             CurrSamp[239:232] <= 8'd0;
             
                     maxIndex <= ROM2_MAX;
                   end
                2:begin
             CurrSamp[7:0] <= 8'd0;
             CurrSamp[15:8] <= 8'd0;
             CurrSamp[23:16] <= 8'd0;
             CurrSamp[31:24] <= 8'd0;
             CurrSamp[39:32] <= 8'd0;
             CurrSamp[47:40] <= 8'd0;
             CurrSamp[55:48] <= 8'd0;
             CurrSamp[63:56] <= 8'd0;
             CurrSamp[71:64] <= 8'd0;
             CurrSamp[79:72] <= 8'd0;
             CurrSamp[87:80] <= 8'd0;
             CurrSamp[95:88] <= 8'd0;
             CurrSamp[103:96] <= 8'd0;
             CurrSamp[111:104] <= 8'd0;
             CurrSamp[119:112] <= 8'd0;
             CurrSamp[127:120] <= 8'd0;
             CurrSamp[135:128] <= 8'd0;
             CurrSamp[143:136] <= 8'd0;
             CurrSamp[151:144] <= 8'd0;
             CurrSamp[159:152] <= 8'd0;
             CurrSamp[167:160] <= 8'd0;
             CurrSamp[175:168] <= 8'd0;
             CurrSamp[183:176] <= 8'd0;
             CurrSamp[191:184] <= 8'd0;
             CurrSamp[199:192] <= 8'd0;
             CurrSamp[207:200] <= 8'd0;
             CurrSamp[215:208] <= 8'd0;
             CurrSamp[223:216] <= 8'd0;
             CurrSamp[231:224] <= 8'd0;
             CurrSamp[239:232] <= 8'd0;
                      maxIndex <= ROM3_MAX;
                   end
                default begin
             CurrSamp[7:0] <= 8'd0;
             CurrSamp[15:8] <= 8'd0;
             CurrSamp[23:16] <= 8'd0;
             CurrSamp[31:24] <= 8'd0;
             CurrSamp[39:32] <= 8'd0;
             CurrSamp[47:40] <= 8'd0;
             CurrSamp[55:48] <= 8'd0;
             CurrSamp[63:56] <= 8'd0;
             CurrSamp[71:64] <= 8'd0;
             CurrSamp[79:72] <= 8'd0;
             CurrSamp[87:80] <= 8'd0;
             CurrSamp[95:88] <= 8'd0;
             CurrSamp[103:96] <= 8'd0;
             CurrSamp[111:104] <= 8'd0;
             CurrSamp[119:112] <= 8'd0;
             CurrSamp[127:120] <= 8'd0;
             CurrSamp[135:128] <= 8'd0;
             CurrSamp[143:136] <= 8'd0;
             CurrSamp[151:144] <= 8'd0;
             CurrSamp[159:152] <= 8'd0;
             CurrSamp[167:160] <= 8'd0;
             CurrSamp[175:168] <= 8'd0;
             CurrSamp[183:176] <= 8'd0;
             CurrSamp[191:184] <= 8'd0;
             CurrSamp[199:192] <= 8'd0;
             CurrSamp[207:200] <= 8'd0;
             CurrSamp[215:208] <= 8'd0;
             CurrSamp[223:216] <= 8'd0;
             CurrSamp[231:224] <= 8'd0;
             CurrSamp[239:232] <= 8'd0;
                    maxIndex <= ROM4_MAX; 
                   end 
                endcase
             end
           end  
             
                             
             
endmodule

