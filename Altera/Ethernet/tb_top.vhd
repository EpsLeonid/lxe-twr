library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity tb_top is
end tb_top;
 
architecture behavioral of tb_top is

component top is
port(

	-- SYSTEM
	CLOCK20MHZ : in std_logic_vector(1 downto 0);
	STROBE     : in std_logic;
	
	-- BOARDS INTERFACE
   ADC_BRD0_CS_N : out std_logic;
	ADC_BRD0_MISO : in  std_logic;
	ADC_BRD0_MOSI : out std_logic;
	ADC_BRD0_SCLK : out std_logic;
	ADC_BRD0_STROBE : out std_logic;
	
   ADC_BRD1_CS_N : out std_logic;
	ADC_BRD1_MISO : in  std_logic;
	ADC_BRD1_MOSI : out std_logic;
	ADC_BRD1_SCLK : out std_logic;
	ADC_BRD1_STROBE : out std_logic;
	
   ADC_BRD2_CS_N : out std_logic;
	ADC_BRD2_MISO : in  std_logic;
	ADC_BRD2_MOSI : out std_logic;
	ADC_BRD2_SCLK : out std_logic;
	ADC_BRD2_STROBE : out std_logic;

   ADC_BRD3_CS_N : out std_logic;
	ADC_BRD3_MISO : in  std_logic;
	ADC_BRD3_MOSI : out std_logic;
	ADC_BRD3_SCLK : out std_logic;
	ADC_BRD3_STROBE : out std_logic;

   ADC_BRD4_CS_N : out std_logic;
	ADC_BRD4_MISO : in  std_logic;
	ADC_BRD4_MOSI : out std_logic;
	ADC_BRD4_SCLK : out std_logic;
	ADC_BRD4_STROBE : out std_logic;

   ADC_BRD5_CS_N : out std_logic;
	ADC_BRD5_MISO : in  std_logic;
	ADC_BRD5_MOSI : out std_logic;
	ADC_BRD5_SCLK : out std_logic;
	ADC_BRD5_STROBE : out std_logic;

   ADC_BRD6_CS_N : out std_logic;
	ADC_BRD6_MISO : in  std_logic;
	ADC_BRD6_MOSI : out std_logic;
	ADC_BRD6_SCLK : out std_logic;
	ADC_BRD6_STROBE : out std_logic;

   ADC_BRD7_CS_N : out std_logic;
	ADC_BRD7_MISO : in  std_logic;
	ADC_BRD7_MOSI : out std_logic;
	ADC_BRD7_SCLK : out std_logic;
	ADC_BRD7_STROBE : out std_logic;

	-- VOLTAGES
	VOLTAGE_N_CS : out std_logic;
	VOLTAGE_DIN  : out std_logic;
	VOLTAGE_DOUT : in  std_logic;
	VOLTAGE_SCLK : out std_logic;
	
	-- THERMO
	THERMO_SDA : inout std_logic;
	THERMO_SCL : out std_logic;

	-- ID
	IdRead : inout std_logic;

	-- MISC
	LED_N  : out std_logic_vector(1 downto 0);
	FAN_ON : out std_logic;
	TMP    : out std_logic_vector(15 downto 0);
	
	-- FLASH
	FLASH_SI      : out std_logic;
	FLASH_SCK     : out std_logic;
	FLASH_RESEN_N : out std_logic;
	FLASH_CS_N    : out std_logic;
	FLASH_WP_N    : out std_logic;
	FLASH_SO      : in std_logic;
		
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
end component;

 
component tb_eth_rx is
generic(
	module_name : string;
	input_file : string);
port(
	ETH_RX_CLK : out std_logic;
	ETH_RX_DV  : out std_logic;
	ETH_RXD    : out std_logic_vector(3 downto 0));
end component;
 
component tb_eth_tx is
generic(
	module_name : string;
	output_file : string);
port(
	ETH_TX_CLK : out std_logic;
	ETH_TX_EN  : in std_logic;
	ETH_TXD    : in std_logic_vector(3 downto 0));
end component;

component tb_adc_brd is
generic(
	module_name : string);
port(
   CS_N   : in std_logic;
	MISO   : out  std_logic;
	MOSI   : in std_logic;
	SCLK   : in std_logic;
	STROBE : in std_logic);
end component;

	constant CLOCK20MHZ_PERIOD : time := 50 ns;

	signal CLOCK20MHZ : std_logic_vector(1 downto 0) := (others=>'0');
	signal STROBE     : std_logic := '0';
	
	-- BOARDS INTERFACE
   signal ADC_BRD0_CS_N : std_logic := '0';
	signal ADC_BRD0_MISO : std_logic := '0';
	signal ADC_BRD0_MOSI : std_logic := '0';
	signal ADC_BRD0_SCLK : std_logic := '0';
	signal ADC_BRD0_STROBE : std_logic := '0';
	
   signal ADC_BRD1_CS_N : std_logic := '0';
	signal ADC_BRD1_MISO : std_logic := '0';
	signal ADC_BRD1_MOSI : std_logic := '0';
	signal ADC_BRD1_SCLK : std_logic := '0';
	signal ADC_BRD1_STROBE : std_logic := '0';
	
   signal ADC_BRD2_CS_N : std_logic := '0';
	signal ADC_BRD2_MISO : std_logic := '0';
	signal ADC_BRD2_MOSI : std_logic := '0';
	signal ADC_BRD2_SCLK : std_logic := '0';
	signal ADC_BRD2_STROBE : std_logic := '0';

   signal ADC_BRD3_CS_N : std_logic := '0';
	signal ADC_BRD3_MISO : std_logic := '0';
	signal ADC_BRD3_MOSI : std_logic := '0';
	signal ADC_BRD3_SCLK : std_logic := '0';
	signal ADC_BRD3_STROBE : std_logic := '0';

   signal ADC_BRD4_CS_N : std_logic := '0';
	signal ADC_BRD4_MISO : std_logic := '0';
	signal ADC_BRD4_MOSI : std_logic := '0';
	signal ADC_BRD4_SCLK : std_logic := '0';
	signal ADC_BRD4_STROBE : std_logic := '0';

   signal ADC_BRD5_CS_N : std_logic := '0';
	signal ADC_BRD5_MISO : std_logic := '0';
	signal ADC_BRD5_MOSI : std_logic := '0';
	signal ADC_BRD5_SCLK : std_logic := '0';
	signal ADC_BRD5_STROBE : std_logic := '0';

   signal ADC_BRD6_CS_N : std_logic := '0';
	signal ADC_BRD6_MISO : std_logic := '0';
	signal ADC_BRD6_MOSI : std_logic := '0';
	signal ADC_BRD6_SCLK : std_logic := '0';
	signal ADC_BRD6_STROBE : std_logic := '0';

   signal ADC_BRD7_CS_N : std_logic := '0';
	signal ADC_BRD7_MISO : std_logic := '0';
	signal ADC_BRD7_MOSI : std_logic := '0';
	signal ADC_BRD7_SCLK : std_logic := '0';
	signal ADC_BRD7_STROBE : std_logic := '0';

	-- VOLTAGES
	signal VOLTAGE_N_CS : std_logic := '0';
	signal VOLTAGE_DIN  : std_logic := '0';
	signal VOLTAGE_DOUT : std_logic := '0';
	signal VOLTAGE_SCLK : std_logic := '0';
	
	-- THERMO
	signal THERMO_SDA : std_logic := '0';
	signal THERMO_SCL : std_logic := '0';

	-- ID
	signal IdRead : std_logic := '0';

	-- MISC
	signal LED_N  : std_logic_vector(1 downto 0) := (others=>'0');
	signal FAN_ON : std_logic := '0';
	signal TMP    : std_logic_vector(15 downto 0) := (others=>'0');
	
	-- FLASH
	signal FLASH_SI      : std_logic := '0';
	signal FLASH_SCK     : std_logic := '0';
	signal FLASH_RESEN_N : std_logic := '0';
	signal FLASH_CS_N    : std_logic := '0';
	signal FLASH_WP_N    : std_logic := '0';
	signal FLASH_SO      : std_logic := '0';
		
	-- ETHERNET
	signal EthAddrSelect : std_logic_vector(7 downto 0) := (others=>'0');

	signal ETH_TX_CLK    : std_logic := '0';
	signal ETH_TX_EN     : std_logic := '0';
	signal ETH_TXD       : std_logic_vector(3 downto 0) := (others=>'0');
	
	signal ETH_RX_CLK : std_logic := '0';
	signal ETH_RX_DV  : std_logic := '0';
	signal ETH_RXD    : std_logic_vector(3 downto 0) := (others=>'0');
	
	signal ETH_CRS : std_logic := '0';
	signal ETH_COL : std_logic := '0';

begin

uut : top
port map(

	-- SYSTEM
	CLOCK20MHZ => CLOCK20MHZ,
	STROBE     => STROBE,
	
	-- BOARDS INTERFACE
   ADC_BRD0_CS_N   => ADC_BRD0_CS_N,
	ADC_BRD0_MISO   => ADC_BRD0_MISO,
	ADC_BRD0_MOSI   => ADC_BRD0_MOSI,
	ADC_BRD0_SCLK   => ADC_BRD0_SCLK,
	ADC_BRD0_STROBE => ADC_BRD0_STROBE,
	
   ADC_BRD1_CS_N   => ADC_BRD1_CS_N,
	ADC_BRD1_MISO   => ADC_BRD1_MISO,
	ADC_BRD1_MOSI   => ADC_BRD1_MOSI,
	ADC_BRD1_SCLK   => ADC_BRD1_SCLK,
	ADC_BRD1_STROBE => ADC_BRD1_STROBE,

   ADC_BRD2_CS_N   => ADC_BRD2_CS_N,
	ADC_BRD2_MISO   => ADC_BRD2_MISO,
	ADC_BRD2_MOSI   => ADC_BRD2_MOSI,
	ADC_BRD2_SCLK   => ADC_BRD2_SCLK,
	ADC_BRD2_STROBE => ADC_BRD2_STROBE,

   ADC_BRD3_CS_N   => ADC_BRD3_CS_N,
	ADC_BRD3_MISO   => ADC_BRD3_MISO,
	ADC_BRD3_MOSI   => ADC_BRD3_MOSI,
	ADC_BRD3_SCLK   => ADC_BRD3_SCLK,
	ADC_BRD3_STROBE => ADC_BRD3_STROBE,

   ADC_BRD4_CS_N   => ADC_BRD4_CS_N,
	ADC_BRD4_MISO   => ADC_BRD4_MISO,
	ADC_BRD4_MOSI   => ADC_BRD4_MOSI,
	ADC_BRD4_SCLK   => ADC_BRD4_SCLK,
	ADC_BRD4_STROBE => ADC_BRD4_STROBE,

   ADC_BRD5_CS_N   => ADC_BRD5_CS_N,
	ADC_BRD5_MISO   => ADC_BRD5_MISO,
	ADC_BRD5_MOSI   => ADC_BRD5_MOSI,
	ADC_BRD5_SCLK   => ADC_BRD5_SCLK,
	ADC_BRD5_STROBE => ADC_BRD5_STROBE,

   ADC_BRD6_CS_N   => ADC_BRD6_CS_N,
	ADC_BRD6_MISO   => ADC_BRD6_MISO,
	ADC_BRD6_MOSI   => ADC_BRD6_MOSI,
	ADC_BRD6_SCLK   => ADC_BRD6_SCLK,
	ADC_BRD6_STROBE => ADC_BRD6_STROBE,

   ADC_BRD7_CS_N   => ADC_BRD7_CS_N,
	ADC_BRD7_MISO   => ADC_BRD7_MISO,
	ADC_BRD7_MOSI   => ADC_BRD7_MOSI,
	ADC_BRD7_SCLK   => ADC_BRD7_SCLK,
	ADC_BRD7_STROBE => ADC_BRD7_STROBE,
	
	-- VOLTAGES
	VOLTAGE_N_CS => VOLTAGE_N_CS,
	VOLTAGE_DIN  => VOLTAGE_DIN,
	VOLTAGE_DOUT => VOLTAGE_DOUT,
	VOLTAGE_SCLK => VOLTAGE_SCLK,
	
	-- THERMO
	THERMO_SDA => THERMO_SDA,
	THERMO_SCL => THERMO_SCL,

	-- ID
	IdRead => IdRead,

	-- MISC
	LED_N  => LED_N,
	FAN_ON => FAN_ON,
	TMP    => TMP,
	
	-- FLASH
	FLASH_SI      => FLASH_SI,
	FLASH_SCK     => FLASH_SCK,
	FLASH_RESEN_N => FLASH_RESEN_N,
	FLASH_CS_N    => FLASH_CS_N,
	FLASH_WP_N    => FLASH_WP_N,
	FLASH_SO      => FLASH_SO,
		
	-- ETHERNET
	EthAddrSelect => EthAddrSelect,

	ETH_TX_CLK => ETH_TX_CLK,
	ETH_TX_EN  => ETH_TX_EN,
	ETH_TXD    => ETH_TXD,

	ETH_RX_CLK => ETH_RX_CLK,
	ETH_RX_DV  => ETH_RX_DV,
	ETH_RXD    => ETH_RXD,
	
	ETH_CRS => ETH_CRS,
	ETH_COL => ETH_COL);

tb_eth_rx_i : tb_eth_rx
generic map(
	module_name => "eth_rx",
	input_file  => "tb_inout/tb_eth_rx.txt")
port map(
	ETH_RX_CLK => ETH_RX_CLK,
	ETH_RX_DV  => ETH_RX_DV,
	ETH_RXD    => ETH_RXD);

tb_eth_tx_i : tb_eth_tx
generic map(
	module_name => "eth_tx",
	output_file => "tb_inout/tb_eth_tx.txt")
port map(
	ETH_TX_CLK => ETH_TX_CLK,
	ETH_TX_EN  => ETH_TX_EN,
	ETH_TXD    => ETH_TXD);

tb_adc0_brd : tb_adc_brd
generic map(
	module_name => "ADC0")
port map(
   CS_N   => ADC_BRD0_CS_N,
	MISO   => ADC_BRD0_MISO,
	MOSI   => ADC_BRD0_MOSI,
	SCLK   => ADC_BRD0_SCLK,
	STROBE => ADC_BRD0_STROBE);
	
tb_adc1_brd : tb_adc_brd
generic map(
	module_name => "ADC1")
port map(
   CS_N   => ADC_BRD1_CS_N,
	MISO   => ADC_BRD1_MISO,
	MOSI   => ADC_BRD1_MOSI,
	SCLK   => ADC_BRD1_SCLK,
	STROBE => ADC_BRD1_STROBE);
	
tb_adc2_brd : tb_adc_brd
generic map(
	module_name => "ADC2")
port map(
   CS_N   => ADC_BRD2_CS_N,
	MISO   => ADC_BRD2_MISO,
	MOSI   => ADC_BRD2_MOSI,
	SCLK   => ADC_BRD2_SCLK,
	STROBE => ADC_BRD2_STROBE);
	
tb_adc3_brd : tb_adc_brd
generic map(
	module_name => "ADC3")
port map(
   CS_N   => ADC_BRD3_CS_N,
	MISO   => ADC_BRD3_MISO,
	MOSI   => ADC_BRD3_MOSI,
	SCLK   => ADC_BRD3_SCLK,
	STROBE => ADC_BRD3_STROBE);
	
tb_adc4_brd : tb_adc_brd
generic map(
	module_name => "ADC4")
port map(
   CS_N   => ADC_BRD4_CS_N,
	MISO   => ADC_BRD4_MISO,
	MOSI   => ADC_BRD4_MOSI,
	SCLK   => ADC_BRD4_SCLK,
	STROBE => ADC_BRD4_STROBE);
	
tb_adc5_brd : tb_adc_brd
generic map(
	module_name => "ADC5")
port map(
   CS_N   => ADC_BRD5_CS_N,
	MISO   => ADC_BRD5_MISO,
	MOSI   => ADC_BRD5_MOSI,
	SCLK   => ADC_BRD5_SCLK,
	STROBE => ADC_BRD5_STROBE);
	
tb_adc6_brd : tb_adc_brd
generic map(
	module_name => "ADC6")
port map(
   CS_N   => ADC_BRD6_CS_N,
	MISO   => ADC_BRD6_MISO,
	MOSI   => ADC_BRD6_MOSI,
	SCLK   => ADC_BRD6_SCLK,
	STROBE => ADC_BRD6_STROBE);
	
tb_adc7_brd : tb_adc_brd
generic map(
	module_name => "ADC7")
port map(
   CS_N   => ADC_BRD7_CS_N,
	MISO   => ADC_BRD7_MISO,
	MOSI   => ADC_BRD7_MOSI,
	SCLK   => ADC_BRD7_SCLK,
	STROBE => ADC_BRD7_STROBE);
	
clock_proc:process
begin
	CLOCK20MHZ <= B"00";
	wait for CLOCK20MHZ_PERIOD/2;
	
	CLOCK20MHZ <= B"11";
	wait for CLOCK20MHZ_PERIOD/2;
end process;
	
end behavioral;    
