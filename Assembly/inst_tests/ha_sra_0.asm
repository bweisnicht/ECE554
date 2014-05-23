

lbi r0,  0x80  // R0 <- 0xff80
slbi r0, 0x80  // R0 <- 0x8080

lbi r1,13      // R1 <- 0x000d

sra r2,r0,r1   // R2 <- 0xfffc

sra r3,r0,r2   // R3 <- 0xfff8

sra r4,r0,r3   // R4 <- 0xff80

halt
