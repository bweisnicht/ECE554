//Shifts by values using 2 bits
lbi r1, 171 //value: 0xffab
slbi r1, 205 //value:0xabcd
srai r2, r1, 3 //value: 0xf579
lbi r1, 171
slbi r1, 205
srai r2, r1, 5 //value: 0xfd5e
lbi r1, 171
slbi r1, 205
srai r2, r1, 9 //value: 0xffd5