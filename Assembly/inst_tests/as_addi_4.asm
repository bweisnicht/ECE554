//test overflow
//tested
//-32768-16=-32784
//but we should get 32752 or 0x7ff0 and an overflow
lbi  r1, 0x80
slli r1, r1, 8
addi r2, r1, -16
halt
