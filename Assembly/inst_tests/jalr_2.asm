lbi r3,9
lbi r4,2
lbi r0, U.label3
slbi r0, L.label3 // r0 contains address of "Label3"
jalr r0, 0         // jump and link to Label3(to emulate a function call)

.label3:
st r7, r0,4	 // to check if r7 value is linked correctly.
.loc:
addi  r4,r4,1	//runs a loop 
sub  r5,r3,r4
beqz r5,.loc
halt	
