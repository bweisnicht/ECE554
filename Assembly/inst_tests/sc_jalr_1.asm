// This tests jump and link register 8  skips the next 2 instructions,
// then repeats over and over again
lbi r0, 4
jalr r0, 4
lbi r1, 1
lbi r2, 2
lbi r3, 3
halt
