lbi r0, 111
st r0, r0, -1 // check store to itself
ld r1, r0, -1 // repeated loads 
ld r1, r0, -1
addi r1, r1, 5 // check if it throws off the pipeline
ld r1, r0, -1 //interleaved stores and loads
st r1, r0, 1
ld r5, r1, -1
ld r3, r0, 1
