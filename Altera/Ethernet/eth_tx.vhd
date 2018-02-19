library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

use work.types.all;

entity eth_tx is
port(
	bank_info     : in eth_bank_t;
	bank_info_clrn: out std_logic_vector(1 downto 0);

	tx_data_addr: out std_logic_vector(12 downto 0);
	tx_data     : in  std_logic_vector(3 downto 0);

	tx_clk : in  std_logic;
	txd    : out std_logic_vector(3 downto 0);
	tx_en  : out std_logic := '0');
end entity;

architecture behavioral of eth_tx is

component crc32nibble is
port(
	clock    : in std_logic;
	clock_en	: in std_logic;
	sclr		: in std_logic;
	d        : in std_logic_vector(3 downto 0);
	q			: out std_logic_vector(31 downto 0);
	crc_ok   : out std_logic);
end component;

	signal crc_sclr_s : std_logic := '0';

	type eth_tx_sm_t is (st_idle, st_reg_addr1, st_reg_addr2,  st_send_data, st_send_crc, st_wait_interframe);
	signal eth_tx_sm : eth_tx_sm_t := st_idle;
	
	signal addr_cnt_r   : std_logic_vector(11 downto 0) := (others=>'0');
	signal nibble_cnt_r : std_logic_vector(11 downto 0) := (others=>'0');
	signal nibble_cnt_zero_r : std_logic := '0';

	signal crc_q      : std_logic_vector(31 downto 0) := (others=>'0');
	signal crc_clock_en_s : std_logic := '0';

	signal current_bank_r: std_logic := '0';
	signal current_bank_busy_s: std_logic := '0';
	signal bank_busy_r : std_logic_vector(1 downto 0) := (others=>'0');

	signal tx_bank_busy_r: std_logic_vector(1 downto 0) := (others=>'0');
	signal bank_info_clrn_r : std_logic_vector(1 downto 0) := (others=>'0');
	
	signal txd_r : std_logic_vector(3 downto 0) := (others=>'0');
	signal tx_en_r : std_logic := '0';
	
begin
	
crc32nibble_i: crc32nibble 
port map(
	clock    => tx_clk,
	clock_en => crc_clock_en_s,
	sclr     => crc_sclr_s,
	d        => tx_data,
	q        => crc_q);
	
	crc_sclr_s <= '1' when eth_tx_sm=st_send_data and addr_cnt_r=B"0000_0001_0011" else '0';
	crc_clock_en_s <= '0' when eth_tx_sm=st_send_crc else '1';

	current_bank_busy_s <= tx_bank_busy_r(0) when current_bank_r='0' else tx_bank_busy_r(1);
	
tx_clk_proc: process(tx_clk)
begin
	if tx_clk'event and tx_clk='1' then
		tx_bank_busy_r <= bank_info(1)(10) & bank_info(0)(10);
		
		bank_info_clrn_r <= B"11";
		
		txd_r   <= B"0000";
		tx_en_r <= '0';
		
		addr_cnt_r   <= addr_cnt_r+'1';
		nibble_cnt_r <= nibble_cnt_r-'1';
		nibble_cnt_zero_r <= '0';
		if nibble_cnt_r=B"0000_0000_0001" then
			nibble_cnt_zero_r <= '1';
		end if;

		case eth_tx_sm is
		when st_idle =>
			addr_cnt_r <= B"0000_0000_0010"; -- memory fetch compensation
			if current_bank_busy_s='1' then
				eth_tx_sm <= st_reg_addr1;
			end if;
		
		when st_reg_addr1 =>
			if current_bank_r='0' then
				nibble_cnt_r <=  bank_info(0)(9 downto 0) & B"00";
			else
				nibble_cnt_r <=  bank_info(1)(9 downto 0) & B"00";
			end if;
			eth_tx_sm <= st_reg_addr2;
			
		when st_reg_addr2 =>
			eth_tx_sm <= st_send_data;

		when st_send_data =>
			txd_r   <= tx_data;
			tx_en_r <= '1';
		
			if nibble_cnt_zero_r='1' then
				if current_bank_r='0' then
					bank_info_clrn_r(0) <= '0';
				else
					bank_info_clrn_r(1) <= '0';
				end if;
				current_bank_r <= not current_bank_r;
				
				nibble_cnt_r <= B"0000_0000_0111";
				eth_tx_sm <= st_send_crc;
			end if;
	
		when st_send_crc =>
			case nibble_cnt_r(2 downto 0) is
			when B"111" => txd_r <= crc_q( 3 downto  0);
			when B"110" => txd_r <= crc_q( 7 downto  4);
			when B"101" => txd_r <= crc_q(11 downto  8);
			when B"100" => txd_r <= crc_q(15 downto 12);
			when B"011" => txd_r <= crc_q(19 downto 16);
			when B"010" => txd_r <= crc_q(23 downto 20);
			when B"001" => txd_r <= crc_q(27 downto 24);
			when B"000" => txd_r <= crc_q(31 downto 28);
			when others =>
			end case;
			tx_en_r <= '1';

			if nibble_cnt_zero_r='1' then
				nibble_cnt_r <= B"0000_0001_0101";
				eth_tx_sm <= st_wait_interframe;
			end if;
		
		when st_wait_interframe =>
			if nibble_cnt_zero_r='1' then
				eth_tx_sm <= st_idle;
			end if;
		end case;
		
	end if; -- tx_clk
end process;

	txd <= txd_r;
	tx_en <= tx_en_r;
	tx_data_addr <= current_bank_r & addr_cnt_r;
	bank_info_clrn <= bank_info_clrn_r;
	
end architecture;