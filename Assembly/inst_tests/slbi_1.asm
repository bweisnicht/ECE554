
lbi r0, 0x70  // R0 <- 0x0070
lbi r1, 0x70  // R1 <- 0x0070
lbi r2, 0x80  // R2 <- 0xff80
lbi r3, 0x80  // R3 <- 0xff80

slbi r0, 8    // R0 <- 0x7008
slbi r1, 7    // R1 <- 0x7007

slbi r2, 8    // R2 <- 0x8008
slbi r3, 7    // R3 <- 0x8007

halt
