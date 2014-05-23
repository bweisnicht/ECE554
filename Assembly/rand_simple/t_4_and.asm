// seed 4
lbi r0, 246 // icount 0
slbi r0, 245 // icount 1
lbi r1, 215 // icount 2
slbi r1, 82 // icount 3
lbi r2, 220 // icount 4
slbi r2, 65 // icount 5
lbi r3, 109 // icount 6
slbi r3, 103 // icount 7
lbi r4, 125 // icount 8
slbi r4, 232 // icount 9
lbi r5, 72 // icount 10
slbi r5, 123 // icount 11
lbi r6, 49 // icount 12
slbi r6, 96 // icount 13
lbi r7, 149 // icount 14
slbi r7, 24 // icount 15
and r6, r0, r4 // icount 16
and r2, r4, r2 // icount 17
and r0, r7, r7 // icount 18
and r0, r0, r3 // icount 19
and r4, r5, r0 // icount 20
and r3, r0, r3 // icount 21
and r5, r4, r2 // icount 22
and r7, r6, r6 // icount 23
and r1, r5, r2 // icount 24
and r7, r7, r4 // icount 25
and r1, r2, r0 // icount 26
and r6, r5, r6 // icount 27
and r7, r4, r2 // icount 28
and r6, r6, r0 // icount 29
and r1, r3, r2 // icount 30
and r7, r3, r1 // icount 31
halt // icount 32
