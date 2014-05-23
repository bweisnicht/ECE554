 //note: This program does not work for all input values...
 //But, it sure runs for a long time...

 lbi r0, 0x30
 slbi r0, 0x3d
 lbi r2, 0
 lbi r3, 32
 slli r3, r3, 8

 lbi r31, 0
 addi r6, r0, 0	//
.doSubTract:
 srai r6, r6, 1
 addi r31, r31, 1
 bnez r6, .doSubTract
 srai r31, r31, 1	//

.findNextPrime:
 j .determinePrime
.return_from_prime:
 beqz r5, .try_next_number
 addi r5, r6, 0	//
 halt
.try_next_number:
 addi r0, r6, 2	

.determinePrime:	
 // determine if r0 is prime
 addi r6, r0, 0
 lbi r1, 3		//
.tryAgain:
 sra r4 r0 r7
 slt r4 r1 r4
 beqz r4, .isPrime	//
 lbi r2, 0
 j .doPart1
.return_from_mod:
 beqz r5, .notPrime	//
 addi r0, r6, 0
 addi r1, r1, 2
 j .tryAgain		//
.notPrime:
 lbi r5, 0
 j .return_from_prime	//
.isPrime:
 lbi r5, 1
 j .return_from_prime	//

.findMod:		
 // calculates r0 mod r1 and outputs in r5
 j .doPart1
.doPart0:		
 // r1 is smaller than r0 so we double it
 slli r1, r1, 1		//
 addi r2, r2, 1
.doPart1:		
 slt r4 r1 r0 		
 beqz r4, .doPart2	//
 slt r4 r1 r3 		
 bnez r4, .doPart0	//
.doPart2:
 sle r4 r1 r0 		
 beqz r4, .skipAdd	//
 sub r0 r1 r0		// then r0 <- r0-r1
.skipAdd:
 beqz r2, .doOutput	//
 addi r2, r2, 0x1ff
 srai r1, r1, 1
 j .doPart2		//
.doOutput:
 addi r5, r0, 0
 j .return_from_mod

