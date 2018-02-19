library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

use ieee.std_logic_arith.all;
use ieee.numeric_bit.all;

use std.textio.all;

library work;
use work.io_utils.all;

entity tb_eth_rx is
generic(
	module_name : string;
	input_file : string);
port(
	ETH_RX_CLK : out std_logic;
	ETH_RX_DV  : out std_logic;
	ETH_RXD    : out std_logic_vector(3 downto 0));
end tb_eth_rx;

architecture behavioral of tb_eth_rx is

component crc32nibble is
port(
	clock    : in std_logic;
	clock_en	: in std_logic;
	sclr		: in std_logic;
	d        : in std_logic_vector(3 downto 0);
	q			: out std_logic_vector(31 downto 0);
	crc_ok   : out std_logic);
end component;

   constant CLOCK_PERIOD  : time := 40 ns;
	signal rx_clk : std_logic := '0';
	signal rx_dv  : std_logic := '0';
	signal rxd    : std_logic_vector(3 downto 0) := (others=>'0');
	signal crc_sclr_s : std_logic := '0';
	
	signal crc_q  : std_logic_vector(31 downto 0) := (others=>'0');
	signal crc_ok : std_logic := '0';

	type rx_header_t is array(0 to 41) of integer;
	signal rx_header : rx_header_t := (82, 118, 152, 186, 1, 16, 0, 13, 97, 17, 169, 233, 8, 0, 69, 0, 0, 46, 56, 68, 
			0, 0, 128, 17, 127, 29, 192, 168, 1, 1, 192, 168, 1, 12, 23, 112, 23, 112, 0, 26, 41, 157);

begin

crc32nibble_i : crc32nibble
port map(
	clock    => rx_clk,
	clock_en	=> '1',
	sclr		=> crc_sclr_s,
	d        => rxd,
	q			=> crc_q,
	crc_ok   => crc_ok);

	ETH_RX_CLK <= rx_clk;
	ETH_RX_DV  <= rx_dv;
	ETH_RXD    <= rxd;

eth_rx_proc: process
  	file in_file: TEXT open read_mode is input_file;
  	variable ilin, l : line;
	variable nop_cycles_cnt : integer := 0;
	variable data_cycles_cnt : integer := 0;
	variable data_int : integer := 0;
	variable data_std_logic_vector : std_logic_vector(15 downto 0) := (others=>'0');
	variable cycle_cnt : integer := 0;
	variable crc_var : std_logic_vector(31 downto 0) := (others=>'0');

begin
	readline(in_file, ilin); 
	read(ilin,nop_cycles_cnt);
	
-- interframe
	crc_sclr_s <= '1';
	rx_dv <= '0';
	rxd   <= (others=>'0');		
	for cycle_cnt in 1 to nop_cycles_cnt loop
		rx_clk <= '0';
		wait for CLOCK_PERIOD/2;
		rx_clk <= '1';
		wait for CLOCK_PERIOD/2;
	end loop;

-- preamble & SFD
	rx_dv <= '1';
	rxd   <= B"0101";
	for cycle_cnt in 1 to 7 loop
		rx_clk <= '0';
		wait for CLOCK_PERIOD/2;
		rx_clk <= '1';
		wait for CLOCK_PERIOD/2;
	end loop;
	rxd   <= B"1101";
		rx_clk <= '0';
		wait for CLOCK_PERIOD/2;
		rx_clk <= '1';
		wait for CLOCK_PERIOD/2;
-- DATA
	crc_sclr_s <= '0';
	
	for cycle_cnt in 0 to 41 loop
		data_std_logic_vector := conv_std_logic_vector(rx_header(cycle_cnt),16);
		rxd <= data_std_logic_vector(3 downto 0);
		rx_clk <= '0';
		wait for CLOCK_PERIOD/2;
		rx_clk <= '1';
		wait for CLOCK_PERIOD/2;
		rxd <= data_std_logic_vector(7 downto 4);
		rx_clk <= '0';
		wait for CLOCK_PERIOD/2;
		rx_clk <= '1';
		wait for CLOCK_PERIOD/2;		
	end loop;
	
--	read(ilin,data_cycles_cnt);
	while ilin'length>0 loop
--	for cycle_cnt in 1 to data_cycles_cnt loop
		read(ilin, data_int, radix=>16);
		data_std_logic_vector := conv_std_logic_vector(data_int,16);
		rxd <= data_std_logic_vector(3 downto 0);
		rx_clk <= '0';
		wait for CLOCK_PERIOD/2;
		rx_clk <= '1';
		wait for CLOCK_PERIOD/2;
		rxd <= data_std_logic_vector(7 downto 4);
		rx_clk <= '0';
		wait for CLOCK_PERIOD/2;
		rx_clk <= '1';
		wait for CLOCK_PERIOD/2;		
		rxd <= data_std_logic_vector(11 downto 8);
		rx_clk <= '0';
		wait for CLOCK_PERIOD/2;
		rx_clk <= '1';
		wait for CLOCK_PERIOD/2;
		rxd <= data_std_logic_vector(15 downto 12);
		rx_clk <= '0';
		wait for CLOCK_PERIOD/2;
		rx_clk <= '1';
		wait for CLOCK_PERIOD/2;		
	end loop;
	data_int := ilin'length;
	read(ilin, data_int, radix=>16);
	crc_var := crc_q;
-- CRC
	for cycle_cnt in 1 to 8 loop
		rxd <= crc_var(3 downto 0);
		crc_var := B"0000" & crc_var(31 downto 4);
		rx_clk <= '0';
		wait for CLOCK_PERIOD/2;
		rx_clk <= '1';
		wait for CLOCK_PERIOD/2;
	end loop;
end process;
end behavioral;
