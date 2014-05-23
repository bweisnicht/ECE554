// seed 1
lbi r0, 227 // icount 0
slbi r0, 110 // icount 1
lbi r1, 67 // icount 2
slbi r1, 106 // icount 3
lbi r2, 147 // icount 4
slbi r2, 138 // icount 5
lbi r3, 251 // icount 6
slbi r3, 179 // icount 7
lbi r4, 195 // icount 8
slbi r4, 1 // icount 9
lbi r5, 61 // icount 10
slbi r5, 126 // icount 11
lbi r6, 122 // icount 12
slbi r6, 25 // icount 13
lbi r7, 128 // icount 14
slbi r7, 221 // icount 15
or r1, r3, r5 // icount 16
or r2, r3, r3 // icount 17
or r5, r5, r2 // icount 18
or r0, r4, r2 // icount 19
or r7, r1, r2 // icount 20
or r5, r4, r2 // icount 21
or r4, r0, r1 // icount 22
or r2, r4, r4 // icount 23
or r2, r3, r6 // icount 24
or r5, r6, r3 // icount 25
or r2, r2, r6 // icount 26
or r0, r5, r2 // icount 27
or r0, r4, r7 // icount 28
or r6, r2, r7 // icount 29
or r2, r3, r6 // icount 30
or r1, r4, r4 // icount 31
halt // icount 32
