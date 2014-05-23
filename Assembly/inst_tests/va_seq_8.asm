//set each a bit in odd positions to 1, and each b bit in odd positions
//to zero, with cin=1
//a = 1111 1111 1111 1111
//b = 0101 0101 0101 0101
//expected output is zero
lbi  r0 255
slbi r0 255
lbi  r1 85
slbi r1 85
seq  r2 r0 r1

//set each a bit in odd positions to one, and each b bit in odd positions
//to one with cin = 1
//a, b	= 1111 1111 1111 1111
//expected output is one	
lbi  r3 255
slbi r3 255
lbi  r4 255
slbi r4 255
seq  r5 r3 r4	
