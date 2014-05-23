// testing overflow offset store
lbi r0, 254
lbi r1, 27
st r1, r0, 8
ld r2, r0, 8
halt
