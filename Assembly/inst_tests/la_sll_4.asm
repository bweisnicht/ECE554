// Alex Langenfeld
// sll_4
// shift by "255", result should be 0x8000
	lbi	r0, 0xFF
	slbi	r0, 0xFF
	lbi	r1, 0xFF
	sll	r0, r0, r1
	halt
