
lbi r0, 0xab   // R0 <- 0xffab

slbi r0, 0xcd  // R0 <- 0xabcd

lbi r1, 0xef   // R1 <- 0xffef
slbi r1, 0x99  // R1 <- 0xef99

lbi r2, 0xff   // R2 <- 0xffff
slbi r2, 0     // R2 <- 0xff00

halt
