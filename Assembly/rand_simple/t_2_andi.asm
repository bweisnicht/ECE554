// seed 2
lbi r0, 160 // icount 0
slbi r0, 244 // icount 1
lbi r1, 221 // icount 2
slbi r1, 16 // icount 3
lbi r2, 80 // icount 4
slbi r2, 107 // icount 5
lbi r3, 186 // icount 6
slbi r3, 222 // icount 7
lbi r4, 67 // icount 8
slbi r4, 41 // icount 9
lbi r5, 243 // icount 10
slbi r5, 177 // icount 11
lbi r6, 21 // icount 12
slbi r6, 16 // icount 13
lbi r7, 68 // icount 14
slbi r7, 1 // icount 15
andi r6, r1, 5 // icount 16
andi r5, r6, 4 // icount 17
andi r2, r3, 9 // icount 18
andi r5, r3, 9 // icount 19
andi r6, r6, 0 // icount 20
andi r0, r3, 3 // icount 21
andi r2, r2, 10 // icount 22
andi r7, r0, 0 // icount 23
andi r0, r5, 13 // icount 24
andi r5, r0, 14 // icount 25
andi r0, r1, 10 // icount 26
andi r2, r4, 4 // icount 27
andi r6, r0, 4 // icount 28
andi r6, r1, 7 // icount 29
andi r1, r3, 12 // icount 30
andi r4, r6, 14 // icount 31
halt // icount 32
