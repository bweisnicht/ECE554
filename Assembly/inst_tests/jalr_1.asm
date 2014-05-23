// This program tests the use of an immediate offset
// with the JALR instruction.

lbi r1, U.sub0             // R1 <- 0x0000
slbi r1,L.sub0             // R1 <- 0x000a

addi r1,r1,-2              // R1 <- 0x0008

jalr r1,2                  // R7 <- 0x0x0008, NEXTPC <- 0x000a

halt


.sub0:
	addi r6,r7,0       // R6 <- 0x0008
	lbi r2, U.sub1     // R2 <- 0x0000
	slbi r2, L.sub1    // R2 <- 0x0018
	
	addi r2,r2,2       // R2 <- 0x001a
	
	jalr r2,-2         // R7 <- 0x0014, NEXTPC <- 0x0018
	
	addi r7,r6,0       // R7 <- 0x0008
	
	ret                // NEXTPC <- 0x0008

.sub1:
	ret                // NEXTPC <- 0x0014
