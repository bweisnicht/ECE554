//Christopher Wilcox
//SLL instruction test

//This test tests a shift of 0xFF (255)
//This should process as a shift 15 as we only watch the lowest 4 bits

//Setup Initial Values
// r1 : Value to be shifted
// r2 : Amount to shift by
// r3 : Expected Value
lbi  r1 , 0xFF
slbi r1 , 0xFF
lbi  r2 , 0xFF
lbi  r3 , 0x80
slbi r3 , 0x00
//Complete the SLL operation
sll r4, r1, r2

//Compare values of r3 and r4 to see if they are equal
SEQ r5,r3,r4
HALT
