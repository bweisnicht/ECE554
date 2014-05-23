// Alex Langenfeld
// sll_0
// shift by 0 test, result should be 0xDEAD
	lbi	r0, 0xDE
	slbi	r0, 0xAD
	lbi	r1, 0
	sll	r0, r0, r1
	halt
