library ieee;
use ieee.std_logic_1164.ALL;
use ieee.std_logic_arith.ALL;
use ieee.std_logic_unsigned.ALL;

entity reg_s is
generic(
	REG_NUMBER : std_logic_vector(15 downto 0);
	REG_WIDTH  : integer);
port(
	clock     : in std_logic; -- system clock
	
	reg_value : in std_logic_vector(REG_WIDTH-1 downto 0);

	eth_reg_num : in std_logic_vector(15 downto 0);
	eth_reg_rdata : out  std_logic_vector(15 downto 0));
end reg_s;

architecture behavioral of reg_s is
	signal reg_value_r : std_logic_vector(REG_WIDTH-1 downto 0) := (others=>'0');

	signal eth_reg_rdata_r : std_logic_vector(REG_WIDTH-1 downto 0) := (others=>'0');
	signal reg_num_match_r : std_logic := '0';
	
begin

clock_proc : process( clock )
begin
	if clock'event and clock='1' then
		
		reg_num_match_r <= '0';
		if eth_reg_num = REG_NUMBER then
			reg_num_match_r <= '1';
		end if;
		
		reg_value_r <= reg_value;
		eth_reg_rdata_r <= (others=>'0');

		if reg_num_match_r='1' then
			eth_reg_rdata_r <= reg_value_r;
		end if;
	end if; -- clock;
end process;

comb_proc : process(eth_reg_rdata_r)
begin
	eth_reg_rdata <= (others=>'0');
	eth_reg_rdata(REG_WIDTH-1 downto 0) <= eth_reg_rdata_r;
end process;

end behavioral;

