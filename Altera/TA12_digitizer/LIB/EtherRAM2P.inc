FUNCTION  EtherRAM2P
(
	address_a[9..0],
	data_a[15..0],
	wren_a,
	address_b[9..0],
	data_b[15..0],
	wren_b,
	clock_a,
	enable_a,
	clock_b,
	enable_b
)

WITH  ( EtherRAM_init_file )

RETURNS (
	q_a[15..0],
	q_b[15..0]
);
