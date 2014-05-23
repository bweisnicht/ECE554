// seed 4
lbi r0, 165 // icount 0
slbi r0, 182 // icount 1
lbi r1, 238 // icount 2
slbi r1, 190 // icount 3
lbi r2, 131 // icount 4
slbi r2, 65 // icount 5
lbi r3, 101 // icount 6
slbi r3, 158 // icount 7
lbi r4, 184 // icount 8
slbi r4, 63 // icount 9
lbi r5, 122 // icount 10
slbi r5, 60 // icount 11
lbi r6, 27 // icount 12
slbi r6, 86 // icount 13
lbi r7, 133 // icount 14
slbi r7, 101 // icount 15
sra r1, r0, r2 // icount 16
sra r4, r2, r6 // icount 17
sra r3, r5, r7 // icount 18
sra r5, r7, r4 // icount 19
sra r6, r0, r7 // icount 20
sra r2, r1, r2 // icount 21
sra r3, r1, r1 // icount 22
sra r3, r0, r6 // icount 23
sra r2, r7, r5 // icount 24
sra r3, r3, r5 // icount 25
sra r1, r1, r6 // icount 26
sra r7, r0, r0 // icount 27
sra r6, r7, r5 // icount 28
sra r6, r7, r3 // icount 29
sra r6, r1, r6 // icount 30
sra r3, r6, r4 // icount 31
halt // icount 32
