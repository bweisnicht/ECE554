//This tests the case where all a's and b's in odd
//positions are set to 0, and cin is 0
//expected output is 1
lbi  r0 0
slbi r0 0
lbi  r1 0
slbi r1 0
seq  r2 r1 r0
//Test the case where all a's in odd positions are zero, and all
//b's in odd positons are one, and carryin to the positons are zero
//B = 1010 1010 1010 1010
//expected output is 0	
lbi  r3 0
slbi r3 0
lbi  r4 170
slbi r4 170
seq  r5 r3 r4	

	
