// test simple LSB and
// 0x0001 & 0x0011 = 0x0001
lbi r0, 0x0001
lbi r1, 0x0011
and r2, r0, r1
halt
