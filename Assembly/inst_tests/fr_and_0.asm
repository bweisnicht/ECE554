// r3 = 0xFF & 0x00 = 0x0000
// r4 = 0xFF & 0xFF = 0xffff
lbi r1, 0xFF
lbi r2, 0x00
and r3, r1, r2
lbi r3, 0xFF
and r4, r1, r3
halt
