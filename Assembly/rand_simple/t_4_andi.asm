// seed 4
lbi r0, 10 // icount 0
slbi r0, 228 // icount 1
lbi r1, 144 // icount 2
slbi r1, 238 // icount 3
lbi r2, 241 // icount 4
slbi r2, 245 // icount 5
lbi r3, 96 // icount 6
slbi r3, 137 // icount 7
lbi r4, 203 // icount 8
slbi r4, 125 // icount 9
lbi r5, 59 // icount 10
slbi r5, 150 // icount 11
lbi r6, 34 // icount 12
slbi r6, 100 // icount 13
lbi r7, 14 // icount 14
slbi r7, 48 // icount 15
andi r7, r5, 6 // icount 16
andi r7, r3, 14 // icount 17
andi r6, r1, 14 // icount 18
andi r2, r1, 0 // icount 19
andi r0, r1, 8 // icount 20
andi r5, r1, 14 // icount 21
andi r4, r2, 12 // icount 22
andi r5, r3, 15 // icount 23
andi r6, r4, 4 // icount 24
andi r6, r6, 15 // icount 25
andi r1, r0, 9 // icount 26
andi r1, r1, 9 // icount 27
andi r1, r6, 8 // icount 28
andi r4, r3, 14 // icount 29
andi r2, r6, 5 // icount 30
andi r3, r6, 7 // icount 31
halt // icount 32
