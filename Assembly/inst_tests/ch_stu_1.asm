//Cody Hanson
//testing the STU instruction

//putting r1 into memory
lbi r1 , 13

//storing into address 0 + immediate of 16
lbi r2 ,0 
stu r1, r2,16

//loading from the saved address that was stuffed into r2
ld r3, r2,0

//compare values of r3 and r1 to see if they were equal
SEQ r4,r1,r3
HALT
