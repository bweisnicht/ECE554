// seed 1
lbi r0, 143 // icount 0
slbi r0, 118 // icount 1
lbi r1, 232 // icount 2
slbi r1, 61 // icount 3
lbi r2, 198 // icount 4
slbi r2, 91 // icount 5
lbi r3, 65 // icount 6
slbi r3, 85 // icount 7
lbi r4, 199 // icount 8
slbi r4, 175 // icount 9
lbi r5, 153 // icount 10
slbi r5, 189 // icount 11
lbi r6, 36 // icount 12
slbi r6, 114 // icount 13
lbi r7, 8 // icount 14
slbi r7, 79 // icount 15
and r7, r1, r5 // icount 16
and r3, r4, r7 // icount 17
and r4, r6, r4 // icount 18
and r6, r7, r3 // icount 19
and r7, r5, r2 // icount 20
and r5, r7, r2 // icount 21
and r0, r0, r4 // icount 22
and r6, r4, r0 // icount 23
and r3, r0, r6 // icount 24
and r0, r3, r4 // icount 25
and r3, r4, r5 // icount 26
and r0, r3, r2 // icount 27
and r7, r6, r0 // icount 28
and r2, r1, r6 // icount 29
and r3, r2, r3 // icount 30
and r1, r4, r4 // icount 31
halt // icount 32
