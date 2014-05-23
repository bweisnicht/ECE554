//jump to the instruction right before the jump
	
lbi r0, 0
beqz r0, .skip

.end:
halt

.skip:
j .end
