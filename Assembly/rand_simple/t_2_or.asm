// seed 2
lbi r0, 234 // icount 0
slbi r0, 18 // icount 1
lbi r1, 243 // icount 2
slbi r1, 187 // icount 3
lbi r2, 83 // icount 4
slbi r2, 84 // icount 5
lbi r3, 13 // icount 6
slbi r3, 227 // icount 7
lbi r4, 163 // icount 8
slbi r4, 12 // icount 9
lbi r5, 234 // icount 10
slbi r5, 132 // icount 11
lbi r6, 138 // icount 12
slbi r6, 140 // icount 13
lbi r7, 30 // icount 14
slbi r7, 37 // icount 15
or r2, r4, r3 // icount 16
or r4, r1, r1 // icount 17
or r4, r6, r7 // icount 18
or r6, r4, r5 // icount 19
or r0, r5, r4 // icount 20
or r2, r3, r1 // icount 21
or r7, r2, r7 // icount 22
or r6, r1, r2 // icount 23
or r7, r5, r0 // icount 24
or r7, r0, r2 // icount 25
or r2, r4, r1 // icount 26
or r4, r7, r5 // icount 27
or r3, r4, r5 // icount 28
or r5, r4, r0 // icount 29
or r5, r2, r1 // icount 30
or r3, r2, r7 // icount 31
halt // icount 32
