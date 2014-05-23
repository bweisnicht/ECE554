//Cody Hanson
//testing the STU instruction
//MUST IMPLEMENT EXCEPTION HANDLING

//putting r1 into memory
lbi r1 , 13

//non aligned store
//storing into address 1 + immediate of 0
lbi r2 , 0
stu r1, r2,0

//loading from the saved address that was stuffed into r2
ld r3, r2,0

//compare values of r3 and r1 to see if they were equal
SEQ r4,r3,r1
HALT
