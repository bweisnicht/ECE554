// seed 2
lbi r0, 104 // icount 0
slbi r0, 209 // icount 1
lbi r1, 44 // icount 2
slbi r1, 82 // icount 3
lbi r2, 45 // icount 4
slbi r2, 104 // icount 5
lbi r3, 216 // icount 6
slbi r3, 122 // icount 7
lbi r4, 119 // icount 8
slbi r4, 97 // icount 9
lbi r5, 239 // icount 10
slbi r5, 62 // icount 11
lbi r6, 118 // icount 12
slbi r6, 238 // icount 13
lbi r7, 121 // icount 14
slbi r7, 2 // icount 15
srai r2, r5, 8 // icount 16
srai r7, r7, 12 // icount 17
srai r0, r2, 2 // icount 18
srai r3, r1, 4 // icount 19
srai r4, r6, 15 // icount 20
srai r2, r7, 0 // icount 21
srai r7, r5, 13 // icount 22
srai r0, r7, 4 // icount 23
srai r1, r6, 3 // icount 24
srai r5, r2, 10 // icount 25
srai r7, r0, 14 // icount 26
srai r6, r7, 15 // icount 27
srai r3, r6, 1 // icount 28
srai r3, r0, 8 // icount 29
srai r3, r5, 7 // icount 30
srai r2, r4, 9 // icount 31
halt // icount 32
