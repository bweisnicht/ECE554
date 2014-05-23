// interrupt code
// r30 = pointer to fpga registers
// r29 = pointer to spart
 lbi r30, 0x006
 slbi r30, 0x81C
 lbi r29, 0x006
 slbi r29, 0x820
 ld r28, r30        # load from fpga which should reset interrupt
 st r28, r29        # send to spart
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
 halt
 halt
 halt
 halt
 halt
 halt
 halt
 halt
 halt

// this program loops indefinetly until it gets an interrupt
.Start
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  j .Start
