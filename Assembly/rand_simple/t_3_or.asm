// seed 3
lbi r0, 242 // icount 0
slbi r0, 182 // icount 1
lbi r1, 162 // icount 2
slbi r1, 12 // icount 3
lbi r2, 19 // icount 4
slbi r2, 31 // icount 5
lbi r3, 32 // icount 6
slbi r3, 20 // icount 7
lbi r4, 132 // icount 8
slbi r4, 22 // icount 9
lbi r5, 151 // icount 10
slbi r5, 137 // icount 11
lbi r6, 154 // icount 12
slbi r6, 255 // icount 13
lbi r7, 189 // icount 14
slbi r7, 108 // icount 15
or r2, r6, r0 // icount 16
or r7, r6, r7 // icount 17
or r2, r6, r4 // icount 18
or r4, r4, r0 // icount 19
or r0, r0, r5 // icount 20
or r7, r3, r0 // icount 21
or r2, r4, r4 // icount 22
or r3, r7, r1 // icount 23
or r3, r7, r3 // icount 24
or r2, r3, r1 // icount 25
or r2, r6, r4 // icount 26
or r7, r0, r7 // icount 27
or r5, r4, r3 // icount 28
or r3, r7, r1 // icount 29
or r0, r1, r4 // icount 30
or r5, r1, r3 // icount 31
halt // icount 32
