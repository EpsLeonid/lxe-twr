library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

use work.types.all;

entity eth_rx is
port(
	rx_clk: in std_logic;
	rx_dv : in std_logic;
	rxd   : in std_logic_vector(3 downto 0);

	col: in std_logic;
	crs: in std_logic;
	
	rx_data_addr: out std_logic_vector(12 downto 0);
	rx_data     : out std_logic_vector(3 downto 0);
	rx_data_we  : out std_logic;
	
	bank_info     : out eth_bank_t;
	bank_info_clrn: in std_logic_vector(1 downto 0));
end eth_rx;

architecture behavioral of eth_rx is

component crc32nibble is
port(
	clock    : in std_logic;
	clock_en	: in std_logic;
	sclr		: in std_logic;
	d        : in std_logic_vector(3 downto 0);
	q			: out std_logic_vector(31 downto 0);
	crc_ok   : out std_logic);
end component;

	signal bank_info_r: eth_bank_t := (others=>(others=>'0'));
	signal update_bank_info_s: std_logic := '0';
	signal current_bank_r:     std_logic := '0';
	signal current_bank_ready_s: std_logic := '0';
	signal addr_cnt: std_logic_vector(11 downto 0) := (others=>'0');
	signal crc_sclr: std_logic := '0';
	signal crc_ok: std_logic := '0';	
	type eth_rx_sm_t is ( st_idle, st_check_preamble, st_wait_sfd, st_rx_data);
	signal eth_rx_sm:      eth_rx_sm_t := st_idle;
	signal eth_rx_sm_next: eth_rx_sm_t := st_idle;
begin
	
crc32nibble_i: crc32nibble 
port map(
	clock    => rx_clk,
	clock_en => '1',
	sclr     => crc_sclr,
	d        => rxd,
	q        => open,
	crc_ok   => crc_ok);
	
rx_clk_proc: process(rx_clk, bank_info_clrn)
begin
	if rx_clk = '1' and rx_clk'event then
		eth_rx_sm <= eth_rx_sm_next;
		
		if update_bank_info_s = '1' then
			current_bank_r <= not current_bank_r;
		end if;
		
		if update_bank_info_s = '1' and current_bank_r = '0' then
			bank_info_r(0) <= '1' & addr_cnt(11 downto 2);
		end if;
		if update_bank_info_s = '1' and current_bank_r = '1'  then
			bank_info_r(1) <= '1' & addr_cnt(11 downto 2);
		end if;
		
		if eth_rx_sm = st_wait_sfd then
			addr_cnt <= (others=>'0');
		else
			addr_cnt <= addr_cnt + '1';
		end if;
	end if;
	if bank_info_clrn(0) = '0' then
		bank_info_r(0)(10) <= '0';
	end if;	
	if bank_info_clrn(1) = '0' then
		bank_info_r(1)(10) <= '0';
	end if;	
end process;

rx_data_we <= '1' when eth_rx_sm=st_rx_data else '0';
update_bank_info_s <= '1' when eth_rx_sm=st_rx_data and rx_dv='0' and crc_ok='1' else '0';
crc_sclr <= '1' when eth_rx_sm=st_wait_sfd else '0';

comb_proc: process(eth_rx_sm, rx_dv, rxd, current_bank_ready_s)
begin
	
	eth_rx_sm_next <= eth_rx_sm;
	case eth_rx_sm is
	when st_idle =>
		if rx_dv = '1' and current_bank_ready_s='1' then
			eth_rx_sm_next <= st_check_preamble;
		end if;

	when st_check_preamble =>
		if rx_dv = '1' and rxd=X"5" then
			eth_rx_sm_next <= st_wait_sfd;
		else
			eth_rx_sm_next <= st_idle;
		end if;

	when st_wait_sfd =>
		if rx_dv = '0' or rxd(2 downto 0) /= B"101" then
			eth_rx_sm_next <= st_idle;
		elsif rxd(3) = '1' then
			eth_rx_sm_next <= st_rx_data;
		end if;

	when st_rx_data =>
		if rx_dv = '0' then
			eth_rx_sm_next <= st_idle;
		end if;
	end case;
end process;

bank_info <= bank_info_r;
current_bank_ready_s <= not bank_info_r(0)(10) when current_bank_r='0' else not bank_info_r(1)(10);
rx_data_addr <= current_bank_r & addr_cnt;
rx_data <= rxd;

end architecture;