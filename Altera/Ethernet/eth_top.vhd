library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

use work.types.all;

entity eth_top is
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
end eth_top;

architecture behavioral of eth_top is
component eth_pins is
port(
	tx_clk : out std_logic;
	txd    : in std_logic_vector(3 downto 0);
	tx_en  : in std_logic;
	
	rx_clk : out std_logic;
	rxd    : out std_logic_vector(3 downto 0);
	rx_dv  : out std_logic;
	
	col : out std_logic;
	crs : out std_logic;
	
	ETH_TX_CLK : in std_logic;
	ETH_TX_EN  : out std_logic;
	ETH_TXD    : out std_logic_vector(3 downto 0);
	
	ETH_RX_CLK : in std_logic;
	ETH_RX_DV  : in std_logic;
	ETH_RXD    : in std_logic_vector(3 downto 0);
	
	ETH_CRS : in std_logic;
	ETH_COL : in std_logic);
end component;

component net_proc is
port(
-- System
	clock     : in std_logic;

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
		
-- Ethernet RAM interface
	rx_ram_addr : out std_logic_vector(10 downto 0);
	rx_ram_data : in  std_logic_vector(15 downto 0);

	tx_ram_addr : out std_logic_vector(10 downto 0);
	tx_ram_data : out std_logic_vector(15 downto 0);
	tx_ram_we   : out std_logic;

-- Ethernet interface
	rx_bank_info      : in eth_bank_t;
	rx_bank_info_clrn : out std_logic_vector(1 downto 0);

	tx_bank_info      : out eth_bank_t;
	tx_bank_info_clrn : in std_logic_vector(1 downto 0));
end component;

component eth_rx is
port
(
	rx_clk: in std_logic;
	rx_dv:  in std_logic;
	rxd:    in std_logic_vector(3 downto 0);

	col: in std_logic;
	crs: in std_logic;
	
	rx_data_addr: out std_logic_vector(12 downto 0);
	rx_data:      out std_logic_vector(3 downto 0);
	rx_data_we:   out std_logic;
	
	bank_info:      out eth_bank_t;
	bank_info_clrn: in std_logic_vector(1 downto 0));
end component;

component eth_rx_ram is
port(
	clk_in  : in std_logic;
	addr_in : in std_logic_vector(12 downto 0);
	data_in : in std_logic_vector( 3 downto 0);
	we      : in std_logic;

	clk_out  : in  std_logic;
	addr_out : in  std_logic_vector(10 downto 0);
	data_out : out std_logic_vector(15 downto 0));
end component;

component eth_tx_ram is
port(
	clk_in  : in std_logic;
	addr_in : in std_logic_vector(10 downto 0);
	data_in : in std_logic_vector(15 downto 0);
	we      : in std_logic;

	clk_out  : in  std_logic;
	addr_out : in  std_logic_vector(12 downto 0);
	data_out : out std_logic_vector( 3 downto 0));
end component;

component eth_tx is
port(
	bank_info     : in eth_bank_t;
	bank_info_clrn: out std_logic_vector(1 downto 0);

	tx_data_addr: out std_logic_vector(12 downto 0);
	tx_data     : in  std_logic_vector(3 downto 0);

	tx_clk : in  std_logic;
	txd    : out std_logic_vector(3 downto 0);
	tx_en  : out std_logic := '0');
end component;

	signal tx_clk : std_logic := '0';
	signal txd    : std_logic_vector(3 downto 0) := (others=>'0');
	signal tx_en  : std_logic := '0';
	
	signal rx_clk : std_logic := '0';
	signal rxd    : std_logic_vector(3 downto 0) := (others=>'0');
	signal rx_dv  : std_logic := '0';
	
	signal col : std_logic := '0';
	signal crs : std_logic := '0';

	signal rx_data_addr: std_logic_vector(12 downto 0) := (others=>'0');
	signal rx_data:      std_logic_vector(3 downto 0) := (others=>'0');
	signal rx_data_we:   std_logic := '0';
	
	signal rx_bank_info:      eth_bank_t := (others=>(others=>'0'));
	signal rx_bank_info_clrn: std_logic_vector(1 downto 0) := (others=>'0');
	signal tx_bank_info:      eth_bank_t := (others=>(others=>'0'));
	signal tx_bank_info_clrn: std_logic_vector(1 downto 0) := (others=>'0');

	signal rx_ram_addr_out : std_logic_vector(10 downto 0) := (others=>'0');
	signal rx_ram_data_out : std_logic_vector(15 downto 0) := (others=>'0');

	signal tx_ram_addr_in : std_logic_vector(10 downto 0) := (others=>'0');
	signal tx_ram_data_in : std_logic_vector(15 downto 0) := (others=>'0');
	signal tx_ram_data_we : std_logic := '0';

	signal tx_data_addr: std_logic_vector(12 downto 0) := (others=>'0');
	signal tx_data:      std_logic_vector(3 downto 0) := (others=>'0');
	
begin

net_proc_i : net_proc
port map(
	clock     => clock,

-- Memory interface
	mem_addr  => mem_addr,
	mem_wdata => mem_wdata,
	mem_rdata => mem_rdata,
	mem_we    => mem_we,
	
-- Registers interface
	reg_we    => reg_we,
	reg_num   => reg_num,
	reg_wdata => reg_wdata,
	reg_rdata => reg_rdata,
		
	rx_ram_addr => rx_ram_addr_out,
	rx_ram_data => rx_ram_data_out,

	tx_ram_addr => tx_ram_addr_in,
	tx_ram_data => tx_ram_data_in,
	tx_ram_we   => tx_ram_data_we,

-- Ethernet interface
	rx_bank_info      => rx_bank_info,
	rx_bank_info_clrn => rx_bank_info_clrn,

	tx_bank_info      => tx_bank_info,
	tx_bank_info_clrn => tx_bank_info_clrn);

eth_pins_i : eth_pins
port map(
	tx_clk => tx_clk,
	txd    => txd,
	tx_en  => tx_en,
	
	rx_clk => rx_clk,
	rxd    => rxd,
	rx_dv  => rx_dv,
	
	col => col,
	crs => crs,

	ETH_TX_CLK => ETH_TX_CLK,
	ETH_TX_EN  => ETH_TX_EN,
	ETH_TXD    => ETH_TXD,
	
	ETH_RX_CLK => ETH_RX_CLK,
	ETH_RX_DV  => ETH_RX_DV,
	ETH_RXD    => ETH_RXD,
	
	ETH_CRS => ETH_CRS,
	ETH_COL => ETH_COL);

eth_rx_i : eth_rx
port map(
	rx_clk => rx_clk,
	rx_dv  => rx_dv,
	rxd    => rxd,
	col    => col,
	crs    => crs,
	
	rx_data_addr => rx_data_addr,
	rx_data      => rx_data,
	rx_data_we   => rx_data_we,
	
	bank_info      => rx_bank_info,
	bank_info_clrn => rx_bank_info_clrn);

eth_rx_ram_i: eth_rx_ram
port map(
	clk_in  => rx_clk,
	addr_in => rx_data_addr,
	data_in => rx_data,
	we      => rx_data_we,

	clk_out  => clock,
	addr_out => rx_ram_addr_out,
	data_out => rx_ram_data_out);

eth_tx_ram_i: eth_tx_ram
port map(
	clk_in  => clock,
	addr_in => tx_ram_addr_in,
	data_in => tx_ram_data_in,
	we      => tx_ram_data_we,

	clk_out  => tx_clk,
	addr_out => tx_data_addr,
	data_out => tx_data);

eth_tx_i : eth_tx
port map(
	bank_info      => tx_bank_info,
	bank_info_clrn => tx_bank_info_clrn,

	tx_data_addr => tx_data_addr,
	tx_data      => tx_data,

	tx_clk => tx_clk,
	txd    => txd,
	tx_en  => tx_en);

end behavioral;

