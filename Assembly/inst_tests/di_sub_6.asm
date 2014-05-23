//Test if subtracting a positive number from a very large negative one
//  can cause overflow
lbi r0, 128
slbi r0, 1
lbi r1, 100
sub r2, r1, r0
