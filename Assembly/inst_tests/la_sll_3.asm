// Alex Langenfeld
// sll_3
// shift by 15, result should be 0x8000
	lbi	r0, 0xFF
	slbi	r0, 0xFF
	lbi	r1, 0x0F
	sll	r0, r0, r1
	halt
