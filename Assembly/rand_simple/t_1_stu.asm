// seed 1
lbi r0, 96 // icount 0
slbi r0, 82 // icount 1
lbi r1, 221 // icount 2
slbi r1, 89 // icount 3
lbi r2, 151 // icount 4
slbi r2, 102 // icount 5
lbi r3, 141 // icount 6
slbi r3, 228 // icount 7
lbi r4, 112 // icount 8
slbi r4, 216 // icount 9
lbi r5, 88 // icount 10
slbi r5, 226 // icount 11
lbi r6, 152 // icount 12
slbi r6, 239 // icount 13
lbi r7, 74 // icount 14
slbi r7, 251 // icount 15
andi r7, r7, 0xfe // icount 16
stu r3, r7, 8 // icount 17
andi r7, r7, 0xfe // icount 18
stu r3, r7, 0 // icount 19
andi r3, r3, 0xfe // icount 20
stu r2, r3, 12 // icount 21
andi r7, r7, 0xfe // icount 22
stu r0, r7, 10 // icount 23
andi r3, r3, 0xfe // icount 24
stu r5, r3, 14 // icount 25
andi r3, r3, 0xfe // icount 26
stu r6, r3, 0 // icount 27
andi r5, r5, 0xfe // icount 28
stu r3, r5, 8 // icount 29
andi r2, r2, 0xfe // icount 30
stu r2, r2, 10 // icount 31
andi r0, r0, 0xfe // icount 32
stu r3, r0, 12 // icount 33
andi r5, r5, 0xfe // icount 34
stu r5, r5, 12 // icount 35
andi r4, r4, 0xfe // icount 36
stu r3, r4, 8 // icount 37
andi r4, r4, 0xfe // icount 38
stu r7, r4, 8 // icount 39
andi r0, r0, 0xfe // icount 40
stu r3, r0, 4 // icount 41
andi r4, r4, 0xfe // icount 42
stu r7, r4, 6 // icount 43
andi r7, r7, 0xfe // icount 44
stu r2, r7, 8 // icount 45
andi r0, r0, 0xfe // icount 46
stu r6, r0, 12 // icount 47
halt // icount 48
