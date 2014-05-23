////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: K.39
//  \   \         Application: netgen
//  /   /         Filename: char_rom.v
// /___/   /\     Timestamp: Tue Apr 30 12:26:28 2013
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -w -sim -ofmt verilog D:\Eichers\ece554\Peripherals\VGA\VGA-Project\tmp\_cg\char_rom.ngc D:\Eichers\ece554\Peripherals\VGA\VGA-Project\tmp\_cg\char_rom.v 
// Device	: 2vp30ff896-6
// Input file	: D:/Eichers/ece554/Peripherals/VGA/VGA-Project/tmp/_cg/char_rom.ngc
// Output file	: D:/Eichers/ece554/Peripherals/VGA/VGA-Project/tmp/_cg/char_rom.v
// # of Modules	: 1
// Design Name	: char_rom
// Xilinx        : C:\Xilinx\10.1\ISE
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Development System Reference Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module char_rom (
  clka, wea, addra, douta, dina
);
  input clka;
  input [0 : 0] wea;
  input [3 : 0] addra;
  output [15 : 0] douta;
  input [15 : 0] dina;
  
  // synthesis translate_off
  
  wire \BU2/N1 ;
  wire NLW_VCC_P_UNCONNECTED;
  wire NLW_GND_G_UNCONNECTED;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOA<31>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOA<30>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOA<29>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOA<28>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOA<27>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOA<26>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOA<23>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOA<22>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOA<21>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOA<20>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOA<19>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOA<18>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOA<15>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOA<14>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOA<13>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOA<12>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOA<11>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOA<10>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOA<7>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOA<6>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOA<5>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOA<4>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOA<3>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOA<2>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOPA<3>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOPA<2>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOPA<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOPA<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOB<31>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOB<30>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOB<29>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOB<28>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOB<27>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOB<26>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOB<23>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOB<22>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOB<21>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOB<20>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOB<19>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOB<18>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOB<15>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOB<14>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOB<13>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOB<12>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOB<11>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOB<10>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOB<7>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOB<6>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOB<5>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOB<4>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOB<3>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOB<2>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOPB<3>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOPB<2>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOPB<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOPB<0>_UNCONNECTED ;
  wire [15 : 0] dina_2;
  wire [3 : 0] addra_3;
  wire [0 : 0] wea_4;
  wire [15 : 0] douta_5;
  wire [0 : 0] \BU2/doutb ;
  assign
    wea_4[0] = wea[0],
    addra_3[3] = addra[3],
    addra_3[2] = addra[2],
    addra_3[1] = addra[1],
    addra_3[0] = addra[0],
    douta[15] = douta_5[15],
    douta[14] = douta_5[14],
    douta[13] = douta_5[13],
    douta[12] = douta_5[12],
    douta[11] = douta_5[11],
    douta[10] = douta_5[10],
    douta[9] = douta_5[9],
    douta[8] = douta_5[8],
    douta[7] = douta_5[7],
    douta[6] = douta_5[6],
    douta[5] = douta_5[5],
    douta[4] = douta_5[4],
    douta[3] = douta_5[3],
    douta[2] = douta_5[2],
    douta[1] = douta_5[1],
    douta[0] = douta_5[0],
    dina_2[15] = dina[15],
    dina_2[14] = dina[14],
    dina_2[13] = dina[13],
    dina_2[12] = dina[12],
    dina_2[11] = dina[11],
    dina_2[10] = dina[10],
    dina_2[9] = dina[9],
    dina_2[8] = dina[8],
    dina_2[7] = dina[7],
    dina_2[6] = dina[6],
    dina_2[5] = dina[5],
    dina_2[4] = dina[4],
    dina_2[3] = dina[3],
    dina_2[2] = dina[2],
    dina_2[1] = dina[1],
    dina_2[0] = dina[0];
  VCC   VCC_0 (
    .P(NLW_VCC_P_UNCONNECTED)
  );
  GND   GND_1 (
    .G(NLW_GND_G_UNCONNECTED)
  );
  RAMB16_S36_S36 #(
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .SRVAL_A ( 36'h000000000 ),
    .SRVAL_B ( 36'h000000000 ),
    .INIT_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .SIM_COLLISION_CHECK ( "ALL" ),
    .INIT_A ( 36'h000000000 ),
    .INIT_B ( 36'h000000000 ),
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ))
  \BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram  (
    .CLKA(clka),
    .CLKB(clka),
    .ENA(\BU2/N1 ),
    .ENB(\BU2/N1 ),
    .SSRA(\BU2/doutb [0]),
    .SSRB(\BU2/doutb [0]),
    .WEA(wea_4[0]),
    .WEB(wea_4[0]),
    .ADDRA({\BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], addra_3[3], addra_3[2], addra_3[1], addra_3[0], \BU2/doutb [0]}),
    .ADDRB({\BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], addra_3[3], addra_3[2], addra_3[1], addra_3[0], \BU2/N1 }),
    .DIA({\BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], dina_2[7], dina_2[6], \BU2/doutb [0], 
\BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], dina_2[5], dina_2[4], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], 
\BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], dina_2[3], dina_2[2], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], 
\BU2/doutb [0], dina_2[1], dina_2[0]}),
    .DIB({\BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], dina_2[15], dina_2[14], \BU2/doutb [0], 
\BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], dina_2[13], dina_2[12], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0]
, \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], dina_2[11], dina_2[10], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], 
\BU2/doutb [0], \BU2/doutb [0], dina_2[9], dina_2[8]}),
    .DIPA({\BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0]}),
    .DIPB({\BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0], \BU2/doutb [0]}),
    .DOA({\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOA<31>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOA<30>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOA<29>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOA<28>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOA<27>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOA<26>_UNCONNECTED , douta_5[7], douta_5[6], 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOA<23>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOA<22>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOA<21>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOA<20>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOA<19>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOA<18>_UNCONNECTED , douta_5[5], douta_5[4], 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOA<15>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOA<14>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOA<13>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOA<12>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOA<11>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOA<10>_UNCONNECTED , douta_5[3], douta_5[2], 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOA<7>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOA<6>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOA<5>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOA<4>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOA<3>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOA<2>_UNCONNECTED , douta_5[1], douta_5[0]}),
    .DOPA({\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOPA<3>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOPA<2>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOPA<1>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOPA<0>_UNCONNECTED }),
    .DOB({\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOB<31>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOB<30>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOB<29>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOB<28>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOB<27>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOB<26>_UNCONNECTED , douta_5[15], douta_5[14], 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOB<23>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOB<22>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOB<21>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOB<20>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOB<19>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOB<18>_UNCONNECTED , douta_5[13], douta_5[12], 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOB<15>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOB<14>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOB<13>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOB<12>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOB<11>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOB<10>_UNCONNECTED , douta_5[11], douta_5[10], 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOB<7>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOB<6>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOB<5>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOB<4>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOB<3>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOB<2>_UNCONNECTED , douta_5[9], douta_5[8]}),
    .DOPB({\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOPB<3>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOPB<2>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOPB<1>_UNCONNECTED , 
\NLW_BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/spram.ram_DOPB<0>_UNCONNECTED })
  );
  VCC   \BU2/XST_VCC  (
    .P(\BU2/N1 )
  );
  GND   \BU2/XST_GND  (
    .G(\BU2/doutb [0])
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

    wire GSR;
    wire GTS;
    wire PRLD;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

// synthesis translate_on
