// SLE Test 0:
// Test a less than (Rs < Rt) case
// Expected output/results:
//	Rs = r2 = 10
//	Rt = r3 = 15
//	Rd = r1 = 1
// Author: David Hoese, cs552, Spring 2010
//

lbi r2, 10			// Load Immediate Test Value
lbi r3, 15			// Load Immediate Test Value
sle r1, r2, r3		// Run < instruction case
halt

