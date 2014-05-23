 // pipeTest - a final program for the first pipeline demo
 //
 // CS/ECE 552, Spring 2007
 // Pratap Ramamurthy  19 April 2006
 //

 lbi r0, 5
 addi r0, r0, 0x1fb //r0=0x0000
 beqz r0, .go1
 halt                    // doesn't execute
 halt
.go1:
 lbi r1, 0xfff //r1=0xffff
 slt r2, r1, r0          // r2 = 0x0001
 bnez r2, .go2
 st r0, r0, 0
 halt                    // doesn't execute
.go2:
 lbi r3, U.Data1
 slbi r3, L.Data1
 lbi r4, U.Data2
 slbi r4, L.Data2
 st r4, r3, 0
 lbi r5, 0x55
 slli r5, r5, 9
 st r5, r4, 0
 addi r3, r3, 0x1ff //r3=.Data1-1=0x0055
 ld r6, r3, 1
 ld r31, r6, 0
 stu r31, r6, 2
 addi r6, r6, 2
 stu r31, r6, 2
 lbi r0, 0
 jal .go3                // r7 = .RetAddr1 = 0x0034
.RetAddr1:
 halt
.go4:
 jalr r31, 2
 halt
 halt
 halt
 halt
 halt
 halt
 halt
 halt
.go3:
 jalr r31, 1
.RetAddr2:
 st r31, r0, 0
 halt                    // doesn't execute
.go5:
 halt                    // MADE IT
 stu r31, r6, 2
 halt
 halt
.Data1:
 halt                    // .Data2 = 0x005a
 halt
.Data2:
 halt                    // 0xaa00
 halt                    // 0xaa00
 halt
 halt                    // 0xaa00
 halt
 halt
 halt
 halt
 halt
