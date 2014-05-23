 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop
 nop

 // branchTest
 //
 // Test program for WISC-SP10 architecture
 // for jump and branch instructions
 // for the single-cycle implementation.
 //
 // CS/ECE 552, Spring 2006
 // Andy Phelps  24 March 2006
 // modified by tony, march 2010

 lbi r0, U.Label3
 slbi r0, L.Label3
 lbi r31, 0xfff //r7=0xffff
 lbi r6, 0

 j .Label1

 halt
 halt
 halt
 halt
 halt

.Label1:

 addi r1, r31, 0
 jal .Label2       // r7 = .RetAddr
.RetAddr:
 halt

.Label2:

 addi r5, r31, 0
 addi r3, r0, 0x1f7 //r3=.Label3-9
 jalr r3, 9
.RetAddr2:
 stu r1, r6, 1
 halt
 halt
 halt
 halt
 halt
 halt
 halt
 halt

.Label4:
 lbi r0, 0
 lbi r1, 1
 lbi r2, 0xfff //r2=0xffff

 beqz r0, .Label5

 halt
 halt
 halt
 halt

.Label8:  
 //r2 as scratch, r0 = 0
 addi r2, r2, 0
 addi r1, r1, 0
 addi r0, r0, 0
 sle r2, r1, r0    //bltz r1, .Death
 bnez r2, .Death
 beqz r0, .Label9
 halt
 halt
 halt

.Label3:

 lbi r4, U.Label4
 slbi r4, L.Label4
 lbi r0, 0xf9c 
 add r4, r4, r0     // r4 = .Label4-100
 add r5, r5, r7     // r5 = .RetAddr + .RetAddr2
 lbi r31, 0x55
 jr r4, 100
 addi r31, r31, 15
 halt
 halt
 halt
 halt

.Label5:
 bnez r0, .Death
 addi r6, r6, 2
 bnez r1, .Label6
 halt
 halt
.Label6:
 bnez r2, .Label7
 halt
 halt
 halt
 halt
 halt
.Label7:
 //bgez r2, .Death
 bnez r2, .Label8
 halt
 halt

.Death:
 lbi r6, 0xfff //Shouldnevermakeithere
 halt
 halt

.Label9:
 lbi r2, 0xfff //r2=0xffff
 addi r6, r6, 4

 // WE MADE IT!
 halt
 // We should have:
 //     r0 = 0x0000
 //     r1 = 0x0001
 //     r2 = 0xffff
 //     r3 = .Label3-9
 //     r4 = .Label4-100
 //     r5 = .RetAddr+.RetAddr2
 //     r6 = 0x0006
 //     r7 = 0x0055

 halt
 halt
 halt
 halt
 halt
 halt
 halt
