// test another LSB and
// 0x000e & 0xFFFE = 0x000e
lbi r1, 0x000E
lbi r2, 0xFFFE
and r3, r1, r2
halt
