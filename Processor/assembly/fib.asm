# $1-$3, matematical registers
# $5   , sentinel 
# $6   , bound
# expected result from data port: 987 or 0x3db
	lbi $1, 0;
	lbi $2, 1;
	lbi $5, 0;
	lbi $6, 5;
loop:   add $3, $1, $2;
	add $1, $3, $2;
	add $2, $1, $3;
	addi $5, $5, 1;
	sub $7, $6, $5;
	beqz $7, loop;
	st $8, $2, 0;
