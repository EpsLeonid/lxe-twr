library ieee;
use ieee.std_logic_1164.ALL;
use ieee.std_logic_arith.ALL;
use ieee.std_logic_unsigned.ALL;

entity reg_x is
generic(
	REG_NUMBER : std_logic_vector(15 downto 0);
	REG_WIDTH  : integer;
	REG_DEFAULT_VALUE : std_logic_vector(15 downto 0) := (others=>'0'));
port(
	clock     : in std_logic; -- system clock

	reg_value : out std_logic_vector(REG_WIDTH-1 downto 0);
	reg_cmd   : out std_logic;
	reg_cmd_b : out std_logic_vector(REG_WIDTH-1 downto 0);
	
	eth_reg_we    : in  std_logic;
	eth_reg_num   : in  std_logic_vector(15 downto 0);
	eth_reg_wdata : in  std_logic_vector(15 downto 0);
	eth_reg_rdata : out std_logic_vector(15 downto 0));
end reg_x;

architecture behavioral of reg_x is
	signal reg_value_r : std_logic_vector(REG_WIDTH-1 downto 0) := REG_DEFAULT_VALUE(REG_WIDTH-1 downto 0);
	signal eth_reg_rdata_r : std_logic_vector(REG_WIDTH-1 downto 0) := (others=>'0');
	signal reg_cmd_r  : std_logic := '0';
	signal reg_cmd_b_r : std_logic_vector(REG_WIDTH-1 downto 0) := (others=>'0');
	
	signal reg_num_match_r : std_logic := '0';
	signal eth_reg_we_r : std_logic := '0';
begin

clock_proc : process( clock )
begin
	if clock'event and clock='1' then
		
		reg_num_match_r <= '0';
		if eth_reg_num = REG_NUMBER then
			reg_num_match_r <= '1';
		end if;
		
		eth_reg_we_r <= eth_reg_we;
		
		eth_reg_rdata_r <= (others=>'0');
		reg_cmd_r <= '0';
		reg_cmd_b_r <= (others=>'0');

		if reg_num_match_r='1' then
			eth_reg_rdata_r <= reg_value_r;
			if eth_reg_we_r='1' then
				reg_cmd_r <= '1';
				reg_cmd_b_r  <= eth_reg_wdata(REG_WIDTH-1 downto 0);
				reg_value_r <= eth_reg_wdata(REG_WIDTH-1 downto 0);
			end if;
		end if;
	end if; -- clock;
end process;

comb_proc : process(eth_reg_rdata_r)
begin
	eth_reg_rdata <= (others=>'0');
	eth_reg_rdata(REG_WIDTH-1 downto 0) <= eth_reg_rdata_r;
end process;

	reg_value <= reg_value_r;
	reg_cmd   <= reg_cmd_r;
	reg_cmd_b <= reg_cmd_b_r;

end behavioral;

