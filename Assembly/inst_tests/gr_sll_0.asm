lbi r1, 109 	//Value to shift left (0x006D)
lbi r2, 0   	//Bits to shift by
sll r1, r1, r2  //Expected value: 109*2^0=109 (0x006D)
halt
