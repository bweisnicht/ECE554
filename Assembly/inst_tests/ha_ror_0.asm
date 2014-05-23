//tests to make sure a rotate right of 15 bits is equivalent to a left rotate of 1 bit
lbi r1, 133
lbi r2, 15
ror r3, r1, r2
halt
