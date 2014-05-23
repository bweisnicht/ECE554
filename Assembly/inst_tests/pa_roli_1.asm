// initialize rs (r1) to 1111111100000000
lbi  r1, 0xff
slbi r1, 0x00

//test rotate left by 1 (0x01)
roli r2, r1, 0x01  
// r2 should be 1111111000000001 (0xfe01)
halt
