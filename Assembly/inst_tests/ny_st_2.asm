//Author: James Nystrom
//CS552 - Spring 10
//st_2.asm
//Store instruction test - Offset

lbi	r1, 0xBE //load what will be the upper 8 bit into r1
slbi	r1, 0xEF //shift value to load entire 16 bit into memory
lbi	r2, 0x00 //init the value of r2 to all 0's for address
slbi	r2, 0x00
st	r1, r2,8 //store the value with an offset of 8.
ld	r4, r2,8 // load back with an offset of 8 to check results
halt

//Also you can look at loadfile_all.img.dmem to check to 
//see if the correct value is in the data memory
