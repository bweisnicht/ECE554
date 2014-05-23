//
//Author: John Kjell
//CS552 - Spring 10
//jal_0.asm
//jal backwards

.label:				
		nop 			
		jal .label2 //jump to negative jal
		nop
		halt   //$r7 = 0x000a at this point
.label2:
		jal -4 //perform negative jal to halt
