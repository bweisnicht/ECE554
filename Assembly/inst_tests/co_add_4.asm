//add_4.asm
//Tests the add instruction - test just lowest level bit carry
//Assumes lbi/slbi are functionally validated and no forwarding networks to test
//Register values can be randomized to achieve better validation so long as dependencies are kept

lbi r1, 85
slbi r1, 85  //r1 = 0x5555
lbi r2, 85
slbi r2, 85  //r2 = 0x5555
add r3, r1, r2  //r3 = 0xAAAA
lbi r4, 170
slbi r4, 170  //r4 = 0xAAAA
lbi r5, 170
slbi r5, 170  //r5 = 0xAAAA
add r6, r5, r3  //r3 = 0x5554
halt
