// seed 4
lbi r0, 107 // icount 0
slbi r0, 197 // icount 1
lbi r1, 198 // icount 2
slbi r1, 108 // icount 3
lbi r2, 68 // icount 4
slbi r2, 234 // icount 5
lbi r3, 26 // icount 6
slbi r3, 63 // icount 7
lbi r4, 192 // icount 8
slbi r4, 151 // icount 9
lbi r5, 26 // icount 10
slbi r5, 166 // icount 11
lbi r6, 199 // icount 12
slbi r6, 81 // icount 13
lbi r7, 121 // icount 14
slbi r7, 157 // icount 15
andi r7, r7, 0xfe // icount 16
ld r1, r7, 8 // icount 17
andi r1, r1, 0xfe // icount 18
ld r7, r1, 6 // icount 19
andi r3, r3, 0xfe // icount 20
ld r0, r3, 8 // icount 21
andi r7, r7, 0xfe // icount 22
ld r2, r7, 14 // icount 23
andi r4, r4, 0xfe // icount 24
ld r0, r4, 0 // icount 25
andi r4, r4, 0xfe // icount 26
ld r0, r4, 2 // icount 27
andi r4, r4, 0xfe // icount 28
ld r4, r4, 8 // icount 29
andi r3, r3, 0xfe // icount 30
ld r1, r3, 14 // icount 31
andi r0, r0, 0xfe // icount 32
ld r1, r0, 2 // icount 33
andi r0, r0, 0xfe // icount 34
ld r0, r0, 8 // icount 35
andi r6, r6, 0xfe // icount 36
ld r5, r6, 10 // icount 37
andi r0, r0, 0xfe // icount 38
ld r4, r0, 0 // icount 39
andi r3, r3, 0xfe // icount 40
ld r7, r3, 2 // icount 41
andi r7, r7, 0xfe // icount 42
ld r0, r7, 2 // icount 43
andi r5, r5, 0xfe // icount 44
ld r4, r5, 10 // icount 45
andi r6, r6, 0xfe // icount 46
ld r3, r6, 0 // icount 47
halt // icount 48
