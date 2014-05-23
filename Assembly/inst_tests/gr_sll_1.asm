lbi r1, 109     //Value to shift left (0x006D)
lbi r2, 1       //Bits to shift by
sll r1, r1, r2  //Expected value: 109*2^1=218 (0x00DA)
halt


