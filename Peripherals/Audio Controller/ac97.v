`timescale 1ns/100ps

`define IDLE    2'b00
`define FRAME   2'b01
`define REMOV   2'b10

`define _DEBUG_

module LM4550 (
    BIT_CLK, 
    SDATA_OUT,
    RESET, 
    SYNC, 
    SDATA_IN
);

output BIT_CLK;
output SDATA_OUT;
input RESET;
input SYNC;
input SDATA_IN;

reg BIT_CLK;
reg SDATA_OUT;
reg [255:0] frame;
integer bit_cnt;
initial bit_cnt = 0;

// bit clock (12.288 MHz)
initial BIT_CLK = 0;
//always #40.69 BIT_CLK <= ~BIT_CLK;
always #40 BIT_CLK <= ~BIT_CLK;

// bit counter
reg state_cnt;
always @(posedge BIT_CLK)
if(~RESET) state_cnt <= 0;
else begin
    case (state_cnt)
        0: if(SYNC) begin
                state_cnt <= 1;
                bit_cnt <= 255;
           end
        1: begin
                bit_cnt <= bit_cnt - 1;
                if(bit_cnt == 1) state_cnt <= 0;
           end
    endcase
end

// detect valid frame
wire start_recv;
assign start_recv = SYNC && SDATA_IN == 1 && bit_cnt == 255;

// recv state
reg [1:0] state_recv;
always @(negedge BIT_CLK)
if(~RESET) state_recv <= `IDLE;
else begin
    case (state_recv)
        `IDLE : begin
                    if(bit_cnt==255) begin
                        if(start_recv) begin
                            frame[bit_cnt] <= SDATA_IN;
                            state_recv <= `FRAME;
                        end else state_recv <= `REMOV;
                    end
                end
        `FRAME: begin
                    if(bit_cnt == 0) state_recv <= `IDLE;
                    else frame[bit_cnt] <= SDATA_IN;
                end
        `REMOV: begin
                    if(bit_cnt == 0) state_recv <= `IDLE;
                    else frame[bit_cnt] <= 0;
                end
    endcase
end

// LM4550 register
reg  [15:0] ac97r_reset;
reg  [15:0] ac97r_mastervol;
reg  [15:0] ac97r_hpvol;
reg  [15:0] ac97r_monovol;
reg  [15:0] ac97r_pcbeepvol;
reg  [15:0] ac97r_phonevol;
reg  [15:0] ac97r_micvol;
reg  [15:0] ac97r_lineinvol;
reg  [15:0] ac97r_cdvol;
reg  [15:0] ac97r_videovol;
reg  [15:0] ac97r_auxvol;
reg  [15:0] ac97r_pcmoutvol;
reg  [15:0] ac97r_recsel;
reg  [15:0] ac97r_recgain;
reg  [15:0] ac97r_genpurpose;
wire [15:0] ac97r_3dcontrol = 16'h0101; // read only
reg  [15:0] ac97r_powerdown;
reg  [15:0] ac97r_extaudioid;
reg  [15:0] ac97r_extaudiocont;
reg  [15:0] ac97r_pcmdacrate;
reg  [15:0] ac97r_pcmadcrate;
reg  [15:0] ac97r_chainincont;
wire [15:0] ac97r_vendorid1 = 16'h4E53; // read only
wire [15:0] ac97r_vendorid2 = 16'h4350; // read only

// sdata in
reg  [15:0] ac97r_addr;
always @(negedge BIT_CLK)
if(~RESET) begin
    ac97r_addr          <= 16'h0;
    ac97r_reset         <= 16'h0D50;
    ac97r_mastervol     <= 16'h8000;
    ac97r_hpvol         <= 16'h8000;
    ac97r_monovol       <= 16'h8000;
    ac97r_pcbeepvol     <= 16'h0;
    ac97r_phonevol      <= 16'h8008;
    ac97r_micvol        <= 16'h8008;
    ac97r_lineinvol     <= 16'h8008;
    ac97r_cdvol         <= 16'h8008;
    ac97r_videovol      <= 16'h8008;
    ac97r_auxvol        <= 16'h8008;
    ac97r_pcmoutvol     <= 16'h8008;
    ac97r_recsel        <= 16'h0;
    ac97r_recgain       <= 16'h8000;
    ac97r_genpurpose    <= 16'h0;
    ac97r_powerdown     <= 16'h000F; // assume that codec is ready
    ac97r_extaudioid    <= 16'h0201;
    ac97r_extaudiocont  <= 16'h0;
    ac97r_pcmdacrate    <= 16'hBB80;
    ac97r_pcmadcrate    <= 16'hBB80;
    ac97r_chainincont   <= 16'h0;
end else begin
    if(state_recv == `FRAME) begin
        if(bit_cnt == 219 && frame[254]) begin
            ac97r_addr <= frame[238:232];
`ifdef _DEBUG_
            $display("INFO: AC97 Codec Register Address: %h (%t)", 
                                                frame[238:232], $time);
`endif
        end
        else if(bit_cnt == 199 && frame[253] && ~frame[239]) begin
`ifdef _DEBUG_
            $display("INFO: AC97 Codec Register Data: %h (%t)", 
                                                frame[219:204], $time);
`endif
            if(ac97r_addr == 16'h0) ac97r_reset <= 16'h0D50;
            else if(ac97r_addr == 16'h2) ac97r_mastervol <= frame[219:204];
            else if(ac97r_addr == 16'h4) ac97r_hpvol <= frame[219:204];
            else if(ac97r_addr == 16'h6) ac97r_monovol <= frame[219:204];
            else if(ac97r_addr == 16'hA) ac97r_pcbeepvol <= frame[219:204];
            else if(ac97r_addr == 16'hC) ac97r_phonevol <= frame[219:204];
            else if(ac97r_addr == 16'hE) ac97r_micvol <= frame[219:204];
            else if(ac97r_addr == 16'h10) ac97r_lineinvol <= frame[219:204];
            else if(ac97r_addr == 16'h12) ac97r_cdvol <= frame[219:204];
            else if(ac97r_addr == 16'h14) ac97r_videovol <= frame[219:204];
            else if(ac97r_addr == 16'h16) ac97r_auxvol <= frame[219:204];
            else if(ac97r_addr == 16'h18) ac97r_pcmoutvol <= frame[219:204];
            else if(ac97r_addr == 16'h1A) ac97r_recsel <= frame[219:204];
            else if(ac97r_addr == 16'h1C) ac97r_recgain <= frame[219:204];
            else if(ac97r_addr == 16'h20) ac97r_genpurpose <= frame[219:204];
            else if(ac97r_addr == 16'h26) 
                ac97r_powerdown <= {frame[219:208], 4'hF};
            else if(ac97r_addr == 16'h28) ac97r_extaudioid <= frame[219:204];
            else if(ac97r_addr == 16'h2A) ac97r_extaudiocont <= frame[219:204];
            else if(ac97r_addr == 16'h2C) ac97r_pcmadcrate <= frame[219:204];
            else if(ac97r_addr == 16'h32) ac97r_pcmdacrate <= frame[219:204];
            else if(ac97r_addr == 16'h74) ac97r_chainincont <= frame[219:204];
        end
        else if(bit_cnt == 179 && frame[252]) begin
            //if (frame[199:184] != 16'h0000) // test
            $display("INFO: AC97 Codec Left Audio Data: %h (%t)", 
                                                frame[199:184], $time);
        end
        else if(bit_cnt == 159 && frame[251]) begin
            //if (frame[199:184] != 16'h0000) // test
            $display("INFO: AC97 Codec Right Audio Data: %h (%t)", 
                                                frame[179:164], $time);
        end
    end
end

/* 
// for debugging
always @(negedge BIT_CLK)
if(bit_cnt == 239)
    $display("INFO: slot0: 0x%h", frame[255:240]); // Tag (slot valid bits)
else if(bit_cnt == 219)
    $display("INFO: slot1: 0x%h", frame[239:220]); // Read/Write, Address
else if(bit_cnt == 199)
    $display("INFO: slot2: 0x%h", frame[219:200]); // Control Data
else if(bit_cnt == 179)
    $display("INFO: slot3: 0x%h", frame[199:180]); // PCM Left Data
else if(bit_cnt == 159)
    $display("INFO: slot4: 0x%h", frame[179:160]); // PCM Right Data
*/

// previous frame info
reg read;
reg val_l;
reg val_r;
reg [15:0] ac97r_addr_prev;
// sdata out
reg state_send;
always @(posedge BIT_CLK)
if(~RESET) begin
    state_send <= `IDLE;
    read <= 0;
    val_l <= 0;
    val_r <= 0;
    ac97r_addr_prev <= 16'hffff;
end else begin
    case (state_send)
        `IDLE : if(SYNC) begin
                    read <= frame[239];
                    val_l <= frame[252];
                    val_r <= frame[251];
                    ac97r_addr_prev <= ac97r_addr;
                    SDATA_OUT <= 1; // set codec ready bit
                    state_send <= `FRAME;
                end
        `FRAME: begin
                    if(bit_cnt <= 255 && bit_cnt > 253)
                        SDATA_OUT <= frame[bit_cnt-1]; // slot1, 2 valid bit
                    else if(bit_cnt <= 253 && bit_cnt > 239)
                        SDATA_OUT <= 0; // slot3, 4 and reserved bits
                    else if(bit_cnt <= 239 && bit_cnt > 232) begin
                        if(read) SDATA_OUT <= frame[bit_cnt-1];//echo addr
                        else SDATA_OUT <= 0;
                    end
                    else if(bit_cnt == 232) begin
                        if(val_l) SDATA_OUT <= 1; // slot3 req bit
                        else SDATA_OUT <= 0;
                    end
                    else if(bit_cnt == 231) begin
                        if(val_r) SDATA_OUT <= 1; // slot4 req bit
                        else SDATA_OUT <= 0;
                    end
                    else if(bit_cnt <= 230 && bit_cnt > 220)
                        SDATA_OUT <= 0; // slot5~9 req and reserved bits
                    else if(bit_cnt <= 220 && bit_cnt > 204) begin

                        if(ac97r_addr_prev == 16'h0) 
                            SDATA_OUT <= ac97r_reset[bit_cnt-205]; 
                        else if(ac97r_addr_prev == 16'h2) 
                            SDATA_OUT <= ac97r_mastervol[bit_cnt-205]; 
                        else if(ac97r_addr_prev == 16'h4) 
                            SDATA_OUT <= ac97r_hpvol[bit_cnt-205]; 
                        else if(ac97r_addr_prev == 16'h6) 
                            SDATA_OUT <= ac97r_monovol[bit_cnt-205]; 
                        else if(ac97r_addr_prev == 16'hA) 
                            SDATA_OUT <= ac97r_pcbeepvol[bit_cnt-205]; 
                        else if(ac97r_addr_prev == 16'hC) 
                            SDATA_OUT <= ac97r_phonevol[bit_cnt-205]; 
                        else if(ac97r_addr_prev == 16'hE) 
                            SDATA_OUT <= ac97r_micvol[bit_cnt-205]; 
                        else if(ac97r_addr_prev == 16'h10) 
                            SDATA_OUT <= ac97r_lineinvol[bit_cnt-205]; 
                        else if(ac97r_addr_prev == 16'h12) 
                            SDATA_OUT <= ac97r_cdvol[bit_cnt-205]; 
                        else if(ac97r_addr_prev == 16'h14) 
                            SDATA_OUT <= ac97r_videovol[bit_cnt-205]; 
                        else if(ac97r_addr_prev == 16'h16) 
                            SDATA_OUT <= ac97r_auxvol[bit_cnt-205]; 
                        else if(ac97r_addr_prev == 16'h18) 
                            SDATA_OUT <= ac97r_pcmoutvol[bit_cnt-205]; 
                        else if(ac97r_addr_prev == 16'h1A) 
                            SDATA_OUT <= ac97r_recsel[bit_cnt-205]; 
                        else if(ac97r_addr_prev == 16'h1C) 
                            SDATA_OUT <= ac97r_recgain[bit_cnt-205]; 
                        else if(ac97r_addr_prev == 16'h20) 
                            SDATA_OUT <= ac97r_genpurpose[bit_cnt-205]; 
                        else if(ac97r_addr_prev == 16'h26) 
                            SDATA_OUT <= ac97r_powerdown[bit_cnt-205]; 
                        else if(ac97r_addr_prev == 16'h28) 
                            SDATA_OUT <= ac97r_extaudioid[bit_cnt-205]; 
                        else if(ac97r_addr_prev == 16'h2A) 
                            SDATA_OUT <= ac97r_extaudiocont[bit_cnt-205]; 
                        else if(ac97r_addr_prev == 16'h2C) 
                            SDATA_OUT <= ac97r_pcmadcrate[bit_cnt-205]; 
                        else if(ac97r_addr_prev == 16'h32) 
                            SDATA_OUT <= ac97r_pcmdacrate[bit_cnt-205]; 
                        else if(ac97r_addr_prev == 16'h74) 
                            SDATA_OUT <= ac97r_chainincont[bit_cnt-205]; 
                        else
                            SDATA_OUT <= 0; 

                    end
                    else if(bit_cnt <= 204 && bit_cnt > 1)
                            SDATA_OUT <= 0;
                    else if(bit_cnt == 1) state_send <= `IDLE;
                end
    endcase
end
endmodule

