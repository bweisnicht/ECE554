// Checks if any number of shifts work

lbi	r1, 16			//16 bit register, 8 0s then 8 1s
roli	r1, r1, 8		//8 1s then 8 0s
roli	r1, r1, 1		//7 1s then 8 0s then a 1
roli	r1, r1, 3		//4 1s then 8 0s then 4 1s
halt
