// seed 3
lbi r0, 89 // icount 0
slbi r0, 160 // icount 1
lbi r1, 36 // icount 2
slbi r1, 181 // icount 3
lbi r2, 102 // icount 4
slbi r2, 57 // icount 5
lbi r3, 239 // icount 6
slbi r3, 161 // icount 7
lbi r4, 14 // icount 8
slbi r4, 80 // icount 9
lbi r5, 209 // icount 10
slbi r5, 247 // icount 11
lbi r6, 84 // icount 12
slbi r6, 186 // icount 13
lbi r7, 177 // icount 14
slbi r7, 152 // icount 15
sra r6, r2, r5 // icount 16
sra r7, r6, r1 // icount 17
sra r5, r0, r7 // icount 18
sra r7, r2, r7 // icount 19
sra r6, r6, r2 // icount 20
sra r3, r3, r6 // icount 21
sra r3, r7, r4 // icount 22
sra r5, r2, r2 // icount 23
sra r6, r6, r5 // icount 24
sra r7, r0, r1 // icount 25
sra r3, r3, r3 // icount 26
sra r4, r1, r2 // icount 27
sra r2, r1, r3 // icount 28
sra r2, r3, r5 // icount 29
sra r1, r3, r7 // icount 30
sra r6, r3, r7 // icount 31
halt // icount 32
