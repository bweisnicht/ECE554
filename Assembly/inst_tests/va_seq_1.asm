//This tests the case where all a's and b's in even
//positions are set to 0, and cin is 0
//expected output is 1
lbi  r0 0
slbi r0 0
lbi  r1 0
slbi r1 0
seq  r2 r1 r0
//Test the case where all a's in even positions are zero, and all
//b's in even positons are one, and carryin to the positons are zero
//B =  0101 0101 0101 0101
//expected output is 0	
lbi  r3 0
slbi r3 0
lbi  r4 85
slbi r4 85
seq  r5 r3 r4	

	
