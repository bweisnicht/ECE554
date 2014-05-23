// Alex Langenfeld
// sll_1
// shift by 1 test result should be 0xAAAA
	lbi	r0, 0x55
	slbi	r0, 0x55
	lbi	r1, 1
	sll	r0, r0, r1
	halt
