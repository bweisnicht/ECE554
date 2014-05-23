//jal to max pos reg, max neg offset

lbi		r1, 2147483647	//assembler can figure out?
jalr	r1, -128
halt