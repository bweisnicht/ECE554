//slt_1.asm

lbi	r1, 0		//r1=255
lbi	r2, 255		//r2=0
slt	r3, r1, r2	//compare values in r1 and that in r2, since (255<0) is true, so r3 should be set as '1' in this case
halt			//finished and hold
