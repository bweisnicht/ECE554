// seed 2
lbi r0, 92 // icount 0
slbi r0, 75 // icount 1
lbi r1, 227 // icount 2
slbi r1, 239 // icount 3
lbi r2, 35 // icount 4
slbi r2, 83 // icount 5
lbi r3, 80 // icount 6
slbi r3, 91 // icount 7
lbi r4, 89 // icount 8
slbi r4, 194 // icount 9
lbi r5, 211 // icount 10
slbi r5, 82 // icount 11
lbi r6, 211 // icount 12
slbi r6, 23 // icount 13
lbi r7, 226 // icount 14
slbi r7, 232 // icount 15
and r2, r6, r2 // icount 16
and r0, r6, r5 // icount 17
and r5, r3, r2 // icount 18
and r1, r2, r6 // icount 19
and r3, r5, r7 // icount 20
and r4, r7, r0 // icount 21
and r4, r4, r6 // icount 22
and r7, r5, r5 // icount 23
and r2, r2, r2 // icount 24
and r5, r2, r4 // icount 25
and r7, r4, r1 // icount 26
and r7, r3, r6 // icount 27
and r7, r5, r0 // icount 28
and r3, r5, r4 // icount 29
and r2, r0, r5 // icount 30
and r3, r6, r3 // icount 31
halt // icount 32
