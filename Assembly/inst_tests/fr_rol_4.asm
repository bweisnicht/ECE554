// 0x17dd = 0xd17d << 4

lbi r1, 209	 
slbi r1, 125	// Loads r1 with some values
lbi r2, 4	// Sets rotate bits to 4
rol r3, r1, r2  // Rotates r1 4 positions *Expected Value: 0x17dd*
halt
