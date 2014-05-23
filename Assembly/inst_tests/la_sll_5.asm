// Alex Langenfeld
// sll_5
// shift by "65520" test, result should be 0xDEAD
	lbi	r0, 0xDE
	slbi	r0, 0xAD
	lbi	r1, 0xFF
	slbi	r1, 0xF0
	sll	r0, r0, r1
	halt
