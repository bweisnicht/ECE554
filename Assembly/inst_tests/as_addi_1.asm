//test andi adding possible immediates to their inverses to get zero
//tested
//-15+15=0
lbi  r1, -15
addi r2, r1, 15
//-12+12=0
lbi  r1, -12
addi r2, r1, 12
//-9+9=0
lbi  r1, -9
addi r2, r1, 9
//-6+6=0 
lbi  r1, -6
addi r2, r1, 6
//-3+3=0
lbi  r1, -3
addi r2, r1, 3
//zero alread tested
//2-2=0
lbi  r1, 2
addi r2, r1, -2
//5-5=0
lbi  r1, 5
addi r2, r1, -5
//8-8=0
lbi  r1, 8
addi r2, r1, -8
//11-11=0
lbi  r1, 11
addi r2, r1, -11
//14-14=0
lbi  r1, 14
addi r2, r1, -14
//16-16=0
lbi  r1, 16
addi r2, r1, -16
halt
