// Author: 	Jason Brant-Horton
// Class:	CS552 - Spring 2010
// Summary:	Test the SRAI (Shift Right Arithmetic Immediate) instruction.
// 0000 0000 0111 0000 -> 0000 0000 0000 0111
LBI		r1, 112
SRAI	r2, r1, 4
halt
