//set each a bit in even positions to 1, and each b bit in even positions
//to zero, with cin=1
//b=1010101010101010
//a=1111111111111111	
//expected output is zero
lbi  r0 255
slbi r0 255
lbi  r1 170
slbi r1 170
seq  r2 r0 r1

//set each a bit in even positions to one, and each b bit in even positions
//to one with cin = 0
//expected output is one	
lbi  r3 255
slbi r3 255
lbi  r4 255
slbi r4 255
seq  r5 r3 r4	
