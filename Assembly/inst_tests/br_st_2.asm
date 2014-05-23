// testing negative offset store
lbi r0, 40
lbi r1, 8
st r1, r0, -6
ld r2, r0, -6
halt
