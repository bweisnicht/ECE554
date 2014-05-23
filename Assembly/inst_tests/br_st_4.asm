// testing underflow offset store
lbi r0, 0
lbi r1, 128
st r1, r0, -10
ld r2, r0, -10
halt
