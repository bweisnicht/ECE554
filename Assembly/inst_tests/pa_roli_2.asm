// initialize rs (r1) to 1111111100000000
lbi  r1, 0xff
slbi r1, 0x00

//test rotate left by 3 (0x03)
roli r2, r1, 0x03  
// r2 should be 1111100000000111 (0xf807)
halt
