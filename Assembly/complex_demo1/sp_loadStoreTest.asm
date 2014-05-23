  // loadStoreTest
 //
 // Test program for WISC-SP06 architecture
 // for load and store instructions
 // for the single-cycle implementation.
 //
 // CS/ECE 552, Spring 2006
 // Andy Phelps  24 March 2006
 //

 lbi r0, U.Here
 slbi r0, L.Here
 lbi r1, U.There
 slbi r1, L.There

 lbi r2, 7
 st r2, r0, 0
 ld r3, r0, 0

 lbi r4, 0xff9 //r4=-7
 st r4, r0, 4
 addi r0, r0, 4
 ld r5, r0, 0

 addi r2, r2, 8
 st r2, r0, 0x1fe //.Here-1=15
 addi r0, r0, 0x1fd //r0=.Here-2
 ld r6, r0, 1

 lbi r2, 0x56
 slbi r2, 0x78
 addi r3, r2, 1
 addi r4, r2, 2
 stu r2, r1, 2
 stu r3, r1, 2
 stu r4, r1, 6

 // Make sure it's all still there:
 ld r4, r1, 0x1f8 //r4=0x5678
 ld r3, r1, 0x1fa //r3=0x5679
 ld r2, r1, 0
 ld r1, r0, 3

 // Checksum everything
 roli r4, r4, 1
 roli r3, r3, 4
 add r7, r3, r4    // r7 = 0x1485
 add r7, r7, r2    // r7 = 0x6aff
 add r7, r7, r1    // r7 = 0x6af8
 add r7, r7, r6    // r7 = 0x6b07
 st r31, r0, 5

 halt
 halt
 halt
 halt
 halt

 // Some empty memory to play around in:
.Here:

 halt
 halt
 halt
 halt

 // Another address:
.There:

 halt
 halt
 halt
 halt
 halt
 halt
 halt
 halt
 halt
 halt

