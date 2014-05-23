//add_5.asm
//Tests the add instruction - test what would likely be group propogate/generate in a 16-bit 4-4bit CLA design
//Assumes lbi/slbi are functionally validated and no forwarding networks to test
//Register values can be randomized to achieve better validation so long as dependencies are kept

lbi r1, 0 							//Part 0
slbi r1, 15  //r1 = 0x000F
lbi r2, 0
slbi r2, 1  //r2 = 0x0001
add r3, r1, r2  //r3 = 0x0010
lbi r4, 0 						//Part 1
slbi r4, 240  //r4 = 0x00F0
lbi r5, 0
slbi r5, 16  //r5 = 0x0010
add r6, r5, r3  //r3 = 0x5554
lbi r4, 0 						//Part 2
slbi r4, 240  //r4 = 0x00F0
lbi r5, 0
slbi r5, 16  //r5 = 0x0010
add r6, r5, r3  //r3 = 0x0100
lbi r4, 15 						//Part 3
slbi r4, 0  //r4 = 0x0F00
lbi r5, 1
slbi r5, 0  //r5 = 0x0100
add r6, r5, r3  //r3 = 0x1000
lbi r4, 240 						//Part 4
slbi r4, 0  //r4 = 0xF000
lbi r5, 16
slbi r5, 0  //r5 = 0x1000
add r6, r5, r3  //r3 = 0x0000
lbi r1, 0 							//Part 5
slbi r1, 255  //r1 = 0x00FF
lbi r2, 0
slbi r2, 1  //r2 = 0x0001
add r3, r1, r2  //r3 = 0x0100
lbi r4, 255 						//Part 6
slbi r4, 0  //r4 = 0xFF00
lbi r5, 1
slbi r5, 0  //r5 = 0x0100
add r6, r5, r3  //r3 = 0x0000
lbi r4, 15 						//Part 7
slbi r4, 255  //r4 = 0x0FFF
lbi r5, 0
slbi r5, 1  //r5 = 0x0001
add r6, r5, r3  //r3 = 0x100
lbi r4, 255 						//Part 8
slbi r4, 240  //r4 = 0xFFF0
lbi r5, 0
slbi r5, 1  //r5 = 0x0001
add r6, r5, r3  //r3 = 0xFFF1
lbi r4, 15 						//Part 9
slbi r4, 15  //r4 = 0x0F0F
lbi r5, 15
slbi r5, 15  //r5 = 0x0F0F
add r6, r5, r3  //r3 = 0x0000
lbi r4, 240 						//Part 10
slbi r4, 240  //r4 = 0xF0F0
lbi r5, 240
slbi r5, 240  //r5 = 0xF0F0
add r6, r5, r3  //r3 = 0xE1E0
halt

