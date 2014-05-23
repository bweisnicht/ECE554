// Author: 	Jason Brant-Horton
// Class:	CS552 - Spring 2010
// Summary:	Test the SRAI (Shift Right Arithmetic Immediate) instruction.
// 1010 1010 1010 1010 -> 1101 0101 0101 0101
LBI		r1	170
SLBI	r1, 170
SRAI	r2, r1, 1
halt
