// testing zero offset store 
lbi r0, 126
lbi r1, 16
st r1, r0, 0
ld r2, r0, 0
halt
