//slt_0.asm

lbi	r1, 255		//r1=255
lbi	r2, 0		//r2=0
slt	r3, r1, r2	//compare values in r1 and that in r2, since (255<0) is untrue, so r3 should be set as '0' in this case
halt			//finished and hold
