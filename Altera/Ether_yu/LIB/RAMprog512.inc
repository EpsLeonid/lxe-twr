FUNCTION  RAMprog512
(
	address_a[(AddrBits-1)..0],
	data_a[15..0],
	wren_a,
	address_b[(AddrBits-1)..0],
	data_b[15..0],
	wren_b,
	clock_a,
	enable_a,
	clock_b,
	enable_b
)

WITH  ( NumWords, AddrBits, RAMprog_Init_File )

RETURNS (
	q_a[15..0],
	q_b[15..0]
);
