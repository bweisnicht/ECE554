//tests to make sure that an attempt to rotat a rotate right of 18 bits (10010) is actually only a rotate of 2 (the 4 lsbs)
lbi r1, 200
lbi r2, 18
ror r3, r1, r2
halt
