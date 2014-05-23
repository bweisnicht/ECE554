//overflow
lbi r4, 127
slbi r4, 255
subi r7, r4, -1   //-1-32767
subi r3, r4, -2   //-2-32767
subi r3, r4, -3   //-3-32767
subi r6, r7, 0    //0--32768
subi r5, r6, 0    //0-32768
subi r6, r7, -1   //-1--32768
halt

