//This tests the case where all a's and b's in even
//positions are set to 0, and cin is 1
//a, b = 1010 1010 1010 1010	
//expected output is 1
lbi  r0 170
slbi r0 170
lbi  r1 170
slbi r1 170
seq  r2 r1 r0
//Test the case where all a's in even positions are zero, and all
//b's in even positons are one, and carryin to the positons are zero
//b=1111 1111 1111 1111
//a=1010 1010 1010 1010	
//expected output is 0	
lbi  r3 170
slbi r3 170
lbi  r4 255
slbi r4 255
seq  r5 r3 r4	

	
