library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity infrastructure_top is
port(
	CLOCK20MHZ   : in std_logic;

	clock        : out std_logic; -- 120 MHz
	clock_locked : out std_logic;
	clock_cycle  : out std_logic_vector(2 downto 0)); --0,1,2,3,4,5,0,1,...
end infrastructure_top;
	
architecture behavioral of infrastructure_top is
component system_clock_pll
port(
	inclk0 : in std_logic;
	c0		 : out std_logic;
	locked : out std_logic);
end component;

	signal clock_s   : std_logic;
	signal cycle_cnt : std_logic_vector(2 downto 0) := B"000";

begin
	
system_clock_pll_i : system_clock_pll
port map(
	inclk0 => CLOCK20MHZ,
	c0		 => clock_s,
	locked => clock_locked);


process(clock_s)
begin
	if clock_s'event and clock_s='1' then
		cycle_cnt <= cycle_cnt + '1';
		if cycle_cnt=B"101" then
			cycle_cnt <= B"000";
		end if;
	end if; -- clock;
end process;
	
	clock <= clock_s;
	clock_cycle <= cycle_cnt;
	
end behavioral;
