// initialize rs (r1) to 1111111100000000
lbi  r1, 0xff
slbi r1, 0x00

// test ignore 5th bit of immediate
// immediate = 10001 (0x11)
roli r2, r1, 0x11  
// r2 should be 1111111000000001 (0xfe01)
halt
