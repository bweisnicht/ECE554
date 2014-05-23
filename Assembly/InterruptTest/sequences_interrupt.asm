// interrupt code
 andi r30, r30, 0x0
 addi r29, r30, 42
 lbi r28, 0x006
 slbi r28, 0x820
 st r29, r28, 0
 reti
 halt
 halt
 halt
 halt
 halt
 halt
 halt
 halt
 halt
 halt
 halt
 halt
 halt
 halt
 halt
 halt
 halt
 halt
 halt
 halt
 halt
 halt
 halt
 halt
 halt
 halt

 //A basic program that stores that first 24 numbers of the fibonacci sequence;
 //it then uses these numbers to create a "backward' fibonacci sequence by subtracting
 //each larger number from it's predecessor, and stores this sequence in memory.
 //--------------------
 //This program mostly tests cache performance: instruction fetches should be hits
 //inside the loop - all loads from the second loop should also be hits.  Test also
 //tests processors ability to loop with jal, and uses a heavy amount of adds and subs.


  lbi r24, 0xfee
 slbi r24,0xded
 lbi r28, 0x006
 slbi r28, 0x820 
 lbi r0, 24		//r0
 lbi r1, 100
 lbi r2, 1		//r2
 lbi r3, 1		//r3
 st r2, r1, 0		//store
 addi r1, r1, 2
 addi r0, r0, 0x1ff 
 st r3, r1, 0		//store
 addi r0, r0, 0x1ff 

 jal .CalcFib		//store away first set of fibonacci numbers

 lbi r0, 24		//ro
 lbi r2, 200
 st r24, r28, 0

 jal .CalcRevFib		// store away backwards set of fibonacci nums
 st r24, r28, 0
 j .AckermanSetup

 st r24, r28, 0
 halt
 halt
 halt

.CalcFib:
 add r4, r2, r3		//get next number of sequence
 addi r1, r1, 2		//get
 st r4, r1, 0		//store
 st r4, r28, 0
 addi r0, r0, 0x1ff 
 addi r2, r3, 0		//eliminates
 addi r3, r4, 0		//makes
 bnez r0, .CalcFib	//if
 jr r31, 0


.CalcRevFib:
 ld r3, r1, 0		//load
 st r3, r2, 0		//put
 st r3, r28, 0
 addi r1, r1, 0x1fe 
 addi r2, r2, 2
 addi r0, r0, 0x1ff 
 bnez r0, .CalcRevFib	//loop
 jr r31, 0


.AckermanSetup:

 //Ackerman Program
 // r2 = return value
 // r3 is stack pointer
 // stack frame is always 6 bytes
 // stack frame:
 // 0-1: stored m
 // 2-3: stored n
 // 4-5: return address

 lbi r4, 3
 lbi r5, 3
 lbi r3, 100
 jal .Ackermann  // calls A(m,n)
 addi r6, r2, 0
 halt  

.Ackermann:    
 addi r3, r3, 6
 st r0, r3, 0
 st r1, r3, 2
 addi r0, r4, 0
 addi r1, r5, 0
 beqz r0, .m_is_0
 beqz r1, .n_is_0
 
.m_n_positive:    
 // A(m,n) = A(m-1, A(m,A(m,n-1)) if m>0, n>0
 addi r5, r5, 0x1ff 
 st r31, r3, 4
 jal .Ackermann  // A(m,n-1)
 addi r5, r2, 0
 addi r4, r0, 0x1ff 
 jal .Ackermann  // A(m-1, A(m,A(m,n-1))
 ld r31, r3, 4
 j .prepareReturn
 
.n_is_0:    	
 // A(m,0) = A(m-1,1) if m>0, n=0
 addi r4, r0, 0x1ff 
 lbi r5, 1
 st r31, r3, 4
 jal .Ackermann  
 ld r31, r3, 4
 j .prepareReturn
  
.m_is_0:    	
 // A(0,n) = n+1
 addi r2, r5, 1

.prepareReturn:    
 ld r0, r3, 0
 ld r1, r3, 2
 addi r3, r3, 0x1fa 
 jr r31, 0
 halt   

