// seed 1
lbi r0, 23 // icount 0
slbi r0, 33 // icount 1
lbi r1, 139 // icount 2
slbi r1, 91 // icount 3
lbi r2, 71 // icount 4
slbi r2, 253 // icount 5
lbi r3, 171 // icount 6
slbi r3, 172 // icount 7
lbi r4, 90 // icount 8
slbi r4, 254 // icount 9
lbi r5, 218 // icount 10
slbi r5, 184 // icount 11
lbi r6, 221 // icount 12
slbi r6, 115 // icount 13
lbi r7, 80 // icount 14
slbi r7, 21 // icount 15
andi r0, r0, 0xfe // icount 16
st r4, r0, 8 // icount 17
andi r1, r1, 0xfe // icount 18
st r4, r1, 10 // icount 19
andi r6, r6, 0xfe // icount 20
st r5, r6, 4 // icount 21
andi r6, r6, 0xfe // icount 22
st r7, r6, 6 // icount 23
andi r3, r3, 0xfe // icount 24
st r2, r3, 14 // icount 25
andi r7, r7, 0xfe // icount 26
st r1, r7, 10 // icount 27
andi r2, r2, 0xfe // icount 28
st r6, r2, 2 // icount 29
andi r4, r4, 0xfe // icount 30
st r6, r4, 8 // icount 31
andi r0, r0, 0xfe // icount 32
st r0, r0, 12 // icount 33
andi r5, r5, 0xfe // icount 34
st r5, r5, 2 // icount 35
andi r0, r0, 0xfe // icount 36
st r1, r0, 12 // icount 37
andi r1, r1, 0xfe // icount 38
st r7, r1, 12 // icount 39
andi r6, r6, 0xfe // icount 40
st r5, r6, 2 // icount 41
andi r1, r1, 0xfe // icount 42
st r7, r1, 10 // icount 43
andi r5, r5, 0xfe // icount 44
st r5, r5, 8 // icount 45
andi r6, r6, 0xfe // icount 46
st r5, r6, 14 // icount 47
halt // icount 48
