// interrupt code
// r30 = pointer to filt
// r16-r23 = filtered data
 lbi r30, 0x004   # store address of filt
 slbi r30, 0x000
 lbi r29, 0x006
 slbi r29, 0x820 
 ld r16, r30, 0        # load from filt which should reset interrupt
 ld r17, r30, 1
 ld r18, r30, 2
 ld r19, r30, 3
 ld r20, r30, 4
 ld r21, r30, 5
 ld r22, r30, 6
 ld r23, r30, 7
 st r16, r29, 0
 st r16, r29, 0 
 st r17, r29, 0
 st r18, r29, 0
 st r19, r29, 0
 st r20, r29, 0
 st r21, r29, 0
 st r22, r29, 0
 reti
 nop
 nop
 nop
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
//// end interrupt

// this program loops indefinetly until it gets an interrupt
  nop
  nop
  lbi r8, 0x006  # ready coefficients
  lbi r27, 0x005 # ready addr for filter
  slbi r27, 0x000
  st r8, r27, 0  # store this to the filter
  st r8, r27, 1
  st r8, r27, 2
  st r8, r27, 3
  st r8, r27, 4
  st r8, r27, 5
  st r8, r27, 6
  st r8, r27, 7
.Start          # loop infinetly 
  nop
  nop
  nop
  nop
  nop
  nop
  j .Start
