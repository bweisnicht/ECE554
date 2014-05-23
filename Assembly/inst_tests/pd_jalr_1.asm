// Slightly more complicated jalr test. Verifies that we can specify an offset for the jump.
// Assumes Valid: lbi, halt, addi.
// Expected Results: A value of 0, 1, or 2 in R2.
//   0 - This means your processor did not jump the correct number past jalrtarget, or did not halt.
//   1 - Your processor jumped past .jalrtarget, but did not return correctly.
//   2 - Everything's shiney!

lbi r1, .jalrtarget     // Load an address to jump to.
jalr r1, 4              // Jump and link to that address.
halt                    // Shouldn't hit this line.
lbi r2, 2               // Success! Indicate this by putting 2 in r2.
halt
halt
halt                    // Some padding with halts.
halt
halt
.jalrtarget:
halt
halt
lbi r2, 1               // We got here, put 1 in r2 to indicate this.
addi r7, r7, 2          // Advance our return register past the first halt.
ret                     // Return, hopefully to instructon 0x0006
halt                    
halt
halt                    // Some padding with halts.
halt
halt
lbi r2, 0               // This shouldn't run, but in case it does,
                        // set r2 to 0 to indicate failure.
