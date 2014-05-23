// Checks for extreme cases like no shift and shifting all bits
//  that is rotate 16 times and end up getting same thing

lbi	r1, 8			//16 bit register
roli	r1, r1, 16		//back to the same num
roli	r1, r1, 0		//no shift -> same num
halt
