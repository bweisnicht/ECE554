// 0xffff = 0xffff << 15 

lbi r1, 255  	
slbi r1, 255	// Loads r1 with all 1's  
lbi r2, 15	// Sets rotate bits to 15
rol r3, r1, r2	// Rotate 15 times to the left all 1's *Corner Case* *Expected Value: 0xffff*
halt
