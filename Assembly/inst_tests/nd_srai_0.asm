//Shifts by values using 0-1 bits
lbi r1, 68 //value: 0x0044
srai r2, r1, 0 //value: 0x0044
lbi r1, 68
srai r2, r1, 1 //value: 0x0022
lbi r1, 68
srai r2, r1, 2 //value: 0x0011
lbi r1, 68
srai r2, r1, 4 //value: 0x0004
lbi r1, 68
srai r2, r1, 8 //value: 0x0000