// seed 4
lbi r0, 177 // icount 0
slbi r0, 21 // icount 1
lbi r1, 190 // icount 2
slbi r1, 161 // icount 3
lbi r2, 244 // icount 4
slbi r2, 242 // icount 5
lbi r3, 98 // icount 6
slbi r3, 131 // icount 7
lbi r4, 246 // icount 8
slbi r4, 33 // icount 9
lbi r5, 18 // icount 10
slbi r5, 220 // icount 11
lbi r6, 23 // icount 12
slbi r6, 128 // icount 13
lbi r7, 156 // icount 14
slbi r7, 105 // icount 15
andi r0, r0, 0xfe // icount 16
stu r2, r0, 4 // icount 17
andi r2, r2, 0xfe // icount 18
stu r4, r2, 14 // icount 19
andi r3, r3, 0xfe // icount 20
stu r7, r3, 2 // icount 21
andi r0, r0, 0xfe // icount 22
stu r5, r0, 4 // icount 23
andi r7, r7, 0xfe // icount 24
stu r0, r7, 0 // icount 25
andi r0, r0, 0xfe // icount 26
stu r5, r0, 2 // icount 27
andi r6, r6, 0xfe // icount 28
stu r2, r6, 4 // icount 29
andi r3, r3, 0xfe // icount 30
stu r6, r3, 14 // icount 31
andi r5, r5, 0xfe // icount 32
stu r0, r5, 2 // icount 33
andi r5, r5, 0xfe // icount 34
stu r2, r5, 10 // icount 35
andi r5, r5, 0xfe // icount 36
stu r6, r5, 0 // icount 37
andi r5, r5, 0xfe // icount 38
stu r4, r5, 14 // icount 39
andi r3, r3, 0xfe // icount 40
stu r1, r3, 12 // icount 41
andi r0, r0, 0xfe // icount 42
stu r2, r0, 8 // icount 43
andi r2, r2, 0xfe // icount 44
stu r5, r2, 8 // icount 45
andi r0, r0, 0xfe // icount 46
stu r0, r0, 12 // icount 47
halt // icount 48
