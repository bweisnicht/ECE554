 // ultimateTest
 //
 // The last test to run!
 //
 // CS/ECE 552, Spring 2007
 // Pratap Ramamurthy  25 April 2007
 //
 // This is a sorting program.  It reads a
 // list of numbers, sorts them into a
 // binary tree, and then traverses the
 // tree to rewrite the list of numbers
 // in numeric order.
 //
 // Conventions:
 //    r7 - used for return addresses
 //    r6 - always points to global variables
 //    r5 - always points to the stack
 //            Push is stu X,r5,-1
 //            Pop is ld X,r5,0; addi r5,r5,1
 //
 // Tree is built out of nodes that look like:
 //         0: data value
 //         1: left pointer (to smaller values)
 //         2: right pointer (to larger values)

 j .realstart

 // Interrupt entry point:

 stu r0, r5, 0x1fe
 stu r1, r5, 0x1fe
 lbi r0, U.IntCounter
 slbi r0, L.IntCounter
 ld r1, r0, 0
 addi r1, r1, 2
 st r1, r0, 0
 ld r1, r5, 0
 ld r0, r5, 2
 addi r5, r5, 4
 rti //, Return, from

.IntCounter:



.realstart:

 ///////////////////////////////////////////////////////
 //Generate Random data  -  Conventions don't apply here
 //By:  Tony Nowatzki

 lbi r0, U.Numbers
 slbi r0, L.Numbers
 lbi r1, U.EndNumbers
 slbi r1, L.EndNumbers


 lbi r2, 0xAC
 slbi r2, 0xE1

 lbi r31, 0

 //lfsr = (lfsr >> 1) ^ (-(lfsr & 1u) & 0xB400u);   

.randStart:

 andi r3, r2, 1

 subi r3, r3, 0
 lbi r4, 0xB4
 slbi r4, 0x00
 and r3, r4, r3 // r3 = -(lfsr & 1) & 0xB400u

 srai r4, r2, 1

 slt r5, r4, r7 //r4 << 0? (handle the crap about not having srli
 beqz r5, .skippy
 lbi r6, 0x7F
 slbi r6, 0xFF
 and r4,r4,r6
.skippy:

 //xor = r3+r4 & ~(r3&r4)

 or r5, r4, r3 // first part of xor

 and r6, r4, r3

 subi r6, r6, 0
 addi r6, r6, 0x1ff

 and r2, r5, r6 //xor complete, update lfsr

 stu r2, r0, 2

 seq r3, r0, r1         // compare index to end of array
 beqz r3, .randStart

 //End Generate Random Data
 ///////////////////////////////////////////////////////////

 lbi r5, U.Stackbase
 slbi r5, L.Stackbase
 lbi r6, U.Globals
 slbi r6, L.Globals
 lbi r0, U.Heapbase
 slbi r0, L.Heapbase
 st r0, r6, 0

 lbi r1, 45
 //siic r1              //
 nop                    // The siic is disabled in this version; nop instead

 /////////////////////////////////////////////////////////

 lbi r0, U.Numbers
 slbi r0, L.Numbers
 lbi r1, U.EndNumbers
 slbi r1, L.EndNumbers

 ld r3, r0, 0
 addi r0, r0, 2
 jal .NewNode           // make initial node as special case
 st r2, r6, 2
.buildTreeLoop:
 ld r3, r0, 0
 addi r0, r0, 2
 ld r4, r6, 2
 jal .InsertNode
 seq r3, r0, r1         // compare index to end of array
 beqz r3, .buildTreeLoop

 lbi r0, U.Numbers
 slbi r0, L.Numbers
 ld r4, r6, 2
 jal .Traverse          // first call to recursive traverse routine

 // Read through the sorted numbers one last time.
 // All this does is make sure they're in cache so
 // they'll be easier to see when we're done.
 lbi r0, U.Numbers
 slbi r0, L.Numbers
 lbi r1, U.EndNumbers
 slbi r1, L.EndNumbers
.readLoop:
 ld r3, r0, 0
 addi r0, r0, 2
 seq r3, r0, r1         // compare index to end of array
 beqz r3, .readLoop

 halt                   // MADE IT


 ///////////////////////////////////////////////////
 //
 // Subroutine InsertNode:
 // Traverses tree to insert new node at correct spot
 // Called with a value in r3
 //   "     "   node pointer in r4
 // Preserves r0, r1
 // Does not preserve r2, r3, r4

.InsertNode:

 stu r31, r5, 0x1fe
 ld r2, r4, 0
 slt r2, r2, r3          // set if this node less than new data
 bnez r2, .insertRight

 // insert at left link:
 ld r2, r4, 2
 bnez r2, .recurse
 jal .NewNode            // make new node, address in r2
 st r2, r4, 2

.return:
 ld r31, r5, 0
 addi r5, r5, 2
 jr r31, 0

.insertRight:
 ld r2, r4, 4
 bnez r2, .recurse
 jal .NewNode            // make new node, address in r2
 st r2, r4, 4
 j .return

.recurse:
 addi r4, r2, 0
 jal .InsertNode         // recurse
 j .return


 ///////////////////////////////////////////////////
 //
 // Subroutine NewNode:
 // Called with a value in r3
 // Allocates a node off the heap
 // Stores the value into the node
 // Assumes that the pointers in the
 // node are already zero
 // Return address of node in r2
 // Preserves r0, r1, r3, r4

.NewNode:
 ld r2, r6, 0
 addi r2, r2, 6
 st r2, r6, 0
 stu r3, r2, 0x1fa
 jr r31, 0


 ///////////////////////////////////////////////////
 //
 // Subroutine Traverse:
 // Called with a node pointer in r4
 //    "    "   store pointer in r0
 // Recurses left, stores own data, recurses right
 // Does not preserve any registers

.Traverse:
 stu r31, r5, 0x1fe
 stu r4, r5, 0x1fe
 ld r4, r4, 2
 beqz r4, .skipLeft
 jal .Traverse       // recurse if non-null
.skipLeft:
 ld r4, r5, 0
 ld r1, r4, 0
 st r1, r0, 0
 addi r0, r0, 2
 ld r4, r4, 4
 beqz r4, .skipRight
 jal .Traverse       // recurse if non-null
.skipRight:
 ld r31, r5, 2
 addi r5, r5, 4
 jr r31, 0


 ///////////////////////////////////////////////////
 //
.Numbers:

.EndNumbers:


.Globals:
 data 0                 // 0: Heap pointer
 data 0                 // 1: Head of tree

 // Stack area:
 zerofill 100           // Stack area; grows toward 0
.Stackbase:

.Heapbase:
 zerofill 200           // Heap area; grows toward FFFF
