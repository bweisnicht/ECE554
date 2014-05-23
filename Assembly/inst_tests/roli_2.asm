// Checks for the case when shifting only 0s

lbi	r1, 0			//16 bit register, all 0s
roli	r1, r1, 5		//still 0s
roli	r1, r1, 11		//still 0s
roli	r1, r1, 0		//still 0s
halt
