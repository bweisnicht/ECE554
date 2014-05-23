// 0x0000 = 0x0000 << 0

lbi r1, 0
slbi r1, 0	// Loads r1 with all 0's
lbi r2, 0	// Sets rotate bits to 0
rol r3, r1, r2	// Rotate 0 times to the left all 0's *Corner Case* *Expected Value: 0x0000*
halt
