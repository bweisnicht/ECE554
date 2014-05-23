// Name: Ammar Al Marzouqi
// username: ammar

// Program to test ori instruction. Which checks if the immediate is zero
// extended correctly and then ori-ed with the original value loaded into
// r0. And have the result written correctly into r1

lbi r0, 0x19
ori r1, r0, 0x14
halt // expected content in r1 is 0x1d
