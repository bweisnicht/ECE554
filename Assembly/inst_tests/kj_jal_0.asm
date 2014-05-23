//
//Author: John Kjell
//CS552 - Spring 10
//jal_0.asm
//Basic test

		jal	.label //jal occurs at pc = 0
		nop				 //$r7 should = 2 (pc + 2)
		nop
		
.label:
		halt
