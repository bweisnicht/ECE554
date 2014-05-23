// Author: 	Jason Brant-Horton
// Class:	CS552 - Spring 2010
// Summary:	Test the SRAI (Shift Right Arithmetic Immediate) instruction.
//  0000 1111 0000 0000-> 0000 0000 1111 0000
LBI		r1	15
SLBI	r1, 0
SRAI	r2, r1, 4
halt
