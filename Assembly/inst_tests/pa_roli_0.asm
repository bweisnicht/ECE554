// initialize rs (r1) to 1111111100000000
lbi  r1, 0xff
slbi r1, 0x00

// test rotate by nothing
roli r2, r1, 0x00  
// r2 should be 1111111100000000 (0xff00)
halt
