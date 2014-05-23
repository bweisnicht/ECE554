//set each a bit in odd positions to 1, and each b bit in odd positions
//to zero, with cin=0
//a = 1010 1010 1010 1010
//expected output is zero
lbi  r0 170
slbi r0 170
lbi  r1 0
slbi r1 0
seq  r2 r0 r1

//set each a bit in odd positions to one, and each b bit in odd positions
//to one with cin = 0
//a, b	= 1010 1010 1010 1010
//expected output is one	
lbi  r3 170
slbi r3 170
lbi  r4 170
slbi r4 170
seq  r5 r3 r4	
