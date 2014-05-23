sub r1, r1, r1 //clear out r1
addi r1, r1, 0 //simple add
addi r1, r1, 15 //get biggest number into r1 to test postitive overflow
slli r1, r1, 4
addi r1, r1, 15
slli r1, r1, 4
addi r1, r1, 15
slli r1, r1, 4
addi r1, r1, 15
addi r1, r1, 15 //overflow happens
addi r1, r1, -16 //underflow happens
