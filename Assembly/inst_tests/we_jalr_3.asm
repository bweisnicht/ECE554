//jal to max neg reg, max neg offset

lbi		r1, -2147483648		//assembler can figure out?
jalr	r1, -128
halt