//add_3.asm
//Tests the add instruction - just interleave add values with no carry between
//Assumes lbi/slbi are functionally validated and no forwarding networks to test
//Register values can be randomized to achieve better validation so long as dependencies are kept

lbi r1, 170
slbi r1, 170  //r1 = 0xAAAA
lbi r2, 85
slbi r2, 85  //r2 = 0x5555
add r3, r1, r2  //r3 = 0xFFFF
lbi r4, 170
slbi r4, 170  //r4 = 0xAAAA
lbi r5, 85
slbi r5, 85  //r5 = 0x5555
add r6, r5, r3  //r3 = 0xFFFF
halt
