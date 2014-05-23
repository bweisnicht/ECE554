//Christopher Wilcox
//SLL instruction test

//This test tests a shift of 0xF0 (240)
//Because we only watch the bottom 4, this should operate as a shift 0

//Setup Initial Values
// r1 : Value to be shifted
// r2 : Amount to shift by
// r3 : Expected Value
lbi  r1 , 0xFF
slbi r1, 0xFF
lbi  r2 , 0xF0
lbi  r3 , 0xFF
slbi r3 , 0xFF

//Complete the SLL operation
sll r4, r1, r2

//Compare values of r3 and r4 to see if they are equal
SEQ r5,r3,r4
HALT
