//set each a bit in even positions to 1, and each b bit in even positions
//to zero, with cin=0
//a=0101010101010101
//expected output is zero
lbi  r0 85
slbi r0 85
lbi  r1 0
slbi r1 0
seq  r2 r0 r1

//set each a bit in even positions to one, and each b bit in even positions
//to one with cin = 0
lbi  r3 85
slbi r3 85
lbi  r4 85
slbi r4 85
seq  r5 r3 r4	
