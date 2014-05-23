//add_1.asm
//Tests the add instruction in a case that uses no internal carry bits
//ie. pass through one input value
//Assumes lbi/slbi are functionally validated

lbi r1, 255
slbi r1, 255  //r1 = 0xFFFF
lbi r2, 0
slbi r2, 0  //r2 = 0x0000
add r3, r1, r2  //r3 = 0xFFFF
lbi r4, 255
slbi r4, 255  //r4 = 0xFFFF
lbi r5, 0
slbi r5, 0  //r5 = 0x0000
add r6, r5, r3  //r3 = 0xFFFF
halt
