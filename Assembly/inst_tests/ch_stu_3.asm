//Cody Hanson
//testing the STU instruction

//same rs and rd

//storing into address 16 + immediate of 0
lbi r2 , 16
stu r2, r2,0

//loading from the saved address that was stuffed into r2
ld r3, r2,0

//compare values of r2 and r3 to see if they were equal
SEQ r4,r2,r3
HALT
