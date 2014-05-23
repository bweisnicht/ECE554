//This tests the case where all a's and b's in odd
//positions are set to 0, and cin is 1
//expected output is 1
//a, b = 0101 0101 0101 0101
lbi  r0 85
slbi r0 85
lbi  r1 85
slbi r1 85
seq  r2 r1 r0
//Test the case where all a's in odd positions are zero, and all
//b's in odd positons are one, and carryin to the positons are one
//a = 0101 0101 0101 0101
//b = 1111 1111 1111 1111	
//expected output is 0	
lbi  r3 85
slbi r3 85
lbi  r4 255
slbi r4 255
seq  r5 r3 r4	

	
