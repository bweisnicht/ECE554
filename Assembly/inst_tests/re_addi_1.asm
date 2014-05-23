andi r1, r1, 0 //get 0 into r1
addi r1, r1, 0 //test simple add
addi r1, r1, -16 //get lowest possible number into r1
addi r2, r1, 11
sll r1, r1, r1
addi r1, r1, -15 //underflow happens
addi r1, r1, 15 //overflow happens
