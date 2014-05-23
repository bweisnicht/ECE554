//
//Author: John Kjell
//CS552 - Spring 10
//jal_0.asm
//Overwrite r7 and jal 0 test

		addi r7, r7, 0xffff //put initial value in $r7
		jal  .label				  //jump to label from pc = 2
		nop
		nop
.label:
		jal  0						  //you should now see $r7 = 4
		halt							  //now $r7 = pc of halt (0x000a)
