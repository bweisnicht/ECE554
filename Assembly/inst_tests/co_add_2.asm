//add_2.asm
//Tests the add instruction in a case that just passes through zero
//ie. MIN/MIN, pass through all zeroes
//Assumes lbi/slbi are functionally validated and no forwarding networks to test
//Register values can be randomized to achieve better validation so long as dependencies are kept

lbi r1, 0
slbi r1, 0  //r1 = 0x0000
lbi r2, 0
slbi r2, 0  //r2 = 0x0000
add r3, r1, r2  //r3 = 0x0000
lbi r4, 0
slbi r4, 0  //r4 = 0x0000
lbi r5, 0
slbi r5, 0  //r5 = 0x0000
add r6, r5, r3  //r3 = 0x0000
halt
