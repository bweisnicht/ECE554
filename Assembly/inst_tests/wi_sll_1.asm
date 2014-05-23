//Christopher Wilcox
//SLL instruction test

//This test tests a shift of 0xF (15)

//Setup Initial Values
// r1 : Value to be shifted
// r2 : Amount to shift by
// r3 : Expected Value
lbi  r1 , 0xFF
slbi r1 , 0xFE
lbi  r2 , 0xF
lbi  r3 , 0x00
slbi r3 , 0x00

//Complete the SLL operation
sll r4, r1, r2

//Compare values of r3 and r4 to see if they are equal
SEQ r5,r3,r4
HALT
