lbi r0, 0
beqz r0, .jump //need this to skip the halt instruction

.end:
halt
nop
nop
nop

.jump:
j .end //test jumping backward to the end (none of the nops should appear)
