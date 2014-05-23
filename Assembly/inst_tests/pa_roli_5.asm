// initialize rs (r1) to 1111111100000000
lbi  r1, 0xff
slbi r1, 0x00

//test rotate left by -3 (0x0d)
roli r2, r1, 0x0d  
// r2 should be 0001111111100000 (0x1fe0)
halt
