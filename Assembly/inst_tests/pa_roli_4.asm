// initialize rs (r1) to 1111111100000000
lbi  r1, 0xff
slbi r1, 0x00

//test rotate left by -1 (0x0f)
roli r2, r1, 0x0f  
// r2 should be 0111111110000000 (0x7f80)
halt
