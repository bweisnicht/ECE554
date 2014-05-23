 // finalTest
 //
 // Extra tests beyond the first four programs.
 // For the single-cycle implementation.
 //
 // CS/ECE 552, Spring 2006
 // Andy Phelps  30 March 2006
 // Modified 
 // Pratap Ramamurthy 6th May, 2007

 // Rotate left by 16, 15, 14,...1 bits.
 // 
 // Tony 2010  - ...

 lbi r0, 16
 lbi r1, 1
 lbi r2, 2
 lbi r3, 4
 lbi r4, 8
 lbi r5, 16

.loop:
 rol r1, r1, r0      // 
 rol r2, r2, r0      // 
 rol r3, r3, r0      // 
 rol r4, r4, r0      // 
 rol r5, r5, r0      // 
 addi r0, r0, 0x1ff //
 bnez r0, .loop

 roli r1, r1, 8     //r1=0x000100
 roli r2, r2, 8     //r2=0x000200
 roli r3, r3, 8     //r3=0x000400
 roli r4, r4, 8     //r4=0x000800
 roli r5, r5, 8     //r5=0x001000
 add r1, r1, r2      // r1 = 0x000300
 add r1, r1, r3      // r1 = 0x000700
 add r1, r1, r4      // r1 = 0x000f00 
 add r1, r1, r5      // r1 = 0x001f00
 addi r1, r1, 1      // r1 = 0x001f01
 roli r1, r1, 11     // r1 = 0xf80100

 lbi r0, U.DataArea
 slbi r0, L.DataArea
 st r1, r0, 0         //mem[74] = 0xf80100

 // Factorial test from Casey:

 // Load the input parameter into r1 (can be up to 8):
 lbi r1, 6
 addi r4, r1, 0

.factorialloop:

 addi r5, r1, 0x1fe //Multiplybyr1-1so(r1-2)..0willber1-1times
 addi r6, r4, 0 
 beqz r5, .storeresult

.multiplyloop:

 add r4,r4,r6          // Add r4 to r6 (original r4) and store in r4
 addi r5, r5, 0x1ff //Subtractonefrommultiplicationloopcounter
 bnez r5, .multiplyloop

 addi r1, r1, 0x1ff //Subtractonefromtheinputparametersoitequalsn-1
 j .factorialloop

.storeresult:

 lbi r31, U.DataArea
 slbi r31, L.DataArea
 // Store the result to memory
 st r4, r31, 2

 // Loop to add up a range of memory;
 // complement the sum, then add it all
 // on again to sum to 0xffffffff.
 // r0:r1 is the accumulator.

 lbi r5, 0
 lbi r6, 0x10
 lbi r0, 0
 lbi r1, 0

.addloop:
 ld r2, r5, 0     //r2 = 0
 ld r3, r5, 2     //r3 = mem[r5 + 2]
 addi r5, r5, 4   //r5 = 4
 jal .Add32 // Call addition subroutine
 addi r6, r6, 0x1ff 
 bnez r6, .addloop

 // 1's complement the accumulator:

 //oldway
 lbi r6, 0xfff 
 //xor r0, r0, r6
 //xor r1, r1, r6

 //new way
 subi r0, r0, 0x1ff //r0=-1-r0<sothisshouldbeabitwisecompliment?
 subi r1, r1, 0x1ff //r1=-1-r1

 lbi r5, 0
 lbi r6, 0x10

.subloop:
 ld r2, r5, 0
 ld r3, r5, 2
 addi r5, r5, 4
 jal .Add32 // Call addition subroutine
 addi r6, r6, 0x1ff 
 bnez r6, .subloop

 lbi r31, U.DataArea
 slbi r31, L.DataArea
 st r0, r31, 4
 st r1, r31, 6

 halt

 /////////////////////////////////////
 // Subroutine to do 32-bit addition:
 // r0:r1 is the accumulator
 // r2:r3 is added on
 // r4 is a temp
 // preserve r5, r6

.Add32:
 sco r4, r1, r3  //r4 = 0
 add r1, r1, r3  //r1 = 0
 add r0, r0, r2
 add r0, r0, r4
 //jr r7, 0        // return
 ret

 halt
 halt
 halt

.DataArea:
 halt          // 0x0001
 halt          // 0x02d0
 halt          // 0xffff
 halt          // 0xffff


