library ieee;
use ieee.std_logic_1164.ALL;
use ieee.std_logic_arith.ALL;
use ieee.std_logic_unsigned.ALL;

entity eth_rx_ram is
port(
	clk_in  : in std_logic;
	addr_in : in std_logic_vector(12 downto 0);
	data_in : in std_logic_vector( 3 downto 0);
	we      : in std_logic;

	clk_out  : in  std_logic;
	addr_out : in  std_logic_vector(10 downto 0);
	data_out : out std_logic_vector(15 downto 0));
end eth_rx_ram;

architecture behavioral of eth_rx_ram is

component eth_rx_buf
port(
	data		 : in std_logic_vector (3 downto 0);
	rdaddress : in std_logic_vector (10 downto 0);
	rdclock	 : in std_logic ;
	wraddress : in std_logic_vector (12 downto 0);
	wrclock	 : in std_logic  := '1';
	wren		 : in std_logic  := '0';
	q		    : out std_logic_vector (15 downto 0));
end component;

	signal addr_in_r : std_logic_vector(12 downto 0) := (others=>'0');
	signal data_in_r : std_logic_vector( 3 downto 0) := (others=>'0');
	signal we_r      : std_logic := '0';
	
	signal addr_out_r : std_logic_vector(10 downto 0) := (others=>'0');
	signal data_out_s : std_logic_vector(15 downto 0) := (others=>'0');
	signal data_out_r : std_logic_vector(15 downto 0) := (others=>'0');

begin

eth_rx_buf_i : eth_rx_buf
port map(
	wraddress => addr_in_r,
	wrclock	 => clk_in,
	wren		 => we_r,
	data		 => data_in_r,

	rdaddress => addr_out_r,
	rdclock	 => clk_out,
	q		    => data_out_s);

process(clk_in)
begin
	if clk_in'event and clk_in='1' then
		addr_in_r <= addr_in;
		data_in_r <= data_in;
		we_r      <= we;
	end if;
end process;

process(clk_out)
begin
	if clk_out'event and clk_out='1' then
		addr_out_r <= addr_out;
		data_out_r <= data_out_s;
	end if;
end process;

data_out <= data_out_r;

end behavioral;


