// Name: Ammar Al Marzouqi
// username: ammar

// Program to test ori instruction. Which checks if the immediate is zero
// extended correctly and then ori-ed with the original value loaded into
// r0.

lbi r0, 0x81
ori r0, r0, 0x1f
halt // expected content in r0 is 0xff9f
