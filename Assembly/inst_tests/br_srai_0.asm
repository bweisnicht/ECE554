// Author: 	Jason Brant-Horton
// Class:	CS552 - Spring 2010
// Summary:	Test the SRAI (Shift Right Arithmetic Immediate) instruction.
// 0000 0000 0111 1111 -> 0000 0000 0000 0000
LBI		r1, 127
SRAI	r2, r1, 7
halt
