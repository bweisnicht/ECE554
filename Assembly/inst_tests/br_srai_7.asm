// Author: 	Jason Brant-Horton
// Class:	CS552 - Spring 2010
// Summary:	Test the SRAI (Shift Right Arithmetic Immediate) instruction.
// 0101 0101 0101 0101 -> 0010 1010 1010 1010
LBI		r1	85
SLBI	r1, 85
SRAI	r2, r1, 1
halt
