//add_0.asm
//Tests the add instruction in a case that uses all internal carry bits
//ie. MAX/MAX test
//Assumes lbi/slbi are functionally validated

lbi r1, 255
slbi r1, 255  //r1 = 0xFFFF
lbi r2, 255
slbi r2, 255  //r2 = 0xFFFF
add r3, r1, r2  //r3 = 0xFFFE
halt
