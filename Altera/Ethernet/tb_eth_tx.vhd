library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

use ieee.std_logic_arith.all;
use ieee.numeric_bit.all;

use std.textio.all;
use work.io_utils.all;

entity tb_eth_tx is
generic(
	module_name : string;
	output_file : string);
port(
	ETH_TX_CLK : out std_logic;
	ETH_TX_EN  : in std_logic;
	ETH_TXD    : in std_logic_vector(3 downto 0));
end tb_eth_tx;

architecture behavioral of tb_eth_tx is

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
--	constant FIRST_WORD_NUM : integer := 21;
	constant FIRST_WORD_NUM : integer := 0;
	
	signal tx_clk : std_logic := '0';

	signal crc_sclr  : std_logic := '0';
--	signal crc_d     : std_logic_vector(3 downto 0) := (others=>'0');
	signal crc_ok    : std_logic := '0';

	type txd_ram_t is array(0 to 2047) of std_logic_vector(15 downto 0);
	signal txd_ram : txd_ram_t := (others=>(others=>'0'));

	type sm_t is (sm_idle, sm_wait_sfd, sm_data1, sm_data2, sm_data3, sm_data4);
	signal sm : sm_t := sm_idle;
	
begin

crc32nibble_i : crc32nibble
port map(
	clock    => tx_clk,
	clock_en	=> '1',
	sclr		=> crc_sclr,
	d        => ETH_TXD,
	q			=> open,
	crc_ok   => crc_ok);


eth_tx_clk_proc : process
begin
	tx_clk <= '0';
	wait for CLOCK_PERIOD/2;
	tx_clk <= '1';
	wait for CLOCK_PERIOD/2;
end process;

ETH_TX_CLK <= tx_clk;

tx_clk_proc : process(tx_clk)
  	file tx_data_out_file: TEXT open write_mode is output_file;
	variable l : line;

	variable nibble0_v : std_logic_vector(3 downto 0) := (others=>'0');
	variable nibble1_v : std_logic_vector(3 downto 0) := (others=>'0');
	variable nibble2_v : std_logic_vector(3 downto 0) := (others=>'0');
	variable txd_addr_v : integer := 0;
	variable i : integer := 0;
	
begin
if tx_clk'event and tx_clk='1' then
	case sm is
	when sm_idle =>
		if ETH_TX_EN='1' and ETH_TXD=B"0101" then
			sm <= sm_wait_sfd;
		end if;
	when sm_wait_sfd =>
		crc_sclr <='1';
		if ETH_TX_EN='1' and ETH_TXD(2 downto 0)=B"101" then
			if ETH_TXD(3)='1' then
				crc_sclr <= '0';
				sm <= sm_data1;
				txd_addr_v := 0;
			end if;
		else
			sm <= sm_idle;
		end if;
		
	when sm_data1 =>
		if ETH_TX_EN='0' then
			if crc_ok='1' then
				for i in FIRST_WORD_NUM to txd_addr_v-3 loop
					write(l, conv_integer(txd_ram(i)(15 downto 12)), base => hex);
					write(l, conv_integer(txd_ram(i)(11 downto  8)), base => hex);
					write(l, conv_integer(txd_ram(i)( 7 downto  4)), base => hex);
					write(l, conv_integer(txd_ram(i)( 3 downto  0)), base => hex);
					write(l, string'(" "));
				end loop;
				writeline(tx_data_out_file, l);				
			else
				write(l, string'("CRC fault"));
				writeline(tx_data_out_file, l);				
			end if;
			sm <= sm_idle;
		else
			nibble0_v := ETH_TXD;
			sm <= sm_data2;
		end if;
		
	when sm_data2 =>
		if ETH_TX_EN='0' then
			sm <= sm_idle;
		else
			nibble1_v := ETH_TXD;
			sm <= sm_data3;
		end if;
		
	when sm_data3 =>
		if ETH_TX_EN='0' then
			sm <= sm_idle;
		else
			nibble2_v := ETH_TXD;
			sm <= sm_data4;
		end if;
		
	when sm_data4 =>
		if ETH_TX_EN='0' then
			sm <= sm_idle;
		else
			txd_ram(txd_addr_v) <= ETH_TXD & nibble2_v & nibble1_v & nibble0_v;
			txd_addr_v := txd_addr_v + 1;
			sm <= sm_data1;
		end if;

	end case;
end if;
end process;
end;
