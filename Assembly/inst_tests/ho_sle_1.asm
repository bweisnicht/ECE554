// SLE Test 1:
// Test a greater than (Rs > Rt) case
// Expected output/results:
//	Rs = r2 = 14
//	Rt = r3 = 9
//	Rd = r1 = 0
// Author: David Hoese, cs552, Spring 2010
//

lbi r2, 14			// Load Immediate Test Value
lbi r3, 9			// Load Immediate Test Value
sle r1, r2, r3		// Run > instruction case
halt

