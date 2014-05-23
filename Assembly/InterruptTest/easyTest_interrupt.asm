// interrupt code
 andi r30, r30, 0x0
 addi r29, r30, 42
 lbi r28, 0x016
 slbi r28, 0x820
 nop
 reti
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
 halt
 halt
 halt
 halt
 halt
 halt



 // easyTest - this should never need to stall.
 // This is just "firstTest" with a lot of nops.
 //
 // Easiest test program for WISC-SP06 architecture
 // for the pipelined implementation.
 //
 // CS/ECE 552, Spring 2006
 // Andy Phelps  7 April 2006
 //

 // Start with a few simple tests:


	lbi r28, 0x006
        slbi r28, 0x820  
 	nop	
 	lbi r1, 3, //
 	nop
 	lbi r2, 4, //
 	nop
 	nop
 	nop
 	nop
 	nop
 	add r3, r2, r1     // r3 = 7
	st r3, r28, 0 
 	nop

 	lbi r4, 0x55, //
 	nop
 	lbi r5, 0xaa, //
 	nop
 	nop
 	nop
 	nop
 	nop
 	add r6, r4, r5     // r6 = 0xffff
        st r6, r28, 0 
 	nop
 	nop
 	nop
 	nop
 	nop
 	addi r31, r6, 1
 	nop
 	
 	lbi r0, 0x40, //
 	nop
 	lbi r2, 0x1, //
 	nop
 	nop
 	nop
 	nop
 	nop
 	sub r4, r2, r0     // r4 = 0x003f
	st r4, r28, 0 
 	nop
 	lbi r1, 0xe8, //
 	nop
 	nop
 	nop
 	nop
 	nop
 	subi r6, r1, 8
 	nop
 	nop
 	nop
 	nop
 	nop
 	sub r5, r4, r6     // r5 = 0xffe1
 	nop

 	slbi r0, 0xf0, //
 	nop
 	nop
 	nop
 	nop
 	nop
 	slbi r0, 0x0f, //
 	nop
 	lbi r1, 0x55, //
 	nop
 	nop
 	nop
 	nop
 	nop
 	slbi r1, 0xaa, //
 	nop
 	nop
 	nop
 	nop
 	nop
 	or r2, r0, r1     // r2 = 0xF5AF
	st r2, r28, 0 
 	nop
 	nop
 	nop
 	nop
 	nop
 	ori r6, r2, 3
 	nop
 	and r2, r0, r1    // r2 = 0x500A
 	nop
 	nop
 	nop
 	nop
 	nop
 	andi r1, r2, 1
 	nop
 	nop
 	nop
 	nop
 	nop

 // Final checksum on the above answers:
 	add r3, r3, r1     // r3 = 0x0007
 	nop
 	nop
 	nop
 	nop
 	nop
 	add r3, r7, r3     // r3 = 0x0007
 	nop
 	nop
 	nop
 	nop
 	nop
 	add r3, r3, r5     // r3 = 0xFFE8
 	nop
 	nop
 	nop
 	nop
 	nop	
 	add r7, r3, r6     // r7 = 0xF597
 	nop
 	nop
 	nop
 	nop
 	nop
 	
 // Some more adder tests

 	lbi r0, 0x12, //
 	nop
 	nop
 	nop
 	nop
 	nop
 	slbi r0, 0x34, //
 	nop
 	lbi r1, 0x56, //
 	nop
 	nop
 	nop
 	nop
 	nop
 	slbi r1, 0x78, //
 	nop
 	lbi r2, 0xab, //
 	nop
 	nop
 	nop
 	nop
 	nop
 	slbi r2, 0xcd, //
 	nop	
 	add r3, r0, r1     // r3 = 0x68ac
 	nop
 	nop
 	nop
 	add r4, r0, r2     // r4 = 0xbe01
 	        lbi r20, 0x000
	slbi r20, 0x000  
nop
 	add r5, r1, r2     // r5 = 0x0245
 	nop
 	add r6, r3, r2     // r6 = 0x1479
 	nop
 	add r2, r4, r1     // r2 = 0x1479
 	nop
 	add r1, r5, r0     // r1 = 0x1479
 	nop
 	nop
 	nop
 	nop
 	nop
 	add r0, r1, r2     // r0 = 0x28f2
 	nop
 	nop
 	nop
 	nop
 	nop
 	add r0, r0, r6     // r0 = 0x3d6b
 	nop
 	nop
 	nop
 	nop
 	nop
 	add r7, r0, r7     // r7 = 0x3302
 	nop
 	nop
 	nop
 	nop
 	nop

        st r7, r28, 0     
	
 	halt
 	halt
 	halt

