 // firstTest
 //
 // First (simplest) test program for WISC-SP06 architecture
 // for the single-cycle implementation.
 //
 // CS/ECE 552, Spring 2006
 // Andy Phelps  24 March 2006
 //

 // Start with a few simple tests:

 lbi r1, 3
 lbi r2, 4
 add r3, r2, r1     // r3 = 7

 nop

 lbi r4, 0x55
 lbi r5, 0xaa
 add r6, r4, r5     // r6 = 0xffff
 addi r31, r6, 1

 nop
 nop

 lbi r0, 0x40
 lbi r2, 0x1
 sub r4, r2, r0     // r4 = 0x003f
 lbi r1, 0xe8
 subi r6, r1, 8
 sub r5, r4, r6     // r5 = 0xffe1

 slbi r0, 0xf0
 slbi r0, 0x0f
 lbi r1, 0x55
 slbi r1, 0xaa
 or r2, r0, r1     // r2 = 0xf5af
 ori r6, r2, 3
 and r2, r0, r1    // r2 = 0x500a
 andi r1, r2, 1

 // Final checksum on the above answers:
 add r3, r3, r1     // r3 = 0x0007
 add r3, r7, r3     // r3 = 0x0007
 add r3, r3, r5     // r3 = 0xffe8
 add r7, r3, r6     // r7 = 0xf597

 // Some more adder tests

 lbi r0, 0x12
 slbi r0, 0x34
 lbi r1, 0x56
 slbi r1, 0x78
 lbi r2, 0xab
 slbi r2, 0xcd
 add r3, r0, r1     // r3 = 0x68ac
 add r4, r0, r2     // r4 = 0xbe01
 add r5, r1, r2     // r5 = 0x0245
 add r6, r3, r2     // r6 = 0x1479
 add r2, r4, r1     // r2 = 0x1479
 add r1, r5, r0     // r1 = 0x1479
 add r0, r1, r2     // r0 = 0x28f2
 add r0, r0, r6     // r0 = 0x3d6b
 add r7, r0, r7     // r7 = 0x3302

 halt
 halt
 halt
 halt
