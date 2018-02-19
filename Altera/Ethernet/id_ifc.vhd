library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

library work;

entity id_ifc is
port(
-- system
	clock    : in std_logic;
	clock_locked : in std_logic;
	hb5us : in std_logic;

	id      : out std_logic_vector(63 downto 0);
	
	SER_NUM_IF : inout std_logic);
end id_ifc;

architecture behavioral of id_ifc is
--	signal dbg_hb5us : std_logic := '0';

	signal reset_n_pres_cnt : std_logic_vector(7 downto 0) := (others=>'1'); -- 160 x 5 mks = 800 mks = 500 mks (reset) + 300 mks (presence)
	signal seq_cnt : std_logic_vector(10 downto 0) := (others=>'0'); -- 72 slots * 16 cycles/slot * 5 mks/cycle = 64 slots * 80 mks/slot = 3.2 ms

	signal ser_num_if_r : std_logic := '1';
	
	signal ser_num_if_ir : std_logic := '0';
	signal data_isr_push_r : std_logic := '0';
	signal data_isr : std_logic_vector(63 downto 0) := (others=>'0'); 

begin
clk_proc : process(clock)
begin

	if clock'event and clock='1' then	
--		dbg_hb5us <= not dbg_hb5us;
--		if dbg_hb5us='1' then
		if hb5us='1' and clock_locked='1' then
			if reset_n_pres_cnt /= conv_std_logic_vector(0,reset_n_pres_cnt'length) then
				reset_n_pres_cnt <= reset_n_pres_cnt - '1';
			end if;
			
			if seq_cnt /= conv_std_logic_vector(0,seq_cnt'length) then
				seq_cnt <= seq_cnt - '1';
			end if;
			
			if reset_n_pres_cnt = conv_std_logic_vector(1,reset_n_pres_cnt'length) then
				seq_cnt <= conv_std_logic_vector(1151,seq_cnt'length);
--				seq_cnt <= conv_std_logic_vector(1023,seq_cnt'length);
			end if;
			
			ser_num_if_r <= '1';
			
			if reset_n_pres_cnt>=B"0011_1101" and reset_n_pres_cnt<B"1010_0001" then
				ser_num_if_r <= '0';
			end if;
			
--			if (seq_cnt(3 downto 0) >= B"1110") and seq_cnt(10 downto 4) /= B"000_0000" then
			if (seq_cnt(3 downto 0) >= B"1110") then
				ser_num_if_r <= '0';
			end if;
			
			if seq_cnt(10)='1' and seq_cnt(5)='0' and seq_cnt(3 downto 1) /= B"000" then
				ser_num_if_r <= '0';
			end if;

			ser_num_if_ir <= SER_NUM_IF;
			
			data_isr_push_r <= '0';
			if seq_cnt(3 downto 0) = B"1101" then
				data_isr_push_r <= '1';
			end if;
			
			if data_isr_push_r='1' then
				data_isr <= ser_num_if_ir & data_isr(data_isr'high downto 1);
			end if;
			
		end if; -- hb
		
	end if; -- clock
end process;
	
	SER_NUM_IF <= '0' when ser_num_if_r='0' else 'Z';
	id <= data_isr;

end behavioral;

