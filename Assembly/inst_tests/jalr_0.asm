
lbi r1, U.sub0            // R1 <- 0x0000
slbi r1,L.sub0            // R1 <- 0x0008

jalr r1,0                 // R7 <- 0x0006, NEXTPC <- 0x0008

halt


.sub0:
	addi r6,r7,0      // R6 <- 0x0006
	lbi r2, U.sub1    // R2 <- 0x0000
	slbi r2, L.sub1   // R2 <- 0x0014
	jalr r2,0         // R7 <- 0x0010, NEXTPC <- 0x0014
	
	addi r7,r6,0      // R7 <- 0x0006
	
	ret               // NEXTPC <- 0x0006

.sub1:
	ret               // NEXTPC <- 0x0010
