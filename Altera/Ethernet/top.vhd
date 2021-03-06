library ieee;
use ieee.std_logic_1164.ALL;
use ieee.std_logic_arith.ALL;
use ieee.std_logic_unsigned.ALL;

use work.types.all;

entity top is
port(

	-- SYSTEM
	CLOCK20MHZ : in std_logic_vector(1 downto 0);
	STROBE     : in std_logic;

	-- ETHERNET
	EthAddrSelect : in std_logic_vector(7 downto 0);

	ETH_TX_CLK    : in std_logic;
	ETH_TX_EN     : out std_logic;
	ETH_TXD       : out std_logic_vector(3 downto 0);

	ETH_RX_CLK : in std_logic;
	ETH_RX_DV  : in std_logic;
	ETH_RXD    : in std_logic_vector(3 downto 0);
	
	ETH_CRS : in std_logic;
	ETH_COL : in std_logic);
end top;

architecture behavioral of top is

component infrastructure_top is
port(
	CLOCK20MHZ   : in std_logic;

	clock        : out std_logic; -- 120 MHz
	clock_locked : out std_logic;
	clock_cycle  : out std_logic_vector(2 downto 0)); --0,1,2,3,4,5,0,1,...
end component;

component eth_top is
port(
	clock      : in std_logic; -- system clock

-- Memory interface
	mem_addr  : out std_logic_vector(31 downto 0);
	mem_wdata : out std_logic_vector(15 downto 0);
	mem_rdata : in std_logic_vector(15 downto 0);
	mem_we    : out std_logic;	
		
-- Registers interface
	reg_we    : out std_logic;
	reg_num   : out std_logic_vector(15 downto 0);
	reg_wdata : out std_logic_vector(15 downto 0);
	reg_rdata : in std_logic_vector(15 downto 0);
	
	ETH_TX_CLK : in std_logic;
	ETH_TX_EN  : out std_logic;
	ETH_TXD    : out std_logic_vector(3 downto 0);
	
	ETH_RX_CLK : in std_logic;
	ETH_RX_DV  : in std_logic;
	ETH_RXD    : in std_logic_vector(3 downto 0);
	
	ETH_CRS : in std_logic;
	ETH_COL : in std_logic);
end component;

component reg_file is
port(
	clock      : in std_logic; -- system clock

-- ethernet interface
	eth_reg_we    : in  std_logic;
	eth_reg_num   : in  std_logic_vector(15 downto 0);
	eth_reg_wdata : in  std_logic_vector(15 downto 0);
	eth_reg_rdata : out std_logic_vector(15 downto 0));	
end component;

component mem_file is
port(
	clock      : in std_logic; -- system clock

-- Ethernet interface
	eth_mem_addr  : in std_logic_vector(31 downto 0);
	eth_mem_wdata : in std_logic_vector(15 downto 0);
	eth_mem_rdata : out std_logic_vector(15 downto 0);
	eth_mem_we    : in std_logic);	
end component;

component flash_ifc is
port(
-- system
	clock    : in std_logic;
	clock_locked : in std_logic;
	hb5us : in std_logic;

	FLASH_SI      : out std_logic;
	FLASH_SCK     : out std_logic;
	FLASH_RESEN_N : out std_logic;
	FLASH_CS_N    : out std_logic;
	FLASH_WP_N    : out std_logic;
	FLASH_SO      : in std_logic);
end component;

-- system
	signal clock : std_logic := '0';
	signal clock_cycle  : std_logic_vector(2 downto 0) := B"000";
	signal clock_locked : std_logic := '0';
	signal hb5us : std_logic := '0';

-- Ethernet memory interface
	signal eth_mem_addr  : std_logic_vector(31 downto 0) := (others=>'0');
	signal eth_mem_wdata : std_logic_vector(15 downto 0) := (others=>'0');
	signal eth_mem_rdata : std_logic_vector(15 downto 0) := (others=>'0');
	signal eth_mem_we    : std_logic := '0';	
		
-- Ethernet registers interface
	signal eth_reg_we    : std_logic := '0';
	signal eth_reg_num   : std_logic_vector(15 downto 0) := (others=>'0');
	signal eth_reg_wdata : std_logic_vector(15 downto 0) := (others=>'0');
	signal eth_reg_rdata : std_logic_vector(15 downto 0) := (others=>'0');

begin

infrastructure_top_i : infrastructure_top
port map(
	CLOCK20MHZ   => CLOCK20MHZ(0),

	clock        => clock,
	clock_locked => clock_locked,
	clock_cycle  => clock_cycle);

eth_top_i : eth_top
port map(
	clock      => clock,
	
	mem_addr  => eth_mem_addr,
	mem_wdata => eth_mem_wdata,
	mem_rdata => eth_mem_rdata,
	mem_we    => eth_mem_we,
			
	reg_we    => eth_reg_we,
	reg_num   => eth_reg_num,
	reg_wdata => eth_reg_wdata,
	reg_rdata => eth_reg_rdata,

	ETH_TX_CLK => ETH_TX_CLK,
	ETH_TX_EN  => ETH_TX_EN,
	ETH_TXD    => ETH_TXD,
	
	ETH_RX_CLK => ETH_RX_CLK,
	ETH_RX_DV  => ETH_RX_DV,
	ETH_RXD    => ETH_RXD,
	
	ETH_CRS => ETH_CRS,
	ETH_COL => ETH_COL);

reg_file_i : reg_file
port map(
	clock => clock,

-- ethernet interface
	eth_reg_we    => eth_reg_we,
	eth_reg_num   => eth_reg_num,
	eth_reg_wdata => eth_reg_wdata,
	eth_reg_rdata => eth_reg_rdata);

mem_file_i : mem_file
port map(
	clock => clock,

-- Ethernet interface
	eth_mem_addr  => eth_mem_addr,
	eth_mem_wdata => eth_mem_wdata,
	eth_mem_rdata => eth_mem_rdata,
	eth_mem_we    => eth_mem_we);

end behavioral;
