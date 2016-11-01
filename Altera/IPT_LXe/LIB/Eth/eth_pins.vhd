library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

use work.types.all;

entity eth_pins is
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
end eth_pins;

architecture behavioral of eth_pins is
	signal txd_or : std_logic_vector(3 downto 0) := (others=>'0');
	signal tx_en_or : std_logic := '0';
	
	signal rxd_r : std_logic_vector(3 downto 0) := (others=>'0');
	signal rx_dv_r : std_logic := '0';
	signal crs_r : std_logic := '0';
	signal col_r : std_logic := '0';
begin

	process( ETH_TX_CLK )
	begin
		if ETH_TX_CLK'event and ETH_TX_CLK='1' then
			txd_or <= txd;
			tx_en_or <= tx_en;
		end if;
	end process;
		ETH_TXD   <= txd_or;
		ETH_TX_EN <= tx_en_or;
		tx_clk    <= ETH_TX_CLK;

	process( ETH_RX_CLK )
	begin
		if ETH_RX_CLK'event and ETH_RX_CLK='1' then
			rxd_r   <= ETH_RXD;
			rx_dv_r <= ETH_RX_DV;
			col_r   <= ETH_COL;
			crs_r   <= ETH_CRS;
		end if;
	end process;

	rx_clk <= ETH_RX_CLK;
	rxd   <= rxd_r;
	rx_dv <= rx_dv_r;
	col   <= col_r;
	crs   <= crs_r;

end behavioral;

