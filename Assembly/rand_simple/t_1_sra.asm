// seed 1
lbi r0, 193 // icount 0
slbi r0, 115 // icount 1
lbi r1, 144 // icount 2
slbi r1, 162 // icount 3
lbi r2, 43 // icount 4
slbi r2, 39 // icount 5
lbi r3, 4 // icount 6
slbi r3, 165 // icount 7
lbi r4, 186 // icount 8
slbi r4, 116 // icount 9
lbi r5, 128 // icount 10
slbi r5, 109 // icount 11
lbi r6, 199 // icount 12
slbi r6, 130 // icount 13
lbi r7, 11 // icount 14
slbi r7, 253 // icount 15
sra r0, r6, r3 // icount 16
sra r3, r0, r1 // icount 17
sra r1, r6, r1 // icount 18
sra r3, r2, r6 // icount 19
sra r7, r2, r0 // icount 20
sra r4, r1, r7 // icount 21
sra r3, r2, r0 // icount 22
sra r0, r7, r3 // icount 23
sra r5, r4, r7 // icount 24
sra r6, r0, r2 // icount 25
sra r0, r6, r4 // icount 26
sra r6, r4, r6 // icount 27
sra r2, r7, r7 // icount 28
sra r3, r4, r1 // icount 29
sra r6, r0, r1 // icount 30
sra r4, r5, r4 // icount 31
halt // icount 32
