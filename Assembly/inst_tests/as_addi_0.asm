//test that value is unchanged when added to zero
//test middle and corner values
//tested
//0+0 = 0
lbi  r1, 0
addi r2, r1, 0
//-1+0 = -1
lbi  r3, -1
addi r4, r3, 0
//127+0 = 127
lbi  r5, 127
addi r6, r5, 0
halt
