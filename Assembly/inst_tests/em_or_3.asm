// Test that every odd bit for second register and every even bit for first register
// can set the corresponding d register bit alone.
lbi	r3,0xAA
slbi	r3,0xAA
lbi	r4,0x55
slbi	r4,0x55
or	r5,r4,r3
HALT
