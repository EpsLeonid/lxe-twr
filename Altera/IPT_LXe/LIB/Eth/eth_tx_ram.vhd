library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity eth_tx_ram is
port(
	clk_in  : in std_logic;
	addr_in : in std_logic_vector(10 downto 0);
	data_in : in std_logic_vector(15 downto 0);
	we      : in std_logic;

	clk_out  : in  std_logic;
	addr_out : in  std_logic_vector(12 downto 0);
	data_out : out std_logic_vector( 3 downto 0));
end eth_tx_ram;

architecture behavioral of eth_tx_ram is

component eth_tx_buf
port(
	data		 : in std_logic_vector (15 downto 0);
	rdaddress : in std_logic_vector (12 downto 0);
	rdclock	 : in std_logic ;
	wraddress : in std_logic_vector (10 downto 0);
	wrclock	 : in std_logic  := '1';
	wren		 : in std_logic  := '0';
	q		    : out std_logic_vector (3 downto 0));
end component;

	signal addr_out_r : std_logic_vector(12 downto 0) := (others=>'0');
	signal data_out_s : std_logic_vector(3 downto 0) := (others=>'0');
	signal data_out_r : std_logic_vector(3 downto 0) := (others=>'0');
begin

eth_tx_buf_i : eth_tx_buf
port map(
	data		 => data_in,
	wraddress => addr_in,
	wrclock	 => clk_in,
	wren		 => we,
	rdaddress => addr_out_r,
	rdclock	 => clk_out,
	q		    => data_out_s);
	
process( clk_out )
begin
	if clk_out'event and clk_out='1' then
		addr_out_r <= addr_out;
		data_out_r <= data_out_s;
	end if;
end process;

data_out <= data_out_r;

end behavioral;


