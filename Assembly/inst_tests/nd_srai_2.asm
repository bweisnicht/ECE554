//Shifts by values requiring 3-4 bits
lbi r1, 171 //value: 0xffab
slbi r1, 205 //value: 0xabcd
srai r2, r1, 7 //value: 0xff57
lbi r1, 171 
slbi r1, 205
srai r2, r1, 11 //value: 0xfff5
lbi r1, 171
slbi r1, 205
srai r2, r1, 13 //value: 0xfffd
lbi r1, 171
slbi r1, 205
srai r2, r1, 15 //value: 0xffff