FUNCTION  TestRAM2P
(
	address_a[7..0],
	data_a[15..0],
	wren_a,
	address_b[7..0],
	data_b[15..0],
	wren_b,
	clock_a,
	enable_a,
	clock_b,
	enable_b
)

WITH  ( TestRAM_init_file )

RETURNS (
	q_a[15..0],
	q_b[15..0]
);
