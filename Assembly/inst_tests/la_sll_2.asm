// Alex Langenfeld
// sll_2
// shift by 4 test, result should be 0xEEF0
	lbi	r0, 0xBE
	slbi	r0, 0xEF
	lbi	r1, 4
	sll	r0, r0, r1
	halt
