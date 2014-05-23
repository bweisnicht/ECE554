// more difficult and
// 0x00F1 & 0xFFFE = 0xfff0
lbi r1, 0x00F1
lbi r2, 0xFFFE
and r3, r1, r2
halt
