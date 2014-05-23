lbi r1, 109      //Value to shift left (0x006D)
lbi r2, 19       //Bits to shift by (only 4 LSbits, hence equal to 3)
sll r1, r1, r2   //Expected value: 109*2^3=872 (0x0368)
halt


