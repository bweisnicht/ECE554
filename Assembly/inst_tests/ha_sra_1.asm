

lbi r0,  0x70   // R0 <- 0x0070
slbi r0, 0x80   // R0 <- 0x7080

lbi r1,13       // R1 <- 0x000d

sra r2,r0,r1    // R2 <- 0x0003

sra r3,r0,r2    // R3 <- 0x0e10

sra r4,r1,r3    // R4 <- 0x000d

