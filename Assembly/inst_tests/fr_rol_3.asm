// 0x5555 = 0xAAAA << 1

lbi r1, 170
slbi r1, 170	// Loads r1 with alternating 1's and 0's
lbi r2, 1	// Sets rotate bits to 1
rol r3, r1, r2	// Rotates r1 once to the left *Expected Value: 0x5555*
halt
