// Test that every even bit for second register and every odd bit for first register
// can set the corresponding d register bit alone.
lbi	r3,0x55
slbi	r3,0x55
lbi	r4,0xAA
slbi	r4,0xAA
or	r5,r4,r3
HALT
