 // shiftTest
 //
 // Test program for WISC-SP06 architecture:
 // shifts and bit-reverse and set-condition;
 // for the single-cycle implementation.
 //
 // CS/ECE 552, Spring 2006
 // Andy Phelps  27 March 2006
 //
 // modified by Karu 03/20/2008
 // replaced srai with rori
 // replaced tm with btr
 // register values in comments not correct anymore!!
 //
 // modified by tony 03/14/2010
 // btr removed
 // replaced srli with srai
 // register values in comments now correct? ( i think)
        
 // shift left logical
 lbi r0, 1
 slli r1, r0, 1
 slli r4, r1, 3
 sll r4, r4, r1     // r4 = 0x0040
 add r5, r4, r1     // r5 = 0x0042
 sll r6, r5, r5     // r6 = 0x0108
 add r7, r6, r5     // r7 = 0x014a
 slli r0, r31, 4
 slli r1, r0, 8
 sll r2, r7, r7     // r2 = 0x2800
 add r7, r1, r2     // r7 = 0xc800

 // rotate left
 lbi r0, 2
 roli r1, r0, 1
 roli r2, r1, 3
 rol r3, r2, r0     // r3 = 0x0080
 add r4, r3, r1     // r4 = 0x0084
 rol r5, r4, r4     // r5 = 0x0840
 add r6, r5, r4     // r6 = 0x08c4
 roli r0, r6, 7
 roli r1, r0, 8
 roli r2, r6, 13
 add r1, r1, r2     // r1 = 0x857a
 add r7, r7, r1     // r7 = 0x4d7a

 // shift right arithmetic
 lbi r0, 0x40
 slbi r0, 0x50
 rori r1, r0, 1
 rori r2, r1, 5
 roli r3, r1, 12
 add r3, r3, r1     // r3 = 0xa22a
 rori r4, r3, 1
 rori r5, r3, 2
 rori r6, r3, 4
 rori r0, r3, 5
 rori r1, r3, 8
 rori r2, r3, 13
 add r2, r2, r1     // r2 = 0x3bf7
 add r2, r2, r0     // r2 = 0x9108
 add r2, r2, r6     // r2 = 0x3b2a
 add r2, r2, r5     // r2 = 0xe3b4
 add r2, r2, r4     // r2 = 0x34c9
 add r7, r7, r2     // r7 = 0x8243

 // shift right logical
 lbi r0, 0x40
 slbi r0, 0x50
 srai r1, r0, 1
 srai r2, r1, 5
 roli r3, r1, 12
 add r3, r3, r1     // r3 = 0xa22a
 srai r4, r3, 1
 srai r5, r3, 2
 srai r6, r3, 3
 srai r0, r3, 7
 srai r1, r3, 9
 srai r2, r3, 14
 add r2, r2, r1     // r2 = 0xffcf
 add r2, r2, r0     // r2 = 0xff13
 add r2, r2, r6     // r2 = 0xf358
 add r2, r2, r5     // r2 = 0xdbe2
 add r2, r2, r4     // r2 = 0xacf7
 add r7, r7, r2     // r7 = 0x2f3a

 lbi r0, 0x12

 lbi r1, 0x00
 slbi r1, 0x01

 roli r2, r1, 1
 lbi r3, 0xFF
 slbi r3, 0xFF
 lbi r3, 0x00
 slbi r3, 0x00

 // Set-condition:  seq, slt, sle, sco

 lbi r0, 0xfe
 slbi r0, 0x01
 lbi r1, 0x9a
 slbi r1, 0xff
 lbi r2, 0x78
 slbi r2, 0x88
 seq r3, r0, r1     // r3 = 0x0000
 seq r4, r0, r0     // r4 = 0x0001
 slli r5, r4, 1
 add r3, r3, r5     // r3 = 0x0002
 slt r4, r2, r1     // r4 = 0x0000
 slli r5, r4, 2
 add r3, r3, r5     // r3 = 0x0002
 slt r4, r1, r0     // r4 = 0x0001
 slli r5, r4, 3
 add r3, r3, r5     // r3 = 0x000a
 slt r4, r0, r0     // r4 = 0x0000
 slli r5, r4, 4
 add r3, r3, r5     // r3 = 0x000a
 sle r4, r2, r1     // r4 = 0x0000
 slli r5, r4, 5
 add r3, r3, r5     // r3 = 0x000a
 sle r4, r0, r0     // r4 = 0x0001
 slli r5, r4, 6
 add r3, r3, r5     // r3 = 0x004a
 sco r4, r0, r1     // r4 = 0x0001
 slli r5, r4, 7
 add r3, r3, r5     // r3 = 0x00ca
 sco r4, r2, r2     // r4 = 0x0000
 slli r5, r4, 9
 add r3, r3, r5     // r3 = 0x00ca

 add r7, r7, r3     // r7 = 0x3004
 addi r31, r31, 0

 halt
 st r31, r5, 0
 st r31, r5, 0
