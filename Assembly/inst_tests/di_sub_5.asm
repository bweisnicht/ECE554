//Test if subtracting a negative number from a very large positive one
//  can cause overflow
lbi r0, 127
slbi r0, 255
lbi r1, -100
sub r2, r1, r0
