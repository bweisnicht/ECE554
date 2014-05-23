`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// CoCF_MPAny: 
// Engineer: Hunter Stofferahn
// 
// Create Date:    14:19:45 03/12/2013 
// Design Name: 
// Module Name:    CF_INT 
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
module CF_INT( CF_MPD, CF_MPA, CF_MPBRDY, CF_MPIRQ, CF_MP_OE_Z, CF_MP_WE_Z, CF_MP_CE_Z, 
   FPGA_SYSTEMACE_CLOCK, rst, wtu_dataRequest, data_to_wtu, wr_to_wtu,  cf_rd_en,
	cf_rd_empty, cf_clk, cf_wr_en, cf_wr_full, int_CF,
	cf_data_out, cf_addr_out, cf_data_in, cf_addr_in,
	/* spart signals, delete */ clk, txd, rxd 
	);
	
	//io
	input FPGA_SYSTEMACE_CLOCK, rst, wtu_dataRequest;
	input CF_MPBRDY, CF_MPIRQ;
	input [23:0] cf_data_out;
	input [10:0] cf_addr_out;
						
	output reg [15:0] data_to_wtu;
	output reg wr_to_wtu; 
	output reg cf_rd_en, cf_rd_empty, cf_wr_en, cf_wr_full, int_CF;
	output wire [15:0] CF_MPD;
	output wire [6:0] CF_MPA;
	output wire CF_MP_OE_Z, CF_MP_WE_Z, CF_MP_CE_Z, cf_clk;
	output reg [23:0] cf_data_in;
	output reg [10:0] cf_addr_in;
	
	//misc reg
	reg [9:0] dataRate;
	reg [27:0] rootPoint, PrevPoint, CurrPoint, NextPoint, currSect, nextSect;
	reg [4:0] songNum, cycle;
	reg [3:0] state, nextstate;
	reg  en;
	wire DR, nextAddr;
	reg [1:0] cmd;
	reg [15:0] dataOut;
	wire [15:0] DataIn;
	reg [5:0] addrToACE;
	reg [15:0] dataBuffer[15:0];
	reg[4:0] count, nextcount; //mmuPtr,  wtuPtr
	wire[7:0] secCount;
	wire[15:0] lastWord;
	reg[15:0] buffcount;
	wire sys_Ace_clk;
	
   //Parameters
   //states
   localparam RSTING = 0;
   localparam CHKRDY = 1;
   localparam MPULBA = 2;
   localparam SSCC = 3; //set sector count control
   localparam SETCMD = 4;
   localparam CFSTATECHK = 5;
   localparam LOCK = 6;
   localparam CFGRST = 7;
   localparam STREAMING = 8; //
   localparam CLEARING = 9;
   localparam TRANS = 10;
   localparam RELEASELCK = 11;
   localparam TIMEOUT = 13;
   localparam LOCKCNFRM = 14;
	localparam ERRREAD = 15;
   
   
   //MPU register addresses
   localparam ROOTADDR = 27'h0;
   localparam BUSMODEREG = 6'h00;    //rw
   localparam STATUSREGL = 6'h02,    STATUSREGU = 6'h03; //read only
   localparam ERROREGL = 6'h04,      ERROREGU = 6'h05;   //read only
   localparam CFGLBAREGL = 6'h06,    CFGLBAREGU = 6'h07; //read only
   localparam MPULBAREGL = 6'h08,    MPULBAREGU = 6'h09; //rw
   localparam SECCNTCMDREG = 6'h0a;
   localparam VERSIONREG = 6'h0b;    //read only
   localparam CONTROLREGL = 6'h0c,   CONTROLREGU = 6'h0d; //rw
   localparam FATSTATREG = 6'h0e;     //read only
   localparam DATABUFREG = 6'h20;     //rw - addresses through 0x2f (multiple ports???)   
   
	
	
	// ~~~~~~~~~*****Body*****~~~~~~~~~ \\
	assign sys_Ace_clk = FPGA_SYSTEMACE_CLOCK;
	//*******Transmition protocol module instationation********
	//***** CMD  LIST******
   //  0 - write one
   //  1 - read one
   //  2 - write multiple
   //  3 - read multiple
   
	CF_CP prot( .CF_MPD(CF_MPD), .CF_MPA(CF_MPA), .CF_MPBRDY(CF_MPBRDY), .CF_MPIRQ(CF_MPIRQ), .CF_MP_OE_Z(CF_MP_OE_Z), .CF_MP_WE_Z(CF_MP_WE_Z), .CF_MP_CE_Z(CF_MP_CE_Z),.cmd(cmd), .enable(en), .clk(sys_Ace_clk), .DR(DR), .nextAddr(nextAddr),
      .dataO(DataIn), .datain(dataOut), .addr(addrToACE));
	
// ~~~~~~~~~*****CF interface main body******~~~~~~~~~ \\

// ~~~~~~~~~*****state machine******~~~~~~~~~ \\
   always @ (posedge sys_Ace_clk, posedge rst ) begin
	    if (rst ) begin
	       currSect <= 0;
	       state <= ERRREAD;
	       count <= 0;
	       end
	    else begin
	       currSect <= nextSect;
	       state <= nextstate;
	       count <= nextcount;
	    end
	end
	
//sector control
always @(*) begin
  nextSect <= currSect;
end
	
// ~~~~~~~~~*****Next  state logic******~~~~~~~~~ \\   
	always @(*) begin
	  case (state)
	//RSTING - write one 
	    RSTING : begin
	        nextcount <= 0;
	         if ( nextAddr == 1) begin
	           nextstate <= ERRREAD;
	           end
	         else begin
	           nextstate <= RSTING;
	           end	           
	    
	      end
//ERRREAD - check sys ace error
		 ERRREAD : begin
				nextcount <= 0;
	         if ( DR == 1) begin
	           nextstate <= CFSTATECHK;
	           end
	         else begin
	           nextstate <= ERRREAD;
	           end	 
		 end
// CFSTATECHK - read one 
	    CFSTATECHK : begin
	      nextcount <= 0;
	      if ( DR == 1) begin
	            if ( DataIn[3] == 0 && DataIn[8] == 1) begin
	               nextstate <= LOCK;
	               end
	            else begin
	                nextstate <= CFSTATECHK;
	                //cfError <= 1; use loop until timer expires then error
	                end
	            end
	            
	        else begin
	            nextstate <= CFSTATECHK;
	            //cfError <= 0;
	            end
	      end
//LOCK - send one & read one for lock confirmation
      LOCK : begin
        if ( count == 0) begin
          if ( nextAddr == 1) begin
	           nextcount <= 1;
	           nextstate <= LOCK;
	        end
	        else begin
	          nextcount <= 0;	
	          nextstate <= LOCK;          
	          end
	        end
	       else if ( count == 1) begin
	        
            if ( DR == 1) begin          
	             if ( DataIn[1] == 1 ) begin
	                nextstate <= CHKRDY;
	                nextcount <= 0;
	               end 
	             else begin
	                 nextstate <= LOCK;
	                 nextcount <= 1;
	                 //cfError <= 1; use loop until timer expires then error
	               end
	              end
	            else begin
	              nextcount <= 1;	
	              nextstate <= LOCK;          
	            end
	          end
	         else begin
	           nextstate <= LOCK;
	           nextcount <= 0; 
	         end
      end
// Check if ACE controller ready for command - read one	
	    CHKRDY : begin
	      nextcount <= 0;
	      if ( DR == 1) begin
	            if ( DataIn[3] == 1 ) begin
	               nextstate <= MPULBA;
	               end
	               //if (DataIn[4] == 1 ) error
	            else begin
	                nextstate <= CHKRDY;
	                end
	            end
	            
	        else begin
	            nextstate <= CHKRDY;
	            end
	      end
// set MPU LBA (logical block addr) for read - multiple write 
      MPULBA : begin 
         if ( nextAddr == 1 ) begin
				if ( count < 2) begin
				   nextstate <= MPULBA;
					nextcount <= count + 1;
					end
				else begin
				   nextstate <= SSCC;
					nextcount <= 16;
				   end
				end
			 else begin
			     nextcount <= count;
			     nextstate <= MPULBA;
			 end
        end 
// set sector count control - write one
      SSCC : begin
	        nextcount <= 0;
	         if ( nextAddr == 1) begin
	           nextstate <= SETCMD;
	           end
	         else begin
	           nextstate <= SSCC;
	           end	  
       
        end 
// set readmemcarddata command - write one
      SETCMD : begin
          nextcount <= 0;
	         if ( nextAddr == 1) begin
	           nextstate <= CFGRST;
	           end
	         else begin
	           nextstate <= SETCMD;
	           end	
      end 
// reset configuration controller - write one
      CFGRST : begin
          nextcount <= 0;
	         if ( nextAddr == 1) begin
	           nextstate <= STREAMING;
	           end
	         else begin
	           nextstate <= CFGRST;
	           end	
      end
// stream data, initialize buffer count variable(elsewhere), read data buffer until end - read multiple
      STREAMING : begin
			if ( nextAddr == 1 ) begin
				if ( count < 16) begin
				   nextstate <= STREAMING;
					 nextcount <= count + 1;
					end
				else begin
				   nextstate <= TRANS;
					 nextcount <= 16;
				   end
				end
			else if ( lastWord == buffcount ) begin
			    nextcount <= 16;
			    nextstate <= CLEARING; //trans then clearing?
			    end
			 else begin
			     nextcount <= count;
			     nextstate <= STREAMING;
			 end
      end
// clear configuration contoller reset - write one
      CLEARING : begin
          nextcount <= 0;
	         if ( nextAddr == 1) begin
	           nextstate <= RELEASELCK;
	           end
	         else begin
	           nextstate <= CLEARING;
	           end	
      end
//clearing buffer between sector count reads - none
      TRANS : begin //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
        nextcount <= count;
		  nextstate <= TRANS;//when appropriate read counter reaches end - go back to streaming
      end
      RELEASELCK : begin
          nextcount <= 0;
	         if ( nextAddr == 1) begin
	           nextstate <= TIMEOUT;
	           end
	         else begin
	           nextstate <= RELEASELCK;
	           end	
      end
  //  Neutral state - none 
      TIMEOUT : begin //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
        nextcount <= count;
		  nextstate <= TIMEOUT;// if command issued from MMU, or WTU buffer not full - go to lck
      end
    endcase
	    
	end 
	    
// ~~~~~~~~~*****Control Logic******~~~~~~~~~ \\
	always @(*) begin	
       
//RSTING - write one   
	    if ( state == RSTING ) begin
	        addrToACE <= BUSMODEREG;
	        dataOut <= 1;
	        cmd <= 0;
	        if (rst ) begin
	          en <= 0;
	          end
	        else begin
	          en <= 1;
	          end
	        /*if (nextAddr == 1) begin
	           en <= 0;
	           end
	        else begin
	          en <= 1;
	         end*/
	    end
		 
// ERRREAD - read one
		else if ( state == ERRREAD ) begin
			addrToACE <= ERROREGL;
			dataOut <= 0;
			cmd <= 1;
			en <= 1;
			end
	    
// CFSTATECHK - read one 
	    else if ( state == CFSTATECHK) begin
	        addrToACE <= STATUSREGL;
	        dataOut <= 0;
	        cmd <= 1;
	        //if (DR == 1) begin
	           //en <= 0;
	           //end
	        //else begin
	          en <= 1;
	          //end
	        end
	        
	        
	    
//LOCK - send one & read one for lock confirmation
	    else if ( state == LOCK ) begin
	      //if (nextAddr == 1 || DR == 1) begin
	           //en <= 0;
	           //end
	        //else begin
	          en <= 1;
	          //end
	          
	      if ( count == 0 ) begin
	        dataOut <= 15'h02;
	        cmd <= 0;
	        addrToACE <= CONTROLREGL;
	        
	      end
	      else if (count == 1) begin
	        dataOut <= 0;
	        cmd <= 1;
	        addrToACE <= STATUSREGL;
	        end
	      else begin
	        dataOut <= 0;
	        cmd <= 0;
	        addrToACE <=CONTROLREGL;
	        
	        end   	       
	    end
// Check if ACE controller ready for command - read one	    
    else if ( state ==  CHKRDY ) begin
          addrToACE <= STATUSREGU;
	        dataOut <= 0;
	        cmd <= 1;
	        //if (DR == 1) begin
	           //en <= 0;
	           //end
	        //else begin
	          en <= 1;
	          //end
	        	        
    end
// set MPU LBA (logical block addr) for read - multiple write 
    else if ( state == MPULBA ) begin
        if ( count == 0 ) begin
           addrToACE <=MPULBAREGL;
	        dataOut <= currSect[15:0] ;
	        cmd <= 0;
	     end 
	     else if( count == 1 ) begin
	        addrToACE <=MPULBAREGU;
	        dataOut[15:0] <= {4'b0,  currSect[27:16]};
	        cmd <= 0;
	        end
	     else begin
	        addrToACE <=0;
	        dataOut <= 0;
	        cmd <= 0;
	        end
	         
	     /*if (nextAddr == 1) begin
	           en <= 0;
	           end
	        else begin*/
	          en <= 1;
	          //end
    end
// set sector count control - write one
    else if ( state == SSCC ) begin
          addrToACE <=SECCNTCMDREG;
	        dataOut <= 1;
	        cmd <= 0;
	        /*if (nextAddr == 1) begin
	           en <= 0;
	           end
	        else begin*/
	          en <= 1;
	          //end
    end
// set readmemcarddata command - write one
    else if ( state == SETCMD ) begin
          addrToACE <=SECCNTCMDREG;
	        dataOut[10:8] <= 3;
	        dataOut[15:11] <= 0;
	        dataOut [7:0] <= 0;
	        cmd <= 0;
	        /*if (nextAddr == 1) begin
	           en <= 0;
	           end
	        else begin*/
	          en <= 1;
	          //end
      
    end
// reset configuration controller - write one
    else if ( state == CFGRST ) begin
          addrToACE <= CONTROLREGL;
	        dataOut <= 16'b0000_0000_0100_0000;
	        cmd <= 0;
	        /*if (nextAddr == 1) begin
	           en <= 0;
	           end
	        else begin*/
	          en <= 1;
	          //endd
      
    end
// stream data, initialize buffer count variable(elsewhere), read data buffer until end - read multiple
    else if ( state ==  STREAMING ) begin
			addrToACE <= DATABUFREG + count;
			cmd <= 3;
			//if ( buffcount == lastWord) begin
				//en <= 0;
			//end
			//else begin
				en <= 1;
			//end
			
    end
// clear configuration contoller reset - write one
    else if ( state ==  CLEARING ) begin
           addrToACE <= CONTROLREGL;
	        dataOut <= 0;
	        cmd <= 0;
	        /*if (nextAddr == 1) begin
	           en <= 0;
	           end
	        else begin*/
	          en <= 1;
	          //end
      
    end
//clearing buffer between sector count reads - none
    else if ( state ==  TRANS ) begin
        en <= 0;
        addrToACE <= 0;
        dataOut <= 0;
        cmd <= 0;
    end
//release lock - write one
    else if ( state ==  RELEASELCK ) begin
          addrToACE <= CONTROLREGL;
	        dataOut <= 0;
	        cmd <= 0;
	        /*if (nextAddr == 1) begin
	           en <= 0;
	           end
	        else begin*/
	          en <= 1;
	          //end
      
    end
//  Neutral state - none  
    else if ( state ==  TIMEOUT ) begin
        en <= 0;
        addrToACE <= 0;
        dataOut <= 0;
        cmd <= 0;
    end
end
	 
	assign secCount = 1;
	assign lastWord = secCount << 4; 
	
//******data buffer control *****


always @ (posedge sys_Ace_clk, posedge rst) begin
   dataBuffer[0] <= dataBuffer[0];
   dataBuffer[1] <= dataBuffer[1];
   dataBuffer[2] <= dataBuffer[2];
   dataBuffer[3] <= dataBuffer[3];
   dataBuffer[4] <= dataBuffer[4];
   dataBuffer[5] <= dataBuffer[5];
   dataBuffer[6] <= dataBuffer[6];
   dataBuffer[7] <= dataBuffer[7];
   dataBuffer[8] <= dataBuffer[8];
   dataBuffer[9] <= dataBuffer[9];
   dataBuffer[10] <= dataBuffer[10];
   dataBuffer[11] <= dataBuffer[11];
   dataBuffer[12] <= dataBuffer[12];
   dataBuffer[13] <= dataBuffer[13];
   dataBuffer[14] <= dataBuffer[14];
   dataBuffer[15] <= dataBuffer[15];
   if (rst) begin
      dataBuffer[0] <= 0;
      dataBuffer[1] <= 0;
      dataBuffer[2] <= 0;
      dataBuffer[3] <= 0;
      dataBuffer[4] <= 0;
      dataBuffer[5] <= 0;
      dataBuffer[6] <= 0;
      dataBuffer[7] <= 0;
      dataBuffer[8] <= 0;
      dataBuffer[9] <= 0;
      dataBuffer[10] <= 0;
      dataBuffer[11] <= 0;
      dataBuffer[12] <= 0;
      dataBuffer[13] <= 0;
      dataBuffer[14] <= 0;
      dataBuffer[15] <= 0;
   end
   else if ( (state == STREAMING) && ( count < 16 ) && (DR == 1) ) begin
      dataBuffer[count]  <= CF_MPD;
   end
    
end
	
	//*******Filter interface*******
	always @ (posedge sys_Ace_clk, posedge rst) begin
	    
	    end
	
	//*******MMU interface*******
	//instruction list - ffwrd, rwind, skipF, skipB, getdata
	assign cf_clk = sys_Ace_clk;


//*******spart interface***********************ADD SPART clk TX & RX TO I/O LIST!!!!!!!!!!!!!!!!!!!!!!
//spart registers and instantionation
input clk, rxd;
output txd;

reg iocs, iorw;
wire rda, tbr;
reg [1:0] ioaddr;
wire [7:0] databus;
reg [4:0] spartPtr, nxtSptPtr;
wire [15:0] readToCFdata;

 spart spt(.clk(clk), .rst(rst), .iocs(iocs), .iorw(iorw), .rda(rda),
    .tbr(tbr), .ioaddr(ioaddr), .databus(databus), .txd(txd), .rxd(rxd)  );
	 
//FIFO registers & instantiation
reg[15:0] f_din;
wire[7:0] f_dout;
wire rd_clk, wr_clk, empty, full;
reg wr_en, rd_en;

assign wr_clk = sys_Ace_clk;
assign rd_clk = clk;

	 FIFO fif( .din(f_din), .rd_clk(rd_clk), .rd_en(rd_en),	.rst(rst),
	.wr_clk(wr_clk), .wr_en(wr_en), .dout(f_dout),	.empty(empty),	.full(full));


//SPART controller
assign readToCFdata = dataBuffer[spartPtr];
assign databus = (!empty & tbr) ? f_dout[7:0] : 8'bz;

always @ (posedge clk ) begin
	if ( (0 == empty) && ( 1 == tbr ) ) begin
		rd_en <= 1;
		ioaddr <= 0;
		iocs <= 1;
		iorw <= 0;
		//assign data
		end
	else begin
		rd_en <= 0;
		ioaddr <= 0;
		iocs <= 0;
		iorw <= 0;
		//no data assigned
		end		
end

always @ (posedge clk, posedge rst ) begin
	if (rst ) begin
		spartPtr <= 0;
		end
	else begin
		spartPtr <=  nxtSptPtr;
		end
end

//FIFO input logic - RE-USE this code, should apply for WTU & MMU out (at least some sections)
always @(*) begin
	  case (state)
	//RSTING - write one 
	    RSTING : begin
	         if (( nextAddr == 1) && ( !full)) begin
						wr_en <= 1;
						f_din <= 16'h5253; //RS
	           end
	         else begin
						wr_en <= 0;
						f_din <= 0;
	           end	           
	    
	      end
// ERRREAD - read one
		ERRREAD : begin
				if ( DR == 1 ) begin
					wr_en <= 1;
					f_din <= CF_MPD;
					end
				else begin
					wr_en <= 0;
					f_din <= 0;
					end
				end
// CFSTATECHK - read one 
	    CFSTATECHK : begin
	      if (( DR == 1 )&& ( !full)) begin
	            if ( DataIn[3] == 0 && DataIn[8] == 1) begin
						wr_en <= 1;
						f_din <= 16'h4346; //CF
	               end
	            else begin
						wr_en <= 1;
						f_din <= 16'h4752; //ER
	                //cfError <= 1; use loop until timer expires then error
	                end
	            end
	            
	        else begin
	            wr_en <= 0;
					f_din <= 0;
	            end
	      end
//LOCK - send one & read one for lock confirmation
      LOCK : begin
        if ( (count == 0) && ( !full)) begin
          if ( nextAddr == 1) begin
					wr_en <= 1;
					f_din <= 16'h4c57; //LW
	        end
	        else begin
					wr_en <= 0;
					f_din <= 0;
	          end
	        end
	       else if ( (count == 1) && ( !full)) begin
	        
            if ( DR == 1) begin          
	             if ( DataIn[1] == 1 ) begin
							wr_en <= 1; 
							f_din <= 16'h4c43; //LC
	               end 
	             else begin
							wr_en <= 1;
							f_din <= 16'h4c45; //LE
	                 //cfError <= 1; use loop until timer expires then error
	               end
	              end
	            else begin   
						wr_en <= 0;
						f_din <= 0;
	            end
	          end
	         else begin
					wr_en <= 0;
					f_din <= 0;
	         end
      end
// Check if ACE controller ready for command - read one	
	    CHKRDY : begin
	      if ( (DR == 1) && ( !full)) begin
	            if ( DataIn[3] == 1 ) begin
						wr_en <= 1;
						f_din <= 16'h5244; //RD
	               end
	               //if (DataIn[4] == 1 ) error
	            else begin
						wr_en <= 1;
						f_din <= 16'h4e52; //NR
	                end
	            end
	            
	        else begin
						wr_en <= 0;
						f_din <= 0;
	            end
	      end
// set MPU LBA (logical block addr) for read - multiple write 
      MPULBA : begin 
         if (( nextAddr == 1 ) && ( !full)) begin
				if ( count < 2) begin
						wr_en <= 0;
						f_din <= 0;
					end
				else begin
						wr_en <= 1;
						f_din <= 16'h4c42; //LB
				   end
				end
			 else begin
			 			wr_en <= 0;
						f_din <= 0;
			 end
        end 
// set sector count control - write one
      SSCC : begin
	         if ( (nextAddr == 1) && ( !full)) begin
						wr_en <= 1;
						f_din <= 16'h5343; //SC
	           end
	         else begin
						wr_en <= 0;
						f_din <= 0;
	           end	  
       
        end 
// set readmemcarddata command - write one
      SETCMD : begin
	         if ( (nextAddr == 1) && ( !full)) begin
						wr_en <= 1;
						f_din <= 16'h434d; //CM
	           end
	         else begin
						wr_en <= 0;
						f_din <= 0;
	           end	
      end 
// reset configuration controller - write one
      CFGRST : begin
	         if ( (nextAddr == 1) && ( !full)) begin
						wr_en <= 1;
						f_din <= 16'h5254; //RT
	           end
	         else begin
						wr_en <= 0;
						f_din <= 0;
	           end	
      end
// stream data, initialize buffer count variable(elsewhere), read data buffer until end - read multiple
      STREAMING : begin
			if ( spartPtr < count ) begin
				wr_en <= 1;
				f_din <= readToCFdata;
				nxtSptPtr <= spartPtr + 1;
				end
			else begin
				wr_en <= 0;
				f_din <= 0;
				nxtSptPtr <= spartPtr;
				end
			end
// clear configuration contoller reset - write one
      CLEARING : begin
	         if ( nextAddr == 1) begin
						wr_en <= 1;
						f_din <= 16'h434c; //CL
	           end
	         else begin
						wr_en <= 0;
						f_din <= 0;
	           end	
      end
//clearing buffer between sector count reads - none
      TRANS : begin 
			if ( spartPtr < count ) begin
				wr_en <= 1;
				f_din <= 
				nxtSptPtr <= spartPtr + 1;
				end
			else begin
				wr_en <= 0;
				f_din <= 0;
				nxtSptPtr <= spartPtr;
				end
      end
      RELEASELCK : begin
	         if ( nextAddr == 1) begin
						wr_en <= 1;
						f_din <= 16'h524c; //RL
	           end
	         else begin
						wr_en <= 0;
						f_din <= 0;
	           end	
      end
  //  Neutral state - none 
      TIMEOUT : begin //
            // if command issued from MMU, or WTU buffer not full - go to lck
				wr_en <= 0;
				f_din <= 0;
      end
    endcase
	    
	end 


endmodule
