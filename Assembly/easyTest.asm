// easyTest - this should neve$1 need to stall.
// This is just "firstTest" with a lot of nops.
//
// Easiest test program for WISC-SP06 architecture
// for the pipelined implementation.
//
// CS/ECE 552, Spring 2006
// Andy Phelps  7 April 2006
//

// Start with a few simple tests:

	nop	
	lbi $1, 3          // $1 = 3
	nop
	lbi $2, 4          // $2 = 4
	nop
	nop
	nop
	nop
	nop
	add $3, $2, $1     // $3 = 7
	nop

	lbi $4, 0x055       // $4 = 0x0055
	nop
	lbi $5, 0xfaa       // $5 = 0xffaa
	nop
	nop
	nop
	nop
	nop
	add $6, $4, $5     // $6 = 0xffff
	nop
	nop
	nop
	nop
	nop
	addi $7, $6, 1     // $7 = 0
	nop
	
	lbi $0, 0x40       // $0 = 0x0040
	nop
	lbi $2, 0x1        // $2 = 0x0001
	nop
	nop
	nop
	nop
	nop
	sub $4, $2, $0     // $4 = 0x003f
	nop
	lbi $1, 0xfe8       // $1 = 0xffe8
	nop
	nop
	nop
	nop
	nop
	subi $6, $1, 8     // $6 = 0x0020
	nop
	nop
	nop
	nop
	nop
	sub $5, $4, $6     // $5 = 0xffe1
	nop

	slbi $0, 0x0f0      // $0 = 0x40f0
	nop
	nop
	nop
	nop
	nop
	slbi $0, 0x0f      // $0 = 0xf00f
	nop
	lbi $1, 0x5       // $1 = 0x0055
	nop
	nop
	nop
	nop
	nop
	slbi $1, 0x5aa      // $1 = 0x55aa
	nop
	nop
	nop
	nop
	nop
	or $2, $0, $1     // $2 = 0xF5AF
	nop
	nop
	nop
	nop
	nop
	ori $6, $2, 3     // $6 = 0xF5AF
	nop
	and $2, $0, $1    // $2 = 0x500A
	nop
	nop
	nop
	nop
	nop
	andi $1, $2, 1    // $1 = 0x0000
	nop
	nop
	nop
	nop
	nop

// Final checksum on the above answers:
	add $3, $3, $1     // $3 = 0x0007
	nop
	nop
	nop
	nop
	nop
	add $3, $7, $3     // $3 = 0x0007
	nop
	nop
	nop
	nop
	nop
	add $3, $3, $5     // $3 = 0xFFE8
	nop
	nop
	nop
	nop
	nop	
	add $7, $3, $6     // $7 = 0xF597
	nop
	nop
	nop
	nop
	nop
	
// Some more adder tests

	lbi $0, 0x1       //
	nop
	nop
	nop
	nop
	nop
	slbi $0, 0x234      // $0 = 0x1234
	nop
	lbi $1, 0x5       //
	nop
	nop
	nop
	nop
	nop
	slbi $1, 0x678      // $1 = 0x5678
	nop
	lbi $2, 0xffa       //
	nop
	nop
	nop
	nop
	nop
	slbi $2, 0xbcd      // $2 = 0xabcd
	nop	
	add $3, $0, $1     // $3 = 0x68ac
	nop
	nop
	nop
	add $4, $0, $2     // $4 = 0xbe01
	nop
	add $5, $1, $2     // $5 = 0x0245
	nop
	add $6, $3, $2     // $6 = 0x1479
	nop
	add $2, $4, $1     // $2 = 0x1479
	nop
	add $1, $5, $0     // $1 = 0x1479
	nop
	nop
	nop
	nop
	nop
	add $0, $1, $2     // $0 = 0x28f2
	nop
	nop
	nop
	nop
	nop
	add $0, $0, $6     // $0 = 0x3d6b
	nop
	nop
	nop
	nop
	nop
	add $7, $0, $7     // $7 = 0x3302
	nop
	nop
	nop
	nop
	nop
	
	halt
	halt
	halt

