// 0x00ff  = 0xff00 << 8 

lbi r1, 255
slbi r1, 0	// Loads the top bits with 1 and the bottom bits with 0
lbi r2, 8	// Sets rotate bits to 8
rol r3, r1, r2	// Rotates the top half 1's to the bottom half *Expected Value: 0x00ff*
halt
