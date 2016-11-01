-- Copyright (C) 1991-2010 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 9.1 Build 350 03/24/2010 Service Pack 2 SJ Full Version"

-- DATE "09/22/2015 18:34:16"

-- 
-- Device: Altera EP3C25Q240C8 Package PQFP240
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top IS
    PORT (
	CLOCK20MHZ : IN std_logic_vector(1 DOWNTO 0);
	STROBE : IN std_logic;
	EthAddrSelect : IN std_logic_vector(7 DOWNTO 0);
	ETH_TX_CLK : IN std_logic;
	ETH_TX_EN : OUT std_logic;
	ETH_TXD : OUT std_logic_vector(3 DOWNTO 0);
	ETH_RX_CLK : IN std_logic;
	ETH_RX_DV : IN std_logic;
	ETH_RXD : IN std_logic_vector(3 DOWNTO 0);
	ETH_CRS : IN std_logic;
	ETH_COL : IN std_logic
	);
END top;

-- Design Ports Information
-- CLOCK20MHZ[1]	=>  Location: PIN_202,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- STROBE	=>  Location: PIN_171,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- EthAddrSelect[0]	=>  Location: PIN_64,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- EthAddrSelect[1]	=>  Location: PIN_107,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- EthAddrSelect[2]	=>  Location: PIN_65,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- EthAddrSelect[3]	=>  Location: PIN_73,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- EthAddrSelect[4]	=>  Location: PIN_110,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- EthAddrSelect[5]	=>  Location: PIN_55,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- EthAddrSelect[6]	=>  Location: PIN_173,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- EthAddrSelect[7]	=>  Location: PIN_143,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- ETH_TX_EN	=>  Location: PIN_6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- ETH_TXD[0]	=>  Location: PIN_95,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- ETH_TXD[1]	=>  Location: PIN_98,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- ETH_TXD[2]	=>  Location: PIN_93,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- ETH_TXD[3]	=>  Location: PIN_203,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- ETH_CRS	=>  Location: PIN_52,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- ETH_COL	=>  Location: PIN_189,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- ETH_TX_CLK	=>  Location: PIN_32,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- CLOCK20MHZ[0]	=>  Location: PIN_31,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- ETH_RX_CLK	=>  Location: PIN_33,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- ETH_RXD[0]	=>  Location: PIN_148,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- ETH_RXD[1]	=>  Location: PIN_118,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- ETH_RXD[2]	=>  Location: PIN_147,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- ETH_RXD[3]	=>  Location: PIN_185,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- ETH_RX_DV	=>  Location: PIN_149,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_162,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA

ARCHITECTURE structure OF top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK20MHZ : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_STROBE : std_logic;
SIGNAL ww_EthAddrSelect : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ETH_TX_CLK : std_logic;
SIGNAL ww_ETH_TX_EN : std_logic;
SIGNAL ww_ETH_TXD : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ETH_RX_CLK : std_logic;
SIGNAL ww_ETH_RX_DV : std_logic;
SIGNAL ww_ETH_RXD : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ETH_CRS : std_logic;
SIGNAL ww_ETH_COL : std_logic;
SIGNAL \eth_top_i|eth_tx_ram_i|eth_tx_buf_i|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \eth_top_i|eth_tx_ram_i|eth_tx_buf_i|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \eth_top_i|eth_tx_ram_i|eth_tx_buf_i|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \eth_top_i|eth_tx_ram_i|eth_tx_buf_i|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \eth_top_i|eth_tx_ram_i|eth_tx_buf_i|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \eth_top_i|eth_tx_ram_i|eth_tx_buf_i|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \eth_top_i|eth_tx_ram_i|eth_tx_buf_i|altsyncram_component|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \eth_top_i|eth_tx_ram_i|eth_tx_buf_i|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \eth_top_i|eth_tx_ram_i|eth_tx_buf_i|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \eth_top_i|eth_tx_ram_i|eth_tx_buf_i|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \eth_top_i|eth_tx_ram_i|eth_tx_buf_i|altsyncram_component|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \eth_top_i|eth_tx_ram_i|eth_tx_buf_i|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \eth_top_i|eth_tx_ram_i|eth_tx_buf_i|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \eth_top_i|eth_tx_ram_i|eth_tx_buf_i|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \eth_top_i|eth_tx_ram_i|eth_tx_buf_i|altsyncram_component|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \eth_top_i|eth_tx_ram_i|eth_tx_buf_i|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ETH_RX_CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ETH_TX_CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \eth_top_i|eth_tx_i|Add1~6_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Add1~8_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|nibble_cnt_r[6]~3_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Add1~12_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Add1~15\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|nibble_cnt_r[8]~5_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Add1~16_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Add1~17\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|nibble_cnt_r[9]~6_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Add1~18_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Add1~19\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|nibble_cnt_r[10]~7_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Add1~20_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Add1~21\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|nibble_cnt_r[11]~8_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Add1~22_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add7~4_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add7~8_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|proto_len_r[5]~19_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|ip_checksum_r[7]~15_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|ip_checksum_r[11]~23_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add3~2_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add3~4_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add2~2_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add2~4_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add2~22\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add2~24_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add0~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add0~2_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add0~4_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add0~6_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add0~17\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add0~18_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add1~2_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|mem_addr_r[0]~32_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|mem_addr_r[0]~33\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|mem_addr_r[1]~34_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|mem_addr_r[1]~35\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|mem_addr_r[2]~36_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|mem_addr_r[2]~37\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|mem_addr_r[3]~38_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|mem_addr_r[3]~39\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|mem_addr_r[4]~40_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|mem_addr_r[4]~41\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|mem_addr_r[5]~42_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|mem_addr_r[5]~43\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|mem_addr_r[6]~44_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|mem_addr_r[6]~45\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|mem_addr_r[7]~46_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|mem_addr_r[7]~47\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|mem_addr_r[8]~48_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|mem_addr_r[8]~49\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|mem_addr_r[9]~50_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|mem_addr_r[9]~51\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|mem_addr_r[10]~52_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|mem_addr_r[10]~53\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|mem_addr_r[11]~54_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|mem_addr_r[11]~55\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|mem_addr_r[12]~56_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|mem_addr_r[12]~57\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|mem_addr_r[13]~58_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|mem_addr_r[13]~59\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|mem_addr_r[14]~60_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|mem_addr_r[14]~61\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|mem_addr_r[15]~62_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|mem_addr_r[15]~63\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|mem_addr_r[16]~64_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|mem_addr_r[16]~65\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|mem_addr_r[17]~66_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|mem_addr_r[17]~67\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|mem_addr_r[18]~68_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|mem_addr_r[18]~69\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|mem_addr_r[19]~70_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|mem_addr_r[19]~71\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|mem_addr_r[20]~72_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|mem_addr_r[20]~73\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|mem_addr_r[21]~75_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|mem_addr_r[21]~76\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|mem_addr_r[22]~77_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|mem_addr_r[22]~78\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|mem_addr_r[23]~79_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|mem_addr_r[23]~80\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|mem_addr_r[24]~81_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|mem_addr_r[24]~82\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|mem_addr_r[25]~83_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|mem_addr_r[25]~84\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|mem_addr_r[26]~85_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|mem_addr_r[26]~86\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|mem_addr_r[27]~87_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|mem_addr_r[27]~88\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|mem_addr_r[28]~89_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|mem_addr_r[28]~90\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|mem_addr_r[29]~91_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|mem_addr_r[29]~92\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|mem_addr_r[30]~93_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|mem_addr_r[30]~94\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|mem_addr_r[31]~95_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Mux2~0_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Mux1~0_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Mux1~1_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Mux1~2_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Mux1~3_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Selector19~0_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Mux0~0_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Mux0~1_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Mux0~2_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Mux0~3_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Selector18~0_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|crc_sclr_s~2_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_bank_info_r[0][0]~q\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~34_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~35_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~36_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~38_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Equal1~2_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|LessThan0~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Mux110~2_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Mux108~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Mux107~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Mux103~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Mux103~1_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_bank_info_r[1][2]~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_bank_info_r[0][2]~q\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Selector13~0_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Selector13~1_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Selector13~2_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_bank_info_r[0][1]~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_bank_info_r[0][4]~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_bank_info_r[1][4]~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_bank_info_r[0][6]~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_bank_info_r[1][6]~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_bank_info_r[0][7]~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_bank_info_r[1][7]~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_bank_info_r[0][8]~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_bank_info_r[1][8]~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_bank_info_r[0][9]~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_bank_info_r[1][9]~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[0][0]~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[0][2]~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add7~15_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add7~17_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector3~2_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector66~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|process_0~3_combout\ : std_logic;
SIGNAL \reg_file_i|eth_reg_rdata~0_combout\ : std_logic;
SIGNAL \reg_file_i|eth_reg_rdata~1_combout\ : std_logic;
SIGNAL \reg_file_i|eth_reg_rdata~2_combout\ : std_logic;
SIGNAL \reg_file_i|eth_reg_rdata~4_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector66~2_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_ram_addr_r[5]~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector56~2_combout\ : std_logic;
SIGNAL \reg_file_i|eth_reg_rdata~5_combout\ : std_logic;
SIGNAL \reg_file_i|eth_reg_rdata~10_combout\ : std_logic;
SIGNAL \reg_file_i|eth_reg_rdata~11_combout\ : std_logic;
SIGNAL \reg_file_i|eth_reg_rdata~14_combout\ : std_logic;
SIGNAL \reg_file_i|eth_reg_rdata~15_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_bank_info_len_v~1_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_bank_info_len_v~4_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[3][14]~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[3][9]~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[3][5]~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[3][3]~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[3][2]~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Equal7~3_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector26~4_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector35~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~11_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector53~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector53~1_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector53~2_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add2~26_combout\ : std_logic;
SIGNAL \reg_file_i|echo_reg_x|eth_reg_rdata_r~0_combout\ : std_logic;
SIGNAL \reg_file_i|spi_reg_num_reg_x|eth_reg_rdata_r~0_combout\ : std_logic;
SIGNAL \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~0_combout\ : std_logic;
SIGNAL \reg_file_i|control1_reg_x|reg_num_match_r~q\ : std_logic;
SIGNAL \reg_file_i|control1_reg_x|eth_reg_rdata_r~0_combout\ : std_logic;
SIGNAL \reg_file_i|echo_reg_x|eth_reg_rdata_r~1_combout\ : std_logic;
SIGNAL \reg_file_i|spi_reg_num_reg_x|eth_reg_rdata_r~1_combout\ : std_logic;
SIGNAL \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~1_combout\ : std_logic;
SIGNAL \reg_file_i|echo_reg_x|eth_reg_rdata_r~2_combout\ : std_logic;
SIGNAL \reg_file_i|echo_reg_x|eth_reg_rdata_r~3_combout\ : std_logic;
SIGNAL \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~3_combout\ : std_logic;
SIGNAL \reg_file_i|hw_ver_reg_x|reg_num_match_r~q\ : std_logic;
SIGNAL \reg_file_i|echo_reg_x|eth_reg_rdata_r~4_combout\ : std_logic;
SIGNAL \reg_file_i|spi_reg_num_reg_x|eth_reg_rdata_r~2_combout\ : std_logic;
SIGNAL \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~4_combout\ : std_logic;
SIGNAL \reg_file_i|echo_reg_x|eth_reg_rdata_r~6_combout\ : std_logic;
SIGNAL \mem_file_i|adc_brd_ram_sel_ddr~q\ : std_logic;
SIGNAL \reg_file_i|spi_reg_num_reg_x|eth_reg_rdata_r~4_combout\ : std_logic;
SIGNAL \reg_file_i|echo_reg_x|eth_reg_rdata_r~9_combout\ : std_logic;
SIGNAL \reg_file_i|spi_reg_num_reg_x|eth_reg_rdata_r~5_combout\ : std_logic;
SIGNAL \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~9_combout\ : std_logic;
SIGNAL \reg_file_i|echo_reg_x|eth_reg_rdata_r~10_combout\ : std_logic;
SIGNAL \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~10_combout\ : std_logic;
SIGNAL \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~11_combout\ : std_logic;
SIGNAL \reg_file_i|echo_reg_x|eth_reg_rdata_r~12_combout\ : std_logic;
SIGNAL \reg_file_i|echo_reg_x|eth_reg_rdata_r~13_combout\ : std_logic;
SIGNAL \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~13_combout\ : std_logic;
SIGNAL \reg_file_i|echo_reg_x|eth_reg_rdata_r~14_combout\ : std_logic;
SIGNAL \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~14_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[1][0]~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[2][7]~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[2][10]~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[2][11]~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[2][12]~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[2][13]~q\ : std_logic;
SIGNAL \reg_file_i|control1_reg_x|Equal0~2_combout\ : std_logic;
SIGNAL \reg_file_i|control1_reg_x|Equal0~4_combout\ : std_logic;
SIGNAL \reg_file_i|control1_reg_x|reg_value_r[0]~0_combout\ : std_logic;
SIGNAL \reg_file_i|fw_ver_reg_x|Equal0~2_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[1][4]~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[1][12]~q\ : std_logic;
SIGNAL \reg_file_i|hw_ver_reg_x|Equal0~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[1][1]~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[1][9]~q\ : std_logic;
SIGNAL \mem_file_i|adc_brd_ram_sel_dr~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[1][6]~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[1][10]~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[1][7]~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[1][11]~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~5_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector36~0_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|update_bank_info_s~2_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|update_bank_info_s~6_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|Selector3~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector11~0_combout\ : std_logic;
SIGNAL \mem_file_i|adc_brd_ram_sel_r~q\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~20_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|rx_ram_re_r~q\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|update_bank_info_s~11_combout\ : std_logic;
SIGNAL \mem_file_i|adc_brd_ram_sel_r~0_combout\ : std_logic;
SIGNAL \mem_file_i|adc_brd_ram_sel_r~1_combout\ : std_logic;
SIGNAL \mem_file_i|adc_brd_ram_sel_r~2_combout\ : std_logic;
SIGNAL \mem_file_i|adc_brd_ram_sel_r~3_combout\ : std_logic;
SIGNAL \mem_file_i|adc_brd_ram_sel_r~4_combout\ : std_logic;
SIGNAL \mem_file_i|adc_brd_ram_sel_r~5_combout\ : std_logic;
SIGNAL \mem_file_i|adc_brd_ram_sel_r~6_combout\ : std_logic;
SIGNAL \mem_file_i|adc_brd_ram_sel_r~7_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector15~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector15~1_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector15~2_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Equal2~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|rx_ram_re_r~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector15~3_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|mem_addr_r~74_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Selector11~2_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Selector9~2_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Selector8~2_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Selector7~2_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Selector6~2_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector4~4_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~39_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|ip_checksum_r[2]~34_combout\ : std_logic;
SIGNAL \CLOCK20MHZ[1]~input_o\ : std_logic;
SIGNAL \STROBE~input_o\ : std_logic;
SIGNAL \EthAddrSelect[0]~input_o\ : std_logic;
SIGNAL \EthAddrSelect[1]~input_o\ : std_logic;
SIGNAL \EthAddrSelect[2]~input_o\ : std_logic;
SIGNAL \EthAddrSelect[3]~input_o\ : std_logic;
SIGNAL \EthAddrSelect[4]~input_o\ : std_logic;
SIGNAL \EthAddrSelect[5]~input_o\ : std_logic;
SIGNAL \EthAddrSelect[6]~input_o\ : std_logic;
SIGNAL \EthAddrSelect[7]~input_o\ : std_logic;
SIGNAL \ETH_CRS~input_o\ : std_logic;
SIGNAL \ETH_COL~input_o\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_bank_busy_r[1]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|tx_bank_busy_r[0]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_bank_info_r[0][6]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_bank_info_r[1][6]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_bank_info_r[1][7]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_bank_info_r[0][7]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_bank_info_r[1][8]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_bank_info_r[0][8]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_bank_info_r[0][9]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_bank_info_r[1][9]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[1][0]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[1][4]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[1][12]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[2][12]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[1][1]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[3][5]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[1][9]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[3][9]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[1][6]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[1][10]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[3][14]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[3][3]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[2][7]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[1][7]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[1][11]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[2][11]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_bank_info_r[0][1]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_bank_info_r[0][4]~feeder_combout\ : std_logic;
SIGNAL \reg_file_i|hw_ver_reg_x|eth_reg_rdata_r[12]~feeder_combout\ : std_logic;
SIGNAL \reg_file_i|echo_reg_x|reg_value_r[0]~feeder_combout\ : std_logic;
SIGNAL \reg_file_i|spi_reg_num_reg_x|reg_value_r[0]~feeder_combout\ : std_logic;
SIGNAL \reg_file_i|spi_burst_len_reg_x|reg_value_r[0]~feeder_combout\ : std_logic;
SIGNAL \reg_file_i|echo_reg_x|reg_value_r[4]~feeder_combout\ : std_logic;
SIGNAL \reg_file_i|spi_burst_len_reg_x|reg_value_r[4]~feeder_combout\ : std_logic;
SIGNAL \reg_file_i|spi_reg_num_reg_x|reg_value_r[4]~feeder_combout\ : std_logic;
SIGNAL \reg_file_i|echo_reg_x|reg_value_r[8]~feeder_combout\ : std_logic;
SIGNAL \reg_file_i|echo_reg_x|reg_value_r[12]~feeder_combout\ : std_logic;
SIGNAL \reg_file_i|spi_burst_len_reg_x|reg_value_r[12]~feeder_combout\ : std_logic;
SIGNAL \reg_file_i|echo_reg_x|reg_value_r[1]~feeder_combout\ : std_logic;
SIGNAL \reg_file_i|spi_reg_num_reg_x|reg_value_r[1]~feeder_combout\ : std_logic;
SIGNAL \reg_file_i|spi_burst_len_reg_x|reg_value_r[1]~feeder_combout\ : std_logic;
SIGNAL \reg_file_i|echo_reg_x|reg_value_r[9]~feeder_combout\ : std_logic;
SIGNAL \reg_file_i|spi_burst_len_reg_x|reg_value_r[9]~feeder_combout\ : std_logic;
SIGNAL \mem_file_i|adc_brd_ram_sel_ddr~feeder_combout\ : std_logic;
SIGNAL \reg_file_i|spi_reg_num_reg_x|reg_value_r[2]~feeder_combout\ : std_logic;
SIGNAL \reg_file_i|echo_reg_x|reg_value_r[6]~feeder_combout\ : std_logic;
SIGNAL \reg_file_i|spi_burst_len_reg_x|reg_value_r[6]~feeder_combout\ : std_logic;
SIGNAL \reg_file_i|spi_reg_num_reg_x|reg_value_r[6]~feeder_combout\ : std_logic;
SIGNAL \reg_file_i|echo_reg_x|reg_value_r[10]~feeder_combout\ : std_logic;
SIGNAL \reg_file_i|spi_burst_len_reg_x|reg_value_r[10]~feeder_combout\ : std_logic;
SIGNAL \reg_file_i|spi_burst_len_reg_x|reg_value_r[14]~feeder_combout\ : std_logic;
SIGNAL \reg_file_i|echo_reg_x|reg_value_r[3]~feeder_combout\ : std_logic;
SIGNAL \reg_file_i|echo_reg_x|reg_value_r[7]~feeder_combout\ : std_logic;
SIGNAL \reg_file_i|spi_burst_len_reg_x|reg_value_r[7]~feeder_combout\ : std_logic;
SIGNAL \reg_file_i|echo_reg_x|reg_value_r[11]~feeder_combout\ : std_logic;
SIGNAL \reg_file_i|spi_burst_len_reg_x|reg_value_r[11]~feeder_combout\ : std_logic;
SIGNAL \reg_file_i|echo_reg_x|reg_value_r[15]~feeder_combout\ : std_logic;
SIGNAL \mem_file_i|adc_brd_ram_sel_dr~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|rx_ram_re_dr[0]~feeder_combout\ : std_logic;
SIGNAL \ETH_TX_EN~output_o\ : std_logic;
SIGNAL \ETH_TXD[0]~output_o\ : std_logic;
SIGNAL \ETH_TXD[1]~output_o\ : std_logic;
SIGNAL \ETH_TXD[2]~output_o\ : std_logic;
SIGNAL \ETH_TXD[3]~output_o\ : std_logic;
SIGNAL \ETH_TX_CLK~input_o\ : std_logic;
SIGNAL \ETH_TX_CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \ETH_RX_CLK~input_o\ : std_logic;
SIGNAL \ETH_RX_CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \CLOCK20MHZ[0]~input_o\ : std_logic;
SIGNAL \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \ETH_RXD[0]~input_o\ : std_logic;
SIGNAL \ETH_RXD[3]~input_o\ : std_logic;
SIGNAL \ETH_RXD[2]~input_o\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~21_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~33_combout\ : std_logic;
SIGNAL \ETH_RX_DV~input_o\ : std_logic;
SIGNAL \eth_top_i|eth_pins_i|rx_dv_r~q\ : std_logic;
SIGNAL \ETH_RXD[1]~input_o\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|comb_proc~0_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|Selector3~2_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|Selector0~1_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|Selector0~2_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|Selector0~0_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|Selector0~3_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|eth_rx_sm.st_idle~q\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|Selector1~0_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|eth_rx_sm.st_check_preamble~q\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~0_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~q\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~30_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~24_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~22_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~17_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~11_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~14_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~19_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~42_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~37_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~26_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~36_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~40_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~31_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~29_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~23_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~18_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~10_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~16_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~15_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~41_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|update_bank_info_s~8_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~35_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~34_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|update_bank_info_s~7_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~38_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~27_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|update_bank_info_s~5_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|update_bank_info_s~9_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~32_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~28_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~13_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~25_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|update_bank_info_s~3_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|update_bank_info_s~0_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~12_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|update_bank_info_s~1_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|update_bank_info_s~4_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|update_bank_info_s~10_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|current_bank_r~0_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|current_bank_r~q\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|bank_info_r[0][10]~1_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_ram_i|data_in_r[0]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|addr_cnt[0]~13_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_ram_i|addr_in_r[0]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|addr_cnt[0]~14\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|addr_cnt[1]~15_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_ram_i|addr_in_r[1]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|addr_cnt[1]~16\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|addr_cnt[2]~17_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_ram_i|addr_in_r[2]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|addr_cnt[2]~18\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|addr_cnt[3]~19_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|addr_cnt[3]~20\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|addr_cnt[4]~21_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_ram_i|addr_in_r[4]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|addr_cnt[4]~22\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|addr_cnt[5]~23_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|addr_cnt[5]~24\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|addr_cnt[6]~25_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|addr_cnt[6]~26\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|addr_cnt[7]~27_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_ram_i|addr_in_r[7]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|addr_cnt[7]~28\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|addr_cnt[8]~29_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_ram_i|addr_in_r[8]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|addr_cnt[8]~30\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|addr_cnt[9]~31_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_ram_i|addr_in_r[9]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|addr_cnt[9]~32\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|addr_cnt[10]~33_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_ram_i|addr_in_r[10]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|addr_cnt[10]~34\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|addr_cnt[11]~35_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_ram_i|addr_in_r[11]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|rx_ram_re_dr[1]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|rx_ram_data_valid_r~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector18~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|np_fsm.npf_copyDestMAC~q\ : std_logic;
SIGNAL \eth_top_i|eth_rx_ram_i|data_in_r[2]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|bank_info_r[1][10]~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|rx_current_bank_r~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|rx_current_bank_r~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|rx_bank_info_clrn_r~0_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|bank_info_r[1][10]~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector16~0_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_ram_i|data_in_r[1]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add1~1\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add1~3\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add1~4_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector20~1_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|np_fsm.npf_caseComID~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add1~5\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add1~6_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector11~1_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_ram_i|addr_out_r[3]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add1~7\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add1~8_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector10~0_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_ram_i|addr_out_r[4]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add1~9\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add1~10_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector9~0_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_ram_i|addr_out_r[5]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add1~11\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add1~12_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector8~0_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_ram_i|addr_out_r[6]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add1~13\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add1~14_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector7~0_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_ram_i|addr_out_r[7]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add1~15\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add1~16_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector6~0_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_ram_i|addr_out_r[8]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add1~17\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add1~18_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector5~0_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_ram_i|addr_out_r[9]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector4~2_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add1~19\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add1~20_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~8_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector4~3_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_ram_i|addr_out_r[10]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add2~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector25~2_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|np_fsm.npf_write_mem1~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|np_fsm.npf_read_mem4~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|np_fsm.npf_read_mem4~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|np_fsm.npf_read_mem5~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~8_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~3_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~7_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~9_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_ram_cnt_r[0]~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~10_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~6_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~15_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~12_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add2~1\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add2~3\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add2~5\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add2~7\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add2~9_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add2~11_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add2~10\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add2~12_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add2~14_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add2~6_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add2~8_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Equal3~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Equal3~2_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~4_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~13_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~14_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector32~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|np_fsm.npf_read_mem6~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector66~1_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[3][0]~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector56~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector33~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector2~1_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|np_fsm.npf_write_mem2~2_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|np_fsm.npf_write_mem2~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|WideOr4~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Equal5~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector2~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector1~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector33~1_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|np_fsm.npf_store_ip_checksum~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[3][10]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[3][10]~q\ : std_logic;
SIGNAL \eth_top_i|eth_rx_ram_i|data_in_r[3]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[3][11]~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[3][8]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[3][8]~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Equal7~1_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[3][13]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[3][13]~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[3][15]~q\ : std_logic;
SIGNAL \eth_top_i|eth_rx_ram_i|data_out_r[12]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[3][12]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[3][12]~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Equal7~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[3][6]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[3][6]~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[3][7]~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[3][4]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[3][4]~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Equal7~2_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Equal7~4_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|com_id_high_bits_zero_r~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_ram_addr_r[5]~2_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector21~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|np_fsm.npf_store_reg_rdata1~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|np_fsm.npf_store_reg_rdata2~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|np_fsm.npf_store_reg_rdata3~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|WideOr24~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|np_fsm.npf_store_reg_rdata4~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|WideOr24~1_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector65~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector0~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector62~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector0~1_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector0~2_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector2~2_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|process_0~8_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Mux66~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[0][9]~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[0][6]~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Equal6~1_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[0][4]~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[0][1]~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[0][3]~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Equal6~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Equal6~2_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|short_read_r~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector54~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector54~1_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector54~2_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[3][1]~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[3][1]~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~1_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~4_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector12~0_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_ram_i|addr_out_r[2]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_ram_i|data_out_r[13]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|process_0~1_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector35~1_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|np_fsm.npf_reset~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector16~1_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|np_fsm.npf_idle~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector13~0_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_ram_i|addr_out_r[1]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|process_0~5_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|process_0~4_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_bank_info_r[0][10]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|bank_info_clrn_r~1_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|np_fsm.npf_store_udp_len~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_init~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_bank_info_r[0][10]~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_bank_info_r[0][10]~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_current_bank_r~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_current_bank_r~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|process_0~2_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|process_0~6_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector19~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector19~1_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|np_fsm.npf_copyPacketInfo~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector20~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector26~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~5_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector26~1_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector26~3_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector26~2_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector17~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|np_fsm.npf_checkProtocolID~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~3_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector42~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector43~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector43~1_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Equal1~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector45~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~6_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~7_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|rx_ram_cnt_r[1]~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add0~1\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add0~3\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add0~5\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add0~7\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add0~8_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector41~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add0~9\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add0~10_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector40~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add0~11\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add0~13\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add0~15\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add0~16_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector37~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add0~12_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector39~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add0~14_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector38~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Equal1~1_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Equal1~2_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|rx_ram_data_last_r~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~2_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add1~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector14~0_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_ram_i|addr_out_r[0]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[0][8]~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add2~13\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add2~15_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add2~17_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add2~16\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add2~19\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add2~21_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add2~23_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add2~18_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[0][7]~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add2~20_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Equal3~1_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Equal4~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_ram_data_last_r~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector67~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector67~1_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|rx_current_bank_proc_done_r~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|rx_bank_info_clrn_r~1_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|bank_info_r[0][10]~q\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|Selector3~1_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|Selector3~3_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|Selector3~4_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_i|eth_rx_sm.st_rx_data~q\ : std_logic;
SIGNAL \eth_top_i|eth_rx_ram_i|we_r~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|eth_rx_ram_i|we_r~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[0][5]~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add7~1\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add7~3\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add7~5\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add7~7\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add7~9\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add7~10_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector27~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|np_fsm.npf_read_mem1~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add7~12_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add7~13_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add7~11\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add7~19\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add7~22\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add7~24_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add7~26_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add7~18_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add7~20_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add7~25\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add7~27_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add7~29_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|LessThan0~1_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_bank_info_len_v~5_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_bank_info_r[1][5]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_bank_info_r[1][10]~1_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_bank_info_r[1][5]~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_bank_info_r[0][5]~q\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|nibble_cnt_r[7]~4_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add7~2_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add7~14_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_bank_info_len_v~2_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_bank_info_r[1][1]~q\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|current_bank_r~0_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|current_bank_r~q\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|nibble_cnt_r[3]~1_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Selector14~2_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_len_r[0]~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add7~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_bank_info_len_v~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_bank_info_r[1][0]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_bank_info_r[1][0]~q\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|nibble_cnt_r[2]~0_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Add1~1\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Add1~3\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Add1~4_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Selector15~2_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Add1~5\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Add1~7\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Add1~9\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Add1~11\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Add1~13\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Add1~14_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Selector10~2_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add7~6_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add7~16_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_bank_info_len_v~3_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_bank_info_r[0][3]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_bank_info_r[0][3]~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_bank_info_r[1][3]~q\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|nibble_cnt_r[5]~2_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Add1~10_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Selector12~2_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Equal1~1_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|eth_tx_sm.st_reg_addr2~q\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|WideOr0~0_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Selector16~0_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Add1~2_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Selector16~1_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Add1~0_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Selector17~0_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Equal1~0_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Equal1~3_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|nibble_cnt_zero_r~q\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|eth_tx_sm.st_send_crc~q\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|eth_tx_sm.st_wait_interframe~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|eth_tx_sm.st_wait_interframe~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_bank_info_r[1][10]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|bank_info_clrn_r~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_bank_info_r[1][10]~q\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Selector0~0_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Selector0~1_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|eth_tx_sm.st_idle~q\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Selector1~0_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|eth_tx_sm.st_reg_addr1~q\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|eth_tx_sm.st_send_data~0_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|eth_tx_sm.st_send_data~1_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|eth_tx_sm.st_send_data~q\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|tx_en_r~0_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|tx_en_r~q\ : std_logic;
SIGNAL \eth_top_i|eth_pins_i|tx_en_or~q\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|addr_cnt_r[0]~12_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|addr_cnt_r[0]~13\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|addr_cnt_r[1]~15\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|addr_cnt_r[2]~17\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|addr_cnt_r[3]~19\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|addr_cnt_r[4]~21\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|addr_cnt_r[5]~22_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|addr_cnt_r[5]~23\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|addr_cnt_r[6]~24_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|addr_cnt_r[4]~20_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|crc_sclr_s~1_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|addr_cnt_r[6]~25\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|addr_cnt_r[7]~27\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|addr_cnt_r[8]~28_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|addr_cnt_r[8]~29\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|addr_cnt_r[9]~31\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|addr_cnt_r[10]~32_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|addr_cnt_r[10]~33\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|addr_cnt_r[11]~34_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|addr_cnt_r[1]~14_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|crc_sclr_s~0_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|crc_sclr_s~3_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector3~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|WideOr23~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|np_fsm.npf_read_mem2~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|np_fsm.npf_read_mem3~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|np_fsm.npf_read_mem3~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|WideOr23~1_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector3~1_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector3~3_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector3~4_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector3~5_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector3~6_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_ram_we_r~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add7~21_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add7~23_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|sys_data_base_r[3]~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|ip_checksum_r[0]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|proto_len_r[1]~12\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|proto_len_r[2]~14\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|proto_len_r[3]~16\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|proto_len_r[4]~18\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|proto_len_r[5]~20\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|proto_len_r[6]~22\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|proto_len_r[7]~24\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|proto_len_r[8]~26\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|proto_len_r[9]~27_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|proto_len_r[8]~25_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|proto_len_r[6]~21_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|proto_len_r[4]~17_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|ip_checksum_r[5]~12\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|ip_checksum_r[6]~14\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|ip_checksum_r[7]~16\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|ip_checksum_r[8]~18\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|ip_checksum_r[9]~20\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|ip_checksum_r[10]~21_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[2][4]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Mux66~2_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[2][4]~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[2][14]~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[2][1]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[2][1]~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[2][2]~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[2][3]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[2][3]~q\ : std_logic;
SIGNAL \reg_file_i|control1_reg_x|Equal0~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[2][15]~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[2][9]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[2][9]~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[2][6]~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[2][8]~q\ : std_logic;
SIGNAL \reg_file_i|control1_reg_x|Equal0~1_combout\ : std_logic;
SIGNAL \reg_file_i|control1_reg_x|Equal0~3_combout\ : std_logic;
SIGNAL \reg_file_i|echo_reg_x|Equal0~0_combout\ : std_logic;
SIGNAL \reg_file_i|echo_reg_x|reg_num_match_r~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[1][2]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Mux66~1_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[1][2]~q\ : std_logic;
SIGNAL \reg_file_i|echo_reg_x|reg_value_r[2]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|reg_we_r~q\ : std_logic;
SIGNAL \reg_file_i|control1_reg_x|eth_reg_we_r~q\ : std_logic;
SIGNAL \reg_file_i|echo_reg_x|reg_value_r[0]~0_combout\ : std_logic;
SIGNAL \reg_file_i|echo_reg_x|eth_reg_rdata_r~8_combout\ : std_logic;
SIGNAL \reg_file_i|spi_burst_len_reg_x|reg_value_r[2]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[2][0]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[2][0]~q\ : std_logic;
SIGNAL \reg_file_i|spi_burst_len_reg_x|Equal0~0_combout\ : std_logic;
SIGNAL \reg_file_i|spi_burst_len_reg_x|reg_num_match_r~q\ : std_logic;
SIGNAL \reg_file_i|spi_burst_len_reg_x|reg_value_r[0]~0_combout\ : std_logic;
SIGNAL \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~8_combout\ : std_logic;
SIGNAL \reg_file_i|eth_reg_rdata~9_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Mux112~0_combout\ : std_logic;
SIGNAL \mem_file_i|adc_brd_ram_sel_dddr~feeder_combout\ : std_logic;
SIGNAL \mem_file_i|adc_brd_ram_sel_dddr~q\ : std_logic;
SIGNAL \mem_file_i|eth_mem_rdata_r[2]~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|proto_len_r[9]~28\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|proto_len_r[10]~29_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Mux112~1_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Mux112~2_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Mux110~4_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|proto_len_r[10]~30\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|proto_len_r[11]~31_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|ip_checksum_r[10]~22\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|ip_checksum_r[11]~24\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|ip_checksum_r[12]~26\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|ip_checksum_r[13]~28\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|ip_checksum_r[14]~29_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|process_0~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Mux108~1_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Mux104~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|proto_len_r[2]~13_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Mux104~1_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Mux104~2_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|ip_checksum_r[6]~13_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[1][14]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[1][14]~q\ : std_logic;
SIGNAL \reg_file_i|echo_reg_x|reg_value_r[14]~feeder_combout\ : std_logic;
SIGNAL \reg_file_i|echo_reg_x|eth_reg_rdata_r~11_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[2][5]~q\ : std_logic;
SIGNAL \reg_file_i|fw_ver_reg_x|Equal0~0_combout\ : std_logic;
SIGNAL \reg_file_i|fw_ver_reg_x|Equal0~1_combout\ : std_logic;
SIGNAL \reg_file_i|fw_ver_reg_x|Equal0~3_combout\ : std_logic;
SIGNAL \reg_file_i|fw_ver_reg_x|Equal0~4_combout\ : std_logic;
SIGNAL \reg_file_i|id_reg_x|Equal0~0_combout\ : std_logic;
SIGNAL \reg_file_i|id_reg_x|reg_num_match_r~q\ : std_logic;
SIGNAL \reg_file_i|id_reg_x|eth_reg_rdata_r[0]~feeder_combout\ : std_logic;
SIGNAL \reg_file_i|eth_reg_rdata~12_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Mux100~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Mux100~1_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Mux100~2_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|WideOr23~combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add3~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector66~3_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector66~4_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector66~5_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector65~1_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector65~2_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector65~3_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector2~3_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector64~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector64~1_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector63~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector63~1_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector63~2_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add3~1\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add3~3\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add3~5\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add3~6_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector63~3_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add3~7\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add3~8_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector62~1_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector62~2_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector62~3_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add3~9\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add3~10_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector61~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add3~11\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add3~12_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_ram_addr_r[5]~3_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|process_0~7_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_ram_addr_r[5]~1_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|tx_ram_addr_r[5]~4_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector60~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add3~13\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add3~14_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector59~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add3~15\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add3~16_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector58~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add3~17\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add3~18_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector57~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector56~1_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector56~3_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add3~19\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Add3~20_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Selector56~4_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|addr_cnt_r[2]~16_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_ram_i|addr_out_r[2]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|addr_cnt_r[3]~18_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_ram_i|addr_out_r[4]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_ram_i|addr_out_r[5]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|addr_cnt_r[7]~26_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_ram_i|addr_out_r[7]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_ram_i|addr_out_r[8]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|addr_cnt_r[9]~30_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_ram_i|addr_out_r[9]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_ram_i|addr_out_r[10]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_ram_i|addr_out_r[12]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Mux111~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[1][3]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[1][3]~q\ : std_logic;
SIGNAL \reg_file_i|spi_reg_num_reg_x|reg_value_r[3]~feeder_combout\ : std_logic;
SIGNAL \reg_file_i|spi_reg_num_reg_x|Equal0~0_combout\ : std_logic;
SIGNAL \reg_file_i|spi_reg_num_reg_x|reg_num_match_r~q\ : std_logic;
SIGNAL \reg_file_i|spi_reg_num_reg_x|reg_value_r[0]~0_combout\ : std_logic;
SIGNAL \reg_file_i|spi_reg_num_reg_x|eth_reg_rdata_r~6_combout\ : std_logic;
SIGNAL \reg_file_i|spi_burst_len_reg_x|reg_value_r[3]~feeder_combout\ : std_logic;
SIGNAL \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~12_combout\ : std_logic;
SIGNAL \reg_file_i|eth_reg_rdata~13_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Mux110~1_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Mux111~1_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|ip_checksum_r[14]~30\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|ip_checksum_r[15]~31_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Mux107~1_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|proto_len_r[3]~15_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|ip_checksum_r[3]~35_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Mux103~2_combout\ : std_logic;
SIGNAL \reg_file_i|echo_reg_x|eth_reg_rdata_r~15_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[1][15]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[1][15]~q\ : std_logic;
SIGNAL \reg_file_i|spi_burst_len_reg_x|reg_value_r[15]~feeder_combout\ : std_logic;
SIGNAL \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~15_combout\ : std_logic;
SIGNAL \reg_file_i|eth_reg_rdata~16_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Mux99~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|proto_len_r[7]~23_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Mux99~1_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Mux99~2_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~20_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~54_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~28_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Mux105~2_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|ip_checksum_r[9]~19_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Mux113~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Mux105~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Mux113~combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Mux110~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Mux109~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[1][5]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[1][5]~q\ : std_logic;
SIGNAL \reg_file_i|spi_reg_num_reg_x|reg_value_r[5]~feeder_combout\ : std_logic;
SIGNAL \reg_file_i|spi_reg_num_reg_x|eth_reg_rdata_r~3_combout\ : std_logic;
SIGNAL \reg_file_i|spi_burst_len_reg_x|reg_value_r[5]~feeder_combout\ : std_logic;
SIGNAL \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~5_combout\ : std_logic;
SIGNAL \reg_file_i|echo_reg_x|reg_value_r[5]~feeder_combout\ : std_logic;
SIGNAL \reg_file_i|echo_reg_x|eth_reg_rdata_r~5_combout\ : std_logic;
SIGNAL \reg_file_i|eth_reg_rdata~6_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|ip_checksum_r[13]~27_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Mux109~1_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Mux105~1_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|proto_len_r[1]~11_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|ip_checksum_r[1]~33_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Mux105~3_combout\ : std_logic;
SIGNAL \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~6_combout\ : std_logic;
SIGNAL \reg_file_i|eth_reg_rdata~7_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Mux105~combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[1][13]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[1][13]~q\ : std_logic;
SIGNAL \reg_file_i|echo_reg_x|reg_value_r[13]~feeder_combout\ : std_logic;
SIGNAL \reg_file_i|echo_reg_x|eth_reg_rdata_r~7_combout\ : std_logic;
SIGNAL \reg_file_i|spi_burst_len_reg_x|reg_value_r[13]~feeder_combout\ : std_logic;
SIGNAL \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~7_combout\ : std_logic;
SIGNAL \reg_file_i|eth_reg_rdata~8_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|ip_checksum_r[5]~11_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Mux101~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Mux101~combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~49_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~48_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|ip_checksum_r[8]~17_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Mux114~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Mux114~combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|ip_checksum_r[12]~25_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Mux110~3_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[1][8]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|info_words[1][8]~q\ : std_logic;
SIGNAL \reg_file_i|spi_burst_len_reg_x|reg_value_r[8]~feeder_combout\ : std_logic;
SIGNAL \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~2_combout\ : std_logic;
SIGNAL \reg_file_i|fw_ver_reg_x|Equal0~5_combout\ : std_logic;
SIGNAL \reg_file_i|fw_ver_reg_x|reg_num_match_r~q\ : std_logic;
SIGNAL \reg_file_i|fw_ver_reg_x|eth_reg_rdata_r[0]~feeder_combout\ : std_logic;
SIGNAL \reg_file_i|eth_reg_rdata~3_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Mux106~2_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Mux106~3_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Mux102~0_combout\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|Mux102~combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~32_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~30_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~22_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~42_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~43_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~41_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~53_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~40_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~37_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~33_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~39_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~21_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~27_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~24_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~51_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~26_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~44_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~52_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~47_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~23_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~25_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~45_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~46_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Mux3~2_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Mux3~3_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Mux3~0_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Mux3~1_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Selector21~0_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Selector21~1_combout\ : std_logic;
SIGNAL \eth_top_i|eth_pins_i|txd_or[0]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~50_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~29_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~31_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Mux2~2_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Mux2~3_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Mux2~1_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Selector20~0_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Selector20~1_combout\ : std_logic;
SIGNAL \eth_top_i|eth_pins_i|txd_or[1]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Selector19~1_combout\ : std_logic;
SIGNAL \eth_top_i|eth_pins_i|txd_or[2]~feeder_combout\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|Selector18~1_combout\ : std_logic;
SIGNAL \eth_top_i|eth_pins_i|txd_or[3]~feeder_combout\ : std_logic;
SIGNAL \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \eth_top_i|eth_tx_i|crc32nibble_i|m_s\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mem_file_i|eth_mem_rdata_r\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \reg_file_i|fw_ver_reg_x|eth_reg_rdata_r\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \reg_file_i|hw_ver_reg_x|eth_reg_rdata_r\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \reg_file_i|id_reg_x|eth_reg_rdata_r\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \reg_file_i|control1_reg_x|eth_reg_rdata_r\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \reg_file_i|control1_reg_x|reg_value_r\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \reg_file_i|spi_burst_len_reg_x|reg_value_r\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \reg_file_i|spi_reg_num_reg_x|eth_reg_rdata_r\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \reg_file_i|spi_reg_num_reg_x|reg_value_r\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \reg_file_i|echo_reg_x|eth_reg_rdata_r\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \reg_file_i|echo_reg_x|reg_value_r\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \reg_file_i|eth_reg_rdata\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \eth_top_i|eth_tx_i|addr_cnt_r\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \eth_top_i|eth_tx_i|bank_info_clrn_r\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \eth_top_i|eth_tx_i|nibble_cnt_r\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \eth_top_i|eth_tx_i|tx_bank_busy_r\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \eth_top_i|eth_tx_i|txd_r\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \eth_top_i|eth_tx_ram_i|eth_tx_buf_i|altsyncram_component|auto_generated|q_b\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \eth_top_i|eth_tx_ram_i|addr_out_r\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \eth_top_i|eth_tx_ram_i|data_out_r\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|q_b\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \eth_top_i|eth_rx_ram_i|addr_in_r\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \eth_top_i|eth_rx_ram_i|addr_out_r\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \eth_top_i|eth_rx_ram_i|data_in_r\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \eth_top_i|eth_rx_ram_i|data_out_r\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \eth_top_i|eth_rx_i|crc32nibble_i|m_s\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \eth_top_i|eth_rx_i|addr_cnt\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \eth_top_i|eth_pins_i|rxd_r\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \eth_top_i|eth_pins_i|txd_or\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \eth_top_i|net_proc_i|ip_checksum_r\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \eth_top_i|net_proc_i|mem_addr_r\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \eth_top_i|net_proc_i|proto_len_r\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \eth_top_i|net_proc_i|rx_bank_busy_r\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \eth_top_i|net_proc_i|rx_bank_info_clrn_r\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \eth_top_i|net_proc_i|rx_ram_addr_r\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \eth_top_i|net_proc_i|rx_ram_cnt_r\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \eth_top_i|net_proc_i|rx_ram_re_dr\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \eth_top_i|net_proc_i|sys_data_base_r\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \eth_top_i|net_proc_i|tx_bank_busy_r\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \eth_top_i|net_proc_i|tx_len_r\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \eth_top_i|net_proc_i|tx_ram_addr_r\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \eth_top_i|net_proc_i|tx_ram_cnt_r\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \eth_top_i|net_proc_i|tx_ram_source_r\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \eth_top_i|eth_tx_i|ALT_INV_eth_tx_sm.st_send_crc~q\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|ALT_INV_eth_tx_sm.st_idle~q\ : std_logic;
SIGNAL \eth_top_i|eth_tx_i|ALT_INV_eth_tx_sm.st_reg_addr1~q\ : std_logic;
SIGNAL \eth_top_i|net_proc_i|ALT_INV_np_fsm.npf_caseComID~q\ : std_logic;

BEGIN

ww_CLOCK20MHZ <= CLOCK20MHZ;
ww_STROBE <= STROBE;
ww_EthAddrSelect <= EthAddrSelect;
ww_ETH_TX_CLK <= ETH_TX_CLK;
ETH_TX_EN <= ww_ETH_TX_EN;
ETH_TXD <= ww_ETH_TXD;
ww_ETH_RX_CLK <= ETH_RX_CLK;
ww_ETH_RX_DV <= ETH_RX_DV;
ww_ETH_RXD <= ETH_RXD;
ww_ETH_CRS <= ETH_CRS;
ww_ETH_COL <= ETH_COL;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\eth_top_i|eth_tx_ram_i|eth_tx_buf_i|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\eth_top_i|net_proc_i|Mux102~combout\ & \eth_top_i|net_proc_i|Mux106~3_combout\ & \eth_top_i|net_proc_i|Mux110~3_combout\ & 
\eth_top_i|net_proc_i|Mux114~combout\);

\eth_top_i|eth_tx_ram_i|eth_tx_buf_i|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\eth_top_i|net_proc_i|tx_ram_addr_r\(10) & \eth_top_i|net_proc_i|tx_ram_addr_r\(9) & \eth_top_i|net_proc_i|tx_ram_addr_r\(8) & 
\eth_top_i|net_proc_i|tx_ram_addr_r\(7) & \eth_top_i|net_proc_i|tx_ram_addr_r\(6) & \eth_top_i|net_proc_i|tx_ram_addr_r\(5) & \eth_top_i|net_proc_i|tx_ram_addr_r\(4) & \eth_top_i|net_proc_i|tx_ram_addr_r\(3) & 
\eth_top_i|net_proc_i|tx_ram_addr_r\(2) & \eth_top_i|net_proc_i|tx_ram_addr_r\(1) & \eth_top_i|net_proc_i|tx_ram_addr_r\(0));

\eth_top_i|eth_tx_ram_i|eth_tx_buf_i|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\eth_top_i|eth_tx_ram_i|addr_out_r\(12) & \eth_top_i|eth_tx_ram_i|addr_out_r\(11) & \eth_top_i|eth_tx_ram_i|addr_out_r\(10) & 
\eth_top_i|eth_tx_ram_i|addr_out_r\(9) & \eth_top_i|eth_tx_ram_i|addr_out_r\(8) & \eth_top_i|eth_tx_ram_i|addr_out_r\(7) & \eth_top_i|eth_tx_ram_i|addr_out_r\(6) & \eth_top_i|eth_tx_ram_i|addr_out_r\(5) & \eth_top_i|eth_tx_ram_i|addr_out_r\(4)
& \eth_top_i|eth_tx_ram_i|addr_out_r\(3) & \eth_top_i|eth_tx_ram_i|addr_out_r\(2) & \eth_top_i|eth_tx_ram_i|addr_out_r\(1) & \eth_top_i|eth_tx_ram_i|addr_out_r\(0));

\eth_top_i|eth_tx_ram_i|eth_tx_buf_i|altsyncram_component|auto_generated|q_b\(0) <= \eth_top_i|eth_tx_ram_i|eth_tx_buf_i|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\eth_top_i|eth_tx_ram_i|eth_tx_buf_i|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\ <= (\eth_top_i|net_proc_i|Mux101~combout\ & \eth_top_i|net_proc_i|Mux105~combout\ & \eth_top_i|net_proc_i|Mux109~1_combout\ & 
\eth_top_i|net_proc_i|Mux113~combout\);

\eth_top_i|eth_tx_ram_i|eth_tx_buf_i|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\eth_top_i|net_proc_i|tx_ram_addr_r\(10) & \eth_top_i|net_proc_i|tx_ram_addr_r\(9) & \eth_top_i|net_proc_i|tx_ram_addr_r\(8) & 
\eth_top_i|net_proc_i|tx_ram_addr_r\(7) & \eth_top_i|net_proc_i|tx_ram_addr_r\(6) & \eth_top_i|net_proc_i|tx_ram_addr_r\(5) & \eth_top_i|net_proc_i|tx_ram_addr_r\(4) & \eth_top_i|net_proc_i|tx_ram_addr_r\(3) & 
\eth_top_i|net_proc_i|tx_ram_addr_r\(2) & \eth_top_i|net_proc_i|tx_ram_addr_r\(1) & \eth_top_i|net_proc_i|tx_ram_addr_r\(0));

\eth_top_i|eth_tx_ram_i|eth_tx_buf_i|altsyncram_component|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\eth_top_i|eth_tx_ram_i|addr_out_r\(12) & \eth_top_i|eth_tx_ram_i|addr_out_r\(11) & \eth_top_i|eth_tx_ram_i|addr_out_r\(10) & 
\eth_top_i|eth_tx_ram_i|addr_out_r\(9) & \eth_top_i|eth_tx_ram_i|addr_out_r\(8) & \eth_top_i|eth_tx_ram_i|addr_out_r\(7) & \eth_top_i|eth_tx_ram_i|addr_out_r\(6) & \eth_top_i|eth_tx_ram_i|addr_out_r\(5) & \eth_top_i|eth_tx_ram_i|addr_out_r\(4)
& \eth_top_i|eth_tx_ram_i|addr_out_r\(3) & \eth_top_i|eth_tx_ram_i|addr_out_r\(2) & \eth_top_i|eth_tx_ram_i|addr_out_r\(1) & \eth_top_i|eth_tx_ram_i|addr_out_r\(0));

\eth_top_i|eth_tx_ram_i|eth_tx_buf_i|altsyncram_component|auto_generated|q_b\(1) <= \eth_top_i|eth_tx_ram_i|eth_tx_buf_i|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);

\eth_top_i|eth_tx_ram_i|eth_tx_buf_i|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\ <= (\eth_top_i|net_proc_i|Mux100~2_combout\ & \eth_top_i|net_proc_i|Mux104~2_combout\ & \eth_top_i|net_proc_i|Mux108~1_combout\ & 
\eth_top_i|net_proc_i|Mux112~2_combout\);

\eth_top_i|eth_tx_ram_i|eth_tx_buf_i|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\eth_top_i|net_proc_i|tx_ram_addr_r\(10) & \eth_top_i|net_proc_i|tx_ram_addr_r\(9) & \eth_top_i|net_proc_i|tx_ram_addr_r\(8) & 
\eth_top_i|net_proc_i|tx_ram_addr_r\(7) & \eth_top_i|net_proc_i|tx_ram_addr_r\(6) & \eth_top_i|net_proc_i|tx_ram_addr_r\(5) & \eth_top_i|net_proc_i|tx_ram_addr_r\(4) & \eth_top_i|net_proc_i|tx_ram_addr_r\(3) & 
\eth_top_i|net_proc_i|tx_ram_addr_r\(2) & \eth_top_i|net_proc_i|tx_ram_addr_r\(1) & \eth_top_i|net_proc_i|tx_ram_addr_r\(0));

\eth_top_i|eth_tx_ram_i|eth_tx_buf_i|altsyncram_component|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\eth_top_i|eth_tx_ram_i|addr_out_r\(12) & \eth_top_i|eth_tx_ram_i|addr_out_r\(11) & \eth_top_i|eth_tx_ram_i|addr_out_r\(10) & 
\eth_top_i|eth_tx_ram_i|addr_out_r\(9) & \eth_top_i|eth_tx_ram_i|addr_out_r\(8) & \eth_top_i|eth_tx_ram_i|addr_out_r\(7) & \eth_top_i|eth_tx_ram_i|addr_out_r\(6) & \eth_top_i|eth_tx_ram_i|addr_out_r\(5) & \eth_top_i|eth_tx_ram_i|addr_out_r\(4)
& \eth_top_i|eth_tx_ram_i|addr_out_r\(3) & \eth_top_i|eth_tx_ram_i|addr_out_r\(2) & \eth_top_i|eth_tx_ram_i|addr_out_r\(1) & \eth_top_i|eth_tx_ram_i|addr_out_r\(0));

\eth_top_i|eth_tx_ram_i|eth_tx_buf_i|altsyncram_component|auto_generated|q_b\(2) <= \eth_top_i|eth_tx_ram_i|eth_tx_buf_i|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);

\eth_top_i|eth_tx_ram_i|eth_tx_buf_i|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\ <= (\eth_top_i|net_proc_i|Mux99~2_combout\ & \eth_top_i|net_proc_i|Mux103~2_combout\ & \eth_top_i|net_proc_i|Mux107~1_combout\ & 
\eth_top_i|net_proc_i|Mux111~1_combout\);

\eth_top_i|eth_tx_ram_i|eth_tx_buf_i|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\eth_top_i|net_proc_i|tx_ram_addr_r\(10) & \eth_top_i|net_proc_i|tx_ram_addr_r\(9) & \eth_top_i|net_proc_i|tx_ram_addr_r\(8) & 
\eth_top_i|net_proc_i|tx_ram_addr_r\(7) & \eth_top_i|net_proc_i|tx_ram_addr_r\(6) & \eth_top_i|net_proc_i|tx_ram_addr_r\(5) & \eth_top_i|net_proc_i|tx_ram_addr_r\(4) & \eth_top_i|net_proc_i|tx_ram_addr_r\(3) & 
\eth_top_i|net_proc_i|tx_ram_addr_r\(2) & \eth_top_i|net_proc_i|tx_ram_addr_r\(1) & \eth_top_i|net_proc_i|tx_ram_addr_r\(0));

\eth_top_i|eth_tx_ram_i|eth_tx_buf_i|altsyncram_component|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\eth_top_i|eth_tx_ram_i|addr_out_r\(12) & \eth_top_i|eth_tx_ram_i|addr_out_r\(11) & \eth_top_i|eth_tx_ram_i|addr_out_r\(10) & 
\eth_top_i|eth_tx_ram_i|addr_out_r\(9) & \eth_top_i|eth_tx_ram_i|addr_out_r\(8) & \eth_top_i|eth_tx_ram_i|addr_out_r\(7) & \eth_top_i|eth_tx_ram_i|addr_out_r\(6) & \eth_top_i|eth_tx_ram_i|addr_out_r\(5) & \eth_top_i|eth_tx_ram_i|addr_out_r\(4)
& \eth_top_i|eth_tx_ram_i|addr_out_r\(3) & \eth_top_i|eth_tx_ram_i|addr_out_r\(2) & \eth_top_i|eth_tx_ram_i|addr_out_r\(1) & \eth_top_i|eth_tx_ram_i|addr_out_r\(0));

\eth_top_i|eth_tx_ram_i|eth_tx_buf_i|altsyncram_component|auto_generated|q_b\(3) <= \eth_top_i|eth_tx_ram_i|eth_tx_buf_i|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);

\infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \CLOCK20MHZ[0]~input_o\);

\infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk\(0) <= \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|pll1_CLK_bus\(0);
\infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk\(1) <= \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|pll1_CLK_bus\(1);
\infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk\(2) <= \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|pll1_CLK_bus\(2);
\infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk\(3) <= \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|pll1_CLK_bus\(3);
\infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk\(4) <= \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|pll1_CLK_bus\(4);

\eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \eth_top_i|eth_rx_ram_i|data_in_r\(0);

\eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\eth_top_i|eth_rx_ram_i|addr_in_r\(12) & \eth_top_i|eth_rx_ram_i|addr_in_r\(11) & \eth_top_i|eth_rx_ram_i|addr_in_r\(10) & 
\eth_top_i|eth_rx_ram_i|addr_in_r\(9) & \eth_top_i|eth_rx_ram_i|addr_in_r\(8) & \eth_top_i|eth_rx_ram_i|addr_in_r\(7) & \eth_top_i|eth_rx_ram_i|addr_in_r\(6) & \eth_top_i|eth_rx_ram_i|addr_in_r\(5) & \eth_top_i|eth_rx_ram_i|addr_in_r\(4) & 
\eth_top_i|eth_rx_ram_i|addr_in_r\(3) & \eth_top_i|eth_rx_ram_i|addr_in_r\(2) & \eth_top_i|eth_rx_ram_i|addr_in_r\(1) & \eth_top_i|eth_rx_ram_i|addr_in_r\(0));

\eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\eth_top_i|eth_rx_ram_i|addr_out_r\(10) & \eth_top_i|eth_rx_ram_i|addr_out_r\(9) & \eth_top_i|eth_rx_ram_i|addr_out_r\(8) & 
\eth_top_i|eth_rx_ram_i|addr_out_r\(7) & \eth_top_i|eth_rx_ram_i|addr_out_r\(6) & \eth_top_i|eth_rx_ram_i|addr_out_r\(5) & \eth_top_i|eth_rx_ram_i|addr_out_r\(4) & \eth_top_i|eth_rx_ram_i|addr_out_r\(3) & \eth_top_i|eth_rx_ram_i|addr_out_r\(2)
& \eth_top_i|eth_rx_ram_i|addr_out_r\(1) & \eth_top_i|eth_rx_ram_i|addr_out_r\(0));

\eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|q_b\(0) <= \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|q_b\(4) <= \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|q_b\(8) <= \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|q_b\(12) <= \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);

\eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \eth_top_i|eth_rx_ram_i|data_in_r\(1);

\eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\eth_top_i|eth_rx_ram_i|addr_in_r\(12) & \eth_top_i|eth_rx_ram_i|addr_in_r\(11) & \eth_top_i|eth_rx_ram_i|addr_in_r\(10) & 
\eth_top_i|eth_rx_ram_i|addr_in_r\(9) & \eth_top_i|eth_rx_ram_i|addr_in_r\(8) & \eth_top_i|eth_rx_ram_i|addr_in_r\(7) & \eth_top_i|eth_rx_ram_i|addr_in_r\(6) & \eth_top_i|eth_rx_ram_i|addr_in_r\(5) & \eth_top_i|eth_rx_ram_i|addr_in_r\(4) & 
\eth_top_i|eth_rx_ram_i|addr_in_r\(3) & \eth_top_i|eth_rx_ram_i|addr_in_r\(2) & \eth_top_i|eth_rx_ram_i|addr_in_r\(1) & \eth_top_i|eth_rx_ram_i|addr_in_r\(0));

\eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\eth_top_i|eth_rx_ram_i|addr_out_r\(10) & \eth_top_i|eth_rx_ram_i|addr_out_r\(9) & \eth_top_i|eth_rx_ram_i|addr_out_r\(8) & 
\eth_top_i|eth_rx_ram_i|addr_out_r\(7) & \eth_top_i|eth_rx_ram_i|addr_out_r\(6) & \eth_top_i|eth_rx_ram_i|addr_out_r\(5) & \eth_top_i|eth_rx_ram_i|addr_out_r\(4) & \eth_top_i|eth_rx_ram_i|addr_out_r\(3) & \eth_top_i|eth_rx_ram_i|addr_out_r\(2)
& \eth_top_i|eth_rx_ram_i|addr_out_r\(1) & \eth_top_i|eth_rx_ram_i|addr_out_r\(0));

\eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|q_b\(1) <= \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);
\eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|q_b\(5) <= \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(1);
\eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|q_b\(9) <= \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(2);
\eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|q_b\(13) <= \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(3);

\eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \eth_top_i|eth_rx_ram_i|data_in_r\(2);

\eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\eth_top_i|eth_rx_ram_i|addr_in_r\(12) & \eth_top_i|eth_rx_ram_i|addr_in_r\(11) & \eth_top_i|eth_rx_ram_i|addr_in_r\(10) & 
\eth_top_i|eth_rx_ram_i|addr_in_r\(9) & \eth_top_i|eth_rx_ram_i|addr_in_r\(8) & \eth_top_i|eth_rx_ram_i|addr_in_r\(7) & \eth_top_i|eth_rx_ram_i|addr_in_r\(6) & \eth_top_i|eth_rx_ram_i|addr_in_r\(5) & \eth_top_i|eth_rx_ram_i|addr_in_r\(4) & 
\eth_top_i|eth_rx_ram_i|addr_in_r\(3) & \eth_top_i|eth_rx_ram_i|addr_in_r\(2) & \eth_top_i|eth_rx_ram_i|addr_in_r\(1) & \eth_top_i|eth_rx_ram_i|addr_in_r\(0));

\eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\eth_top_i|eth_rx_ram_i|addr_out_r\(10) & \eth_top_i|eth_rx_ram_i|addr_out_r\(9) & \eth_top_i|eth_rx_ram_i|addr_out_r\(8) & 
\eth_top_i|eth_rx_ram_i|addr_out_r\(7) & \eth_top_i|eth_rx_ram_i|addr_out_r\(6) & \eth_top_i|eth_rx_ram_i|addr_out_r\(5) & \eth_top_i|eth_rx_ram_i|addr_out_r\(4) & \eth_top_i|eth_rx_ram_i|addr_out_r\(3) & \eth_top_i|eth_rx_ram_i|addr_out_r\(2)
& \eth_top_i|eth_rx_ram_i|addr_out_r\(1) & \eth_top_i|eth_rx_ram_i|addr_out_r\(0));

\eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|q_b\(2) <= \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);
\eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|q_b\(6) <= \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(1);
\eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|q_b\(10) <= \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(2);
\eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|q_b\(14) <= \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(3);

\eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \eth_top_i|eth_rx_ram_i|data_in_r\(3);

\eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\eth_top_i|eth_rx_ram_i|addr_in_r\(12) & \eth_top_i|eth_rx_ram_i|addr_in_r\(11) & \eth_top_i|eth_rx_ram_i|addr_in_r\(10) & 
\eth_top_i|eth_rx_ram_i|addr_in_r\(9) & \eth_top_i|eth_rx_ram_i|addr_in_r\(8) & \eth_top_i|eth_rx_ram_i|addr_in_r\(7) & \eth_top_i|eth_rx_ram_i|addr_in_r\(6) & \eth_top_i|eth_rx_ram_i|addr_in_r\(5) & \eth_top_i|eth_rx_ram_i|addr_in_r\(4) & 
\eth_top_i|eth_rx_ram_i|addr_in_r\(3) & \eth_top_i|eth_rx_ram_i|addr_in_r\(2) & \eth_top_i|eth_rx_ram_i|addr_in_r\(1) & \eth_top_i|eth_rx_ram_i|addr_in_r\(0));

\eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\eth_top_i|eth_rx_ram_i|addr_out_r\(10) & \eth_top_i|eth_rx_ram_i|addr_out_r\(9) & \eth_top_i|eth_rx_ram_i|addr_out_r\(8) & 
\eth_top_i|eth_rx_ram_i|addr_out_r\(7) & \eth_top_i|eth_rx_ram_i|addr_out_r\(6) & \eth_top_i|eth_rx_ram_i|addr_out_r\(5) & \eth_top_i|eth_rx_ram_i|addr_out_r\(4) & \eth_top_i|eth_rx_ram_i|addr_out_r\(3) & \eth_top_i|eth_rx_ram_i|addr_out_r\(2)
& \eth_top_i|eth_rx_ram_i|addr_out_r\(1) & \eth_top_i|eth_rx_ram_i|addr_out_r\(0));

\eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|q_b\(3) <= \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);
\eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|q_b\(7) <= \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(1);
\eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|q_b\(11) <= \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(2);
\eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|q_b\(15) <= \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(3);

\ETH_RX_CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ETH_RX_CLK~input_o\);

\infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk\(0));

\ETH_TX_CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ETH_TX_CLK~input_o\);
\eth_top_i|eth_tx_i|ALT_INV_eth_tx_sm.st_send_crc~q\ <= NOT \eth_top_i|eth_tx_i|eth_tx_sm.st_send_crc~q\;
\eth_top_i|eth_tx_i|ALT_INV_eth_tx_sm.st_idle~q\ <= NOT \eth_top_i|eth_tx_i|eth_tx_sm.st_idle~q\;
\eth_top_i|eth_tx_i|ALT_INV_eth_tx_sm.st_reg_addr1~q\ <= NOT \eth_top_i|eth_tx_i|eth_tx_sm.st_reg_addr1~q\;
\eth_top_i|net_proc_i|ALT_INV_np_fsm.npf_caseComID~q\ <= NOT \eth_top_i|net_proc_i|np_fsm.npf_caseComID~q\;

-- Location: FF_X29_Y28_N3
\eth_top_i|eth_tx_i|nibble_cnt_r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|nibble_cnt_r[6]~3_combout\,
	asdata => \eth_top_i|eth_tx_i|Selector11~2_combout\,
	sload => \eth_top_i|eth_tx_i|ALT_INV_eth_tx_sm.st_reg_addr1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|nibble_cnt_r\(6));

-- Location: FF_X29_Y28_N7
\eth_top_i|eth_tx_i|nibble_cnt_r[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|nibble_cnt_r[8]~5_combout\,
	asdata => \eth_top_i|eth_tx_i|Selector9~2_combout\,
	sload => \eth_top_i|eth_tx_i|ALT_INV_eth_tx_sm.st_reg_addr1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|nibble_cnt_r\(8));

-- Location: FF_X29_Y28_N1
\eth_top_i|eth_tx_i|nibble_cnt_r[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|nibble_cnt_r[9]~6_combout\,
	asdata => \eth_top_i|eth_tx_i|Selector8~2_combout\,
	sload => \eth_top_i|eth_tx_i|ALT_INV_eth_tx_sm.st_reg_addr1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|nibble_cnt_r\(9));

-- Location: FF_X29_Y28_N19
\eth_top_i|eth_tx_i|nibble_cnt_r[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|nibble_cnt_r[10]~7_combout\,
	asdata => \eth_top_i|eth_tx_i|Selector7~2_combout\,
	sload => \eth_top_i|eth_tx_i|ALT_INV_eth_tx_sm.st_reg_addr1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|nibble_cnt_r\(10));

-- Location: FF_X30_Y28_N27
\eth_top_i|eth_tx_i|nibble_cnt_r[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|nibble_cnt_r[11]~8_combout\,
	asdata => \eth_top_i|eth_tx_i|Selector6~2_combout\,
	sload => \eth_top_i|eth_tx_i|ALT_INV_eth_tx_sm.st_reg_addr1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|nibble_cnt_r\(11));

-- Location: FF_X28_Y26_N19
\eth_top_i|net_proc_i|proto_len_r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|proto_len_r[5]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|proto_len_r\(5));

-- Location: FF_X28_Y28_N21
\eth_top_i|net_proc_i|ip_checksum_r[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|ip_checksum_r[11]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|ip_checksum_r\(11));

-- Location: FF_X28_Y28_N13
\eth_top_i|net_proc_i|ip_checksum_r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|ip_checksum_r[7]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|ip_checksum_r\(7));

-- Location: LCCOMB_X30_Y28_N6
\eth_top_i|eth_tx_i|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|Add1~6_combout\ = (\eth_top_i|eth_tx_i|nibble_cnt_r\(3) & (\eth_top_i|eth_tx_i|Add1~5\ & VCC)) # (!\eth_top_i|eth_tx_i|nibble_cnt_r\(3) & (!\eth_top_i|eth_tx_i|Add1~5\))
-- \eth_top_i|eth_tx_i|Add1~7\ = CARRY((!\eth_top_i|eth_tx_i|nibble_cnt_r\(3) & !\eth_top_i|eth_tx_i|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|eth_tx_i|nibble_cnt_r\(3),
	datad => VCC,
	cin => \eth_top_i|eth_tx_i|Add1~5\,
	combout => \eth_top_i|eth_tx_i|Add1~6_combout\,
	cout => \eth_top_i|eth_tx_i|Add1~7\);

-- Location: LCCOMB_X30_Y28_N8
\eth_top_i|eth_tx_i|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|Add1~8_combout\ = (\eth_top_i|eth_tx_i|nibble_cnt_r\(4) & ((GND) # (!\eth_top_i|eth_tx_i|Add1~7\))) # (!\eth_top_i|eth_tx_i|nibble_cnt_r\(4) & (\eth_top_i|eth_tx_i|Add1~7\ $ (GND)))
-- \eth_top_i|eth_tx_i|Add1~9\ = CARRY((\eth_top_i|eth_tx_i|nibble_cnt_r\(4)) # (!\eth_top_i|eth_tx_i|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|nibble_cnt_r\(4),
	datad => VCC,
	cin => \eth_top_i|eth_tx_i|Add1~7\,
	combout => \eth_top_i|eth_tx_i|Add1~8_combout\,
	cout => \eth_top_i|eth_tx_i|Add1~9\);

-- Location: LCCOMB_X29_Y28_N2
\eth_top_i|eth_tx_i|nibble_cnt_r[6]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|nibble_cnt_r[6]~3_combout\ = (\eth_top_i|eth_tx_i|current_bank_r~q\ & (\eth_top_i|net_proc_i|tx_bank_info_r[1][4]~q\)) # (!\eth_top_i|eth_tx_i|current_bank_r~q\ & ((\eth_top_i|net_proc_i|tx_bank_info_r[0][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|current_bank_r~q\,
	datab => \eth_top_i|net_proc_i|tx_bank_info_r[1][4]~q\,
	datad => \eth_top_i|net_proc_i|tx_bank_info_r[0][4]~q\,
	combout => \eth_top_i|eth_tx_i|nibble_cnt_r[6]~3_combout\);

-- Location: LCCOMB_X30_Y28_N12
\eth_top_i|eth_tx_i|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|Add1~12_combout\ = (\eth_top_i|eth_tx_i|nibble_cnt_r\(6) & ((GND) # (!\eth_top_i|eth_tx_i|Add1~11\))) # (!\eth_top_i|eth_tx_i|nibble_cnt_r\(6) & (\eth_top_i|eth_tx_i|Add1~11\ $ (GND)))
-- \eth_top_i|eth_tx_i|Add1~13\ = CARRY((\eth_top_i|eth_tx_i|nibble_cnt_r\(6)) # (!\eth_top_i|eth_tx_i|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|nibble_cnt_r\(6),
	datad => VCC,
	cin => \eth_top_i|eth_tx_i|Add1~11\,
	combout => \eth_top_i|eth_tx_i|Add1~12_combout\,
	cout => \eth_top_i|eth_tx_i|Add1~13\);

-- Location: LCCOMB_X30_Y28_N14
\eth_top_i|eth_tx_i|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|Add1~14_combout\ = (\eth_top_i|eth_tx_i|nibble_cnt_r\(7) & (\eth_top_i|eth_tx_i|Add1~13\ & VCC)) # (!\eth_top_i|eth_tx_i|nibble_cnt_r\(7) & (!\eth_top_i|eth_tx_i|Add1~13\))
-- \eth_top_i|eth_tx_i|Add1~15\ = CARRY((!\eth_top_i|eth_tx_i|nibble_cnt_r\(7) & !\eth_top_i|eth_tx_i|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|eth_tx_i|nibble_cnt_r\(7),
	datad => VCC,
	cin => \eth_top_i|eth_tx_i|Add1~13\,
	combout => \eth_top_i|eth_tx_i|Add1~14_combout\,
	cout => \eth_top_i|eth_tx_i|Add1~15\);

-- Location: LCCOMB_X29_Y28_N6
\eth_top_i|eth_tx_i|nibble_cnt_r[8]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|nibble_cnt_r[8]~5_combout\ = (\eth_top_i|eth_tx_i|current_bank_r~q\ & ((\eth_top_i|net_proc_i|tx_bank_info_r[1][6]~q\))) # (!\eth_top_i|eth_tx_i|current_bank_r~q\ & (\eth_top_i|net_proc_i|tx_bank_info_r[0][6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|current_bank_r~q\,
	datab => \eth_top_i|net_proc_i|tx_bank_info_r[0][6]~q\,
	datad => \eth_top_i|net_proc_i|tx_bank_info_r[1][6]~q\,
	combout => \eth_top_i|eth_tx_i|nibble_cnt_r[8]~5_combout\);

-- Location: LCCOMB_X30_Y28_N16
\eth_top_i|eth_tx_i|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|Add1~16_combout\ = (\eth_top_i|eth_tx_i|nibble_cnt_r\(8) & ((GND) # (!\eth_top_i|eth_tx_i|Add1~15\))) # (!\eth_top_i|eth_tx_i|nibble_cnt_r\(8) & (\eth_top_i|eth_tx_i|Add1~15\ $ (GND)))
-- \eth_top_i|eth_tx_i|Add1~17\ = CARRY((\eth_top_i|eth_tx_i|nibble_cnt_r\(8)) # (!\eth_top_i|eth_tx_i|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|eth_tx_i|nibble_cnt_r\(8),
	datad => VCC,
	cin => \eth_top_i|eth_tx_i|Add1~15\,
	combout => \eth_top_i|eth_tx_i|Add1~16_combout\,
	cout => \eth_top_i|eth_tx_i|Add1~17\);

-- Location: LCCOMB_X29_Y28_N0
\eth_top_i|eth_tx_i|nibble_cnt_r[9]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|nibble_cnt_r[9]~6_combout\ = (\eth_top_i|eth_tx_i|current_bank_r~q\ & (\eth_top_i|net_proc_i|tx_bank_info_r[1][7]~q\)) # (!\eth_top_i|eth_tx_i|current_bank_r~q\ & ((\eth_top_i|net_proc_i|tx_bank_info_r[0][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|current_bank_r~q\,
	datab => \eth_top_i|net_proc_i|tx_bank_info_r[1][7]~q\,
	datad => \eth_top_i|net_proc_i|tx_bank_info_r[0][7]~q\,
	combout => \eth_top_i|eth_tx_i|nibble_cnt_r[9]~6_combout\);

-- Location: LCCOMB_X30_Y28_N18
\eth_top_i|eth_tx_i|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|Add1~18_combout\ = (\eth_top_i|eth_tx_i|nibble_cnt_r\(9) & (\eth_top_i|eth_tx_i|Add1~17\ & VCC)) # (!\eth_top_i|eth_tx_i|nibble_cnt_r\(9) & (!\eth_top_i|eth_tx_i|Add1~17\))
-- \eth_top_i|eth_tx_i|Add1~19\ = CARRY((!\eth_top_i|eth_tx_i|nibble_cnt_r\(9) & !\eth_top_i|eth_tx_i|Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|nibble_cnt_r\(9),
	datad => VCC,
	cin => \eth_top_i|eth_tx_i|Add1~17\,
	combout => \eth_top_i|eth_tx_i|Add1~18_combout\,
	cout => \eth_top_i|eth_tx_i|Add1~19\);

-- Location: LCCOMB_X29_Y28_N18
\eth_top_i|eth_tx_i|nibble_cnt_r[10]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|nibble_cnt_r[10]~7_combout\ = (\eth_top_i|eth_tx_i|current_bank_r~q\ & ((\eth_top_i|net_proc_i|tx_bank_info_r[1][8]~q\))) # (!\eth_top_i|eth_tx_i|current_bank_r~q\ & (\eth_top_i|net_proc_i|tx_bank_info_r[0][8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|current_bank_r~q\,
	datab => \eth_top_i|net_proc_i|tx_bank_info_r[0][8]~q\,
	datad => \eth_top_i|net_proc_i|tx_bank_info_r[1][8]~q\,
	combout => \eth_top_i|eth_tx_i|nibble_cnt_r[10]~7_combout\);

-- Location: LCCOMB_X30_Y28_N20
\eth_top_i|eth_tx_i|Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|Add1~20_combout\ = (\eth_top_i|eth_tx_i|nibble_cnt_r\(10) & ((GND) # (!\eth_top_i|eth_tx_i|Add1~19\))) # (!\eth_top_i|eth_tx_i|nibble_cnt_r\(10) & (\eth_top_i|eth_tx_i|Add1~19\ $ (GND)))
-- \eth_top_i|eth_tx_i|Add1~21\ = CARRY((\eth_top_i|eth_tx_i|nibble_cnt_r\(10)) # (!\eth_top_i|eth_tx_i|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|eth_tx_i|nibble_cnt_r\(10),
	datad => VCC,
	cin => \eth_top_i|eth_tx_i|Add1~19\,
	combout => \eth_top_i|eth_tx_i|Add1~20_combout\,
	cout => \eth_top_i|eth_tx_i|Add1~21\);

-- Location: LCCOMB_X30_Y28_N26
\eth_top_i|eth_tx_i|nibble_cnt_r[11]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|nibble_cnt_r[11]~8_combout\ = (\eth_top_i|eth_tx_i|current_bank_r~q\ & (\eth_top_i|net_proc_i|tx_bank_info_r[1][9]~q\)) # (!\eth_top_i|eth_tx_i|current_bank_r~q\ & ((\eth_top_i|net_proc_i|tx_bank_info_r[0][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|tx_bank_info_r[1][9]~q\,
	datab => \eth_top_i|net_proc_i|tx_bank_info_r[0][9]~q\,
	datad => \eth_top_i|eth_tx_i|current_bank_r~q\,
	combout => \eth_top_i|eth_tx_i|nibble_cnt_r[11]~8_combout\);

-- Location: LCCOMB_X30_Y28_N22
\eth_top_i|eth_tx_i|Add1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|Add1~22_combout\ = \eth_top_i|eth_tx_i|nibble_cnt_r\(11) $ (!\eth_top_i|eth_tx_i|Add1~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|nibble_cnt_r\(11),
	cin => \eth_top_i|eth_tx_i|Add1~21\,
	combout => \eth_top_i|eth_tx_i|Add1~22_combout\);

-- Location: LCCOMB_X27_Y27_N10
\eth_top_i|net_proc_i|Add7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add7~4_combout\ = (\eth_top_i|net_proc_i|info_words[0][2]~q\ & ((GND) # (!\eth_top_i|net_proc_i|Add7~3\))) # (!\eth_top_i|net_proc_i|info_words[0][2]~q\ & (\eth_top_i|net_proc_i|Add7~3\ $ (GND)))
-- \eth_top_i|net_proc_i|Add7~5\ = CARRY((\eth_top_i|net_proc_i|info_words[0][2]~q\) # (!\eth_top_i|net_proc_i|Add7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|info_words[0][2]~q\,
	datad => VCC,
	cin => \eth_top_i|net_proc_i|Add7~3\,
	combout => \eth_top_i|net_proc_i|Add7~4_combout\,
	cout => \eth_top_i|net_proc_i|Add7~5\);

-- Location: LCCOMB_X27_Y27_N14
\eth_top_i|net_proc_i|Add7~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add7~8_combout\ = (\eth_top_i|net_proc_i|info_words[0][4]~q\ & ((GND) # (!\eth_top_i|net_proc_i|Add7~7\))) # (!\eth_top_i|net_proc_i|info_words[0][4]~q\ & (\eth_top_i|net_proc_i|Add7~7\ $ (GND)))
-- \eth_top_i|net_proc_i|Add7~9\ = CARRY((\eth_top_i|net_proc_i|info_words[0][4]~q\) # (!\eth_top_i|net_proc_i|Add7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|info_words[0][4]~q\,
	datad => VCC,
	cin => \eth_top_i|net_proc_i|Add7~7\,
	combout => \eth_top_i|net_proc_i|Add7~8_combout\,
	cout => \eth_top_i|net_proc_i|Add7~9\);

-- Location: LCCOMB_X28_Y26_N18
\eth_top_i|net_proc_i|proto_len_r[5]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|proto_len_r[5]~19_combout\ = ((\eth_top_i|net_proc_i|tx_len_r\(4) $ (\eth_top_i|net_proc_i|sys_data_base_r\(3) $ (!\eth_top_i|net_proc_i|proto_len_r[4]~18\)))) # (GND)
-- \eth_top_i|net_proc_i|proto_len_r[5]~20\ = CARRY((\eth_top_i|net_proc_i|tx_len_r\(4) & ((\eth_top_i|net_proc_i|sys_data_base_r\(3)) # (!\eth_top_i|net_proc_i|proto_len_r[4]~18\))) # (!\eth_top_i|net_proc_i|tx_len_r\(4) & 
-- (\eth_top_i|net_proc_i|sys_data_base_r\(3) & !\eth_top_i|net_proc_i|proto_len_r[4]~18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|tx_len_r\(4),
	datab => \eth_top_i|net_proc_i|sys_data_base_r\(3),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|proto_len_r[4]~18\,
	combout => \eth_top_i|net_proc_i|proto_len_r[5]~19_combout\,
	cout => \eth_top_i|net_proc_i|proto_len_r[5]~20\);

-- Location: LCCOMB_X28_Y28_N12
\eth_top_i|net_proc_i|ip_checksum_r[7]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|ip_checksum_r[7]~15_combout\ = (\eth_top_i|net_proc_i|proto_len_r\(7) & (!\eth_top_i|net_proc_i|ip_checksum_r[6]~14\ & VCC)) # (!\eth_top_i|net_proc_i|proto_len_r\(7) & (\eth_top_i|net_proc_i|ip_checksum_r[6]~14\ $ (GND)))
-- \eth_top_i|net_proc_i|ip_checksum_r[7]~16\ = CARRY((!\eth_top_i|net_proc_i|proto_len_r\(7) & !\eth_top_i|net_proc_i|ip_checksum_r[6]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|proto_len_r\(7),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|ip_checksum_r[6]~14\,
	combout => \eth_top_i|net_proc_i|ip_checksum_r[7]~15_combout\,
	cout => \eth_top_i|net_proc_i|ip_checksum_r[7]~16\);

-- Location: LCCOMB_X28_Y28_N20
\eth_top_i|net_proc_i|ip_checksum_r[11]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|ip_checksum_r[11]~23_combout\ = (\eth_top_i|net_proc_i|proto_len_r\(11) & (\eth_top_i|net_proc_i|ip_checksum_r[10]~22\ $ (GND))) # (!\eth_top_i|net_proc_i|proto_len_r\(11) & ((GND) # (!\eth_top_i|net_proc_i|ip_checksum_r[10]~22\)))
-- \eth_top_i|net_proc_i|ip_checksum_r[11]~24\ = CARRY((!\eth_top_i|net_proc_i|ip_checksum_r[10]~22\) # (!\eth_top_i|net_proc_i|proto_len_r\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|proto_len_r\(11),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|ip_checksum_r[10]~22\,
	combout => \eth_top_i|net_proc_i|ip_checksum_r[11]~23_combout\,
	cout => \eth_top_i|net_proc_i|ip_checksum_r[11]~24\);

-- Location: LCCOMB_X25_Y25_N8
\eth_top_i|net_proc_i|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add3~2_combout\ = (\eth_top_i|net_proc_i|tx_ram_addr_r\(1) & (!\eth_top_i|net_proc_i|Add3~1\)) # (!\eth_top_i|net_proc_i|tx_ram_addr_r\(1) & ((\eth_top_i|net_proc_i|Add3~1\) # (GND)))
-- \eth_top_i|net_proc_i|Add3~3\ = CARRY((!\eth_top_i|net_proc_i|Add3~1\) # (!\eth_top_i|net_proc_i|tx_ram_addr_r\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|tx_ram_addr_r\(1),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|Add3~1\,
	combout => \eth_top_i|net_proc_i|Add3~2_combout\,
	cout => \eth_top_i|net_proc_i|Add3~3\);

-- Location: LCCOMB_X25_Y25_N10
\eth_top_i|net_proc_i|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add3~4_combout\ = (\eth_top_i|net_proc_i|tx_ram_addr_r\(2) & (\eth_top_i|net_proc_i|Add3~3\ $ (GND))) # (!\eth_top_i|net_proc_i|tx_ram_addr_r\(2) & (!\eth_top_i|net_proc_i|Add3~3\ & VCC))
-- \eth_top_i|net_proc_i|Add3~5\ = CARRY((\eth_top_i|net_proc_i|tx_ram_addr_r\(2) & !\eth_top_i|net_proc_i|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|tx_ram_addr_r\(2),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|Add3~3\,
	combout => \eth_top_i|net_proc_i|Add3~4_combout\,
	cout => \eth_top_i|net_proc_i|Add3~5\);

-- Location: LCCOMB_X29_Y27_N2
\eth_top_i|net_proc_i|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add2~2_combout\ = (\eth_top_i|net_proc_i|tx_ram_cnt_r\(1) & (\eth_top_i|net_proc_i|Add2~1\ & VCC)) # (!\eth_top_i|net_proc_i|tx_ram_cnt_r\(1) & (!\eth_top_i|net_proc_i|Add2~1\))
-- \eth_top_i|net_proc_i|Add2~3\ = CARRY((!\eth_top_i|net_proc_i|tx_ram_cnt_r\(1) & !\eth_top_i|net_proc_i|Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|tx_ram_cnt_r\(1),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|Add2~1\,
	combout => \eth_top_i|net_proc_i|Add2~2_combout\,
	cout => \eth_top_i|net_proc_i|Add2~3\);

-- Location: LCCOMB_X29_Y27_N4
\eth_top_i|net_proc_i|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add2~4_combout\ = (\eth_top_i|net_proc_i|tx_ram_cnt_r\(2) & ((GND) # (!\eth_top_i|net_proc_i|Add2~3\))) # (!\eth_top_i|net_proc_i|tx_ram_cnt_r\(2) & (\eth_top_i|net_proc_i|Add2~3\ $ (GND)))
-- \eth_top_i|net_proc_i|Add2~5\ = CARRY((\eth_top_i|net_proc_i|tx_ram_cnt_r\(2)) # (!\eth_top_i|net_proc_i|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|tx_ram_cnt_r\(2),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|Add2~3\,
	combout => \eth_top_i|net_proc_i|Add2~4_combout\,
	cout => \eth_top_i|net_proc_i|Add2~5\);

-- Location: LCCOMB_X29_Y27_N16
\eth_top_i|net_proc_i|Add2~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add2~21_combout\ = (\eth_top_i|net_proc_i|tx_ram_cnt_r\(8) & ((GND) # (!\eth_top_i|net_proc_i|Add2~19\))) # (!\eth_top_i|net_proc_i|tx_ram_cnt_r\(8) & (\eth_top_i|net_proc_i|Add2~19\ $ (GND)))
-- \eth_top_i|net_proc_i|Add2~22\ = CARRY((\eth_top_i|net_proc_i|tx_ram_cnt_r\(8)) # (!\eth_top_i|net_proc_i|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|tx_ram_cnt_r\(8),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|Add2~19\,
	combout => \eth_top_i|net_proc_i|Add2~21_combout\,
	cout => \eth_top_i|net_proc_i|Add2~22\);

-- Location: LCCOMB_X29_Y27_N18
\eth_top_i|net_proc_i|Add2~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add2~24_combout\ = \eth_top_i|net_proc_i|Add2~22\ $ (!\eth_top_i|net_proc_i|tx_ram_cnt_r\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|net_proc_i|tx_ram_cnt_r\(9),
	cin => \eth_top_i|net_proc_i|Add2~22\,
	combout => \eth_top_i|net_proc_i|Add2~24_combout\);

-- Location: LCCOMB_X23_Y28_N8
\eth_top_i|net_proc_i|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add0~0_combout\ = \eth_top_i|net_proc_i|rx_ram_cnt_r\(0) $ (VCC)
-- \eth_top_i|net_proc_i|Add0~1\ = CARRY(\eth_top_i|net_proc_i|rx_ram_cnt_r\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|rx_ram_cnt_r\(0),
	datad => VCC,
	combout => \eth_top_i|net_proc_i|Add0~0_combout\,
	cout => \eth_top_i|net_proc_i|Add0~1\);

-- Location: LCCOMB_X23_Y28_N10
\eth_top_i|net_proc_i|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add0~2_combout\ = (\eth_top_i|net_proc_i|rx_ram_cnt_r\(1) & (\eth_top_i|net_proc_i|Add0~1\ & VCC)) # (!\eth_top_i|net_proc_i|rx_ram_cnt_r\(1) & (!\eth_top_i|net_proc_i|Add0~1\))
-- \eth_top_i|net_proc_i|Add0~3\ = CARRY((!\eth_top_i|net_proc_i|rx_ram_cnt_r\(1) & !\eth_top_i|net_proc_i|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|rx_ram_cnt_r\(1),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|Add0~1\,
	combout => \eth_top_i|net_proc_i|Add0~2_combout\,
	cout => \eth_top_i|net_proc_i|Add0~3\);

-- Location: LCCOMB_X23_Y28_N12
\eth_top_i|net_proc_i|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add0~4_combout\ = (\eth_top_i|net_proc_i|rx_ram_cnt_r\(2) & ((GND) # (!\eth_top_i|net_proc_i|Add0~3\))) # (!\eth_top_i|net_proc_i|rx_ram_cnt_r\(2) & (\eth_top_i|net_proc_i|Add0~3\ $ (GND)))
-- \eth_top_i|net_proc_i|Add0~5\ = CARRY((\eth_top_i|net_proc_i|rx_ram_cnt_r\(2)) # (!\eth_top_i|net_proc_i|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|rx_ram_cnt_r\(2),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|Add0~3\,
	combout => \eth_top_i|net_proc_i|Add0~4_combout\,
	cout => \eth_top_i|net_proc_i|Add0~5\);

-- Location: LCCOMB_X23_Y28_N14
\eth_top_i|net_proc_i|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add0~6_combout\ = (\eth_top_i|net_proc_i|rx_ram_cnt_r\(3) & (\eth_top_i|net_proc_i|Add0~5\ & VCC)) # (!\eth_top_i|net_proc_i|rx_ram_cnt_r\(3) & (!\eth_top_i|net_proc_i|Add0~5\))
-- \eth_top_i|net_proc_i|Add0~7\ = CARRY((!\eth_top_i|net_proc_i|rx_ram_cnt_r\(3) & !\eth_top_i|net_proc_i|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|rx_ram_cnt_r\(3),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|Add0~5\,
	combout => \eth_top_i|net_proc_i|Add0~6_combout\,
	cout => \eth_top_i|net_proc_i|Add0~7\);

-- Location: LCCOMB_X23_Y28_N24
\eth_top_i|net_proc_i|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add0~16_combout\ = (\eth_top_i|net_proc_i|rx_ram_cnt_r\(8) & ((GND) # (!\eth_top_i|net_proc_i|Add0~15\))) # (!\eth_top_i|net_proc_i|rx_ram_cnt_r\(8) & (\eth_top_i|net_proc_i|Add0~15\ $ (GND)))
-- \eth_top_i|net_proc_i|Add0~17\ = CARRY((\eth_top_i|net_proc_i|rx_ram_cnt_r\(8)) # (!\eth_top_i|net_proc_i|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|rx_ram_cnt_r\(8),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|Add0~15\,
	combout => \eth_top_i|net_proc_i|Add0~16_combout\,
	cout => \eth_top_i|net_proc_i|Add0~17\);

-- Location: LCCOMB_X23_Y28_N26
\eth_top_i|net_proc_i|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add0~18_combout\ = \eth_top_i|net_proc_i|Add0~17\ $ (!\eth_top_i|net_proc_i|rx_ram_cnt_r\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|net_proc_i|rx_ram_cnt_r\(9),
	cin => \eth_top_i|net_proc_i|Add0~17\,
	combout => \eth_top_i|net_proc_i|Add0~18_combout\);

-- Location: FF_X48_Y17_N7
\eth_top_i|eth_rx_i|crc32nibble_i|crc_r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~20_combout\,
	sclr => \eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(6));

-- Location: FF_X46_Y17_N17
\eth_top_i|eth_rx_i|crc32nibble_i|crc_r[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~39_combout\,
	sclr => \eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(24));

-- Location: LCCOMB_X21_Y27_N12
\eth_top_i|net_proc_i|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add1~2_combout\ = (\eth_top_i|net_proc_i|rx_ram_addr_r\(1) & (!\eth_top_i|net_proc_i|Add1~1\)) # (!\eth_top_i|net_proc_i|rx_ram_addr_r\(1) & ((\eth_top_i|net_proc_i|Add1~1\) # (GND)))
-- \eth_top_i|net_proc_i|Add1~3\ = CARRY((!\eth_top_i|net_proc_i|Add1~1\) # (!\eth_top_i|net_proc_i|rx_ram_addr_r\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|rx_ram_addr_r\(1),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|Add1~1\,
	combout => \eth_top_i|net_proc_i|Add1~2_combout\,
	cout => \eth_top_i|net_proc_i|Add1~3\);

-- Location: FF_X26_Y31_N9
\eth_top_i|net_proc_i|mem_addr_r[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|mem_addr_r[20]~72_combout\,
	asdata => \eth_top_i|net_proc_i|info_words[1][4]~q\,
	sload => \eth_top_i|net_proc_i|mem_addr_r~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|mem_addr_r\(20));

-- Location: FF_X26_Y32_N19
\eth_top_i|net_proc_i|mem_addr_r[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|mem_addr_r[9]~50_combout\,
	asdata => \eth_top_i|net_proc_i|info_words[2][9]~q\,
	sload => \eth_top_i|net_proc_i|mem_addr_r~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|mem_addr_r\(9));

-- Location: FF_X26_Y32_N21
\eth_top_i|net_proc_i|mem_addr_r[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|mem_addr_r[10]~52_combout\,
	asdata => \eth_top_i|net_proc_i|info_words[2][10]~q\,
	sload => \eth_top_i|net_proc_i|mem_addr_r~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|mem_addr_r\(10));

-- Location: FF_X26_Y32_N23
\eth_top_i|net_proc_i|mem_addr_r[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|mem_addr_r[11]~54_combout\,
	asdata => \eth_top_i|net_proc_i|info_words[2][11]~q\,
	sload => \eth_top_i|net_proc_i|mem_addr_r~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|mem_addr_r\(11));

-- Location: FF_X26_Y31_N11
\eth_top_i|net_proc_i|mem_addr_r[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|mem_addr_r[21]~75_combout\,
	asdata => \eth_top_i|net_proc_i|info_words[1][5]~q\,
	sload => \eth_top_i|net_proc_i|mem_addr_r~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|mem_addr_r\(21));

-- Location: FF_X26_Y31_N1
\eth_top_i|net_proc_i|mem_addr_r[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|mem_addr_r[16]~64_combout\,
	asdata => \eth_top_i|net_proc_i|info_words[1][0]~q\,
	sload => \eth_top_i|net_proc_i|mem_addr_r~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|mem_addr_r\(16));

-- Location: FF_X26_Y31_N3
\eth_top_i|net_proc_i|mem_addr_r[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|mem_addr_r[17]~66_combout\,
	asdata => \eth_top_i|net_proc_i|info_words[1][1]~q\,
	sload => \eth_top_i|net_proc_i|mem_addr_r~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|mem_addr_r\(17));

-- Location: FF_X26_Y31_N5
\eth_top_i|net_proc_i|mem_addr_r[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|mem_addr_r[18]~68_combout\,
	asdata => \eth_top_i|net_proc_i|info_words[1][2]~q\,
	sload => \eth_top_i|net_proc_i|mem_addr_r~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|mem_addr_r\(18));

-- Location: FF_X26_Y32_N25
\eth_top_i|net_proc_i|mem_addr_r[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|mem_addr_r[12]~56_combout\,
	asdata => \eth_top_i|net_proc_i|info_words[2][12]~q\,
	sload => \eth_top_i|net_proc_i|mem_addr_r~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|mem_addr_r\(12));

-- Location: FF_X26_Y32_N27
\eth_top_i|net_proc_i|mem_addr_r[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|mem_addr_r[13]~58_combout\,
	asdata => \eth_top_i|net_proc_i|info_words[2][13]~q\,
	sload => \eth_top_i|net_proc_i|mem_addr_r~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|mem_addr_r\(13));

-- Location: FF_X26_Y32_N29
\eth_top_i|net_proc_i|mem_addr_r[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|mem_addr_r[14]~60_combout\,
	asdata => \eth_top_i|net_proc_i|info_words[2][14]~q\,
	sload => \eth_top_i|net_proc_i|mem_addr_r~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|mem_addr_r\(14));

-- Location: FF_X26_Y32_N31
\eth_top_i|net_proc_i|mem_addr_r[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|mem_addr_r[15]~62_combout\,
	asdata => \eth_top_i|net_proc_i|info_words[2][15]~q\,
	sload => \eth_top_i|net_proc_i|mem_addr_r~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|mem_addr_r\(15));

-- Location: FF_X26_Y31_N7
\eth_top_i|net_proc_i|mem_addr_r[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|mem_addr_r[19]~70_combout\,
	asdata => \eth_top_i|net_proc_i|info_words[1][3]~q\,
	sload => \eth_top_i|net_proc_i|mem_addr_r~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|mem_addr_r\(19));

-- Location: FF_X26_Y31_N13
\eth_top_i|net_proc_i|mem_addr_r[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|mem_addr_r[22]~77_combout\,
	asdata => \eth_top_i|net_proc_i|info_words[1][6]~q\,
	sload => \eth_top_i|net_proc_i|mem_addr_r~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|mem_addr_r\(22));

-- Location: FF_X26_Y31_N15
\eth_top_i|net_proc_i|mem_addr_r[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|mem_addr_r[23]~79_combout\,
	asdata => \eth_top_i|net_proc_i|info_words[1][7]~q\,
	sload => \eth_top_i|net_proc_i|mem_addr_r~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|mem_addr_r\(23));

-- Location: FF_X26_Y31_N17
\eth_top_i|net_proc_i|mem_addr_r[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|mem_addr_r[24]~81_combout\,
	asdata => \eth_top_i|net_proc_i|info_words[1][8]~q\,
	sload => \eth_top_i|net_proc_i|mem_addr_r~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|mem_addr_r\(24));

-- Location: FF_X26_Y31_N19
\eth_top_i|net_proc_i|mem_addr_r[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|mem_addr_r[25]~83_combout\,
	asdata => \eth_top_i|net_proc_i|info_words[1][9]~q\,
	sload => \eth_top_i|net_proc_i|mem_addr_r~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|mem_addr_r\(25));

-- Location: FF_X26_Y31_N21
\eth_top_i|net_proc_i|mem_addr_r[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|mem_addr_r[26]~85_combout\,
	asdata => \eth_top_i|net_proc_i|info_words[1][10]~q\,
	sload => \eth_top_i|net_proc_i|mem_addr_r~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|mem_addr_r\(26));

-- Location: FF_X26_Y31_N23
\eth_top_i|net_proc_i|mem_addr_r[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|mem_addr_r[27]~87_combout\,
	asdata => \eth_top_i|net_proc_i|info_words[1][11]~q\,
	sload => \eth_top_i|net_proc_i|mem_addr_r~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|mem_addr_r\(27));

-- Location: FF_X26_Y31_N25
\eth_top_i|net_proc_i|mem_addr_r[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|mem_addr_r[28]~89_combout\,
	asdata => \eth_top_i|net_proc_i|info_words[1][12]~q\,
	sload => \eth_top_i|net_proc_i|mem_addr_r~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|mem_addr_r\(28));

-- Location: FF_X26_Y31_N27
\eth_top_i|net_proc_i|mem_addr_r[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|mem_addr_r[29]~91_combout\,
	asdata => \eth_top_i|net_proc_i|info_words[1][13]~q\,
	sload => \eth_top_i|net_proc_i|mem_addr_r~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|mem_addr_r\(29));

-- Location: FF_X26_Y31_N29
\eth_top_i|net_proc_i|mem_addr_r[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|mem_addr_r[30]~93_combout\,
	asdata => \eth_top_i|net_proc_i|info_words[1][14]~q\,
	sload => \eth_top_i|net_proc_i|mem_addr_r~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|mem_addr_r\(30));

-- Location: FF_X26_Y31_N31
\eth_top_i|net_proc_i|mem_addr_r[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|mem_addr_r[31]~95_combout\,
	asdata => \eth_top_i|net_proc_i|info_words[1][15]~q\,
	sload => \eth_top_i|net_proc_i|mem_addr_r~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|mem_addr_r\(31));

-- Location: FF_X26_Y32_N17
\eth_top_i|net_proc_i|mem_addr_r[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|mem_addr_r[8]~48_combout\,
	asdata => \eth_top_i|net_proc_i|info_words[2][8]~q\,
	sload => \eth_top_i|net_proc_i|mem_addr_r~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|mem_addr_r\(8));

-- Location: FF_X26_Y32_N15
\eth_top_i|net_proc_i|mem_addr_r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|mem_addr_r[7]~46_combout\,
	asdata => \eth_top_i|net_proc_i|info_words[2][7]~q\,
	sload => \eth_top_i|net_proc_i|mem_addr_r~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|mem_addr_r\(7));

-- Location: FF_X26_Y32_N13
\eth_top_i|net_proc_i|mem_addr_r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|mem_addr_r[6]~44_combout\,
	asdata => \eth_top_i|net_proc_i|info_words[2][6]~q\,
	sload => \eth_top_i|net_proc_i|mem_addr_r~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|mem_addr_r\(6));

-- Location: FF_X26_Y32_N11
\eth_top_i|net_proc_i|mem_addr_r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|mem_addr_r[5]~42_combout\,
	asdata => \eth_top_i|net_proc_i|info_words[2][5]~q\,
	sload => \eth_top_i|net_proc_i|mem_addr_r~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|mem_addr_r\(5));

-- Location: FF_X26_Y32_N9
\eth_top_i|net_proc_i|mem_addr_r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|mem_addr_r[4]~40_combout\,
	asdata => \eth_top_i|net_proc_i|info_words[2][4]~q\,
	sload => \eth_top_i|net_proc_i|mem_addr_r~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|mem_addr_r\(4));

-- Location: FF_X26_Y32_N7
\eth_top_i|net_proc_i|mem_addr_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|mem_addr_r[3]~38_combout\,
	asdata => \eth_top_i|net_proc_i|info_words[2][3]~q\,
	sload => \eth_top_i|net_proc_i|mem_addr_r~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|mem_addr_r\(3));

-- Location: FF_X26_Y32_N5
\eth_top_i|net_proc_i|mem_addr_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|mem_addr_r[2]~36_combout\,
	asdata => \eth_top_i|net_proc_i|info_words[2][2]~q\,
	sload => \eth_top_i|net_proc_i|mem_addr_r~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|mem_addr_r\(2));

-- Location: FF_X26_Y32_N3
\eth_top_i|net_proc_i|mem_addr_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|mem_addr_r[1]~34_combout\,
	asdata => \eth_top_i|net_proc_i|info_words[2][1]~q\,
	sload => \eth_top_i|net_proc_i|mem_addr_r~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|mem_addr_r\(1));

-- Location: FF_X26_Y32_N1
\eth_top_i|net_proc_i|mem_addr_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|mem_addr_r[0]~32_combout\,
	asdata => \eth_top_i|net_proc_i|info_words[2][0]~q\,
	sload => \eth_top_i|net_proc_i|mem_addr_r~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|mem_addr_r\(0));

-- Location: LCCOMB_X26_Y32_N0
\eth_top_i|net_proc_i|mem_addr_r[0]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|mem_addr_r[0]~32_combout\ = \eth_top_i|net_proc_i|mem_addr_r\(0) $ (VCC)
-- \eth_top_i|net_proc_i|mem_addr_r[0]~33\ = CARRY(\eth_top_i|net_proc_i|mem_addr_r\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|mem_addr_r\(0),
	datad => VCC,
	combout => \eth_top_i|net_proc_i|mem_addr_r[0]~32_combout\,
	cout => \eth_top_i|net_proc_i|mem_addr_r[0]~33\);

-- Location: LCCOMB_X26_Y32_N2
\eth_top_i|net_proc_i|mem_addr_r[1]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|mem_addr_r[1]~34_combout\ = (\eth_top_i|net_proc_i|mem_addr_r\(1) & (!\eth_top_i|net_proc_i|mem_addr_r[0]~33\)) # (!\eth_top_i|net_proc_i|mem_addr_r\(1) & ((\eth_top_i|net_proc_i|mem_addr_r[0]~33\) # (GND)))
-- \eth_top_i|net_proc_i|mem_addr_r[1]~35\ = CARRY((!\eth_top_i|net_proc_i|mem_addr_r[0]~33\) # (!\eth_top_i|net_proc_i|mem_addr_r\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|mem_addr_r\(1),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|mem_addr_r[0]~33\,
	combout => \eth_top_i|net_proc_i|mem_addr_r[1]~34_combout\,
	cout => \eth_top_i|net_proc_i|mem_addr_r[1]~35\);

-- Location: LCCOMB_X26_Y32_N4
\eth_top_i|net_proc_i|mem_addr_r[2]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|mem_addr_r[2]~36_combout\ = (\eth_top_i|net_proc_i|mem_addr_r\(2) & (\eth_top_i|net_proc_i|mem_addr_r[1]~35\ $ (GND))) # (!\eth_top_i|net_proc_i|mem_addr_r\(2) & (!\eth_top_i|net_proc_i|mem_addr_r[1]~35\ & VCC))
-- \eth_top_i|net_proc_i|mem_addr_r[2]~37\ = CARRY((\eth_top_i|net_proc_i|mem_addr_r\(2) & !\eth_top_i|net_proc_i|mem_addr_r[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|mem_addr_r\(2),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|mem_addr_r[1]~35\,
	combout => \eth_top_i|net_proc_i|mem_addr_r[2]~36_combout\,
	cout => \eth_top_i|net_proc_i|mem_addr_r[2]~37\);

-- Location: LCCOMB_X26_Y32_N6
\eth_top_i|net_proc_i|mem_addr_r[3]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|mem_addr_r[3]~38_combout\ = (\eth_top_i|net_proc_i|mem_addr_r\(3) & (!\eth_top_i|net_proc_i|mem_addr_r[2]~37\)) # (!\eth_top_i|net_proc_i|mem_addr_r\(3) & ((\eth_top_i|net_proc_i|mem_addr_r[2]~37\) # (GND)))
-- \eth_top_i|net_proc_i|mem_addr_r[3]~39\ = CARRY((!\eth_top_i|net_proc_i|mem_addr_r[2]~37\) # (!\eth_top_i|net_proc_i|mem_addr_r\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|mem_addr_r\(3),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|mem_addr_r[2]~37\,
	combout => \eth_top_i|net_proc_i|mem_addr_r[3]~38_combout\,
	cout => \eth_top_i|net_proc_i|mem_addr_r[3]~39\);

-- Location: LCCOMB_X26_Y32_N8
\eth_top_i|net_proc_i|mem_addr_r[4]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|mem_addr_r[4]~40_combout\ = (\eth_top_i|net_proc_i|mem_addr_r\(4) & (\eth_top_i|net_proc_i|mem_addr_r[3]~39\ $ (GND))) # (!\eth_top_i|net_proc_i|mem_addr_r\(4) & (!\eth_top_i|net_proc_i|mem_addr_r[3]~39\ & VCC))
-- \eth_top_i|net_proc_i|mem_addr_r[4]~41\ = CARRY((\eth_top_i|net_proc_i|mem_addr_r\(4) & !\eth_top_i|net_proc_i|mem_addr_r[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|mem_addr_r\(4),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|mem_addr_r[3]~39\,
	combout => \eth_top_i|net_proc_i|mem_addr_r[4]~40_combout\,
	cout => \eth_top_i|net_proc_i|mem_addr_r[4]~41\);

-- Location: LCCOMB_X26_Y32_N10
\eth_top_i|net_proc_i|mem_addr_r[5]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|mem_addr_r[5]~42_combout\ = (\eth_top_i|net_proc_i|mem_addr_r\(5) & (!\eth_top_i|net_proc_i|mem_addr_r[4]~41\)) # (!\eth_top_i|net_proc_i|mem_addr_r\(5) & ((\eth_top_i|net_proc_i|mem_addr_r[4]~41\) # (GND)))
-- \eth_top_i|net_proc_i|mem_addr_r[5]~43\ = CARRY((!\eth_top_i|net_proc_i|mem_addr_r[4]~41\) # (!\eth_top_i|net_proc_i|mem_addr_r\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|mem_addr_r\(5),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|mem_addr_r[4]~41\,
	combout => \eth_top_i|net_proc_i|mem_addr_r[5]~42_combout\,
	cout => \eth_top_i|net_proc_i|mem_addr_r[5]~43\);

-- Location: LCCOMB_X26_Y32_N12
\eth_top_i|net_proc_i|mem_addr_r[6]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|mem_addr_r[6]~44_combout\ = (\eth_top_i|net_proc_i|mem_addr_r\(6) & (\eth_top_i|net_proc_i|mem_addr_r[5]~43\ $ (GND))) # (!\eth_top_i|net_proc_i|mem_addr_r\(6) & (!\eth_top_i|net_proc_i|mem_addr_r[5]~43\ & VCC))
-- \eth_top_i|net_proc_i|mem_addr_r[6]~45\ = CARRY((\eth_top_i|net_proc_i|mem_addr_r\(6) & !\eth_top_i|net_proc_i|mem_addr_r[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|mem_addr_r\(6),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|mem_addr_r[5]~43\,
	combout => \eth_top_i|net_proc_i|mem_addr_r[6]~44_combout\,
	cout => \eth_top_i|net_proc_i|mem_addr_r[6]~45\);

-- Location: LCCOMB_X26_Y32_N14
\eth_top_i|net_proc_i|mem_addr_r[7]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|mem_addr_r[7]~46_combout\ = (\eth_top_i|net_proc_i|mem_addr_r\(7) & (!\eth_top_i|net_proc_i|mem_addr_r[6]~45\)) # (!\eth_top_i|net_proc_i|mem_addr_r\(7) & ((\eth_top_i|net_proc_i|mem_addr_r[6]~45\) # (GND)))
-- \eth_top_i|net_proc_i|mem_addr_r[7]~47\ = CARRY((!\eth_top_i|net_proc_i|mem_addr_r[6]~45\) # (!\eth_top_i|net_proc_i|mem_addr_r\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|mem_addr_r\(7),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|mem_addr_r[6]~45\,
	combout => \eth_top_i|net_proc_i|mem_addr_r[7]~46_combout\,
	cout => \eth_top_i|net_proc_i|mem_addr_r[7]~47\);

-- Location: LCCOMB_X26_Y32_N16
\eth_top_i|net_proc_i|mem_addr_r[8]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|mem_addr_r[8]~48_combout\ = (\eth_top_i|net_proc_i|mem_addr_r\(8) & (\eth_top_i|net_proc_i|mem_addr_r[7]~47\ $ (GND))) # (!\eth_top_i|net_proc_i|mem_addr_r\(8) & (!\eth_top_i|net_proc_i|mem_addr_r[7]~47\ & VCC))
-- \eth_top_i|net_proc_i|mem_addr_r[8]~49\ = CARRY((\eth_top_i|net_proc_i|mem_addr_r\(8) & !\eth_top_i|net_proc_i|mem_addr_r[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|mem_addr_r\(8),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|mem_addr_r[7]~47\,
	combout => \eth_top_i|net_proc_i|mem_addr_r[8]~48_combout\,
	cout => \eth_top_i|net_proc_i|mem_addr_r[8]~49\);

-- Location: LCCOMB_X26_Y32_N18
\eth_top_i|net_proc_i|mem_addr_r[9]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|mem_addr_r[9]~50_combout\ = (\eth_top_i|net_proc_i|mem_addr_r\(9) & (!\eth_top_i|net_proc_i|mem_addr_r[8]~49\)) # (!\eth_top_i|net_proc_i|mem_addr_r\(9) & ((\eth_top_i|net_proc_i|mem_addr_r[8]~49\) # (GND)))
-- \eth_top_i|net_proc_i|mem_addr_r[9]~51\ = CARRY((!\eth_top_i|net_proc_i|mem_addr_r[8]~49\) # (!\eth_top_i|net_proc_i|mem_addr_r\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|mem_addr_r\(9),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|mem_addr_r[8]~49\,
	combout => \eth_top_i|net_proc_i|mem_addr_r[9]~50_combout\,
	cout => \eth_top_i|net_proc_i|mem_addr_r[9]~51\);

-- Location: LCCOMB_X26_Y32_N20
\eth_top_i|net_proc_i|mem_addr_r[10]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|mem_addr_r[10]~52_combout\ = (\eth_top_i|net_proc_i|mem_addr_r\(10) & (\eth_top_i|net_proc_i|mem_addr_r[9]~51\ $ (GND))) # (!\eth_top_i|net_proc_i|mem_addr_r\(10) & (!\eth_top_i|net_proc_i|mem_addr_r[9]~51\ & VCC))
-- \eth_top_i|net_proc_i|mem_addr_r[10]~53\ = CARRY((\eth_top_i|net_proc_i|mem_addr_r\(10) & !\eth_top_i|net_proc_i|mem_addr_r[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|mem_addr_r\(10),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|mem_addr_r[9]~51\,
	combout => \eth_top_i|net_proc_i|mem_addr_r[10]~52_combout\,
	cout => \eth_top_i|net_proc_i|mem_addr_r[10]~53\);

-- Location: LCCOMB_X26_Y32_N22
\eth_top_i|net_proc_i|mem_addr_r[11]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|mem_addr_r[11]~54_combout\ = (\eth_top_i|net_proc_i|mem_addr_r\(11) & (!\eth_top_i|net_proc_i|mem_addr_r[10]~53\)) # (!\eth_top_i|net_proc_i|mem_addr_r\(11) & ((\eth_top_i|net_proc_i|mem_addr_r[10]~53\) # (GND)))
-- \eth_top_i|net_proc_i|mem_addr_r[11]~55\ = CARRY((!\eth_top_i|net_proc_i|mem_addr_r[10]~53\) # (!\eth_top_i|net_proc_i|mem_addr_r\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|mem_addr_r\(11),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|mem_addr_r[10]~53\,
	combout => \eth_top_i|net_proc_i|mem_addr_r[11]~54_combout\,
	cout => \eth_top_i|net_proc_i|mem_addr_r[11]~55\);

-- Location: LCCOMB_X26_Y32_N24
\eth_top_i|net_proc_i|mem_addr_r[12]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|mem_addr_r[12]~56_combout\ = (\eth_top_i|net_proc_i|mem_addr_r\(12) & (\eth_top_i|net_proc_i|mem_addr_r[11]~55\ $ (GND))) # (!\eth_top_i|net_proc_i|mem_addr_r\(12) & (!\eth_top_i|net_proc_i|mem_addr_r[11]~55\ & VCC))
-- \eth_top_i|net_proc_i|mem_addr_r[12]~57\ = CARRY((\eth_top_i|net_proc_i|mem_addr_r\(12) & !\eth_top_i|net_proc_i|mem_addr_r[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|mem_addr_r\(12),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|mem_addr_r[11]~55\,
	combout => \eth_top_i|net_proc_i|mem_addr_r[12]~56_combout\,
	cout => \eth_top_i|net_proc_i|mem_addr_r[12]~57\);

-- Location: LCCOMB_X26_Y32_N26
\eth_top_i|net_proc_i|mem_addr_r[13]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|mem_addr_r[13]~58_combout\ = (\eth_top_i|net_proc_i|mem_addr_r\(13) & (!\eth_top_i|net_proc_i|mem_addr_r[12]~57\)) # (!\eth_top_i|net_proc_i|mem_addr_r\(13) & ((\eth_top_i|net_proc_i|mem_addr_r[12]~57\) # (GND)))
-- \eth_top_i|net_proc_i|mem_addr_r[13]~59\ = CARRY((!\eth_top_i|net_proc_i|mem_addr_r[12]~57\) # (!\eth_top_i|net_proc_i|mem_addr_r\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|mem_addr_r\(13),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|mem_addr_r[12]~57\,
	combout => \eth_top_i|net_proc_i|mem_addr_r[13]~58_combout\,
	cout => \eth_top_i|net_proc_i|mem_addr_r[13]~59\);

-- Location: LCCOMB_X26_Y32_N28
\eth_top_i|net_proc_i|mem_addr_r[14]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|mem_addr_r[14]~60_combout\ = (\eth_top_i|net_proc_i|mem_addr_r\(14) & (\eth_top_i|net_proc_i|mem_addr_r[13]~59\ $ (GND))) # (!\eth_top_i|net_proc_i|mem_addr_r\(14) & (!\eth_top_i|net_proc_i|mem_addr_r[13]~59\ & VCC))
-- \eth_top_i|net_proc_i|mem_addr_r[14]~61\ = CARRY((\eth_top_i|net_proc_i|mem_addr_r\(14) & !\eth_top_i|net_proc_i|mem_addr_r[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|mem_addr_r\(14),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|mem_addr_r[13]~59\,
	combout => \eth_top_i|net_proc_i|mem_addr_r[14]~60_combout\,
	cout => \eth_top_i|net_proc_i|mem_addr_r[14]~61\);

-- Location: LCCOMB_X26_Y32_N30
\eth_top_i|net_proc_i|mem_addr_r[15]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|mem_addr_r[15]~62_combout\ = (\eth_top_i|net_proc_i|mem_addr_r\(15) & (!\eth_top_i|net_proc_i|mem_addr_r[14]~61\)) # (!\eth_top_i|net_proc_i|mem_addr_r\(15) & ((\eth_top_i|net_proc_i|mem_addr_r[14]~61\) # (GND)))
-- \eth_top_i|net_proc_i|mem_addr_r[15]~63\ = CARRY((!\eth_top_i|net_proc_i|mem_addr_r[14]~61\) # (!\eth_top_i|net_proc_i|mem_addr_r\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|mem_addr_r\(15),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|mem_addr_r[14]~61\,
	combout => \eth_top_i|net_proc_i|mem_addr_r[15]~62_combout\,
	cout => \eth_top_i|net_proc_i|mem_addr_r[15]~63\);

-- Location: LCCOMB_X26_Y31_N0
\eth_top_i|net_proc_i|mem_addr_r[16]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|mem_addr_r[16]~64_combout\ = (\eth_top_i|net_proc_i|mem_addr_r\(16) & (\eth_top_i|net_proc_i|mem_addr_r[15]~63\ $ (GND))) # (!\eth_top_i|net_proc_i|mem_addr_r\(16) & (!\eth_top_i|net_proc_i|mem_addr_r[15]~63\ & VCC))
-- \eth_top_i|net_proc_i|mem_addr_r[16]~65\ = CARRY((\eth_top_i|net_proc_i|mem_addr_r\(16) & !\eth_top_i|net_proc_i|mem_addr_r[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|mem_addr_r\(16),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|mem_addr_r[15]~63\,
	combout => \eth_top_i|net_proc_i|mem_addr_r[16]~64_combout\,
	cout => \eth_top_i|net_proc_i|mem_addr_r[16]~65\);

-- Location: LCCOMB_X26_Y31_N2
\eth_top_i|net_proc_i|mem_addr_r[17]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|mem_addr_r[17]~66_combout\ = (\eth_top_i|net_proc_i|mem_addr_r\(17) & (!\eth_top_i|net_proc_i|mem_addr_r[16]~65\)) # (!\eth_top_i|net_proc_i|mem_addr_r\(17) & ((\eth_top_i|net_proc_i|mem_addr_r[16]~65\) # (GND)))
-- \eth_top_i|net_proc_i|mem_addr_r[17]~67\ = CARRY((!\eth_top_i|net_proc_i|mem_addr_r[16]~65\) # (!\eth_top_i|net_proc_i|mem_addr_r\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|mem_addr_r\(17),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|mem_addr_r[16]~65\,
	combout => \eth_top_i|net_proc_i|mem_addr_r[17]~66_combout\,
	cout => \eth_top_i|net_proc_i|mem_addr_r[17]~67\);

-- Location: LCCOMB_X26_Y31_N4
\eth_top_i|net_proc_i|mem_addr_r[18]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|mem_addr_r[18]~68_combout\ = (\eth_top_i|net_proc_i|mem_addr_r\(18) & (\eth_top_i|net_proc_i|mem_addr_r[17]~67\ $ (GND))) # (!\eth_top_i|net_proc_i|mem_addr_r\(18) & (!\eth_top_i|net_proc_i|mem_addr_r[17]~67\ & VCC))
-- \eth_top_i|net_proc_i|mem_addr_r[18]~69\ = CARRY((\eth_top_i|net_proc_i|mem_addr_r\(18) & !\eth_top_i|net_proc_i|mem_addr_r[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|mem_addr_r\(18),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|mem_addr_r[17]~67\,
	combout => \eth_top_i|net_proc_i|mem_addr_r[18]~68_combout\,
	cout => \eth_top_i|net_proc_i|mem_addr_r[18]~69\);

-- Location: LCCOMB_X26_Y31_N6
\eth_top_i|net_proc_i|mem_addr_r[19]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|mem_addr_r[19]~70_combout\ = (\eth_top_i|net_proc_i|mem_addr_r\(19) & (!\eth_top_i|net_proc_i|mem_addr_r[18]~69\)) # (!\eth_top_i|net_proc_i|mem_addr_r\(19) & ((\eth_top_i|net_proc_i|mem_addr_r[18]~69\) # (GND)))
-- \eth_top_i|net_proc_i|mem_addr_r[19]~71\ = CARRY((!\eth_top_i|net_proc_i|mem_addr_r[18]~69\) # (!\eth_top_i|net_proc_i|mem_addr_r\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|mem_addr_r\(19),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|mem_addr_r[18]~69\,
	combout => \eth_top_i|net_proc_i|mem_addr_r[19]~70_combout\,
	cout => \eth_top_i|net_proc_i|mem_addr_r[19]~71\);

-- Location: LCCOMB_X26_Y31_N8
\eth_top_i|net_proc_i|mem_addr_r[20]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|mem_addr_r[20]~72_combout\ = (\eth_top_i|net_proc_i|mem_addr_r\(20) & (\eth_top_i|net_proc_i|mem_addr_r[19]~71\ $ (GND))) # (!\eth_top_i|net_proc_i|mem_addr_r\(20) & (!\eth_top_i|net_proc_i|mem_addr_r[19]~71\ & VCC))
-- \eth_top_i|net_proc_i|mem_addr_r[20]~73\ = CARRY((\eth_top_i|net_proc_i|mem_addr_r\(20) & !\eth_top_i|net_proc_i|mem_addr_r[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|mem_addr_r\(20),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|mem_addr_r[19]~71\,
	combout => \eth_top_i|net_proc_i|mem_addr_r[20]~72_combout\,
	cout => \eth_top_i|net_proc_i|mem_addr_r[20]~73\);

-- Location: LCCOMB_X26_Y31_N10
\eth_top_i|net_proc_i|mem_addr_r[21]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|mem_addr_r[21]~75_combout\ = (\eth_top_i|net_proc_i|mem_addr_r\(21) & (!\eth_top_i|net_proc_i|mem_addr_r[20]~73\)) # (!\eth_top_i|net_proc_i|mem_addr_r\(21) & ((\eth_top_i|net_proc_i|mem_addr_r[20]~73\) # (GND)))
-- \eth_top_i|net_proc_i|mem_addr_r[21]~76\ = CARRY((!\eth_top_i|net_proc_i|mem_addr_r[20]~73\) # (!\eth_top_i|net_proc_i|mem_addr_r\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|mem_addr_r\(21),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|mem_addr_r[20]~73\,
	combout => \eth_top_i|net_proc_i|mem_addr_r[21]~75_combout\,
	cout => \eth_top_i|net_proc_i|mem_addr_r[21]~76\);

-- Location: LCCOMB_X26_Y31_N12
\eth_top_i|net_proc_i|mem_addr_r[22]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|mem_addr_r[22]~77_combout\ = (\eth_top_i|net_proc_i|mem_addr_r\(22) & (\eth_top_i|net_proc_i|mem_addr_r[21]~76\ $ (GND))) # (!\eth_top_i|net_proc_i|mem_addr_r\(22) & (!\eth_top_i|net_proc_i|mem_addr_r[21]~76\ & VCC))
-- \eth_top_i|net_proc_i|mem_addr_r[22]~78\ = CARRY((\eth_top_i|net_proc_i|mem_addr_r\(22) & !\eth_top_i|net_proc_i|mem_addr_r[21]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|mem_addr_r\(22),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|mem_addr_r[21]~76\,
	combout => \eth_top_i|net_proc_i|mem_addr_r[22]~77_combout\,
	cout => \eth_top_i|net_proc_i|mem_addr_r[22]~78\);

-- Location: LCCOMB_X26_Y31_N14
\eth_top_i|net_proc_i|mem_addr_r[23]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|mem_addr_r[23]~79_combout\ = (\eth_top_i|net_proc_i|mem_addr_r\(23) & (!\eth_top_i|net_proc_i|mem_addr_r[22]~78\)) # (!\eth_top_i|net_proc_i|mem_addr_r\(23) & ((\eth_top_i|net_proc_i|mem_addr_r[22]~78\) # (GND)))
-- \eth_top_i|net_proc_i|mem_addr_r[23]~80\ = CARRY((!\eth_top_i|net_proc_i|mem_addr_r[22]~78\) # (!\eth_top_i|net_proc_i|mem_addr_r\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|mem_addr_r\(23),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|mem_addr_r[22]~78\,
	combout => \eth_top_i|net_proc_i|mem_addr_r[23]~79_combout\,
	cout => \eth_top_i|net_proc_i|mem_addr_r[23]~80\);

-- Location: LCCOMB_X26_Y31_N16
\eth_top_i|net_proc_i|mem_addr_r[24]~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|mem_addr_r[24]~81_combout\ = (\eth_top_i|net_proc_i|mem_addr_r\(24) & (\eth_top_i|net_proc_i|mem_addr_r[23]~80\ $ (GND))) # (!\eth_top_i|net_proc_i|mem_addr_r\(24) & (!\eth_top_i|net_proc_i|mem_addr_r[23]~80\ & VCC))
-- \eth_top_i|net_proc_i|mem_addr_r[24]~82\ = CARRY((\eth_top_i|net_proc_i|mem_addr_r\(24) & !\eth_top_i|net_proc_i|mem_addr_r[23]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|mem_addr_r\(24),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|mem_addr_r[23]~80\,
	combout => \eth_top_i|net_proc_i|mem_addr_r[24]~81_combout\,
	cout => \eth_top_i|net_proc_i|mem_addr_r[24]~82\);

-- Location: LCCOMB_X26_Y31_N18
\eth_top_i|net_proc_i|mem_addr_r[25]~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|mem_addr_r[25]~83_combout\ = (\eth_top_i|net_proc_i|mem_addr_r\(25) & (!\eth_top_i|net_proc_i|mem_addr_r[24]~82\)) # (!\eth_top_i|net_proc_i|mem_addr_r\(25) & ((\eth_top_i|net_proc_i|mem_addr_r[24]~82\) # (GND)))
-- \eth_top_i|net_proc_i|mem_addr_r[25]~84\ = CARRY((!\eth_top_i|net_proc_i|mem_addr_r[24]~82\) # (!\eth_top_i|net_proc_i|mem_addr_r\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|mem_addr_r\(25),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|mem_addr_r[24]~82\,
	combout => \eth_top_i|net_proc_i|mem_addr_r[25]~83_combout\,
	cout => \eth_top_i|net_proc_i|mem_addr_r[25]~84\);

-- Location: LCCOMB_X26_Y31_N20
\eth_top_i|net_proc_i|mem_addr_r[26]~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|mem_addr_r[26]~85_combout\ = (\eth_top_i|net_proc_i|mem_addr_r\(26) & (\eth_top_i|net_proc_i|mem_addr_r[25]~84\ $ (GND))) # (!\eth_top_i|net_proc_i|mem_addr_r\(26) & (!\eth_top_i|net_proc_i|mem_addr_r[25]~84\ & VCC))
-- \eth_top_i|net_proc_i|mem_addr_r[26]~86\ = CARRY((\eth_top_i|net_proc_i|mem_addr_r\(26) & !\eth_top_i|net_proc_i|mem_addr_r[25]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|mem_addr_r\(26),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|mem_addr_r[25]~84\,
	combout => \eth_top_i|net_proc_i|mem_addr_r[26]~85_combout\,
	cout => \eth_top_i|net_proc_i|mem_addr_r[26]~86\);

-- Location: LCCOMB_X26_Y31_N22
\eth_top_i|net_proc_i|mem_addr_r[27]~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|mem_addr_r[27]~87_combout\ = (\eth_top_i|net_proc_i|mem_addr_r\(27) & (!\eth_top_i|net_proc_i|mem_addr_r[26]~86\)) # (!\eth_top_i|net_proc_i|mem_addr_r\(27) & ((\eth_top_i|net_proc_i|mem_addr_r[26]~86\) # (GND)))
-- \eth_top_i|net_proc_i|mem_addr_r[27]~88\ = CARRY((!\eth_top_i|net_proc_i|mem_addr_r[26]~86\) # (!\eth_top_i|net_proc_i|mem_addr_r\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|mem_addr_r\(27),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|mem_addr_r[26]~86\,
	combout => \eth_top_i|net_proc_i|mem_addr_r[27]~87_combout\,
	cout => \eth_top_i|net_proc_i|mem_addr_r[27]~88\);

-- Location: LCCOMB_X26_Y31_N24
\eth_top_i|net_proc_i|mem_addr_r[28]~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|mem_addr_r[28]~89_combout\ = (\eth_top_i|net_proc_i|mem_addr_r\(28) & (\eth_top_i|net_proc_i|mem_addr_r[27]~88\ $ (GND))) # (!\eth_top_i|net_proc_i|mem_addr_r\(28) & (!\eth_top_i|net_proc_i|mem_addr_r[27]~88\ & VCC))
-- \eth_top_i|net_proc_i|mem_addr_r[28]~90\ = CARRY((\eth_top_i|net_proc_i|mem_addr_r\(28) & !\eth_top_i|net_proc_i|mem_addr_r[27]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|mem_addr_r\(28),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|mem_addr_r[27]~88\,
	combout => \eth_top_i|net_proc_i|mem_addr_r[28]~89_combout\,
	cout => \eth_top_i|net_proc_i|mem_addr_r[28]~90\);

-- Location: LCCOMB_X26_Y31_N26
\eth_top_i|net_proc_i|mem_addr_r[29]~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|mem_addr_r[29]~91_combout\ = (\eth_top_i|net_proc_i|mem_addr_r\(29) & (!\eth_top_i|net_proc_i|mem_addr_r[28]~90\)) # (!\eth_top_i|net_proc_i|mem_addr_r\(29) & ((\eth_top_i|net_proc_i|mem_addr_r[28]~90\) # (GND)))
-- \eth_top_i|net_proc_i|mem_addr_r[29]~92\ = CARRY((!\eth_top_i|net_proc_i|mem_addr_r[28]~90\) # (!\eth_top_i|net_proc_i|mem_addr_r\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|mem_addr_r\(29),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|mem_addr_r[28]~90\,
	combout => \eth_top_i|net_proc_i|mem_addr_r[29]~91_combout\,
	cout => \eth_top_i|net_proc_i|mem_addr_r[29]~92\);

-- Location: LCCOMB_X26_Y31_N28
\eth_top_i|net_proc_i|mem_addr_r[30]~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|mem_addr_r[30]~93_combout\ = (\eth_top_i|net_proc_i|mem_addr_r\(30) & (\eth_top_i|net_proc_i|mem_addr_r[29]~92\ $ (GND))) # (!\eth_top_i|net_proc_i|mem_addr_r\(30) & (!\eth_top_i|net_proc_i|mem_addr_r[29]~92\ & VCC))
-- \eth_top_i|net_proc_i|mem_addr_r[30]~94\ = CARRY((\eth_top_i|net_proc_i|mem_addr_r\(30) & !\eth_top_i|net_proc_i|mem_addr_r[29]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|mem_addr_r\(30),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|mem_addr_r[29]~92\,
	combout => \eth_top_i|net_proc_i|mem_addr_r[30]~93_combout\,
	cout => \eth_top_i|net_proc_i|mem_addr_r[30]~94\);

-- Location: LCCOMB_X26_Y31_N30
\eth_top_i|net_proc_i|mem_addr_r[31]~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|mem_addr_r[31]~95_combout\ = \eth_top_i|net_proc_i|mem_addr_r\(31) $ (\eth_top_i|net_proc_i|mem_addr_r[30]~94\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|mem_addr_r\(31),
	cin => \eth_top_i|net_proc_i|mem_addr_r[30]~94\,
	combout => \eth_top_i|net_proc_i|mem_addr_r[31]~95_combout\);

-- Location: LCCOMB_X32_Y28_N30
\eth_top_i|eth_tx_i|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|Mux2~0_combout\ = (\eth_top_i|eth_tx_i|nibble_cnt_r\(1) & (((\eth_top_i|eth_tx_i|nibble_cnt_r\(2)) # (\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(17))))) # (!\eth_top_i|eth_tx_i|nibble_cnt_r\(1) & 
-- (\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(25) & (!\eth_top_i|eth_tx_i|nibble_cnt_r\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(25),
	datab => \eth_top_i|eth_tx_i|nibble_cnt_r\(1),
	datac => \eth_top_i|eth_tx_i|nibble_cnt_r\(2),
	datad => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(17),
	combout => \eth_top_i|eth_tx_i|Mux2~0_combout\);

-- Location: FF_X32_Y27_N31
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~34_combout\,
	ena => \eth_top_i|eth_tx_i|ALT_INV_eth_tx_sm.st_send_crc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(18));

-- Location: FF_X32_Y27_N1
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~35_combout\,
	ena => \eth_top_i|eth_tx_i|ALT_INV_eth_tx_sm.st_send_crc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(26));

-- Location: LCCOMB_X32_Y27_N26
\eth_top_i|eth_tx_i|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|Mux1~0_combout\ = (\eth_top_i|eth_tx_i|nibble_cnt_r\(2) & (((\eth_top_i|eth_tx_i|nibble_cnt_r\(1))))) # (!\eth_top_i|eth_tx_i|nibble_cnt_r\(2) & ((\eth_top_i|eth_tx_i|nibble_cnt_r\(1) & ((\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(18)))) 
-- # (!\eth_top_i|eth_tx_i|nibble_cnt_r\(1) & (\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|nibble_cnt_r\(2),
	datab => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(26),
	datac => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(18),
	datad => \eth_top_i|eth_tx_i|nibble_cnt_r\(1),
	combout => \eth_top_i|eth_tx_i|Mux1~0_combout\);

-- Location: LCCOMB_X32_Y27_N20
\eth_top_i|eth_tx_i|Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|Mux1~1_combout\ = (\eth_top_i|eth_tx_i|nibble_cnt_r\(2) & ((\eth_top_i|eth_tx_i|Mux1~0_combout\ & (\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(2))) # (!\eth_top_i|eth_tx_i|Mux1~0_combout\ & 
-- ((\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(10)))))) # (!\eth_top_i|eth_tx_i|nibble_cnt_r\(2) & (((\eth_top_i|eth_tx_i|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|nibble_cnt_r\(2),
	datab => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(2),
	datac => \eth_top_i|eth_tx_i|Mux1~0_combout\,
	datad => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(10),
	combout => \eth_top_i|eth_tx_i|Mux1~1_combout\);

-- Location: FF_X32_Y27_N23
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~36_combout\,
	ena => \eth_top_i|eth_tx_i|ALT_INV_eth_tx_sm.st_send_crc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(22));

-- Location: FF_X32_Y27_N3
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~38_combout\,
	ena => \eth_top_i|eth_tx_i|ALT_INV_eth_tx_sm.st_send_crc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(30));

-- Location: LCCOMB_X32_Y27_N28
\eth_top_i|eth_tx_i|Mux1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|Mux1~2_combout\ = (\eth_top_i|eth_tx_i|nibble_cnt_r\(2) & ((\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(14)) # ((\eth_top_i|eth_tx_i|nibble_cnt_r\(1))))) # (!\eth_top_i|eth_tx_i|nibble_cnt_r\(2) & 
-- (((\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(30) & !\eth_top_i|eth_tx_i|nibble_cnt_r\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|nibble_cnt_r\(2),
	datab => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(14),
	datac => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(30),
	datad => \eth_top_i|eth_tx_i|nibble_cnt_r\(1),
	combout => \eth_top_i|eth_tx_i|Mux1~2_combout\);

-- Location: LCCOMB_X32_Y27_N24
\eth_top_i|eth_tx_i|Mux1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|Mux1~3_combout\ = (\eth_top_i|eth_tx_i|Mux1~2_combout\ & ((\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(6)) # ((!\eth_top_i|eth_tx_i|nibble_cnt_r\(1))))) # (!\eth_top_i|eth_tx_i|Mux1~2_combout\ & 
-- (((\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(22) & \eth_top_i|eth_tx_i|nibble_cnt_r\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(6),
	datab => \eth_top_i|eth_tx_i|Mux1~2_combout\,
	datac => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(22),
	datad => \eth_top_i|eth_tx_i|nibble_cnt_r\(1),
	combout => \eth_top_i|eth_tx_i|Mux1~3_combout\);

-- Location: LCCOMB_X32_Y27_N10
\eth_top_i|eth_tx_i|Selector19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|Selector19~0_combout\ = (\eth_top_i|eth_tx_i|eth_tx_sm.st_send_crc~q\ & ((\eth_top_i|eth_tx_i|nibble_cnt_r\(0) & ((\eth_top_i|eth_tx_i|Mux1~1_combout\))) # (!\eth_top_i|eth_tx_i|nibble_cnt_r\(0) & 
-- (\eth_top_i|eth_tx_i|Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|nibble_cnt_r\(0),
	datab => \eth_top_i|eth_tx_i|Mux1~3_combout\,
	datac => \eth_top_i|eth_tx_i|eth_tx_sm.st_send_crc~q\,
	datad => \eth_top_i|eth_tx_i|Mux1~1_combout\,
	combout => \eth_top_i|eth_tx_i|Selector19~0_combout\);

-- Location: LCCOMB_X32_Y28_N2
\eth_top_i|eth_tx_i|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|Mux0~0_combout\ = (\eth_top_i|eth_tx_i|nibble_cnt_r\(1) & ((\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(19)) # ((\eth_top_i|eth_tx_i|nibble_cnt_r\(2))))) # (!\eth_top_i|eth_tx_i|nibble_cnt_r\(1) & (((!\eth_top_i|eth_tx_i|nibble_cnt_r\(2) 
-- & \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|nibble_cnt_r\(1),
	datab => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(19),
	datac => \eth_top_i|eth_tx_i|nibble_cnt_r\(2),
	datad => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(27),
	combout => \eth_top_i|eth_tx_i|Mux0~0_combout\);

-- Location: LCCOMB_X32_Y28_N12
\eth_top_i|eth_tx_i|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|Mux0~1_combout\ = (\eth_top_i|eth_tx_i|Mux0~0_combout\ & (((\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(3)) # (!\eth_top_i|eth_tx_i|nibble_cnt_r\(2))))) # (!\eth_top_i|eth_tx_i|Mux0~0_combout\ & 
-- (\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(11) & (\eth_top_i|eth_tx_i|nibble_cnt_r\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(11),
	datab => \eth_top_i|eth_tx_i|Mux0~0_combout\,
	datac => \eth_top_i|eth_tx_i|nibble_cnt_r\(2),
	datad => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(3),
	combout => \eth_top_i|eth_tx_i|Mux0~1_combout\);

-- Location: LCCOMB_X32_Y28_N18
\eth_top_i|eth_tx_i|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|Mux0~2_combout\ = (\eth_top_i|eth_tx_i|nibble_cnt_r\(1) & (((\eth_top_i|eth_tx_i|nibble_cnt_r\(2))))) # (!\eth_top_i|eth_tx_i|nibble_cnt_r\(1) & ((\eth_top_i|eth_tx_i|nibble_cnt_r\(2) & (\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(15))) # 
-- (!\eth_top_i|eth_tx_i|nibble_cnt_r\(2) & ((\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|nibble_cnt_r\(1),
	datab => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(15),
	datac => \eth_top_i|eth_tx_i|nibble_cnt_r\(2),
	datad => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(31),
	combout => \eth_top_i|eth_tx_i|Mux0~2_combout\);

-- Location: LCCOMB_X32_Y28_N20
\eth_top_i|eth_tx_i|Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|Mux0~3_combout\ = (\eth_top_i|eth_tx_i|Mux0~2_combout\ & ((\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(7)) # ((!\eth_top_i|eth_tx_i|nibble_cnt_r\(1))))) # (!\eth_top_i|eth_tx_i|Mux0~2_combout\ & 
-- (((\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(23) & \eth_top_i|eth_tx_i|nibble_cnt_r\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(7),
	datab => \eth_top_i|eth_tx_i|Mux0~2_combout\,
	datac => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(23),
	datad => \eth_top_i|eth_tx_i|nibble_cnt_r\(1),
	combout => \eth_top_i|eth_tx_i|Mux0~3_combout\);

-- Location: LCCOMB_X32_Y28_N22
\eth_top_i|eth_tx_i|Selector18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|Selector18~0_combout\ = (\eth_top_i|eth_tx_i|eth_tx_sm.st_send_crc~q\ & ((\eth_top_i|eth_tx_i|nibble_cnt_r\(0) & ((\eth_top_i|eth_tx_i|Mux0~1_combout\))) # (!\eth_top_i|eth_tx_i|nibble_cnt_r\(0) & 
-- (\eth_top_i|eth_tx_i|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|nibble_cnt_r\(0),
	datab => \eth_top_i|eth_tx_i|Mux0~3_combout\,
	datac => \eth_top_i|eth_tx_i|eth_tx_sm.st_send_crc~q\,
	datad => \eth_top_i|eth_tx_i|Mux0~1_combout\,
	combout => \eth_top_i|eth_tx_i|Selector18~0_combout\);

-- Location: FF_X31_Y29_N3
\eth_top_i|eth_tx_i|tx_bank_busy_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|tx_bank_busy_r[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|tx_bank_busy_r\(0));

-- Location: LCCOMB_X30_Y25_N28
\eth_top_i|eth_tx_i|crc_sclr_s~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|crc_sclr_s~2_combout\ = (!\eth_top_i|eth_tx_i|addr_cnt_r\(7) & (!\eth_top_i|eth_tx_i|addr_cnt_r\(10) & (!\eth_top_i|eth_tx_i|addr_cnt_r\(9) & !\eth_top_i|eth_tx_i|addr_cnt_r\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|addr_cnt_r\(7),
	datab => \eth_top_i|eth_tx_i|addr_cnt_r\(10),
	datac => \eth_top_i|eth_tx_i|addr_cnt_r\(9),
	datad => \eth_top_i|eth_tx_i|addr_cnt_r\(8),
	combout => \eth_top_i|eth_tx_i|crc_sclr_s~2_combout\);

-- Location: FF_X30_Y26_N17
\eth_top_i|net_proc_i|tx_bank_info_r[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|tx_bank_info_len_v~0_combout\,
	ena => \eth_top_i|net_proc_i|tx_bank_info_r[0][10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|tx_bank_info_r[0][0]~q\);

-- Location: LCCOMB_X31_Y28_N16
\eth_top_i|eth_tx_i|crc32nibble_i|m_s[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|crc32nibble_i|m_s\(2) = \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(1) $ (\eth_top_i|eth_tx_ram_i|data_out_r\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(1),
	datad => \eth_top_i|eth_tx_ram_i|data_out_r\(1),
	combout => \eth_top_i|eth_tx_i|crc32nibble_i|m_s\(2));

-- Location: LCCOMB_X32_Y27_N30
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~34_combout\ = (!\eth_top_i|eth_tx_i|crc_sclr_s~3_combout\ & (\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(22) $ (\eth_top_i|eth_tx_i|crc32nibble_i|crc_r~26_combout\ $ (!\eth_top_i|eth_tx_i|crc32nibble_i|m_s\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(22),
	datab => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~26_combout\,
	datac => \eth_top_i|eth_tx_i|crc_sclr_s~3_combout\,
	datad => \eth_top_i|eth_tx_i|crc32nibble_i|m_s\(3),
	combout => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~34_combout\);

-- Location: LCCOMB_X32_Y27_N0
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~35_combout\ = (!\eth_top_i|eth_tx_i|crc_sclr_s~3_combout\ & (\eth_top_i|eth_tx_i|crc32nibble_i|crc_r~20_combout\ $ (\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(30) $ (!\eth_top_i|eth_tx_i|crc32nibble_i|m_s\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~20_combout\,
	datab => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(30),
	datac => \eth_top_i|eth_tx_i|crc_sclr_s~3_combout\,
	datad => \eth_top_i|eth_tx_i|crc32nibble_i|m_s\(3),
	combout => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~35_combout\);

-- Location: LCCOMB_X32_Y27_N22
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~36_combout\ = (!\eth_top_i|eth_tx_i|crc_sclr_s~3_combout\ & (\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(26) $ (\eth_top_i|eth_tx_i|crc32nibble_i|crc_r~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|crc_sclr_s~3_combout\,
	datab => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(26),
	datad => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~26_combout\,
	combout => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~36_combout\);

-- Location: LCCOMB_X32_Y27_N2
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~38_combout\ = (!\eth_top_i|eth_tx_i|crc32nibble_i|crc_r~20_combout\ & !\eth_top_i|eth_tx_i|crc_sclr_s~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~20_combout\,
	datac => \eth_top_i|eth_tx_i|crc_sclr_s~3_combout\,
	combout => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~38_combout\);

-- Location: FF_X30_Y29_N31
\eth_top_i|eth_tx_i|nibble_cnt_r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|Selector13~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|nibble_cnt_r\(4));

-- Location: LCCOMB_X30_Y29_N10
\eth_top_i|eth_tx_i|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|Equal1~2_combout\ = (!\eth_top_i|eth_tx_i|nibble_cnt_r\(10) & (!\eth_top_i|eth_tx_i|nibble_cnt_r\(9) & (!\eth_top_i|eth_tx_i|nibble_cnt_r\(8) & !\eth_top_i|eth_tx_i|nibble_cnt_r\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|nibble_cnt_r\(10),
	datab => \eth_top_i|eth_tx_i|nibble_cnt_r\(9),
	datac => \eth_top_i|eth_tx_i|nibble_cnt_r\(8),
	datad => \eth_top_i|eth_tx_i|nibble_cnt_r\(11),
	combout => \eth_top_i|eth_tx_i|Equal1~2_combout\);

-- Location: FF_X27_Y26_N21
\eth_top_i|net_proc_i|tx_len_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Add7~15_combout\,
	ena => \eth_top_i|net_proc_i|Add7~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|tx_len_r\(2));

-- Location: FF_X27_Y26_N1
\eth_top_i|net_proc_i|tx_len_r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Add7~17_combout\,
	ena => \eth_top_i|net_proc_i|Add7~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|tx_len_r\(4));

-- Location: LCCOMB_X30_Y26_N12
\eth_top_i|net_proc_i|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|LessThan0~0_combout\ = (!\eth_top_i|net_proc_i|tx_len_r\(2) & (!\eth_top_i|net_proc_i|tx_len_r\(3) & (!\eth_top_i|net_proc_i|tx_len_r\(4) & !\eth_top_i|net_proc_i|tx_len_r\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|tx_len_r\(2),
	datab => \eth_top_i|net_proc_i|tx_len_r\(3),
	datac => \eth_top_i|net_proc_i|tx_len_r\(4),
	datad => \eth_top_i|net_proc_i|tx_len_r\(1),
	combout => \eth_top_i|net_proc_i|LessThan0~0_combout\);

-- Location: FF_X28_Y29_N1
\reg_file_i|eth_reg_rdata[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|eth_reg_rdata~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|eth_reg_rdata\(0));

-- Location: FF_X26_Y28_N13
\reg_file_i|eth_reg_rdata[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|eth_reg_rdata~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|eth_reg_rdata\(4));

-- Location: LCCOMB_X26_Y28_N16
\eth_top_i|net_proc_i|Mux110~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Mux110~2_combout\ = (\eth_top_i|net_proc_i|process_0~0_combout\ & ((\eth_top_i|net_proc_i|Mux110~1_combout\ & (\reg_file_i|eth_reg_rdata\(4))) # (!\eth_top_i|net_proc_i|Mux110~1_combout\ & 
-- ((\eth_top_i|eth_rx_ram_i|data_out_r\(4)))))) # (!\eth_top_i|net_proc_i|process_0~0_combout\ & (((\eth_top_i|net_proc_i|Mux110~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_i|eth_reg_rdata\(4),
	datab => \eth_top_i|net_proc_i|process_0~0_combout\,
	datac => \eth_top_i|eth_rx_ram_i|data_out_r\(4),
	datad => \eth_top_i|net_proc_i|Mux110~1_combout\,
	combout => \eth_top_i|net_proc_i|Mux110~2_combout\);

-- Location: FF_X28_Y29_N11
\reg_file_i|eth_reg_rdata[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|eth_reg_rdata~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|eth_reg_rdata\(12));

-- Location: FF_X27_Y30_N9
\reg_file_i|eth_reg_rdata[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|eth_reg_rdata~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|eth_reg_rdata\(1));

-- Location: FF_X27_Y30_N27
\reg_file_i|eth_reg_rdata[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|eth_reg_rdata~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|eth_reg_rdata\(6));

-- Location: LCCOMB_X26_Y28_N26
\eth_top_i|net_proc_i|Mux108~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Mux108~0_combout\ = (\eth_top_i|net_proc_i|process_0~0_combout\ & ((\eth_top_i|net_proc_i|Mux110~1_combout\ & (\reg_file_i|eth_reg_rdata\(6))) # (!\eth_top_i|net_proc_i|Mux110~1_combout\ & 
-- ((\eth_top_i|eth_rx_ram_i|data_out_r\(6)))))) # (!\eth_top_i|net_proc_i|process_0~0_combout\ & (((\eth_top_i|net_proc_i|Mux110~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_i|eth_reg_rdata\(6),
	datab => \eth_top_i|net_proc_i|process_0~0_combout\,
	datac => \eth_top_i|eth_rx_ram_i|data_out_r\(6),
	datad => \eth_top_i|net_proc_i|Mux110~1_combout\,
	combout => \eth_top_i|net_proc_i|Mux108~0_combout\);

-- Location: FF_X29_Y26_N13
\eth_top_i|net_proc_i|ip_checksum_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|ip_checksum_r[2]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|ip_checksum_r\(2));

-- Location: FF_X27_Y29_N5
\reg_file_i|eth_reg_rdata[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|eth_reg_rdata~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|eth_reg_rdata\(10));

-- Location: FF_X25_Y30_N5
\reg_file_i|eth_reg_rdata[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|eth_reg_rdata~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|eth_reg_rdata\(7));

-- Location: LCCOMB_X26_Y28_N10
\eth_top_i|net_proc_i|Mux107~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Mux107~0_combout\ = (\eth_top_i|net_proc_i|process_0~0_combout\ & ((\eth_top_i|net_proc_i|Mux110~1_combout\ & (\reg_file_i|eth_reg_rdata\(7))) # (!\eth_top_i|net_proc_i|Mux110~1_combout\ & 
-- ((\eth_top_i|eth_rx_ram_i|data_out_r\(7)))))) # (!\eth_top_i|net_proc_i|process_0~0_combout\ & (((\eth_top_i|net_proc_i|Mux110~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_i|eth_reg_rdata\(7),
	datab => \eth_top_i|net_proc_i|process_0~0_combout\,
	datac => \eth_top_i|eth_rx_ram_i|data_out_r\(7),
	datad => \eth_top_i|net_proc_i|Mux110~1_combout\,
	combout => \eth_top_i|net_proc_i|Mux107~0_combout\);

-- Location: FF_X27_Y29_N7
\reg_file_i|eth_reg_rdata[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|eth_reg_rdata~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|eth_reg_rdata\(11));

-- Location: LCCOMB_X26_Y27_N6
\eth_top_i|net_proc_i|Mux103~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Mux103~0_combout\ = (\eth_top_i|net_proc_i|tx_ram_source_r\(0) & (\eth_top_i|net_proc_i|tx_ram_source_r\(1))) # (!\eth_top_i|net_proc_i|tx_ram_source_r\(0) & ((\eth_top_i|net_proc_i|tx_ram_source_r\(1) & 
-- ((\mem_file_i|eth_mem_rdata_r\(2)))) # (!\eth_top_i|net_proc_i|tx_ram_source_r\(1) & (\eth_top_i|eth_rx_ram_i|data_out_r\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|tx_ram_source_r\(0),
	datab => \eth_top_i|net_proc_i|tx_ram_source_r\(1),
	datac => \eth_top_i|eth_rx_ram_i|data_out_r\(11),
	datad => \mem_file_i|eth_mem_rdata_r\(2),
	combout => \eth_top_i|net_proc_i|Mux103~0_combout\);

-- Location: LCCOMB_X29_Y26_N26
\eth_top_i|net_proc_i|Mux103~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Mux103~1_combout\ = (\eth_top_i|net_proc_i|tx_ram_source_r\(0) & ((\eth_top_i|net_proc_i|Mux103~0_combout\ & ((\eth_top_i|net_proc_i|proto_len_r\(3)))) # (!\eth_top_i|net_proc_i|Mux103~0_combout\ & (\reg_file_i|eth_reg_rdata\(11))))) 
-- # (!\eth_top_i|net_proc_i|tx_ram_source_r\(0) & (((\eth_top_i|net_proc_i|Mux103~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|tx_ram_source_r\(0),
	datab => \reg_file_i|eth_reg_rdata\(11),
	datac => \eth_top_i|net_proc_i|Mux103~0_combout\,
	datad => \eth_top_i|net_proc_i|proto_len_r\(3),
	combout => \eth_top_i|net_proc_i|Mux103~1_combout\);

-- Location: FF_X30_Y29_N7
\eth_top_i|net_proc_i|tx_bank_info_r[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \eth_top_i|net_proc_i|tx_bank_info_len_v~1_combout\,
	sload => VCC,
	ena => \eth_top_i|net_proc_i|tx_bank_info_r[1][10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|tx_bank_info_r[1][2]~q\);

-- Location: FF_X30_Y26_N9
\eth_top_i|net_proc_i|tx_bank_info_r[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|tx_bank_info_len_v~1_combout\,
	ena => \eth_top_i|net_proc_i|tx_bank_info_r[0][10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|tx_bank_info_r[0][2]~q\);

-- Location: LCCOMB_X30_Y29_N6
\eth_top_i|eth_tx_i|Selector13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|Selector13~0_combout\ = (\eth_top_i|eth_tx_i|eth_tx_sm.st_reg_addr1~q\ & ((\eth_top_i|eth_tx_i|current_bank_r~q\ & ((\eth_top_i|net_proc_i|tx_bank_info_r[1][2]~q\))) # (!\eth_top_i|eth_tx_i|current_bank_r~q\ & 
-- (\eth_top_i|net_proc_i|tx_bank_info_r[0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|tx_bank_info_r[0][2]~q\,
	datab => \eth_top_i|eth_tx_i|eth_tx_sm.st_reg_addr1~q\,
	datac => \eth_top_i|net_proc_i|tx_bank_info_r[1][2]~q\,
	datad => \eth_top_i|eth_tx_i|current_bank_r~q\,
	combout => \eth_top_i|eth_tx_i|Selector13~0_combout\);

-- Location: LCCOMB_X31_Y28_N8
\eth_top_i|eth_tx_i|Selector13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|Selector13~1_combout\ = (\eth_top_i|eth_tx_i|eth_tx_sm.st_send_crc~q\ & (((\eth_top_i|eth_tx_i|nibble_cnt_zero_r~q\)))) # (!\eth_top_i|eth_tx_i|eth_tx_sm.st_send_crc~q\ & ((\eth_top_i|eth_tx_i|WideOr0~0_combout\) # 
-- ((\eth_top_i|eth_tx_i|eth_tx_sm.st_send_data~q\ & !\eth_top_i|eth_tx_i|nibble_cnt_zero_r~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|eth_tx_sm.st_send_data~q\,
	datab => \eth_top_i|eth_tx_i|WideOr0~0_combout\,
	datac => \eth_top_i|eth_tx_i|eth_tx_sm.st_send_crc~q\,
	datad => \eth_top_i|eth_tx_i|nibble_cnt_zero_r~q\,
	combout => \eth_top_i|eth_tx_i|Selector13~1_combout\);

-- Location: LCCOMB_X30_Y29_N30
\eth_top_i|eth_tx_i|Selector13~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|Selector13~2_combout\ = (\eth_top_i|eth_tx_i|Selector13~0_combout\) # ((\eth_top_i|eth_tx_i|Selector13~1_combout\ & ((\eth_top_i|eth_tx_i|Add1~8_combout\) # (\eth_top_i|eth_tx_i|eth_tx_sm.st_send_crc~q\))) # 
-- (!\eth_top_i|eth_tx_i|Selector13~1_combout\ & (\eth_top_i|eth_tx_i|Add1~8_combout\ & \eth_top_i|eth_tx_i|eth_tx_sm.st_send_crc~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|Selector13~0_combout\,
	datab => \eth_top_i|eth_tx_i|Selector13~1_combout\,
	datac => \eth_top_i|eth_tx_i|Add1~8_combout\,
	datad => \eth_top_i|eth_tx_i|eth_tx_sm.st_send_crc~q\,
	combout => \eth_top_i|eth_tx_i|Selector13~2_combout\);

-- Location: FF_X30_Y26_N27
\eth_top_i|net_proc_i|tx_bank_info_r[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|tx_bank_info_r[0][1]~feeder_combout\,
	ena => \eth_top_i|net_proc_i|tx_bank_info_r[0][10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|tx_bank_info_r[0][1]~q\);

-- Location: FF_X30_Y26_N11
\eth_top_i|net_proc_i|tx_bank_info_r[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|tx_bank_info_r[0][4]~feeder_combout\,
	ena => \eth_top_i|net_proc_i|tx_bank_info_r[0][10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|tx_bank_info_r[0][4]~q\);

-- Location: FF_X30_Y26_N29
\eth_top_i|net_proc_i|tx_bank_info_r[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|tx_bank_info_len_v~4_combout\,
	ena => \eth_top_i|net_proc_i|tx_bank_info_r[1][10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|tx_bank_info_r[1][4]~q\);

-- Location: FF_X30_Y26_N3
\eth_top_i|net_proc_i|tx_bank_info_r[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|tx_bank_info_r[0][6]~feeder_combout\,
	ena => \eth_top_i|net_proc_i|tx_bank_info_r[0][10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|tx_bank_info_r[0][6]~q\);

-- Location: FF_X27_Y26_N27
\eth_top_i|net_proc_i|tx_bank_info_r[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|tx_bank_info_r[1][6]~feeder_combout\,
	ena => \eth_top_i|net_proc_i|tx_bank_info_r[1][10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|tx_bank_info_r[1][6]~q\);

-- Location: FF_X30_Y26_N5
\eth_top_i|net_proc_i|tx_bank_info_r[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|tx_bank_info_r[0][7]~feeder_combout\,
	ena => \eth_top_i|net_proc_i|tx_bank_info_r[0][10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|tx_bank_info_r[0][7]~q\);

-- Location: FF_X28_Y26_N3
\eth_top_i|net_proc_i|tx_bank_info_r[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|tx_bank_info_r[1][7]~feeder_combout\,
	ena => \eth_top_i|net_proc_i|tx_bank_info_r[1][10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|tx_bank_info_r[1][7]~q\);

-- Location: FF_X30_Y26_N23
\eth_top_i|net_proc_i|tx_bank_info_r[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|tx_bank_info_r[0][8]~feeder_combout\,
	ena => \eth_top_i|net_proc_i|tx_bank_info_r[0][10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|tx_bank_info_r[0][8]~q\);

-- Location: FF_X28_Y26_N5
\eth_top_i|net_proc_i|tx_bank_info_r[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|tx_bank_info_r[1][8]~feeder_combout\,
	ena => \eth_top_i|net_proc_i|tx_bank_info_r[1][10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|tx_bank_info_r[1][8]~q\);

-- Location: FF_X30_Y28_N29
\eth_top_i|net_proc_i|tx_bank_info_r[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|tx_bank_info_r[0][9]~feeder_combout\,
	ena => \eth_top_i|net_proc_i|tx_bank_info_r[0][10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|tx_bank_info_r[0][9]~q\);

-- Location: FF_X28_Y26_N7
\eth_top_i|net_proc_i|tx_bank_info_r[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|tx_bank_info_r[1][9]~feeder_combout\,
	ena => \eth_top_i|net_proc_i|tx_bank_info_r[1][10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|tx_bank_info_r[1][9]~q\);

-- Location: FF_X27_Y27_N7
\eth_top_i|net_proc_i|info_words[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \eth_top_i|eth_rx_ram_i|data_out_r\(0),
	sload => VCC,
	ena => \eth_top_i|net_proc_i|Mux66~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|info_words[0][0]~q\);

-- Location: FF_X27_Y27_N11
\eth_top_i|net_proc_i|info_words[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \eth_top_i|eth_rx_ram_i|data_out_r\(2),
	sload => VCC,
	ena => \eth_top_i|net_proc_i|Mux66~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|info_words[0][2]~q\);

-- Location: LCCOMB_X27_Y26_N20
\eth_top_i|net_proc_i|Add7~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add7~15_combout\ = (\eth_top_i|net_proc_i|Add7~4_combout\) # (!\eth_top_i|net_proc_i|np_fsm.npf_read_mem1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|net_proc_i|Add7~4_combout\,
	datad => \eth_top_i|net_proc_i|np_fsm.npf_read_mem1~q\,
	combout => \eth_top_i|net_proc_i|Add7~15_combout\);

-- Location: LCCOMB_X27_Y26_N0
\eth_top_i|net_proc_i|Add7~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add7~17_combout\ = (\eth_top_i|net_proc_i|Add7~8_combout\) # (!\eth_top_i|net_proc_i|np_fsm.npf_read_mem1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|net_proc_i|Add7~8_combout\,
	datad => \eth_top_i|net_proc_i|np_fsm.npf_read_mem1~q\,
	combout => \eth_top_i|net_proc_i|Add7~17_combout\);

-- Location: LCCOMB_X24_Y25_N26
\eth_top_i|net_proc_i|Selector3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector3~2_combout\ = (!\eth_top_i|net_proc_i|np_fsm.npf_copyPacketInfo~q\ & !\eth_top_i|net_proc_i|np_fsm.npf_copyDestMAC~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|net_proc_i|np_fsm.npf_copyPacketInfo~q\,
	datad => \eth_top_i|net_proc_i|np_fsm.npf_copyDestMAC~q\,
	combout => \eth_top_i|net_proc_i|Selector3~2_combout\);

-- Location: FF_X28_Y27_N11
\eth_top_i|net_proc_i|tx_ram_cnt_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Selector53~2_combout\,
	ena => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|tx_ram_cnt_r\(2));

-- Location: FF_X28_Y27_N19
\eth_top_i|net_proc_i|tx_ram_cnt_r[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Add2~26_combout\,
	ena => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|tx_ram_cnt_r\(9));

-- Location: LCCOMB_X23_Y25_N14
\eth_top_i|net_proc_i|Selector66~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector66~0_combout\ = (\eth_top_i|net_proc_i|np_fsm.npf_copyPacketInfo~q\) # ((\eth_top_i|net_proc_i|np_fsm.npf_read_mem6~q\) # (\eth_top_i|net_proc_i|np_fsm.npf_write_mem2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|np_fsm.npf_copyPacketInfo~q\,
	datac => \eth_top_i|net_proc_i|np_fsm.npf_read_mem6~q\,
	datad => \eth_top_i|net_proc_i|np_fsm.npf_write_mem2~q\,
	combout => \eth_top_i|net_proc_i|Selector66~0_combout\);

-- Location: FF_X26_Y27_N13
\eth_top_i|net_proc_i|tx_bank_busy_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|tx_bank_busy_r[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|tx_bank_busy_r\(1));

-- Location: LCCOMB_X26_Y27_N10
\eth_top_i|net_proc_i|process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|process_0~3_combout\ = (\eth_top_i|eth_rx_ram_i|data_out_r\(2) & (!\eth_top_i|eth_rx_ram_i|data_out_r\(4) & (\eth_top_i|eth_rx_ram_i|data_out_r\(3) & \eth_top_i|eth_rx_ram_i|data_out_r\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_rx_ram_i|data_out_r\(2),
	datab => \eth_top_i|eth_rx_ram_i|data_out_r\(4),
	datac => \eth_top_i|eth_rx_ram_i|data_out_r\(3),
	datad => \eth_top_i|eth_rx_ram_i|data_out_r\(1),
	combout => \eth_top_i|net_proc_i|process_0~3_combout\);

-- Location: FF_X28_Y29_N7
\reg_file_i|echo_reg_x|eth_reg_rdata_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|echo_reg_x|eth_reg_rdata_r~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|echo_reg_x|eth_reg_rdata_r\(0));

-- Location: FF_X28_Y29_N9
\reg_file_i|spi_reg_num_reg_x|eth_reg_rdata_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|spi_reg_num_reg_x|eth_reg_rdata_r~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|spi_reg_num_reg_x|eth_reg_rdata_r\(0));

-- Location: FF_X28_Y29_N3
\reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r\(0));

-- Location: FF_X27_Y30_N5
\reg_file_i|control1_reg_x|eth_reg_rdata_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|control1_reg_x|eth_reg_rdata_r~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|control1_reg_x|eth_reg_rdata_r\(0));

-- Location: LCCOMB_X28_Y29_N12
\reg_file_i|eth_reg_rdata~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|eth_reg_rdata~0_combout\ = (\reg_file_i|echo_reg_x|eth_reg_rdata_r\(0)) # ((\reg_file_i|control1_reg_x|eth_reg_rdata_r\(0)) # ((\reg_file_i|spi_reg_num_reg_x|eth_reg_rdata_r\(0)) # (\reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_i|echo_reg_x|eth_reg_rdata_r\(0),
	datab => \reg_file_i|control1_reg_x|eth_reg_rdata_r\(0),
	datac => \reg_file_i|spi_reg_num_reg_x|eth_reg_rdata_r\(0),
	datad => \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r\(0),
	combout => \reg_file_i|eth_reg_rdata~0_combout\);

-- Location: LCCOMB_X28_Y29_N0
\reg_file_i|eth_reg_rdata~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|eth_reg_rdata~1_combout\ = (\reg_file_i|id_reg_x|eth_reg_rdata_r\(0)) # ((\reg_file_i|fw_ver_reg_x|eth_reg_rdata_r\(0)) # (\reg_file_i|eth_reg_rdata~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_i|id_reg_x|eth_reg_rdata_r\(0),
	datab => \reg_file_i|fw_ver_reg_x|eth_reg_rdata_r\(0),
	datad => \reg_file_i|eth_reg_rdata~0_combout\,
	combout => \reg_file_i|eth_reg_rdata~1_combout\);

-- Location: FF_X27_Y29_N17
\reg_file_i|echo_reg_x|eth_reg_rdata_r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|echo_reg_x|eth_reg_rdata_r~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|echo_reg_x|eth_reg_rdata_r\(4));

-- Location: FF_X26_Y28_N23
\reg_file_i|spi_reg_num_reg_x|eth_reg_rdata_r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|spi_reg_num_reg_x|eth_reg_rdata_r~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|spi_reg_num_reg_x|eth_reg_rdata_r\(4));

-- Location: FF_X27_Y29_N19
\reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r\(4));

-- Location: LCCOMB_X26_Y28_N12
\reg_file_i|eth_reg_rdata~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|eth_reg_rdata~2_combout\ = (\reg_file_i|spi_reg_num_reg_x|eth_reg_rdata_r\(4)) # ((\reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r\(4)) # (\reg_file_i|echo_reg_x|eth_reg_rdata_r\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_i|spi_reg_num_reg_x|eth_reg_rdata_r\(4),
	datac => \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r\(4),
	datad => \reg_file_i|echo_reg_x|eth_reg_rdata_r\(4),
	combout => \reg_file_i|eth_reg_rdata~2_combout\);

-- Location: FF_X27_Y29_N13
\reg_file_i|echo_reg_x|eth_reg_rdata_r[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|echo_reg_x|eth_reg_rdata_r~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|echo_reg_x|eth_reg_rdata_r\(8));

-- Location: FF_X28_Y29_N27
\reg_file_i|echo_reg_x|eth_reg_rdata_r[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|echo_reg_x|eth_reg_rdata_r~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|echo_reg_x|eth_reg_rdata_r\(12));

-- Location: FF_X28_Y29_N5
\reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r\(12));

-- Location: FF_X28_Y29_N31
\reg_file_i|hw_ver_reg_x|eth_reg_rdata_r[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|hw_ver_reg_x|eth_reg_rdata_r[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|hw_ver_reg_x|eth_reg_rdata_r\(12));

-- Location: LCCOMB_X28_Y29_N10
\reg_file_i|eth_reg_rdata~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|eth_reg_rdata~4_combout\ = (\reg_file_i|hw_ver_reg_x|eth_reg_rdata_r\(12)) # ((\reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r\(12)) # ((\reg_file_i|id_reg_x|eth_reg_rdata_r\(0)) # (\reg_file_i|echo_reg_x|eth_reg_rdata_r\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_i|hw_ver_reg_x|eth_reg_rdata_r\(12),
	datab => \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r\(12),
	datac => \reg_file_i|id_reg_x|eth_reg_rdata_r\(0),
	datad => \reg_file_i|echo_reg_x|eth_reg_rdata_r\(12),
	combout => \reg_file_i|eth_reg_rdata~4_combout\);

-- Location: LCCOMB_X23_Y25_N26
\eth_top_i|net_proc_i|Selector66~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector66~2_combout\ = (!\eth_top_i|net_proc_i|tx_ram_data_last_r~q\ & ((\eth_top_i|net_proc_i|np_fsm.npf_copyPacketInfo~q\) # ((\eth_top_i|net_proc_i|np_fsm.npf_read_mem6~q\) # (\eth_top_i|net_proc_i|np_fsm.npf_write_mem2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|tx_ram_data_last_r~q\,
	datab => \eth_top_i|net_proc_i|np_fsm.npf_copyPacketInfo~q\,
	datac => \eth_top_i|net_proc_i|np_fsm.npf_read_mem6~q\,
	datad => \eth_top_i|net_proc_i|np_fsm.npf_write_mem2~q\,
	combout => \eth_top_i|net_proc_i|Selector66~2_combout\);

-- Location: LCCOMB_X24_Y27_N20
\eth_top_i|net_proc_i|tx_ram_addr_r[5]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|tx_ram_addr_r[5]~0_combout\ = ((\eth_top_i|net_proc_i|info_words[3][0]~q\ & (!\eth_top_i|net_proc_i|info_words[3][1]~q\ & \eth_top_i|net_proc_i|com_id_high_bits_zero_r~q\))) # (!\eth_top_i|net_proc_i|np_fsm.npf_caseComID~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|info_words[3][0]~q\,
	datab => \eth_top_i|net_proc_i|np_fsm.npf_caseComID~q\,
	datac => \eth_top_i|net_proc_i|info_words[3][1]~q\,
	datad => \eth_top_i|net_proc_i|com_id_high_bits_zero_r~q\,
	combout => \eth_top_i|net_proc_i|tx_ram_addr_r[5]~0_combout\);

-- Location: LCCOMB_X24_Y25_N30
\eth_top_i|net_proc_i|Selector56~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector56~2_combout\ = (\eth_top_i|net_proc_i|Selector66~0_combout\ & ((\eth_top_i|net_proc_i|tx_ram_data_last_r~q\) # ((\eth_top_i|net_proc_i|np_fsm.npf_caseComID~q\ & \eth_top_i|net_proc_i|Selector56~0_combout\)))) # 
-- (!\eth_top_i|net_proc_i|Selector66~0_combout\ & (((\eth_top_i|net_proc_i|np_fsm.npf_caseComID~q\ & \eth_top_i|net_proc_i|Selector56~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|Selector66~0_combout\,
	datab => \eth_top_i|net_proc_i|tx_ram_data_last_r~q\,
	datac => \eth_top_i|net_proc_i|np_fsm.npf_caseComID~q\,
	datad => \eth_top_i|net_proc_i|Selector56~0_combout\,
	combout => \eth_top_i|net_proc_i|Selector56~2_combout\);

-- Location: FF_X27_Y30_N23
\reg_file_i|echo_reg_x|eth_reg_rdata_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|echo_reg_x|eth_reg_rdata_r~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|echo_reg_x|eth_reg_rdata_r\(1));

-- Location: FF_X27_Y30_N1
\reg_file_i|spi_reg_num_reg_x|eth_reg_rdata_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|spi_reg_num_reg_x|eth_reg_rdata_r~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|spi_reg_num_reg_x|eth_reg_rdata_r\(1));

-- Location: FF_X27_Y30_N3
\reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r\(1));

-- Location: LCCOMB_X27_Y30_N8
\reg_file_i|eth_reg_rdata~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|eth_reg_rdata~5_combout\ = (\reg_file_i|echo_reg_x|eth_reg_rdata_r\(1)) # ((\reg_file_i|spi_reg_num_reg_x|eth_reg_rdata_r\(1)) # (\reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_i|echo_reg_x|eth_reg_rdata_r\(1),
	datab => \reg_file_i|spi_reg_num_reg_x|eth_reg_rdata_r\(1),
	datac => \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r\(1),
	combout => \reg_file_i|eth_reg_rdata~5_combout\);

-- Location: FF_X27_Y29_N23
\reg_file_i|echo_reg_x|eth_reg_rdata_r[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|echo_reg_x|eth_reg_rdata_r~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|echo_reg_x|eth_reg_rdata_r\(9));

-- Location: FF_X29_Y30_N7
\reg_file_i|spi_reg_num_reg_x|eth_reg_rdata_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|spi_reg_num_reg_x|eth_reg_rdata_r~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|spi_reg_num_reg_x|eth_reg_rdata_r\(2));

-- Location: FF_X27_Y30_N29
\reg_file_i|echo_reg_x|eth_reg_rdata_r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|echo_reg_x|eth_reg_rdata_r~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|echo_reg_x|eth_reg_rdata_r\(6));

-- Location: FF_X27_Y30_N7
\reg_file_i|spi_reg_num_reg_x|eth_reg_rdata_r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|spi_reg_num_reg_x|eth_reg_rdata_r~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|spi_reg_num_reg_x|eth_reg_rdata_r\(6));

-- Location: FF_X27_Y30_N25
\reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r\(6));

-- Location: LCCOMB_X27_Y30_N26
\reg_file_i|eth_reg_rdata~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|eth_reg_rdata~10_combout\ = (\reg_file_i|spi_reg_num_reg_x|eth_reg_rdata_r\(6)) # ((\reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r\(6)) # (\reg_file_i|echo_reg_x|eth_reg_rdata_r\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_i|spi_reg_num_reg_x|eth_reg_rdata_r\(6),
	datab => \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r\(6),
	datad => \reg_file_i|echo_reg_x|eth_reg_rdata_r\(6),
	combout => \reg_file_i|eth_reg_rdata~10_combout\);

-- Location: FF_X27_Y29_N11
\reg_file_i|echo_reg_x|eth_reg_rdata_r[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|echo_reg_x|eth_reg_rdata_r~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|echo_reg_x|eth_reg_rdata_r\(10));

-- Location: FF_X27_Y29_N29
\reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r\(10));

-- Location: LCCOMB_X27_Y29_N4
\reg_file_i|eth_reg_rdata~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|eth_reg_rdata~11_combout\ = (\reg_file_i|echo_reg_x|eth_reg_rdata_r\(10)) # ((\reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r\(10)) # (\reg_file_i|id_reg_x|eth_reg_rdata_r\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_i|echo_reg_x|eth_reg_rdata_r\(10),
	datab => \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r\(10),
	datad => \reg_file_i|id_reg_x|eth_reg_rdata_r\(0),
	combout => \reg_file_i|eth_reg_rdata~11_combout\);

-- Location: FF_X25_Y30_N31
\reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r\(14));

-- Location: FF_X29_Y30_N11
\reg_file_i|echo_reg_x|eth_reg_rdata_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|echo_reg_x|eth_reg_rdata_r~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|echo_reg_x|eth_reg_rdata_r\(3));

-- Location: FF_X25_Y30_N25
\reg_file_i|echo_reg_x|eth_reg_rdata_r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|echo_reg_x|eth_reg_rdata_r~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|echo_reg_x|eth_reg_rdata_r\(7));

-- Location: FF_X25_Y30_N3
\reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r\(7));

-- Location: LCCOMB_X25_Y30_N4
\reg_file_i|eth_reg_rdata~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|eth_reg_rdata~14_combout\ = (\reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r\(7)) # ((\reg_file_i|echo_reg_x|eth_reg_rdata_r\(7)) # (\reg_file_i|id_reg_x|eth_reg_rdata_r\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r\(7),
	datab => \reg_file_i|echo_reg_x|eth_reg_rdata_r\(7),
	datac => \reg_file_i|id_reg_x|eth_reg_rdata_r\(0),
	combout => \reg_file_i|eth_reg_rdata~14_combout\);

-- Location: FF_X27_Y29_N31
\reg_file_i|echo_reg_x|eth_reg_rdata_r[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|echo_reg_x|eth_reg_rdata_r~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|echo_reg_x|eth_reg_rdata_r\(11));

-- Location: FF_X27_Y29_N9
\reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r\(11));

-- Location: LCCOMB_X27_Y29_N6
\reg_file_i|eth_reg_rdata~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|eth_reg_rdata~15_combout\ = (\reg_file_i|echo_reg_x|eth_reg_rdata_r\(11)) # ((\reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r\(11)) # (\reg_file_i|id_reg_x|eth_reg_rdata_r\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_i|echo_reg_x|eth_reg_rdata_r\(11),
	datac => \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r\(11),
	datad => \reg_file_i|id_reg_x|eth_reg_rdata_r\(0),
	combout => \reg_file_i|eth_reg_rdata~15_combout\);

-- Location: LCCOMB_X30_Y26_N8
\eth_top_i|net_proc_i|tx_bank_info_len_v~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|tx_bank_info_len_v~1_combout\ = (\eth_top_i|net_proc_i|tx_len_r\(2) & (((!\eth_top_i|net_proc_i|LessThan0~0_combout\ & \eth_top_i|net_proc_i|tx_len_r\(5))) # (!\eth_top_i|net_proc_i|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|LessThan0~0_combout\,
	datab => \eth_top_i|net_proc_i|tx_len_r\(2),
	datac => \eth_top_i|net_proc_i|tx_len_r\(5),
	datad => \eth_top_i|net_proc_i|LessThan0~1_combout\,
	combout => \eth_top_i|net_proc_i|tx_bank_info_len_v~1_combout\);

-- Location: LCCOMB_X30_Y26_N28
\eth_top_i|net_proc_i|tx_bank_info_len_v~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|tx_bank_info_len_v~4_combout\ = (\eth_top_i|net_proc_i|tx_len_r\(4) & (((!\eth_top_i|net_proc_i|LessThan0~0_combout\ & \eth_top_i|net_proc_i|tx_len_r\(5))) # (!\eth_top_i|net_proc_i|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|LessThan0~0_combout\,
	datab => \eth_top_i|net_proc_i|tx_len_r\(5),
	datac => \eth_top_i|net_proc_i|tx_len_r\(4),
	datad => \eth_top_i|net_proc_i|LessThan0~1_combout\,
	combout => \eth_top_i|net_proc_i|tx_bank_info_len_v~4_combout\);

-- Location: FF_X25_Y29_N27
\eth_top_i|net_proc_i|info_words[3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|info_words[3][14]~feeder_combout\,
	ena => \eth_top_i|net_proc_i|info_words[3][1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|info_words[3][14]~q\);

-- Location: FF_X25_Y29_N19
\eth_top_i|net_proc_i|info_words[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|info_words[3][9]~feeder_combout\,
	ena => \eth_top_i|net_proc_i|info_words[3][1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|info_words[3][9]~q\);

-- Location: FF_X25_Y29_N11
\eth_top_i|net_proc_i|info_words[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|info_words[3][5]~feeder_combout\,
	ena => \eth_top_i|net_proc_i|info_words[3][1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|info_words[3][5]~q\);

-- Location: FF_X24_Y30_N13
\eth_top_i|net_proc_i|info_words[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|info_words[3][3]~feeder_combout\,
	ena => \eth_top_i|net_proc_i|info_words[3][1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|info_words[3][3]~q\);

-- Location: FF_X24_Y30_N7
\eth_top_i|net_proc_i|info_words[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \eth_top_i|eth_rx_ram_i|data_out_r\(2),
	sload => VCC,
	ena => \eth_top_i|net_proc_i|info_words[3][1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|info_words[3][2]~q\);

-- Location: LCCOMB_X24_Y30_N6
\eth_top_i|net_proc_i|Equal7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Equal7~3_combout\ = (!\eth_top_i|net_proc_i|info_words[3][2]~q\ & !\eth_top_i|net_proc_i|info_words[3][3]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|net_proc_i|info_words[3][2]~q\,
	datad => \eth_top_i|net_proc_i|info_words[3][3]~q\,
	combout => \eth_top_i|net_proc_i|Equal7~3_combout\);

-- Location: LCCOMB_X23_Y25_N10
\eth_top_i|net_proc_i|Selector26~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector26~4_combout\ = (\eth_top_i|net_proc_i|rx_ram_re_dr\(2) & \eth_top_i|net_proc_i|np_fsm.npf_write_mem1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|rx_ram_re_dr\(2),
	datad => \eth_top_i|net_proc_i|np_fsm.npf_write_mem1~q\,
	combout => \eth_top_i|net_proc_i|Selector26~4_combout\);

-- Location: LCCOMB_X24_Y27_N4
\eth_top_i|net_proc_i|Selector35~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector35~0_combout\ = (\eth_top_i|net_proc_i|np_fsm.npf_caseComID~q\ & (\eth_top_i|net_proc_i|tx_ram_data_last_r~q\ & !\eth_top_i|net_proc_i|com_id_high_bits_zero_r~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|np_fsm.npf_caseComID~q\,
	datab => \eth_top_i|net_proc_i|tx_ram_data_last_r~q\,
	datad => \eth_top_i|net_proc_i|com_id_high_bits_zero_r~q\,
	combout => \eth_top_i|net_proc_i|Selector35~0_combout\);

-- Location: LCCOMB_X26_Y25_N12
\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~11_combout\ = (\eth_top_i|eth_rx_ram_i|data_out_r\(13) & (!\eth_top_i|eth_rx_ram_i|data_out_r\(14) & \eth_top_i|eth_rx_ram_i|data_out_r\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_rx_ram_i|data_out_r\(13),
	datac => \eth_top_i|eth_rx_ram_i|data_out_r\(14),
	datad => \eth_top_i|eth_rx_ram_i|data_out_r\(15),
	combout => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~11_combout\);

-- Location: LCCOMB_X27_Y27_N26
\eth_top_i|net_proc_i|Selector53~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector53~0_combout\ = (!\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~7_combout\ & (!\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~8_combout\ & (!\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~4_combout\ & \eth_top_i|net_proc_i|info_words[0][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~7_combout\,
	datab => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~8_combout\,
	datac => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~4_combout\,
	datad => \eth_top_i|net_proc_i|info_words[0][2]~q\,
	combout => \eth_top_i|net_proc_i|Selector53~0_combout\);

-- Location: LCCOMB_X28_Y27_N6
\eth_top_i|net_proc_i|Selector53~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector53~1_combout\ = ((!\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~12_combout\ & (!\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~3_combout\ & \eth_top_i|net_proc_i|Selector53~0_combout\))) # (!\eth_top_i|net_proc_i|Selector54~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~12_combout\,
	datab => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~3_combout\,
	datac => \eth_top_i|net_proc_i|Selector53~0_combout\,
	datad => \eth_top_i|net_proc_i|Selector54~0_combout\,
	combout => \eth_top_i|net_proc_i|Selector53~1_combout\);

-- Location: LCCOMB_X28_Y27_N10
\eth_top_i|net_proc_i|Selector53~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector53~2_combout\ = (\eth_top_i|net_proc_i|Selector53~1_combout\) # ((\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~9_combout\ & (\eth_top_i|net_proc_i|Add2~4_combout\ & !\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~9_combout\,
	datab => \eth_top_i|net_proc_i|Add2~4_combout\,
	datac => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~12_combout\,
	datad => \eth_top_i|net_proc_i|Selector53~1_combout\,
	combout => \eth_top_i|net_proc_i|Selector53~2_combout\);

-- Location: LCCOMB_X28_Y27_N18
\eth_top_i|net_proc_i|Add2~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add2~26_combout\ = (!\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~12_combout\ & ((\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~9_combout\ & ((\eth_top_i|net_proc_i|Add2~24_combout\))) # (!\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~9_combout\ & 
-- (\eth_top_i|net_proc_i|info_words[0][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~9_combout\,
	datab => \eth_top_i|net_proc_i|info_words[0][9]~q\,
	datac => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~12_combout\,
	datad => \eth_top_i|net_proc_i|Add2~24_combout\,
	combout => \eth_top_i|net_proc_i|Add2~26_combout\);

-- Location: FF_X26_Y29_N9
\reg_file_i|echo_reg_x|reg_value_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|echo_reg_x|reg_value_r[0]~feeder_combout\,
	ena => \reg_file_i|echo_reg_x|reg_value_r[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|echo_reg_x|reg_value_r\(0));

-- Location: LCCOMB_X28_Y29_N6
\reg_file_i|echo_reg_x|eth_reg_rdata_r~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|echo_reg_x|eth_reg_rdata_r~0_combout\ = (\reg_file_i|echo_reg_x|reg_value_r\(0) & \reg_file_i|echo_reg_x|reg_num_match_r~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_i|echo_reg_x|reg_value_r\(0),
	datac => \reg_file_i|echo_reg_x|reg_num_match_r~q\,
	combout => \reg_file_i|echo_reg_x|eth_reg_rdata_r~0_combout\);

-- Location: FF_X28_Y30_N25
\reg_file_i|spi_reg_num_reg_x|reg_value_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|spi_reg_num_reg_x|reg_value_r[0]~feeder_combout\,
	ena => \reg_file_i|spi_reg_num_reg_x|reg_value_r[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|spi_reg_num_reg_x|reg_value_r\(0));

-- Location: LCCOMB_X28_Y29_N8
\reg_file_i|spi_reg_num_reg_x|eth_reg_rdata_r~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|spi_reg_num_reg_x|eth_reg_rdata_r~0_combout\ = (\reg_file_i|spi_reg_num_reg_x|reg_num_match_r~q\ & \reg_file_i|spi_reg_num_reg_x|reg_value_r\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_file_i|spi_reg_num_reg_x|reg_num_match_r~q\,
	datac => \reg_file_i|spi_reg_num_reg_x|reg_value_r\(0),
	combout => \reg_file_i|spi_reg_num_reg_x|eth_reg_rdata_r~0_combout\);

-- Location: FF_X28_Y30_N19
\reg_file_i|spi_burst_len_reg_x|reg_value_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|spi_burst_len_reg_x|reg_value_r[0]~feeder_combout\,
	ena => \reg_file_i|spi_burst_len_reg_x|reg_value_r[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|spi_burst_len_reg_x|reg_value_r\(0));

-- Location: LCCOMB_X28_Y29_N2
\reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~0_combout\ = (\reg_file_i|spi_burst_len_reg_x|reg_num_match_r~q\ & \reg_file_i|spi_burst_len_reg_x|reg_value_r\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_file_i|spi_burst_len_reg_x|reg_num_match_r~q\,
	datac => \reg_file_i|spi_burst_len_reg_x|reg_value_r\(0),
	combout => \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~0_combout\);

-- Location: FF_X25_Y28_N23
\reg_file_i|control1_reg_x|reg_num_match_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|control1_reg_x|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|control1_reg_x|reg_num_match_r~q\);

-- Location: FF_X27_Y30_N11
\reg_file_i|control1_reg_x|reg_value_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|control1_reg_x|reg_value_r[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|control1_reg_x|reg_value_r\(0));

-- Location: LCCOMB_X27_Y30_N4
\reg_file_i|control1_reg_x|eth_reg_rdata_r~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|control1_reg_x|eth_reg_rdata_r~0_combout\ = (!\reg_file_i|control1_reg_x|reg_value_r\(0) & \reg_file_i|control1_reg_x|reg_num_match_r~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_i|control1_reg_x|reg_value_r\(0),
	datac => \reg_file_i|control1_reg_x|reg_num_match_r~q\,
	combout => \reg_file_i|control1_reg_x|eth_reg_rdata_r~0_combout\);

-- Location: FF_X26_Y29_N3
\reg_file_i|echo_reg_x|reg_value_r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|echo_reg_x|reg_value_r[4]~feeder_combout\,
	ena => \reg_file_i|echo_reg_x|reg_value_r[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|echo_reg_x|reg_value_r\(4));

-- Location: LCCOMB_X27_Y29_N16
\reg_file_i|echo_reg_x|eth_reg_rdata_r~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|echo_reg_x|eth_reg_rdata_r~1_combout\ = (\reg_file_i|echo_reg_x|reg_num_match_r~q\ & \reg_file_i|echo_reg_x|reg_value_r\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_file_i|echo_reg_x|reg_num_match_r~q\,
	datad => \reg_file_i|echo_reg_x|reg_value_r\(4),
	combout => \reg_file_i|echo_reg_x|eth_reg_rdata_r~1_combout\);

-- Location: FF_X28_Y30_N21
\reg_file_i|spi_reg_num_reg_x|reg_value_r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|spi_reg_num_reg_x|reg_value_r[4]~feeder_combout\,
	ena => \reg_file_i|spi_reg_num_reg_x|reg_value_r[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|spi_reg_num_reg_x|reg_value_r\(4));

-- Location: LCCOMB_X26_Y28_N22
\reg_file_i|spi_reg_num_reg_x|eth_reg_rdata_r~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|spi_reg_num_reg_x|eth_reg_rdata_r~1_combout\ = (\reg_file_i|spi_reg_num_reg_x|reg_num_match_r~q\ & \reg_file_i|spi_reg_num_reg_x|reg_value_r\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_file_i|spi_reg_num_reg_x|reg_num_match_r~q\,
	datad => \reg_file_i|spi_reg_num_reg_x|reg_value_r\(4),
	combout => \reg_file_i|spi_reg_num_reg_x|eth_reg_rdata_r~1_combout\);

-- Location: FF_X28_Y30_N31
\reg_file_i|spi_burst_len_reg_x|reg_value_r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|spi_burst_len_reg_x|reg_value_r[4]~feeder_combout\,
	ena => \reg_file_i|spi_burst_len_reg_x|reg_value_r[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|spi_burst_len_reg_x|reg_value_r\(4));

-- Location: LCCOMB_X27_Y29_N18
\reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~1_combout\ = (\reg_file_i|spi_burst_len_reg_x|reg_value_r\(4) & \reg_file_i|spi_burst_len_reg_x|reg_num_match_r~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_file_i|spi_burst_len_reg_x|reg_value_r\(4),
	datad => \reg_file_i|spi_burst_len_reg_x|reg_num_match_r~q\,
	combout => \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~1_combout\);

-- Location: FF_X26_Y29_N13
\reg_file_i|echo_reg_x|reg_value_r[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|echo_reg_x|reg_value_r[8]~feeder_combout\,
	ena => \reg_file_i|echo_reg_x|reg_value_r[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|echo_reg_x|reg_value_r\(8));

-- Location: LCCOMB_X27_Y29_N12
\reg_file_i|echo_reg_x|eth_reg_rdata_r~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|echo_reg_x|eth_reg_rdata_r~2_combout\ = (\reg_file_i|echo_reg_x|reg_num_match_r~q\ & \reg_file_i|echo_reg_x|reg_value_r\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_file_i|echo_reg_x|reg_num_match_r~q\,
	datad => \reg_file_i|echo_reg_x|reg_value_r\(8),
	combout => \reg_file_i|echo_reg_x|eth_reg_rdata_r~2_combout\);

-- Location: FF_X26_Y29_N15
\reg_file_i|echo_reg_x|reg_value_r[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|echo_reg_x|reg_value_r[12]~feeder_combout\,
	ena => \reg_file_i|echo_reg_x|reg_value_r[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|echo_reg_x|reg_value_r\(12));

-- Location: LCCOMB_X28_Y29_N26
\reg_file_i|echo_reg_x|eth_reg_rdata_r~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|echo_reg_x|eth_reg_rdata_r~3_combout\ = (\reg_file_i|echo_reg_x|reg_num_match_r~q\ & \reg_file_i|echo_reg_x|reg_value_r\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_file_i|echo_reg_x|reg_num_match_r~q\,
	datad => \reg_file_i|echo_reg_x|reg_value_r\(12),
	combout => \reg_file_i|echo_reg_x|eth_reg_rdata_r~3_combout\);

-- Location: FF_X28_Y30_N3
\reg_file_i|spi_burst_len_reg_x|reg_value_r[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|spi_burst_len_reg_x|reg_value_r[12]~feeder_combout\,
	ena => \reg_file_i|spi_burst_len_reg_x|reg_value_r[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|spi_burst_len_reg_x|reg_value_r\(12));

-- Location: LCCOMB_X28_Y29_N4
\reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~3_combout\ = (\reg_file_i|spi_burst_len_reg_x|reg_num_match_r~q\ & \reg_file_i|spi_burst_len_reg_x|reg_value_r\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_file_i|spi_burst_len_reg_x|reg_num_match_r~q\,
	datad => \reg_file_i|spi_burst_len_reg_x|reg_value_r\(12),
	combout => \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~3_combout\);

-- Location: FF_X28_Y29_N15
\reg_file_i|hw_ver_reg_x|reg_num_match_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|hw_ver_reg_x|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|hw_ver_reg_x|reg_num_match_r~q\);

-- Location: FF_X26_Y29_N1
\reg_file_i|echo_reg_x|reg_value_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|echo_reg_x|reg_value_r[1]~feeder_combout\,
	ena => \reg_file_i|echo_reg_x|reg_value_r[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|echo_reg_x|reg_value_r\(1));

-- Location: LCCOMB_X27_Y30_N22
\reg_file_i|echo_reg_x|eth_reg_rdata_r~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|echo_reg_x|eth_reg_rdata_r~4_combout\ = (\reg_file_i|echo_reg_x|reg_num_match_r~q\ & \reg_file_i|echo_reg_x|reg_value_r\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_file_i|echo_reg_x|reg_num_match_r~q\,
	datac => \reg_file_i|echo_reg_x|reg_value_r\(1),
	combout => \reg_file_i|echo_reg_x|eth_reg_rdata_r~4_combout\);

-- Location: FF_X28_Y30_N29
\reg_file_i|spi_reg_num_reg_x|reg_value_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|spi_reg_num_reg_x|reg_value_r[1]~feeder_combout\,
	ena => \reg_file_i|spi_reg_num_reg_x|reg_value_r[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|spi_reg_num_reg_x|reg_value_r\(1));

-- Location: LCCOMB_X27_Y30_N0
\reg_file_i|spi_reg_num_reg_x|eth_reg_rdata_r~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|spi_reg_num_reg_x|eth_reg_rdata_r~2_combout\ = (\reg_file_i|spi_reg_num_reg_x|reg_num_match_r~q\ & \reg_file_i|spi_reg_num_reg_x|reg_value_r\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_i|spi_reg_num_reg_x|reg_num_match_r~q\,
	datad => \reg_file_i|spi_reg_num_reg_x|reg_value_r\(1),
	combout => \reg_file_i|spi_reg_num_reg_x|eth_reg_rdata_r~2_combout\);

-- Location: FF_X27_Y30_N13
\reg_file_i|spi_burst_len_reg_x|reg_value_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|spi_burst_len_reg_x|reg_value_r[1]~feeder_combout\,
	ena => \reg_file_i|spi_burst_len_reg_x|reg_value_r[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|spi_burst_len_reg_x|reg_value_r\(1));

-- Location: LCCOMB_X27_Y30_N2
\reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~4_combout\ = (\reg_file_i|spi_burst_len_reg_x|reg_value_r\(1) & \reg_file_i|spi_burst_len_reg_x|reg_num_match_r~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_i|spi_burst_len_reg_x|reg_value_r\(1),
	datac => \reg_file_i|spi_burst_len_reg_x|reg_num_match_r~q\,
	combout => \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~4_combout\);

-- Location: FF_X26_Y29_N21
\reg_file_i|echo_reg_x|reg_value_r[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|echo_reg_x|reg_value_r[9]~feeder_combout\,
	ena => \reg_file_i|echo_reg_x|reg_value_r[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|echo_reg_x|reg_value_r\(9));

-- Location: LCCOMB_X27_Y29_N22
\reg_file_i|echo_reg_x|eth_reg_rdata_r~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|echo_reg_x|eth_reg_rdata_r~6_combout\ = (\reg_file_i|echo_reg_x|reg_num_match_r~q\ & \reg_file_i|echo_reg_x|reg_value_r\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_file_i|echo_reg_x|reg_num_match_r~q\,
	datad => \reg_file_i|echo_reg_x|reg_value_r\(9),
	combout => \reg_file_i|echo_reg_x|eth_reg_rdata_r~6_combout\);

-- Location: FF_X27_Y29_N27
\reg_file_i|spi_burst_len_reg_x|reg_value_r[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|spi_burst_len_reg_x|reg_value_r[9]~feeder_combout\,
	ena => \reg_file_i|spi_burst_len_reg_x|reg_value_r[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|spi_burst_len_reg_x|reg_value_r\(9));

-- Location: FF_X25_Y31_N13
\mem_file_i|adc_brd_ram_sel_ddr\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mem_file_i|adc_brd_ram_sel_ddr~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_file_i|adc_brd_ram_sel_ddr~q\);

-- Location: FF_X28_Y30_N17
\reg_file_i|spi_reg_num_reg_x|reg_value_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|spi_reg_num_reg_x|reg_value_r[2]~feeder_combout\,
	ena => \reg_file_i|spi_reg_num_reg_x|reg_value_r[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|spi_reg_num_reg_x|reg_value_r\(2));

-- Location: LCCOMB_X29_Y30_N6
\reg_file_i|spi_reg_num_reg_x|eth_reg_rdata_r~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|spi_reg_num_reg_x|eth_reg_rdata_r~4_combout\ = (\reg_file_i|spi_reg_num_reg_x|reg_num_match_r~q\ & \reg_file_i|spi_reg_num_reg_x|reg_value_r\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_i|spi_reg_num_reg_x|reg_num_match_r~q\,
	datac => \reg_file_i|spi_reg_num_reg_x|reg_value_r\(2),
	combout => \reg_file_i|spi_reg_num_reg_x|eth_reg_rdata_r~4_combout\);

-- Location: FF_X26_Y30_N19
\reg_file_i|echo_reg_x|reg_value_r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|echo_reg_x|reg_value_r[6]~feeder_combout\,
	ena => \reg_file_i|echo_reg_x|reg_value_r[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|echo_reg_x|reg_value_r\(6));

-- Location: LCCOMB_X27_Y30_N28
\reg_file_i|echo_reg_x|eth_reg_rdata_r~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|echo_reg_x|eth_reg_rdata_r~9_combout\ = (\reg_file_i|echo_reg_x|reg_num_match_r~q\ & \reg_file_i|echo_reg_x|reg_value_r\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_file_i|echo_reg_x|reg_num_match_r~q\,
	datad => \reg_file_i|echo_reg_x|reg_value_r\(6),
	combout => \reg_file_i|echo_reg_x|eth_reg_rdata_r~9_combout\);

-- Location: FF_X28_Y30_N5
\reg_file_i|spi_reg_num_reg_x|reg_value_r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|spi_reg_num_reg_x|reg_value_r[6]~feeder_combout\,
	ena => \reg_file_i|spi_reg_num_reg_x|reg_value_r[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|spi_reg_num_reg_x|reg_value_r\(6));

-- Location: LCCOMB_X27_Y30_N6
\reg_file_i|spi_reg_num_reg_x|eth_reg_rdata_r~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|spi_reg_num_reg_x|eth_reg_rdata_r~5_combout\ = (\reg_file_i|spi_reg_num_reg_x|reg_num_match_r~q\ & \reg_file_i|spi_reg_num_reg_x|reg_value_r\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_i|spi_reg_num_reg_x|reg_num_match_r~q\,
	datad => \reg_file_i|spi_reg_num_reg_x|reg_value_r\(6),
	combout => \reg_file_i|spi_reg_num_reg_x|eth_reg_rdata_r~5_combout\);

-- Location: FF_X27_Y30_N15
\reg_file_i|spi_burst_len_reg_x|reg_value_r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|spi_burst_len_reg_x|reg_value_r[6]~feeder_combout\,
	ena => \reg_file_i|spi_burst_len_reg_x|reg_value_r[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|spi_burst_len_reg_x|reg_value_r\(6));

-- Location: LCCOMB_X27_Y30_N24
\reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~9_combout\ = (\reg_file_i|spi_burst_len_reg_x|reg_num_match_r~q\ & \reg_file_i|spi_burst_len_reg_x|reg_value_r\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_file_i|spi_burst_len_reg_x|reg_num_match_r~q\,
	datad => \reg_file_i|spi_burst_len_reg_x|reg_value_r\(6),
	combout => \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~9_combout\);

-- Location: FF_X26_Y30_N21
\reg_file_i|echo_reg_x|reg_value_r[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|echo_reg_x|reg_value_r[10]~feeder_combout\,
	ena => \reg_file_i|echo_reg_x|reg_value_r[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|echo_reg_x|reg_value_r\(10));

-- Location: LCCOMB_X27_Y29_N10
\reg_file_i|echo_reg_x|eth_reg_rdata_r~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|echo_reg_x|eth_reg_rdata_r~10_combout\ = (\reg_file_i|echo_reg_x|reg_num_match_r~q\ & \reg_file_i|echo_reg_x|reg_value_r\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_file_i|echo_reg_x|reg_num_match_r~q\,
	datad => \reg_file_i|echo_reg_x|reg_value_r\(10),
	combout => \reg_file_i|echo_reg_x|eth_reg_rdata_r~10_combout\);

-- Location: FF_X27_Y29_N21
\reg_file_i|spi_burst_len_reg_x|reg_value_r[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|spi_burst_len_reg_x|reg_value_r[10]~feeder_combout\,
	ena => \reg_file_i|spi_burst_len_reg_x|reg_value_r[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|spi_burst_len_reg_x|reg_value_r\(10));

-- Location: LCCOMB_X27_Y29_N28
\reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~10_combout\ = (\reg_file_i|spi_burst_len_reg_x|reg_value_r\(10) & \reg_file_i|spi_burst_len_reg_x|reg_num_match_r~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_file_i|spi_burst_len_reg_x|reg_value_r\(10),
	datad => \reg_file_i|spi_burst_len_reg_x|reg_num_match_r~q\,
	combout => \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~10_combout\);

-- Location: FF_X25_Y30_N27
\reg_file_i|spi_burst_len_reg_x|reg_value_r[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|spi_burst_len_reg_x|reg_value_r[14]~feeder_combout\,
	ena => \reg_file_i|spi_burst_len_reg_x|reg_value_r[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|spi_burst_len_reg_x|reg_value_r\(14));

-- Location: LCCOMB_X25_Y30_N30
\reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~11_combout\ = (\reg_file_i|spi_burst_len_reg_x|reg_num_match_r~q\ & \reg_file_i|spi_burst_len_reg_x|reg_value_r\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_file_i|spi_burst_len_reg_x|reg_num_match_r~q\,
	datad => \reg_file_i|spi_burst_len_reg_x|reg_value_r\(14),
	combout => \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~11_combout\);

-- Location: FF_X26_Y30_N17
\reg_file_i|echo_reg_x|reg_value_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|echo_reg_x|reg_value_r[3]~feeder_combout\,
	ena => \reg_file_i|echo_reg_x|reg_value_r[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|echo_reg_x|reg_value_r\(3));

-- Location: LCCOMB_X29_Y30_N10
\reg_file_i|echo_reg_x|eth_reg_rdata_r~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|echo_reg_x|eth_reg_rdata_r~12_combout\ = (\reg_file_i|echo_reg_x|reg_num_match_r~q\ & \reg_file_i|echo_reg_x|reg_value_r\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_file_i|echo_reg_x|reg_num_match_r~q\,
	datad => \reg_file_i|echo_reg_x|reg_value_r\(3),
	combout => \reg_file_i|echo_reg_x|eth_reg_rdata_r~12_combout\);

-- Location: FF_X26_Y30_N27
\reg_file_i|echo_reg_x|reg_value_r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|echo_reg_x|reg_value_r[7]~feeder_combout\,
	ena => \reg_file_i|echo_reg_x|reg_value_r[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|echo_reg_x|reg_value_r\(7));

-- Location: LCCOMB_X25_Y30_N24
\reg_file_i|echo_reg_x|eth_reg_rdata_r~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|echo_reg_x|eth_reg_rdata_r~13_combout\ = (\reg_file_i|echo_reg_x|reg_num_match_r~q\ & \reg_file_i|echo_reg_x|reg_value_r\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_i|echo_reg_x|reg_num_match_r~q\,
	datad => \reg_file_i|echo_reg_x|reg_value_r\(7),
	combout => \reg_file_i|echo_reg_x|eth_reg_rdata_r~13_combout\);

-- Location: FF_X25_Y30_N13
\reg_file_i|spi_burst_len_reg_x|reg_value_r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|spi_burst_len_reg_x|reg_value_r[7]~feeder_combout\,
	ena => \reg_file_i|spi_burst_len_reg_x|reg_value_r[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|spi_burst_len_reg_x|reg_value_r\(7));

-- Location: LCCOMB_X25_Y30_N2
\reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~13_combout\ = (\reg_file_i|spi_burst_len_reg_x|reg_value_r\(7) & \reg_file_i|spi_burst_len_reg_x|reg_num_match_r~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_i|spi_burst_len_reg_x|reg_value_r\(7),
	datac => \reg_file_i|spi_burst_len_reg_x|reg_num_match_r~q\,
	combout => \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~13_combout\);

-- Location: FF_X26_Y30_N5
\reg_file_i|echo_reg_x|reg_value_r[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|echo_reg_x|reg_value_r[11]~feeder_combout\,
	ena => \reg_file_i|echo_reg_x|reg_value_r[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|echo_reg_x|reg_value_r\(11));

-- Location: LCCOMB_X27_Y29_N30
\reg_file_i|echo_reg_x|eth_reg_rdata_r~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|echo_reg_x|eth_reg_rdata_r~14_combout\ = (\reg_file_i|echo_reg_x|reg_value_r\(11) & \reg_file_i|echo_reg_x|reg_num_match_r~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_i|echo_reg_x|reg_value_r\(11),
	datac => \reg_file_i|echo_reg_x|reg_num_match_r~q\,
	combout => \reg_file_i|echo_reg_x|eth_reg_rdata_r~14_combout\);

-- Location: FF_X27_Y29_N15
\reg_file_i|spi_burst_len_reg_x|reg_value_r[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|spi_burst_len_reg_x|reg_value_r[11]~feeder_combout\,
	ena => \reg_file_i|spi_burst_len_reg_x|reg_value_r[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|spi_burst_len_reg_x|reg_value_r\(11));

-- Location: LCCOMB_X27_Y29_N8
\reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~14_combout\ = (\reg_file_i|spi_burst_len_reg_x|reg_num_match_r~q\ & \reg_file_i|spi_burst_len_reg_x|reg_value_r\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_file_i|spi_burst_len_reg_x|reg_num_match_r~q\,
	datad => \reg_file_i|spi_burst_len_reg_x|reg_value_r\(11),
	combout => \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~14_combout\);

-- Location: FF_X26_Y30_N31
\reg_file_i|echo_reg_x|reg_value_r[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|echo_reg_x|reg_value_r[15]~feeder_combout\,
	ena => \reg_file_i|echo_reg_x|reg_value_r[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|echo_reg_x|reg_value_r\(15));

-- Location: FF_X24_Y28_N27
\eth_top_i|net_proc_i|rx_ram_cnt_r[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Selector36~0_combout\,
	ena => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|rx_ram_cnt_r\(9));

-- Location: FF_X26_Y29_N25
\eth_top_i|net_proc_i|info_words[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|info_words[1][0]~feeder_combout\,
	ena => \eth_top_i|net_proc_i|Mux66~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|info_words[1][0]~q\);

-- Location: FF_X25_Y29_N31
\eth_top_i|net_proc_i|info_words[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|info_words[2][7]~feeder_combout\,
	ena => \eth_top_i|net_proc_i|Mux66~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|info_words[2][7]~q\);

-- Location: FF_X25_Y28_N19
\eth_top_i|net_proc_i|info_words[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \eth_top_i|eth_rx_ram_i|data_out_r\(10),
	sload => VCC,
	ena => \eth_top_i|net_proc_i|Mux66~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|info_words[2][10]~q\);

-- Location: FF_X25_Y29_N5
\eth_top_i|net_proc_i|info_words[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|info_words[2][11]~feeder_combout\,
	ena => \eth_top_i|net_proc_i|Mux66~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|info_words[2][11]~q\);

-- Location: FF_X25_Y28_N21
\eth_top_i|net_proc_i|info_words[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|info_words[2][12]~feeder_combout\,
	ena => \eth_top_i|net_proc_i|Mux66~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|info_words[2][12]~q\);

-- Location: FF_X25_Y28_N7
\eth_top_i|net_proc_i|info_words[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \eth_top_i|eth_rx_ram_i|data_out_r\(13),
	sload => VCC,
	ena => \eth_top_i|net_proc_i|Mux66~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|info_words[2][13]~q\);

-- Location: LCCOMB_X25_Y28_N18
\reg_file_i|control1_reg_x|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|control1_reg_x|Equal0~2_combout\ = (!\eth_top_i|net_proc_i|info_words[2][11]~q\ & (!\eth_top_i|net_proc_i|info_words[2][12]~q\ & (!\eth_top_i|net_proc_i|info_words[2][10]~q\ & !\eth_top_i|net_proc_i|info_words[2][13]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|info_words[2][11]~q\,
	datab => \eth_top_i|net_proc_i|info_words[2][12]~q\,
	datac => \eth_top_i|net_proc_i|info_words[2][10]~q\,
	datad => \eth_top_i|net_proc_i|info_words[2][13]~q\,
	combout => \reg_file_i|control1_reg_x|Equal0~2_combout\);

-- Location: LCCOMB_X25_Y28_N22
\reg_file_i|control1_reg_x|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|control1_reg_x|Equal0~4_combout\ = (!\eth_top_i|net_proc_i|info_words[2][0]~q\ & (!\eth_top_i|net_proc_i|info_words[2][4]~q\ & (\eth_top_i|net_proc_i|info_words[2][14]~q\ & \reg_file_i|control1_reg_x|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|info_words[2][0]~q\,
	datab => \eth_top_i|net_proc_i|info_words[2][4]~q\,
	datac => \eth_top_i|net_proc_i|info_words[2][14]~q\,
	datad => \reg_file_i|control1_reg_x|Equal0~3_combout\,
	combout => \reg_file_i|control1_reg_x|Equal0~4_combout\);

-- Location: LCCOMB_X27_Y30_N10
\reg_file_i|control1_reg_x|reg_value_r[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|control1_reg_x|reg_value_r[0]~0_combout\ = (\reg_file_i|control1_reg_x|eth_reg_we_r~q\ & ((\reg_file_i|control1_reg_x|reg_num_match_r~q\ & (!\eth_top_i|net_proc_i|info_words[1][0]~q\)) # (!\reg_file_i|control1_reg_x|reg_num_match_r~q\ & 
-- ((\reg_file_i|control1_reg_x|reg_value_r\(0)))))) # (!\reg_file_i|control1_reg_x|eth_reg_we_r~q\ & (((\reg_file_i|control1_reg_x|reg_value_r\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|info_words[1][0]~q\,
	datab => \reg_file_i|control1_reg_x|eth_reg_we_r~q\,
	datac => \reg_file_i|control1_reg_x|reg_value_r\(0),
	datad => \reg_file_i|control1_reg_x|reg_num_match_r~q\,
	combout => \reg_file_i|control1_reg_x|reg_value_r[0]~0_combout\);

-- Location: LCCOMB_X25_Y28_N6
\reg_file_i|fw_ver_reg_x|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|fw_ver_reg_x|Equal0~2_combout\ = (\eth_top_i|net_proc_i|info_words[2][11]~q\ & (\eth_top_i|net_proc_i|info_words[2][12]~q\ & (\eth_top_i|net_proc_i|info_words[2][13]~q\ & \eth_top_i|net_proc_i|info_words[2][10]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|info_words[2][11]~q\,
	datab => \eth_top_i|net_proc_i|info_words[2][12]~q\,
	datac => \eth_top_i|net_proc_i|info_words[2][13]~q\,
	datad => \eth_top_i|net_proc_i|info_words[2][10]~q\,
	combout => \reg_file_i|fw_ver_reg_x|Equal0~2_combout\);

-- Location: FF_X26_Y29_N19
\eth_top_i|net_proc_i|info_words[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|info_words[1][4]~feeder_combout\,
	ena => \eth_top_i|net_proc_i|Mux66~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|info_words[1][4]~q\);

-- Location: FF_X26_Y29_N23
\eth_top_i|net_proc_i|info_words[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|info_words[1][12]~feeder_combout\,
	ena => \eth_top_i|net_proc_i|Mux66~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|info_words[1][12]~q\);

-- Location: LCCOMB_X28_Y29_N14
\reg_file_i|hw_ver_reg_x|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|hw_ver_reg_x|Equal0~0_combout\ = (!\eth_top_i|net_proc_i|info_words[2][1]~q\ & (\eth_top_i|net_proc_i|info_words[2][0]~q\ & \reg_file_i|fw_ver_reg_x|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|info_words[2][1]~q\,
	datac => \eth_top_i|net_proc_i|info_words[2][0]~q\,
	datad => \reg_file_i|fw_ver_reg_x|Equal0~4_combout\,
	combout => \reg_file_i|hw_ver_reg_x|Equal0~0_combout\);

-- Location: FF_X26_Y29_N17
\eth_top_i|net_proc_i|info_words[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|info_words[1][1]~feeder_combout\,
	ena => \eth_top_i|net_proc_i|Mux66~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|info_words[1][1]~q\);

-- Location: FF_X26_Y29_N5
\eth_top_i|net_proc_i|info_words[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|info_words[1][9]~feeder_combout\,
	ena => \eth_top_i|net_proc_i|Mux66~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|info_words[1][9]~q\);

-- Location: FF_X25_Y31_N15
\mem_file_i|adc_brd_ram_sel_dr\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mem_file_i|adc_brd_ram_sel_dr~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_file_i|adc_brd_ram_sel_dr~q\);

-- Location: FF_X26_Y30_N3
\eth_top_i|net_proc_i|info_words[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|info_words[1][6]~feeder_combout\,
	ena => \eth_top_i|net_proc_i|Mux66~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|info_words[1][6]~q\);

-- Location: FF_X26_Y30_N29
\eth_top_i|net_proc_i|info_words[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|info_words[1][10]~feeder_combout\,
	ena => \eth_top_i|net_proc_i|Mux66~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|info_words[1][10]~q\);

-- Location: FF_X26_Y30_N11
\eth_top_i|net_proc_i|info_words[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|info_words[1][7]~feeder_combout\,
	ena => \eth_top_i|net_proc_i|Mux66~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|info_words[1][7]~q\);

-- Location: FF_X26_Y30_N13
\eth_top_i|net_proc_i|info_words[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|info_words[1][11]~feeder_combout\,
	ena => \eth_top_i|net_proc_i|Mux66~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|info_words[1][11]~q\);

-- Location: LCCOMB_X24_Y28_N10
\eth_top_i|net_proc_i|rx_ram_cnt_r[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~5_combout\ = (\eth_top_i|net_proc_i|np_fsm.npf_copyDestMAC~q\ & (((!\eth_top_i|net_proc_i|rx_ram_data_last_r~q\)))) # (!\eth_top_i|net_proc_i|np_fsm.npf_copyDestMAC~q\ & 
-- (!\eth_top_i|net_proc_i|np_fsm.npf_checkProtocolID~q\ & (!\eth_top_i|net_proc_i|np_fsm.npf_caseComID~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|np_fsm.npf_checkProtocolID~q\,
	datab => \eth_top_i|net_proc_i|np_fsm.npf_caseComID~q\,
	datac => \eth_top_i|net_proc_i|np_fsm.npf_copyDestMAC~q\,
	datad => \eth_top_i|net_proc_i|rx_ram_data_last_r~q\,
	combout => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~5_combout\);

-- Location: LCCOMB_X24_Y28_N26
\eth_top_i|net_proc_i|Selector36~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector36~0_combout\ = (\eth_top_i|net_proc_i|rx_ram_cnt_r[2]~4_combout\ & (\eth_top_i|eth_rx_ram_i|data_out_r\(9))) # (!\eth_top_i|net_proc_i|rx_ram_cnt_r[2]~4_combout\ & (((\eth_top_i|net_proc_i|rx_ram_cnt_r[2]~3_combout\ & 
-- \eth_top_i|net_proc_i|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_rx_ram_i|data_out_r\(9),
	datab => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~3_combout\,
	datac => \eth_top_i|net_proc_i|Add0~18_combout\,
	datad => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~4_combout\,
	combout => \eth_top_i|net_proc_i|Selector36~0_combout\);

-- Location: LCCOMB_X47_Y17_N30
\eth_top_i|eth_rx_i|update_bank_info_s~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|update_bank_info_s~2_combout\ = (\eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(4) & (!\eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(5) & (\eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(3) & !\eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(4),
	datab => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(5),
	datac => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(3),
	datad => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(6),
	combout => \eth_top_i|eth_rx_i|update_bank_info_s~2_combout\);

-- Location: LCCOMB_X47_Y17_N22
\eth_top_i|eth_rx_i|update_bank_info_s~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|update_bank_info_s~6_combout\ = (!\eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(17) & (!\eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(19) & (!\eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(20) & \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(17),
	datab => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(19),
	datac => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(20),
	datad => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(18),
	combout => \eth_top_i|eth_rx_i|update_bank_info_s~6_combout\);

-- Location: FF_X23_Y26_N7
\eth_top_i|net_proc_i|rx_ram_re_dr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|rx_ram_re_dr[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|rx_ram_re_dr\(0));

-- Location: LCCOMB_X49_Y17_N22
\eth_top_i|eth_rx_i|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|Selector3~0_combout\ = (\eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~q\ & (\eth_top_i|eth_pins_i|rxd_r\(3) & \eth_top_i|eth_rx_i|comb_proc~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~q\,
	datab => \eth_top_i|eth_pins_i|rxd_r\(3),
	datad => \eth_top_i|eth_rx_i|comb_proc~0_combout\,
	combout => \eth_top_i|eth_rx_i|Selector3~0_combout\);

-- Location: LCCOMB_X23_Y27_N30
\eth_top_i|net_proc_i|Selector11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector11~0_combout\ = (\eth_top_i|net_proc_i|np_fsm.npf_idle~q\ & (!\eth_top_i|net_proc_i|np_fsm.npf_checkProtocolID~q\ & ((!\eth_top_i|net_proc_i|rx_ram_data_last_r~q\) # (!\eth_top_i|net_proc_i|np_fsm.npf_copyDestMAC~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|np_fsm.npf_idle~q\,
	datab => \eth_top_i|net_proc_i|np_fsm.npf_copyDestMAC~q\,
	datac => \eth_top_i|net_proc_i|np_fsm.npf_checkProtocolID~q\,
	datad => \eth_top_i|net_proc_i|rx_ram_data_last_r~q\,
	combout => \eth_top_i|net_proc_i|Selector11~0_combout\);

-- Location: FF_X25_Y31_N1
\mem_file_i|adc_brd_ram_sel_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mem_file_i|adc_brd_ram_sel_r~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_file_i|adc_brd_ram_sel_r~q\);

-- Location: LCCOMB_X48_Y17_N6
\eth_top_i|eth_rx_i|crc32nibble_i|crc_r~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~20_combout\ = \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(10) $ (\eth_top_i|eth_rx_i|crc32nibble_i|crc_r~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(10),
	datad => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~19_combout\,
	combout => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~20_combout\);

-- Location: FF_X23_Y26_N25
\eth_top_i|net_proc_i|rx_ram_re_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Selector15~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|rx_ram_re_r~q\);

-- Location: LCCOMB_X49_Y17_N10
\eth_top_i|eth_rx_i|update_bank_info_s~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|update_bank_info_s~11_combout\ = (\eth_top_i|eth_rx_i|eth_rx_sm.st_rx_data~q\ & !\eth_top_i|eth_pins_i|rx_dv_r~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|eth_rx_i|eth_rx_sm.st_rx_data~q\,
	datad => \eth_top_i|eth_pins_i|rx_dv_r~q\,
	combout => \eth_top_i|eth_rx_i|update_bank_info_s~11_combout\);

-- Location: LCCOMB_X25_Y31_N2
\mem_file_i|adc_brd_ram_sel_r~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_file_i|adc_brd_ram_sel_r~0_combout\ = (!\eth_top_i|net_proc_i|mem_addr_r\(11) & (!\eth_top_i|net_proc_i|mem_addr_r\(10) & (\eth_top_i|net_proc_i|mem_addr_r\(20) & !\eth_top_i|net_proc_i|mem_addr_r\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|mem_addr_r\(11),
	datab => \eth_top_i|net_proc_i|mem_addr_r\(10),
	datac => \eth_top_i|net_proc_i|mem_addr_r\(20),
	datad => \eth_top_i|net_proc_i|mem_addr_r\(9),
	combout => \mem_file_i|adc_brd_ram_sel_r~0_combout\);

-- Location: LCCOMB_X25_Y31_N20
\mem_file_i|adc_brd_ram_sel_r~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_file_i|adc_brd_ram_sel_r~1_combout\ = (\eth_top_i|net_proc_i|mem_addr_r\(21) & (!\eth_top_i|net_proc_i|mem_addr_r\(20) & (!\eth_top_i|net_proc_i|mem_addr_r\(16) & !\eth_top_i|net_proc_i|mem_addr_r\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|mem_addr_r\(21),
	datab => \eth_top_i|net_proc_i|mem_addr_r\(20),
	datac => \eth_top_i|net_proc_i|mem_addr_r\(16),
	datad => \eth_top_i|net_proc_i|mem_addr_r\(17),
	combout => \mem_file_i|adc_brd_ram_sel_r~1_combout\);

-- Location: LCCOMB_X25_Y31_N22
\mem_file_i|adc_brd_ram_sel_r~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_file_i|adc_brd_ram_sel_r~2_combout\ = (\eth_top_i|net_proc_i|mem_addr_r\(18) & (((!\eth_top_i|net_proc_i|mem_addr_r\(21) & \mem_file_i|adc_brd_ram_sel_r~0_combout\)))) # (!\eth_top_i|net_proc_i|mem_addr_r\(18) & 
-- ((\mem_file_i|adc_brd_ram_sel_r~1_combout\) # ((!\eth_top_i|net_proc_i|mem_addr_r\(21) & \mem_file_i|adc_brd_ram_sel_r~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|mem_addr_r\(18),
	datab => \mem_file_i|adc_brd_ram_sel_r~1_combout\,
	datac => \eth_top_i|net_proc_i|mem_addr_r\(21),
	datad => \mem_file_i|adc_brd_ram_sel_r~0_combout\,
	combout => \mem_file_i|adc_brd_ram_sel_r~2_combout\);

-- Location: LCCOMB_X25_Y31_N24
\mem_file_i|adc_brd_ram_sel_r~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_file_i|adc_brd_ram_sel_r~3_combout\ = (!\eth_top_i|net_proc_i|mem_addr_r\(13) & (!\eth_top_i|net_proc_i|mem_addr_r\(14) & (!\eth_top_i|net_proc_i|mem_addr_r\(15) & !\eth_top_i|net_proc_i|mem_addr_r\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|mem_addr_r\(13),
	datab => \eth_top_i|net_proc_i|mem_addr_r\(14),
	datac => \eth_top_i|net_proc_i|mem_addr_r\(15),
	datad => \eth_top_i|net_proc_i|mem_addr_r\(12),
	combout => \mem_file_i|adc_brd_ram_sel_r~3_combout\);

-- Location: LCCOMB_X25_Y31_N10
\mem_file_i|adc_brd_ram_sel_r~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_file_i|adc_brd_ram_sel_r~4_combout\ = (!\eth_top_i|net_proc_i|mem_addr_r\(19) & (!\eth_top_i|net_proc_i|mem_addr_r\(22) & (!\eth_top_i|net_proc_i|mem_addr_r\(23) & !\eth_top_i|net_proc_i|mem_addr_r\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|mem_addr_r\(19),
	datab => \eth_top_i|net_proc_i|mem_addr_r\(22),
	datac => \eth_top_i|net_proc_i|mem_addr_r\(23),
	datad => \eth_top_i|net_proc_i|mem_addr_r\(24),
	combout => \mem_file_i|adc_brd_ram_sel_r~4_combout\);

-- Location: LCCOMB_X25_Y31_N28
\mem_file_i|adc_brd_ram_sel_r~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_file_i|adc_brd_ram_sel_r~5_combout\ = (!\eth_top_i|net_proc_i|mem_addr_r\(28) & (!\eth_top_i|net_proc_i|mem_addr_r\(25) & (!\eth_top_i|net_proc_i|mem_addr_r\(26) & !\eth_top_i|net_proc_i|mem_addr_r\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|mem_addr_r\(28),
	datab => \eth_top_i|net_proc_i|mem_addr_r\(25),
	datac => \eth_top_i|net_proc_i|mem_addr_r\(26),
	datad => \eth_top_i|net_proc_i|mem_addr_r\(27),
	combout => \mem_file_i|adc_brd_ram_sel_r~5_combout\);

-- Location: LCCOMB_X25_Y31_N6
\mem_file_i|adc_brd_ram_sel_r~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_file_i|adc_brd_ram_sel_r~6_combout\ = (!\eth_top_i|net_proc_i|mem_addr_r\(30) & (\mem_file_i|adc_brd_ram_sel_r~5_combout\ & (!\eth_top_i|net_proc_i|mem_addr_r\(31) & !\eth_top_i|net_proc_i|mem_addr_r\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|mem_addr_r\(30),
	datab => \mem_file_i|adc_brd_ram_sel_r~5_combout\,
	datac => \eth_top_i|net_proc_i|mem_addr_r\(31),
	datad => \eth_top_i|net_proc_i|mem_addr_r\(29),
	combout => \mem_file_i|adc_brd_ram_sel_r~6_combout\);

-- Location: LCCOMB_X25_Y31_N0
\mem_file_i|adc_brd_ram_sel_r~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_file_i|adc_brd_ram_sel_r~7_combout\ = (\mem_file_i|adc_brd_ram_sel_r~4_combout\ & (\mem_file_i|adc_brd_ram_sel_r~3_combout\ & (\mem_file_i|adc_brd_ram_sel_r~2_combout\ & \mem_file_i|adc_brd_ram_sel_r~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_file_i|adc_brd_ram_sel_r~4_combout\,
	datab => \mem_file_i|adc_brd_ram_sel_r~3_combout\,
	datac => \mem_file_i|adc_brd_ram_sel_r~2_combout\,
	datad => \mem_file_i|adc_brd_ram_sel_r~6_combout\,
	combout => \mem_file_i|adc_brd_ram_sel_r~7_combout\);

-- Location: LCCOMB_X23_Y27_N12
\eth_top_i|net_proc_i|Selector15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector15~0_combout\ = (\eth_top_i|net_proc_i|Selector4~2_combout\) # ((\eth_top_i|net_proc_i|np_fsm.npf_copyDestMAC~q\ & !\eth_top_i|net_proc_i|rx_ram_data_last_r~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|Selector4~2_combout\,
	datac => \eth_top_i|net_proc_i|np_fsm.npf_copyDestMAC~q\,
	datad => \eth_top_i|net_proc_i|rx_ram_data_last_r~q\,
	combout => \eth_top_i|net_proc_i|Selector15~0_combout\);

-- Location: LCCOMB_X23_Y26_N26
\eth_top_i|net_proc_i|Selector15~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector15~1_combout\ = (\eth_top_i|net_proc_i|Equal1~1_combout\ & (!\eth_top_i|net_proc_i|rx_ram_cnt_r\(1) & (\eth_top_i|net_proc_i|Equal1~0_combout\ & \eth_top_i|net_proc_i|rx_ram_cnt_r\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|Equal1~1_combout\,
	datab => \eth_top_i|net_proc_i|rx_ram_cnt_r\(1),
	datac => \eth_top_i|net_proc_i|Equal1~0_combout\,
	datad => \eth_top_i|net_proc_i|rx_ram_cnt_r\(0),
	combout => \eth_top_i|net_proc_i|Selector15~1_combout\);

-- Location: LCCOMB_X23_Y26_N4
\eth_top_i|net_proc_i|Selector15~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector15~2_combout\ = (\eth_top_i|net_proc_i|Selector15~0_combout\ & (\eth_top_i|net_proc_i|rx_ram_re_r~q\ & (!\eth_top_i|net_proc_i|Selector15~1_combout\))) # (!\eth_top_i|net_proc_i|Selector15~0_combout\ & 
-- (((\eth_top_i|net_proc_i|rx_ram_re_r~q\ & !\eth_top_i|net_proc_i|Selector15~1_combout\)) # (!\eth_top_i|net_proc_i|Selector16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|Selector15~0_combout\,
	datab => \eth_top_i|net_proc_i|rx_ram_re_r~q\,
	datac => \eth_top_i|net_proc_i|Selector15~1_combout\,
	datad => \eth_top_i|net_proc_i|Selector16~0_combout\,
	combout => \eth_top_i|net_proc_i|Selector15~2_combout\);

-- Location: LCCOMB_X23_Y26_N22
\eth_top_i|net_proc_i|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Equal2~0_combout\ = (!\eth_top_i|net_proc_i|rx_ram_cnt_r\(1) & \eth_top_i|net_proc_i|rx_ram_cnt_r\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|rx_ram_cnt_r\(1),
	datad => \eth_top_i|net_proc_i|rx_ram_cnt_r\(0),
	combout => \eth_top_i|net_proc_i|Equal2~0_combout\);

-- Location: LCCOMB_X23_Y26_N0
\eth_top_i|net_proc_i|rx_ram_re_r~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|rx_ram_re_r~0_combout\ = (\eth_top_i|net_proc_i|rx_ram_re_r~q\ & (((!\eth_top_i|net_proc_i|Equal1~1_combout\) # (!\eth_top_i|net_proc_i|Equal2~0_combout\)) # (!\eth_top_i|net_proc_i|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|Equal1~0_combout\,
	datab => \eth_top_i|net_proc_i|rx_ram_re_r~q\,
	datac => \eth_top_i|net_proc_i|Equal2~0_combout\,
	datad => \eth_top_i|net_proc_i|Equal1~1_combout\,
	combout => \eth_top_i|net_proc_i|rx_ram_re_r~0_combout\);

-- Location: LCCOMB_X23_Y26_N24
\eth_top_i|net_proc_i|Selector15~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector15~3_combout\ = (\eth_top_i|net_proc_i|Selector15~2_combout\ & (((\eth_top_i|net_proc_i|rx_ram_re_r~0_combout\) # (\eth_top_i|net_proc_i|rx_ram_cnt_r[2]~1_combout\)) # (!\eth_top_i|net_proc_i|np_fsm.npf_caseComID~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|np_fsm.npf_caseComID~q\,
	datab => \eth_top_i|net_proc_i|rx_ram_re_r~0_combout\,
	datac => \eth_top_i|net_proc_i|Selector15~2_combout\,
	datad => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~1_combout\,
	combout => \eth_top_i|net_proc_i|Selector15~3_combout\);

-- Location: LCCOMB_X24_Y27_N22
\eth_top_i|net_proc_i|mem_addr_r~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|mem_addr_r~74_combout\ = (\eth_top_i|net_proc_i|np_fsm.npf_caseComID~q\) # (\eth_top_i|net_proc_i|np_fsm.npf_write_mem1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|net_proc_i|np_fsm.npf_caseComID~q\,
	datad => \eth_top_i|net_proc_i|np_fsm.npf_write_mem1~q\,
	combout => \eth_top_i|net_proc_i|mem_addr_r~74_combout\);

-- Location: LCCOMB_X29_Y28_N30
\eth_top_i|eth_tx_i|Selector11~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|Selector11~2_combout\ = (\eth_top_i|eth_tx_i|Add1~12_combout\ & (((!\eth_top_i|eth_tx_i|eth_tx_sm.st_send_data~q\ & !\eth_top_i|eth_tx_i|eth_tx_sm.st_send_crc~q\)) # (!\eth_top_i|eth_tx_i|nibble_cnt_zero_r~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|nibble_cnt_zero_r~q\,
	datab => \eth_top_i|eth_tx_i|eth_tx_sm.st_send_data~q\,
	datac => \eth_top_i|eth_tx_i|Add1~12_combout\,
	datad => \eth_top_i|eth_tx_i|eth_tx_sm.st_send_crc~q\,
	combout => \eth_top_i|eth_tx_i|Selector11~2_combout\);

-- Location: LCCOMB_X29_Y28_N10
\eth_top_i|eth_tx_i|Selector9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|Selector9~2_combout\ = (\eth_top_i|eth_tx_i|Add1~16_combout\ & (((!\eth_top_i|eth_tx_i|eth_tx_sm.st_send_crc~q\ & !\eth_top_i|eth_tx_i|eth_tx_sm.st_send_data~q\)) # (!\eth_top_i|eth_tx_i|nibble_cnt_zero_r~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|eth_tx_sm.st_send_crc~q\,
	datab => \eth_top_i|eth_tx_i|eth_tx_sm.st_send_data~q\,
	datac => \eth_top_i|eth_tx_i|nibble_cnt_zero_r~q\,
	datad => \eth_top_i|eth_tx_i|Add1~16_combout\,
	combout => \eth_top_i|eth_tx_i|Selector9~2_combout\);

-- Location: LCCOMB_X29_Y28_N12
\eth_top_i|eth_tx_i|Selector8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|Selector8~2_combout\ = (\eth_top_i|eth_tx_i|Add1~18_combout\ & (((!\eth_top_i|eth_tx_i|eth_tx_sm.st_send_data~q\ & !\eth_top_i|eth_tx_i|eth_tx_sm.st_send_crc~q\)) # (!\eth_top_i|eth_tx_i|nibble_cnt_zero_r~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|Add1~18_combout\,
	datab => \eth_top_i|eth_tx_i|eth_tx_sm.st_send_data~q\,
	datac => \eth_top_i|eth_tx_i|nibble_cnt_zero_r~q\,
	datad => \eth_top_i|eth_tx_i|eth_tx_sm.st_send_crc~q\,
	combout => \eth_top_i|eth_tx_i|Selector8~2_combout\);

-- Location: LCCOMB_X29_Y28_N14
\eth_top_i|eth_tx_i|Selector7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|Selector7~2_combout\ = (\eth_top_i|eth_tx_i|Add1~20_combout\ & (((!\eth_top_i|eth_tx_i|eth_tx_sm.st_send_data~q\ & !\eth_top_i|eth_tx_i|eth_tx_sm.st_send_crc~q\)) # (!\eth_top_i|eth_tx_i|nibble_cnt_zero_r~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|nibble_cnt_zero_r~q\,
	datab => \eth_top_i|eth_tx_i|eth_tx_sm.st_send_data~q\,
	datac => \eth_top_i|eth_tx_i|Add1~20_combout\,
	datad => \eth_top_i|eth_tx_i|eth_tx_sm.st_send_crc~q\,
	combout => \eth_top_i|eth_tx_i|Selector7~2_combout\);

-- Location: LCCOMB_X30_Y28_N30
\eth_top_i|eth_tx_i|Selector6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|Selector6~2_combout\ = (\eth_top_i|eth_tx_i|Add1~22_combout\ & (((!\eth_top_i|eth_tx_i|eth_tx_sm.st_send_data~q\ & !\eth_top_i|eth_tx_i|eth_tx_sm.st_send_crc~q\)) # (!\eth_top_i|eth_tx_i|nibble_cnt_zero_r~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|nibble_cnt_zero_r~q\,
	datab => \eth_top_i|eth_tx_i|eth_tx_sm.st_send_data~q\,
	datac => \eth_top_i|eth_tx_i|Add1~22_combout\,
	datad => \eth_top_i|eth_tx_i|eth_tx_sm.st_send_crc~q\,
	combout => \eth_top_i|eth_tx_i|Selector6~2_combout\);

-- Location: LCCOMB_X23_Y27_N6
\eth_top_i|net_proc_i|Selector4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector4~4_combout\ = (\eth_top_i|net_proc_i|rx_current_bank_r~q\ & (((\eth_top_i|net_proc_i|rx_ram_cnt_r[2]~1_combout\ & \eth_top_i|net_proc_i|np_fsm.npf_caseComID~q\)) # (!\eth_top_i|net_proc_i|Selector11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|Selector11~0_combout\,
	datab => \eth_top_i|net_proc_i|rx_current_bank_r~q\,
	datac => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~1_combout\,
	datad => \eth_top_i|net_proc_i|np_fsm.npf_caseComID~q\,
	combout => \eth_top_i|net_proc_i|Selector4~4_combout\);

-- Location: LCCOMB_X46_Y17_N16
\eth_top_i|eth_rx_i|crc32nibble_i|crc_r~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~39_combout\ = \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(3) $ (\eth_top_i|eth_pins_i|rxd_r\(3) $ (\eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(28) $ (!\eth_top_i|eth_rx_i|crc32nibble_i|crc_r~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(3),
	datab => \eth_top_i|eth_pins_i|rxd_r\(3),
	datac => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(28),
	datad => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~19_combout\,
	combout => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~39_combout\);

-- Location: LCCOMB_X29_Y26_N12
\eth_top_i|net_proc_i|ip_checksum_r[2]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|ip_checksum_r[2]~34_combout\ = !\eth_top_i|net_proc_i|proto_len_r\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|net_proc_i|proto_len_r\(2),
	combout => \eth_top_i|net_proc_i|ip_checksum_r[2]~34_combout\);

-- Location: LCCOMB_X26_Y27_N12
\eth_top_i|net_proc_i|tx_bank_busy_r[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|tx_bank_busy_r[1]~feeder_combout\ = \eth_top_i|net_proc_i|tx_bank_info_r[1][10]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|net_proc_i|tx_bank_info_r[1][10]~q\,
	combout => \eth_top_i|net_proc_i|tx_bank_busy_r[1]~feeder_combout\);

-- Location: LCCOMB_X31_Y29_N2
\eth_top_i|eth_tx_i|tx_bank_busy_r[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|tx_bank_busy_r[0]~feeder_combout\ = \eth_top_i|net_proc_i|tx_bank_info_r[0][10]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|net_proc_i|tx_bank_info_r[0][10]~q\,
	combout => \eth_top_i|eth_tx_i|tx_bank_busy_r[0]~feeder_combout\);

-- Location: LCCOMB_X30_Y26_N2
\eth_top_i|net_proc_i|tx_bank_info_r[0][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|tx_bank_info_r[0][6]~feeder_combout\ = \eth_top_i|net_proc_i|tx_len_r\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|net_proc_i|tx_len_r\(6),
	combout => \eth_top_i|net_proc_i|tx_bank_info_r[0][6]~feeder_combout\);

-- Location: LCCOMB_X27_Y26_N26
\eth_top_i|net_proc_i|tx_bank_info_r[1][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|tx_bank_info_r[1][6]~feeder_combout\ = \eth_top_i|net_proc_i|tx_len_r\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|tx_len_r\(6),
	combout => \eth_top_i|net_proc_i|tx_bank_info_r[1][6]~feeder_combout\);

-- Location: LCCOMB_X28_Y26_N2
\eth_top_i|net_proc_i|tx_bank_info_r[1][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|tx_bank_info_r[1][7]~feeder_combout\ = \eth_top_i|net_proc_i|tx_len_r\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|net_proc_i|tx_len_r\(7),
	combout => \eth_top_i|net_proc_i|tx_bank_info_r[1][7]~feeder_combout\);

-- Location: LCCOMB_X30_Y26_N4
\eth_top_i|net_proc_i|tx_bank_info_r[0][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|tx_bank_info_r[0][7]~feeder_combout\ = \eth_top_i|net_proc_i|tx_len_r\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|net_proc_i|tx_len_r\(7),
	combout => \eth_top_i|net_proc_i|tx_bank_info_r[0][7]~feeder_combout\);

-- Location: LCCOMB_X28_Y26_N4
\eth_top_i|net_proc_i|tx_bank_info_r[1][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|tx_bank_info_r[1][8]~feeder_combout\ = \eth_top_i|net_proc_i|tx_len_r\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|net_proc_i|tx_len_r\(8),
	combout => \eth_top_i|net_proc_i|tx_bank_info_r[1][8]~feeder_combout\);

-- Location: LCCOMB_X30_Y26_N22
\eth_top_i|net_proc_i|tx_bank_info_r[0][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|tx_bank_info_r[0][8]~feeder_combout\ = \eth_top_i|net_proc_i|tx_len_r\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|net_proc_i|tx_len_r\(8),
	combout => \eth_top_i|net_proc_i|tx_bank_info_r[0][8]~feeder_combout\);

-- Location: LCCOMB_X30_Y28_N28
\eth_top_i|net_proc_i|tx_bank_info_r[0][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|tx_bank_info_r[0][9]~feeder_combout\ = \eth_top_i|net_proc_i|tx_len_r\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|net_proc_i|tx_len_r\(9),
	combout => \eth_top_i|net_proc_i|tx_bank_info_r[0][9]~feeder_combout\);

-- Location: LCCOMB_X28_Y26_N6
\eth_top_i|net_proc_i|tx_bank_info_r[1][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|tx_bank_info_r[1][9]~feeder_combout\ = \eth_top_i|net_proc_i|tx_len_r\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|net_proc_i|tx_len_r\(9),
	combout => \eth_top_i|net_proc_i|tx_bank_info_r[1][9]~feeder_combout\);

-- Location: LCCOMB_X26_Y29_N24
\eth_top_i|net_proc_i|info_words[1][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|info_words[1][0]~feeder_combout\ = \eth_top_i|eth_rx_ram_i|data_out_r\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|eth_rx_ram_i|data_out_r\(0),
	combout => \eth_top_i|net_proc_i|info_words[1][0]~feeder_combout\);

-- Location: LCCOMB_X26_Y29_N18
\eth_top_i|net_proc_i|info_words[1][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|info_words[1][4]~feeder_combout\ = \eth_top_i|eth_rx_ram_i|data_out_r\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|eth_rx_ram_i|data_out_r\(4),
	combout => \eth_top_i|net_proc_i|info_words[1][4]~feeder_combout\);

-- Location: LCCOMB_X26_Y29_N22
\eth_top_i|net_proc_i|info_words[1][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|info_words[1][12]~feeder_combout\ = \eth_top_i|eth_rx_ram_i|data_out_r\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|eth_rx_ram_i|data_out_r\(12),
	combout => \eth_top_i|net_proc_i|info_words[1][12]~feeder_combout\);

-- Location: LCCOMB_X25_Y28_N20
\eth_top_i|net_proc_i|info_words[2][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|info_words[2][12]~feeder_combout\ = \eth_top_i|eth_rx_ram_i|data_out_r\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|eth_rx_ram_i|data_out_r\(12),
	combout => \eth_top_i|net_proc_i|info_words[2][12]~feeder_combout\);

-- Location: LCCOMB_X26_Y29_N16
\eth_top_i|net_proc_i|info_words[1][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|info_words[1][1]~feeder_combout\ = \eth_top_i|eth_rx_ram_i|data_out_r\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|eth_rx_ram_i|data_out_r\(1),
	combout => \eth_top_i|net_proc_i|info_words[1][1]~feeder_combout\);

-- Location: LCCOMB_X25_Y29_N10
\eth_top_i|net_proc_i|info_words[3][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|info_words[3][5]~feeder_combout\ = \eth_top_i|eth_rx_ram_i|data_out_r\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|eth_rx_ram_i|data_out_r\(5),
	combout => \eth_top_i|net_proc_i|info_words[3][5]~feeder_combout\);

-- Location: LCCOMB_X26_Y29_N4
\eth_top_i|net_proc_i|info_words[1][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|info_words[1][9]~feeder_combout\ = \eth_top_i|eth_rx_ram_i|data_out_r\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|eth_rx_ram_i|data_out_r\(9),
	combout => \eth_top_i|net_proc_i|info_words[1][9]~feeder_combout\);

-- Location: LCCOMB_X25_Y29_N18
\eth_top_i|net_proc_i|info_words[3][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|info_words[3][9]~feeder_combout\ = \eth_top_i|eth_rx_ram_i|data_out_r\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|eth_rx_ram_i|data_out_r\(9),
	combout => \eth_top_i|net_proc_i|info_words[3][9]~feeder_combout\);

-- Location: LCCOMB_X26_Y30_N2
\eth_top_i|net_proc_i|info_words[1][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|info_words[1][6]~feeder_combout\ = \eth_top_i|eth_rx_ram_i|data_out_r\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|eth_rx_ram_i|data_out_r\(6),
	combout => \eth_top_i|net_proc_i|info_words[1][6]~feeder_combout\);

-- Location: LCCOMB_X26_Y30_N28
\eth_top_i|net_proc_i|info_words[1][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|info_words[1][10]~feeder_combout\ = \eth_top_i|eth_rx_ram_i|data_out_r\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|eth_rx_ram_i|data_out_r\(10),
	combout => \eth_top_i|net_proc_i|info_words[1][10]~feeder_combout\);

-- Location: LCCOMB_X25_Y29_N26
\eth_top_i|net_proc_i|info_words[3][14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|info_words[3][14]~feeder_combout\ = \eth_top_i|eth_rx_ram_i|data_out_r\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|eth_rx_ram_i|data_out_r\(14),
	combout => \eth_top_i|net_proc_i|info_words[3][14]~feeder_combout\);

-- Location: LCCOMB_X24_Y30_N12
\eth_top_i|net_proc_i|info_words[3][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|info_words[3][3]~feeder_combout\ = \eth_top_i|eth_rx_ram_i|data_out_r\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|eth_rx_ram_i|data_out_r\(3),
	combout => \eth_top_i|net_proc_i|info_words[3][3]~feeder_combout\);

-- Location: LCCOMB_X25_Y29_N30
\eth_top_i|net_proc_i|info_words[2][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|info_words[2][7]~feeder_combout\ = \eth_top_i|eth_rx_ram_i|data_out_r\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|eth_rx_ram_i|data_out_r\(7),
	combout => \eth_top_i|net_proc_i|info_words[2][7]~feeder_combout\);

-- Location: LCCOMB_X26_Y30_N10
\eth_top_i|net_proc_i|info_words[1][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|info_words[1][7]~feeder_combout\ = \eth_top_i|eth_rx_ram_i|data_out_r\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|eth_rx_ram_i|data_out_r\(7),
	combout => \eth_top_i|net_proc_i|info_words[1][7]~feeder_combout\);

-- Location: LCCOMB_X26_Y30_N12
\eth_top_i|net_proc_i|info_words[1][11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|info_words[1][11]~feeder_combout\ = \eth_top_i|eth_rx_ram_i|data_out_r\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|eth_rx_ram_i|data_out_r\(11),
	combout => \eth_top_i|net_proc_i|info_words[1][11]~feeder_combout\);

-- Location: LCCOMB_X25_Y29_N4
\eth_top_i|net_proc_i|info_words[2][11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|info_words[2][11]~feeder_combout\ = \eth_top_i|eth_rx_ram_i|data_out_r\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|eth_rx_ram_i|data_out_r\(11),
	combout => \eth_top_i|net_proc_i|info_words[2][11]~feeder_combout\);

-- Location: LCCOMB_X30_Y26_N26
\eth_top_i|net_proc_i|tx_bank_info_r[0][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|tx_bank_info_r[0][1]~feeder_combout\ = \eth_top_i|net_proc_i|tx_bank_info_len_v~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|net_proc_i|tx_bank_info_len_v~2_combout\,
	combout => \eth_top_i|net_proc_i|tx_bank_info_r[0][1]~feeder_combout\);

-- Location: LCCOMB_X30_Y26_N10
\eth_top_i|net_proc_i|tx_bank_info_r[0][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|tx_bank_info_r[0][4]~feeder_combout\ = \eth_top_i|net_proc_i|tx_bank_info_len_v~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|net_proc_i|tx_bank_info_len_v~4_combout\,
	combout => \eth_top_i|net_proc_i|tx_bank_info_r[0][4]~feeder_combout\);

-- Location: LCCOMB_X28_Y29_N30
\reg_file_i|hw_ver_reg_x|eth_reg_rdata_r[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|hw_ver_reg_x|eth_reg_rdata_r[12]~feeder_combout\ = \reg_file_i|hw_ver_reg_x|reg_num_match_r~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_file_i|hw_ver_reg_x|reg_num_match_r~q\,
	combout => \reg_file_i|hw_ver_reg_x|eth_reg_rdata_r[12]~feeder_combout\);

-- Location: LCCOMB_X26_Y29_N8
\reg_file_i|echo_reg_x|reg_value_r[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|echo_reg_x|reg_value_r[0]~feeder_combout\ = \eth_top_i|net_proc_i|info_words[1][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|info_words[1][0]~q\,
	combout => \reg_file_i|echo_reg_x|reg_value_r[0]~feeder_combout\);

-- Location: LCCOMB_X28_Y30_N24
\reg_file_i|spi_reg_num_reg_x|reg_value_r[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|spi_reg_num_reg_x|reg_value_r[0]~feeder_combout\ = \eth_top_i|net_proc_i|info_words[1][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|net_proc_i|info_words[1][0]~q\,
	combout => \reg_file_i|spi_reg_num_reg_x|reg_value_r[0]~feeder_combout\);

-- Location: LCCOMB_X28_Y30_N18
\reg_file_i|spi_burst_len_reg_x|reg_value_r[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|spi_burst_len_reg_x|reg_value_r[0]~feeder_combout\ = \eth_top_i|net_proc_i|info_words[1][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|net_proc_i|info_words[1][0]~q\,
	combout => \reg_file_i|spi_burst_len_reg_x|reg_value_r[0]~feeder_combout\);

-- Location: LCCOMB_X26_Y29_N2
\reg_file_i|echo_reg_x|reg_value_r[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|echo_reg_x|reg_value_r[4]~feeder_combout\ = \eth_top_i|net_proc_i|info_words[1][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|info_words[1][4]~q\,
	combout => \reg_file_i|echo_reg_x|reg_value_r[4]~feeder_combout\);

-- Location: LCCOMB_X28_Y30_N30
\reg_file_i|spi_burst_len_reg_x|reg_value_r[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|spi_burst_len_reg_x|reg_value_r[4]~feeder_combout\ = \eth_top_i|net_proc_i|info_words[1][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|net_proc_i|info_words[1][4]~q\,
	combout => \reg_file_i|spi_burst_len_reg_x|reg_value_r[4]~feeder_combout\);

-- Location: LCCOMB_X28_Y30_N20
\reg_file_i|spi_reg_num_reg_x|reg_value_r[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|spi_reg_num_reg_x|reg_value_r[4]~feeder_combout\ = \eth_top_i|net_proc_i|info_words[1][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|net_proc_i|info_words[1][4]~q\,
	combout => \reg_file_i|spi_reg_num_reg_x|reg_value_r[4]~feeder_combout\);

-- Location: LCCOMB_X26_Y29_N12
\reg_file_i|echo_reg_x|reg_value_r[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|echo_reg_x|reg_value_r[8]~feeder_combout\ = \eth_top_i|net_proc_i|info_words[1][8]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|info_words[1][8]~q\,
	combout => \reg_file_i|echo_reg_x|reg_value_r[8]~feeder_combout\);

-- Location: LCCOMB_X26_Y29_N14
\reg_file_i|echo_reg_x|reg_value_r[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|echo_reg_x|reg_value_r[12]~feeder_combout\ = \eth_top_i|net_proc_i|info_words[1][12]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|net_proc_i|info_words[1][12]~q\,
	combout => \reg_file_i|echo_reg_x|reg_value_r[12]~feeder_combout\);

-- Location: LCCOMB_X28_Y30_N2
\reg_file_i|spi_burst_len_reg_x|reg_value_r[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|spi_burst_len_reg_x|reg_value_r[12]~feeder_combout\ = \eth_top_i|net_proc_i|info_words[1][12]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|net_proc_i|info_words[1][12]~q\,
	combout => \reg_file_i|spi_burst_len_reg_x|reg_value_r[12]~feeder_combout\);

-- Location: LCCOMB_X26_Y29_N0
\reg_file_i|echo_reg_x|reg_value_r[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|echo_reg_x|reg_value_r[1]~feeder_combout\ = \eth_top_i|net_proc_i|info_words[1][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|info_words[1][1]~q\,
	combout => \reg_file_i|echo_reg_x|reg_value_r[1]~feeder_combout\);

-- Location: LCCOMB_X28_Y30_N28
\reg_file_i|spi_reg_num_reg_x|reg_value_r[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|spi_reg_num_reg_x|reg_value_r[1]~feeder_combout\ = \eth_top_i|net_proc_i|info_words[1][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|net_proc_i|info_words[1][1]~q\,
	combout => \reg_file_i|spi_reg_num_reg_x|reg_value_r[1]~feeder_combout\);

-- Location: LCCOMB_X27_Y30_N12
\reg_file_i|spi_burst_len_reg_x|reg_value_r[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|spi_burst_len_reg_x|reg_value_r[1]~feeder_combout\ = \eth_top_i|net_proc_i|info_words[1][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|net_proc_i|info_words[1][1]~q\,
	combout => \reg_file_i|spi_burst_len_reg_x|reg_value_r[1]~feeder_combout\);

-- Location: LCCOMB_X26_Y29_N20
\reg_file_i|echo_reg_x|reg_value_r[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|echo_reg_x|reg_value_r[9]~feeder_combout\ = \eth_top_i|net_proc_i|info_words[1][9]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|net_proc_i|info_words[1][9]~q\,
	combout => \reg_file_i|echo_reg_x|reg_value_r[9]~feeder_combout\);

-- Location: LCCOMB_X27_Y29_N26
\reg_file_i|spi_burst_len_reg_x|reg_value_r[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|spi_burst_len_reg_x|reg_value_r[9]~feeder_combout\ = \eth_top_i|net_proc_i|info_words[1][9]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|net_proc_i|info_words[1][9]~q\,
	combout => \reg_file_i|spi_burst_len_reg_x|reg_value_r[9]~feeder_combout\);

-- Location: LCCOMB_X25_Y31_N12
\mem_file_i|adc_brd_ram_sel_ddr~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_file_i|adc_brd_ram_sel_ddr~feeder_combout\ = \mem_file_i|adc_brd_ram_sel_dr~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_file_i|adc_brd_ram_sel_dr~q\,
	combout => \mem_file_i|adc_brd_ram_sel_ddr~feeder_combout\);

-- Location: LCCOMB_X28_Y30_N16
\reg_file_i|spi_reg_num_reg_x|reg_value_r[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|spi_reg_num_reg_x|reg_value_r[2]~feeder_combout\ = \eth_top_i|net_proc_i|info_words[1][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|net_proc_i|info_words[1][2]~q\,
	combout => \reg_file_i|spi_reg_num_reg_x|reg_value_r[2]~feeder_combout\);

-- Location: LCCOMB_X26_Y30_N18
\reg_file_i|echo_reg_x|reg_value_r[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|echo_reg_x|reg_value_r[6]~feeder_combout\ = \eth_top_i|net_proc_i|info_words[1][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|info_words[1][6]~q\,
	combout => \reg_file_i|echo_reg_x|reg_value_r[6]~feeder_combout\);

-- Location: LCCOMB_X27_Y30_N14
\reg_file_i|spi_burst_len_reg_x|reg_value_r[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|spi_burst_len_reg_x|reg_value_r[6]~feeder_combout\ = \eth_top_i|net_proc_i|info_words[1][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|net_proc_i|info_words[1][6]~q\,
	combout => \reg_file_i|spi_burst_len_reg_x|reg_value_r[6]~feeder_combout\);

-- Location: LCCOMB_X28_Y30_N4
\reg_file_i|spi_reg_num_reg_x|reg_value_r[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|spi_reg_num_reg_x|reg_value_r[6]~feeder_combout\ = \eth_top_i|net_proc_i|info_words[1][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|net_proc_i|info_words[1][6]~q\,
	combout => \reg_file_i|spi_reg_num_reg_x|reg_value_r[6]~feeder_combout\);

-- Location: LCCOMB_X26_Y30_N20
\reg_file_i|echo_reg_x|reg_value_r[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|echo_reg_x|reg_value_r[10]~feeder_combout\ = \eth_top_i|net_proc_i|info_words[1][10]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|info_words[1][10]~q\,
	combout => \reg_file_i|echo_reg_x|reg_value_r[10]~feeder_combout\);

-- Location: LCCOMB_X27_Y29_N20
\reg_file_i|spi_burst_len_reg_x|reg_value_r[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|spi_burst_len_reg_x|reg_value_r[10]~feeder_combout\ = \eth_top_i|net_proc_i|info_words[1][10]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|net_proc_i|info_words[1][10]~q\,
	combout => \reg_file_i|spi_burst_len_reg_x|reg_value_r[10]~feeder_combout\);

-- Location: LCCOMB_X25_Y30_N26
\reg_file_i|spi_burst_len_reg_x|reg_value_r[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|spi_burst_len_reg_x|reg_value_r[14]~feeder_combout\ = \eth_top_i|net_proc_i|info_words[1][14]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|net_proc_i|info_words[1][14]~q\,
	combout => \reg_file_i|spi_burst_len_reg_x|reg_value_r[14]~feeder_combout\);

-- Location: LCCOMB_X26_Y30_N16
\reg_file_i|echo_reg_x|reg_value_r[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|echo_reg_x|reg_value_r[3]~feeder_combout\ = \eth_top_i|net_proc_i|info_words[1][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|net_proc_i|info_words[1][3]~q\,
	combout => \reg_file_i|echo_reg_x|reg_value_r[3]~feeder_combout\);

-- Location: LCCOMB_X26_Y30_N26
\reg_file_i|echo_reg_x|reg_value_r[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|echo_reg_x|reg_value_r[7]~feeder_combout\ = \eth_top_i|net_proc_i|info_words[1][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|info_words[1][7]~q\,
	combout => \reg_file_i|echo_reg_x|reg_value_r[7]~feeder_combout\);

-- Location: LCCOMB_X25_Y30_N12
\reg_file_i|spi_burst_len_reg_x|reg_value_r[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|spi_burst_len_reg_x|reg_value_r[7]~feeder_combout\ = \eth_top_i|net_proc_i|info_words[1][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|net_proc_i|info_words[1][7]~q\,
	combout => \reg_file_i|spi_burst_len_reg_x|reg_value_r[7]~feeder_combout\);

-- Location: LCCOMB_X26_Y30_N4
\reg_file_i|echo_reg_x|reg_value_r[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|echo_reg_x|reg_value_r[11]~feeder_combout\ = \eth_top_i|net_proc_i|info_words[1][11]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|info_words[1][11]~q\,
	combout => \reg_file_i|echo_reg_x|reg_value_r[11]~feeder_combout\);

-- Location: LCCOMB_X27_Y29_N14
\reg_file_i|spi_burst_len_reg_x|reg_value_r[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|spi_burst_len_reg_x|reg_value_r[11]~feeder_combout\ = \eth_top_i|net_proc_i|info_words[1][11]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|net_proc_i|info_words[1][11]~q\,
	combout => \reg_file_i|spi_burst_len_reg_x|reg_value_r[11]~feeder_combout\);

-- Location: LCCOMB_X26_Y30_N30
\reg_file_i|echo_reg_x|reg_value_r[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|echo_reg_x|reg_value_r[15]~feeder_combout\ = \eth_top_i|net_proc_i|info_words[1][15]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|net_proc_i|info_words[1][15]~q\,
	combout => \reg_file_i|echo_reg_x|reg_value_r[15]~feeder_combout\);

-- Location: LCCOMB_X25_Y31_N14
\mem_file_i|adc_brd_ram_sel_dr~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_file_i|adc_brd_ram_sel_dr~feeder_combout\ = \mem_file_i|adc_brd_ram_sel_r~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_file_i|adc_brd_ram_sel_r~q\,
	combout => \mem_file_i|adc_brd_ram_sel_dr~feeder_combout\);

-- Location: LCCOMB_X23_Y26_N6
\eth_top_i|net_proc_i|rx_ram_re_dr[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|rx_ram_re_dr[0]~feeder_combout\ = \eth_top_i|net_proc_i|rx_ram_re_r~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|rx_ram_re_r~q\,
	combout => \eth_top_i|net_proc_i|rx_ram_re_dr[0]~feeder_combout\);

-- Location: IOOBUF_X0_Y29_N2
\ETH_TX_EN~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \eth_top_i|eth_pins_i|tx_en_or~q\,
	devoe => ww_devoe,
	o => \ETH_TX_EN~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\ETH_TXD[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \eth_top_i|eth_pins_i|txd_or\(0),
	devoe => ww_devoe,
	o => \ETH_TXD[0]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\ETH_TXD[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \eth_top_i|eth_pins_i|txd_or\(1),
	devoe => ww_devoe,
	o => \ETH_TXD[1]~output_o\);

-- Location: IOOBUF_X29_Y0_N23
\ETH_TXD[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \eth_top_i|eth_pins_i|txd_or\(2),
	devoe => ww_devoe,
	o => \ETH_TXD[2]~output_o\);

-- Location: IOOBUF_X31_Y34_N9
\ETH_TXD[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \eth_top_i|eth_pins_i|txd_or\(3),
	devoe => ww_devoe,
	o => \ETH_TXD[3]~output_o\);

-- Location: IOIBUF_X0_Y16_N8
\ETH_TX_CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ETH_TX_CLK,
	o => \ETH_TX_CLK~input_o\);

-- Location: CLKCTRL_G2
\ETH_TX_CLK~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ETH_TX_CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ETH_TX_CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y16_N15
\ETH_RX_CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ETH_RX_CLK,
	o => \ETH_RX_CLK~input_o\);

-- Location: CLKCTRL_G4
\ETH_RX_CLK~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ETH_RX_CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ETH_RX_CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y16_N1
\CLOCK20MHZ[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK20MHZ(0),
	o => \CLOCK20MHZ[0]~input_o\);

-- Location: PLL_1
\infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|pll1\ : cycloneiii_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "auto",
	c0_high => 3,
	c0_initial => 1,
	c0_low => 2,
	c0_mode => "odd",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 1,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 6,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 50000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 24,
	m => 30,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 3418,
	self_reset_on_loss_lock => "on",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	fbin => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G3
\infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: IOIBUF_X53_Y16_N1
\ETH_RXD[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ETH_RXD(0),
	o => \ETH_RXD[0]~input_o\);

-- Location: FF_X49_Y17_N13
\eth_top_i|eth_pins_i|rxd_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	asdata => \ETH_RXD[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_pins_i|rxd_r\(0));

-- Location: IOIBUF_X47_Y34_N22
\ETH_RXD[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ETH_RXD(3),
	o => \ETH_RXD[3]~input_o\);

-- Location: FF_X47_Y18_N19
\eth_top_i|eth_pins_i|rxd_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	asdata => \ETH_RXD[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_pins_i|rxd_r\(3));

-- Location: IOIBUF_X53_Y16_N8
\ETH_RXD[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ETH_RXD(2),
	o => \ETH_RXD[2]~input_o\);

-- Location: FF_X49_Y17_N25
\eth_top_i|eth_pins_i|rxd_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	asdata => \ETH_RXD[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_pins_i|rxd_r\(2));

-- Location: LCCOMB_X48_Y17_N28
\eth_top_i|eth_rx_i|crc32nibble_i|crc_r~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~21_combout\ = \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(3) $ (\eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(2) $ (\eth_top_i|eth_pins_i|rxd_r\(3) $ (!\eth_top_i|eth_pins_i|rxd_r\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(3),
	datab => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(2),
	datac => \eth_top_i|eth_pins_i|rxd_r\(3),
	datad => \eth_top_i|eth_pins_i|rxd_r\(2),
	combout => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~21_combout\);

-- Location: LCCOMB_X48_Y17_N12
\eth_top_i|eth_rx_i|crc32nibble_i|crc_r~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~33_combout\ = \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(24) $ (\eth_top_i|eth_rx_i|crc32nibble_i|crc_r~21_combout\ $ (\eth_top_i|eth_pins_i|rxd_r\(0) $ (\eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(24),
	datab => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~21_combout\,
	datac => \eth_top_i|eth_pins_i|rxd_r\(0),
	datad => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(0),
	combout => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~33_combout\);

-- Location: IOIBUF_X53_Y17_N22
\ETH_RX_DV~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ETH_RX_DV,
	o => \ETH_RX_DV~input_o\);

-- Location: FF_X49_Y17_N3
\eth_top_i|eth_pins_i|rx_dv_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	asdata => \ETH_RX_DV~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_pins_i|rx_dv_r~q\);

-- Location: IOIBUF_X49_Y0_N1
\ETH_RXD[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ETH_RXD(1),
	o => \ETH_RXD[1]~input_o\);

-- Location: FF_X49_Y17_N7
\eth_top_i|eth_pins_i|rxd_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	asdata => \ETH_RXD[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_pins_i|rxd_r\(1));

-- Location: LCCOMB_X49_Y17_N2
\eth_top_i|eth_rx_i|comb_proc~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|comb_proc~0_combout\ = (\eth_top_i|eth_pins_i|rxd_r\(0) & (\eth_top_i|eth_pins_i|rxd_r\(2) & (\eth_top_i|eth_pins_i|rx_dv_r~q\ & !\eth_top_i|eth_pins_i|rxd_r\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_pins_i|rxd_r\(0),
	datab => \eth_top_i|eth_pins_i|rxd_r\(2),
	datac => \eth_top_i|eth_pins_i|rx_dv_r~q\,
	datad => \eth_top_i|eth_pins_i|rxd_r\(1),
	combout => \eth_top_i|eth_rx_i|comb_proc~0_combout\);

-- Location: LCCOMB_X49_Y17_N30
\eth_top_i|eth_rx_i|Selector3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|Selector3~2_combout\ = (!\eth_top_i|eth_rx_i|eth_rx_sm.st_check_preamble~q\ & (((!\eth_top_i|eth_pins_i|rxd_r\(3) & \eth_top_i|eth_rx_i|comb_proc~0_combout\)) # (!\eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~q\,
	datab => \eth_top_i|eth_pins_i|rxd_r\(3),
	datac => \eth_top_i|eth_rx_i|eth_rx_sm.st_check_preamble~q\,
	datad => \eth_top_i|eth_rx_i|comb_proc~0_combout\,
	combout => \eth_top_i|eth_rx_i|Selector3~2_combout\);

-- Location: LCCOMB_X49_Y17_N14
\eth_top_i|eth_rx_i|Selector0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|Selector0~1_combout\ = (\eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~q\ & (!\eth_top_i|eth_pins_i|rxd_r\(3))) # (!\eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~q\ & ((!\eth_top_i|eth_rx_i|Selector3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~q\,
	datab => \eth_top_i|eth_pins_i|rxd_r\(3),
	datad => \eth_top_i|eth_rx_i|Selector3~1_combout\,
	combout => \eth_top_i|eth_rx_i|Selector0~1_combout\);

-- Location: LCCOMB_X49_Y18_N8
\eth_top_i|eth_rx_i|Selector0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|Selector0~2_combout\ = (!\eth_top_i|eth_rx_i|eth_rx_sm.st_check_preamble~q\ & !\eth_top_i|eth_rx_i|eth_rx_sm.st_idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|eth_rx_i|eth_rx_sm.st_check_preamble~q\,
	datad => \eth_top_i|eth_rx_i|eth_rx_sm.st_idle~q\,
	combout => \eth_top_i|eth_rx_i|Selector0~2_combout\);

-- Location: LCCOMB_X49_Y17_N20
\eth_top_i|eth_rx_i|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|Selector0~0_combout\ = (\eth_top_i|eth_rx_i|eth_rx_sm.st_check_preamble~q\ & (((\eth_top_i|eth_pins_i|rxd_r\(3)) # (!\eth_top_i|eth_rx_i|comb_proc~0_combout\)))) # (!\eth_top_i|eth_rx_i|eth_rx_sm.st_check_preamble~q\ & 
-- (\eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~q\ & ((!\eth_top_i|eth_rx_i|comb_proc~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~q\,
	datab => \eth_top_i|eth_pins_i|rxd_r\(3),
	datac => \eth_top_i|eth_rx_i|eth_rx_sm.st_check_preamble~q\,
	datad => \eth_top_i|eth_rx_i|comb_proc~0_combout\,
	combout => \eth_top_i|eth_rx_i|Selector0~0_combout\);

-- Location: LCCOMB_X49_Y17_N26
\eth_top_i|eth_rx_i|Selector0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|Selector0~3_combout\ = (!\eth_top_i|eth_rx_i|update_bank_info_s~11_combout\ & (!\eth_top_i|eth_rx_i|Selector0~0_combout\ & ((!\eth_top_i|eth_rx_i|Selector0~2_combout\) # (!\eth_top_i|eth_rx_i|Selector0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_rx_i|update_bank_info_s~11_combout\,
	datab => \eth_top_i|eth_rx_i|Selector0~1_combout\,
	datac => \eth_top_i|eth_rx_i|Selector0~2_combout\,
	datad => \eth_top_i|eth_rx_i|Selector0~0_combout\,
	combout => \eth_top_i|eth_rx_i|Selector0~3_combout\);

-- Location: FF_X49_Y17_N27
\eth_top_i|eth_rx_i|eth_rx_sm.st_idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_rx_i|Selector0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_i|eth_rx_sm.st_idle~q\);

-- Location: LCCOMB_X49_Y17_N4
\eth_top_i|eth_rx_i|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|Selector1~0_combout\ = (!\eth_top_i|eth_rx_i|update_bank_info_s~11_combout\ & (\eth_top_i|eth_rx_i|Selector3~1_combout\ & (\eth_top_i|eth_rx_i|Selector3~2_combout\ & !\eth_top_i|eth_rx_i|eth_rx_sm.st_idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_rx_i|update_bank_info_s~11_combout\,
	datab => \eth_top_i|eth_rx_i|Selector3~1_combout\,
	datac => \eth_top_i|eth_rx_i|Selector3~2_combout\,
	datad => \eth_top_i|eth_rx_i|eth_rx_sm.st_idle~q\,
	combout => \eth_top_i|eth_rx_i|Selector1~0_combout\);

-- Location: FF_X49_Y17_N5
\eth_top_i|eth_rx_i|eth_rx_sm.st_check_preamble\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_rx_i|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_i|eth_rx_sm.st_check_preamble~q\);

-- Location: LCCOMB_X46_Y17_N14
\eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~0_combout\ = (\eth_top_i|eth_rx_i|comb_proc~0_combout\ & (!\eth_top_i|eth_pins_i|rxd_r\(3) & ((\eth_top_i|eth_rx_i|eth_rx_sm.st_check_preamble~q\) # (\eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_rx_i|comb_proc~0_combout\,
	datab => \eth_top_i|eth_rx_i|eth_rx_sm.st_check_preamble~q\,
	datac => \eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~q\,
	datad => \eth_top_i|eth_pins_i|rxd_r\(3),
	combout => \eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~0_combout\);

-- Location: FF_X46_Y17_N15
\eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~q\);

-- Location: FF_X48_Y17_N13
\eth_top_i|eth_rx_i|crc32nibble_i|crc_r[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~33_combout\,
	sclr => \eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(20));

-- Location: LCCOMB_X47_Y17_N14
\eth_top_i|eth_rx_i|crc32nibble_i|crc_r~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~30_combout\ = \eth_top_i|eth_pins_i|rxd_r\(0) $ (\eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(20) $ (!\eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_pins_i|rxd_r\(0),
	datac => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(20),
	datad => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(0),
	combout => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~30_combout\);

-- Location: FF_X47_Y17_N15
\eth_top_i|eth_rx_i|crc32nibble_i|crc_r[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~30_combout\,
	sclr => \eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(16));

-- Location: LCCOMB_X47_Y17_N12
\eth_top_i|eth_rx_i|crc32nibble_i|crc_r~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~24_combout\ = \eth_top_i|eth_pins_i|rxd_r\(0) $ (\eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(16) $ (!\eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_pins_i|rxd_r\(0),
	datac => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(16),
	datad => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(0),
	combout => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~24_combout\);

-- Location: FF_X47_Y17_N13
\eth_top_i|eth_rx_i|crc32nibble_i|crc_r[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~24_combout\,
	sclr => \eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(12));

-- Location: LCCOMB_X48_Y17_N24
\eth_top_i|eth_rx_i|crc32nibble_i|crc_r~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~22_combout\ = \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(12) $ (!\eth_top_i|eth_rx_i|crc32nibble_i|crc_r~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(12),
	datad => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~21_combout\,
	combout => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~22_combout\);

-- Location: FF_X48_Y17_N25
\eth_top_i|eth_rx_i|crc32nibble_i|crc_r[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~22_combout\,
	sclr => \eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(8));

-- Location: LCCOMB_X48_Y17_N4
\eth_top_i|eth_rx_i|crc32nibble_i|crc_r~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~17_combout\ = \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(2) $ (\eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(8) $ (!\eth_top_i|eth_pins_i|rxd_r\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(2),
	datac => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(8),
	datad => \eth_top_i|eth_pins_i|rxd_r\(2),
	combout => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~17_combout\);

-- Location: FF_X48_Y17_N5
\eth_top_i|eth_rx_i|crc32nibble_i|crc_r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~17_combout\,
	sclr => \eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(4));

-- Location: LCCOMB_X49_Y17_N28
\eth_top_i|eth_rx_i|crc32nibble_i|crc_r~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~11_combout\ = (\eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(4) & !\eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(4),
	datad => \eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~q\,
	combout => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~11_combout\);

-- Location: FF_X49_Y17_N29
\eth_top_i|eth_rx_i|crc32nibble_i|crc_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(0));

-- Location: LCCOMB_X48_Y17_N0
\eth_top_i|eth_rx_i|crc32nibble_i|crc_r~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~14_combout\ = \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(6) $ (\eth_top_i|eth_pins_i|rxd_r\(0) $ (!\eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(6),
	datac => \eth_top_i|eth_pins_i|rxd_r\(0),
	datad => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(0),
	combout => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~14_combout\);

-- Location: FF_X48_Y17_N1
\eth_top_i|eth_rx_i|crc32nibble_i|crc_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~14_combout\,
	sclr => \eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(2));

-- Location: LCCOMB_X49_Y17_N12
\eth_top_i|eth_rx_i|crc32nibble_i|crc_r~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~19_combout\ = \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(1) $ (\eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(0) $ (\eth_top_i|eth_pins_i|rxd_r\(0) $ (\eth_top_i|eth_pins_i|rxd_r\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(1),
	datab => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(0),
	datac => \eth_top_i|eth_pins_i|rxd_r\(0),
	datad => \eth_top_i|eth_pins_i|rxd_r\(1),
	combout => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~19_combout\);

-- Location: LCCOMB_X46_Y17_N22
\eth_top_i|eth_rx_i|crc32nibble_i|crc_r~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~42_combout\ = \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(2) $ (\eth_top_i|eth_pins_i|rxd_r\(2) $ (\eth_top_i|eth_rx_i|crc32nibble_i|crc_r~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(2),
	datac => \eth_top_i|eth_pins_i|rxd_r\(2),
	datad => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~19_combout\,
	combout => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~42_combout\);

-- Location: FF_X46_Y17_N23
\eth_top_i|eth_rx_i|crc32nibble_i|crc_r[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~42_combout\,
	sclr => \eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(28));

-- Location: LCCOMB_X48_Y17_N8
\eth_top_i|eth_rx_i|crc32nibble_i|crc_r~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~37_combout\ = \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(30) $ (\eth_top_i|eth_rx_i|crc32nibble_i|crc_r~21_combout\ $ (\eth_top_i|eth_pins_i|rxd_r\(0) $ (\eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(30),
	datab => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~21_combout\,
	datac => \eth_top_i|eth_pins_i|rxd_r\(0),
	datad => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(0),
	combout => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~37_combout\);

-- Location: FF_X48_Y17_N9
\eth_top_i|eth_rx_i|crc32nibble_i|crc_r[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~37_combout\,
	sclr => \eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(26));

-- Location: LCCOMB_X47_Y18_N18
\eth_top_i|eth_rx_i|crc32nibble_i|m_s[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|crc32nibble_i|m_s\(0) = \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(3) $ (\eth_top_i|eth_pins_i|rxd_r\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(3),
	datac => \eth_top_i|eth_pins_i|rxd_r\(3),
	combout => \eth_top_i|eth_rx_i|crc32nibble_i|m_s\(0));

-- Location: LCCOMB_X49_Y17_N24
\eth_top_i|eth_rx_i|crc32nibble_i|m_s[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|crc32nibble_i|m_s\(1) = \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(2) $ (\eth_top_i|eth_pins_i|rxd_r\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(2),
	datac => \eth_top_i|eth_pins_i|rxd_r\(2),
	combout => \eth_top_i|eth_rx_i|crc32nibble_i|m_s\(1));

-- Location: LCCOMB_X46_Y17_N10
\eth_top_i|eth_rx_i|crc32nibble_i|crc_r~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~26_combout\ = \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(1) $ (\eth_top_i|eth_rx_i|crc32nibble_i|m_s\(1) $ (\eth_top_i|eth_rx_i|crc32nibble_i|m_s\(0) $ (\eth_top_i|eth_pins_i|rxd_r\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(1),
	datab => \eth_top_i|eth_rx_i|crc32nibble_i|m_s\(1),
	datac => \eth_top_i|eth_rx_i|crc32nibble_i|m_s\(0),
	datad => \eth_top_i|eth_pins_i|rxd_r\(1),
	combout => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~26_combout\);

-- Location: FF_X46_Y17_N11
\eth_top_i|eth_rx_i|crc32nibble_i|crc_r[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~26_combout\,
	sclr => \eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(29));

-- Location: LCCOMB_X46_Y17_N28
\eth_top_i|eth_rx_i|crc32nibble_i|crc_r~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~36_combout\ = \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(1) $ (\eth_top_i|eth_rx_i|crc32nibble_i|m_s\(1) $ (\eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(29) $ (\eth_top_i|eth_pins_i|rxd_r\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(1),
	datab => \eth_top_i|eth_rx_i|crc32nibble_i|m_s\(1),
	datac => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(29),
	datad => \eth_top_i|eth_pins_i|rxd_r\(1),
	combout => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~36_combout\);

-- Location: FF_X46_Y17_N29
\eth_top_i|eth_rx_i|crc32nibble_i|crc_r[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~36_combout\,
	sclr => \eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(25));

-- Location: LCCOMB_X46_Y17_N18
\eth_top_i|eth_rx_i|crc32nibble_i|crc_r~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~40_combout\ = \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(3) $ (\eth_top_i|eth_pins_i|rxd_r\(3) $ (\eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(25) $ (!\eth_top_i|eth_rx_i|crc32nibble_i|crc_r~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(3),
	datab => \eth_top_i|eth_pins_i|rxd_r\(3),
	datac => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(25),
	datad => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~19_combout\,
	combout => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~40_combout\);

-- Location: FF_X46_Y17_N19
\eth_top_i|eth_rx_i|crc32nibble_i|crc_r[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~40_combout\,
	sclr => \eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(21));

-- Location: LCCOMB_X46_Y17_N26
\eth_top_i|eth_rx_i|crc32nibble_i|crc_r~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~31_combout\ = \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(21) $ (\eth_top_i|eth_rx_i|crc32nibble_i|crc_r~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(21),
	datad => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~19_combout\,
	combout => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~31_combout\);

-- Location: FF_X46_Y17_N27
\eth_top_i|eth_rx_i|crc32nibble_i|crc_r[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~31_combout\,
	sclr => \eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(17));

-- Location: LCCOMB_X46_Y17_N30
\eth_top_i|eth_rx_i|crc32nibble_i|crc_r~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~29_combout\ = \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(1) $ (\eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(17) $ (!\eth_top_i|eth_pins_i|rxd_r\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(1),
	datac => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(17),
	datad => \eth_top_i|eth_pins_i|rxd_r\(1),
	combout => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~29_combout\);

-- Location: FF_X46_Y17_N31
\eth_top_i|eth_rx_i|crc32nibble_i|crc_r[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~29_combout\,
	sclr => \eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(13));

-- Location: LCCOMB_X47_Y17_N10
\eth_top_i|eth_rx_i|crc32nibble_i|crc_r~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~23_combout\ = \eth_top_i|eth_pins_i|rxd_r\(3) $ (\eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(3) $ (!\eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_pins_i|rxd_r\(3),
	datac => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(3),
	datad => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(13),
	combout => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~23_combout\);

-- Location: FF_X47_Y17_N11
\eth_top_i|eth_rx_i|crc32nibble_i|crc_r[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~23_combout\,
	sclr => \eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(9));

-- Location: LCCOMB_X47_Y17_N0
\eth_top_i|eth_rx_i|crc32nibble_i|crc_r~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~18_combout\ = \eth_top_i|eth_pins_i|rxd_r\(0) $ (\eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(0) $ (\eth_top_i|eth_rx_i|crc32nibble_i|m_s\(0) $ (\eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_pins_i|rxd_r\(0),
	datab => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(0),
	datac => \eth_top_i|eth_rx_i|crc32nibble_i|m_s\(0),
	datad => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(9),
	combout => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~18_combout\);

-- Location: FF_X47_Y17_N1
\eth_top_i|eth_rx_i|crc32nibble_i|crc_r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~18_combout\,
	sclr => \eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(5));

-- Location: LCCOMB_X46_Y17_N12
\eth_top_i|eth_rx_i|crc32nibble_i|crc_r~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~10_combout\ = (\eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(5) & !\eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(5),
	datac => \eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~q\,
	combout => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~10_combout\);

-- Location: FF_X46_Y17_N13
\eth_top_i|eth_rx_i|crc32nibble_i|crc_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(1));

-- Location: LCCOMB_X48_Y17_N10
\eth_top_i|eth_rx_i|crc32nibble_i|crc_r~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~16_combout\ = \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(7) $ (\eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(1) $ (!\eth_top_i|eth_pins_i|rxd_r\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(7),
	datac => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(1),
	datad => \eth_top_i|eth_pins_i|rxd_r\(1),
	combout => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~16_combout\);

-- Location: FF_X48_Y17_N11
\eth_top_i|eth_rx_i|crc32nibble_i|crc_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~16_combout\,
	sclr => \eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(3));

-- Location: LCCOMB_X48_Y17_N20
\eth_top_i|eth_rx_i|crc32nibble_i|crc_r~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~15_combout\ = (!\eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~q\ & (\eth_top_i|eth_pins_i|rxd_r\(3) $ (\eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_pins_i|rxd_r\(3),
	datac => \eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~q\,
	datad => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(3),
	combout => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~15_combout\);

-- Location: FF_X48_Y17_N21
\eth_top_i|eth_rx_i|crc32nibble_i|crc_r[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(31));

-- Location: LCCOMB_X48_Y17_N18
\eth_top_i|eth_rx_i|crc32nibble_i|crc_r~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~41_combout\ = \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(3) $ (\eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(31) $ (\eth_top_i|eth_pins_i|rxd_r\(3) $ (!\eth_top_i|eth_rx_i|crc32nibble_i|crc_r~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(3),
	datab => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(31),
	datac => \eth_top_i|eth_pins_i|rxd_r\(3),
	datad => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~19_combout\,
	combout => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~41_combout\);

-- Location: FF_X48_Y17_N19
\eth_top_i|eth_rx_i|crc32nibble_i|crc_r[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~41_combout\,
	sclr => \eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(27));

-- Location: LCCOMB_X47_Y17_N18
\eth_top_i|eth_rx_i|update_bank_info_s~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|update_bank_info_s~8_combout\ = (!\eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(25) & (!\eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(28) & (!\eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(26) & !\eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(25),
	datab => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(28),
	datac => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(26),
	datad => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(27),
	combout => \eth_top_i|eth_rx_i|update_bank_info_s~8_combout\);

-- Location: LCCOMB_X48_Y17_N14
\eth_top_i|eth_rx_i|crc32nibble_i|crc_r~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~35_combout\ = \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(27) $ (\eth_top_i|eth_rx_i|crc32nibble_i|crc_r~21_combout\ $ (\eth_top_i|eth_pins_i|rxd_r\(0) $ (\eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(27),
	datab => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~21_combout\,
	datac => \eth_top_i|eth_pins_i|rxd_r\(0),
	datad => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(0),
	combout => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~35_combout\);

-- Location: FF_X48_Y17_N15
\eth_top_i|eth_rx_i|crc32nibble_i|crc_r[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~35_combout\,
	sclr => \eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(23));

-- Location: LCCOMB_X46_Y17_N6
\eth_top_i|eth_rx_i|crc32nibble_i|crc_r~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~34_combout\ = \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(1) $ (\eth_top_i|eth_rx_i|crc32nibble_i|m_s\(1) $ (\eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(26) $ (\eth_top_i|eth_pins_i|rxd_r\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(1),
	datab => \eth_top_i|eth_rx_i|crc32nibble_i|m_s\(1),
	datac => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(26),
	datad => \eth_top_i|eth_pins_i|rxd_r\(1),
	combout => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~34_combout\);

-- Location: FF_X46_Y17_N7
\eth_top_i|eth_rx_i|crc32nibble_i|crc_r[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~34_combout\,
	sclr => \eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(22));

-- Location: LCCOMB_X47_Y17_N8
\eth_top_i|eth_rx_i|update_bank_info_s~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|update_bank_info_s~7_combout\ = (\eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(24) & (!\eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(21) & (!\eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(23) & \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(24),
	datab => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(21),
	datac => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(23),
	datad => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(22),
	combout => \eth_top_i|eth_rx_i|update_bank_info_s~7_combout\);

-- Location: LCCOMB_X46_Y17_N0
\eth_top_i|eth_rx_i|crc32nibble_i|crc_r~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~38_combout\ = \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(22) $ (\eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(2) $ (\eth_top_i|eth_pins_i|rxd_r\(2) $ (!\eth_top_i|eth_rx_i|crc32nibble_i|crc_r~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(22),
	datab => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(2),
	datac => \eth_top_i|eth_pins_i|rxd_r\(2),
	datad => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~19_combout\,
	combout => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~38_combout\);

-- Location: FF_X46_Y17_N1
\eth_top_i|eth_rx_i|crc32nibble_i|crc_r[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~38_combout\,
	sclr => \eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(18));

-- Location: LCCOMB_X46_Y17_N20
\eth_top_i|eth_rx_i|crc32nibble_i|crc_r~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~27_combout\ = \eth_top_i|eth_pins_i|rxd_r\(2) $ (\eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(18) $ (!\eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_pins_i|rxd_r\(2),
	datab => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(18),
	datac => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(2),
	combout => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~27_combout\);

-- Location: FF_X46_Y17_N21
\eth_top_i|eth_rx_i|crc32nibble_i|crc_r[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~27_combout\,
	sclr => \eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(14));

-- Location: LCCOMB_X47_Y17_N20
\eth_top_i|eth_rx_i|update_bank_info_s~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|update_bank_info_s~5_combout\ = (\eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(15) & (\eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(14) & (!\eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(16) & !\eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(15),
	datab => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(14),
	datac => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(16),
	datad => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(13),
	combout => \eth_top_i|eth_rx_i|update_bank_info_s~5_combout\);

-- Location: LCCOMB_X47_Y17_N28
\eth_top_i|eth_rx_i|update_bank_info_s~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|update_bank_info_s~9_combout\ = (\eth_top_i|eth_rx_i|update_bank_info_s~6_combout\ & (\eth_top_i|eth_rx_i|update_bank_info_s~8_combout\ & (\eth_top_i|eth_rx_i|update_bank_info_s~7_combout\ & 
-- \eth_top_i|eth_rx_i|update_bank_info_s~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_rx_i|update_bank_info_s~6_combout\,
	datab => \eth_top_i|eth_rx_i|update_bank_info_s~8_combout\,
	datac => \eth_top_i|eth_rx_i|update_bank_info_s~7_combout\,
	datad => \eth_top_i|eth_rx_i|update_bank_info_s~5_combout\,
	combout => \eth_top_i|eth_rx_i|update_bank_info_s~9_combout\);

-- Location: LCCOMB_X46_Y17_N4
\eth_top_i|eth_rx_i|crc32nibble_i|crc_r~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~32_combout\ = \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~26_combout\ $ (!\eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~26_combout\,
	datad => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(23),
	combout => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~32_combout\);

-- Location: FF_X46_Y17_N5
\eth_top_i|eth_rx_i|crc32nibble_i|crc_r[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~32_combout\,
	sclr => \eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(19));

-- Location: LCCOMB_X48_Y17_N2
\eth_top_i|eth_rx_i|crc32nibble_i|crc_r~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~28_combout\ = \eth_top_i|eth_pins_i|rxd_r\(3) $ (\eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(19) $ (!\eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_pins_i|rxd_r\(3),
	datac => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(19),
	datad => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(3),
	combout => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~28_combout\);

-- Location: FF_X48_Y17_N3
\eth_top_i|eth_rx_i|crc32nibble_i|crc_r[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~28_combout\,
	sclr => \eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(15));

-- Location: LCCOMB_X48_Y17_N26
\eth_top_i|eth_rx_i|crc32nibble_i|crc_r~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~13_combout\ = (!\eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~q\ & \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~q\,
	datad => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(15),
	combout => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~13_combout\);

-- Location: FF_X48_Y17_N27
\eth_top_i|eth_rx_i|crc32nibble_i|crc_r[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(11));

-- Location: LCCOMB_X46_Y17_N8
\eth_top_i|eth_rx_i|crc32nibble_i|crc_r~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~25_combout\ = \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(1) $ (\eth_top_i|eth_rx_i|crc32nibble_i|m_s\(1) $ (\eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(11) $ (\eth_top_i|eth_pins_i|rxd_r\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(1),
	datab => \eth_top_i|eth_rx_i|crc32nibble_i|m_s\(1),
	datac => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(11),
	datad => \eth_top_i|eth_pins_i|rxd_r\(1),
	combout => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~25_combout\);

-- Location: FF_X46_Y17_N9
\eth_top_i|eth_rx_i|crc32nibble_i|crc_r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~25_combout\,
	sclr => \eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(7));

-- Location: LCCOMB_X47_Y17_N16
\eth_top_i|eth_rx_i|update_bank_info_s~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|update_bank_info_s~3_combout\ = (\eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(9) & (\eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(8) & (!\eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(7) & \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(9),
	datab => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(8),
	datac => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(7),
	datad => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(12),
	combout => \eth_top_i|eth_rx_i|update_bank_info_s~3_combout\);

-- Location: LCCOMB_X47_Y17_N4
\eth_top_i|eth_rx_i|update_bank_info_s~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|update_bank_info_s~0_combout\ = (!\eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(1) & (\eth_top_i|eth_rx_i|eth_rx_sm.st_rx_data~q\ & (!\eth_top_i|eth_pins_i|rx_dv_r~q\ & !\eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(1),
	datab => \eth_top_i|eth_rx_i|eth_rx_sm.st_rx_data~q\,
	datac => \eth_top_i|eth_pins_i|rx_dv_r~q\,
	datad => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(0),
	combout => \eth_top_i|eth_rx_i|update_bank_info_s~0_combout\);

-- Location: LCCOMB_X48_Y17_N16
\eth_top_i|eth_rx_i|crc32nibble_i|crc_r~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~12_combout\ = (!\eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~q\ & \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~q\,
	datad => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(14),
	combout => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~12_combout\);

-- Location: FF_X48_Y17_N17
\eth_top_i|eth_rx_i|crc32nibble_i|crc_r[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(10));

-- Location: LCCOMB_X48_Y17_N22
\eth_top_i|eth_rx_i|update_bank_info_s~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|update_bank_info_s~1_combout\ = (!\eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(31) & (\eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(10) & (\eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(11) & \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(31),
	datab => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(10),
	datac => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(11),
	datad => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(2),
	combout => \eth_top_i|eth_rx_i|update_bank_info_s~1_combout\);

-- Location: LCCOMB_X47_Y17_N26
\eth_top_i|eth_rx_i|update_bank_info_s~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|update_bank_info_s~4_combout\ = (\eth_top_i|eth_rx_i|update_bank_info_s~2_combout\ & (\eth_top_i|eth_rx_i|update_bank_info_s~3_combout\ & (\eth_top_i|eth_rx_i|update_bank_info_s~0_combout\ & 
-- \eth_top_i|eth_rx_i|update_bank_info_s~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_rx_i|update_bank_info_s~2_combout\,
	datab => \eth_top_i|eth_rx_i|update_bank_info_s~3_combout\,
	datac => \eth_top_i|eth_rx_i|update_bank_info_s~0_combout\,
	datad => \eth_top_i|eth_rx_i|update_bank_info_s~1_combout\,
	combout => \eth_top_i|eth_rx_i|update_bank_info_s~4_combout\);

-- Location: FF_X48_Y17_N29
\eth_top_i|eth_rx_i|crc32nibble_i|crc_r[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r~21_combout\,
	sclr => \eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(30));

-- Location: LCCOMB_X47_Y17_N6
\eth_top_i|eth_rx_i|update_bank_info_s~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|update_bank_info_s~10_combout\ = (\eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(29) & (\eth_top_i|eth_rx_i|update_bank_info_s~9_combout\ & (\eth_top_i|eth_rx_i|update_bank_info_s~4_combout\ & !\eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(29),
	datab => \eth_top_i|eth_rx_i|update_bank_info_s~9_combout\,
	datac => \eth_top_i|eth_rx_i|update_bank_info_s~4_combout\,
	datad => \eth_top_i|eth_rx_i|crc32nibble_i|crc_r\(30),
	combout => \eth_top_i|eth_rx_i|update_bank_info_s~10_combout\);

-- Location: LCCOMB_X47_Y17_N2
\eth_top_i|eth_rx_i|current_bank_r~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|current_bank_r~0_combout\ = \eth_top_i|eth_rx_i|current_bank_r~q\ $ (\eth_top_i|eth_rx_i|update_bank_info_s~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|eth_rx_i|current_bank_r~q\,
	datad => \eth_top_i|eth_rx_i|update_bank_info_s~10_combout\,
	combout => \eth_top_i|eth_rx_i|current_bank_r~0_combout\);

-- Location: FF_X47_Y17_N3
\eth_top_i|eth_rx_i|current_bank_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_rx_i|current_bank_r~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_i|current_bank_r~q\);

-- Location: LCCOMB_X49_Y17_N16
\eth_top_i|eth_rx_i|bank_info_r[0][10]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|bank_info_r[0][10]~1_combout\ = (\eth_top_i|eth_rx_i|bank_info_r[0][10]~q\) # ((\eth_top_i|eth_rx_i|update_bank_info_s~10_combout\ & !\eth_top_i|eth_rx_i|current_bank_r~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_rx_i|update_bank_info_s~10_combout\,
	datab => \eth_top_i|eth_rx_i|current_bank_r~q\,
	datac => \eth_top_i|eth_rx_i|bank_info_r[0][10]~q\,
	combout => \eth_top_i|eth_rx_i|bank_info_r[0][10]~1_combout\);

-- Location: LCCOMB_X48_Y17_N30
\eth_top_i|eth_rx_ram_i|data_in_r[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_ram_i|data_in_r[0]~feeder_combout\ = \eth_top_i|eth_pins_i|rxd_r\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|eth_pins_i|rxd_r\(0),
	combout => \eth_top_i|eth_rx_ram_i|data_in_r[0]~feeder_combout\);

-- Location: FF_X48_Y17_N31
\eth_top_i|eth_rx_ram_i|data_in_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_rx_ram_i|data_in_r[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_ram_i|data_in_r\(0));

-- Location: LCCOMB_X24_Y29_N2
\eth_top_i|eth_rx_i|addr_cnt[0]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|addr_cnt[0]~13_combout\ = \eth_top_i|eth_rx_i|addr_cnt\(0) $ (VCC)
-- \eth_top_i|eth_rx_i|addr_cnt[0]~14\ = CARRY(\eth_top_i|eth_rx_i|addr_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|eth_rx_i|addr_cnt\(0),
	datad => VCC,
	combout => \eth_top_i|eth_rx_i|addr_cnt[0]~13_combout\,
	cout => \eth_top_i|eth_rx_i|addr_cnt[0]~14\);

-- Location: FF_X24_Y29_N3
\eth_top_i|eth_rx_i|addr_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_rx_i|addr_cnt[0]~13_combout\,
	sclr => \eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_i|addr_cnt\(0));

-- Location: LCCOMB_X24_Y29_N0
\eth_top_i|eth_rx_ram_i|addr_in_r[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_ram_i|addr_in_r[0]~feeder_combout\ = \eth_top_i|eth_rx_i|addr_cnt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|eth_rx_i|addr_cnt\(0),
	combout => \eth_top_i|eth_rx_ram_i|addr_in_r[0]~feeder_combout\);

-- Location: FF_X24_Y29_N1
\eth_top_i|eth_rx_ram_i|addr_in_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_rx_ram_i|addr_in_r[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_ram_i|addr_in_r\(0));

-- Location: LCCOMB_X24_Y29_N4
\eth_top_i|eth_rx_i|addr_cnt[1]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|addr_cnt[1]~15_combout\ = (\eth_top_i|eth_rx_i|addr_cnt\(1) & (!\eth_top_i|eth_rx_i|addr_cnt[0]~14\)) # (!\eth_top_i|eth_rx_i|addr_cnt\(1) & ((\eth_top_i|eth_rx_i|addr_cnt[0]~14\) # (GND)))
-- \eth_top_i|eth_rx_i|addr_cnt[1]~16\ = CARRY((!\eth_top_i|eth_rx_i|addr_cnt[0]~14\) # (!\eth_top_i|eth_rx_i|addr_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|eth_rx_i|addr_cnt\(1),
	datad => VCC,
	cin => \eth_top_i|eth_rx_i|addr_cnt[0]~14\,
	combout => \eth_top_i|eth_rx_i|addr_cnt[1]~15_combout\,
	cout => \eth_top_i|eth_rx_i|addr_cnt[1]~16\);

-- Location: FF_X24_Y29_N5
\eth_top_i|eth_rx_i|addr_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_rx_i|addr_cnt[1]~15_combout\,
	sclr => \eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_i|addr_cnt\(1));

-- Location: LCCOMB_X23_Y29_N8
\eth_top_i|eth_rx_ram_i|addr_in_r[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_ram_i|addr_in_r[1]~feeder_combout\ = \eth_top_i|eth_rx_i|addr_cnt\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|eth_rx_i|addr_cnt\(1),
	combout => \eth_top_i|eth_rx_ram_i|addr_in_r[1]~feeder_combout\);

-- Location: FF_X23_Y29_N9
\eth_top_i|eth_rx_ram_i|addr_in_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_rx_ram_i|addr_in_r[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_ram_i|addr_in_r\(1));

-- Location: LCCOMB_X24_Y29_N6
\eth_top_i|eth_rx_i|addr_cnt[2]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|addr_cnt[2]~17_combout\ = (\eth_top_i|eth_rx_i|addr_cnt\(2) & (\eth_top_i|eth_rx_i|addr_cnt[1]~16\ $ (GND))) # (!\eth_top_i|eth_rx_i|addr_cnt\(2) & (!\eth_top_i|eth_rx_i|addr_cnt[1]~16\ & VCC))
-- \eth_top_i|eth_rx_i|addr_cnt[2]~18\ = CARRY((\eth_top_i|eth_rx_i|addr_cnt\(2) & !\eth_top_i|eth_rx_i|addr_cnt[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_rx_i|addr_cnt\(2),
	datad => VCC,
	cin => \eth_top_i|eth_rx_i|addr_cnt[1]~16\,
	combout => \eth_top_i|eth_rx_i|addr_cnt[2]~17_combout\,
	cout => \eth_top_i|eth_rx_i|addr_cnt[2]~18\);

-- Location: FF_X24_Y29_N7
\eth_top_i|eth_rx_i|addr_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_rx_i|addr_cnt[2]~17_combout\,
	sclr => \eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_i|addr_cnt\(2));

-- Location: LCCOMB_X23_Y29_N10
\eth_top_i|eth_rx_ram_i|addr_in_r[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_ram_i|addr_in_r[2]~feeder_combout\ = \eth_top_i|eth_rx_i|addr_cnt\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|eth_rx_i|addr_cnt\(2),
	combout => \eth_top_i|eth_rx_ram_i|addr_in_r[2]~feeder_combout\);

-- Location: FF_X23_Y29_N11
\eth_top_i|eth_rx_ram_i|addr_in_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_rx_ram_i|addr_in_r[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_ram_i|addr_in_r\(2));

-- Location: LCCOMB_X24_Y29_N8
\eth_top_i|eth_rx_i|addr_cnt[3]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|addr_cnt[3]~19_combout\ = (\eth_top_i|eth_rx_i|addr_cnt\(3) & (!\eth_top_i|eth_rx_i|addr_cnt[2]~18\)) # (!\eth_top_i|eth_rx_i|addr_cnt\(3) & ((\eth_top_i|eth_rx_i|addr_cnt[2]~18\) # (GND)))
-- \eth_top_i|eth_rx_i|addr_cnt[3]~20\ = CARRY((!\eth_top_i|eth_rx_i|addr_cnt[2]~18\) # (!\eth_top_i|eth_rx_i|addr_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|eth_rx_i|addr_cnt\(3),
	datad => VCC,
	cin => \eth_top_i|eth_rx_i|addr_cnt[2]~18\,
	combout => \eth_top_i|eth_rx_i|addr_cnt[3]~19_combout\,
	cout => \eth_top_i|eth_rx_i|addr_cnt[3]~20\);

-- Location: FF_X24_Y29_N9
\eth_top_i|eth_rx_i|addr_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_rx_i|addr_cnt[3]~19_combout\,
	sclr => \eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_i|addr_cnt\(3));

-- Location: FF_X23_Y29_N29
\eth_top_i|eth_rx_ram_i|addr_in_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	asdata => \eth_top_i|eth_rx_i|addr_cnt\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_ram_i|addr_in_r\(3));

-- Location: LCCOMB_X24_Y29_N10
\eth_top_i|eth_rx_i|addr_cnt[4]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|addr_cnt[4]~21_combout\ = (\eth_top_i|eth_rx_i|addr_cnt\(4) & (\eth_top_i|eth_rx_i|addr_cnt[3]~20\ $ (GND))) # (!\eth_top_i|eth_rx_i|addr_cnt\(4) & (!\eth_top_i|eth_rx_i|addr_cnt[3]~20\ & VCC))
-- \eth_top_i|eth_rx_i|addr_cnt[4]~22\ = CARRY((\eth_top_i|eth_rx_i|addr_cnt\(4) & !\eth_top_i|eth_rx_i|addr_cnt[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_rx_i|addr_cnt\(4),
	datad => VCC,
	cin => \eth_top_i|eth_rx_i|addr_cnt[3]~20\,
	combout => \eth_top_i|eth_rx_i|addr_cnt[4]~21_combout\,
	cout => \eth_top_i|eth_rx_i|addr_cnt[4]~22\);

-- Location: FF_X24_Y29_N11
\eth_top_i|eth_rx_i|addr_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_rx_i|addr_cnt[4]~21_combout\,
	sclr => \eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_i|addr_cnt\(4));

-- Location: LCCOMB_X24_Y29_N26
\eth_top_i|eth_rx_ram_i|addr_in_r[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_ram_i|addr_in_r[4]~feeder_combout\ = \eth_top_i|eth_rx_i|addr_cnt\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|eth_rx_i|addr_cnt\(4),
	combout => \eth_top_i|eth_rx_ram_i|addr_in_r[4]~feeder_combout\);

-- Location: FF_X24_Y29_N27
\eth_top_i|eth_rx_ram_i|addr_in_r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_rx_ram_i|addr_in_r[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_ram_i|addr_in_r\(4));

-- Location: LCCOMB_X24_Y29_N12
\eth_top_i|eth_rx_i|addr_cnt[5]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|addr_cnt[5]~23_combout\ = (\eth_top_i|eth_rx_i|addr_cnt\(5) & (!\eth_top_i|eth_rx_i|addr_cnt[4]~22\)) # (!\eth_top_i|eth_rx_i|addr_cnt\(5) & ((\eth_top_i|eth_rx_i|addr_cnt[4]~22\) # (GND)))
-- \eth_top_i|eth_rx_i|addr_cnt[5]~24\ = CARRY((!\eth_top_i|eth_rx_i|addr_cnt[4]~22\) # (!\eth_top_i|eth_rx_i|addr_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_rx_i|addr_cnt\(5),
	datad => VCC,
	cin => \eth_top_i|eth_rx_i|addr_cnt[4]~22\,
	combout => \eth_top_i|eth_rx_i|addr_cnt[5]~23_combout\,
	cout => \eth_top_i|eth_rx_i|addr_cnt[5]~24\);

-- Location: FF_X24_Y29_N13
\eth_top_i|eth_rx_i|addr_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_rx_i|addr_cnt[5]~23_combout\,
	sclr => \eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_i|addr_cnt\(5));

-- Location: FF_X23_Y29_N15
\eth_top_i|eth_rx_ram_i|addr_in_r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	asdata => \eth_top_i|eth_rx_i|addr_cnt\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_ram_i|addr_in_r\(5));

-- Location: LCCOMB_X24_Y29_N14
\eth_top_i|eth_rx_i|addr_cnt[6]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|addr_cnt[6]~25_combout\ = (\eth_top_i|eth_rx_i|addr_cnt\(6) & (\eth_top_i|eth_rx_i|addr_cnt[5]~24\ $ (GND))) # (!\eth_top_i|eth_rx_i|addr_cnt\(6) & (!\eth_top_i|eth_rx_i|addr_cnt[5]~24\ & VCC))
-- \eth_top_i|eth_rx_i|addr_cnt[6]~26\ = CARRY((\eth_top_i|eth_rx_i|addr_cnt\(6) & !\eth_top_i|eth_rx_i|addr_cnt[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|eth_rx_i|addr_cnt\(6),
	datad => VCC,
	cin => \eth_top_i|eth_rx_i|addr_cnt[5]~24\,
	combout => \eth_top_i|eth_rx_i|addr_cnt[6]~25_combout\,
	cout => \eth_top_i|eth_rx_i|addr_cnt[6]~26\);

-- Location: FF_X24_Y29_N15
\eth_top_i|eth_rx_i|addr_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_rx_i|addr_cnt[6]~25_combout\,
	sclr => \eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_i|addr_cnt\(6));

-- Location: FF_X23_Y29_N1
\eth_top_i|eth_rx_ram_i|addr_in_r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	asdata => \eth_top_i|eth_rx_i|addr_cnt\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_ram_i|addr_in_r\(6));

-- Location: LCCOMB_X24_Y29_N16
\eth_top_i|eth_rx_i|addr_cnt[7]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|addr_cnt[7]~27_combout\ = (\eth_top_i|eth_rx_i|addr_cnt\(7) & (!\eth_top_i|eth_rx_i|addr_cnt[6]~26\)) # (!\eth_top_i|eth_rx_i|addr_cnt\(7) & ((\eth_top_i|eth_rx_i|addr_cnt[6]~26\) # (GND)))
-- \eth_top_i|eth_rx_i|addr_cnt[7]~28\ = CARRY((!\eth_top_i|eth_rx_i|addr_cnt[6]~26\) # (!\eth_top_i|eth_rx_i|addr_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|eth_rx_i|addr_cnt\(7),
	datad => VCC,
	cin => \eth_top_i|eth_rx_i|addr_cnt[6]~26\,
	combout => \eth_top_i|eth_rx_i|addr_cnt[7]~27_combout\,
	cout => \eth_top_i|eth_rx_i|addr_cnt[7]~28\);

-- Location: FF_X24_Y29_N17
\eth_top_i|eth_rx_i|addr_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_rx_i|addr_cnt[7]~27_combout\,
	sclr => \eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_i|addr_cnt\(7));

-- Location: LCCOMB_X23_Y29_N2
\eth_top_i|eth_rx_ram_i|addr_in_r[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_ram_i|addr_in_r[7]~feeder_combout\ = \eth_top_i|eth_rx_i|addr_cnt\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|eth_rx_i|addr_cnt\(7),
	combout => \eth_top_i|eth_rx_ram_i|addr_in_r[7]~feeder_combout\);

-- Location: FF_X23_Y29_N3
\eth_top_i|eth_rx_ram_i|addr_in_r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_rx_ram_i|addr_in_r[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_ram_i|addr_in_r\(7));

-- Location: LCCOMB_X24_Y29_N18
\eth_top_i|eth_rx_i|addr_cnt[8]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|addr_cnt[8]~29_combout\ = (\eth_top_i|eth_rx_i|addr_cnt\(8) & (\eth_top_i|eth_rx_i|addr_cnt[7]~28\ $ (GND))) # (!\eth_top_i|eth_rx_i|addr_cnt\(8) & (!\eth_top_i|eth_rx_i|addr_cnt[7]~28\ & VCC))
-- \eth_top_i|eth_rx_i|addr_cnt[8]~30\ = CARRY((\eth_top_i|eth_rx_i|addr_cnt\(8) & !\eth_top_i|eth_rx_i|addr_cnt[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|eth_rx_i|addr_cnt\(8),
	datad => VCC,
	cin => \eth_top_i|eth_rx_i|addr_cnt[7]~28\,
	combout => \eth_top_i|eth_rx_i|addr_cnt[8]~29_combout\,
	cout => \eth_top_i|eth_rx_i|addr_cnt[8]~30\);

-- Location: FF_X24_Y29_N19
\eth_top_i|eth_rx_i|addr_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_rx_i|addr_cnt[8]~29_combout\,
	sclr => \eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_i|addr_cnt\(8));

-- Location: LCCOMB_X23_Y29_N20
\eth_top_i|eth_rx_ram_i|addr_in_r[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_ram_i|addr_in_r[8]~feeder_combout\ = \eth_top_i|eth_rx_i|addr_cnt\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|eth_rx_i|addr_cnt\(8),
	combout => \eth_top_i|eth_rx_ram_i|addr_in_r[8]~feeder_combout\);

-- Location: FF_X23_Y29_N21
\eth_top_i|eth_rx_ram_i|addr_in_r[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_rx_ram_i|addr_in_r[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_ram_i|addr_in_r\(8));

-- Location: LCCOMB_X24_Y29_N20
\eth_top_i|eth_rx_i|addr_cnt[9]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|addr_cnt[9]~31_combout\ = (\eth_top_i|eth_rx_i|addr_cnt\(9) & (!\eth_top_i|eth_rx_i|addr_cnt[8]~30\)) # (!\eth_top_i|eth_rx_i|addr_cnt\(9) & ((\eth_top_i|eth_rx_i|addr_cnt[8]~30\) # (GND)))
-- \eth_top_i|eth_rx_i|addr_cnt[9]~32\ = CARRY((!\eth_top_i|eth_rx_i|addr_cnt[8]~30\) # (!\eth_top_i|eth_rx_i|addr_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|eth_rx_i|addr_cnt\(9),
	datad => VCC,
	cin => \eth_top_i|eth_rx_i|addr_cnt[8]~30\,
	combout => \eth_top_i|eth_rx_i|addr_cnt[9]~31_combout\,
	cout => \eth_top_i|eth_rx_i|addr_cnt[9]~32\);

-- Location: FF_X24_Y29_N21
\eth_top_i|eth_rx_i|addr_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_rx_i|addr_cnt[9]~31_combout\,
	sclr => \eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_i|addr_cnt\(9));

-- Location: LCCOMB_X24_Y29_N28
\eth_top_i|eth_rx_ram_i|addr_in_r[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_ram_i|addr_in_r[9]~feeder_combout\ = \eth_top_i|eth_rx_i|addr_cnt\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|eth_rx_i|addr_cnt\(9),
	combout => \eth_top_i|eth_rx_ram_i|addr_in_r[9]~feeder_combout\);

-- Location: FF_X24_Y29_N29
\eth_top_i|eth_rx_ram_i|addr_in_r[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_rx_ram_i|addr_in_r[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_ram_i|addr_in_r\(9));

-- Location: LCCOMB_X24_Y29_N22
\eth_top_i|eth_rx_i|addr_cnt[10]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|addr_cnt[10]~33_combout\ = (\eth_top_i|eth_rx_i|addr_cnt\(10) & (\eth_top_i|eth_rx_i|addr_cnt[9]~32\ $ (GND))) # (!\eth_top_i|eth_rx_i|addr_cnt\(10) & (!\eth_top_i|eth_rx_i|addr_cnt[9]~32\ & VCC))
-- \eth_top_i|eth_rx_i|addr_cnt[10]~34\ = CARRY((\eth_top_i|eth_rx_i|addr_cnt\(10) & !\eth_top_i|eth_rx_i|addr_cnt[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_rx_i|addr_cnt\(10),
	datad => VCC,
	cin => \eth_top_i|eth_rx_i|addr_cnt[9]~32\,
	combout => \eth_top_i|eth_rx_i|addr_cnt[10]~33_combout\,
	cout => \eth_top_i|eth_rx_i|addr_cnt[10]~34\);

-- Location: FF_X24_Y29_N23
\eth_top_i|eth_rx_i|addr_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_rx_i|addr_cnt[10]~33_combout\,
	sclr => \eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_i|addr_cnt\(10));

-- Location: LCCOMB_X24_Y29_N30
\eth_top_i|eth_rx_ram_i|addr_in_r[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_ram_i|addr_in_r[10]~feeder_combout\ = \eth_top_i|eth_rx_i|addr_cnt\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|eth_rx_i|addr_cnt\(10),
	combout => \eth_top_i|eth_rx_ram_i|addr_in_r[10]~feeder_combout\);

-- Location: FF_X24_Y29_N31
\eth_top_i|eth_rx_ram_i|addr_in_r[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_rx_ram_i|addr_in_r[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_ram_i|addr_in_r\(10));

-- Location: LCCOMB_X24_Y29_N24
\eth_top_i|eth_rx_i|addr_cnt[11]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|addr_cnt[11]~35_combout\ = \eth_top_i|eth_rx_i|addr_cnt[10]~34\ $ (\eth_top_i|eth_rx_i|addr_cnt\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|eth_rx_i|addr_cnt\(11),
	cin => \eth_top_i|eth_rx_i|addr_cnt[10]~34\,
	combout => \eth_top_i|eth_rx_i|addr_cnt[11]~35_combout\);

-- Location: FF_X24_Y29_N25
\eth_top_i|eth_rx_i|addr_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_rx_i|addr_cnt[11]~35_combout\,
	sclr => \eth_top_i|eth_rx_i|eth_rx_sm.st_wait_sfd~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_i|addr_cnt\(11));

-- Location: LCCOMB_X23_Y29_N22
\eth_top_i|eth_rx_ram_i|addr_in_r[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_ram_i|addr_in_r[11]~feeder_combout\ = \eth_top_i|eth_rx_i|addr_cnt\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|eth_rx_i|addr_cnt\(11),
	combout => \eth_top_i|eth_rx_ram_i|addr_in_r[11]~feeder_combout\);

-- Location: FF_X23_Y29_N23
\eth_top_i|eth_rx_ram_i|addr_in_r[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_rx_ram_i|addr_in_r[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_ram_i|addr_in_r\(11));

-- Location: FF_X45_Y17_N1
\eth_top_i|eth_rx_ram_i|addr_in_r[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	asdata => \eth_top_i|eth_rx_i|current_bank_r~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_ram_i|addr_in_r\(12));

-- Location: LCCOMB_X23_Y26_N12
\eth_top_i|net_proc_i|rx_ram_re_dr[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|rx_ram_re_dr[1]~feeder_combout\ = \eth_top_i|net_proc_i|rx_ram_re_dr\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|rx_ram_re_dr\(0),
	combout => \eth_top_i|net_proc_i|rx_ram_re_dr[1]~feeder_combout\);

-- Location: FF_X23_Y26_N13
\eth_top_i|net_proc_i|rx_ram_re_dr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|rx_ram_re_dr[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|rx_ram_re_dr\(1));

-- Location: FF_X24_Y27_N29
\eth_top_i|net_proc_i|rx_ram_re_dr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \eth_top_i|net_proc_i|rx_ram_re_dr\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|rx_ram_re_dr\(2));

-- Location: FF_X26_Y27_N25
\eth_top_i|net_proc_i|rx_ram_data_valid_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \eth_top_i|net_proc_i|rx_ram_re_dr\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|rx_ram_data_valid_r~q\);

-- Location: LCCOMB_X24_Y27_N8
\eth_top_i|net_proc_i|Selector18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector18~0_combout\ = (\eth_top_i|net_proc_i|np_fsm.npf_checkProtocolID~q\) # ((\eth_top_i|net_proc_i|np_fsm.npf_copyDestMAC~q\ & !\eth_top_i|net_proc_i|rx_ram_data_valid_r~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|np_fsm.npf_checkProtocolID~q\,
	datac => \eth_top_i|net_proc_i|np_fsm.npf_copyDestMAC~q\,
	datad => \eth_top_i|net_proc_i|rx_ram_data_valid_r~q\,
	combout => \eth_top_i|net_proc_i|Selector18~0_combout\);

-- Location: FF_X24_Y27_N9
\eth_top_i|net_proc_i|np_fsm.npf_copyDestMAC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|np_fsm.npf_copyDestMAC~q\);

-- Location: LCCOMB_X46_Y17_N2
\eth_top_i|eth_rx_ram_i|data_in_r[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_ram_i|data_in_r[2]~feeder_combout\ = \eth_top_i|eth_pins_i|rxd_r\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|eth_pins_i|rxd_r\(2),
	combout => \eth_top_i|eth_rx_ram_i|data_in_r[2]~feeder_combout\);

-- Location: FF_X46_Y17_N3
\eth_top_i|eth_rx_ram_i|data_in_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_rx_ram_i|data_in_r[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_ram_i|data_in_r\(2));

-- Location: FF_X24_Y25_N5
\eth_top_i|net_proc_i|rx_bank_busy_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \eth_top_i|eth_rx_i|bank_info_r[0][10]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|rx_bank_busy_r\(0));

-- Location: LCCOMB_X47_Y17_N24
\eth_top_i|eth_rx_i|bank_info_r[1][10]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|bank_info_r[1][10]~0_combout\ = (\eth_top_i|eth_rx_i|bank_info_r[1][10]~q\) # ((\eth_top_i|eth_rx_i|update_bank_info_s~10_combout\ & \eth_top_i|eth_rx_i|current_bank_r~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_rx_i|update_bank_info_s~10_combout\,
	datac => \eth_top_i|eth_rx_i|bank_info_r[1][10]~q\,
	datad => \eth_top_i|eth_rx_i|current_bank_r~q\,
	combout => \eth_top_i|eth_rx_i|bank_info_r[1][10]~0_combout\);

-- Location: LCCOMB_X26_Y25_N8
\eth_top_i|net_proc_i|rx_current_bank_r~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|rx_current_bank_r~0_combout\ = \eth_top_i|net_proc_i|rx_current_bank_proc_done_r~q\ $ (\eth_top_i|net_proc_i|rx_current_bank_r~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|rx_current_bank_proc_done_r~q\,
	datac => \eth_top_i|net_proc_i|rx_current_bank_r~q\,
	combout => \eth_top_i|net_proc_i|rx_current_bank_r~0_combout\);

-- Location: FF_X26_Y25_N9
\eth_top_i|net_proc_i|rx_current_bank_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|rx_current_bank_r~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|rx_current_bank_r~q\);

-- Location: LCCOMB_X26_Y25_N4
\eth_top_i|net_proc_i|rx_bank_info_clrn_r~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|rx_bank_info_clrn_r~0_combout\ = (!\eth_top_i|net_proc_i|rx_current_bank_r~q\) # (!\eth_top_i|net_proc_i|rx_current_bank_proc_done_r~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|rx_current_bank_proc_done_r~q\,
	datac => \eth_top_i|net_proc_i|rx_current_bank_r~q\,
	combout => \eth_top_i|net_proc_i|rx_bank_info_clrn_r~0_combout\);

-- Location: FF_X26_Y25_N5
\eth_top_i|net_proc_i|rx_bank_info_clrn_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|rx_bank_info_clrn_r~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|rx_bank_info_clrn_r\(1));

-- Location: FF_X47_Y17_N25
\eth_top_i|eth_rx_i|bank_info_r[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_rx_i|bank_info_r[1][10]~0_combout\,
	clrn => \eth_top_i|net_proc_i|rx_bank_info_clrn_r\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_i|bank_info_r[1][10]~q\);

-- Location: FF_X24_Y25_N11
\eth_top_i|net_proc_i|rx_bank_busy_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \eth_top_i|eth_rx_i|bank_info_r[1][10]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|rx_bank_busy_r\(1));

-- Location: LCCOMB_X24_Y25_N10
\eth_top_i|net_proc_i|Selector16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector16~0_combout\ = (!\eth_top_i|net_proc_i|np_fsm.npf_idle~q\ & ((\eth_top_i|net_proc_i|rx_current_bank_r~q\ & ((!\eth_top_i|net_proc_i|rx_bank_busy_r\(1)))) # (!\eth_top_i|net_proc_i|rx_current_bank_r~q\ & 
-- (!\eth_top_i|net_proc_i|rx_bank_busy_r\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|np_fsm.npf_idle~q\,
	datab => \eth_top_i|net_proc_i|rx_bank_busy_r\(0),
	datac => \eth_top_i|net_proc_i|rx_bank_busy_r\(1),
	datad => \eth_top_i|net_proc_i|rx_current_bank_r~q\,
	combout => \eth_top_i|net_proc_i|Selector16~0_combout\);

-- Location: LCCOMB_X46_Y17_N24
\eth_top_i|eth_rx_ram_i|data_in_r[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_ram_i|data_in_r[1]~feeder_combout\ = \eth_top_i|eth_pins_i|rxd_r\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|eth_pins_i|rxd_r\(1),
	combout => \eth_top_i|eth_rx_ram_i|data_in_r[1]~feeder_combout\);

-- Location: FF_X46_Y17_N25
\eth_top_i|eth_rx_ram_i|data_in_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_rx_ram_i|data_in_r[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_ram_i|data_in_r\(1));

-- Location: LCCOMB_X21_Y27_N10
\eth_top_i|net_proc_i|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add1~0_combout\ = \eth_top_i|net_proc_i|rx_ram_addr_r\(0) $ (VCC)
-- \eth_top_i|net_proc_i|Add1~1\ = CARRY(\eth_top_i|net_proc_i|rx_ram_addr_r\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|rx_ram_addr_r\(0),
	datad => VCC,
	combout => \eth_top_i|net_proc_i|Add1~0_combout\,
	cout => \eth_top_i|net_proc_i|Add1~1\);

-- Location: LCCOMB_X21_Y27_N14
\eth_top_i|net_proc_i|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add1~4_combout\ = (\eth_top_i|net_proc_i|rx_ram_addr_r\(2) & (\eth_top_i|net_proc_i|Add1~3\ $ (GND))) # (!\eth_top_i|net_proc_i|rx_ram_addr_r\(2) & (!\eth_top_i|net_proc_i|Add1~3\ & VCC))
-- \eth_top_i|net_proc_i|Add1~5\ = CARRY((\eth_top_i|net_proc_i|rx_ram_addr_r\(2) & !\eth_top_i|net_proc_i|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|rx_ram_addr_r\(2),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|Add1~3\,
	combout => \eth_top_i|net_proc_i|Add1~4_combout\,
	cout => \eth_top_i|net_proc_i|Add1~5\);

-- Location: LCCOMB_X23_Y25_N16
\eth_top_i|net_proc_i|Selector20~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector20~1_combout\ = (!\eth_top_i|net_proc_i|Selector26~4_combout\ & ((\eth_top_i|net_proc_i|Selector26~3_combout\ & ((\eth_top_i|net_proc_i|np_fsm.npf_caseComID~q\))) # (!\eth_top_i|net_proc_i|Selector26~3_combout\ & 
-- (\eth_top_i|net_proc_i|Selector20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|Selector26~4_combout\,
	datab => \eth_top_i|net_proc_i|Selector20~0_combout\,
	datac => \eth_top_i|net_proc_i|np_fsm.npf_caseComID~q\,
	datad => \eth_top_i|net_proc_i|Selector26~3_combout\,
	combout => \eth_top_i|net_proc_i|Selector20~1_combout\);

-- Location: FF_X23_Y25_N17
\eth_top_i|net_proc_i|np_fsm.npf_caseComID\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Selector20~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|np_fsm.npf_caseComID~q\);

-- Location: LCCOMB_X21_Y27_N16
\eth_top_i|net_proc_i|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add1~6_combout\ = (\eth_top_i|net_proc_i|rx_ram_addr_r\(3) & (!\eth_top_i|net_proc_i|Add1~5\)) # (!\eth_top_i|net_proc_i|rx_ram_addr_r\(3) & ((\eth_top_i|net_proc_i|Add1~5\) # (GND)))
-- \eth_top_i|net_proc_i|Add1~7\ = CARRY((!\eth_top_i|net_proc_i|Add1~5\) # (!\eth_top_i|net_proc_i|rx_ram_addr_r\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|rx_ram_addr_r\(3),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|Add1~5\,
	combout => \eth_top_i|net_proc_i|Add1~6_combout\,
	cout => \eth_top_i|net_proc_i|Add1~7\);

-- Location: LCCOMB_X21_Y27_N2
\eth_top_i|net_proc_i|Selector11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector11~1_combout\ = (\eth_top_i|net_proc_i|rx_ram_cnt_r[2]~4_combout\) # ((\eth_top_i|net_proc_i|np_fsm.npf_idle~q\ & (\eth_top_i|net_proc_i|Add1~6_combout\ & \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|np_fsm.npf_idle~q\,
	datab => \eth_top_i|net_proc_i|Add1~6_combout\,
	datac => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~3_combout\,
	datad => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~4_combout\,
	combout => \eth_top_i|net_proc_i|Selector11~1_combout\);

-- Location: FF_X21_Y27_N3
\eth_top_i|net_proc_i|rx_ram_addr_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Selector11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|rx_ram_addr_r\(3));

-- Location: LCCOMB_X21_Y26_N8
\eth_top_i|eth_rx_ram_i|addr_out_r[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_ram_i|addr_out_r[3]~feeder_combout\ = \eth_top_i|net_proc_i|rx_ram_addr_r\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|net_proc_i|rx_ram_addr_r\(3),
	combout => \eth_top_i|eth_rx_ram_i|addr_out_r[3]~feeder_combout\);

-- Location: FF_X21_Y26_N9
\eth_top_i|eth_rx_ram_i|addr_out_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|eth_rx_ram_i|addr_out_r[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_ram_i|addr_out_r\(3));

-- Location: LCCOMB_X21_Y27_N18
\eth_top_i|net_proc_i|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add1~8_combout\ = (\eth_top_i|net_proc_i|rx_ram_addr_r\(4) & (\eth_top_i|net_proc_i|Add1~7\ $ (GND))) # (!\eth_top_i|net_proc_i|rx_ram_addr_r\(4) & (!\eth_top_i|net_proc_i|Add1~7\ & VCC))
-- \eth_top_i|net_proc_i|Add1~9\ = CARRY((\eth_top_i|net_proc_i|rx_ram_addr_r\(4) & !\eth_top_i|net_proc_i|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|rx_ram_addr_r\(4),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|Add1~7\,
	combout => \eth_top_i|net_proc_i|Add1~8_combout\,
	cout => \eth_top_i|net_proc_i|Add1~9\);

-- Location: LCCOMB_X23_Y27_N4
\eth_top_i|net_proc_i|Selector10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector10~0_combout\ = (\eth_top_i|net_proc_i|rx_ram_cnt_r[2]~4_combout\) # ((\eth_top_i|net_proc_i|Selector11~0_combout\ & ((\eth_top_i|net_proc_i|Add1~8_combout\))) # (!\eth_top_i|net_proc_i|Selector11~0_combout\ & 
-- (!\eth_top_i|net_proc_i|np_fsm.npf_checkProtocolID~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|Selector11~0_combout\,
	datab => \eth_top_i|net_proc_i|np_fsm.npf_checkProtocolID~q\,
	datac => \eth_top_i|net_proc_i|Add1~8_combout\,
	datad => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~4_combout\,
	combout => \eth_top_i|net_proc_i|Selector10~0_combout\);

-- Location: FF_X23_Y27_N5
\eth_top_i|net_proc_i|rx_ram_addr_r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|rx_ram_addr_r\(4));

-- Location: LCCOMB_X23_Y27_N28
\eth_top_i|eth_rx_ram_i|addr_out_r[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_ram_i|addr_out_r[4]~feeder_combout\ = \eth_top_i|net_proc_i|rx_ram_addr_r\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|net_proc_i|rx_ram_addr_r\(4),
	combout => \eth_top_i|eth_rx_ram_i|addr_out_r[4]~feeder_combout\);

-- Location: FF_X23_Y27_N29
\eth_top_i|eth_rx_ram_i|addr_out_r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|eth_rx_ram_i|addr_out_r[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_ram_i|addr_out_r\(4));

-- Location: LCCOMB_X21_Y27_N20
\eth_top_i|net_proc_i|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add1~10_combout\ = (\eth_top_i|net_proc_i|rx_ram_addr_r\(5) & (!\eth_top_i|net_proc_i|Add1~9\)) # (!\eth_top_i|net_proc_i|rx_ram_addr_r\(5) & ((\eth_top_i|net_proc_i|Add1~9\) # (GND)))
-- \eth_top_i|net_proc_i|Add1~11\ = CARRY((!\eth_top_i|net_proc_i|Add1~9\) # (!\eth_top_i|net_proc_i|rx_ram_addr_r\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|rx_ram_addr_r\(5),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|Add1~9\,
	combout => \eth_top_i|net_proc_i|Add1~10_combout\,
	cout => \eth_top_i|net_proc_i|Add1~11\);

-- Location: LCCOMB_X21_Y27_N4
\eth_top_i|net_proc_i|Selector9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector9~0_combout\ = (\eth_top_i|net_proc_i|np_fsm.npf_idle~q\ & (\eth_top_i|net_proc_i|Add1~10_combout\ & (\eth_top_i|net_proc_i|rx_ram_cnt_r[2]~3_combout\ & !\eth_top_i|net_proc_i|rx_ram_cnt_r[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|np_fsm.npf_idle~q\,
	datab => \eth_top_i|net_proc_i|Add1~10_combout\,
	datac => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~3_combout\,
	datad => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~4_combout\,
	combout => \eth_top_i|net_proc_i|Selector9~0_combout\);

-- Location: FF_X21_Y27_N5
\eth_top_i|net_proc_i|rx_ram_addr_r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|rx_ram_addr_r\(5));

-- Location: LCCOMB_X21_Y28_N18
\eth_top_i|eth_rx_ram_i|addr_out_r[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_ram_i|addr_out_r[5]~feeder_combout\ = \eth_top_i|net_proc_i|rx_ram_addr_r\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|net_proc_i|rx_ram_addr_r\(5),
	combout => \eth_top_i|eth_rx_ram_i|addr_out_r[5]~feeder_combout\);

-- Location: FF_X21_Y28_N19
\eth_top_i|eth_rx_ram_i|addr_out_r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|eth_rx_ram_i|addr_out_r[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_ram_i|addr_out_r\(5));

-- Location: LCCOMB_X21_Y27_N22
\eth_top_i|net_proc_i|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add1~12_combout\ = (\eth_top_i|net_proc_i|rx_ram_addr_r\(6) & (\eth_top_i|net_proc_i|Add1~11\ $ (GND))) # (!\eth_top_i|net_proc_i|rx_ram_addr_r\(6) & (!\eth_top_i|net_proc_i|Add1~11\ & VCC))
-- \eth_top_i|net_proc_i|Add1~13\ = CARRY((\eth_top_i|net_proc_i|rx_ram_addr_r\(6) & !\eth_top_i|net_proc_i|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|rx_ram_addr_r\(6),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|Add1~11\,
	combout => \eth_top_i|net_proc_i|Add1~12_combout\,
	cout => \eth_top_i|net_proc_i|Add1~13\);

-- Location: LCCOMB_X21_Y26_N22
\eth_top_i|net_proc_i|Selector8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector8~0_combout\ = (\eth_top_i|net_proc_i|np_fsm.npf_idle~q\ & (!\eth_top_i|net_proc_i|rx_ram_cnt_r[2]~4_combout\ & (\eth_top_i|net_proc_i|rx_ram_cnt_r[2]~3_combout\ & \eth_top_i|net_proc_i|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|np_fsm.npf_idle~q\,
	datab => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~4_combout\,
	datac => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~3_combout\,
	datad => \eth_top_i|net_proc_i|Add1~12_combout\,
	combout => \eth_top_i|net_proc_i|Selector8~0_combout\);

-- Location: FF_X21_Y26_N23
\eth_top_i|net_proc_i|rx_ram_addr_r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|rx_ram_addr_r\(6));

-- Location: LCCOMB_X21_Y26_N26
\eth_top_i|eth_rx_ram_i|addr_out_r[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_ram_i|addr_out_r[6]~feeder_combout\ = \eth_top_i|net_proc_i|rx_ram_addr_r\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|net_proc_i|rx_ram_addr_r\(6),
	combout => \eth_top_i|eth_rx_ram_i|addr_out_r[6]~feeder_combout\);

-- Location: FF_X21_Y26_N27
\eth_top_i|eth_rx_ram_i|addr_out_r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|eth_rx_ram_i|addr_out_r[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_ram_i|addr_out_r\(6));

-- Location: LCCOMB_X21_Y27_N24
\eth_top_i|net_proc_i|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add1~14_combout\ = (\eth_top_i|net_proc_i|rx_ram_addr_r\(7) & (!\eth_top_i|net_proc_i|Add1~13\)) # (!\eth_top_i|net_proc_i|rx_ram_addr_r\(7) & ((\eth_top_i|net_proc_i|Add1~13\) # (GND)))
-- \eth_top_i|net_proc_i|Add1~15\ = CARRY((!\eth_top_i|net_proc_i|Add1~13\) # (!\eth_top_i|net_proc_i|rx_ram_addr_r\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|rx_ram_addr_r\(7),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|Add1~13\,
	combout => \eth_top_i|net_proc_i|Add1~14_combout\,
	cout => \eth_top_i|net_proc_i|Add1~15\);

-- Location: LCCOMB_X21_Y26_N0
\eth_top_i|net_proc_i|Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector7~0_combout\ = (\eth_top_i|net_proc_i|rx_ram_cnt_r[2]~3_combout\ & (\eth_top_i|net_proc_i|Add1~14_combout\ & (\eth_top_i|net_proc_i|np_fsm.npf_idle~q\ & !\eth_top_i|net_proc_i|rx_ram_cnt_r[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~3_combout\,
	datab => \eth_top_i|net_proc_i|Add1~14_combout\,
	datac => \eth_top_i|net_proc_i|np_fsm.npf_idle~q\,
	datad => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~4_combout\,
	combout => \eth_top_i|net_proc_i|Selector7~0_combout\);

-- Location: FF_X21_Y26_N1
\eth_top_i|net_proc_i|rx_ram_addr_r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|rx_ram_addr_r\(7));

-- Location: LCCOMB_X21_Y26_N20
\eth_top_i|eth_rx_ram_i|addr_out_r[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_ram_i|addr_out_r[7]~feeder_combout\ = \eth_top_i|net_proc_i|rx_ram_addr_r\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|rx_ram_addr_r\(7),
	combout => \eth_top_i|eth_rx_ram_i|addr_out_r[7]~feeder_combout\);

-- Location: FF_X21_Y26_N21
\eth_top_i|eth_rx_ram_i|addr_out_r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|eth_rx_ram_i|addr_out_r[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_ram_i|addr_out_r\(7));

-- Location: LCCOMB_X21_Y27_N26
\eth_top_i|net_proc_i|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add1~16_combout\ = (\eth_top_i|net_proc_i|rx_ram_addr_r\(8) & (\eth_top_i|net_proc_i|Add1~15\ $ (GND))) # (!\eth_top_i|net_proc_i|rx_ram_addr_r\(8) & (!\eth_top_i|net_proc_i|Add1~15\ & VCC))
-- \eth_top_i|net_proc_i|Add1~17\ = CARRY((\eth_top_i|net_proc_i|rx_ram_addr_r\(8) & !\eth_top_i|net_proc_i|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|rx_ram_addr_r\(8),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|Add1~15\,
	combout => \eth_top_i|net_proc_i|Add1~16_combout\,
	cout => \eth_top_i|net_proc_i|Add1~17\);

-- Location: LCCOMB_X21_Y27_N6
\eth_top_i|net_proc_i|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector6~0_combout\ = (\eth_top_i|net_proc_i|rx_ram_cnt_r[2]~3_combout\ & (\eth_top_i|net_proc_i|np_fsm.npf_idle~q\ & (\eth_top_i|net_proc_i|Add1~16_combout\ & !\eth_top_i|net_proc_i|rx_ram_cnt_r[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~3_combout\,
	datab => \eth_top_i|net_proc_i|np_fsm.npf_idle~q\,
	datac => \eth_top_i|net_proc_i|Add1~16_combout\,
	datad => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~4_combout\,
	combout => \eth_top_i|net_proc_i|Selector6~0_combout\);

-- Location: FF_X21_Y27_N7
\eth_top_i|net_proc_i|rx_ram_addr_r[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|rx_ram_addr_r\(8));

-- Location: LCCOMB_X21_Y28_N12
\eth_top_i|eth_rx_ram_i|addr_out_r[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_ram_i|addr_out_r[8]~feeder_combout\ = \eth_top_i|net_proc_i|rx_ram_addr_r\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|net_proc_i|rx_ram_addr_r\(8),
	combout => \eth_top_i|eth_rx_ram_i|addr_out_r[8]~feeder_combout\);

-- Location: FF_X21_Y28_N13
\eth_top_i|eth_rx_ram_i|addr_out_r[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|eth_rx_ram_i|addr_out_r[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_ram_i|addr_out_r\(8));

-- Location: LCCOMB_X21_Y27_N28
\eth_top_i|net_proc_i|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add1~18_combout\ = (\eth_top_i|net_proc_i|rx_ram_addr_r\(9) & (!\eth_top_i|net_proc_i|Add1~17\)) # (!\eth_top_i|net_proc_i|rx_ram_addr_r\(9) & ((\eth_top_i|net_proc_i|Add1~17\) # (GND)))
-- \eth_top_i|net_proc_i|Add1~19\ = CARRY((!\eth_top_i|net_proc_i|Add1~17\) # (!\eth_top_i|net_proc_i|rx_ram_addr_r\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|rx_ram_addr_r\(9),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|Add1~17\,
	combout => \eth_top_i|net_proc_i|Add1~18_combout\,
	cout => \eth_top_i|net_proc_i|Add1~19\);

-- Location: LCCOMB_X21_Y27_N8
\eth_top_i|net_proc_i|Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector5~0_combout\ = (\eth_top_i|net_proc_i|np_fsm.npf_idle~q\ & (\eth_top_i|net_proc_i|Add1~18_combout\ & (\eth_top_i|net_proc_i|rx_ram_cnt_r[2]~3_combout\ & !\eth_top_i|net_proc_i|rx_ram_cnt_r[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|np_fsm.npf_idle~q\,
	datab => \eth_top_i|net_proc_i|Add1~18_combout\,
	datac => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~3_combout\,
	datad => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~4_combout\,
	combout => \eth_top_i|net_proc_i|Selector5~0_combout\);

-- Location: FF_X21_Y27_N9
\eth_top_i|net_proc_i|rx_ram_addr_r[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|rx_ram_addr_r\(9));

-- Location: LCCOMB_X21_Y28_N6
\eth_top_i|eth_rx_ram_i|addr_out_r[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_ram_i|addr_out_r[9]~feeder_combout\ = \eth_top_i|net_proc_i|rx_ram_addr_r\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|net_proc_i|rx_ram_addr_r\(9),
	combout => \eth_top_i|eth_rx_ram_i|addr_out_r[9]~feeder_combout\);

-- Location: FF_X21_Y28_N7
\eth_top_i|eth_rx_ram_i|addr_out_r[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|eth_rx_ram_i|addr_out_r[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_ram_i|addr_out_r\(9));

-- Location: LCCOMB_X23_Y27_N24
\eth_top_i|net_proc_i|Selector4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector4~2_combout\ = (!\eth_top_i|net_proc_i|np_fsm.npf_caseComID~q\ & (!\eth_top_i|net_proc_i|np_fsm.npf_checkProtocolID~q\ & (!\eth_top_i|net_proc_i|np_fsm.npf_copyDestMAC~q\ & \eth_top_i|net_proc_i|np_fsm.npf_idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|np_fsm.npf_caseComID~q\,
	datab => \eth_top_i|net_proc_i|np_fsm.npf_checkProtocolID~q\,
	datac => \eth_top_i|net_proc_i|np_fsm.npf_copyDestMAC~q\,
	datad => \eth_top_i|net_proc_i|np_fsm.npf_idle~q\,
	combout => \eth_top_i|net_proc_i|Selector4~2_combout\);

-- Location: LCCOMB_X21_Y27_N30
\eth_top_i|net_proc_i|Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add1~20_combout\ = \eth_top_i|net_proc_i|Add1~19\ $ (!\eth_top_i|net_proc_i|rx_ram_addr_r\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|net_proc_i|rx_ram_addr_r\(10),
	cin => \eth_top_i|net_proc_i|Add1~19\,
	combout => \eth_top_i|net_proc_i|Add1~20_combout\);

-- Location: LCCOMB_X23_Y27_N18
\eth_top_i|net_proc_i|rx_ram_cnt_r[2]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~8_combout\ = (\eth_top_i|net_proc_i|np_fsm.npf_caseComID~q\ & (\eth_top_i|net_proc_i|rx_ram_cnt_r[2]~1_combout\ & ((\eth_top_i|net_proc_i|rx_ram_data_last_r~q\) # (!\eth_top_i|net_proc_i|np_fsm.npf_copyDestMAC~q\)))) 
-- # (!\eth_top_i|net_proc_i|np_fsm.npf_caseComID~q\ & (((\eth_top_i|net_proc_i|rx_ram_data_last_r~q\) # (!\eth_top_i|net_proc_i|np_fsm.npf_copyDestMAC~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|np_fsm.npf_caseComID~q\,
	datab => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~1_combout\,
	datac => \eth_top_i|net_proc_i|np_fsm.npf_copyDestMAC~q\,
	datad => \eth_top_i|net_proc_i|rx_ram_data_last_r~q\,
	combout => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~8_combout\);

-- Location: LCCOMB_X23_Y27_N14
\eth_top_i|net_proc_i|Selector4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector4~3_combout\ = (\eth_top_i|net_proc_i|Selector4~4_combout\) # ((\eth_top_i|net_proc_i|Add1~20_combout\ & ((\eth_top_i|net_proc_i|Selector4~2_combout\) # (!\eth_top_i|net_proc_i|rx_ram_cnt_r[2]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|Selector4~4_combout\,
	datab => \eth_top_i|net_proc_i|Selector4~2_combout\,
	datac => \eth_top_i|net_proc_i|Add1~20_combout\,
	datad => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~8_combout\,
	combout => \eth_top_i|net_proc_i|Selector4~3_combout\);

-- Location: FF_X23_Y27_N15
\eth_top_i|net_proc_i|rx_ram_addr_r[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Selector4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|rx_ram_addr_r\(10));

-- Location: LCCOMB_X23_Y26_N10
\eth_top_i|eth_rx_ram_i|addr_out_r[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_ram_i|addr_out_r[10]~feeder_combout\ = \eth_top_i|net_proc_i|rx_ram_addr_r\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|net_proc_i|rx_ram_addr_r\(10),
	combout => \eth_top_i|eth_rx_ram_i|addr_out_r[10]~feeder_combout\);

-- Location: FF_X23_Y26_N11
\eth_top_i|eth_rx_ram_i|addr_out_r[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|eth_rx_ram_i|addr_out_r[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_ram_i|addr_out_r\(10));

-- Location: M9K_X22_Y28_N0
\eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|ram_block1a1\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 4,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "eth_top:eth_top_i|eth_rx_ram:eth_rx_ram_i|eth_rx_buf:eth_rx_buf_i|altsyncram:altsyncram_component|altsyncram_elj1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 4,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 11,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 4,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 2047,
	port_b_logical_ram_depth => 2048,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \eth_top_i|eth_rx_ram_i|we_r~q\,
	portbre => VCC,
	clk0 => \ETH_RX_CLK~inputclkctrl_outclk\,
	clk1 => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \eth_top_i|eth_rx_ram_i|we_r~q\,
	portadatain => \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\,
	portbaddr => \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|ram_block1a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAOUT_bus\);

-- Location: FF_X28_Y28_N3
\eth_top_i|eth_rx_ram_i|data_out_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|q_b\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_ram_i|data_out_r\(1));

-- Location: FF_X26_Y27_N5
\eth_top_i|eth_rx_ram_i|data_out_r[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|q_b\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_ram_i|data_out_r\(9));

-- Location: LCCOMB_X29_Y27_N0
\eth_top_i|net_proc_i|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add2~0_combout\ = \eth_top_i|net_proc_i|tx_ram_cnt_r\(0) $ (VCC)
-- \eth_top_i|net_proc_i|Add2~1\ = CARRY(\eth_top_i|net_proc_i|tx_ram_cnt_r\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|tx_ram_cnt_r\(0),
	datad => VCC,
	combout => \eth_top_i|net_proc_i|Add2~0_combout\,
	cout => \eth_top_i|net_proc_i|Add2~1\);

-- Location: LCCOMB_X24_Y27_N10
\eth_top_i|net_proc_i|Selector25~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector25~2_combout\ = (\eth_top_i|net_proc_i|rx_ram_cnt_r[2]~1_combout\ & ((\eth_top_i|net_proc_i|np_fsm.npf_caseComID~q\) # ((\eth_top_i|net_proc_i|np_fsm.npf_write_mem1~q\ & !\eth_top_i|net_proc_i|rx_ram_re_dr\(2))))) # 
-- (!\eth_top_i|net_proc_i|rx_ram_cnt_r[2]~1_combout\ & (((\eth_top_i|net_proc_i|np_fsm.npf_write_mem1~q\ & !\eth_top_i|net_proc_i|rx_ram_re_dr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~1_combout\,
	datab => \eth_top_i|net_proc_i|np_fsm.npf_caseComID~q\,
	datac => \eth_top_i|net_proc_i|np_fsm.npf_write_mem1~q\,
	datad => \eth_top_i|net_proc_i|rx_ram_re_dr\(2),
	combout => \eth_top_i|net_proc_i|Selector25~2_combout\);

-- Location: FF_X24_Y27_N11
\eth_top_i|net_proc_i|np_fsm.npf_write_mem1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Selector25~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|np_fsm.npf_write_mem1~q\);

-- Location: LCCOMB_X24_Y25_N14
\eth_top_i|net_proc_i|np_fsm.npf_read_mem4~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|np_fsm.npf_read_mem4~feeder_combout\ = \eth_top_i|net_proc_i|np_fsm.npf_read_mem3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|np_fsm.npf_read_mem3~q\,
	combout => \eth_top_i|net_proc_i|np_fsm.npf_read_mem4~feeder_combout\);

-- Location: FF_X24_Y25_N15
\eth_top_i|net_proc_i|np_fsm.npf_read_mem4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|np_fsm.npf_read_mem4~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|np_fsm.npf_read_mem4~q\);

-- Location: FF_X24_Y27_N5
\eth_top_i|net_proc_i|np_fsm.npf_read_mem5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \eth_top_i|net_proc_i|np_fsm.npf_read_mem4~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|np_fsm.npf_read_mem5~q\);

-- Location: LCCOMB_X24_Y27_N18
\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~8_combout\ = (!\eth_top_i|net_proc_i|np_fsm.npf_copyPacketInfo~q\ & (!\eth_top_i|net_proc_i|np_fsm.npf_write_mem1~q\ & (!\eth_top_i|net_proc_i|np_fsm.npf_read_mem5~q\ & 
-- !\eth_top_i|net_proc_i|np_fsm.npf_copyDestMAC~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|np_fsm.npf_copyPacketInfo~q\,
	datab => \eth_top_i|net_proc_i|np_fsm.npf_write_mem1~q\,
	datac => \eth_top_i|net_proc_i|np_fsm.npf_read_mem5~q\,
	datad => \eth_top_i|net_proc_i|np_fsm.npf_copyDestMAC~q\,
	combout => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~8_combout\);

-- Location: LCCOMB_X26_Y27_N24
\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~3_combout\ = (\eth_top_i|net_proc_i|np_fsm.npf_copyDestMAC~q\ & (((!\eth_top_i|net_proc_i|process_0~6_combout\) # (!\eth_top_i|net_proc_i|rx_ram_data_valid_r~q\)) # (!\eth_top_i|net_proc_i|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|process_0~1_combout\,
	datab => \eth_top_i|net_proc_i|np_fsm.npf_copyDestMAC~q\,
	datac => \eth_top_i|net_proc_i|rx_ram_data_valid_r~q\,
	datad => \eth_top_i|net_proc_i|process_0~6_combout\,
	combout => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~3_combout\);

-- Location: LCCOMB_X24_Y27_N6
\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~7_combout\ = (!\eth_top_i|net_proc_i|rx_ram_re_dr\(2) & \eth_top_i|net_proc_i|np_fsm.npf_write_mem1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|rx_ram_re_dr\(2),
	datad => \eth_top_i|net_proc_i|np_fsm.npf_write_mem1~q\,
	combout => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~7_combout\);

-- Location: LCCOMB_X27_Y27_N2
\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~9_combout\ = (\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~4_combout\) # ((\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~8_combout\) # ((\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~3_combout\) # 
-- (\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~4_combout\,
	datab => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~8_combout\,
	datac => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~3_combout\,
	datad => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~7_combout\,
	combout => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~9_combout\);

-- Location: LCCOMB_X28_Y27_N8
\eth_top_i|net_proc_i|tx_ram_cnt_r[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|tx_ram_cnt_r[0]~0_combout\ = (\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~9_combout\ & ((\eth_top_i|net_proc_i|Add2~0_combout\))) # (!\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~9_combout\ & (\eth_top_i|net_proc_i|info_words[0][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|info_words[0][0]~q\,
	datab => \eth_top_i|net_proc_i|Add2~0_combout\,
	datad => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~9_combout\,
	combout => \eth_top_i|net_proc_i|tx_ram_cnt_r[0]~0_combout\);

-- Location: LCCOMB_X24_Y27_N2
\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~10_combout\ = (!\eth_top_i|net_proc_i|short_read_r~q\) # (!\eth_top_i|net_proc_i|np_fsm.npf_read_mem5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|np_fsm.npf_read_mem5~q\,
	datad => \eth_top_i|net_proc_i|short_read_r~q\,
	combout => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~10_combout\);

-- Location: LCCOMB_X26_Y27_N28
\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~6_combout\ = (\eth_top_i|net_proc_i|np_fsm.npf_copyDestMAC~q\ & \eth_top_i|net_proc_i|rx_ram_data_valid_r~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|np_fsm.npf_copyDestMAC~q\,
	datad => \eth_top_i|net_proc_i|rx_ram_data_valid_r~q\,
	combout => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~6_combout\);

-- Location: LCCOMB_X26_Y27_N14
\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~15_combout\ = (\eth_top_i|net_proc_i|np_fsm.npf_copyPacketInfo~q\ & (!\eth_top_i|net_proc_i|tx_ram_data_last_r~q\ & ((!\eth_top_i|net_proc_i|np_fsm.npf_read_mem5~q\) # (!\eth_top_i|net_proc_i|short_read_r~q\)))) # 
-- (!\eth_top_i|net_proc_i|np_fsm.npf_copyPacketInfo~q\ & (((!\eth_top_i|net_proc_i|np_fsm.npf_read_mem5~q\)) # (!\eth_top_i|net_proc_i|short_read_r~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|np_fsm.npf_copyPacketInfo~q\,
	datab => \eth_top_i|net_proc_i|short_read_r~q\,
	datac => \eth_top_i|net_proc_i|np_fsm.npf_read_mem5~q\,
	datad => \eth_top_i|net_proc_i|tx_ram_data_last_r~q\,
	combout => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~15_combout\);

-- Location: LCCOMB_X26_Y27_N20
\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~12_combout\ = ((\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~11_combout\ & (\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~6_combout\ & \eth_top_i|net_proc_i|process_0~6_combout\))) # 
-- (!\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~11_combout\,
	datab => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~6_combout\,
	datac => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~15_combout\,
	datad => \eth_top_i|net_proc_i|process_0~6_combout\,
	combout => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~12_combout\);

-- Location: LCCOMB_X29_Y27_N6
\eth_top_i|net_proc_i|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add2~6_combout\ = (\eth_top_i|net_proc_i|tx_ram_cnt_r\(3) & (\eth_top_i|net_proc_i|Add2~5\ & VCC)) # (!\eth_top_i|net_proc_i|tx_ram_cnt_r\(3) & (!\eth_top_i|net_proc_i|Add2~5\))
-- \eth_top_i|net_proc_i|Add2~7\ = CARRY((!\eth_top_i|net_proc_i|tx_ram_cnt_r\(3) & !\eth_top_i|net_proc_i|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|tx_ram_cnt_r\(3),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|Add2~5\,
	combout => \eth_top_i|net_proc_i|Add2~6_combout\,
	cout => \eth_top_i|net_proc_i|Add2~7\);

-- Location: LCCOMB_X29_Y27_N8
\eth_top_i|net_proc_i|Add2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add2~9_combout\ = (\eth_top_i|net_proc_i|tx_ram_cnt_r\(4) & ((GND) # (!\eth_top_i|net_proc_i|Add2~7\))) # (!\eth_top_i|net_proc_i|tx_ram_cnt_r\(4) & (\eth_top_i|net_proc_i|Add2~7\ $ (GND)))
-- \eth_top_i|net_proc_i|Add2~10\ = CARRY((\eth_top_i|net_proc_i|tx_ram_cnt_r\(4)) # (!\eth_top_i|net_proc_i|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|tx_ram_cnt_r\(4),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|Add2~7\,
	combout => \eth_top_i|net_proc_i|Add2~9_combout\,
	cout => \eth_top_i|net_proc_i|Add2~10\);

-- Location: LCCOMB_X28_Y27_N22
\eth_top_i|net_proc_i|Add2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add2~11_combout\ = (!\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~12_combout\ & ((\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~9_combout\ & ((\eth_top_i|net_proc_i|Add2~9_combout\))) # (!\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~9_combout\ & 
-- (\eth_top_i|net_proc_i|info_words[0][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|info_words[0][4]~q\,
	datab => \eth_top_i|net_proc_i|Add2~9_combout\,
	datac => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~12_combout\,
	datad => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~9_combout\,
	combout => \eth_top_i|net_proc_i|Add2~11_combout\);

-- Location: FF_X28_Y27_N23
\eth_top_i|net_proc_i|tx_ram_cnt_r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Add2~11_combout\,
	ena => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|tx_ram_cnt_r\(4));

-- Location: LCCOMB_X29_Y27_N10
\eth_top_i|net_proc_i|Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add2~12_combout\ = (\eth_top_i|net_proc_i|tx_ram_cnt_r\(5) & (\eth_top_i|net_proc_i|Add2~10\ & VCC)) # (!\eth_top_i|net_proc_i|tx_ram_cnt_r\(5) & (!\eth_top_i|net_proc_i|Add2~10\))
-- \eth_top_i|net_proc_i|Add2~13\ = CARRY((!\eth_top_i|net_proc_i|tx_ram_cnt_r\(5) & !\eth_top_i|net_proc_i|Add2~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|tx_ram_cnt_r\(5),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|Add2~10\,
	combout => \eth_top_i|net_proc_i|Add2~12_combout\,
	cout => \eth_top_i|net_proc_i|Add2~13\);

-- Location: LCCOMB_X28_Y27_N16
\eth_top_i|net_proc_i|Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add2~14_combout\ = (!\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~12_combout\ & ((\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~9_combout\ & ((\eth_top_i|net_proc_i|Add2~12_combout\))) # (!\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~9_combout\ & 
-- (\eth_top_i|net_proc_i|info_words[0][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|info_words[0][5]~q\,
	datab => \eth_top_i|net_proc_i|Add2~12_combout\,
	datac => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~12_combout\,
	datad => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~9_combout\,
	combout => \eth_top_i|net_proc_i|Add2~14_combout\);

-- Location: FF_X28_Y27_N17
\eth_top_i|net_proc_i|tx_ram_cnt_r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Add2~14_combout\,
	ena => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|tx_ram_cnt_r\(5));

-- Location: LCCOMB_X28_Y27_N12
\eth_top_i|net_proc_i|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add2~8_combout\ = (!\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~12_combout\ & ((\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~9_combout\ & ((\eth_top_i|net_proc_i|Add2~6_combout\))) # (!\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~9_combout\ & 
-- (\eth_top_i|net_proc_i|info_words[0][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|info_words[0][3]~q\,
	datab => \eth_top_i|net_proc_i|Add2~6_combout\,
	datac => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~12_combout\,
	datad => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~9_combout\,
	combout => \eth_top_i|net_proc_i|Add2~8_combout\);

-- Location: FF_X28_Y27_N13
\eth_top_i|net_proc_i|tx_ram_cnt_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Add2~8_combout\,
	ena => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|tx_ram_cnt_r\(3));

-- Location: LCCOMB_X28_Y27_N26
\eth_top_i|net_proc_i|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Equal3~0_combout\ = (!\eth_top_i|net_proc_i|tx_ram_cnt_r\(2) & (!\eth_top_i|net_proc_i|tx_ram_cnt_r\(5) & (!\eth_top_i|net_proc_i|tx_ram_cnt_r\(4) & !\eth_top_i|net_proc_i|tx_ram_cnt_r\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|tx_ram_cnt_r\(2),
	datab => \eth_top_i|net_proc_i|tx_ram_cnt_r\(5),
	datac => \eth_top_i|net_proc_i|tx_ram_cnt_r\(4),
	datad => \eth_top_i|net_proc_i|tx_ram_cnt_r\(3),
	combout => \eth_top_i|net_proc_i|Equal3~0_combout\);

-- Location: LCCOMB_X28_Y27_N0
\eth_top_i|net_proc_i|Equal3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Equal3~2_combout\ = (!\eth_top_i|net_proc_i|tx_ram_cnt_r\(1) & (\eth_top_i|net_proc_i|Equal3~1_combout\ & (!\eth_top_i|net_proc_i|tx_ram_cnt_r\(0) & \eth_top_i|net_proc_i|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|tx_ram_cnt_r\(1),
	datab => \eth_top_i|net_proc_i|Equal3~1_combout\,
	datac => \eth_top_i|net_proc_i|tx_ram_cnt_r\(0),
	datad => \eth_top_i|net_proc_i|Equal3~0_combout\,
	combout => \eth_top_i|net_proc_i|Equal3~2_combout\);

-- Location: LCCOMB_X25_Y26_N20
\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~4_combout\ = (!\eth_top_i|net_proc_i|tx_ram_data_last_r~q\ & \eth_top_i|net_proc_i|np_fsm.npf_copyPacketInfo~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|net_proc_i|tx_ram_data_last_r~q\,
	datad => \eth_top_i|net_proc_i|np_fsm.npf_copyPacketInfo~q\,
	combout => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~4_combout\);

-- Location: LCCOMB_X28_Y27_N2
\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~13_combout\ = (\eth_top_i|net_proc_i|Equal3~2_combout\ & ((\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~8_combout\) # ((\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~4_combout\) # 
-- (\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~8_combout\,
	datab => \eth_top_i|net_proc_i|Equal3~2_combout\,
	datac => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~4_combout\,
	datad => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~7_combout\,
	combout => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~13_combout\);

-- Location: LCCOMB_X28_Y27_N4
\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~14_combout\ = (!\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~13_combout\ & ((!\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~3_combout\) # (!\eth_top_i|net_proc_i|Equal3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|Equal3~2_combout\,
	datac => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~13_combout\,
	datad => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~3_combout\,
	combout => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~14_combout\);

-- Location: FF_X28_Y27_N9
\eth_top_i|net_proc_i|tx_ram_cnt_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|tx_ram_cnt_r[0]~0_combout\,
	asdata => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~10_combout\,
	sload => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~12_combout\,
	ena => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|tx_ram_cnt_r\(0));

-- Location: LCCOMB_X24_Y26_N26
\eth_top_i|net_proc_i|Selector32~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector32~0_combout\ = (\eth_top_i|net_proc_i|np_fsm.npf_read_mem5~q\) # ((!\eth_top_i|net_proc_i|tx_ram_data_last_r~q\ & \eth_top_i|net_proc_i|np_fsm.npf_read_mem6~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|np_fsm.npf_read_mem5~q\,
	datab => \eth_top_i|net_proc_i|tx_ram_data_last_r~q\,
	datac => \eth_top_i|net_proc_i|np_fsm.npf_read_mem6~q\,
	combout => \eth_top_i|net_proc_i|Selector32~0_combout\);

-- Location: FF_X24_Y26_N27
\eth_top_i|net_proc_i|np_fsm.npf_read_mem6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Selector32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|np_fsm.npf_read_mem6~q\);

-- Location: LCCOMB_X24_Y26_N16
\eth_top_i|net_proc_i|Selector66~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector66~1_combout\ = (!\eth_top_i|net_proc_i|np_fsm.npf_write_mem2~q\ & !\eth_top_i|net_proc_i|np_fsm.npf_read_mem6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|np_fsm.npf_write_mem2~q\,
	datac => \eth_top_i|net_proc_i|np_fsm.npf_read_mem6~q\,
	combout => \eth_top_i|net_proc_i|Selector66~1_combout\);

-- Location: M9K_X22_Y29_N0
\eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 4,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "eth_top:eth_top_i|eth_rx_ram:eth_rx_ram_i|eth_rx_buf:eth_rx_buf_i|altsyncram:altsyncram_component|altsyncram_elj1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 4,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 11,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 4,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 2047,
	port_b_logical_ram_depth => 2048,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \eth_top_i|eth_rx_ram_i|we_r~q\,
	portbre => VCC,
	clk0 => \ETH_RX_CLK~inputclkctrl_outclk\,
	clk1 => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \eth_top_i|eth_rx_ram_i|we_r~q\,
	portadatain => \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: FF_X25_Y27_N31
\eth_top_i|eth_rx_ram_i|data_out_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|q_b\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_ram_i|data_out_r\(0));

-- Location: FF_X24_Y27_N7
\eth_top_i|net_proc_i|info_words[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \eth_top_i|eth_rx_ram_i|data_out_r\(0),
	sload => VCC,
	ena => \eth_top_i|net_proc_i|info_words[3][1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|info_words[3][0]~q\);

-- Location: LCCOMB_X25_Y26_N24
\eth_top_i|net_proc_i|Selector56~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector56~0_combout\ = (\eth_top_i|net_proc_i|com_id_high_bits_zero_r~q\ & (!\eth_top_i|net_proc_i|info_words[3][1]~q\ & (\eth_top_i|net_proc_i|info_words[3][0]~q\ & \eth_top_i|net_proc_i|tx_ram_data_last_r~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|com_id_high_bits_zero_r~q\,
	datab => \eth_top_i|net_proc_i|info_words[3][1]~q\,
	datac => \eth_top_i|net_proc_i|info_words[3][0]~q\,
	datad => \eth_top_i|net_proc_i|tx_ram_data_last_r~q\,
	combout => \eth_top_i|net_proc_i|Selector56~0_combout\);

-- Location: LCCOMB_X24_Y26_N20
\eth_top_i|net_proc_i|Selector33~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector33~0_combout\ = (!\eth_top_i|net_proc_i|np_fsm.npf_store_reg_rdata4~q\ & ((!\eth_top_i|net_proc_i|Selector56~0_combout\) # (!\eth_top_i|net_proc_i|np_fsm.npf_caseComID~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|np_fsm.npf_store_reg_rdata4~q\,
	datac => \eth_top_i|net_proc_i|np_fsm.npf_caseComID~q\,
	datad => \eth_top_i|net_proc_i|Selector56~0_combout\,
	combout => \eth_top_i|net_proc_i|Selector33~0_combout\);

-- Location: LCCOMB_X24_Y26_N18
\eth_top_i|net_proc_i|Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector2~1_combout\ = (!\eth_top_i|net_proc_i|np_fsm.npf_store_udp_len~q\ & (\eth_top_i|net_proc_i|Selector33~0_combout\ & ((\eth_top_i|net_proc_i|Selector66~1_combout\) # (!\eth_top_i|net_proc_i|tx_ram_data_last_r~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|np_fsm.npf_store_udp_len~q\,
	datab => \eth_top_i|net_proc_i|tx_ram_data_last_r~q\,
	datac => \eth_top_i|net_proc_i|Selector66~1_combout\,
	datad => \eth_top_i|net_proc_i|Selector33~0_combout\,
	combout => \eth_top_i|net_proc_i|Selector2~1_combout\);

-- Location: LCCOMB_X23_Y25_N2
\eth_top_i|net_proc_i|np_fsm.npf_write_mem2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|np_fsm.npf_write_mem2~2_combout\ = (\eth_top_i|net_proc_i|np_fsm.npf_write_mem1~q\ & ((\eth_top_i|net_proc_i|rx_ram_re_dr\(2)) # ((\eth_top_i|net_proc_i|np_fsm.npf_write_mem2~q\ & \eth_top_i|net_proc_i|Selector26~3_combout\)))) # 
-- (!\eth_top_i|net_proc_i|np_fsm.npf_write_mem1~q\ & (((\eth_top_i|net_proc_i|np_fsm.npf_write_mem2~q\ & \eth_top_i|net_proc_i|Selector26~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|np_fsm.npf_write_mem1~q\,
	datab => \eth_top_i|net_proc_i|rx_ram_re_dr\(2),
	datac => \eth_top_i|net_proc_i|np_fsm.npf_write_mem2~q\,
	datad => \eth_top_i|net_proc_i|Selector26~3_combout\,
	combout => \eth_top_i|net_proc_i|np_fsm.npf_write_mem2~2_combout\);

-- Location: FF_X23_Y25_N3
\eth_top_i|net_proc_i|np_fsm.npf_write_mem2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|np_fsm.npf_write_mem2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|np_fsm.npf_write_mem2~q\);

-- Location: LCCOMB_X23_Y25_N0
\eth_top_i|net_proc_i|WideOr4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|WideOr4~0_combout\ = (!\eth_top_i|net_proc_i|np_fsm.npf_caseComID~q\ & (!\eth_top_i|net_proc_i|np_fsm.npf_read_mem6~q\ & !\eth_top_i|net_proc_i|np_fsm.npf_write_mem2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|np_fsm.npf_caseComID~q\,
	datac => \eth_top_i|net_proc_i|np_fsm.npf_read_mem6~q\,
	datad => \eth_top_i|net_proc_i|np_fsm.npf_write_mem2~q\,
	combout => \eth_top_i|net_proc_i|WideOr4~0_combout\);

-- Location: LCCOMB_X25_Y26_N6
\eth_top_i|net_proc_i|Equal5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Equal5~0_combout\ = (\eth_top_i|net_proc_i|tx_ram_cnt_r\(0) & (\eth_top_i|net_proc_i|Equal3~1_combout\ & (!\eth_top_i|net_proc_i|tx_ram_cnt_r\(1) & \eth_top_i|net_proc_i|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|tx_ram_cnt_r\(0),
	datab => \eth_top_i|net_proc_i|Equal3~1_combout\,
	datac => \eth_top_i|net_proc_i|tx_ram_cnt_r\(1),
	datad => \eth_top_i|net_proc_i|Equal3~0_combout\,
	combout => \eth_top_i|net_proc_i|Equal5~0_combout\);

-- Location: LCCOMB_X25_Y27_N2
\eth_top_i|net_proc_i|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector2~0_combout\ = (!\eth_top_i|net_proc_i|Equal5~0_combout\ & (((\eth_top_i|net_proc_i|WideOr24~1_combout\ & \eth_top_i|net_proc_i|np_fsm.npf_idle~q\)) # (!\eth_top_i|net_proc_i|WideOr4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|WideOr24~1_combout\,
	datab => \eth_top_i|net_proc_i|WideOr4~0_combout\,
	datac => \eth_top_i|net_proc_i|Equal5~0_combout\,
	datad => \eth_top_i|net_proc_i|np_fsm.npf_idle~q\,
	combout => \eth_top_i|net_proc_i|Selector2~0_combout\);

-- Location: LCCOMB_X25_Y27_N24
\eth_top_i|net_proc_i|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector1~0_combout\ = (\eth_top_i|net_proc_i|np_fsm.npf_read_mem5~q\) # (((\eth_top_i|net_proc_i|tx_ram_source_r\(1) & \eth_top_i|net_proc_i|Selector2~0_combout\)) # (!\eth_top_i|net_proc_i|Selector2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|np_fsm.npf_read_mem5~q\,
	datab => \eth_top_i|net_proc_i|Selector2~1_combout\,
	datac => \eth_top_i|net_proc_i|tx_ram_source_r\(1),
	datad => \eth_top_i|net_proc_i|Selector2~0_combout\,
	combout => \eth_top_i|net_proc_i|Selector1~0_combout\);

-- Location: FF_X25_Y27_N25
\eth_top_i|net_proc_i|tx_ram_source_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|tx_ram_source_r\(1));

-- Location: LCCOMB_X24_Y26_N22
\eth_top_i|net_proc_i|Selector33~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector33~1_combout\ = ((!\eth_top_i|net_proc_i|Selector66~1_combout\ & ((\eth_top_i|net_proc_i|tx_ram_data_last_r~q\) # (\eth_top_i|net_proc_i|np_fsm.npf_store_ip_checksum~q\)))) # (!\eth_top_i|net_proc_i|Selector33~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|tx_ram_data_last_r~q\,
	datab => \eth_top_i|net_proc_i|Selector66~1_combout\,
	datac => \eth_top_i|net_proc_i|np_fsm.npf_store_ip_checksum~q\,
	datad => \eth_top_i|net_proc_i|Selector33~0_combout\,
	combout => \eth_top_i|net_proc_i|Selector33~1_combout\);

-- Location: FF_X24_Y26_N23
\eth_top_i|net_proc_i|np_fsm.npf_store_ip_checksum\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Selector33~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|np_fsm.npf_store_ip_checksum~q\);

-- Location: LCCOMB_X25_Y29_N24
\eth_top_i|net_proc_i|info_words[3][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|info_words[3][10]~feeder_combout\ = \eth_top_i|eth_rx_ram_i|data_out_r\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|eth_rx_ram_i|data_out_r\(10),
	combout => \eth_top_i|net_proc_i|info_words[3][10]~feeder_combout\);

-- Location: FF_X25_Y29_N25
\eth_top_i|net_proc_i|info_words[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|info_words[3][10]~feeder_combout\,
	ena => \eth_top_i|net_proc_i|info_words[3][1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|info_words[3][10]~q\);

-- Location: LCCOMB_X47_Y18_N16
\eth_top_i|eth_rx_ram_i|data_in_r[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_ram_i|data_in_r[3]~feeder_combout\ = \eth_top_i|eth_pins_i|rxd_r\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|eth_pins_i|rxd_r\(3),
	combout => \eth_top_i|eth_rx_ram_i|data_in_r[3]~feeder_combout\);

-- Location: FF_X47_Y18_N17
\eth_top_i|eth_rx_ram_i|data_in_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_rx_ram_i|data_in_r[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_ram_i|data_in_r\(3));

-- Location: M9K_X22_Y27_N0
\eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|ram_block1a3\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 4,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "eth_top:eth_top_i|eth_rx_ram:eth_rx_ram_i|eth_rx_buf:eth_rx_buf_i|altsyncram:altsyncram_component|altsyncram_elj1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 4,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 11,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 4,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 2047,
	port_b_logical_ram_depth => 2048,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \eth_top_i|eth_rx_ram_i|we_r~q\,
	portbre => VCC,
	clk0 => \ETH_RX_CLK~inputclkctrl_outclk\,
	clk1 => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \eth_top_i|eth_rx_ram_i|we_r~q\,
	portadatain => \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\,
	portbaddr => \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|ram_block1a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAOUT_bus\);

-- Location: FF_X26_Y27_N7
\eth_top_i|eth_rx_ram_i|data_out_r[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|q_b\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_ram_i|data_out_r\(11));

-- Location: FF_X25_Y29_N7
\eth_top_i|net_proc_i|info_words[3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \eth_top_i|eth_rx_ram_i|data_out_r\(11),
	sload => VCC,
	ena => \eth_top_i|net_proc_i|info_words[3][1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|info_words[3][11]~q\);

-- Location: LCCOMB_X25_Y29_N28
\eth_top_i|net_proc_i|info_words[3][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|info_words[3][8]~feeder_combout\ = \eth_top_i|eth_rx_ram_i|data_out_r\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|eth_rx_ram_i|data_out_r\(8),
	combout => \eth_top_i|net_proc_i|info_words[3][8]~feeder_combout\);

-- Location: FF_X25_Y29_N29
\eth_top_i|net_proc_i|info_words[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|info_words[3][8]~feeder_combout\,
	ena => \eth_top_i|net_proc_i|info_words[3][1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|info_words[3][8]~q\);

-- Location: LCCOMB_X25_Y29_N6
\eth_top_i|net_proc_i|Equal7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Equal7~1_combout\ = (!\eth_top_i|net_proc_i|info_words[3][9]~q\ & (!\eth_top_i|net_proc_i|info_words[3][10]~q\ & (!\eth_top_i|net_proc_i|info_words[3][11]~q\ & !\eth_top_i|net_proc_i|info_words[3][8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|info_words[3][9]~q\,
	datab => \eth_top_i|net_proc_i|info_words[3][10]~q\,
	datac => \eth_top_i|net_proc_i|info_words[3][11]~q\,
	datad => \eth_top_i|net_proc_i|info_words[3][8]~q\,
	combout => \eth_top_i|net_proc_i|Equal7~1_combout\);

-- Location: LCCOMB_X24_Y30_N18
\eth_top_i|net_proc_i|info_words[3][13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|info_words[3][13]~feeder_combout\ = \eth_top_i|eth_rx_ram_i|data_out_r\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|eth_rx_ram_i|data_out_r\(13),
	combout => \eth_top_i|net_proc_i|info_words[3][13]~feeder_combout\);

-- Location: FF_X24_Y30_N19
\eth_top_i|net_proc_i|info_words[3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|info_words[3][13]~feeder_combout\,
	ena => \eth_top_i|net_proc_i|info_words[3][1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|info_words[3][13]~q\);

-- Location: FF_X26_Y25_N31
\eth_top_i|eth_rx_ram_i|data_out_r[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|q_b\(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_ram_i|data_out_r\(15));

-- Location: FF_X25_Y29_N1
\eth_top_i|net_proc_i|info_words[3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \eth_top_i|eth_rx_ram_i|data_out_r\(15),
	sload => VCC,
	ena => \eth_top_i|net_proc_i|info_words[3][1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|info_words[3][15]~q\);

-- Location: LCCOMB_X26_Y27_N18
\eth_top_i|eth_rx_ram_i|data_out_r[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_ram_i|data_out_r[12]~feeder_combout\ = \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|q_b\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|q_b\(12),
	combout => \eth_top_i|eth_rx_ram_i|data_out_r[12]~feeder_combout\);

-- Location: FF_X26_Y27_N19
\eth_top_i|eth_rx_ram_i|data_out_r[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|eth_rx_ram_i|data_out_r[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_ram_i|data_out_r\(12));

-- Location: LCCOMB_X25_Y29_N12
\eth_top_i|net_proc_i|info_words[3][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|info_words[3][12]~feeder_combout\ = \eth_top_i|eth_rx_ram_i|data_out_r\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|eth_rx_ram_i|data_out_r\(12),
	combout => \eth_top_i|net_proc_i|info_words[3][12]~feeder_combout\);

-- Location: FF_X25_Y29_N13
\eth_top_i|net_proc_i|info_words[3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|info_words[3][12]~feeder_combout\,
	ena => \eth_top_i|net_proc_i|info_words[3][1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|info_words[3][12]~q\);

-- Location: LCCOMB_X25_Y29_N0
\eth_top_i|net_proc_i|Equal7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Equal7~0_combout\ = (!\eth_top_i|net_proc_i|info_words[3][14]~q\ & (!\eth_top_i|net_proc_i|info_words[3][13]~q\ & (!\eth_top_i|net_proc_i|info_words[3][15]~q\ & !\eth_top_i|net_proc_i|info_words[3][12]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|info_words[3][14]~q\,
	datab => \eth_top_i|net_proc_i|info_words[3][13]~q\,
	datac => \eth_top_i|net_proc_i|info_words[3][15]~q\,
	datad => \eth_top_i|net_proc_i|info_words[3][12]~q\,
	combout => \eth_top_i|net_proc_i|Equal7~0_combout\);

-- Location: M9K_X22_Y26_N0
\eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|ram_block1a2\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 4,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "eth_top:eth_top_i|eth_rx_ram:eth_rx_ram_i|eth_rx_buf:eth_rx_buf_i|altsyncram:altsyncram_component|altsyncram_elj1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 4,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 11,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 4,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 2047,
	port_b_logical_ram_depth => 2048,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \eth_top_i|eth_rx_ram_i|we_r~q\,
	portbre => VCC,
	clk0 => \ETH_RX_CLK~inputclkctrl_outclk\,
	clk1 => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \eth_top_i|eth_rx_ram_i|we_r~q\,
	portadatain => \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

-- Location: FF_X26_Y28_N27
\eth_top_i|eth_rx_ram_i|data_out_r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|q_b\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_ram_i|data_out_r\(6));

-- Location: LCCOMB_X25_Y29_N16
\eth_top_i|net_proc_i|info_words[3][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|info_words[3][6]~feeder_combout\ = \eth_top_i|eth_rx_ram_i|data_out_r\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|eth_rx_ram_i|data_out_r\(6),
	combout => \eth_top_i|net_proc_i|info_words[3][6]~feeder_combout\);

-- Location: FF_X25_Y29_N17
\eth_top_i|net_proc_i|info_words[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|info_words[3][6]~feeder_combout\,
	ena => \eth_top_i|net_proc_i|info_words[3][1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|info_words[3][6]~q\);

-- Location: FF_X26_Y27_N29
\eth_top_i|eth_rx_ram_i|data_out_r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|q_b\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_ram_i|data_out_r\(7));

-- Location: FF_X25_Y29_N15
\eth_top_i|net_proc_i|info_words[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \eth_top_i|eth_rx_ram_i|data_out_r\(7),
	sload => VCC,
	ena => \eth_top_i|net_proc_i|info_words[3][1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|info_words[3][7]~q\);

-- Location: FF_X26_Y28_N17
\eth_top_i|eth_rx_ram_i|data_out_r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|q_b\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_ram_i|data_out_r\(4));

-- Location: LCCOMB_X25_Y29_N20
\eth_top_i|net_proc_i|info_words[3][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|info_words[3][4]~feeder_combout\ = \eth_top_i|eth_rx_ram_i|data_out_r\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|eth_rx_ram_i|data_out_r\(4),
	combout => \eth_top_i|net_proc_i|info_words[3][4]~feeder_combout\);

-- Location: FF_X25_Y29_N21
\eth_top_i|net_proc_i|info_words[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|info_words[3][4]~feeder_combout\,
	ena => \eth_top_i|net_proc_i|info_words[3][1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|info_words[3][4]~q\);

-- Location: LCCOMB_X25_Y29_N14
\eth_top_i|net_proc_i|Equal7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Equal7~2_combout\ = (!\eth_top_i|net_proc_i|info_words[3][5]~q\ & (!\eth_top_i|net_proc_i|info_words[3][6]~q\ & (!\eth_top_i|net_proc_i|info_words[3][7]~q\ & !\eth_top_i|net_proc_i|info_words[3][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|info_words[3][5]~q\,
	datab => \eth_top_i|net_proc_i|info_words[3][6]~q\,
	datac => \eth_top_i|net_proc_i|info_words[3][7]~q\,
	datad => \eth_top_i|net_proc_i|info_words[3][4]~q\,
	combout => \eth_top_i|net_proc_i|Equal7~2_combout\);

-- Location: LCCOMB_X24_Y30_N8
\eth_top_i|net_proc_i|Equal7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Equal7~4_combout\ = (\eth_top_i|net_proc_i|Equal7~3_combout\ & (\eth_top_i|net_proc_i|Equal7~1_combout\ & (\eth_top_i|net_proc_i|Equal7~0_combout\ & \eth_top_i|net_proc_i|Equal7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|Equal7~3_combout\,
	datab => \eth_top_i|net_proc_i|Equal7~1_combout\,
	datac => \eth_top_i|net_proc_i|Equal7~0_combout\,
	datad => \eth_top_i|net_proc_i|Equal7~2_combout\,
	combout => \eth_top_i|net_proc_i|Equal7~4_combout\);

-- Location: FF_X24_Y30_N9
\eth_top_i|net_proc_i|com_id_high_bits_zero_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Equal7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|com_id_high_bits_zero_r~q\);

-- Location: LCCOMB_X24_Y27_N28
\eth_top_i|net_proc_i|tx_ram_addr_r[5]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|tx_ram_addr_r[5]~2_combout\ = (\eth_top_i|net_proc_i|tx_ram_data_last_r~q\ & \eth_top_i|net_proc_i|com_id_high_bits_zero_r~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|tx_ram_data_last_r~q\,
	datad => \eth_top_i|net_proc_i|com_id_high_bits_zero_r~q\,
	combout => \eth_top_i|net_proc_i|tx_ram_addr_r[5]~2_combout\);

-- Location: LCCOMB_X24_Y27_N26
\eth_top_i|net_proc_i|Selector21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector21~0_combout\ = (!\eth_top_i|net_proc_i|info_words[3][0]~q\ & (!\eth_top_i|net_proc_i|info_words[3][1]~q\ & (\eth_top_i|net_proc_i|np_fsm.npf_caseComID~q\ & \eth_top_i|net_proc_i|tx_ram_addr_r[5]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|info_words[3][0]~q\,
	datab => \eth_top_i|net_proc_i|info_words[3][1]~q\,
	datac => \eth_top_i|net_proc_i|np_fsm.npf_caseComID~q\,
	datad => \eth_top_i|net_proc_i|tx_ram_addr_r[5]~2_combout\,
	combout => \eth_top_i|net_proc_i|Selector21~0_combout\);

-- Location: FF_X24_Y27_N27
\eth_top_i|net_proc_i|np_fsm.npf_store_reg_rdata1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|np_fsm.npf_store_reg_rdata1~q\);

-- Location: FF_X24_Y27_N3
\eth_top_i|net_proc_i|np_fsm.npf_store_reg_rdata2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \eth_top_i|net_proc_i|np_fsm.npf_store_reg_rdata1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|np_fsm.npf_store_reg_rdata2~q\);

-- Location: FF_X24_Y26_N9
\eth_top_i|net_proc_i|np_fsm.npf_store_reg_rdata3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \eth_top_i|net_proc_i|np_fsm.npf_store_reg_rdata2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|np_fsm.npf_store_reg_rdata3~q\);

-- Location: LCCOMB_X24_Y26_N14
\eth_top_i|net_proc_i|WideOr24~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|WideOr24~0_combout\ = (!\eth_top_i|net_proc_i|np_fsm.npf_store_udp_len~q\ & (!\eth_top_i|net_proc_i|np_fsm.npf_store_reg_rdata3~q\ & (!\eth_top_i|net_proc_i|np_fsm.npf_read_mem5~q\ & 
-- !\eth_top_i|net_proc_i|np_fsm.npf_store_ip_checksum~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|np_fsm.npf_store_udp_len~q\,
	datab => \eth_top_i|net_proc_i|np_fsm.npf_store_reg_rdata3~q\,
	datac => \eth_top_i|net_proc_i|np_fsm.npf_read_mem5~q\,
	datad => \eth_top_i|net_proc_i|np_fsm.npf_store_ip_checksum~q\,
	combout => \eth_top_i|net_proc_i|WideOr24~0_combout\);

-- Location: FF_X24_Y26_N7
\eth_top_i|net_proc_i|np_fsm.npf_store_reg_rdata4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \eth_top_i|net_proc_i|np_fsm.npf_store_reg_rdata3~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|np_fsm.npf_store_reg_rdata4~q\);

-- Location: LCCOMB_X24_Y26_N6
\eth_top_i|net_proc_i|WideOr24~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|WideOr24~1_combout\ = (\eth_top_i|net_proc_i|WideOr24~0_combout\ & !\eth_top_i|net_proc_i|np_fsm.npf_store_reg_rdata4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|WideOr24~0_combout\,
	datac => \eth_top_i|net_proc_i|np_fsm.npf_store_reg_rdata4~q\,
	combout => \eth_top_i|net_proc_i|WideOr24~1_combout\);

-- Location: LCCOMB_X24_Y26_N12
\eth_top_i|net_proc_i|Selector65~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector65~0_combout\ = (!\eth_top_i|net_proc_i|tx_ram_data_last_r~q\ & ((\eth_top_i|net_proc_i|np_fsm.npf_write_mem2~q\) # (\eth_top_i|net_proc_i|np_fsm.npf_read_mem6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|np_fsm.npf_write_mem2~q\,
	datab => \eth_top_i|net_proc_i|tx_ram_data_last_r~q\,
	datac => \eth_top_i|net_proc_i|np_fsm.npf_read_mem6~q\,
	combout => \eth_top_i|net_proc_i|Selector65~0_combout\);

-- Location: LCCOMB_X25_Y26_N2
\eth_top_i|net_proc_i|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector0~0_combout\ = (\eth_top_i|net_proc_i|Selector65~0_combout\) # ((\eth_top_i|net_proc_i|WideOr4~0_combout\ & (\eth_top_i|net_proc_i|np_fsm.npf_idle~q\ & \eth_top_i|net_proc_i|WideOr24~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|WideOr4~0_combout\,
	datab => \eth_top_i|net_proc_i|np_fsm.npf_idle~q\,
	datac => \eth_top_i|net_proc_i|WideOr24~1_combout\,
	datad => \eth_top_i|net_proc_i|Selector65~0_combout\,
	combout => \eth_top_i|net_proc_i|Selector0~0_combout\);

-- Location: LCCOMB_X25_Y26_N8
\eth_top_i|net_proc_i|Selector62~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector62~0_combout\ = (\eth_top_i|net_proc_i|np_fsm.npf_caseComID~q\ & !\eth_top_i|net_proc_i|Selector56~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|net_proc_i|np_fsm.npf_caseComID~q\,
	datad => \eth_top_i|net_proc_i|Selector56~0_combout\,
	combout => \eth_top_i|net_proc_i|Selector62~0_combout\);

-- Location: LCCOMB_X25_Y26_N12
\eth_top_i|net_proc_i|Selector0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector0~1_combout\ = (!\eth_top_i|net_proc_i|Equal5~0_combout\ & (\eth_top_i|net_proc_i|tx_ram_source_r\(2) & ((\eth_top_i|net_proc_i|Selector0~0_combout\) # (\eth_top_i|net_proc_i|Selector62~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|Equal5~0_combout\,
	datab => \eth_top_i|net_proc_i|Selector0~0_combout\,
	datac => \eth_top_i|net_proc_i|tx_ram_source_r\(2),
	datad => \eth_top_i|net_proc_i|Selector62~0_combout\,
	combout => \eth_top_i|net_proc_i|Selector0~1_combout\);

-- Location: LCCOMB_X25_Y27_N26
\eth_top_i|net_proc_i|Selector0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector0~2_combout\ = (\eth_top_i|net_proc_i|np_fsm.npf_store_ip_checksum~q\) # (\eth_top_i|net_proc_i|Selector0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|np_fsm.npf_store_ip_checksum~q\,
	datad => \eth_top_i|net_proc_i|Selector0~1_combout\,
	combout => \eth_top_i|net_proc_i|Selector0~2_combout\);

-- Location: FF_X25_Y27_N27
\eth_top_i|net_proc_i|tx_ram_source_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Selector0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|tx_ram_source_r\(2));

-- Location: LCCOMB_X25_Y27_N16
\eth_top_i|net_proc_i|Selector2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector2~2_combout\ = (\eth_top_i|net_proc_i|np_fsm.npf_store_reg_rdata3~q\) # (((\eth_top_i|net_proc_i|tx_ram_source_r\(0) & \eth_top_i|net_proc_i|Selector2~0_combout\)) # (!\eth_top_i|net_proc_i|Selector2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|np_fsm.npf_store_reg_rdata3~q\,
	datab => \eth_top_i|net_proc_i|Selector2~1_combout\,
	datac => \eth_top_i|net_proc_i|tx_ram_source_r\(0),
	datad => \eth_top_i|net_proc_i|Selector2~0_combout\,
	combout => \eth_top_i|net_proc_i|Selector2~2_combout\);

-- Location: FF_X25_Y27_N17
\eth_top_i|net_proc_i|tx_ram_source_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Selector2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|tx_ram_source_r\(0));

-- Location: LCCOMB_X25_Y27_N20
\eth_top_i|net_proc_i|process_0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|process_0~8_combout\ = (\eth_top_i|net_proc_i|tx_ram_we_r~q\ & (!\eth_top_i|net_proc_i|tx_ram_source_r\(1) & (!\eth_top_i|net_proc_i|tx_ram_source_r\(2) & !\eth_top_i|net_proc_i|tx_ram_source_r\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|tx_ram_we_r~q\,
	datab => \eth_top_i|net_proc_i|tx_ram_source_r\(1),
	datac => \eth_top_i|net_proc_i|tx_ram_source_r\(2),
	datad => \eth_top_i|net_proc_i|tx_ram_source_r\(0),
	combout => \eth_top_i|net_proc_i|process_0~8_combout\);

-- Location: LCCOMB_X25_Y27_N8
\eth_top_i|net_proc_i|Mux66~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Mux66~0_combout\ = (!\eth_top_i|net_proc_i|tx_ram_cnt_r\(1) & (\eth_top_i|net_proc_i|tx_ram_cnt_r\(0) & \eth_top_i|net_proc_i|process_0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|tx_ram_cnt_r\(1),
	datac => \eth_top_i|net_proc_i|tx_ram_cnt_r\(0),
	datad => \eth_top_i|net_proc_i|process_0~8_combout\,
	combout => \eth_top_i|net_proc_i|Mux66~0_combout\);

-- Location: FF_X27_Y27_N25
\eth_top_i|net_proc_i|info_words[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \eth_top_i|eth_rx_ram_i|data_out_r\(9),
	sload => VCC,
	ena => \eth_top_i|net_proc_i|Mux66~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|info_words[0][9]~q\);

-- Location: FF_X27_Y27_N19
\eth_top_i|net_proc_i|info_words[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \eth_top_i|eth_rx_ram_i|data_out_r\(6),
	sload => VCC,
	ena => \eth_top_i|net_proc_i|Mux66~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|info_words[0][6]~q\);

-- Location: LCCOMB_X27_Y27_N30
\eth_top_i|net_proc_i|Equal6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Equal6~1_combout\ = (!\eth_top_i|net_proc_i|info_words[0][7]~q\ & (!\eth_top_i|net_proc_i|info_words[0][5]~q\ & (!\eth_top_i|net_proc_i|info_words[0][8]~q\ & !\eth_top_i|net_proc_i|info_words[0][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|info_words[0][7]~q\,
	datab => \eth_top_i|net_proc_i|info_words[0][5]~q\,
	datac => \eth_top_i|net_proc_i|info_words[0][8]~q\,
	datad => \eth_top_i|net_proc_i|info_words[0][6]~q\,
	combout => \eth_top_i|net_proc_i|Equal6~1_combout\);

-- Location: FF_X27_Y27_N15
\eth_top_i|net_proc_i|info_words[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \eth_top_i|eth_rx_ram_i|data_out_r\(4),
	sload => VCC,
	ena => \eth_top_i|net_proc_i|Mux66~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|info_words[0][4]~q\);

-- Location: FF_X27_Y27_N1
\eth_top_i|net_proc_i|info_words[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \eth_top_i|eth_rx_ram_i|data_out_r\(1),
	sload => VCC,
	ena => \eth_top_i|net_proc_i|Mux66~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|info_words[0][1]~q\);

-- Location: FF_X26_Y27_N11
\eth_top_i|eth_rx_ram_i|data_out_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|q_b\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_ram_i|data_out_r\(3));

-- Location: FF_X27_Y27_N13
\eth_top_i|net_proc_i|info_words[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \eth_top_i|eth_rx_ram_i|data_out_r\(3),
	sload => VCC,
	ena => \eth_top_i|net_proc_i|Mux66~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|info_words[0][3]~q\);

-- Location: LCCOMB_X27_Y27_N0
\eth_top_i|net_proc_i|Equal6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Equal6~0_combout\ = (!\eth_top_i|net_proc_i|info_words[0][2]~q\ & (!\eth_top_i|net_proc_i|info_words[0][4]~q\ & (!\eth_top_i|net_proc_i|info_words[0][1]~q\ & !\eth_top_i|net_proc_i|info_words[0][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|info_words[0][2]~q\,
	datab => \eth_top_i|net_proc_i|info_words[0][4]~q\,
	datac => \eth_top_i|net_proc_i|info_words[0][1]~q\,
	datad => \eth_top_i|net_proc_i|info_words[0][3]~q\,
	combout => \eth_top_i|net_proc_i|Equal6~0_combout\);

-- Location: LCCOMB_X27_Y27_N28
\eth_top_i|net_proc_i|Equal6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Equal6~2_combout\ = (!\eth_top_i|net_proc_i|info_words[0][9]~q\ & (\eth_top_i|net_proc_i|Equal6~1_combout\ & \eth_top_i|net_proc_i|Equal6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|info_words[0][9]~q\,
	datac => \eth_top_i|net_proc_i|Equal6~1_combout\,
	datad => \eth_top_i|net_proc_i|Equal6~0_combout\,
	combout => \eth_top_i|net_proc_i|Equal6~2_combout\);

-- Location: FF_X27_Y27_N29
\eth_top_i|net_proc_i|short_read_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Equal6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|short_read_r~q\);

-- Location: LCCOMB_X24_Y27_N12
\eth_top_i|net_proc_i|Selector54~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector54~0_combout\ = (((\eth_top_i|net_proc_i|np_fsm.npf_read_mem5~q\ & \eth_top_i|net_proc_i|short_read_r~q\)) # (!\eth_top_i|net_proc_i|np_fsm.npf_copyPacketInfo~q\)) # (!\eth_top_i|net_proc_i|tx_ram_data_last_r~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|np_fsm.npf_read_mem5~q\,
	datab => \eth_top_i|net_proc_i|short_read_r~q\,
	datac => \eth_top_i|net_proc_i|tx_ram_data_last_r~q\,
	datad => \eth_top_i|net_proc_i|np_fsm.npf_copyPacketInfo~q\,
	combout => \eth_top_i|net_proc_i|Selector54~0_combout\);

-- Location: LCCOMB_X27_Y27_N4
\eth_top_i|net_proc_i|Selector54~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector54~1_combout\ = (\eth_top_i|net_proc_i|Selector54~0_combout\ & ((\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~9_combout\ & (\eth_top_i|net_proc_i|Add2~2_combout\)) # (!\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~9_combout\ & 
-- ((\eth_top_i|net_proc_i|info_words[0][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|Add2~2_combout\,
	datab => \eth_top_i|net_proc_i|Selector54~0_combout\,
	datac => \eth_top_i|net_proc_i|info_words[0][1]~q\,
	datad => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~9_combout\,
	combout => \eth_top_i|net_proc_i|Selector54~1_combout\);

-- Location: LCCOMB_X28_Y27_N30
\eth_top_i|net_proc_i|Selector54~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector54~2_combout\ = (\eth_top_i|net_proc_i|Selector54~1_combout\) # ((\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~12_combout\ & \eth_top_i|net_proc_i|Selector54~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~12_combout\,
	datac => \eth_top_i|net_proc_i|Selector54~1_combout\,
	datad => \eth_top_i|net_proc_i|Selector54~0_combout\,
	combout => \eth_top_i|net_proc_i|Selector54~2_combout\);

-- Location: FF_X28_Y27_N31
\eth_top_i|net_proc_i|tx_ram_cnt_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Selector54~2_combout\,
	ena => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|tx_ram_cnt_r\(1));

-- Location: LCCOMB_X25_Y27_N14
\eth_top_i|net_proc_i|info_words[3][1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|info_words[3][1]~0_combout\ = (!\eth_top_i|net_proc_i|tx_ram_cnt_r\(1) & (!\eth_top_i|net_proc_i|tx_ram_cnt_r\(0) & \eth_top_i|net_proc_i|process_0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|tx_ram_cnt_r\(1),
	datac => \eth_top_i|net_proc_i|tx_ram_cnt_r\(0),
	datad => \eth_top_i|net_proc_i|process_0~8_combout\,
	combout => \eth_top_i|net_proc_i|info_words[3][1]~0_combout\);

-- Location: FF_X24_Y27_N21
\eth_top_i|net_proc_i|info_words[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \eth_top_i|eth_rx_ram_i|data_out_r\(1),
	sload => VCC,
	ena => \eth_top_i|net_proc_i|info_words[3][1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|info_words[3][1]~q\);

-- Location: LCCOMB_X24_Y27_N0
\eth_top_i|net_proc_i|rx_ram_cnt_r[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~1_combout\ = (\eth_top_i|net_proc_i|info_words[3][0]~q\ & (\eth_top_i|net_proc_i|info_words[3][1]~q\ & (\eth_top_i|net_proc_i|tx_ram_data_last_r~q\ & \eth_top_i|net_proc_i|com_id_high_bits_zero_r~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|info_words[3][0]~q\,
	datab => \eth_top_i|net_proc_i|info_words[3][1]~q\,
	datac => \eth_top_i|net_proc_i|tx_ram_data_last_r~q\,
	datad => \eth_top_i|net_proc_i|com_id_high_bits_zero_r~q\,
	combout => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~1_combout\);

-- Location: LCCOMB_X24_Y28_N24
\eth_top_i|net_proc_i|rx_ram_cnt_r[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~4_combout\ = (\eth_top_i|net_proc_i|np_fsm.npf_caseComID~q\ & \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|np_fsm.npf_caseComID~q\,
	datad => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~1_combout\,
	combout => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~4_combout\);

-- Location: LCCOMB_X23_Y27_N26
\eth_top_i|net_proc_i|Selector12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector12~0_combout\ = (!\eth_top_i|net_proc_i|rx_ram_cnt_r[2]~4_combout\ & ((\eth_top_i|net_proc_i|Selector11~0_combout\ & ((\eth_top_i|net_proc_i|Add1~4_combout\))) # (!\eth_top_i|net_proc_i|Selector11~0_combout\ & 
-- (!\eth_top_i|net_proc_i|np_fsm.npf_checkProtocolID~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|Selector11~0_combout\,
	datab => \eth_top_i|net_proc_i|np_fsm.npf_checkProtocolID~q\,
	datac => \eth_top_i|net_proc_i|Add1~4_combout\,
	datad => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~4_combout\,
	combout => \eth_top_i|net_proc_i|Selector12~0_combout\);

-- Location: FF_X23_Y27_N27
\eth_top_i|net_proc_i|rx_ram_addr_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|rx_ram_addr_r\(2));

-- Location: LCCOMB_X23_Y27_N2
\eth_top_i|eth_rx_ram_i|addr_out_r[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_ram_i|addr_out_r[2]~feeder_combout\ = \eth_top_i|net_proc_i|rx_ram_addr_r\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|net_proc_i|rx_ram_addr_r\(2),
	combout => \eth_top_i|eth_rx_ram_i|addr_out_r[2]~feeder_combout\);

-- Location: FF_X23_Y27_N3
\eth_top_i|eth_rx_ram_i|addr_out_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|eth_rx_ram_i|addr_out_r[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_ram_i|addr_out_r\(2));

-- Location: LCCOMB_X26_Y25_N26
\eth_top_i|eth_rx_ram_i|data_out_r[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_ram_i|data_out_r[13]~feeder_combout\ = \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|q_b\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|q_b\(13),
	combout => \eth_top_i|eth_rx_ram_i|data_out_r[13]~feeder_combout\);

-- Location: FF_X26_Y25_N27
\eth_top_i|eth_rx_ram_i|data_out_r[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|eth_rx_ram_i|data_out_r[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_ram_i|data_out_r\(13));

-- Location: LCCOMB_X26_Y25_N2
\eth_top_i|net_proc_i|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|process_0~1_combout\ = (!\eth_top_i|eth_rx_ram_i|data_out_r\(14) & (\eth_top_i|eth_rx_ram_i|data_out_r\(13) & \eth_top_i|eth_rx_ram_i|data_out_r\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_rx_ram_i|data_out_r\(14),
	datac => \eth_top_i|eth_rx_ram_i|data_out_r\(13),
	datad => \eth_top_i|eth_rx_ram_i|data_out_r\(15),
	combout => \eth_top_i|net_proc_i|process_0~1_combout\);

-- Location: LCCOMB_X26_Y25_N0
\eth_top_i|net_proc_i|Selector35~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector35~1_combout\ = (\eth_top_i|net_proc_i|Selector35~0_combout\) # ((\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~6_combout\ & ((!\eth_top_i|net_proc_i|process_0~6_combout\) # (!\eth_top_i|net_proc_i|process_0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|Selector35~0_combout\,
	datab => \eth_top_i|net_proc_i|process_0~1_combout\,
	datac => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~6_combout\,
	datad => \eth_top_i|net_proc_i|process_0~6_combout\,
	combout => \eth_top_i|net_proc_i|Selector35~1_combout\);

-- Location: FF_X26_Y25_N1
\eth_top_i|net_proc_i|np_fsm.npf_reset\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Selector35~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|np_fsm.npf_reset~q\);

-- Location: LCCOMB_X24_Y25_N6
\eth_top_i|net_proc_i|Selector16~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector16~1_combout\ = (!\eth_top_i|net_proc_i|np_fsm.npf_store_udp_len~q\ & (!\eth_top_i|net_proc_i|Selector16~0_combout\ & !\eth_top_i|net_proc_i|np_fsm.npf_reset~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|np_fsm.npf_store_udp_len~q\,
	datac => \eth_top_i|net_proc_i|Selector16~0_combout\,
	datad => \eth_top_i|net_proc_i|np_fsm.npf_reset~q\,
	combout => \eth_top_i|net_proc_i|Selector16~1_combout\);

-- Location: FF_X24_Y25_N7
\eth_top_i|net_proc_i|np_fsm.npf_idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Selector16~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|np_fsm.npf_idle~q\);

-- Location: LCCOMB_X21_Y27_N0
\eth_top_i|net_proc_i|Selector13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector13~0_combout\ = ((\eth_top_i|net_proc_i|rx_ram_cnt_r[2]~4_combout\) # ((\eth_top_i|net_proc_i|Add1~2_combout\ & \eth_top_i|net_proc_i|np_fsm.npf_idle~q\))) # (!\eth_top_i|net_proc_i|rx_ram_cnt_r[2]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|Add1~2_combout\,
	datab => \eth_top_i|net_proc_i|np_fsm.npf_idle~q\,
	datac => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~3_combout\,
	datad => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~4_combout\,
	combout => \eth_top_i|net_proc_i|Selector13~0_combout\);

-- Location: FF_X21_Y27_N1
\eth_top_i|net_proc_i|rx_ram_addr_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|rx_ram_addr_r\(1));

-- Location: LCCOMB_X21_Y28_N24
\eth_top_i|eth_rx_ram_i|addr_out_r[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_ram_i|addr_out_r[1]~feeder_combout\ = \eth_top_i|net_proc_i|rx_ram_addr_r\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|net_proc_i|rx_ram_addr_r\(1),
	combout => \eth_top_i|eth_rx_ram_i|addr_out_r[1]~feeder_combout\);

-- Location: FF_X21_Y28_N25
\eth_top_i|eth_rx_ram_i|addr_out_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|eth_rx_ram_i|addr_out_r[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_ram_i|addr_out_r\(1));

-- Location: FF_X26_Y27_N9
\eth_top_i|eth_rx_ram_i|data_out_r[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|q_b\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_ram_i|data_out_r\(10));

-- Location: LCCOMB_X26_Y27_N4
\eth_top_i|net_proc_i|process_0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|process_0~5_combout\ = (\eth_top_i|eth_rx_ram_i|data_out_r\(11) & (!\eth_top_i|eth_rx_ram_i|data_out_r\(10) & (\eth_top_i|eth_rx_ram_i|data_out_r\(9) & !\eth_top_i|eth_rx_ram_i|data_out_r\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_rx_ram_i|data_out_r\(11),
	datab => \eth_top_i|eth_rx_ram_i|data_out_r\(10),
	datac => \eth_top_i|eth_rx_ram_i|data_out_r\(9),
	datad => \eth_top_i|eth_rx_ram_i|data_out_r\(12),
	combout => \eth_top_i|net_proc_i|process_0~5_combout\);

-- Location: LCCOMB_X26_Y27_N22
\eth_top_i|net_proc_i|process_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|process_0~4_combout\ = (\eth_top_i|eth_rx_ram_i|data_out_r\(6) & (\eth_top_i|eth_rx_ram_i|data_out_r\(7) & (\eth_top_i|eth_rx_ram_i|data_out_r\(8) & !\eth_top_i|eth_rx_ram_i|data_out_r\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_rx_ram_i|data_out_r\(6),
	datab => \eth_top_i|eth_rx_ram_i|data_out_r\(7),
	datac => \eth_top_i|eth_rx_ram_i|data_out_r\(8),
	datad => \eth_top_i|eth_rx_ram_i|data_out_r\(5),
	combout => \eth_top_i|net_proc_i|process_0~4_combout\);

-- Location: LCCOMB_X31_Y29_N30
\eth_top_i|net_proc_i|tx_bank_info_r[0][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|tx_bank_info_r[0][10]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \eth_top_i|net_proc_i|tx_bank_info_r[0][10]~feeder_combout\);

-- Location: LCCOMB_X29_Y28_N24
\eth_top_i|eth_tx_i|bank_info_clrn_r~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|bank_info_clrn_r~1_combout\ = (\eth_top_i|eth_tx_i|current_bank_r~q\) # ((!\eth_top_i|eth_tx_i|nibble_cnt_zero_r~q\) # (!\eth_top_i|eth_tx_i|eth_tx_sm.st_send_data~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|current_bank_r~q\,
	datab => \eth_top_i|eth_tx_i|eth_tx_sm.st_send_data~q\,
	datac => \eth_top_i|eth_tx_i|nibble_cnt_zero_r~q\,
	combout => \eth_top_i|eth_tx_i|bank_info_clrn_r~1_combout\);

-- Location: FF_X29_Y28_N25
\eth_top_i|eth_tx_i|bank_info_clrn_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|bank_info_clrn_r~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|bank_info_clrn_r\(0));

-- Location: FF_X24_Y26_N11
\eth_top_i|net_proc_i|np_fsm.npf_store_udp_len\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \eth_top_i|net_proc_i|np_fsm.npf_store_ip_checksum~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|np_fsm.npf_store_udp_len~q\);

-- Location: FF_X31_Y27_N17
\eth_top_i|net_proc_i|tx_init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \eth_top_i|net_proc_i|np_fsm.npf_store_udp_len~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|tx_init~q\);

-- Location: LCCOMB_X31_Y27_N16
\eth_top_i|net_proc_i|tx_bank_info_r[0][10]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|tx_bank_info_r[0][10]~0_combout\ = (!\eth_top_i|net_proc_i|tx_current_bank_r~q\ & \eth_top_i|net_proc_i|tx_init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|tx_current_bank_r~q\,
	datac => \eth_top_i|net_proc_i|tx_init~q\,
	combout => \eth_top_i|net_proc_i|tx_bank_info_r[0][10]~0_combout\);

-- Location: FF_X31_Y29_N31
\eth_top_i|net_proc_i|tx_bank_info_r[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|tx_bank_info_r[0][10]~feeder_combout\,
	clrn => \eth_top_i|eth_tx_i|bank_info_clrn_r\(0),
	ena => \eth_top_i|net_proc_i|tx_bank_info_r[0][10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|tx_bank_info_r[0][10]~q\);

-- Location: FF_X26_Y27_N3
\eth_top_i|net_proc_i|tx_bank_busy_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \eth_top_i|net_proc_i|tx_bank_info_r[0][10]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|tx_bank_busy_r\(0));

-- Location: LCCOMB_X26_Y27_N16
\eth_top_i|net_proc_i|tx_current_bank_r~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|tx_current_bank_r~0_combout\ = \eth_top_i|net_proc_i|tx_current_bank_r~q\ $ (\eth_top_i|net_proc_i|tx_init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|net_proc_i|tx_current_bank_r~q\,
	datad => \eth_top_i|net_proc_i|tx_init~q\,
	combout => \eth_top_i|net_proc_i|tx_current_bank_r~0_combout\);

-- Location: FF_X26_Y27_N17
\eth_top_i|net_proc_i|tx_current_bank_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|tx_current_bank_r~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|tx_current_bank_r~q\);

-- Location: LCCOMB_X26_Y27_N2
\eth_top_i|net_proc_i|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|process_0~2_combout\ = (!\eth_top_i|eth_rx_ram_i|data_out_r\(0) & ((\eth_top_i|net_proc_i|tx_current_bank_r~q\ & (!\eth_top_i|net_proc_i|tx_bank_busy_r\(1))) # (!\eth_top_i|net_proc_i|tx_current_bank_r~q\ & 
-- ((!\eth_top_i|net_proc_i|tx_bank_busy_r\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|tx_bank_busy_r\(1),
	datab => \eth_top_i|eth_rx_ram_i|data_out_r\(0),
	datac => \eth_top_i|net_proc_i|tx_bank_busy_r\(0),
	datad => \eth_top_i|net_proc_i|tx_current_bank_r~q\,
	combout => \eth_top_i|net_proc_i|process_0~2_combout\);

-- Location: LCCOMB_X26_Y27_N0
\eth_top_i|net_proc_i|process_0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|process_0~6_combout\ = (\eth_top_i|net_proc_i|process_0~3_combout\ & (\eth_top_i|net_proc_i|process_0~5_combout\ & (\eth_top_i|net_proc_i|process_0~4_combout\ & \eth_top_i|net_proc_i|process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|process_0~3_combout\,
	datab => \eth_top_i|net_proc_i|process_0~5_combout\,
	datac => \eth_top_i|net_proc_i|process_0~4_combout\,
	datad => \eth_top_i|net_proc_i|process_0~2_combout\,
	combout => \eth_top_i|net_proc_i|process_0~6_combout\);

-- Location: LCCOMB_X26_Y27_N26
\eth_top_i|net_proc_i|Selector19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector19~0_combout\ = (\eth_top_i|net_proc_i|process_0~1_combout\ & (\eth_top_i|net_proc_i|rx_ram_data_valid_r~q\ & (\eth_top_i|net_proc_i|np_fsm.npf_copyDestMAC~q\ & \eth_top_i|net_proc_i|process_0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|process_0~1_combout\,
	datab => \eth_top_i|net_proc_i|rx_ram_data_valid_r~q\,
	datac => \eth_top_i|net_proc_i|np_fsm.npf_copyDestMAC~q\,
	datad => \eth_top_i|net_proc_i|process_0~6_combout\,
	combout => \eth_top_i|net_proc_i|Selector19~0_combout\);

-- Location: LCCOMB_X25_Y26_N28
\eth_top_i|net_proc_i|Selector19~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector19~1_combout\ = (\eth_top_i|net_proc_i|Selector19~0_combout\) # ((!\eth_top_i|net_proc_i|rx_ram_data_last_r~q\ & \eth_top_i|net_proc_i|np_fsm.npf_copyPacketInfo~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|rx_ram_data_last_r~q\,
	datac => \eth_top_i|net_proc_i|np_fsm.npf_copyPacketInfo~q\,
	datad => \eth_top_i|net_proc_i|Selector19~0_combout\,
	combout => \eth_top_i|net_proc_i|Selector19~1_combout\);

-- Location: FF_X25_Y26_N29
\eth_top_i|net_proc_i|np_fsm.npf_copyPacketInfo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Selector19~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|np_fsm.npf_copyPacketInfo~q\);

-- Location: LCCOMB_X23_Y25_N18
\eth_top_i|net_proc_i|Selector20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector20~0_combout\ = (\eth_top_i|net_proc_i|rx_ram_data_last_r~q\ & \eth_top_i|net_proc_i|np_fsm.npf_copyPacketInfo~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|rx_ram_data_last_r~q\,
	datac => \eth_top_i|net_proc_i|np_fsm.npf_copyPacketInfo~q\,
	combout => \eth_top_i|net_proc_i|Selector20~0_combout\);

-- Location: LCCOMB_X23_Y25_N8
\eth_top_i|net_proc_i|Selector26~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector26~0_combout\ = (\eth_top_i|net_proc_i|tx_ram_data_last_r~q\ & !\eth_top_i|net_proc_i|np_fsm.npf_copyDestMAC~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|tx_ram_data_last_r~q\,
	datac => \eth_top_i|net_proc_i|np_fsm.npf_copyDestMAC~q\,
	combout => \eth_top_i|net_proc_i|Selector26~0_combout\);

-- Location: LCCOMB_X23_Y25_N12
\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~5_combout\ = (!\eth_top_i|net_proc_i|np_fsm.npf_copyDestMAC~q\ & (!\eth_top_i|net_proc_i|np_fsm.npf_copyPacketInfo~q\ & !\eth_top_i|net_proc_i|np_fsm.npf_write_mem1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|np_fsm.npf_copyDestMAC~q\,
	datac => \eth_top_i|net_proc_i|np_fsm.npf_copyPacketInfo~q\,
	datad => \eth_top_i|net_proc_i|np_fsm.npf_write_mem1~q\,
	combout => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~5_combout\);

-- Location: LCCOMB_X23_Y25_N22
\eth_top_i|net_proc_i|Selector26~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector26~1_combout\ = (\eth_top_i|net_proc_i|WideOr4~0_combout\ & (((!\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~5_combout\)) # (!\eth_top_i|net_proc_i|np_fsm.npf_idle~q\))) # (!\eth_top_i|net_proc_i|WideOr4~0_combout\ & 
-- (((!\eth_top_i|net_proc_i|Selector26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|np_fsm.npf_idle~q\,
	datab => \eth_top_i|net_proc_i|Selector26~0_combout\,
	datac => \eth_top_i|net_proc_i|WideOr4~0_combout\,
	datad => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~5_combout\,
	combout => \eth_top_i|net_proc_i|Selector26~1_combout\);

-- Location: LCCOMB_X23_Y25_N24
\eth_top_i|net_proc_i|Selector26~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector26~3_combout\ = (!\eth_top_i|net_proc_i|Selector26~2_combout\ & (!\eth_top_i|net_proc_i|Selector20~0_combout\ & (\eth_top_i|net_proc_i|Selector26~1_combout\ & !\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|Selector26~2_combout\,
	datab => \eth_top_i|net_proc_i|Selector20~0_combout\,
	datac => \eth_top_i|net_proc_i|Selector26~1_combout\,
	datad => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~6_combout\,
	combout => \eth_top_i|net_proc_i|Selector26~3_combout\);

-- Location: LCCOMB_X24_Y25_N4
\eth_top_i|net_proc_i|Selector26~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector26~2_combout\ = (!\eth_top_i|net_proc_i|np_fsm.npf_idle~q\ & ((\eth_top_i|net_proc_i|rx_current_bank_r~q\ & ((\eth_top_i|net_proc_i|rx_bank_busy_r\(1)))) # (!\eth_top_i|net_proc_i|rx_current_bank_r~q\ & 
-- (\eth_top_i|net_proc_i|rx_bank_busy_r\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|np_fsm.npf_idle~q\,
	datab => \eth_top_i|net_proc_i|rx_current_bank_r~q\,
	datac => \eth_top_i|net_proc_i|rx_bank_busy_r\(0),
	datad => \eth_top_i|net_proc_i|rx_bank_busy_r\(1),
	combout => \eth_top_i|net_proc_i|Selector26~2_combout\);

-- Location: LCCOMB_X23_Y25_N20
\eth_top_i|net_proc_i|Selector17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector17~0_combout\ = (!\eth_top_i|net_proc_i|Selector26~4_combout\ & ((\eth_top_i|net_proc_i|Selector26~2_combout\) # ((\eth_top_i|net_proc_i|Selector26~3_combout\ & \eth_top_i|net_proc_i|np_fsm.npf_checkProtocolID~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|Selector26~4_combout\,
	datab => \eth_top_i|net_proc_i|Selector26~3_combout\,
	datac => \eth_top_i|net_proc_i|np_fsm.npf_checkProtocolID~q\,
	datad => \eth_top_i|net_proc_i|Selector26~2_combout\,
	combout => \eth_top_i|net_proc_i|Selector17~0_combout\);

-- Location: FF_X23_Y25_N21
\eth_top_i|net_proc_i|np_fsm.npf_checkProtocolID\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|np_fsm.npf_checkProtocolID~q\);

-- Location: LCCOMB_X23_Y27_N10
\eth_top_i|net_proc_i|rx_ram_cnt_r[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~3_combout\ = (!\eth_top_i|net_proc_i|np_fsm.npf_checkProtocolID~q\ & ((!\eth_top_i|net_proc_i|rx_ram_data_last_r~q\) # (!\eth_top_i|net_proc_i|np_fsm.npf_copyDestMAC~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|np_fsm.npf_copyDestMAC~q\,
	datac => \eth_top_i|net_proc_i|np_fsm.npf_checkProtocolID~q\,
	datad => \eth_top_i|net_proc_i|rx_ram_data_last_r~q\,
	combout => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~3_combout\);

-- Location: LCCOMB_X24_Y28_N12
\eth_top_i|net_proc_i|Selector42~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector42~0_combout\ = (\eth_top_i|net_proc_i|rx_ram_cnt_r[2]~4_combout\ & (((\eth_top_i|eth_rx_ram_i|data_out_r\(3))))) # (!\eth_top_i|net_proc_i|rx_ram_cnt_r[2]~4_combout\ & (\eth_top_i|net_proc_i|Add0~6_combout\ & 
-- (\eth_top_i|net_proc_i|rx_ram_cnt_r[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|Add0~6_combout\,
	datab => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~3_combout\,
	datac => \eth_top_i|eth_rx_ram_i|data_out_r\(3),
	datad => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~4_combout\,
	combout => \eth_top_i|net_proc_i|Selector42~0_combout\);

-- Location: LCCOMB_X23_Y27_N20
\eth_top_i|net_proc_i|Selector43~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector43~0_combout\ = (\eth_top_i|net_proc_i|Add0~4_combout\ & (!\eth_top_i|net_proc_i|np_fsm.npf_checkProtocolID~q\ & ((!\eth_top_i|net_proc_i|np_fsm.npf_caseComID~q\) # (!\eth_top_i|net_proc_i|rx_ram_cnt_r[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|Add0~4_combout\,
	datab => \eth_top_i|net_proc_i|np_fsm.npf_checkProtocolID~q\,
	datac => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~1_combout\,
	datad => \eth_top_i|net_proc_i|np_fsm.npf_caseComID~q\,
	combout => \eth_top_i|net_proc_i|Selector43~0_combout\);

-- Location: FF_X26_Y27_N31
\eth_top_i|eth_rx_ram_i|data_out_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|q_b\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_ram_i|data_out_r\(2));

-- Location: LCCOMB_X23_Y27_N22
\eth_top_i|net_proc_i|Selector43~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector43~1_combout\ = (\eth_top_i|net_proc_i|Selector43~0_combout\) # ((\eth_top_i|net_proc_i|rx_ram_cnt_r[2]~4_combout\ & (\eth_top_i|eth_rx_ram_i|data_out_r\(2))) # (!\eth_top_i|net_proc_i|rx_ram_cnt_r[2]~4_combout\ & 
-- ((!\eth_top_i|net_proc_i|rx_ram_cnt_r[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~4_combout\,
	datab => \eth_top_i|net_proc_i|Selector43~0_combout\,
	datac => \eth_top_i|eth_rx_ram_i|data_out_r\(2),
	datad => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~2_combout\,
	combout => \eth_top_i|net_proc_i|Selector43~1_combout\);

-- Location: FF_X23_Y27_N23
\eth_top_i|net_proc_i|rx_ram_cnt_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Selector43~1_combout\,
	ena => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|rx_ram_cnt_r\(2));

-- Location: LCCOMB_X24_Y28_N18
\eth_top_i|net_proc_i|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Equal1~0_combout\ = (!\eth_top_i|net_proc_i|rx_ram_cnt_r\(3) & (!\eth_top_i|net_proc_i|rx_ram_cnt_r\(2) & (!\eth_top_i|net_proc_i|rx_ram_cnt_r\(4) & !\eth_top_i|net_proc_i|rx_ram_cnt_r\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|rx_ram_cnt_r\(3),
	datab => \eth_top_i|net_proc_i|rx_ram_cnt_r\(2),
	datac => \eth_top_i|net_proc_i|rx_ram_cnt_r\(4),
	datad => \eth_top_i|net_proc_i|rx_ram_cnt_r\(5),
	combout => \eth_top_i|net_proc_i|Equal1~0_combout\);

-- Location: LCCOMB_X24_Y28_N14
\eth_top_i|net_proc_i|Selector45~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector45~0_combout\ = (\eth_top_i|net_proc_i|rx_ram_cnt_r[2]~4_combout\ & (((\eth_top_i|eth_rx_ram_i|data_out_r\(0))))) # (!\eth_top_i|net_proc_i|rx_ram_cnt_r[2]~4_combout\ & ((\eth_top_i|net_proc_i|Add0~0_combout\) # 
-- ((!\eth_top_i|net_proc_i|rx_ram_cnt_r[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|Add0~0_combout\,
	datab => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~3_combout\,
	datac => \eth_top_i|eth_rx_ram_i|data_out_r\(0),
	datad => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~4_combout\,
	combout => \eth_top_i|net_proc_i|Selector45~0_combout\);

-- Location: FF_X24_Y28_N15
\eth_top_i|net_proc_i|rx_ram_cnt_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Selector45~0_combout\,
	ena => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|rx_ram_cnt_r\(0));

-- Location: LCCOMB_X24_Y28_N28
\eth_top_i|net_proc_i|rx_ram_cnt_r[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~6_combout\ = (!\eth_top_i|net_proc_i|rx_ram_cnt_r\(0) & ((\eth_top_i|net_proc_i|rx_ram_cnt_r[2]~5_combout\) # ((\eth_top_i|net_proc_i|np_fsm.npf_caseComID~q\ & !\eth_top_i|net_proc_i|rx_ram_cnt_r[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~5_combout\,
	datab => \eth_top_i|net_proc_i|np_fsm.npf_caseComID~q\,
	datac => \eth_top_i|net_proc_i|rx_ram_cnt_r\(0),
	datad => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~1_combout\,
	combout => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~6_combout\);

-- Location: LCCOMB_X24_Y28_N6
\eth_top_i|net_proc_i|rx_ram_cnt_r[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~7_combout\ = (\eth_top_i|net_proc_i|rx_ram_cnt_r\(1)) # (((!\eth_top_i|net_proc_i|Equal1~1_combout\) # (!\eth_top_i|net_proc_i|rx_ram_cnt_r[2]~6_combout\)) # (!\eth_top_i|net_proc_i|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|rx_ram_cnt_r\(1),
	datab => \eth_top_i|net_proc_i|Equal1~0_combout\,
	datac => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~6_combout\,
	datad => \eth_top_i|net_proc_i|Equal1~1_combout\,
	combout => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~7_combout\);

-- Location: FF_X24_Y28_N13
\eth_top_i|net_proc_i|rx_ram_cnt_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Selector42~0_combout\,
	ena => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|rx_ram_cnt_r\(3));

-- Location: LCCOMB_X24_Y28_N8
\eth_top_i|net_proc_i|rx_ram_cnt_r[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|rx_ram_cnt_r[1]~0_combout\ = (\eth_top_i|net_proc_i|rx_ram_cnt_r[2]~3_combout\ & (\eth_top_i|net_proc_i|Add0~2_combout\)) # (!\eth_top_i|net_proc_i|rx_ram_cnt_r[2]~3_combout\ & ((\eth_top_i|net_proc_i|rx_ram_cnt_r[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|Add0~2_combout\,
	datab => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~2_combout\,
	datad => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~3_combout\,
	combout => \eth_top_i|net_proc_i|rx_ram_cnt_r[1]~0_combout\);

-- Location: FF_X24_Y28_N9
\eth_top_i|net_proc_i|rx_ram_cnt_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|rx_ram_cnt_r[1]~0_combout\,
	asdata => \eth_top_i|eth_rx_ram_i|data_out_r\(1),
	sload => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~4_combout\,
	ena => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|rx_ram_cnt_r\(1));

-- Location: LCCOMB_X23_Y28_N16
\eth_top_i|net_proc_i|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add0~8_combout\ = (\eth_top_i|net_proc_i|rx_ram_cnt_r\(4) & ((GND) # (!\eth_top_i|net_proc_i|Add0~7\))) # (!\eth_top_i|net_proc_i|rx_ram_cnt_r\(4) & (\eth_top_i|net_proc_i|Add0~7\ $ (GND)))
-- \eth_top_i|net_proc_i|Add0~9\ = CARRY((\eth_top_i|net_proc_i|rx_ram_cnt_r\(4)) # (!\eth_top_i|net_proc_i|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|rx_ram_cnt_r\(4),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|Add0~7\,
	combout => \eth_top_i|net_proc_i|Add0~8_combout\,
	cout => \eth_top_i|net_proc_i|Add0~9\);

-- Location: LCCOMB_X24_Y28_N22
\eth_top_i|net_proc_i|Selector41~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector41~0_combout\ = (\eth_top_i|net_proc_i|rx_ram_cnt_r[2]~4_combout\ & (\eth_top_i|eth_rx_ram_i|data_out_r\(4))) # (!\eth_top_i|net_proc_i|rx_ram_cnt_r[2]~4_combout\ & (((\eth_top_i|net_proc_i|rx_ram_cnt_r[2]~3_combout\ & 
-- \eth_top_i|net_proc_i|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_rx_ram_i|data_out_r\(4),
	datab => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~3_combout\,
	datac => \eth_top_i|net_proc_i|Add0~8_combout\,
	datad => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~4_combout\,
	combout => \eth_top_i|net_proc_i|Selector41~0_combout\);

-- Location: FF_X24_Y28_N23
\eth_top_i|net_proc_i|rx_ram_cnt_r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Selector41~0_combout\,
	ena => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|rx_ram_cnt_r\(4));

-- Location: LCCOMB_X23_Y28_N18
\eth_top_i|net_proc_i|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add0~10_combout\ = (\eth_top_i|net_proc_i|rx_ram_cnt_r\(5) & (\eth_top_i|net_proc_i|Add0~9\ & VCC)) # (!\eth_top_i|net_proc_i|rx_ram_cnt_r\(5) & (!\eth_top_i|net_proc_i|Add0~9\))
-- \eth_top_i|net_proc_i|Add0~11\ = CARRY((!\eth_top_i|net_proc_i|rx_ram_cnt_r\(5) & !\eth_top_i|net_proc_i|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|rx_ram_cnt_r\(5),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|Add0~9\,
	combout => \eth_top_i|net_proc_i|Add0~10_combout\,
	cout => \eth_top_i|net_proc_i|Add0~11\);

-- Location: LCCOMB_X24_Y28_N0
\eth_top_i|net_proc_i|Selector40~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector40~0_combout\ = (\eth_top_i|net_proc_i|rx_ram_cnt_r[2]~4_combout\ & (((\eth_top_i|eth_rx_ram_i|data_out_r\(5))))) # (!\eth_top_i|net_proc_i|rx_ram_cnt_r[2]~4_combout\ & (\eth_top_i|net_proc_i|Add0~10_combout\ & 
-- ((\eth_top_i|net_proc_i|rx_ram_cnt_r[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~4_combout\,
	datab => \eth_top_i|net_proc_i|Add0~10_combout\,
	datac => \eth_top_i|eth_rx_ram_i|data_out_r\(5),
	datad => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~3_combout\,
	combout => \eth_top_i|net_proc_i|Selector40~0_combout\);

-- Location: FF_X24_Y28_N1
\eth_top_i|net_proc_i|rx_ram_cnt_r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Selector40~0_combout\,
	ena => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|rx_ram_cnt_r\(5));

-- Location: LCCOMB_X23_Y28_N20
\eth_top_i|net_proc_i|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add0~12_combout\ = (\eth_top_i|net_proc_i|rx_ram_cnt_r\(6) & ((GND) # (!\eth_top_i|net_proc_i|Add0~11\))) # (!\eth_top_i|net_proc_i|rx_ram_cnt_r\(6) & (\eth_top_i|net_proc_i|Add0~11\ $ (GND)))
-- \eth_top_i|net_proc_i|Add0~13\ = CARRY((\eth_top_i|net_proc_i|rx_ram_cnt_r\(6)) # (!\eth_top_i|net_proc_i|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|rx_ram_cnt_r\(6),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|Add0~11\,
	combout => \eth_top_i|net_proc_i|Add0~12_combout\,
	cout => \eth_top_i|net_proc_i|Add0~13\);

-- Location: LCCOMB_X23_Y28_N22
\eth_top_i|net_proc_i|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add0~14_combout\ = (\eth_top_i|net_proc_i|rx_ram_cnt_r\(7) & (\eth_top_i|net_proc_i|Add0~13\ & VCC)) # (!\eth_top_i|net_proc_i|rx_ram_cnt_r\(7) & (!\eth_top_i|net_proc_i|Add0~13\))
-- \eth_top_i|net_proc_i|Add0~15\ = CARRY((!\eth_top_i|net_proc_i|rx_ram_cnt_r\(7) & !\eth_top_i|net_proc_i|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|rx_ram_cnt_r\(7),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|Add0~13\,
	combout => \eth_top_i|net_proc_i|Add0~14_combout\,
	cout => \eth_top_i|net_proc_i|Add0~15\);

-- Location: LCCOMB_X24_Y28_N16
\eth_top_i|net_proc_i|Selector37~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector37~0_combout\ = (\eth_top_i|net_proc_i|rx_ram_cnt_r[2]~4_combout\ & (\eth_top_i|eth_rx_ram_i|data_out_r\(8))) # (!\eth_top_i|net_proc_i|rx_ram_cnt_r[2]~4_combout\ & (((\eth_top_i|net_proc_i|Add0~16_combout\ & 
-- \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_rx_ram_i|data_out_r\(8),
	datab => \eth_top_i|net_proc_i|Add0~16_combout\,
	datac => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~3_combout\,
	datad => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~4_combout\,
	combout => \eth_top_i|net_proc_i|Selector37~0_combout\);

-- Location: FF_X24_Y28_N17
\eth_top_i|net_proc_i|rx_ram_cnt_r[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Selector37~0_combout\,
	ena => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|rx_ram_cnt_r\(8));

-- Location: LCCOMB_X24_Y28_N4
\eth_top_i|net_proc_i|Selector39~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector39~0_combout\ = (\eth_top_i|net_proc_i|rx_ram_cnt_r[2]~4_combout\ & (((\eth_top_i|eth_rx_ram_i|data_out_r\(6))))) # (!\eth_top_i|net_proc_i|rx_ram_cnt_r[2]~4_combout\ & (\eth_top_i|net_proc_i|rx_ram_cnt_r[2]~3_combout\ & 
-- (\eth_top_i|net_proc_i|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~3_combout\,
	datab => \eth_top_i|net_proc_i|Add0~12_combout\,
	datac => \eth_top_i|eth_rx_ram_i|data_out_r\(6),
	datad => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~4_combout\,
	combout => \eth_top_i|net_proc_i|Selector39~0_combout\);

-- Location: FF_X24_Y28_N5
\eth_top_i|net_proc_i|rx_ram_cnt_r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Selector39~0_combout\,
	ena => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|rx_ram_cnt_r\(6));

-- Location: LCCOMB_X24_Y28_N30
\eth_top_i|net_proc_i|Selector38~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector38~0_combout\ = (\eth_top_i|net_proc_i|rx_ram_cnt_r[2]~4_combout\ & (((\eth_top_i|eth_rx_ram_i|data_out_r\(7))))) # (!\eth_top_i|net_proc_i|rx_ram_cnt_r[2]~4_combout\ & (\eth_top_i|net_proc_i|rx_ram_cnt_r[2]~3_combout\ & 
-- (\eth_top_i|net_proc_i|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~3_combout\,
	datab => \eth_top_i|net_proc_i|Add0~14_combout\,
	datac => \eth_top_i|eth_rx_ram_i|data_out_r\(7),
	datad => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~4_combout\,
	combout => \eth_top_i|net_proc_i|Selector38~0_combout\);

-- Location: FF_X24_Y28_N31
\eth_top_i|net_proc_i|rx_ram_cnt_r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Selector38~0_combout\,
	ena => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|rx_ram_cnt_r\(7));

-- Location: LCCOMB_X24_Y28_N20
\eth_top_i|net_proc_i|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Equal1~1_combout\ = (!\eth_top_i|net_proc_i|rx_ram_cnt_r\(9) & (!\eth_top_i|net_proc_i|rx_ram_cnt_r\(8) & (!\eth_top_i|net_proc_i|rx_ram_cnt_r\(6) & !\eth_top_i|net_proc_i|rx_ram_cnt_r\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|rx_ram_cnt_r\(9),
	datab => \eth_top_i|net_proc_i|rx_ram_cnt_r\(8),
	datac => \eth_top_i|net_proc_i|rx_ram_cnt_r\(6),
	datad => \eth_top_i|net_proc_i|rx_ram_cnt_r\(7),
	combout => \eth_top_i|net_proc_i|Equal1~1_combout\);

-- Location: LCCOMB_X24_Y28_N2
\eth_top_i|net_proc_i|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Equal1~2_combout\ = (\eth_top_i|net_proc_i|Equal1~0_combout\ & (\eth_top_i|net_proc_i|Equal1~1_combout\ & (!\eth_top_i|net_proc_i|rx_ram_cnt_r\(0) & \eth_top_i|net_proc_i|rx_ram_cnt_r\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|Equal1~0_combout\,
	datab => \eth_top_i|net_proc_i|Equal1~1_combout\,
	datac => \eth_top_i|net_proc_i|rx_ram_cnt_r\(0),
	datad => \eth_top_i|net_proc_i|rx_ram_cnt_r\(1),
	combout => \eth_top_i|net_proc_i|Equal1~2_combout\);

-- Location: FF_X24_Y28_N3
\eth_top_i|net_proc_i|rx_ram_data_last_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|rx_ram_data_last_r~q\);

-- Location: LCCOMB_X23_Y27_N16
\eth_top_i|net_proc_i|rx_ram_cnt_r[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~2_combout\ = (!\eth_top_i|net_proc_i|rx_ram_data_last_r~q\) # (!\eth_top_i|net_proc_i|np_fsm.npf_copyDestMAC~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|net_proc_i|np_fsm.npf_copyDestMAC~q\,
	datad => \eth_top_i|net_proc_i|rx_ram_data_last_r~q\,
	combout => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~2_combout\);

-- Location: LCCOMB_X23_Y27_N0
\eth_top_i|net_proc_i|Selector14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector14~0_combout\ = (\eth_top_i|net_proc_i|rx_ram_cnt_r[2]~4_combout\) # ((\eth_top_i|net_proc_i|Selector11~0_combout\ & ((\eth_top_i|net_proc_i|Add1~0_combout\))) # (!\eth_top_i|net_proc_i|Selector11~0_combout\ & 
-- (\eth_top_i|net_proc_i|rx_ram_cnt_r[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|Selector11~0_combout\,
	datab => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~2_combout\,
	datac => \eth_top_i|net_proc_i|Add1~0_combout\,
	datad => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~4_combout\,
	combout => \eth_top_i|net_proc_i|Selector14~0_combout\);

-- Location: FF_X23_Y27_N1
\eth_top_i|net_proc_i|rx_ram_addr_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|rx_ram_addr_r\(0));

-- Location: LCCOMB_X23_Y27_N8
\eth_top_i|eth_rx_ram_i|addr_out_r[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_ram_i|addr_out_r[0]~feeder_combout\ = \eth_top_i|net_proc_i|rx_ram_addr_r\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|rx_ram_addr_r\(0),
	combout => \eth_top_i|eth_rx_ram_i|addr_out_r[0]~feeder_combout\);

-- Location: FF_X23_Y27_N9
\eth_top_i|eth_rx_ram_i|addr_out_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|eth_rx_ram_i|addr_out_r[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_ram_i|addr_out_r\(0));

-- Location: FF_X25_Y27_N1
\eth_top_i|eth_rx_ram_i|data_out_r[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|q_b\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_ram_i|data_out_r\(8));

-- Location: FF_X27_Y27_N23
\eth_top_i|net_proc_i|info_words[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \eth_top_i|eth_rx_ram_i|data_out_r\(8),
	sload => VCC,
	ena => \eth_top_i|net_proc_i|Mux66~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|info_words[0][8]~q\);

-- Location: LCCOMB_X29_Y27_N12
\eth_top_i|net_proc_i|Add2~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add2~15_combout\ = (\eth_top_i|net_proc_i|tx_ram_cnt_r\(6) & ((GND) # (!\eth_top_i|net_proc_i|Add2~13\))) # (!\eth_top_i|net_proc_i|tx_ram_cnt_r\(6) & (\eth_top_i|net_proc_i|Add2~13\ $ (GND)))
-- \eth_top_i|net_proc_i|Add2~16\ = CARRY((\eth_top_i|net_proc_i|tx_ram_cnt_r\(6)) # (!\eth_top_i|net_proc_i|Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|tx_ram_cnt_r\(6),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|Add2~13\,
	combout => \eth_top_i|net_proc_i|Add2~15_combout\,
	cout => \eth_top_i|net_proc_i|Add2~16\);

-- Location: LCCOMB_X28_Y27_N28
\eth_top_i|net_proc_i|Add2~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add2~17_combout\ = (!\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~12_combout\ & ((\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~9_combout\ & ((\eth_top_i|net_proc_i|Add2~15_combout\))) # (!\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~9_combout\ & 
-- (\eth_top_i|net_proc_i|info_words[0][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~12_combout\,
	datab => \eth_top_i|net_proc_i|info_words[0][6]~q\,
	datac => \eth_top_i|net_proc_i|Add2~15_combout\,
	datad => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~9_combout\,
	combout => \eth_top_i|net_proc_i|Add2~17_combout\);

-- Location: FF_X28_Y27_N29
\eth_top_i|net_proc_i|tx_ram_cnt_r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Add2~17_combout\,
	ena => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|tx_ram_cnt_r\(6));

-- Location: LCCOMB_X29_Y27_N14
\eth_top_i|net_proc_i|Add2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add2~18_combout\ = (\eth_top_i|net_proc_i|tx_ram_cnt_r\(7) & (\eth_top_i|net_proc_i|Add2~16\ & VCC)) # (!\eth_top_i|net_proc_i|tx_ram_cnt_r\(7) & (!\eth_top_i|net_proc_i|Add2~16\))
-- \eth_top_i|net_proc_i|Add2~19\ = CARRY((!\eth_top_i|net_proc_i|tx_ram_cnt_r\(7) & !\eth_top_i|net_proc_i|Add2~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|tx_ram_cnt_r\(7),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|Add2~16\,
	combout => \eth_top_i|net_proc_i|Add2~18_combout\,
	cout => \eth_top_i|net_proc_i|Add2~19\);

-- Location: LCCOMB_X28_Y27_N24
\eth_top_i|net_proc_i|Add2~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add2~23_combout\ = (!\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~12_combout\ & ((\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~9_combout\ & ((\eth_top_i|net_proc_i|Add2~21_combout\))) # (!\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~9_combout\ & 
-- (\eth_top_i|net_proc_i|info_words[0][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~9_combout\,
	datab => \eth_top_i|net_proc_i|info_words[0][8]~q\,
	datac => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~12_combout\,
	datad => \eth_top_i|net_proc_i|Add2~21_combout\,
	combout => \eth_top_i|net_proc_i|Add2~23_combout\);

-- Location: FF_X28_Y27_N25
\eth_top_i|net_proc_i|tx_ram_cnt_r[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Add2~23_combout\,
	ena => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|tx_ram_cnt_r\(8));

-- Location: FF_X27_Y27_N21
\eth_top_i|net_proc_i|info_words[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \eth_top_i|eth_rx_ram_i|data_out_r\(7),
	sload => VCC,
	ena => \eth_top_i|net_proc_i|Mux66~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|info_words[0][7]~q\);

-- Location: LCCOMB_X28_Y27_N14
\eth_top_i|net_proc_i|Add2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add2~20_combout\ = (!\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~12_combout\ & ((\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~9_combout\ & (\eth_top_i|net_proc_i|Add2~18_combout\)) # (!\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~9_combout\ & 
-- ((\eth_top_i|net_proc_i|info_words[0][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~9_combout\,
	datab => \eth_top_i|net_proc_i|Add2~18_combout\,
	datac => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~12_combout\,
	datad => \eth_top_i|net_proc_i|info_words[0][7]~q\,
	combout => \eth_top_i|net_proc_i|Add2~20_combout\);

-- Location: FF_X28_Y27_N15
\eth_top_i|net_proc_i|tx_ram_cnt_r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Add2~20_combout\,
	ena => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|tx_ram_cnt_r\(7));

-- Location: LCCOMB_X28_Y27_N20
\eth_top_i|net_proc_i|Equal3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Equal3~1_combout\ = (!\eth_top_i|net_proc_i|tx_ram_cnt_r\(9) & (!\eth_top_i|net_proc_i|tx_ram_cnt_r\(8) & (!\eth_top_i|net_proc_i|tx_ram_cnt_r\(7) & !\eth_top_i|net_proc_i|tx_ram_cnt_r\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|tx_ram_cnt_r\(9),
	datab => \eth_top_i|net_proc_i|tx_ram_cnt_r\(8),
	datac => \eth_top_i|net_proc_i|tx_ram_cnt_r\(7),
	datad => \eth_top_i|net_proc_i|tx_ram_cnt_r\(6),
	combout => \eth_top_i|net_proc_i|Equal3~1_combout\);

-- Location: LCCOMB_X24_Y27_N14
\eth_top_i|net_proc_i|Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Equal4~0_combout\ = (\eth_top_i|net_proc_i|tx_ram_cnt_r\(1) & (\eth_top_i|net_proc_i|Equal3~1_combout\ & (\eth_top_i|net_proc_i|Equal3~0_combout\ & !\eth_top_i|net_proc_i|tx_ram_cnt_r\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|tx_ram_cnt_r\(1),
	datab => \eth_top_i|net_proc_i|Equal3~1_combout\,
	datac => \eth_top_i|net_proc_i|Equal3~0_combout\,
	datad => \eth_top_i|net_proc_i|tx_ram_cnt_r\(0),
	combout => \eth_top_i|net_proc_i|Equal4~0_combout\);

-- Location: FF_X24_Y27_N15
\eth_top_i|net_proc_i|tx_ram_data_last_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|tx_ram_data_last_r~q\);

-- Location: LCCOMB_X25_Y26_N16
\eth_top_i|net_proc_i|Selector67~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector67~0_combout\ = ((\eth_top_i|net_proc_i|np_fsm.npf_caseComID~q\ & ((!\eth_top_i|net_proc_i|com_id_high_bits_zero_r~q\) # (!\eth_top_i|net_proc_i|info_words[3][1]~q\)))) # (!\eth_top_i|net_proc_i|Selector66~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|Selector66~1_combout\,
	datab => \eth_top_i|net_proc_i|info_words[3][1]~q\,
	datac => \eth_top_i|net_proc_i|np_fsm.npf_caseComID~q\,
	datad => \eth_top_i|net_proc_i|com_id_high_bits_zero_r~q\,
	combout => \eth_top_i|net_proc_i|Selector67~0_combout\);

-- Location: LCCOMB_X26_Y25_N18
\eth_top_i|net_proc_i|Selector67~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector67~1_combout\ = (\eth_top_i|net_proc_i|process_0~7_combout\ & (\eth_top_i|net_proc_i|tx_ram_data_last_r~q\ & ((\eth_top_i|net_proc_i|Selector67~0_combout\)))) # (!\eth_top_i|net_proc_i|process_0~7_combout\ & 
-- ((\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~6_combout\) # ((\eth_top_i|net_proc_i|tx_ram_data_last_r~q\ & \eth_top_i|net_proc_i|Selector67~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|process_0~7_combout\,
	datab => \eth_top_i|net_proc_i|tx_ram_data_last_r~q\,
	datac => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~6_combout\,
	datad => \eth_top_i|net_proc_i|Selector67~0_combout\,
	combout => \eth_top_i|net_proc_i|Selector67~1_combout\);

-- Location: FF_X26_Y25_N19
\eth_top_i|net_proc_i|rx_current_bank_proc_done_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Selector67~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|rx_current_bank_proc_done_r~q\);

-- Location: LCCOMB_X26_Y25_N6
\eth_top_i|net_proc_i|rx_bank_info_clrn_r~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|rx_bank_info_clrn_r~1_combout\ = (\eth_top_i|net_proc_i|rx_current_bank_r~q\) # (!\eth_top_i|net_proc_i|rx_current_bank_proc_done_r~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|rx_current_bank_proc_done_r~q\,
	datad => \eth_top_i|net_proc_i|rx_current_bank_r~q\,
	combout => \eth_top_i|net_proc_i|rx_bank_info_clrn_r~1_combout\);

-- Location: FF_X26_Y25_N7
\eth_top_i|net_proc_i|rx_bank_info_clrn_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|rx_bank_info_clrn_r~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|rx_bank_info_clrn_r\(0));

-- Location: FF_X49_Y17_N17
\eth_top_i|eth_rx_i|bank_info_r[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_rx_i|bank_info_r[0][10]~1_combout\,
	clrn => \eth_top_i|net_proc_i|rx_bank_info_clrn_r\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_i|bank_info_r[0][10]~q\);

-- Location: LCCOMB_X49_Y17_N0
\eth_top_i|eth_rx_i|Selector3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|Selector3~1_combout\ = (\eth_top_i|eth_pins_i|rx_dv_r~q\ & ((\eth_top_i|eth_rx_i|current_bank_r~q\ & (!\eth_top_i|eth_rx_i|bank_info_r[1][10]~q\)) # (!\eth_top_i|eth_rx_i|current_bank_r~q\ & 
-- ((!\eth_top_i|eth_rx_i|bank_info_r[0][10]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_rx_i|bank_info_r[1][10]~q\,
	datab => \eth_top_i|eth_rx_i|bank_info_r[0][10]~q\,
	datac => \eth_top_i|eth_rx_i|current_bank_r~q\,
	datad => \eth_top_i|eth_pins_i|rx_dv_r~q\,
	combout => \eth_top_i|eth_rx_i|Selector3~1_combout\);

-- Location: LCCOMB_X49_Y17_N8
\eth_top_i|eth_rx_i|Selector3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|Selector3~3_combout\ = ((\eth_top_i|eth_rx_i|Selector3~1_combout\ & !\eth_top_i|eth_rx_i|eth_rx_sm.st_idle~q\)) # (!\eth_top_i|eth_rx_i|Selector3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|eth_rx_i|Selector3~1_combout\,
	datac => \eth_top_i|eth_rx_i|Selector3~2_combout\,
	datad => \eth_top_i|eth_rx_i|eth_rx_sm.st_idle~q\,
	combout => \eth_top_i|eth_rx_i|Selector3~3_combout\);

-- Location: LCCOMB_X49_Y17_N18
\eth_top_i|eth_rx_i|Selector3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_i|Selector3~4_combout\ = (\eth_top_i|eth_rx_i|Selector3~0_combout\) # ((!\eth_top_i|eth_rx_i|Selector3~3_combout\ & (\eth_top_i|eth_rx_i|eth_rx_sm.st_rx_data~q\ & \eth_top_i|eth_pins_i|rx_dv_r~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_rx_i|Selector3~0_combout\,
	datab => \eth_top_i|eth_rx_i|Selector3~3_combout\,
	datac => \eth_top_i|eth_rx_i|eth_rx_sm.st_rx_data~q\,
	datad => \eth_top_i|eth_pins_i|rx_dv_r~q\,
	combout => \eth_top_i|eth_rx_i|Selector3~4_combout\);

-- Location: FF_X49_Y17_N19
\eth_top_i|eth_rx_i|eth_rx_sm.st_rx_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_rx_i|Selector3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_i|eth_rx_sm.st_rx_data~q\);

-- Location: LCCOMB_X23_Y19_N24
\eth_top_i|eth_rx_ram_i|we_r~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_rx_ram_i|we_r~feeder_combout\ = \eth_top_i|eth_rx_i|eth_rx_sm.st_rx_data~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|eth_rx_i|eth_rx_sm.st_rx_data~q\,
	combout => \eth_top_i|eth_rx_ram_i|we_r~feeder_combout\);

-- Location: FF_X23_Y19_N25
\eth_top_i|eth_rx_ram_i|we_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_RX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_rx_ram_i|we_r~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_ram_i|we_r~q\);

-- Location: FF_X26_Y28_N21
\eth_top_i|eth_rx_ram_i|data_out_r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|q_b\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_ram_i|data_out_r\(5));

-- Location: FF_X27_Y27_N17
\eth_top_i|net_proc_i|info_words[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \eth_top_i|eth_rx_ram_i|data_out_r\(5),
	sload => VCC,
	ena => \eth_top_i|net_proc_i|Mux66~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|info_words[0][5]~q\);

-- Location: LCCOMB_X27_Y27_N6
\eth_top_i|net_proc_i|Add7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add7~0_combout\ = \eth_top_i|net_proc_i|info_words[0][0]~q\ $ (VCC)
-- \eth_top_i|net_proc_i|Add7~1\ = CARRY(\eth_top_i|net_proc_i|info_words[0][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|info_words[0][0]~q\,
	datad => VCC,
	combout => \eth_top_i|net_proc_i|Add7~0_combout\,
	cout => \eth_top_i|net_proc_i|Add7~1\);

-- Location: LCCOMB_X27_Y27_N8
\eth_top_i|net_proc_i|Add7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add7~2_combout\ = (\eth_top_i|net_proc_i|info_words[0][1]~q\ & (\eth_top_i|net_proc_i|Add7~1\ & VCC)) # (!\eth_top_i|net_proc_i|info_words[0][1]~q\ & (!\eth_top_i|net_proc_i|Add7~1\))
-- \eth_top_i|net_proc_i|Add7~3\ = CARRY((!\eth_top_i|net_proc_i|info_words[0][1]~q\ & !\eth_top_i|net_proc_i|Add7~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|info_words[0][1]~q\,
	datad => VCC,
	cin => \eth_top_i|net_proc_i|Add7~1\,
	combout => \eth_top_i|net_proc_i|Add7~2_combout\,
	cout => \eth_top_i|net_proc_i|Add7~3\);

-- Location: LCCOMB_X27_Y27_N12
\eth_top_i|net_proc_i|Add7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add7~6_combout\ = (\eth_top_i|net_proc_i|info_words[0][3]~q\ & (\eth_top_i|net_proc_i|Add7~5\ & VCC)) # (!\eth_top_i|net_proc_i|info_words[0][3]~q\ & (!\eth_top_i|net_proc_i|Add7~5\))
-- \eth_top_i|net_proc_i|Add7~7\ = CARRY((!\eth_top_i|net_proc_i|info_words[0][3]~q\ & !\eth_top_i|net_proc_i|Add7~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|info_words[0][3]~q\,
	datad => VCC,
	cin => \eth_top_i|net_proc_i|Add7~5\,
	combout => \eth_top_i|net_proc_i|Add7~6_combout\,
	cout => \eth_top_i|net_proc_i|Add7~7\);

-- Location: LCCOMB_X27_Y27_N16
\eth_top_i|net_proc_i|Add7~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add7~10_combout\ = (\eth_top_i|net_proc_i|info_words[0][5]~q\ & (!\eth_top_i|net_proc_i|Add7~9\)) # (!\eth_top_i|net_proc_i|info_words[0][5]~q\ & ((\eth_top_i|net_proc_i|Add7~9\) # (GND)))
-- \eth_top_i|net_proc_i|Add7~11\ = CARRY((!\eth_top_i|net_proc_i|Add7~9\) # (!\eth_top_i|net_proc_i|info_words[0][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|info_words[0][5]~q\,
	datad => VCC,
	cin => \eth_top_i|net_proc_i|Add7~9\,
	combout => \eth_top_i|net_proc_i|Add7~10_combout\,
	cout => \eth_top_i|net_proc_i|Add7~11\);

-- Location: LCCOMB_X24_Y27_N30
\eth_top_i|net_proc_i|Selector27~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector27~0_combout\ = (!\eth_top_i|net_proc_i|info_words[3][0]~q\ & (\eth_top_i|net_proc_i|info_words[3][1]~q\ & (\eth_top_i|net_proc_i|np_fsm.npf_caseComID~q\ & \eth_top_i|net_proc_i|tx_ram_addr_r[5]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|info_words[3][0]~q\,
	datab => \eth_top_i|net_proc_i|info_words[3][1]~q\,
	datac => \eth_top_i|net_proc_i|np_fsm.npf_caseComID~q\,
	datad => \eth_top_i|net_proc_i|tx_ram_addr_r[5]~2_combout\,
	combout => \eth_top_i|net_proc_i|Selector27~0_combout\);

-- Location: FF_X24_Y27_N31
\eth_top_i|net_proc_i|np_fsm.npf_read_mem1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Selector27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|np_fsm.npf_read_mem1~q\);

-- Location: LCCOMB_X27_Y26_N24
\eth_top_i|net_proc_i|Add7~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add7~12_combout\ = (\eth_top_i|net_proc_i|Add7~10_combout\ & \eth_top_i|net_proc_i|np_fsm.npf_read_mem1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|Add7~10_combout\,
	datad => \eth_top_i|net_proc_i|np_fsm.npf_read_mem1~q\,
	combout => \eth_top_i|net_proc_i|Add7~12_combout\);

-- Location: LCCOMB_X27_Y26_N4
\eth_top_i|net_proc_i|Add7~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add7~13_combout\ = (\eth_top_i|net_proc_i|np_fsm.npf_caseComID~q\) # (\eth_top_i|net_proc_i|np_fsm.npf_read_mem1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|net_proc_i|np_fsm.npf_caseComID~q\,
	datad => \eth_top_i|net_proc_i|np_fsm.npf_read_mem1~q\,
	combout => \eth_top_i|net_proc_i|Add7~13_combout\);

-- Location: FF_X27_Y26_N25
\eth_top_i|net_proc_i|tx_len_r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Add7~12_combout\,
	ena => \eth_top_i|net_proc_i|Add7~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|tx_len_r\(5));

-- Location: LCCOMB_X27_Y27_N18
\eth_top_i|net_proc_i|Add7~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add7~18_combout\ = (\eth_top_i|net_proc_i|info_words[0][6]~q\ & (\eth_top_i|net_proc_i|Add7~11\ $ (GND))) # (!\eth_top_i|net_proc_i|info_words[0][6]~q\ & (!\eth_top_i|net_proc_i|Add7~11\ & VCC))
-- \eth_top_i|net_proc_i|Add7~19\ = CARRY((\eth_top_i|net_proc_i|info_words[0][6]~q\ & !\eth_top_i|net_proc_i|Add7~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|info_words[0][6]~q\,
	datad => VCC,
	cin => \eth_top_i|net_proc_i|Add7~11\,
	combout => \eth_top_i|net_proc_i|Add7~18_combout\,
	cout => \eth_top_i|net_proc_i|Add7~19\);

-- Location: LCCOMB_X27_Y27_N20
\eth_top_i|net_proc_i|Add7~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add7~21_combout\ = (\eth_top_i|net_proc_i|info_words[0][7]~q\ & (!\eth_top_i|net_proc_i|Add7~19\)) # (!\eth_top_i|net_proc_i|info_words[0][7]~q\ & ((\eth_top_i|net_proc_i|Add7~19\) # (GND)))
-- \eth_top_i|net_proc_i|Add7~22\ = CARRY((!\eth_top_i|net_proc_i|Add7~19\) # (!\eth_top_i|net_proc_i|info_words[0][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|info_words[0][7]~q\,
	datad => VCC,
	cin => \eth_top_i|net_proc_i|Add7~19\,
	combout => \eth_top_i|net_proc_i|Add7~21_combout\,
	cout => \eth_top_i|net_proc_i|Add7~22\);

-- Location: LCCOMB_X27_Y27_N22
\eth_top_i|net_proc_i|Add7~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add7~24_combout\ = (\eth_top_i|net_proc_i|info_words[0][8]~q\ & (\eth_top_i|net_proc_i|Add7~22\ $ (GND))) # (!\eth_top_i|net_proc_i|info_words[0][8]~q\ & (!\eth_top_i|net_proc_i|Add7~22\ & VCC))
-- \eth_top_i|net_proc_i|Add7~25\ = CARRY((\eth_top_i|net_proc_i|info_words[0][8]~q\ & !\eth_top_i|net_proc_i|Add7~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|info_words[0][8]~q\,
	datad => VCC,
	cin => \eth_top_i|net_proc_i|Add7~22\,
	combout => \eth_top_i|net_proc_i|Add7~24_combout\,
	cout => \eth_top_i|net_proc_i|Add7~25\);

-- Location: LCCOMB_X27_Y26_N6
\eth_top_i|net_proc_i|Add7~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add7~26_combout\ = (\eth_top_i|net_proc_i|Add7~24_combout\ & \eth_top_i|net_proc_i|np_fsm.npf_read_mem1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|net_proc_i|Add7~24_combout\,
	datad => \eth_top_i|net_proc_i|np_fsm.npf_read_mem1~q\,
	combout => \eth_top_i|net_proc_i|Add7~26_combout\);

-- Location: FF_X27_Y26_N7
\eth_top_i|net_proc_i|tx_len_r[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Add7~26_combout\,
	ena => \eth_top_i|net_proc_i|Add7~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|tx_len_r\(8));

-- Location: LCCOMB_X27_Y26_N2
\eth_top_i|net_proc_i|Add7~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add7~20_combout\ = (\eth_top_i|net_proc_i|np_fsm.npf_read_mem1~q\ & \eth_top_i|net_proc_i|Add7~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|np_fsm.npf_read_mem1~q\,
	datad => \eth_top_i|net_proc_i|Add7~18_combout\,
	combout => \eth_top_i|net_proc_i|Add7~20_combout\);

-- Location: FF_X27_Y26_N3
\eth_top_i|net_proc_i|tx_len_r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Add7~20_combout\,
	ena => \eth_top_i|net_proc_i|Add7~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|tx_len_r\(6));

-- Location: LCCOMB_X27_Y27_N24
\eth_top_i|net_proc_i|Add7~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add7~27_combout\ = \eth_top_i|net_proc_i|Add7~25\ $ (\eth_top_i|net_proc_i|info_words[0][9]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|net_proc_i|info_words[0][9]~q\,
	cin => \eth_top_i|net_proc_i|Add7~25\,
	combout => \eth_top_i|net_proc_i|Add7~27_combout\);

-- Location: LCCOMB_X27_Y26_N8
\eth_top_i|net_proc_i|Add7~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add7~29_combout\ = (\eth_top_i|net_proc_i|Add7~27_combout\ & \eth_top_i|net_proc_i|np_fsm.npf_read_mem1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|net_proc_i|Add7~27_combout\,
	datad => \eth_top_i|net_proc_i|np_fsm.npf_read_mem1~q\,
	combout => \eth_top_i|net_proc_i|Add7~29_combout\);

-- Location: FF_X27_Y26_N9
\eth_top_i|net_proc_i|tx_len_r[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Add7~29_combout\,
	ena => \eth_top_i|net_proc_i|Add7~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|tx_len_r\(9));

-- Location: LCCOMB_X30_Y26_N6
\eth_top_i|net_proc_i|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|LessThan0~1_combout\ = (!\eth_top_i|net_proc_i|tx_len_r\(7) & (!\eth_top_i|net_proc_i|tx_len_r\(8) & (!\eth_top_i|net_proc_i|tx_len_r\(6) & !\eth_top_i|net_proc_i|tx_len_r\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|tx_len_r\(7),
	datab => \eth_top_i|net_proc_i|tx_len_r\(8),
	datac => \eth_top_i|net_proc_i|tx_len_r\(6),
	datad => \eth_top_i|net_proc_i|tx_len_r\(9),
	combout => \eth_top_i|net_proc_i|LessThan0~1_combout\);

-- Location: LCCOMB_X30_Y26_N14
\eth_top_i|net_proc_i|tx_bank_info_len_v~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|tx_bank_info_len_v~5_combout\ = (\eth_top_i|net_proc_i|tx_len_r\(5)) # (\eth_top_i|net_proc_i|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|net_proc_i|tx_len_r\(5),
	datad => \eth_top_i|net_proc_i|LessThan0~1_combout\,
	combout => \eth_top_i|net_proc_i|tx_bank_info_len_v~5_combout\);

-- Location: LCCOMB_X30_Y26_N24
\eth_top_i|net_proc_i|tx_bank_info_r[1][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|tx_bank_info_r[1][5]~feeder_combout\ = \eth_top_i|net_proc_i|tx_bank_info_len_v~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|net_proc_i|tx_bank_info_len_v~5_combout\,
	combout => \eth_top_i|net_proc_i|tx_bank_info_r[1][5]~feeder_combout\);

-- Location: LCCOMB_X31_Y27_N18
\eth_top_i|net_proc_i|tx_bank_info_r[1][10]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|tx_bank_info_r[1][10]~1_combout\ = (\eth_top_i|net_proc_i|tx_current_bank_r~q\ & \eth_top_i|net_proc_i|tx_init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|net_proc_i|tx_current_bank_r~q\,
	datad => \eth_top_i|net_proc_i|tx_init~q\,
	combout => \eth_top_i|net_proc_i|tx_bank_info_r[1][10]~1_combout\);

-- Location: FF_X30_Y26_N25
\eth_top_i|net_proc_i|tx_bank_info_r[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|tx_bank_info_r[1][5]~feeder_combout\,
	ena => \eth_top_i|net_proc_i|tx_bank_info_r[1][10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|tx_bank_info_r[1][5]~q\);

-- Location: FF_X30_Y26_N15
\eth_top_i|net_proc_i|tx_bank_info_r[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|tx_bank_info_len_v~5_combout\,
	ena => \eth_top_i|net_proc_i|tx_bank_info_r[0][10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|tx_bank_info_r[0][5]~q\);

-- Location: LCCOMB_X29_Y28_N28
\eth_top_i|eth_tx_i|nibble_cnt_r[7]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|nibble_cnt_r[7]~4_combout\ = (\eth_top_i|eth_tx_i|current_bank_r~q\ & (\eth_top_i|net_proc_i|tx_bank_info_r[1][5]~q\)) # (!\eth_top_i|eth_tx_i|current_bank_r~q\ & ((\eth_top_i|net_proc_i|tx_bank_info_r[0][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|current_bank_r~q\,
	datab => \eth_top_i|net_proc_i|tx_bank_info_r[1][5]~q\,
	datad => \eth_top_i|net_proc_i|tx_bank_info_r[0][5]~q\,
	combout => \eth_top_i|eth_tx_i|nibble_cnt_r[7]~4_combout\);

-- Location: LCCOMB_X27_Y26_N10
\eth_top_i|net_proc_i|Add7~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add7~14_combout\ = (\eth_top_i|net_proc_i|Add7~2_combout\) # (!\eth_top_i|net_proc_i|np_fsm.npf_read_mem1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|np_fsm.npf_read_mem1~q\,
	datad => \eth_top_i|net_proc_i|Add7~2_combout\,
	combout => \eth_top_i|net_proc_i|Add7~14_combout\);

-- Location: FF_X27_Y26_N11
\eth_top_i|net_proc_i|tx_len_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Add7~14_combout\,
	ena => \eth_top_i|net_proc_i|Add7~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|tx_len_r\(1));

-- Location: LCCOMB_X30_Y26_N20
\eth_top_i|net_proc_i|tx_bank_info_len_v~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|tx_bank_info_len_v~2_combout\ = (\eth_top_i|net_proc_i|tx_len_r\(1)) # ((\eth_top_i|net_proc_i|LessThan0~1_combout\ & ((\eth_top_i|net_proc_i|LessThan0~0_combout\) # (!\eth_top_i|net_proc_i|tx_len_r\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|LessThan0~0_combout\,
	datab => \eth_top_i|net_proc_i|tx_len_r\(1),
	datac => \eth_top_i|net_proc_i|tx_len_r\(5),
	datad => \eth_top_i|net_proc_i|LessThan0~1_combout\,
	combout => \eth_top_i|net_proc_i|tx_bank_info_len_v~2_combout\);

-- Location: FF_X30_Y26_N21
\eth_top_i|net_proc_i|tx_bank_info_r[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|tx_bank_info_len_v~2_combout\,
	ena => \eth_top_i|net_proc_i|tx_bank_info_r[1][10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|tx_bank_info_r[1][1]~q\);

-- Location: LCCOMB_X31_Y29_N28
\eth_top_i|eth_tx_i|current_bank_r~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|current_bank_r~0_combout\ = \eth_top_i|eth_tx_i|current_bank_r~q\ $ (((\eth_top_i|eth_tx_i|nibble_cnt_zero_r~q\ & \eth_top_i|eth_tx_i|eth_tx_sm.st_send_data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|nibble_cnt_zero_r~q\,
	datac => \eth_top_i|eth_tx_i|current_bank_r~q\,
	datad => \eth_top_i|eth_tx_i|eth_tx_sm.st_send_data~q\,
	combout => \eth_top_i|eth_tx_i|current_bank_r~0_combout\);

-- Location: FF_X31_Y29_N29
\eth_top_i|eth_tx_i|current_bank_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|current_bank_r~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|current_bank_r~q\);

-- Location: LCCOMB_X30_Y28_N24
\eth_top_i|eth_tx_i|nibble_cnt_r[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|nibble_cnt_r[3]~1_combout\ = (\eth_top_i|eth_tx_i|current_bank_r~q\ & ((\eth_top_i|net_proc_i|tx_bank_info_r[1][1]~q\))) # (!\eth_top_i|eth_tx_i|current_bank_r~q\ & (\eth_top_i|net_proc_i|tx_bank_info_r[0][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|tx_bank_info_r[0][1]~q\,
	datab => \eth_top_i|net_proc_i|tx_bank_info_r[1][1]~q\,
	datad => \eth_top_i|eth_tx_i|current_bank_r~q\,
	combout => \eth_top_i|eth_tx_i|nibble_cnt_r[3]~1_combout\);

-- Location: LCCOMB_X29_Y28_N26
\eth_top_i|eth_tx_i|Selector14~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|Selector14~2_combout\ = (\eth_top_i|eth_tx_i|Add1~6_combout\ & (((!\eth_top_i|eth_tx_i|eth_tx_sm.st_send_data~q\ & !\eth_top_i|eth_tx_i|eth_tx_sm.st_send_crc~q\)) # (!\eth_top_i|eth_tx_i|nibble_cnt_zero_r~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|Add1~6_combout\,
	datab => \eth_top_i|eth_tx_i|eth_tx_sm.st_send_data~q\,
	datac => \eth_top_i|eth_tx_i|nibble_cnt_zero_r~q\,
	datad => \eth_top_i|eth_tx_i|eth_tx_sm.st_send_crc~q\,
	combout => \eth_top_i|eth_tx_i|Selector14~2_combout\);

-- Location: FF_X30_Y28_N25
\eth_top_i|eth_tx_i|nibble_cnt_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|nibble_cnt_r[3]~1_combout\,
	asdata => \eth_top_i|eth_tx_i|Selector14~2_combout\,
	sload => \eth_top_i|eth_tx_i|ALT_INV_eth_tx_sm.st_reg_addr1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|nibble_cnt_r\(3));

-- Location: LCCOMB_X23_Y26_N16
\eth_top_i|net_proc_i|tx_len_r[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|tx_len_r[0]~0_combout\ = (\eth_top_i|net_proc_i|np_fsm.npf_caseComID~q\ & ((\eth_top_i|net_proc_i|rx_ram_cnt_r[2]~1_combout\))) # (!\eth_top_i|net_proc_i|np_fsm.npf_caseComID~q\ & (\eth_top_i|net_proc_i|tx_len_r\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|np_fsm.npf_caseComID~q\,
	datac => \eth_top_i|net_proc_i|tx_len_r\(0),
	datad => \eth_top_i|net_proc_i|rx_ram_cnt_r[2]~1_combout\,
	combout => \eth_top_i|net_proc_i|tx_len_r[0]~0_combout\);

-- Location: FF_X23_Y26_N17
\eth_top_i|net_proc_i|tx_len_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|tx_len_r[0]~0_combout\,
	asdata => \eth_top_i|net_proc_i|Add7~0_combout\,
	sload => \eth_top_i|net_proc_i|np_fsm.npf_read_mem1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|tx_len_r\(0));

-- Location: LCCOMB_X30_Y26_N16
\eth_top_i|net_proc_i|tx_bank_info_len_v~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|tx_bank_info_len_v~0_combout\ = (\eth_top_i|net_proc_i|tx_len_r\(0) & (((!\eth_top_i|net_proc_i|LessThan0~0_combout\ & \eth_top_i|net_proc_i|tx_len_r\(5))) # (!\eth_top_i|net_proc_i|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|LessThan0~0_combout\,
	datab => \eth_top_i|net_proc_i|tx_len_r\(5),
	datac => \eth_top_i|net_proc_i|tx_len_r\(0),
	datad => \eth_top_i|net_proc_i|LessThan0~1_combout\,
	combout => \eth_top_i|net_proc_i|tx_bank_info_len_v~0_combout\);

-- Location: LCCOMB_X30_Y26_N18
\eth_top_i|net_proc_i|tx_bank_info_r[1][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|tx_bank_info_r[1][0]~feeder_combout\ = \eth_top_i|net_proc_i|tx_bank_info_len_v~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|net_proc_i|tx_bank_info_len_v~0_combout\,
	combout => \eth_top_i|net_proc_i|tx_bank_info_r[1][0]~feeder_combout\);

-- Location: FF_X30_Y26_N19
\eth_top_i|net_proc_i|tx_bank_info_r[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|tx_bank_info_r[1][0]~feeder_combout\,
	ena => \eth_top_i|net_proc_i|tx_bank_info_r[1][10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|tx_bank_info_r[1][0]~q\);

-- Location: LCCOMB_X31_Y29_N24
\eth_top_i|eth_tx_i|nibble_cnt_r[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|nibble_cnt_r[2]~0_combout\ = (\eth_top_i|eth_tx_i|current_bank_r~q\ & ((\eth_top_i|net_proc_i|tx_bank_info_r[1][0]~q\))) # (!\eth_top_i|eth_tx_i|current_bank_r~q\ & (\eth_top_i|net_proc_i|tx_bank_info_r[0][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|tx_bank_info_r[0][0]~q\,
	datab => \eth_top_i|net_proc_i|tx_bank_info_r[1][0]~q\,
	datad => \eth_top_i|eth_tx_i|current_bank_r~q\,
	combout => \eth_top_i|eth_tx_i|nibble_cnt_r[2]~0_combout\);

-- Location: LCCOMB_X30_Y28_N0
\eth_top_i|eth_tx_i|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|Add1~0_combout\ = \eth_top_i|eth_tx_i|nibble_cnt_r\(0) $ (VCC)
-- \eth_top_i|eth_tx_i|Add1~1\ = CARRY(\eth_top_i|eth_tx_i|nibble_cnt_r\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|nibble_cnt_r\(0),
	datad => VCC,
	combout => \eth_top_i|eth_tx_i|Add1~0_combout\,
	cout => \eth_top_i|eth_tx_i|Add1~1\);

-- Location: LCCOMB_X30_Y28_N2
\eth_top_i|eth_tx_i|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|Add1~2_combout\ = (\eth_top_i|eth_tx_i|nibble_cnt_r\(1) & (\eth_top_i|eth_tx_i|Add1~1\ & VCC)) # (!\eth_top_i|eth_tx_i|nibble_cnt_r\(1) & (!\eth_top_i|eth_tx_i|Add1~1\))
-- \eth_top_i|eth_tx_i|Add1~3\ = CARRY((!\eth_top_i|eth_tx_i|nibble_cnt_r\(1) & !\eth_top_i|eth_tx_i|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|nibble_cnt_r\(1),
	datad => VCC,
	cin => \eth_top_i|eth_tx_i|Add1~1\,
	combout => \eth_top_i|eth_tx_i|Add1~2_combout\,
	cout => \eth_top_i|eth_tx_i|Add1~3\);

-- Location: LCCOMB_X30_Y28_N4
\eth_top_i|eth_tx_i|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|Add1~4_combout\ = (\eth_top_i|eth_tx_i|nibble_cnt_r\(2) & ((GND) # (!\eth_top_i|eth_tx_i|Add1~3\))) # (!\eth_top_i|eth_tx_i|nibble_cnt_r\(2) & (\eth_top_i|eth_tx_i|Add1~3\ $ (GND)))
-- \eth_top_i|eth_tx_i|Add1~5\ = CARRY((\eth_top_i|eth_tx_i|nibble_cnt_r\(2)) # (!\eth_top_i|eth_tx_i|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|eth_tx_i|nibble_cnt_r\(2),
	datad => VCC,
	cin => \eth_top_i|eth_tx_i|Add1~3\,
	combout => \eth_top_i|eth_tx_i|Add1~4_combout\,
	cout => \eth_top_i|eth_tx_i|Add1~5\);

-- Location: LCCOMB_X31_Y29_N4
\eth_top_i|eth_tx_i|Selector15~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|Selector15~2_combout\ = (\eth_top_i|eth_tx_i|Add1~4_combout\) # ((\eth_top_i|eth_tx_i|nibble_cnt_zero_r~q\ & ((\eth_top_i|eth_tx_i|eth_tx_sm.st_send_data~q\) # (\eth_top_i|eth_tx_i|eth_tx_sm.st_send_crc~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|nibble_cnt_zero_r~q\,
	datab => \eth_top_i|eth_tx_i|eth_tx_sm.st_send_data~q\,
	datac => \eth_top_i|eth_tx_i|eth_tx_sm.st_send_crc~q\,
	datad => \eth_top_i|eth_tx_i|Add1~4_combout\,
	combout => \eth_top_i|eth_tx_i|Selector15~2_combout\);

-- Location: FF_X31_Y29_N25
\eth_top_i|eth_tx_i|nibble_cnt_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|nibble_cnt_r[2]~0_combout\,
	asdata => \eth_top_i|eth_tx_i|Selector15~2_combout\,
	sload => \eth_top_i|eth_tx_i|ALT_INV_eth_tx_sm.st_reg_addr1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|nibble_cnt_r\(2));

-- Location: LCCOMB_X30_Y28_N10
\eth_top_i|eth_tx_i|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|Add1~10_combout\ = (\eth_top_i|eth_tx_i|nibble_cnt_r\(5) & (\eth_top_i|eth_tx_i|Add1~9\ & VCC)) # (!\eth_top_i|eth_tx_i|nibble_cnt_r\(5) & (!\eth_top_i|eth_tx_i|Add1~9\))
-- \eth_top_i|eth_tx_i|Add1~11\ = CARRY((!\eth_top_i|eth_tx_i|nibble_cnt_r\(5) & !\eth_top_i|eth_tx_i|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|nibble_cnt_r\(5),
	datad => VCC,
	cin => \eth_top_i|eth_tx_i|Add1~9\,
	combout => \eth_top_i|eth_tx_i|Add1~10_combout\,
	cout => \eth_top_i|eth_tx_i|Add1~11\);

-- Location: LCCOMB_X29_Y28_N8
\eth_top_i|eth_tx_i|Selector10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|Selector10~2_combout\ = (\eth_top_i|eth_tx_i|Add1~14_combout\ & (((!\eth_top_i|eth_tx_i|eth_tx_sm.st_send_data~q\ & !\eth_top_i|eth_tx_i|eth_tx_sm.st_send_crc~q\)) # (!\eth_top_i|eth_tx_i|nibble_cnt_zero_r~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|nibble_cnt_zero_r~q\,
	datab => \eth_top_i|eth_tx_i|eth_tx_sm.st_send_data~q\,
	datac => \eth_top_i|eth_tx_i|Add1~14_combout\,
	datad => \eth_top_i|eth_tx_i|eth_tx_sm.st_send_crc~q\,
	combout => \eth_top_i|eth_tx_i|Selector10~2_combout\);

-- Location: FF_X29_Y28_N29
\eth_top_i|eth_tx_i|nibble_cnt_r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|nibble_cnt_r[7]~4_combout\,
	asdata => \eth_top_i|eth_tx_i|Selector10~2_combout\,
	sload => \eth_top_i|eth_tx_i|ALT_INV_eth_tx_sm.st_reg_addr1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|nibble_cnt_r\(7));

-- Location: LCCOMB_X27_Y26_N30
\eth_top_i|net_proc_i|Add7~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add7~16_combout\ = (\eth_top_i|net_proc_i|Add7~6_combout\) # (!\eth_top_i|net_proc_i|np_fsm.npf_read_mem1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|net_proc_i|Add7~6_combout\,
	datad => \eth_top_i|net_proc_i|np_fsm.npf_read_mem1~q\,
	combout => \eth_top_i|net_proc_i|Add7~16_combout\);

-- Location: FF_X27_Y26_N31
\eth_top_i|net_proc_i|tx_len_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Add7~16_combout\,
	ena => \eth_top_i|net_proc_i|Add7~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|tx_len_r\(3));

-- Location: LCCOMB_X30_Y26_N0
\eth_top_i|net_proc_i|tx_bank_info_len_v~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|tx_bank_info_len_v~3_combout\ = (\eth_top_i|net_proc_i|tx_len_r\(3) & (((!\eth_top_i|net_proc_i|LessThan0~0_combout\ & \eth_top_i|net_proc_i|tx_len_r\(5))) # (!\eth_top_i|net_proc_i|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|LessThan0~0_combout\,
	datab => \eth_top_i|net_proc_i|tx_len_r\(3),
	datac => \eth_top_i|net_proc_i|tx_len_r\(5),
	datad => \eth_top_i|net_proc_i|LessThan0~1_combout\,
	combout => \eth_top_i|net_proc_i|tx_bank_info_len_v~3_combout\);

-- Location: LCCOMB_X30_Y26_N30
\eth_top_i|net_proc_i|tx_bank_info_r[0][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|tx_bank_info_r[0][3]~feeder_combout\ = \eth_top_i|net_proc_i|tx_bank_info_len_v~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|net_proc_i|tx_bank_info_len_v~3_combout\,
	combout => \eth_top_i|net_proc_i|tx_bank_info_r[0][3]~feeder_combout\);

-- Location: FF_X30_Y26_N31
\eth_top_i|net_proc_i|tx_bank_info_r[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|tx_bank_info_r[0][3]~feeder_combout\,
	ena => \eth_top_i|net_proc_i|tx_bank_info_r[0][10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|tx_bank_info_r[0][3]~q\);

-- Location: FF_X30_Y26_N1
\eth_top_i|net_proc_i|tx_bank_info_r[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|tx_bank_info_len_v~3_combout\,
	ena => \eth_top_i|net_proc_i|tx_bank_info_r[1][10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|tx_bank_info_r[1][3]~q\);

-- Location: LCCOMB_X29_Y28_N16
\eth_top_i|eth_tx_i|nibble_cnt_r[5]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|nibble_cnt_r[5]~2_combout\ = (\eth_top_i|eth_tx_i|current_bank_r~q\ & ((\eth_top_i|net_proc_i|tx_bank_info_r[1][3]~q\))) # (!\eth_top_i|eth_tx_i|current_bank_r~q\ & (\eth_top_i|net_proc_i|tx_bank_info_r[0][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|current_bank_r~q\,
	datab => \eth_top_i|net_proc_i|tx_bank_info_r[0][3]~q\,
	datad => \eth_top_i|net_proc_i|tx_bank_info_r[1][3]~q\,
	combout => \eth_top_i|eth_tx_i|nibble_cnt_r[5]~2_combout\);

-- Location: LCCOMB_X29_Y28_N4
\eth_top_i|eth_tx_i|Selector12~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|Selector12~2_combout\ = (\eth_top_i|eth_tx_i|Add1~10_combout\ & (((!\eth_top_i|eth_tx_i|eth_tx_sm.st_send_data~q\ & !\eth_top_i|eth_tx_i|eth_tx_sm.st_send_crc~q\)) # (!\eth_top_i|eth_tx_i|nibble_cnt_zero_r~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|nibble_cnt_zero_r~q\,
	datab => \eth_top_i|eth_tx_i|eth_tx_sm.st_send_data~q\,
	datac => \eth_top_i|eth_tx_i|Add1~10_combout\,
	datad => \eth_top_i|eth_tx_i|eth_tx_sm.st_send_crc~q\,
	combout => \eth_top_i|eth_tx_i|Selector12~2_combout\);

-- Location: FF_X29_Y28_N17
\eth_top_i|eth_tx_i|nibble_cnt_r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|nibble_cnt_r[5]~2_combout\,
	asdata => \eth_top_i|eth_tx_i|Selector12~2_combout\,
	sload => \eth_top_i|eth_tx_i|ALT_INV_eth_tx_sm.st_reg_addr1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|nibble_cnt_r\(5));

-- Location: LCCOMB_X30_Y29_N0
\eth_top_i|eth_tx_i|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|Equal1~1_combout\ = (!\eth_top_i|eth_tx_i|nibble_cnt_r\(6) & (!\eth_top_i|eth_tx_i|nibble_cnt_r\(7) & (!\eth_top_i|eth_tx_i|nibble_cnt_r\(3) & !\eth_top_i|eth_tx_i|nibble_cnt_r\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|nibble_cnt_r\(6),
	datab => \eth_top_i|eth_tx_i|nibble_cnt_r\(7),
	datac => \eth_top_i|eth_tx_i|nibble_cnt_r\(3),
	datad => \eth_top_i|eth_tx_i|nibble_cnt_r\(5),
	combout => \eth_top_i|eth_tx_i|Equal1~1_combout\);

-- Location: FF_X30_Y29_N19
\eth_top_i|eth_tx_i|eth_tx_sm.st_reg_addr2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	asdata => \eth_top_i|eth_tx_i|eth_tx_sm.st_reg_addr1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|eth_tx_sm.st_reg_addr2~q\);

-- Location: LCCOMB_X30_Y29_N18
\eth_top_i|eth_tx_i|WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|WideOr0~0_combout\ = (\eth_top_i|eth_tx_i|eth_tx_sm.st_wait_interframe~q\) # ((\eth_top_i|eth_tx_i|eth_tx_sm.st_reg_addr2~q\) # (!\eth_top_i|eth_tx_i|eth_tx_sm.st_idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|eth_tx_sm.st_wait_interframe~q\,
	datac => \eth_top_i|eth_tx_i|eth_tx_sm.st_reg_addr2~q\,
	datad => \eth_top_i|eth_tx_i|eth_tx_sm.st_idle~q\,
	combout => \eth_top_i|eth_tx_i|WideOr0~0_combout\);

-- Location: LCCOMB_X30_Y29_N4
\eth_top_i|eth_tx_i|Selector16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|Selector16~0_combout\ = (\eth_top_i|eth_tx_i|eth_tx_sm.st_send_data~q\) # ((\eth_top_i|eth_tx_i|WideOr0~0_combout\) # ((!\eth_top_i|eth_tx_i|nibble_cnt_zero_r~q\ & \eth_top_i|eth_tx_i|eth_tx_sm.st_send_crc~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|nibble_cnt_zero_r~q\,
	datab => \eth_top_i|eth_tx_i|eth_tx_sm.st_send_data~q\,
	datac => \eth_top_i|eth_tx_i|WideOr0~0_combout\,
	datad => \eth_top_i|eth_tx_i|eth_tx_sm.st_send_crc~q\,
	combout => \eth_top_i|eth_tx_i|Selector16~0_combout\);

-- Location: LCCOMB_X30_Y29_N16
\eth_top_i|eth_tx_i|Selector16~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|Selector16~1_combout\ = (\eth_top_i|eth_tx_i|nibble_cnt_zero_r~q\ & ((\eth_top_i|eth_tx_i|eth_tx_sm.st_send_data~q\) # ((\eth_top_i|eth_tx_i|Selector16~0_combout\ & \eth_top_i|eth_tx_i|Add1~2_combout\)))) # 
-- (!\eth_top_i|eth_tx_i|nibble_cnt_zero_r~q\ & (((\eth_top_i|eth_tx_i|Selector16~0_combout\ & \eth_top_i|eth_tx_i|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|nibble_cnt_zero_r~q\,
	datab => \eth_top_i|eth_tx_i|eth_tx_sm.st_send_data~q\,
	datac => \eth_top_i|eth_tx_i|Selector16~0_combout\,
	datad => \eth_top_i|eth_tx_i|Add1~2_combout\,
	combout => \eth_top_i|eth_tx_i|Selector16~1_combout\);

-- Location: FF_X30_Y29_N17
\eth_top_i|eth_tx_i|nibble_cnt_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|Selector16~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|nibble_cnt_r\(1));

-- Location: LCCOMB_X30_Y29_N14
\eth_top_i|eth_tx_i|Selector17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|Selector17~0_combout\ = (\eth_top_i|eth_tx_i|Add1~0_combout\ & (((\eth_top_i|eth_tx_i|tx_en_r~0_combout\) # (\eth_top_i|eth_tx_i|WideOr0~0_combout\)))) # (!\eth_top_i|eth_tx_i|Add1~0_combout\ & (\eth_top_i|eth_tx_i|nibble_cnt_zero_r~q\ 
-- & (\eth_top_i|eth_tx_i|tx_en_r~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|nibble_cnt_zero_r~q\,
	datab => \eth_top_i|eth_tx_i|Add1~0_combout\,
	datac => \eth_top_i|eth_tx_i|tx_en_r~0_combout\,
	datad => \eth_top_i|eth_tx_i|WideOr0~0_combout\,
	combout => \eth_top_i|eth_tx_i|Selector17~0_combout\);

-- Location: FF_X30_Y29_N15
\eth_top_i|eth_tx_i|nibble_cnt_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|nibble_cnt_r\(0));

-- Location: LCCOMB_X30_Y29_N24
\eth_top_i|eth_tx_i|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|Equal1~0_combout\ = (!\eth_top_i|eth_tx_i|nibble_cnt_r\(4) & (!\eth_top_i|eth_tx_i|nibble_cnt_r\(1) & (\eth_top_i|eth_tx_i|nibble_cnt_r\(0) & !\eth_top_i|eth_tx_i|nibble_cnt_r\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|nibble_cnt_r\(4),
	datab => \eth_top_i|eth_tx_i|nibble_cnt_r\(1),
	datac => \eth_top_i|eth_tx_i|nibble_cnt_r\(0),
	datad => \eth_top_i|eth_tx_i|nibble_cnt_r\(2),
	combout => \eth_top_i|eth_tx_i|Equal1~0_combout\);

-- Location: LCCOMB_X30_Y29_N12
\eth_top_i|eth_tx_i|Equal1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|Equal1~3_combout\ = (\eth_top_i|eth_tx_i|Equal1~2_combout\ & (\eth_top_i|eth_tx_i|Equal1~1_combout\ & \eth_top_i|eth_tx_i|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|Equal1~2_combout\,
	datab => \eth_top_i|eth_tx_i|Equal1~1_combout\,
	datad => \eth_top_i|eth_tx_i|Equal1~0_combout\,
	combout => \eth_top_i|eth_tx_i|Equal1~3_combout\);

-- Location: FF_X30_Y29_N13
\eth_top_i|eth_tx_i|nibble_cnt_zero_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|nibble_cnt_zero_r~q\);

-- Location: FF_X31_Y28_N9
\eth_top_i|eth_tx_i|eth_tx_sm.st_send_crc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	asdata => \eth_top_i|eth_tx_i|eth_tx_sm.st_send_data~q\,
	sload => VCC,
	ena => \eth_top_i|eth_tx_i|nibble_cnt_zero_r~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|eth_tx_sm.st_send_crc~q\);

-- Location: LCCOMB_X29_Y28_N22
\eth_top_i|eth_tx_i|eth_tx_sm.st_wait_interframe~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|eth_tx_sm.st_wait_interframe~feeder_combout\ = \eth_top_i|eth_tx_i|eth_tx_sm.st_send_crc~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|eth_tx_i|eth_tx_sm.st_send_crc~q\,
	combout => \eth_top_i|eth_tx_i|eth_tx_sm.st_wait_interframe~feeder_combout\);

-- Location: FF_X29_Y28_N23
\eth_top_i|eth_tx_i|eth_tx_sm.st_wait_interframe\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|eth_tx_sm.st_wait_interframe~feeder_combout\,
	ena => \eth_top_i|eth_tx_i|nibble_cnt_zero_r~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|eth_tx_sm.st_wait_interframe~q\);

-- Location: LCCOMB_X28_Y26_N0
\eth_top_i|net_proc_i|tx_bank_info_r[1][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|tx_bank_info_r[1][10]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \eth_top_i|net_proc_i|tx_bank_info_r[1][10]~feeder_combout\);

-- Location: LCCOMB_X31_Y29_N26
\eth_top_i|eth_tx_i|bank_info_clrn_r~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|bank_info_clrn_r~0_combout\ = ((!\eth_top_i|eth_tx_i|current_bank_r~q\) # (!\eth_top_i|eth_tx_i|eth_tx_sm.st_send_data~q\)) # (!\eth_top_i|eth_tx_i|nibble_cnt_zero_r~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|nibble_cnt_zero_r~q\,
	datab => \eth_top_i|eth_tx_i|eth_tx_sm.st_send_data~q\,
	datad => \eth_top_i|eth_tx_i|current_bank_r~q\,
	combout => \eth_top_i|eth_tx_i|bank_info_clrn_r~0_combout\);

-- Location: FF_X31_Y29_N27
\eth_top_i|eth_tx_i|bank_info_clrn_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|bank_info_clrn_r~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|bank_info_clrn_r\(1));

-- Location: FF_X28_Y26_N1
\eth_top_i|net_proc_i|tx_bank_info_r[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|tx_bank_info_r[1][10]~feeder_combout\,
	clrn => \eth_top_i|eth_tx_i|bank_info_clrn_r\(1),
	ena => \eth_top_i|net_proc_i|tx_bank_info_r[1][10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|tx_bank_info_r[1][10]~q\);

-- Location: FF_X30_Y29_N23
\eth_top_i|eth_tx_i|tx_bank_busy_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	asdata => \eth_top_i|net_proc_i|tx_bank_info_r[1][10]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|tx_bank_busy_r\(1));

-- Location: LCCOMB_X30_Y29_N22
\eth_top_i|eth_tx_i|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|Selector0~0_combout\ = (!\eth_top_i|eth_tx_i|eth_tx_sm.st_idle~q\ & ((\eth_top_i|eth_tx_i|current_bank_r~q\ & ((!\eth_top_i|eth_tx_i|tx_bank_busy_r\(1)))) # (!\eth_top_i|eth_tx_i|current_bank_r~q\ & 
-- (!\eth_top_i|eth_tx_i|tx_bank_busy_r\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|tx_bank_busy_r\(0),
	datab => \eth_top_i|eth_tx_i|eth_tx_sm.st_idle~q\,
	datac => \eth_top_i|eth_tx_i|tx_bank_busy_r\(1),
	datad => \eth_top_i|eth_tx_i|current_bank_r~q\,
	combout => \eth_top_i|eth_tx_i|Selector0~0_combout\);

-- Location: LCCOMB_X30_Y29_N20
\eth_top_i|eth_tx_i|Selector0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|Selector0~1_combout\ = (!\eth_top_i|eth_tx_i|Selector0~0_combout\ & ((!\eth_top_i|eth_tx_i|eth_tx_sm.st_wait_interframe~q\) # (!\eth_top_i|eth_tx_i|nibble_cnt_zero_r~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|nibble_cnt_zero_r~q\,
	datac => \eth_top_i|eth_tx_i|eth_tx_sm.st_wait_interframe~q\,
	datad => \eth_top_i|eth_tx_i|Selector0~0_combout\,
	combout => \eth_top_i|eth_tx_i|Selector0~1_combout\);

-- Location: FF_X30_Y29_N21
\eth_top_i|eth_tx_i|eth_tx_sm.st_idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|eth_tx_sm.st_idle~q\);

-- Location: LCCOMB_X30_Y29_N28
\eth_top_i|eth_tx_i|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|Selector1~0_combout\ = (!\eth_top_i|eth_tx_i|eth_tx_sm.st_idle~q\ & ((\eth_top_i|eth_tx_i|current_bank_r~q\ & ((\eth_top_i|eth_tx_i|tx_bank_busy_r\(1)))) # (!\eth_top_i|eth_tx_i|current_bank_r~q\ & 
-- (\eth_top_i|eth_tx_i|tx_bank_busy_r\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|tx_bank_busy_r\(0),
	datab => \eth_top_i|eth_tx_i|eth_tx_sm.st_idle~q\,
	datac => \eth_top_i|eth_tx_i|tx_bank_busy_r\(1),
	datad => \eth_top_i|eth_tx_i|current_bank_r~q\,
	combout => \eth_top_i|eth_tx_i|Selector1~0_combout\);

-- Location: FF_X30_Y29_N29
\eth_top_i|eth_tx_i|eth_tx_sm.st_reg_addr1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|eth_tx_sm.st_reg_addr1~q\);

-- Location: LCCOMB_X30_Y29_N8
\eth_top_i|eth_tx_i|eth_tx_sm.st_send_data~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|eth_tx_sm.st_send_data~0_combout\ = (\eth_top_i|eth_tx_i|eth_tx_sm.st_send_data~q\ & (!\eth_top_i|eth_tx_i|eth_tx_sm.st_reg_addr1~q\ & ((!\eth_top_i|eth_tx_i|eth_tx_sm.st_idle~q\) # (!\eth_top_i|eth_tx_i|nibble_cnt_zero_r~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|nibble_cnt_zero_r~q\,
	datab => \eth_top_i|eth_tx_i|eth_tx_sm.st_send_data~q\,
	datac => \eth_top_i|eth_tx_i|eth_tx_sm.st_reg_addr1~q\,
	datad => \eth_top_i|eth_tx_i|eth_tx_sm.st_idle~q\,
	combout => \eth_top_i|eth_tx_i|eth_tx_sm.st_send_data~0_combout\);

-- Location: LCCOMB_X29_Y28_N20
\eth_top_i|eth_tx_i|eth_tx_sm.st_send_data~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|eth_tx_sm.st_send_data~1_combout\ = (\eth_top_i|eth_tx_i|eth_tx_sm.st_reg_addr2~q\) # ((!\eth_top_i|eth_tx_i|Selector1~0_combout\ & \eth_top_i|eth_tx_i|eth_tx_sm.st_send_data~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|Selector1~0_combout\,
	datac => \eth_top_i|eth_tx_i|eth_tx_sm.st_send_data~0_combout\,
	datad => \eth_top_i|eth_tx_i|eth_tx_sm.st_reg_addr2~q\,
	combout => \eth_top_i|eth_tx_i|eth_tx_sm.st_send_data~1_combout\);

-- Location: FF_X29_Y28_N21
\eth_top_i|eth_tx_i|eth_tx_sm.st_send_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|eth_tx_sm.st_send_data~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|eth_tx_sm.st_send_data~q\);

-- Location: LCCOMB_X30_Y29_N26
\eth_top_i|eth_tx_i|tx_en_r~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|tx_en_r~0_combout\ = (\eth_top_i|eth_tx_i|eth_tx_sm.st_send_data~q\) # (\eth_top_i|eth_tx_i|eth_tx_sm.st_send_crc~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|eth_tx_i|eth_tx_sm.st_send_data~q\,
	datad => \eth_top_i|eth_tx_i|eth_tx_sm.st_send_crc~q\,
	combout => \eth_top_i|eth_tx_i|tx_en_r~0_combout\);

-- Location: FF_X30_Y29_N27
\eth_top_i|eth_tx_i|tx_en_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|tx_en_r~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|tx_en_r~q\);

-- Location: FF_X30_Y29_N3
\eth_top_i|eth_pins_i|tx_en_or\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	asdata => \eth_top_i|eth_tx_i|tx_en_r~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_pins_i|tx_en_or~q\);

-- Location: LCCOMB_X30_Y25_N4
\eth_top_i|eth_tx_i|addr_cnt_r[0]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|addr_cnt_r[0]~12_combout\ = \eth_top_i|eth_tx_i|addr_cnt_r\(0) $ (VCC)
-- \eth_top_i|eth_tx_i|addr_cnt_r[0]~13\ = CARRY(\eth_top_i|eth_tx_i|addr_cnt_r\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|eth_tx_i|addr_cnt_r\(0),
	datad => VCC,
	combout => \eth_top_i|eth_tx_i|addr_cnt_r[0]~12_combout\,
	cout => \eth_top_i|eth_tx_i|addr_cnt_r[0]~13\);

-- Location: LCCOMB_X29_Y25_N16
\~GND\ : cycloneiii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X30_Y25_N5
\eth_top_i|eth_tx_i|addr_cnt_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|addr_cnt_r[0]~12_combout\,
	asdata => \~GND~combout\,
	sload => \eth_top_i|eth_tx_i|ALT_INV_eth_tx_sm.st_idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|addr_cnt_r\(0));

-- Location: LCCOMB_X30_Y25_N6
\eth_top_i|eth_tx_i|addr_cnt_r[1]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|addr_cnt_r[1]~14_combout\ = (\eth_top_i|eth_tx_i|addr_cnt_r\(1) & (!\eth_top_i|eth_tx_i|addr_cnt_r[0]~13\)) # (!\eth_top_i|eth_tx_i|addr_cnt_r\(1) & ((\eth_top_i|eth_tx_i|addr_cnt_r[0]~13\) # (GND)))
-- \eth_top_i|eth_tx_i|addr_cnt_r[1]~15\ = CARRY((!\eth_top_i|eth_tx_i|addr_cnt_r[0]~13\) # (!\eth_top_i|eth_tx_i|addr_cnt_r\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|addr_cnt_r\(1),
	datad => VCC,
	cin => \eth_top_i|eth_tx_i|addr_cnt_r[0]~13\,
	combout => \eth_top_i|eth_tx_i|addr_cnt_r[1]~14_combout\,
	cout => \eth_top_i|eth_tx_i|addr_cnt_r[1]~15\);

-- Location: LCCOMB_X30_Y25_N8
\eth_top_i|eth_tx_i|addr_cnt_r[2]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|addr_cnt_r[2]~16_combout\ = (\eth_top_i|eth_tx_i|addr_cnt_r\(2) & (\eth_top_i|eth_tx_i|addr_cnt_r[1]~15\ $ (GND))) # (!\eth_top_i|eth_tx_i|addr_cnt_r\(2) & (!\eth_top_i|eth_tx_i|addr_cnt_r[1]~15\ & VCC))
-- \eth_top_i|eth_tx_i|addr_cnt_r[2]~17\ = CARRY((\eth_top_i|eth_tx_i|addr_cnt_r\(2) & !\eth_top_i|eth_tx_i|addr_cnt_r[1]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|addr_cnt_r\(2),
	datad => VCC,
	cin => \eth_top_i|eth_tx_i|addr_cnt_r[1]~15\,
	combout => \eth_top_i|eth_tx_i|addr_cnt_r[2]~16_combout\,
	cout => \eth_top_i|eth_tx_i|addr_cnt_r[2]~17\);

-- Location: LCCOMB_X30_Y25_N10
\eth_top_i|eth_tx_i|addr_cnt_r[3]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|addr_cnt_r[3]~18_combout\ = (\eth_top_i|eth_tx_i|addr_cnt_r\(3) & (!\eth_top_i|eth_tx_i|addr_cnt_r[2]~17\)) # (!\eth_top_i|eth_tx_i|addr_cnt_r\(3) & ((\eth_top_i|eth_tx_i|addr_cnt_r[2]~17\) # (GND)))
-- \eth_top_i|eth_tx_i|addr_cnt_r[3]~19\ = CARRY((!\eth_top_i|eth_tx_i|addr_cnt_r[2]~17\) # (!\eth_top_i|eth_tx_i|addr_cnt_r\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|addr_cnt_r\(3),
	datad => VCC,
	cin => \eth_top_i|eth_tx_i|addr_cnt_r[2]~17\,
	combout => \eth_top_i|eth_tx_i|addr_cnt_r[3]~18_combout\,
	cout => \eth_top_i|eth_tx_i|addr_cnt_r[3]~19\);

-- Location: LCCOMB_X30_Y25_N12
\eth_top_i|eth_tx_i|addr_cnt_r[4]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|addr_cnt_r[4]~20_combout\ = (\eth_top_i|eth_tx_i|addr_cnt_r\(4) & (\eth_top_i|eth_tx_i|addr_cnt_r[3]~19\ $ (GND))) # (!\eth_top_i|eth_tx_i|addr_cnt_r\(4) & (!\eth_top_i|eth_tx_i|addr_cnt_r[3]~19\ & VCC))
-- \eth_top_i|eth_tx_i|addr_cnt_r[4]~21\ = CARRY((\eth_top_i|eth_tx_i|addr_cnt_r\(4) & !\eth_top_i|eth_tx_i|addr_cnt_r[3]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|addr_cnt_r\(4),
	datad => VCC,
	cin => \eth_top_i|eth_tx_i|addr_cnt_r[3]~19\,
	combout => \eth_top_i|eth_tx_i|addr_cnt_r[4]~20_combout\,
	cout => \eth_top_i|eth_tx_i|addr_cnt_r[4]~21\);

-- Location: LCCOMB_X30_Y25_N14
\eth_top_i|eth_tx_i|addr_cnt_r[5]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|addr_cnt_r[5]~22_combout\ = (\eth_top_i|eth_tx_i|addr_cnt_r\(5) & (!\eth_top_i|eth_tx_i|addr_cnt_r[4]~21\)) # (!\eth_top_i|eth_tx_i|addr_cnt_r\(5) & ((\eth_top_i|eth_tx_i|addr_cnt_r[4]~21\) # (GND)))
-- \eth_top_i|eth_tx_i|addr_cnt_r[5]~23\ = CARRY((!\eth_top_i|eth_tx_i|addr_cnt_r[4]~21\) # (!\eth_top_i|eth_tx_i|addr_cnt_r\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|eth_tx_i|addr_cnt_r\(5),
	datad => VCC,
	cin => \eth_top_i|eth_tx_i|addr_cnt_r[4]~21\,
	combout => \eth_top_i|eth_tx_i|addr_cnt_r[5]~22_combout\,
	cout => \eth_top_i|eth_tx_i|addr_cnt_r[5]~23\);

-- Location: FF_X30_Y25_N15
\eth_top_i|eth_tx_i|addr_cnt_r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|addr_cnt_r[5]~22_combout\,
	asdata => \~GND~combout\,
	sload => \eth_top_i|eth_tx_i|ALT_INV_eth_tx_sm.st_idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|addr_cnt_r\(5));

-- Location: LCCOMB_X30_Y25_N16
\eth_top_i|eth_tx_i|addr_cnt_r[6]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|addr_cnt_r[6]~24_combout\ = (\eth_top_i|eth_tx_i|addr_cnt_r\(6) & (\eth_top_i|eth_tx_i|addr_cnt_r[5]~23\ $ (GND))) # (!\eth_top_i|eth_tx_i|addr_cnt_r\(6) & (!\eth_top_i|eth_tx_i|addr_cnt_r[5]~23\ & VCC))
-- \eth_top_i|eth_tx_i|addr_cnt_r[6]~25\ = CARRY((\eth_top_i|eth_tx_i|addr_cnt_r\(6) & !\eth_top_i|eth_tx_i|addr_cnt_r[5]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|eth_tx_i|addr_cnt_r\(6),
	datad => VCC,
	cin => \eth_top_i|eth_tx_i|addr_cnt_r[5]~23\,
	combout => \eth_top_i|eth_tx_i|addr_cnt_r[6]~24_combout\,
	cout => \eth_top_i|eth_tx_i|addr_cnt_r[6]~25\);

-- Location: FF_X30_Y25_N17
\eth_top_i|eth_tx_i|addr_cnt_r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|addr_cnt_r[6]~24_combout\,
	asdata => \~GND~combout\,
	sload => \eth_top_i|eth_tx_i|ALT_INV_eth_tx_sm.st_idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|addr_cnt_r\(6));

-- Location: FF_X30_Y25_N13
\eth_top_i|eth_tx_i|addr_cnt_r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|addr_cnt_r[4]~20_combout\,
	asdata => \~GND~combout\,
	sload => \eth_top_i|eth_tx_i|ALT_INV_eth_tx_sm.st_idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|addr_cnt_r\(4));

-- Location: LCCOMB_X30_Y25_N2
\eth_top_i|eth_tx_i|crc_sclr_s~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|crc_sclr_s~1_combout\ = (!\eth_top_i|eth_tx_i|addr_cnt_r\(3) & (!\eth_top_i|eth_tx_i|addr_cnt_r\(6) & (!\eth_top_i|eth_tx_i|addr_cnt_r\(5) & \eth_top_i|eth_tx_i|addr_cnt_r\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|addr_cnt_r\(3),
	datab => \eth_top_i|eth_tx_i|addr_cnt_r\(6),
	datac => \eth_top_i|eth_tx_i|addr_cnt_r\(5),
	datad => \eth_top_i|eth_tx_i|addr_cnt_r\(4),
	combout => \eth_top_i|eth_tx_i|crc_sclr_s~1_combout\);

-- Location: LCCOMB_X30_Y25_N18
\eth_top_i|eth_tx_i|addr_cnt_r[7]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|addr_cnt_r[7]~26_combout\ = (\eth_top_i|eth_tx_i|addr_cnt_r\(7) & (!\eth_top_i|eth_tx_i|addr_cnt_r[6]~25\)) # (!\eth_top_i|eth_tx_i|addr_cnt_r\(7) & ((\eth_top_i|eth_tx_i|addr_cnt_r[6]~25\) # (GND)))
-- \eth_top_i|eth_tx_i|addr_cnt_r[7]~27\ = CARRY((!\eth_top_i|eth_tx_i|addr_cnt_r[6]~25\) # (!\eth_top_i|eth_tx_i|addr_cnt_r\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|addr_cnt_r\(7),
	datad => VCC,
	cin => \eth_top_i|eth_tx_i|addr_cnt_r[6]~25\,
	combout => \eth_top_i|eth_tx_i|addr_cnt_r[7]~26_combout\,
	cout => \eth_top_i|eth_tx_i|addr_cnt_r[7]~27\);

-- Location: LCCOMB_X30_Y25_N20
\eth_top_i|eth_tx_i|addr_cnt_r[8]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|addr_cnt_r[8]~28_combout\ = (\eth_top_i|eth_tx_i|addr_cnt_r\(8) & (\eth_top_i|eth_tx_i|addr_cnt_r[7]~27\ $ (GND))) # (!\eth_top_i|eth_tx_i|addr_cnt_r\(8) & (!\eth_top_i|eth_tx_i|addr_cnt_r[7]~27\ & VCC))
-- \eth_top_i|eth_tx_i|addr_cnt_r[8]~29\ = CARRY((\eth_top_i|eth_tx_i|addr_cnt_r\(8) & !\eth_top_i|eth_tx_i|addr_cnt_r[7]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|eth_tx_i|addr_cnt_r\(8),
	datad => VCC,
	cin => \eth_top_i|eth_tx_i|addr_cnt_r[7]~27\,
	combout => \eth_top_i|eth_tx_i|addr_cnt_r[8]~28_combout\,
	cout => \eth_top_i|eth_tx_i|addr_cnt_r[8]~29\);

-- Location: FF_X30_Y25_N21
\eth_top_i|eth_tx_i|addr_cnt_r[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|addr_cnt_r[8]~28_combout\,
	asdata => \~GND~combout\,
	sload => \eth_top_i|eth_tx_i|ALT_INV_eth_tx_sm.st_idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|addr_cnt_r\(8));

-- Location: LCCOMB_X30_Y25_N22
\eth_top_i|eth_tx_i|addr_cnt_r[9]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|addr_cnt_r[9]~30_combout\ = (\eth_top_i|eth_tx_i|addr_cnt_r\(9) & (!\eth_top_i|eth_tx_i|addr_cnt_r[8]~29\)) # (!\eth_top_i|eth_tx_i|addr_cnt_r\(9) & ((\eth_top_i|eth_tx_i|addr_cnt_r[8]~29\) # (GND)))
-- \eth_top_i|eth_tx_i|addr_cnt_r[9]~31\ = CARRY((!\eth_top_i|eth_tx_i|addr_cnt_r[8]~29\) # (!\eth_top_i|eth_tx_i|addr_cnt_r\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|addr_cnt_r\(9),
	datad => VCC,
	cin => \eth_top_i|eth_tx_i|addr_cnt_r[8]~29\,
	combout => \eth_top_i|eth_tx_i|addr_cnt_r[9]~30_combout\,
	cout => \eth_top_i|eth_tx_i|addr_cnt_r[9]~31\);

-- Location: LCCOMB_X30_Y25_N24
\eth_top_i|eth_tx_i|addr_cnt_r[10]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|addr_cnt_r[10]~32_combout\ = (\eth_top_i|eth_tx_i|addr_cnt_r\(10) & (\eth_top_i|eth_tx_i|addr_cnt_r[9]~31\ $ (GND))) # (!\eth_top_i|eth_tx_i|addr_cnt_r\(10) & (!\eth_top_i|eth_tx_i|addr_cnt_r[9]~31\ & VCC))
-- \eth_top_i|eth_tx_i|addr_cnt_r[10]~33\ = CARRY((\eth_top_i|eth_tx_i|addr_cnt_r\(10) & !\eth_top_i|eth_tx_i|addr_cnt_r[9]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|eth_tx_i|addr_cnt_r\(10),
	datad => VCC,
	cin => \eth_top_i|eth_tx_i|addr_cnt_r[9]~31\,
	combout => \eth_top_i|eth_tx_i|addr_cnt_r[10]~32_combout\,
	cout => \eth_top_i|eth_tx_i|addr_cnt_r[10]~33\);

-- Location: FF_X30_Y25_N25
\eth_top_i|eth_tx_i|addr_cnt_r[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|addr_cnt_r[10]~32_combout\,
	asdata => \~GND~combout\,
	sload => \eth_top_i|eth_tx_i|ALT_INV_eth_tx_sm.st_idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|addr_cnt_r\(10));

-- Location: LCCOMB_X30_Y25_N26
\eth_top_i|eth_tx_i|addr_cnt_r[11]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|addr_cnt_r[11]~34_combout\ = \eth_top_i|eth_tx_i|addr_cnt_r\(11) $ (\eth_top_i|eth_tx_i|addr_cnt_r[10]~33\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|addr_cnt_r\(11),
	cin => \eth_top_i|eth_tx_i|addr_cnt_r[10]~33\,
	combout => \eth_top_i|eth_tx_i|addr_cnt_r[11]~34_combout\);

-- Location: FF_X30_Y25_N27
\eth_top_i|eth_tx_i|addr_cnt_r[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|addr_cnt_r[11]~34_combout\,
	asdata => \~GND~combout\,
	sload => \eth_top_i|eth_tx_i|ALT_INV_eth_tx_sm.st_idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|addr_cnt_r\(11));

-- Location: FF_X30_Y25_N7
\eth_top_i|eth_tx_i|addr_cnt_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|addr_cnt_r[1]~14_combout\,
	asdata => VCC,
	sload => \eth_top_i|eth_tx_i|ALT_INV_eth_tx_sm.st_idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|addr_cnt_r\(1));

-- Location: LCCOMB_X30_Y25_N0
\eth_top_i|eth_tx_i|crc_sclr_s~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|crc_sclr_s~0_combout\ = (!\eth_top_i|eth_tx_i|addr_cnt_r\(2) & (\eth_top_i|eth_tx_i|eth_tx_sm.st_send_data~q\ & (\eth_top_i|eth_tx_i|addr_cnt_r\(0) & \eth_top_i|eth_tx_i|addr_cnt_r\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|addr_cnt_r\(2),
	datab => \eth_top_i|eth_tx_i|eth_tx_sm.st_send_data~q\,
	datac => \eth_top_i|eth_tx_i|addr_cnt_r\(0),
	datad => \eth_top_i|eth_tx_i|addr_cnt_r\(1),
	combout => \eth_top_i|eth_tx_i|crc_sclr_s~0_combout\);

-- Location: LCCOMB_X30_Y25_N30
\eth_top_i|eth_tx_i|crc_sclr_s~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|crc_sclr_s~3_combout\ = (\eth_top_i|eth_tx_i|crc_sclr_s~2_combout\ & (\eth_top_i|eth_tx_i|crc_sclr_s~1_combout\ & (!\eth_top_i|eth_tx_i|addr_cnt_r\(11) & \eth_top_i|eth_tx_i|crc_sclr_s~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|crc_sclr_s~2_combout\,
	datab => \eth_top_i|eth_tx_i|crc_sclr_s~1_combout\,
	datac => \eth_top_i|eth_tx_i|addr_cnt_r\(11),
	datad => \eth_top_i|eth_tx_i|crc_sclr_s~0_combout\,
	combout => \eth_top_i|eth_tx_i|crc_sclr_s~3_combout\);

-- Location: LCCOMB_X24_Y26_N4
\eth_top_i|net_proc_i|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector3~0_combout\ = (\eth_top_i|net_proc_i|np_fsm.npf_write_mem2~q\) # ((\eth_top_i|net_proc_i|np_fsm.npf_store_ip_checksum~q\) # ((\eth_top_i|net_proc_i|np_fsm.npf_read_mem6~q\) # (\eth_top_i|net_proc_i|np_fsm.npf_caseComID~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|np_fsm.npf_write_mem2~q\,
	datab => \eth_top_i|net_proc_i|np_fsm.npf_store_ip_checksum~q\,
	datac => \eth_top_i|net_proc_i|np_fsm.npf_read_mem6~q\,
	datad => \eth_top_i|net_proc_i|np_fsm.npf_caseComID~q\,
	combout => \eth_top_i|net_proc_i|Selector3~0_combout\);

-- Location: LCCOMB_X24_Y27_N24
\eth_top_i|net_proc_i|WideOr23~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|WideOr23~0_combout\ = (!\eth_top_i|net_proc_i|np_fsm.npf_checkProtocolID~q\ & (!\eth_top_i|net_proc_i|np_fsm.npf_write_mem1~q\ & (!\eth_top_i|net_proc_i|np_fsm.npf_store_reg_rdata1~q\ & 
-- !\eth_top_i|net_proc_i|np_fsm.npf_store_reg_rdata2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|np_fsm.npf_checkProtocolID~q\,
	datab => \eth_top_i|net_proc_i|np_fsm.npf_write_mem1~q\,
	datac => \eth_top_i|net_proc_i|np_fsm.npf_store_reg_rdata1~q\,
	datad => \eth_top_i|net_proc_i|np_fsm.npf_store_reg_rdata2~q\,
	combout => \eth_top_i|net_proc_i|WideOr23~0_combout\);

-- Location: FF_X24_Y25_N19
\eth_top_i|net_proc_i|np_fsm.npf_read_mem2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \eth_top_i|net_proc_i|np_fsm.npf_read_mem1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|np_fsm.npf_read_mem2~q\);

-- Location: LCCOMB_X24_Y25_N12
\eth_top_i|net_proc_i|np_fsm.npf_read_mem3~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|np_fsm.npf_read_mem3~feeder_combout\ = \eth_top_i|net_proc_i|np_fsm.npf_read_mem2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|net_proc_i|np_fsm.npf_read_mem2~q\,
	combout => \eth_top_i|net_proc_i|np_fsm.npf_read_mem3~feeder_combout\);

-- Location: FF_X24_Y25_N13
\eth_top_i|net_proc_i|np_fsm.npf_read_mem3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|np_fsm.npf_read_mem3~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|np_fsm.npf_read_mem3~q\);

-- Location: LCCOMB_X24_Y25_N18
\eth_top_i|net_proc_i|WideOr23~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|WideOr23~1_combout\ = (!\eth_top_i|net_proc_i|np_fsm.npf_read_mem1~q\ & (!\eth_top_i|net_proc_i|np_fsm.npf_read_mem4~q\ & (!\eth_top_i|net_proc_i|np_fsm.npf_read_mem2~q\ & !\eth_top_i|net_proc_i|np_fsm.npf_read_mem3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|np_fsm.npf_read_mem1~q\,
	datab => \eth_top_i|net_proc_i|np_fsm.npf_read_mem4~q\,
	datac => \eth_top_i|net_proc_i|np_fsm.npf_read_mem2~q\,
	datad => \eth_top_i|net_proc_i|np_fsm.npf_read_mem3~q\,
	combout => \eth_top_i|net_proc_i|WideOr23~1_combout\);

-- Location: LCCOMB_X24_Y25_N0
\eth_top_i|net_proc_i|Selector3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector3~1_combout\ = (\eth_top_i|net_proc_i|np_fsm.npf_reset~q\) # ((\eth_top_i|net_proc_i|Selector3~0_combout\) # ((!\eth_top_i|net_proc_i|WideOr23~1_combout\) # (!\eth_top_i|net_proc_i|WideOr23~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|np_fsm.npf_reset~q\,
	datab => \eth_top_i|net_proc_i|Selector3~0_combout\,
	datac => \eth_top_i|net_proc_i|WideOr23~0_combout\,
	datad => \eth_top_i|net_proc_i|WideOr23~1_combout\,
	combout => \eth_top_i|net_proc_i|Selector3~1_combout\);

-- Location: LCCOMB_X24_Y25_N20
\eth_top_i|net_proc_i|Selector3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector3~3_combout\ = (\eth_top_i|net_proc_i|tx_ram_we_r~q\ & (!\eth_top_i|net_proc_i|Equal5~0_combout\ & ((\eth_top_i|net_proc_i|Selector3~1_combout\) # (!\eth_top_i|net_proc_i|Selector3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|Selector3~2_combout\,
	datab => \eth_top_i|net_proc_i|Selector3~1_combout\,
	datac => \eth_top_i|net_proc_i|tx_ram_we_r~q\,
	datad => \eth_top_i|net_proc_i|Equal5~0_combout\,
	combout => \eth_top_i|net_proc_i|Selector3~3_combout\);

-- Location: LCCOMB_X24_Y26_N8
\eth_top_i|net_proc_i|Selector3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector3~4_combout\ = (!\eth_top_i|net_proc_i|np_fsm.npf_read_mem5~q\ & (!\eth_top_i|net_proc_i|np_fsm.npf_store_reg_rdata3~q\ & \eth_top_i|net_proc_i|Selector33~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|np_fsm.npf_read_mem5~q\,
	datac => \eth_top_i|net_proc_i|np_fsm.npf_store_reg_rdata3~q\,
	datad => \eth_top_i|net_proc_i|Selector33~0_combout\,
	combout => \eth_top_i|net_proc_i|Selector3~4_combout\);

-- Location: LCCOMB_X24_Y26_N28
\eth_top_i|net_proc_i|Selector3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector3~5_combout\ = (!\eth_top_i|net_proc_i|np_fsm.npf_store_udp_len~q\ & (!\eth_top_i|net_proc_i|Selector19~0_combout\ & \eth_top_i|net_proc_i|Selector3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|np_fsm.npf_store_udp_len~q\,
	datac => \eth_top_i|net_proc_i|Selector19~0_combout\,
	datad => \eth_top_i|net_proc_i|Selector3~4_combout\,
	combout => \eth_top_i|net_proc_i|Selector3~5_combout\);

-- Location: LCCOMB_X24_Y26_N24
\eth_top_i|net_proc_i|Selector3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector3~6_combout\ = (\eth_top_i|net_proc_i|Selector3~3_combout\) # (((\eth_top_i|net_proc_i|Selector66~0_combout\ & \eth_top_i|net_proc_i|tx_ram_data_last_r~q\)) # (!\eth_top_i|net_proc_i|Selector3~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|Selector66~0_combout\,
	datab => \eth_top_i|net_proc_i|tx_ram_data_last_r~q\,
	datac => \eth_top_i|net_proc_i|Selector3~3_combout\,
	datad => \eth_top_i|net_proc_i|Selector3~5_combout\,
	combout => \eth_top_i|net_proc_i|Selector3~6_combout\);

-- Location: FF_X24_Y26_N25
\eth_top_i|net_proc_i|tx_ram_we_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Selector3~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|tx_ram_we_r~q\);

-- Location: LCCOMB_X27_Y26_N28
\eth_top_i|net_proc_i|Add7~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add7~23_combout\ = (\eth_top_i|net_proc_i|np_fsm.npf_read_mem1~q\ & \eth_top_i|net_proc_i|Add7~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|np_fsm.npf_read_mem1~q\,
	datad => \eth_top_i|net_proc_i|Add7~21_combout\,
	combout => \eth_top_i|net_proc_i|Add7~23_combout\);

-- Location: FF_X27_Y26_N29
\eth_top_i|net_proc_i|tx_len_r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Add7~23_combout\,
	ena => \eth_top_i|net_proc_i|Add7~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|tx_len_r\(7));

-- Location: LCCOMB_X28_Y26_N8
\eth_top_i|net_proc_i|sys_data_base_r[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|sys_data_base_r[3]~0_combout\ = !\eth_top_i|net_proc_i|np_fsm.npf_store_ip_checksum~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|net_proc_i|np_fsm.npf_store_ip_checksum~q\,
	combout => \eth_top_i|net_proc_i|sys_data_base_r[3]~0_combout\);

-- Location: FF_X28_Y26_N9
\eth_top_i|net_proc_i|sys_data_base_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|sys_data_base_r[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|sys_data_base_r\(3));

-- Location: LCCOMB_X25_Y28_N8
\eth_top_i|net_proc_i|ip_checksum_r[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|ip_checksum_r[0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \eth_top_i|net_proc_i|ip_checksum_r[0]~feeder_combout\);

-- Location: FF_X25_Y28_N9
\eth_top_i|net_proc_i|ip_checksum_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|ip_checksum_r[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|ip_checksum_r\(0));

-- Location: LCCOMB_X28_Y26_N10
\eth_top_i|net_proc_i|proto_len_r[1]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|proto_len_r[1]~11_combout\ = (\eth_top_i|net_proc_i|tx_len_r\(0) & (\eth_top_i|net_proc_i|ip_checksum_r\(0) $ (VCC))) # (!\eth_top_i|net_proc_i|tx_len_r\(0) & (\eth_top_i|net_proc_i|ip_checksum_r\(0) & VCC))
-- \eth_top_i|net_proc_i|proto_len_r[1]~12\ = CARRY((\eth_top_i|net_proc_i|tx_len_r\(0) & \eth_top_i|net_proc_i|ip_checksum_r\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|tx_len_r\(0),
	datab => \eth_top_i|net_proc_i|ip_checksum_r\(0),
	datad => VCC,
	combout => \eth_top_i|net_proc_i|proto_len_r[1]~11_combout\,
	cout => \eth_top_i|net_proc_i|proto_len_r[1]~12\);

-- Location: LCCOMB_X28_Y26_N12
\eth_top_i|net_proc_i|proto_len_r[2]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|proto_len_r[2]~13_combout\ = (\eth_top_i|net_proc_i|np_fsm.npf_store_udp_len~q\ & ((\eth_top_i|net_proc_i|tx_len_r\(1) & (\eth_top_i|net_proc_i|proto_len_r[1]~12\ & VCC)) # (!\eth_top_i|net_proc_i|tx_len_r\(1) & 
-- (!\eth_top_i|net_proc_i|proto_len_r[1]~12\)))) # (!\eth_top_i|net_proc_i|np_fsm.npf_store_udp_len~q\ & ((\eth_top_i|net_proc_i|tx_len_r\(1) & (!\eth_top_i|net_proc_i|proto_len_r[1]~12\)) # (!\eth_top_i|net_proc_i|tx_len_r\(1) & 
-- ((\eth_top_i|net_proc_i|proto_len_r[1]~12\) # (GND)))))
-- \eth_top_i|net_proc_i|proto_len_r[2]~14\ = CARRY((\eth_top_i|net_proc_i|np_fsm.npf_store_udp_len~q\ & (!\eth_top_i|net_proc_i|tx_len_r\(1) & !\eth_top_i|net_proc_i|proto_len_r[1]~12\)) # (!\eth_top_i|net_proc_i|np_fsm.npf_store_udp_len~q\ & 
-- ((!\eth_top_i|net_proc_i|proto_len_r[1]~12\) # (!\eth_top_i|net_proc_i|tx_len_r\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|np_fsm.npf_store_udp_len~q\,
	datab => \eth_top_i|net_proc_i|tx_len_r\(1),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|proto_len_r[1]~12\,
	combout => \eth_top_i|net_proc_i|proto_len_r[2]~13_combout\,
	cout => \eth_top_i|net_proc_i|proto_len_r[2]~14\);

-- Location: LCCOMB_X28_Y26_N14
\eth_top_i|net_proc_i|proto_len_r[3]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|proto_len_r[3]~15_combout\ = ((\eth_top_i|net_proc_i|tx_len_r\(2) $ (\eth_top_i|net_proc_i|sys_data_base_r\(3) $ (!\eth_top_i|net_proc_i|proto_len_r[2]~14\)))) # (GND)
-- \eth_top_i|net_proc_i|proto_len_r[3]~16\ = CARRY((\eth_top_i|net_proc_i|tx_len_r\(2) & ((\eth_top_i|net_proc_i|sys_data_base_r\(3)) # (!\eth_top_i|net_proc_i|proto_len_r[2]~14\))) # (!\eth_top_i|net_proc_i|tx_len_r\(2) & 
-- (\eth_top_i|net_proc_i|sys_data_base_r\(3) & !\eth_top_i|net_proc_i|proto_len_r[2]~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|tx_len_r\(2),
	datab => \eth_top_i|net_proc_i|sys_data_base_r\(3),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|proto_len_r[2]~14\,
	combout => \eth_top_i|net_proc_i|proto_len_r[3]~15_combout\,
	cout => \eth_top_i|net_proc_i|proto_len_r[3]~16\);

-- Location: LCCOMB_X28_Y26_N16
\eth_top_i|net_proc_i|proto_len_r[4]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|proto_len_r[4]~17_combout\ = (\eth_top_i|net_proc_i|np_fsm.npf_store_udp_len~q\ & ((\eth_top_i|net_proc_i|tx_len_r\(3) & (\eth_top_i|net_proc_i|proto_len_r[3]~16\ & VCC)) # (!\eth_top_i|net_proc_i|tx_len_r\(3) & 
-- (!\eth_top_i|net_proc_i|proto_len_r[3]~16\)))) # (!\eth_top_i|net_proc_i|np_fsm.npf_store_udp_len~q\ & ((\eth_top_i|net_proc_i|tx_len_r\(3) & (!\eth_top_i|net_proc_i|proto_len_r[3]~16\)) # (!\eth_top_i|net_proc_i|tx_len_r\(3) & 
-- ((\eth_top_i|net_proc_i|proto_len_r[3]~16\) # (GND)))))
-- \eth_top_i|net_proc_i|proto_len_r[4]~18\ = CARRY((\eth_top_i|net_proc_i|np_fsm.npf_store_udp_len~q\ & (!\eth_top_i|net_proc_i|tx_len_r\(3) & !\eth_top_i|net_proc_i|proto_len_r[3]~16\)) # (!\eth_top_i|net_proc_i|np_fsm.npf_store_udp_len~q\ & 
-- ((!\eth_top_i|net_proc_i|proto_len_r[3]~16\) # (!\eth_top_i|net_proc_i|tx_len_r\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|np_fsm.npf_store_udp_len~q\,
	datab => \eth_top_i|net_proc_i|tx_len_r\(3),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|proto_len_r[3]~16\,
	combout => \eth_top_i|net_proc_i|proto_len_r[4]~17_combout\,
	cout => \eth_top_i|net_proc_i|proto_len_r[4]~18\);

-- Location: LCCOMB_X28_Y26_N20
\eth_top_i|net_proc_i|proto_len_r[6]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|proto_len_r[6]~21_combout\ = (\eth_top_i|net_proc_i|tx_len_r\(5) & (\eth_top_i|net_proc_i|proto_len_r[5]~20\ & VCC)) # (!\eth_top_i|net_proc_i|tx_len_r\(5) & (!\eth_top_i|net_proc_i|proto_len_r[5]~20\))
-- \eth_top_i|net_proc_i|proto_len_r[6]~22\ = CARRY((!\eth_top_i|net_proc_i|tx_len_r\(5) & !\eth_top_i|net_proc_i|proto_len_r[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|tx_len_r\(5),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|proto_len_r[5]~20\,
	combout => \eth_top_i|net_proc_i|proto_len_r[6]~21_combout\,
	cout => \eth_top_i|net_proc_i|proto_len_r[6]~22\);

-- Location: LCCOMB_X28_Y26_N22
\eth_top_i|net_proc_i|proto_len_r[7]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|proto_len_r[7]~23_combout\ = (\eth_top_i|net_proc_i|tx_len_r\(6) & ((GND) # (!\eth_top_i|net_proc_i|proto_len_r[6]~22\))) # (!\eth_top_i|net_proc_i|tx_len_r\(6) & (\eth_top_i|net_proc_i|proto_len_r[6]~22\ $ (GND)))
-- \eth_top_i|net_proc_i|proto_len_r[7]~24\ = CARRY((\eth_top_i|net_proc_i|tx_len_r\(6)) # (!\eth_top_i|net_proc_i|proto_len_r[6]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|tx_len_r\(6),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|proto_len_r[6]~22\,
	combout => \eth_top_i|net_proc_i|proto_len_r[7]~23_combout\,
	cout => \eth_top_i|net_proc_i|proto_len_r[7]~24\);

-- Location: LCCOMB_X28_Y26_N24
\eth_top_i|net_proc_i|proto_len_r[8]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|proto_len_r[8]~25_combout\ = (\eth_top_i|net_proc_i|tx_len_r\(7) & (\eth_top_i|net_proc_i|proto_len_r[7]~24\ & VCC)) # (!\eth_top_i|net_proc_i|tx_len_r\(7) & (!\eth_top_i|net_proc_i|proto_len_r[7]~24\))
-- \eth_top_i|net_proc_i|proto_len_r[8]~26\ = CARRY((!\eth_top_i|net_proc_i|tx_len_r\(7) & !\eth_top_i|net_proc_i|proto_len_r[7]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|tx_len_r\(7),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|proto_len_r[7]~24\,
	combout => \eth_top_i|net_proc_i|proto_len_r[8]~25_combout\,
	cout => \eth_top_i|net_proc_i|proto_len_r[8]~26\);

-- Location: LCCOMB_X28_Y26_N26
\eth_top_i|net_proc_i|proto_len_r[9]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|proto_len_r[9]~27_combout\ = (\eth_top_i|net_proc_i|tx_len_r\(8) & ((GND) # (!\eth_top_i|net_proc_i|proto_len_r[8]~26\))) # (!\eth_top_i|net_proc_i|tx_len_r\(8) & (\eth_top_i|net_proc_i|proto_len_r[8]~26\ $ (GND)))
-- \eth_top_i|net_proc_i|proto_len_r[9]~28\ = CARRY((\eth_top_i|net_proc_i|tx_len_r\(8)) # (!\eth_top_i|net_proc_i|proto_len_r[8]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|tx_len_r\(8),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|proto_len_r[8]~26\,
	combout => \eth_top_i|net_proc_i|proto_len_r[9]~27_combout\,
	cout => \eth_top_i|net_proc_i|proto_len_r[9]~28\);

-- Location: FF_X28_Y26_N27
\eth_top_i|net_proc_i|proto_len_r[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|proto_len_r[9]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|proto_len_r\(9));

-- Location: FF_X28_Y26_N25
\eth_top_i|net_proc_i|proto_len_r[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|proto_len_r[8]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|proto_len_r\(8));

-- Location: FF_X28_Y26_N21
\eth_top_i|net_proc_i|proto_len_r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|proto_len_r[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|proto_len_r\(6));

-- Location: FF_X28_Y26_N17
\eth_top_i|net_proc_i|proto_len_r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|proto_len_r[4]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|proto_len_r\(4));

-- Location: LCCOMB_X28_Y28_N8
\eth_top_i|net_proc_i|ip_checksum_r[5]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|ip_checksum_r[5]~11_combout\ = (\eth_top_i|net_proc_i|proto_len_r\(5) & (!\eth_top_i|net_proc_i|proto_len_r\(4) & VCC)) # (!\eth_top_i|net_proc_i|proto_len_r\(5) & (\eth_top_i|net_proc_i|proto_len_r\(4) $ (GND)))
-- \eth_top_i|net_proc_i|ip_checksum_r[5]~12\ = CARRY((!\eth_top_i|net_proc_i|proto_len_r\(5) & !\eth_top_i|net_proc_i|proto_len_r\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|proto_len_r\(5),
	datab => \eth_top_i|net_proc_i|proto_len_r\(4),
	datad => VCC,
	combout => \eth_top_i|net_proc_i|ip_checksum_r[5]~11_combout\,
	cout => \eth_top_i|net_proc_i|ip_checksum_r[5]~12\);

-- Location: LCCOMB_X28_Y28_N10
\eth_top_i|net_proc_i|ip_checksum_r[6]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|ip_checksum_r[6]~13_combout\ = (\eth_top_i|net_proc_i|proto_len_r\(6) & (!\eth_top_i|net_proc_i|ip_checksum_r[5]~12\)) # (!\eth_top_i|net_proc_i|proto_len_r\(6) & (\eth_top_i|net_proc_i|ip_checksum_r[5]~12\ & VCC))
-- \eth_top_i|net_proc_i|ip_checksum_r[6]~14\ = CARRY((\eth_top_i|net_proc_i|proto_len_r\(6) & !\eth_top_i|net_proc_i|ip_checksum_r[5]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|proto_len_r\(6),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|ip_checksum_r[5]~12\,
	combout => \eth_top_i|net_proc_i|ip_checksum_r[6]~13_combout\,
	cout => \eth_top_i|net_proc_i|ip_checksum_r[6]~14\);

-- Location: LCCOMB_X28_Y28_N14
\eth_top_i|net_proc_i|ip_checksum_r[8]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|ip_checksum_r[8]~17_combout\ = (\eth_top_i|net_proc_i|proto_len_r\(8) & ((\eth_top_i|net_proc_i|ip_checksum_r[7]~16\) # (GND))) # (!\eth_top_i|net_proc_i|proto_len_r\(8) & (!\eth_top_i|net_proc_i|ip_checksum_r[7]~16\))
-- \eth_top_i|net_proc_i|ip_checksum_r[8]~18\ = CARRY((\eth_top_i|net_proc_i|proto_len_r\(8)) # (!\eth_top_i|net_proc_i|ip_checksum_r[7]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|proto_len_r\(8),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|ip_checksum_r[7]~16\,
	combout => \eth_top_i|net_proc_i|ip_checksum_r[8]~17_combout\,
	cout => \eth_top_i|net_proc_i|ip_checksum_r[8]~18\);

-- Location: LCCOMB_X28_Y28_N16
\eth_top_i|net_proc_i|ip_checksum_r[9]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|ip_checksum_r[9]~19_combout\ = (\eth_top_i|net_proc_i|proto_len_r\(9) & (\eth_top_i|net_proc_i|ip_checksum_r[8]~18\ $ (GND))) # (!\eth_top_i|net_proc_i|proto_len_r\(9) & ((GND) # (!\eth_top_i|net_proc_i|ip_checksum_r[8]~18\)))
-- \eth_top_i|net_proc_i|ip_checksum_r[9]~20\ = CARRY((!\eth_top_i|net_proc_i|ip_checksum_r[8]~18\) # (!\eth_top_i|net_proc_i|proto_len_r\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|proto_len_r\(9),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|ip_checksum_r[8]~18\,
	combout => \eth_top_i|net_proc_i|ip_checksum_r[9]~19_combout\,
	cout => \eth_top_i|net_proc_i|ip_checksum_r[9]~20\);

-- Location: LCCOMB_X28_Y28_N18
\eth_top_i|net_proc_i|ip_checksum_r[10]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|ip_checksum_r[10]~21_combout\ = (\eth_top_i|net_proc_i|proto_len_r\(10) & ((\eth_top_i|net_proc_i|ip_checksum_r[9]~20\) # (GND))) # (!\eth_top_i|net_proc_i|proto_len_r\(10) & (!\eth_top_i|net_proc_i|ip_checksum_r[9]~20\))
-- \eth_top_i|net_proc_i|ip_checksum_r[10]~22\ = CARRY((\eth_top_i|net_proc_i|proto_len_r\(10)) # (!\eth_top_i|net_proc_i|ip_checksum_r[9]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|proto_len_r\(10),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|ip_checksum_r[9]~20\,
	combout => \eth_top_i|net_proc_i|ip_checksum_r[10]~21_combout\,
	cout => \eth_top_i|net_proc_i|ip_checksum_r[10]~22\);

-- Location: FF_X28_Y28_N19
\eth_top_i|net_proc_i|ip_checksum_r[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|ip_checksum_r[10]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|ip_checksum_r\(10));

-- Location: LCCOMB_X25_Y28_N14
\eth_top_i|net_proc_i|info_words[2][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|info_words[2][4]~feeder_combout\ = \eth_top_i|eth_rx_ram_i|data_out_r\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|eth_rx_ram_i|data_out_r\(4),
	combout => \eth_top_i|net_proc_i|info_words[2][4]~feeder_combout\);

-- Location: LCCOMB_X25_Y27_N4
\eth_top_i|net_proc_i|Mux66~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Mux66~2_combout\ = (\eth_top_i|net_proc_i|tx_ram_cnt_r\(1) & (\eth_top_i|net_proc_i|tx_ram_cnt_r\(0) & \eth_top_i|net_proc_i|process_0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|tx_ram_cnt_r\(1),
	datac => \eth_top_i|net_proc_i|tx_ram_cnt_r\(0),
	datad => \eth_top_i|net_proc_i|process_0~8_combout\,
	combout => \eth_top_i|net_proc_i|Mux66~2_combout\);

-- Location: FF_X25_Y28_N15
\eth_top_i|net_proc_i|info_words[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|info_words[2][4]~feeder_combout\,
	ena => \eth_top_i|net_proc_i|Mux66~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|info_words[2][4]~q\);

-- Location: FF_X26_Y25_N13
\eth_top_i|eth_rx_ram_i|data_out_r[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \eth_top_i|eth_rx_ram_i|eth_rx_buf_i|altsyncram_component|auto_generated|q_b\(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_rx_ram_i|data_out_r\(14));

-- Location: FF_X25_Y28_N27
\eth_top_i|net_proc_i|info_words[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \eth_top_i|eth_rx_ram_i|data_out_r\(14),
	sload => VCC,
	ena => \eth_top_i|net_proc_i|Mux66~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|info_words[2][14]~q\);

-- Location: LCCOMB_X25_Y28_N28
\eth_top_i|net_proc_i|info_words[2][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|info_words[2][1]~feeder_combout\ = \eth_top_i|eth_rx_ram_i|data_out_r\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|eth_rx_ram_i|data_out_r\(1),
	combout => \eth_top_i|net_proc_i|info_words[2][1]~feeder_combout\);

-- Location: FF_X25_Y28_N29
\eth_top_i|net_proc_i|info_words[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|info_words[2][1]~feeder_combout\,
	ena => \eth_top_i|net_proc_i|Mux66~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|info_words[2][1]~q\);

-- Location: FF_X25_Y28_N1
\eth_top_i|net_proc_i|info_words[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \eth_top_i|eth_rx_ram_i|data_out_r\(2),
	sload => VCC,
	ena => \eth_top_i|net_proc_i|Mux66~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|info_words[2][2]~q\);

-- Location: LCCOMB_X25_Y28_N10
\eth_top_i|net_proc_i|info_words[2][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|info_words[2][3]~feeder_combout\ = \eth_top_i|eth_rx_ram_i|data_out_r\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|eth_rx_ram_i|data_out_r\(3),
	combout => \eth_top_i|net_proc_i|info_words[2][3]~feeder_combout\);

-- Location: FF_X25_Y28_N11
\eth_top_i|net_proc_i|info_words[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|info_words[2][3]~feeder_combout\,
	ena => \eth_top_i|net_proc_i|Mux66~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|info_words[2][3]~q\);

-- Location: LCCOMB_X25_Y28_N0
\reg_file_i|control1_reg_x|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|control1_reg_x|Equal0~0_combout\ = (!\eth_top_i|net_proc_i|info_words[2][5]~q\ & (!\eth_top_i|net_proc_i|info_words[2][1]~q\ & (!\eth_top_i|net_proc_i|info_words[2][2]~q\ & !\eth_top_i|net_proc_i|info_words[2][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|info_words[2][5]~q\,
	datab => \eth_top_i|net_proc_i|info_words[2][1]~q\,
	datac => \eth_top_i|net_proc_i|info_words[2][2]~q\,
	datad => \eth_top_i|net_proc_i|info_words[2][3]~q\,
	combout => \reg_file_i|control1_reg_x|Equal0~0_combout\);

-- Location: FF_X25_Y28_N17
\eth_top_i|net_proc_i|info_words[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \eth_top_i|eth_rx_ram_i|data_out_r\(15),
	sload => VCC,
	ena => \eth_top_i|net_proc_i|Mux66~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|info_words[2][15]~q\);

-- Location: LCCOMB_X25_Y29_N2
\eth_top_i|net_proc_i|info_words[2][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|info_words[2][9]~feeder_combout\ = \eth_top_i|eth_rx_ram_i|data_out_r\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|eth_rx_ram_i|data_out_r\(9),
	combout => \eth_top_i|net_proc_i|info_words[2][9]~feeder_combout\);

-- Location: FF_X25_Y29_N3
\eth_top_i|net_proc_i|info_words[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|info_words[2][9]~feeder_combout\,
	ena => \eth_top_i|net_proc_i|Mux66~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|info_words[2][9]~q\);

-- Location: FF_X25_Y28_N25
\eth_top_i|net_proc_i|info_words[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \eth_top_i|eth_rx_ram_i|data_out_r\(6),
	sload => VCC,
	ena => \eth_top_i|net_proc_i|Mux66~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|info_words[2][6]~q\);

-- Location: FF_X25_Y29_N9
\eth_top_i|net_proc_i|info_words[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \eth_top_i|eth_rx_ram_i|data_out_r\(8),
	sload => VCC,
	ena => \eth_top_i|net_proc_i|Mux66~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|info_words[2][8]~q\);

-- Location: LCCOMB_X25_Y28_N24
\reg_file_i|control1_reg_x|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|control1_reg_x|Equal0~1_combout\ = (!\eth_top_i|net_proc_i|info_words[2][7]~q\ & (!\eth_top_i|net_proc_i|info_words[2][9]~q\ & (!\eth_top_i|net_proc_i|info_words[2][6]~q\ & !\eth_top_i|net_proc_i|info_words[2][8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|info_words[2][7]~q\,
	datab => \eth_top_i|net_proc_i|info_words[2][9]~q\,
	datac => \eth_top_i|net_proc_i|info_words[2][6]~q\,
	datad => \eth_top_i|net_proc_i|info_words[2][8]~q\,
	combout => \reg_file_i|control1_reg_x|Equal0~1_combout\);

-- Location: LCCOMB_X25_Y28_N16
\reg_file_i|control1_reg_x|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|control1_reg_x|Equal0~3_combout\ = (\reg_file_i|control1_reg_x|Equal0~2_combout\ & (\reg_file_i|control1_reg_x|Equal0~0_combout\ & (!\eth_top_i|net_proc_i|info_words[2][15]~q\ & \reg_file_i|control1_reg_x|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_i|control1_reg_x|Equal0~2_combout\,
	datab => \reg_file_i|control1_reg_x|Equal0~0_combout\,
	datac => \eth_top_i|net_proc_i|info_words[2][15]~q\,
	datad => \reg_file_i|control1_reg_x|Equal0~1_combout\,
	combout => \reg_file_i|control1_reg_x|Equal0~3_combout\);

-- Location: LCCOMB_X25_Y28_N2
\reg_file_i|echo_reg_x|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|echo_reg_x|Equal0~0_combout\ = (!\eth_top_i|net_proc_i|info_words[2][0]~q\ & (!\eth_top_i|net_proc_i|info_words[2][4]~q\ & (!\eth_top_i|net_proc_i|info_words[2][14]~q\ & \reg_file_i|control1_reg_x|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|info_words[2][0]~q\,
	datab => \eth_top_i|net_proc_i|info_words[2][4]~q\,
	datac => \eth_top_i|net_proc_i|info_words[2][14]~q\,
	datad => \reg_file_i|control1_reg_x|Equal0~3_combout\,
	combout => \reg_file_i|echo_reg_x|Equal0~0_combout\);

-- Location: FF_X25_Y28_N3
\reg_file_i|echo_reg_x|reg_num_match_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|echo_reg_x|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|echo_reg_x|reg_num_match_r~q\);

-- Location: LCCOMB_X26_Y30_N0
\eth_top_i|net_proc_i|info_words[1][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|info_words[1][2]~feeder_combout\ = \eth_top_i|eth_rx_ram_i|data_out_r\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|eth_rx_ram_i|data_out_r\(2),
	combout => \eth_top_i|net_proc_i|info_words[1][2]~feeder_combout\);

-- Location: LCCOMB_X25_Y27_N18
\eth_top_i|net_proc_i|Mux66~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Mux66~1_combout\ = (\eth_top_i|net_proc_i|tx_ram_cnt_r\(1) & (!\eth_top_i|net_proc_i|tx_ram_cnt_r\(0) & \eth_top_i|net_proc_i|process_0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|tx_ram_cnt_r\(1),
	datac => \eth_top_i|net_proc_i|tx_ram_cnt_r\(0),
	datad => \eth_top_i|net_proc_i|process_0~8_combout\,
	combout => \eth_top_i|net_proc_i|Mux66~1_combout\);

-- Location: FF_X26_Y30_N1
\eth_top_i|net_proc_i|info_words[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|info_words[1][2]~feeder_combout\,
	ena => \eth_top_i|net_proc_i|Mux66~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|info_words[1][2]~q\);

-- Location: LCCOMB_X26_Y30_N24
\reg_file_i|echo_reg_x|reg_value_r[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|echo_reg_x|reg_value_r[2]~feeder_combout\ = \eth_top_i|net_proc_i|info_words[1][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|info_words[1][2]~q\,
	combout => \reg_file_i|echo_reg_x|reg_value_r[2]~feeder_combout\);

-- Location: FF_X25_Y26_N25
\eth_top_i|net_proc_i|reg_we_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Selector56~0_combout\,
	sclr => \eth_top_i|net_proc_i|ALT_INV_np_fsm.npf_caseComID~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|reg_we_r~q\);

-- Location: FF_X27_Y30_N17
\reg_file_i|control1_reg_x|eth_reg_we_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \eth_top_i|net_proc_i|reg_we_r~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|control1_reg_x|eth_reg_we_r~q\);

-- Location: LCCOMB_X27_Y30_N18
\reg_file_i|echo_reg_x|reg_value_r[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|echo_reg_x|reg_value_r[0]~0_combout\ = (\reg_file_i|echo_reg_x|reg_num_match_r~q\ & \reg_file_i|control1_reg_x|eth_reg_we_r~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_file_i|echo_reg_x|reg_num_match_r~q\,
	datad => \reg_file_i|control1_reg_x|eth_reg_we_r~q\,
	combout => \reg_file_i|echo_reg_x|reg_value_r[0]~0_combout\);

-- Location: FF_X26_Y30_N25
\reg_file_i|echo_reg_x|reg_value_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|echo_reg_x|reg_value_r[2]~feeder_combout\,
	ena => \reg_file_i|echo_reg_x|reg_value_r[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|echo_reg_x|reg_value_r\(2));

-- Location: LCCOMB_X29_Y30_N28
\reg_file_i|echo_reg_x|eth_reg_rdata_r~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|echo_reg_x|eth_reg_rdata_r~8_combout\ = (\reg_file_i|echo_reg_x|reg_num_match_r~q\ & \reg_file_i|echo_reg_x|reg_value_r\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_file_i|echo_reg_x|reg_num_match_r~q\,
	datad => \reg_file_i|echo_reg_x|reg_value_r\(2),
	combout => \reg_file_i|echo_reg_x|eth_reg_rdata_r~8_combout\);

-- Location: FF_X29_Y30_N29
\reg_file_i|echo_reg_x|eth_reg_rdata_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|echo_reg_x|eth_reg_rdata_r~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|echo_reg_x|eth_reg_rdata_r\(2));

-- Location: LCCOMB_X28_Y30_N26
\reg_file_i|spi_burst_len_reg_x|reg_value_r[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|spi_burst_len_reg_x|reg_value_r[2]~feeder_combout\ = \eth_top_i|net_proc_i|info_words[1][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|net_proc_i|info_words[1][2]~q\,
	combout => \reg_file_i|spi_burst_len_reg_x|reg_value_r[2]~feeder_combout\);

-- Location: LCCOMB_X25_Y28_N12
\eth_top_i|net_proc_i|info_words[2][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|info_words[2][0]~feeder_combout\ = \eth_top_i|eth_rx_ram_i|data_out_r\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|eth_rx_ram_i|data_out_r\(0),
	combout => \eth_top_i|net_proc_i|info_words[2][0]~feeder_combout\);

-- Location: FF_X25_Y28_N13
\eth_top_i|net_proc_i|info_words[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|info_words[2][0]~feeder_combout\,
	ena => \eth_top_i|net_proc_i|Mux66~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|info_words[2][0]~q\);

-- Location: LCCOMB_X28_Y29_N16
\reg_file_i|spi_burst_len_reg_x|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|spi_burst_len_reg_x|Equal0~0_combout\ = (\reg_file_i|control1_reg_x|Equal0~3_combout\ & (\eth_top_i|net_proc_i|info_words[2][4]~q\ & (\eth_top_i|net_proc_i|info_words[2][0]~q\ & !\eth_top_i|net_proc_i|info_words[2][14]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_i|control1_reg_x|Equal0~3_combout\,
	datab => \eth_top_i|net_proc_i|info_words[2][4]~q\,
	datac => \eth_top_i|net_proc_i|info_words[2][0]~q\,
	datad => \eth_top_i|net_proc_i|info_words[2][14]~q\,
	combout => \reg_file_i|spi_burst_len_reg_x|Equal0~0_combout\);

-- Location: FF_X28_Y29_N17
\reg_file_i|spi_burst_len_reg_x|reg_num_match_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|spi_burst_len_reg_x|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|spi_burst_len_reg_x|reg_num_match_r~q\);

-- Location: LCCOMB_X27_Y30_N20
\reg_file_i|spi_burst_len_reg_x|reg_value_r[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|spi_burst_len_reg_x|reg_value_r[0]~0_combout\ = (\reg_file_i|control1_reg_x|eth_reg_we_r~q\ & \reg_file_i|spi_burst_len_reg_x|reg_num_match_r~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_file_i|control1_reg_x|eth_reg_we_r~q\,
	datac => \reg_file_i|spi_burst_len_reg_x|reg_num_match_r~q\,
	combout => \reg_file_i|spi_burst_len_reg_x|reg_value_r[0]~0_combout\);

-- Location: FF_X28_Y30_N27
\reg_file_i|spi_burst_len_reg_x|reg_value_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|spi_burst_len_reg_x|reg_value_r[2]~feeder_combout\,
	ena => \reg_file_i|spi_burst_len_reg_x|reg_value_r[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|spi_burst_len_reg_x|reg_value_r\(2));

-- Location: LCCOMB_X29_Y30_N24
\reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~8_combout\ = (\reg_file_i|spi_burst_len_reg_x|reg_num_match_r~q\ & \reg_file_i|spi_burst_len_reg_x|reg_value_r\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_i|spi_burst_len_reg_x|reg_num_match_r~q\,
	datac => \reg_file_i|spi_burst_len_reg_x|reg_value_r\(2),
	combout => \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~8_combout\);

-- Location: FF_X29_Y30_N25
\reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r\(2));

-- Location: LCCOMB_X29_Y30_N26
\reg_file_i|eth_reg_rdata~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|eth_reg_rdata~9_combout\ = (\reg_file_i|spi_reg_num_reg_x|eth_reg_rdata_r\(2)) # ((\reg_file_i|echo_reg_x|eth_reg_rdata_r\(2)) # (\reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_i|spi_reg_num_reg_x|eth_reg_rdata_r\(2),
	datab => \reg_file_i|echo_reg_x|eth_reg_rdata_r\(2),
	datac => \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r\(2),
	combout => \reg_file_i|eth_reg_rdata~9_combout\);

-- Location: FF_X29_Y30_N27
\reg_file_i|eth_reg_rdata[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|eth_reg_rdata~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|eth_reg_rdata\(2));

-- Location: LCCOMB_X26_Y27_N30
\eth_top_i|net_proc_i|Mux112~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Mux112~0_combout\ = (\eth_top_i|net_proc_i|tx_ram_source_r\(0) & ((\eth_top_i|net_proc_i|tx_ram_source_r\(1)) # ((\reg_file_i|eth_reg_rdata\(2))))) # (!\eth_top_i|net_proc_i|tx_ram_source_r\(0) & 
-- (!\eth_top_i|net_proc_i|tx_ram_source_r\(1) & (\eth_top_i|eth_rx_ram_i|data_out_r\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|tx_ram_source_r\(0),
	datab => \eth_top_i|net_proc_i|tx_ram_source_r\(1),
	datac => \eth_top_i|eth_rx_ram_i|data_out_r\(2),
	datad => \reg_file_i|eth_reg_rdata\(2),
	combout => \eth_top_i|net_proc_i|Mux112~0_combout\);

-- Location: LCCOMB_X25_Y31_N26
\mem_file_i|adc_brd_ram_sel_dddr~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_file_i|adc_brd_ram_sel_dddr~feeder_combout\ = \mem_file_i|adc_brd_ram_sel_ddr~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_file_i|adc_brd_ram_sel_ddr~q\,
	combout => \mem_file_i|adc_brd_ram_sel_dddr~feeder_combout\);

-- Location: FF_X25_Y31_N27
\mem_file_i|adc_brd_ram_sel_dddr\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mem_file_i|adc_brd_ram_sel_dddr~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_file_i|adc_brd_ram_sel_dddr~q\);

-- Location: LCCOMB_X25_Y31_N16
\mem_file_i|eth_mem_rdata_r[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_file_i|eth_mem_rdata_r[2]~0_combout\ = !\mem_file_i|adc_brd_ram_sel_dddr~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_file_i|adc_brd_ram_sel_dddr~q\,
	combout => \mem_file_i|eth_mem_rdata_r[2]~0_combout\);

-- Location: FF_X25_Y31_N17
\mem_file_i|eth_mem_rdata_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mem_file_i|eth_mem_rdata_r[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_file_i|eth_mem_rdata_r\(2));

-- Location: LCCOMB_X28_Y26_N28
\eth_top_i|net_proc_i|proto_len_r[10]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|proto_len_r[10]~29_combout\ = (\eth_top_i|net_proc_i|tx_len_r\(9) & (\eth_top_i|net_proc_i|proto_len_r[9]~28\ & VCC)) # (!\eth_top_i|net_proc_i|tx_len_r\(9) & (!\eth_top_i|net_proc_i|proto_len_r[9]~28\))
-- \eth_top_i|net_proc_i|proto_len_r[10]~30\ = CARRY((!\eth_top_i|net_proc_i|tx_len_r\(9) & !\eth_top_i|net_proc_i|proto_len_r[9]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|tx_len_r\(9),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|proto_len_r[9]~28\,
	combout => \eth_top_i|net_proc_i|proto_len_r[10]~29_combout\,
	cout => \eth_top_i|net_proc_i|proto_len_r[10]~30\);

-- Location: FF_X28_Y26_N29
\eth_top_i|net_proc_i|proto_len_r[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|proto_len_r[10]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|proto_len_r\(10));

-- Location: LCCOMB_X29_Y26_N16
\eth_top_i|net_proc_i|Mux112~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Mux112~1_combout\ = (\eth_top_i|net_proc_i|tx_ram_source_r\(1) & ((\eth_top_i|net_proc_i|Mux112~0_combout\ & ((\eth_top_i|net_proc_i|proto_len_r\(10)))) # (!\eth_top_i|net_proc_i|Mux112~0_combout\ & 
-- (\mem_file_i|eth_mem_rdata_r\(2))))) # (!\eth_top_i|net_proc_i|tx_ram_source_r\(1) & (\eth_top_i|net_proc_i|Mux112~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|tx_ram_source_r\(1),
	datab => \eth_top_i|net_proc_i|Mux112~0_combout\,
	datac => \mem_file_i|eth_mem_rdata_r\(2),
	datad => \eth_top_i|net_proc_i|proto_len_r\(10),
	combout => \eth_top_i|net_proc_i|Mux112~1_combout\);

-- Location: LCCOMB_X29_Y26_N10
\eth_top_i|net_proc_i|Mux112~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Mux112~2_combout\ = (\eth_top_i|net_proc_i|tx_ram_source_r\(2) & (\eth_top_i|net_proc_i|ip_checksum_r\(10))) # (!\eth_top_i|net_proc_i|tx_ram_source_r\(2) & ((\eth_top_i|net_proc_i|Mux112~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|ip_checksum_r\(10),
	datac => \eth_top_i|net_proc_i|tx_ram_source_r\(2),
	datad => \eth_top_i|net_proc_i|Mux112~1_combout\,
	combout => \eth_top_i|net_proc_i|Mux112~2_combout\);

-- Location: LCCOMB_X26_Y28_N0
\eth_top_i|net_proc_i|Mux110~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Mux110~4_combout\ = (\eth_top_i|net_proc_i|tx_ram_source_r\(0) & (\eth_top_i|net_proc_i|proto_len_r\(11))) # (!\eth_top_i|net_proc_i|tx_ram_source_r\(0) & ((\mem_file_i|eth_mem_rdata_r\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|proto_len_r\(11),
	datab => \mem_file_i|eth_mem_rdata_r\(2),
	datad => \eth_top_i|net_proc_i|tx_ram_source_r\(0),
	combout => \eth_top_i|net_proc_i|Mux110~4_combout\);

-- Location: LCCOMB_X28_Y26_N30
\eth_top_i|net_proc_i|proto_len_r[11]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|proto_len_r[11]~31_combout\ = \eth_top_i|net_proc_i|proto_len_r[10]~30\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \eth_top_i|net_proc_i|proto_len_r[10]~30\,
	combout => \eth_top_i|net_proc_i|proto_len_r[11]~31_combout\);

-- Location: FF_X28_Y26_N31
\eth_top_i|net_proc_i|proto_len_r[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|proto_len_r[11]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|proto_len_r\(11));

-- Location: LCCOMB_X28_Y28_N22
\eth_top_i|net_proc_i|ip_checksum_r[12]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|ip_checksum_r[12]~25_combout\ = (\eth_top_i|net_proc_i|proto_len_r\(11) & ((\eth_top_i|net_proc_i|ip_checksum_r[11]~24\) # (GND))) # (!\eth_top_i|net_proc_i|proto_len_r\(11) & (!\eth_top_i|net_proc_i|ip_checksum_r[11]~24\))
-- \eth_top_i|net_proc_i|ip_checksum_r[12]~26\ = CARRY((\eth_top_i|net_proc_i|proto_len_r\(11)) # (!\eth_top_i|net_proc_i|ip_checksum_r[11]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|proto_len_r\(11),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|ip_checksum_r[11]~24\,
	combout => \eth_top_i|net_proc_i|ip_checksum_r[12]~25_combout\,
	cout => \eth_top_i|net_proc_i|ip_checksum_r[12]~26\);

-- Location: LCCOMB_X28_Y28_N24
\eth_top_i|net_proc_i|ip_checksum_r[13]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|ip_checksum_r[13]~27_combout\ = (\eth_top_i|net_proc_i|proto_len_r\(11) & (\eth_top_i|net_proc_i|ip_checksum_r[12]~26\ $ (GND))) # (!\eth_top_i|net_proc_i|proto_len_r\(11) & ((GND) # (!\eth_top_i|net_proc_i|ip_checksum_r[12]~26\)))
-- \eth_top_i|net_proc_i|ip_checksum_r[13]~28\ = CARRY((!\eth_top_i|net_proc_i|ip_checksum_r[12]~26\) # (!\eth_top_i|net_proc_i|proto_len_r\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|proto_len_r\(11),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|ip_checksum_r[12]~26\,
	combout => \eth_top_i|net_proc_i|ip_checksum_r[13]~27_combout\,
	cout => \eth_top_i|net_proc_i|ip_checksum_r[13]~28\);

-- Location: LCCOMB_X28_Y28_N26
\eth_top_i|net_proc_i|ip_checksum_r[14]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|ip_checksum_r[14]~29_combout\ = (\eth_top_i|net_proc_i|proto_len_r\(11) & ((\eth_top_i|net_proc_i|ip_checksum_r[13]~28\) # (GND))) # (!\eth_top_i|net_proc_i|proto_len_r\(11) & (!\eth_top_i|net_proc_i|ip_checksum_r[13]~28\))
-- \eth_top_i|net_proc_i|ip_checksum_r[14]~30\ = CARRY((\eth_top_i|net_proc_i|proto_len_r\(11)) # (!\eth_top_i|net_proc_i|ip_checksum_r[13]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|proto_len_r\(11),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|ip_checksum_r[13]~28\,
	combout => \eth_top_i|net_proc_i|ip_checksum_r[14]~29_combout\,
	cout => \eth_top_i|net_proc_i|ip_checksum_r[14]~30\);

-- Location: FF_X28_Y28_N27
\eth_top_i|net_proc_i|ip_checksum_r[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|ip_checksum_r[14]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|ip_checksum_r\(14));

-- Location: LCCOMB_X26_Y28_N2
\eth_top_i|net_proc_i|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|process_0~0_combout\ = (!\eth_top_i|net_proc_i|tx_ram_source_r\(1) & !\eth_top_i|net_proc_i|tx_ram_source_r\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|tx_ram_source_r\(1),
	datad => \eth_top_i|net_proc_i|tx_ram_source_r\(2),
	combout => \eth_top_i|net_proc_i|process_0~0_combout\);

-- Location: LCCOMB_X26_Y28_N4
\eth_top_i|net_proc_i|Mux108~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Mux108~1_combout\ = (\eth_top_i|net_proc_i|Mux108~0_combout\ & (((\eth_top_i|net_proc_i|ip_checksum_r\(14)) # (\eth_top_i|net_proc_i|process_0~0_combout\)))) # (!\eth_top_i|net_proc_i|Mux108~0_combout\ & 
-- (\eth_top_i|net_proc_i|Mux110~4_combout\ & ((!\eth_top_i|net_proc_i|process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|Mux108~0_combout\,
	datab => \eth_top_i|net_proc_i|Mux110~4_combout\,
	datac => \eth_top_i|net_proc_i|ip_checksum_r\(14),
	datad => \eth_top_i|net_proc_i|process_0~0_combout\,
	combout => \eth_top_i|net_proc_i|Mux108~1_combout\);

-- Location: LCCOMB_X26_Y27_N8
\eth_top_i|net_proc_i|Mux104~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Mux104~0_combout\ = (\eth_top_i|net_proc_i|tx_ram_source_r\(0) & (\eth_top_i|net_proc_i|tx_ram_source_r\(1))) # (!\eth_top_i|net_proc_i|tx_ram_source_r\(0) & ((\eth_top_i|net_proc_i|tx_ram_source_r\(1) & 
-- ((\mem_file_i|eth_mem_rdata_r\(2)))) # (!\eth_top_i|net_proc_i|tx_ram_source_r\(1) & (\eth_top_i|eth_rx_ram_i|data_out_r\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|tx_ram_source_r\(0),
	datab => \eth_top_i|net_proc_i|tx_ram_source_r\(1),
	datac => \eth_top_i|eth_rx_ram_i|data_out_r\(10),
	datad => \mem_file_i|eth_mem_rdata_r\(2),
	combout => \eth_top_i|net_proc_i|Mux104~0_combout\);

-- Location: FF_X28_Y26_N13
\eth_top_i|net_proc_i|proto_len_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|proto_len_r[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|proto_len_r\(2));

-- Location: LCCOMB_X29_Y26_N6
\eth_top_i|net_proc_i|Mux104~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Mux104~1_combout\ = (\eth_top_i|net_proc_i|Mux104~0_combout\ & (((\eth_top_i|net_proc_i|proto_len_r\(2)) # (!\eth_top_i|net_proc_i|tx_ram_source_r\(0))))) # (!\eth_top_i|net_proc_i|Mux104~0_combout\ & (\reg_file_i|eth_reg_rdata\(10) 
-- & (\eth_top_i|net_proc_i|tx_ram_source_r\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_i|eth_reg_rdata\(10),
	datab => \eth_top_i|net_proc_i|Mux104~0_combout\,
	datac => \eth_top_i|net_proc_i|tx_ram_source_r\(0),
	datad => \eth_top_i|net_proc_i|proto_len_r\(2),
	combout => \eth_top_i|net_proc_i|Mux104~1_combout\);

-- Location: LCCOMB_X29_Y26_N8
\eth_top_i|net_proc_i|Mux104~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Mux104~2_combout\ = (\eth_top_i|net_proc_i|tx_ram_source_r\(2) & (\eth_top_i|net_proc_i|ip_checksum_r\(2))) # (!\eth_top_i|net_proc_i|tx_ram_source_r\(2) & ((\eth_top_i|net_proc_i|Mux104~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|ip_checksum_r\(2),
	datac => \eth_top_i|net_proc_i|tx_ram_source_r\(2),
	datad => \eth_top_i|net_proc_i|Mux104~1_combout\,
	combout => \eth_top_i|net_proc_i|Mux104~2_combout\);

-- Location: FF_X28_Y28_N11
\eth_top_i|net_proc_i|ip_checksum_r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|ip_checksum_r[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|ip_checksum_r\(6));

-- Location: LCCOMB_X26_Y30_N22
\eth_top_i|net_proc_i|info_words[1][14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|info_words[1][14]~feeder_combout\ = \eth_top_i|eth_rx_ram_i|data_out_r\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|eth_rx_ram_i|data_out_r\(14),
	combout => \eth_top_i|net_proc_i|info_words[1][14]~feeder_combout\);

-- Location: FF_X26_Y30_N23
\eth_top_i|net_proc_i|info_words[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|info_words[1][14]~feeder_combout\,
	ena => \eth_top_i|net_proc_i|Mux66~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|info_words[1][14]~q\);

-- Location: LCCOMB_X26_Y30_N6
\reg_file_i|echo_reg_x|reg_value_r[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|echo_reg_x|reg_value_r[14]~feeder_combout\ = \eth_top_i|net_proc_i|info_words[1][14]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|net_proc_i|info_words[1][14]~q\,
	combout => \reg_file_i|echo_reg_x|reg_value_r[14]~feeder_combout\);

-- Location: FF_X26_Y30_N7
\reg_file_i|echo_reg_x|reg_value_r[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|echo_reg_x|reg_value_r[14]~feeder_combout\,
	ena => \reg_file_i|echo_reg_x|reg_value_r[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|echo_reg_x|reg_value_r\(14));

-- Location: LCCOMB_X25_Y30_N20
\reg_file_i|echo_reg_x|eth_reg_rdata_r~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|echo_reg_x|eth_reg_rdata_r~11_combout\ = (\reg_file_i|echo_reg_x|reg_num_match_r~q\ & \reg_file_i|echo_reg_x|reg_value_r\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_i|echo_reg_x|reg_num_match_r~q\,
	datad => \reg_file_i|echo_reg_x|reg_value_r\(14),
	combout => \reg_file_i|echo_reg_x|eth_reg_rdata_r~11_combout\);

-- Location: FF_X25_Y30_N21
\reg_file_i|echo_reg_x|eth_reg_rdata_r[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|echo_reg_x|eth_reg_rdata_r~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|echo_reg_x|eth_reg_rdata_r\(14));

-- Location: FF_X25_Y28_N31
\eth_top_i|net_proc_i|info_words[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \eth_top_i|eth_rx_ram_i|data_out_r\(5),
	sload => VCC,
	ena => \eth_top_i|net_proc_i|Mux66~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|info_words[2][5]~q\);

-- Location: LCCOMB_X25_Y28_N30
\reg_file_i|fw_ver_reg_x|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|fw_ver_reg_x|Equal0~0_combout\ = (!\eth_top_i|net_proc_i|info_words[2][2]~q\ & (\eth_top_i|net_proc_i|info_words[2][4]~q\ & (\eth_top_i|net_proc_i|info_words[2][5]~q\ & !\eth_top_i|net_proc_i|info_words[2][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|info_words[2][2]~q\,
	datab => \eth_top_i|net_proc_i|info_words[2][4]~q\,
	datac => \eth_top_i|net_proc_i|info_words[2][5]~q\,
	datad => \eth_top_i|net_proc_i|info_words[2][3]~q\,
	combout => \reg_file_i|fw_ver_reg_x|Equal0~0_combout\);

-- Location: LCCOMB_X25_Y29_N8
\reg_file_i|fw_ver_reg_x|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|fw_ver_reg_x|Equal0~1_combout\ = (\eth_top_i|net_proc_i|info_words[2][7]~q\ & (\eth_top_i|net_proc_i|info_words[2][6]~q\ & (\eth_top_i|net_proc_i|info_words[2][8]~q\ & \eth_top_i|net_proc_i|info_words[2][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|info_words[2][7]~q\,
	datab => \eth_top_i|net_proc_i|info_words[2][6]~q\,
	datac => \eth_top_i|net_proc_i|info_words[2][8]~q\,
	datad => \eth_top_i|net_proc_i|info_words[2][9]~q\,
	combout => \reg_file_i|fw_ver_reg_x|Equal0~1_combout\);

-- Location: LCCOMB_X25_Y28_N26
\reg_file_i|fw_ver_reg_x|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|fw_ver_reg_x|Equal0~3_combout\ = (\eth_top_i|net_proc_i|info_words[2][14]~q\ & \eth_top_i|net_proc_i|info_words[2][15]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|net_proc_i|info_words[2][14]~q\,
	datad => \eth_top_i|net_proc_i|info_words[2][15]~q\,
	combout => \reg_file_i|fw_ver_reg_x|Equal0~3_combout\);

-- Location: LCCOMB_X25_Y29_N22
\reg_file_i|fw_ver_reg_x|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|fw_ver_reg_x|Equal0~4_combout\ = (\reg_file_i|fw_ver_reg_x|Equal0~2_combout\ & (\reg_file_i|fw_ver_reg_x|Equal0~0_combout\ & (\reg_file_i|fw_ver_reg_x|Equal0~1_combout\ & \reg_file_i|fw_ver_reg_x|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_i|fw_ver_reg_x|Equal0~2_combout\,
	datab => \reg_file_i|fw_ver_reg_x|Equal0~0_combout\,
	datac => \reg_file_i|fw_ver_reg_x|Equal0~1_combout\,
	datad => \reg_file_i|fw_ver_reg_x|Equal0~3_combout\,
	combout => \reg_file_i|fw_ver_reg_x|Equal0~4_combout\);

-- Location: LCCOMB_X28_Y29_N18
\reg_file_i|id_reg_x|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|id_reg_x|Equal0~0_combout\ = (!\eth_top_i|net_proc_i|info_words[2][1]~q\ & (!\eth_top_i|net_proc_i|info_words[2][0]~q\ & \reg_file_i|fw_ver_reg_x|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|info_words[2][1]~q\,
	datac => \eth_top_i|net_proc_i|info_words[2][0]~q\,
	datad => \reg_file_i|fw_ver_reg_x|Equal0~4_combout\,
	combout => \reg_file_i|id_reg_x|Equal0~0_combout\);

-- Location: FF_X28_Y29_N19
\reg_file_i|id_reg_x|reg_num_match_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|id_reg_x|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|id_reg_x|reg_num_match_r~q\);

-- Location: LCCOMB_X28_Y29_N22
\reg_file_i|id_reg_x|eth_reg_rdata_r[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|id_reg_x|eth_reg_rdata_r[0]~feeder_combout\ = \reg_file_i|id_reg_x|reg_num_match_r~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_file_i|id_reg_x|reg_num_match_r~q\,
	combout => \reg_file_i|id_reg_x|eth_reg_rdata_r[0]~feeder_combout\);

-- Location: FF_X28_Y29_N23
\reg_file_i|id_reg_x|eth_reg_rdata_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|id_reg_x|eth_reg_rdata_r[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|id_reg_x|eth_reg_rdata_r\(0));

-- Location: LCCOMB_X25_Y30_N10
\reg_file_i|eth_reg_rdata~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|eth_reg_rdata~12_combout\ = (\reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r\(14)) # ((\reg_file_i|echo_reg_x|eth_reg_rdata_r\(14)) # (\reg_file_i|id_reg_x|eth_reg_rdata_r\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r\(14),
	datab => \reg_file_i|echo_reg_x|eth_reg_rdata_r\(14),
	datac => \reg_file_i|id_reg_x|eth_reg_rdata_r\(0),
	combout => \reg_file_i|eth_reg_rdata~12_combout\);

-- Location: FF_X25_Y30_N11
\reg_file_i|eth_reg_rdata[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|eth_reg_rdata~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|eth_reg_rdata\(14));

-- Location: LCCOMB_X29_Y26_N2
\eth_top_i|net_proc_i|Mux100~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Mux100~0_combout\ = (\eth_top_i|net_proc_i|tx_ram_source_r\(0) & ((\reg_file_i|eth_reg_rdata\(14)) # ((\eth_top_i|net_proc_i|tx_ram_source_r\(1))))) # (!\eth_top_i|net_proc_i|tx_ram_source_r\(0) & 
-- (((!\eth_top_i|net_proc_i|tx_ram_source_r\(1) & \eth_top_i|eth_rx_ram_i|data_out_r\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|tx_ram_source_r\(0),
	datab => \reg_file_i|eth_reg_rdata\(14),
	datac => \eth_top_i|net_proc_i|tx_ram_source_r\(1),
	datad => \eth_top_i|eth_rx_ram_i|data_out_r\(14),
	combout => \eth_top_i|net_proc_i|Mux100~0_combout\);

-- Location: LCCOMB_X29_Y26_N20
\eth_top_i|net_proc_i|Mux100~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Mux100~1_combout\ = (\eth_top_i|net_proc_i|tx_ram_source_r\(1) & ((\eth_top_i|net_proc_i|Mux100~0_combout\ & ((\eth_top_i|net_proc_i|proto_len_r\(6)))) # (!\eth_top_i|net_proc_i|Mux100~0_combout\ & 
-- (\mem_file_i|eth_mem_rdata_r\(2))))) # (!\eth_top_i|net_proc_i|tx_ram_source_r\(1) & (\eth_top_i|net_proc_i|Mux100~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|tx_ram_source_r\(1),
	datab => \eth_top_i|net_proc_i|Mux100~0_combout\,
	datac => \mem_file_i|eth_mem_rdata_r\(2),
	datad => \eth_top_i|net_proc_i|proto_len_r\(6),
	combout => \eth_top_i|net_proc_i|Mux100~1_combout\);

-- Location: LCCOMB_X29_Y26_N22
\eth_top_i|net_proc_i|Mux100~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Mux100~2_combout\ = (\eth_top_i|net_proc_i|tx_ram_source_r\(2) & (\eth_top_i|net_proc_i|ip_checksum_r\(6))) # (!\eth_top_i|net_proc_i|tx_ram_source_r\(2) & ((\eth_top_i|net_proc_i|Mux100~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|tx_ram_source_r\(2),
	datac => \eth_top_i|net_proc_i|ip_checksum_r\(6),
	datad => \eth_top_i|net_proc_i|Mux100~1_combout\,
	combout => \eth_top_i|net_proc_i|Mux100~2_combout\);

-- Location: LCCOMB_X24_Y25_N24
\eth_top_i|net_proc_i|WideOr23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|WideOr23~combout\ = (\eth_top_i|net_proc_i|np_fsm.npf_reset~q\) # (((!\eth_top_i|net_proc_i|np_fsm.npf_idle~q\) # (!\eth_top_i|net_proc_i|WideOr23~0_combout\)) # (!\eth_top_i|net_proc_i|WideOr23~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|np_fsm.npf_reset~q\,
	datab => \eth_top_i|net_proc_i|WideOr23~1_combout\,
	datac => \eth_top_i|net_proc_i|WideOr23~0_combout\,
	datad => \eth_top_i|net_proc_i|np_fsm.npf_idle~q\,
	combout => \eth_top_i|net_proc_i|WideOr23~combout\);

-- Location: LCCOMB_X25_Y25_N6
\eth_top_i|net_proc_i|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add3~0_combout\ = \eth_top_i|net_proc_i|tx_ram_addr_r\(0) $ (VCC)
-- \eth_top_i|net_proc_i|Add3~1\ = CARRY(\eth_top_i|net_proc_i|tx_ram_addr_r\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|tx_ram_addr_r\(0),
	datad => VCC,
	combout => \eth_top_i|net_proc_i|Add3~0_combout\,
	cout => \eth_top_i|net_proc_i|Add3~1\);

-- Location: LCCOMB_X24_Y26_N2
\eth_top_i|net_proc_i|Selector66~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector66~3_combout\ = (!\eth_top_i|net_proc_i|np_fsm.npf_store_udp_len~q\ & (!\eth_top_i|net_proc_i|np_fsm.npf_store_reg_rdata3~q\ & !\eth_top_i|net_proc_i|np_fsm.npf_read_mem5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|np_fsm.npf_store_udp_len~q\,
	datab => \eth_top_i|net_proc_i|np_fsm.npf_store_reg_rdata3~q\,
	datac => \eth_top_i|net_proc_i|np_fsm.npf_read_mem5~q\,
	combout => \eth_top_i|net_proc_i|Selector66~3_combout\);

-- Location: LCCOMB_X23_Y25_N28
\eth_top_i|net_proc_i|Selector66~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector66~4_combout\ = ((\eth_top_i|net_proc_i|Add3~0_combout\ & ((\eth_top_i|net_proc_i|Selector66~2_combout\) # (\eth_top_i|net_proc_i|Selector62~0_combout\)))) # (!\eth_top_i|net_proc_i|Selector66~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|Selector66~2_combout\,
	datab => \eth_top_i|net_proc_i|Add3~0_combout\,
	datac => \eth_top_i|net_proc_i|Selector66~3_combout\,
	datad => \eth_top_i|net_proc_i|Selector62~0_combout\,
	combout => \eth_top_i|net_proc_i|Selector66~4_combout\);

-- Location: LCCOMB_X25_Y25_N0
\eth_top_i|net_proc_i|Selector66~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector66~5_combout\ = (\eth_top_i|net_proc_i|Selector66~4_combout\) # ((\eth_top_i|net_proc_i|Add3~0_combout\ & ((\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~3_combout\) # (\eth_top_i|net_proc_i|WideOr23~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~3_combout\,
	datab => \eth_top_i|net_proc_i|WideOr23~combout\,
	datac => \eth_top_i|net_proc_i|Selector66~4_combout\,
	datad => \eth_top_i|net_proc_i|Add3~0_combout\,
	combout => \eth_top_i|net_proc_i|Selector66~5_combout\);

-- Location: FF_X25_Y25_N1
\eth_top_i|net_proc_i|tx_ram_addr_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Selector66~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|tx_ram_addr_r\(0));

-- Location: LCCOMB_X25_Y26_N0
\eth_top_i|net_proc_i|Selector65~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector65~1_combout\ = (\eth_top_i|net_proc_i|Selector65~0_combout\) # ((\eth_top_i|net_proc_i|WideOr23~combout\) # ((\eth_top_i|net_proc_i|Selector62~0_combout\) # (\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|Selector65~0_combout\,
	datab => \eth_top_i|net_proc_i|WideOr23~combout\,
	datac => \eth_top_i|net_proc_i|Selector62~0_combout\,
	datad => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~3_combout\,
	combout => \eth_top_i|net_proc_i|Selector65~1_combout\);

-- Location: LCCOMB_X25_Y26_N10
\eth_top_i|net_proc_i|Selector65~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector65~2_combout\ = (\eth_top_i|net_proc_i|Add3~2_combout\ & ((\eth_top_i|net_proc_i|np_fsm.npf_copyPacketInfo~q\) # ((\eth_top_i|net_proc_i|Selector65~1_combout\)))) # (!\eth_top_i|net_proc_i|Add3~2_combout\ & 
-- (\eth_top_i|net_proc_i|np_fsm.npf_copyPacketInfo~q\ & (\eth_top_i|net_proc_i|tx_ram_data_last_r~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|Add3~2_combout\,
	datab => \eth_top_i|net_proc_i|np_fsm.npf_copyPacketInfo~q\,
	datac => \eth_top_i|net_proc_i|tx_ram_data_last_r~q\,
	datad => \eth_top_i|net_proc_i|Selector65~1_combout\,
	combout => \eth_top_i|net_proc_i|Selector65~2_combout\);

-- Location: LCCOMB_X25_Y26_N26
\eth_top_i|net_proc_i|Selector65~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector65~3_combout\ = (\eth_top_i|net_proc_i|np_fsm.npf_read_mem5~q\) # ((\eth_top_i|net_proc_i|np_fsm.npf_store_udp_len~q\) # (\eth_top_i|net_proc_i|Selector65~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|np_fsm.npf_read_mem5~q\,
	datac => \eth_top_i|net_proc_i|np_fsm.npf_store_udp_len~q\,
	datad => \eth_top_i|net_proc_i|Selector65~2_combout\,
	combout => \eth_top_i|net_proc_i|Selector65~3_combout\);

-- Location: FF_X25_Y26_N27
\eth_top_i|net_proc_i|tx_ram_addr_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Selector65~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|tx_ram_addr_r\(1));

-- Location: LCCOMB_X24_Y26_N10
\eth_top_i|net_proc_i|Selector2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector2~3_combout\ = (\eth_top_i|net_proc_i|tx_ram_data_last_r~q\ & ((\eth_top_i|net_proc_i|np_fsm.npf_read_mem6~q\) # (\eth_top_i|net_proc_i|np_fsm.npf_write_mem2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|np_fsm.npf_read_mem6~q\,
	datab => \eth_top_i|net_proc_i|tx_ram_data_last_r~q\,
	datad => \eth_top_i|net_proc_i|np_fsm.npf_write_mem2~q\,
	combout => \eth_top_i|net_proc_i|Selector2~3_combout\);

-- Location: LCCOMB_X24_Y26_N30
\eth_top_i|net_proc_i|Selector64~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector64~0_combout\ = (\eth_top_i|net_proc_i|WideOr23~combout\) # ((\eth_top_i|net_proc_i|np_fsm.npf_copyDestMAC~q\) # ((\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~4_combout\) # (!\eth_top_i|net_proc_i|WideOr4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|WideOr23~combout\,
	datab => \eth_top_i|net_proc_i|np_fsm.npf_copyDestMAC~q\,
	datac => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~4_combout\,
	datad => \eth_top_i|net_proc_i|WideOr4~0_combout\,
	combout => \eth_top_i|net_proc_i|Selector64~0_combout\);

-- Location: LCCOMB_X24_Y26_N0
\eth_top_i|net_proc_i|Selector64~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector64~1_combout\ = (\eth_top_i|net_proc_i|Selector2~3_combout\) # (((\eth_top_i|net_proc_i|Add3~4_combout\ & \eth_top_i|net_proc_i|Selector64~0_combout\)) # (!\eth_top_i|net_proc_i|Selector3~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|Add3~4_combout\,
	datab => \eth_top_i|net_proc_i|Selector2~3_combout\,
	datac => \eth_top_i|net_proc_i|Selector64~0_combout\,
	datad => \eth_top_i|net_proc_i|Selector3~5_combout\,
	combout => \eth_top_i|net_proc_i|Selector64~1_combout\);

-- Location: FF_X24_Y26_N1
\eth_top_i|net_proc_i|tx_ram_addr_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Selector64~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|tx_ram_addr_r\(2));

-- Location: LCCOMB_X25_Y25_N4
\eth_top_i|net_proc_i|Selector63~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector63~0_combout\ = (\eth_top_i|net_proc_i|Add3~6_combout\ & (((\eth_top_i|net_proc_i|np_fsm.npf_write_mem2~q\) # (\eth_top_i|net_proc_i|np_fsm.npf_copyPacketInfo~q\)))) # (!\eth_top_i|net_proc_i|Add3~6_combout\ & 
-- (\eth_top_i|net_proc_i|tx_ram_data_last_r~q\ & ((\eth_top_i|net_proc_i|np_fsm.npf_write_mem2~q\) # (\eth_top_i|net_proc_i|np_fsm.npf_copyPacketInfo~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|Add3~6_combout\,
	datab => \eth_top_i|net_proc_i|tx_ram_data_last_r~q\,
	datac => \eth_top_i|net_proc_i|np_fsm.npf_write_mem2~q\,
	datad => \eth_top_i|net_proc_i|np_fsm.npf_copyPacketInfo~q\,
	combout => \eth_top_i|net_proc_i|Selector63~0_combout\);

-- Location: LCCOMB_X23_Y25_N6
\eth_top_i|net_proc_i|Selector63~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector63~1_combout\ = (\eth_top_i|net_proc_i|Add3~6_combout\ & ((\eth_top_i|net_proc_i|np_fsm.npf_caseComID~q\) # ((\eth_top_i|net_proc_i|np_fsm.npf_read_mem6~q\)))) # (!\eth_top_i|net_proc_i|Add3~6_combout\ & 
-- (((\eth_top_i|net_proc_i|np_fsm.npf_read_mem6~q\ & \eth_top_i|net_proc_i|tx_ram_data_last_r~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|Add3~6_combout\,
	datab => \eth_top_i|net_proc_i|np_fsm.npf_caseComID~q\,
	datac => \eth_top_i|net_proc_i|np_fsm.npf_read_mem6~q\,
	datad => \eth_top_i|net_proc_i|tx_ram_data_last_r~q\,
	combout => \eth_top_i|net_proc_i|Selector63~1_combout\);

-- Location: LCCOMB_X25_Y25_N30
\eth_top_i|net_proc_i|Selector63~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector63~2_combout\ = (\eth_top_i|net_proc_i|Selector63~0_combout\) # ((\eth_top_i|net_proc_i|Selector63~1_combout\) # (!\eth_top_i|net_proc_i|Selector3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|Selector63~0_combout\,
	datac => \eth_top_i|net_proc_i|Selector3~4_combout\,
	datad => \eth_top_i|net_proc_i|Selector63~1_combout\,
	combout => \eth_top_i|net_proc_i|Selector63~2_combout\);

-- Location: LCCOMB_X25_Y25_N12
\eth_top_i|net_proc_i|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add3~6_combout\ = (\eth_top_i|net_proc_i|tx_ram_addr_r\(3) & (!\eth_top_i|net_proc_i|Add3~5\)) # (!\eth_top_i|net_proc_i|tx_ram_addr_r\(3) & ((\eth_top_i|net_proc_i|Add3~5\) # (GND)))
-- \eth_top_i|net_proc_i|Add3~7\ = CARRY((!\eth_top_i|net_proc_i|Add3~5\) # (!\eth_top_i|net_proc_i|tx_ram_addr_r\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|tx_ram_addr_r\(3),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|Add3~5\,
	combout => \eth_top_i|net_proc_i|Add3~6_combout\,
	cout => \eth_top_i|net_proc_i|Add3~7\);

-- Location: LCCOMB_X25_Y25_N2
\eth_top_i|net_proc_i|Selector63~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector63~3_combout\ = (\eth_top_i|net_proc_i|Selector63~2_combout\) # ((\eth_top_i|net_proc_i|Add3~6_combout\ & ((\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~3_combout\) # (\eth_top_i|net_proc_i|WideOr23~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~3_combout\,
	datab => \eth_top_i|net_proc_i|WideOr23~combout\,
	datac => \eth_top_i|net_proc_i|Selector63~2_combout\,
	datad => \eth_top_i|net_proc_i|Add3~6_combout\,
	combout => \eth_top_i|net_proc_i|Selector63~3_combout\);

-- Location: FF_X25_Y25_N3
\eth_top_i|net_proc_i|tx_ram_addr_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Selector63~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|tx_ram_addr_r\(3));

-- Location: LCCOMB_X25_Y25_N14
\eth_top_i|net_proc_i|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add3~8_combout\ = (\eth_top_i|net_proc_i|tx_ram_addr_r\(4) & (\eth_top_i|net_proc_i|Add3~7\ $ (GND))) # (!\eth_top_i|net_proc_i|tx_ram_addr_r\(4) & (!\eth_top_i|net_proc_i|Add3~7\ & VCC))
-- \eth_top_i|net_proc_i|Add3~9\ = CARRY((\eth_top_i|net_proc_i|tx_ram_addr_r\(4) & !\eth_top_i|net_proc_i|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|tx_ram_addr_r\(4),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|Add3~7\,
	combout => \eth_top_i|net_proc_i|Add3~8_combout\,
	cout => \eth_top_i|net_proc_i|Add3~9\);

-- Location: LCCOMB_X25_Y26_N30
\eth_top_i|net_proc_i|Selector62~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector62~1_combout\ = ((\eth_top_i|net_proc_i|tx_ram_data_last_r~q\ & \eth_top_i|net_proc_i|np_fsm.npf_copyPacketInfo~q\)) # (!\eth_top_i|net_proc_i|WideOr24~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|WideOr24~0_combout\,
	datac => \eth_top_i|net_proc_i|tx_ram_data_last_r~q\,
	datad => \eth_top_i|net_proc_i|np_fsm.npf_copyPacketInfo~q\,
	combout => \eth_top_i|net_proc_i|Selector62~1_combout\);

-- Location: LCCOMB_X24_Y25_N2
\eth_top_i|net_proc_i|Selector62~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector62~2_combout\ = (\eth_top_i|net_proc_i|Selector62~0_combout\) # ((\eth_top_i|net_proc_i|Selector65~0_combout\) # ((\eth_top_i|net_proc_i|np_fsm.npf_copyPacketInfo~q\) # (\eth_top_i|net_proc_i|WideOr23~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|Selector62~0_combout\,
	datab => \eth_top_i|net_proc_i|Selector65~0_combout\,
	datac => \eth_top_i|net_proc_i|np_fsm.npf_copyPacketInfo~q\,
	datad => \eth_top_i|net_proc_i|WideOr23~combout\,
	combout => \eth_top_i|net_proc_i|Selector62~2_combout\);

-- Location: LCCOMB_X25_Y25_N28
\eth_top_i|net_proc_i|Selector62~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector62~3_combout\ = (\eth_top_i|net_proc_i|Selector62~1_combout\) # ((\eth_top_i|net_proc_i|Add3~8_combout\ & ((\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~3_combout\) # (\eth_top_i|net_proc_i|Selector62~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~3_combout\,
	datab => \eth_top_i|net_proc_i|Add3~8_combout\,
	datac => \eth_top_i|net_proc_i|Selector62~1_combout\,
	datad => \eth_top_i|net_proc_i|Selector62~2_combout\,
	combout => \eth_top_i|net_proc_i|Selector62~3_combout\);

-- Location: FF_X25_Y25_N29
\eth_top_i|net_proc_i|tx_ram_addr_r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Selector62~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|tx_ram_addr_r\(4));

-- Location: LCCOMB_X25_Y25_N16
\eth_top_i|net_proc_i|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add3~10_combout\ = (\eth_top_i|net_proc_i|tx_ram_addr_r\(5) & (!\eth_top_i|net_proc_i|Add3~9\)) # (!\eth_top_i|net_proc_i|tx_ram_addr_r\(5) & ((\eth_top_i|net_proc_i|Add3~9\) # (GND)))
-- \eth_top_i|net_proc_i|Add3~11\ = CARRY((!\eth_top_i|net_proc_i|Add3~9\) # (!\eth_top_i|net_proc_i|tx_ram_addr_r\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|tx_ram_addr_r\(5),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|Add3~9\,
	combout => \eth_top_i|net_proc_i|Add3~10_combout\,
	cout => \eth_top_i|net_proc_i|Add3~11\);

-- Location: LCCOMB_X26_Y25_N24
\eth_top_i|net_proc_i|Selector61~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector61~0_combout\ = (!\eth_top_i|net_proc_i|tx_ram_addr_r[5]~4_combout\ & \eth_top_i|net_proc_i|Add3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|tx_ram_addr_r[5]~4_combout\,
	datac => \eth_top_i|net_proc_i|Add3~10_combout\,
	combout => \eth_top_i|net_proc_i|Selector61~0_combout\);

-- Location: FF_X26_Y25_N25
\eth_top_i|net_proc_i|tx_ram_addr_r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Selector61~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|tx_ram_addr_r\(5));

-- Location: LCCOMB_X25_Y25_N18
\eth_top_i|net_proc_i|Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add3~12_combout\ = (\eth_top_i|net_proc_i|tx_ram_addr_r\(6) & (\eth_top_i|net_proc_i|Add3~11\ $ (GND))) # (!\eth_top_i|net_proc_i|tx_ram_addr_r\(6) & (!\eth_top_i|net_proc_i|Add3~11\ & VCC))
-- \eth_top_i|net_proc_i|Add3~13\ = CARRY((\eth_top_i|net_proc_i|tx_ram_addr_r\(6) & !\eth_top_i|net_proc_i|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|tx_ram_addr_r\(6),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|Add3~11\,
	combout => \eth_top_i|net_proc_i|Add3~12_combout\,
	cout => \eth_top_i|net_proc_i|Add3~13\);

-- Location: LCCOMB_X24_Y27_N16
\eth_top_i|net_proc_i|tx_ram_addr_r[5]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|tx_ram_addr_r[5]~3_combout\ = (\eth_top_i|net_proc_i|np_fsm.npf_copyDestMAC~q\ & (\eth_top_i|net_proc_i|rx_ram_data_valid_r~q\ & ((\eth_top_i|net_proc_i|tx_ram_addr_r[5]~2_combout\) # 
-- (!\eth_top_i|net_proc_i|np_fsm.npf_caseComID~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|np_fsm.npf_copyDestMAC~q\,
	datab => \eth_top_i|net_proc_i|tx_ram_addr_r[5]~2_combout\,
	datac => \eth_top_i|net_proc_i|np_fsm.npf_caseComID~q\,
	datad => \eth_top_i|net_proc_i|rx_ram_data_valid_r~q\,
	combout => \eth_top_i|net_proc_i|tx_ram_addr_r[5]~3_combout\);

-- Location: LCCOMB_X26_Y25_N30
\eth_top_i|net_proc_i|process_0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|process_0~7_combout\ = (\eth_top_i|eth_rx_ram_i|data_out_r\(13) & (!\eth_top_i|eth_rx_ram_i|data_out_r\(14) & (\eth_top_i|eth_rx_ram_i|data_out_r\(15) & \eth_top_i|net_proc_i|process_0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_rx_ram_i|data_out_r\(13),
	datab => \eth_top_i|eth_rx_ram_i|data_out_r\(14),
	datac => \eth_top_i|eth_rx_ram_i|data_out_r\(15),
	datad => \eth_top_i|net_proc_i|process_0~6_combout\,
	combout => \eth_top_i|net_proc_i|process_0~7_combout\);

-- Location: LCCOMB_X26_Y25_N28
\eth_top_i|net_proc_i|tx_ram_addr_r[5]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|tx_ram_addr_r[5]~1_combout\ = ((\eth_top_i|net_proc_i|tx_ram_addr_r[5]~0_combout\ & (\eth_top_i|net_proc_i|Selector26~0_combout\ & !\eth_top_i|net_proc_i|WideOr23~combout\))) # (!\eth_top_i|net_proc_i|WideOr24~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|tx_ram_addr_r[5]~0_combout\,
	datab => \eth_top_i|net_proc_i|Selector26~0_combout\,
	datac => \eth_top_i|net_proc_i|WideOr23~combout\,
	datad => \eth_top_i|net_proc_i|WideOr24~1_combout\,
	combout => \eth_top_i|net_proc_i|tx_ram_addr_r[5]~1_combout\);

-- Location: LCCOMB_X26_Y25_N22
\eth_top_i|net_proc_i|tx_ram_addr_r[5]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|tx_ram_addr_r[5]~4_combout\ = (\eth_top_i|net_proc_i|tx_ram_addr_r[5]~1_combout\) # ((!\eth_top_i|net_proc_i|WideOr23~combout\ & (\eth_top_i|net_proc_i|tx_ram_addr_r[5]~3_combout\ & \eth_top_i|net_proc_i|process_0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|WideOr23~combout\,
	datab => \eth_top_i|net_proc_i|tx_ram_addr_r[5]~3_combout\,
	datac => \eth_top_i|net_proc_i|process_0~7_combout\,
	datad => \eth_top_i|net_proc_i|tx_ram_addr_r[5]~1_combout\,
	combout => \eth_top_i|net_proc_i|tx_ram_addr_r[5]~4_combout\);

-- Location: LCCOMB_X26_Y25_N10
\eth_top_i|net_proc_i|Selector60~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector60~0_combout\ = (\eth_top_i|net_proc_i|Add3~12_combout\ & !\eth_top_i|net_proc_i|tx_ram_addr_r[5]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|Add3~12_combout\,
	datac => \eth_top_i|net_proc_i|tx_ram_addr_r[5]~4_combout\,
	combout => \eth_top_i|net_proc_i|Selector60~0_combout\);

-- Location: FF_X26_Y25_N11
\eth_top_i|net_proc_i|tx_ram_addr_r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Selector60~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|tx_ram_addr_r\(6));

-- Location: LCCOMB_X25_Y25_N20
\eth_top_i|net_proc_i|Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add3~14_combout\ = (\eth_top_i|net_proc_i|tx_ram_addr_r\(7) & (!\eth_top_i|net_proc_i|Add3~13\)) # (!\eth_top_i|net_proc_i|tx_ram_addr_r\(7) & ((\eth_top_i|net_proc_i|Add3~13\) # (GND)))
-- \eth_top_i|net_proc_i|Add3~15\ = CARRY((!\eth_top_i|net_proc_i|Add3~13\) # (!\eth_top_i|net_proc_i|tx_ram_addr_r\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|tx_ram_addr_r\(7),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|Add3~13\,
	combout => \eth_top_i|net_proc_i|Add3~14_combout\,
	cout => \eth_top_i|net_proc_i|Add3~15\);

-- Location: LCCOMB_X26_Y25_N20
\eth_top_i|net_proc_i|Selector59~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector59~0_combout\ = (!\eth_top_i|net_proc_i|tx_ram_addr_r[5]~4_combout\ & \eth_top_i|net_proc_i|Add3~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|net_proc_i|tx_ram_addr_r[5]~4_combout\,
	datad => \eth_top_i|net_proc_i|Add3~14_combout\,
	combout => \eth_top_i|net_proc_i|Selector59~0_combout\);

-- Location: FF_X26_Y25_N21
\eth_top_i|net_proc_i|tx_ram_addr_r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Selector59~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|tx_ram_addr_r\(7));

-- Location: LCCOMB_X25_Y25_N22
\eth_top_i|net_proc_i|Add3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add3~16_combout\ = (\eth_top_i|net_proc_i|tx_ram_addr_r\(8) & (\eth_top_i|net_proc_i|Add3~15\ $ (GND))) # (!\eth_top_i|net_proc_i|tx_ram_addr_r\(8) & (!\eth_top_i|net_proc_i|Add3~15\ & VCC))
-- \eth_top_i|net_proc_i|Add3~17\ = CARRY((\eth_top_i|net_proc_i|tx_ram_addr_r\(8) & !\eth_top_i|net_proc_i|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|tx_ram_addr_r\(8),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|Add3~15\,
	combout => \eth_top_i|net_proc_i|Add3~16_combout\,
	cout => \eth_top_i|net_proc_i|Add3~17\);

-- Location: LCCOMB_X26_Y25_N14
\eth_top_i|net_proc_i|Selector58~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector58~0_combout\ = (\eth_top_i|net_proc_i|Add3~16_combout\ & !\eth_top_i|net_proc_i|tx_ram_addr_r[5]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|Add3~16_combout\,
	datac => \eth_top_i|net_proc_i|tx_ram_addr_r[5]~4_combout\,
	combout => \eth_top_i|net_proc_i|Selector58~0_combout\);

-- Location: FF_X26_Y25_N15
\eth_top_i|net_proc_i|tx_ram_addr_r[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Selector58~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|tx_ram_addr_r\(8));

-- Location: LCCOMB_X25_Y25_N24
\eth_top_i|net_proc_i|Add3~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add3~18_combout\ = (\eth_top_i|net_proc_i|tx_ram_addr_r\(9) & (!\eth_top_i|net_proc_i|Add3~17\)) # (!\eth_top_i|net_proc_i|tx_ram_addr_r\(9) & ((\eth_top_i|net_proc_i|Add3~17\) # (GND)))
-- \eth_top_i|net_proc_i|Add3~19\ = CARRY((!\eth_top_i|net_proc_i|Add3~17\) # (!\eth_top_i|net_proc_i|tx_ram_addr_r\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|tx_ram_addr_r\(9),
	datad => VCC,
	cin => \eth_top_i|net_proc_i|Add3~17\,
	combout => \eth_top_i|net_proc_i|Add3~18_combout\,
	cout => \eth_top_i|net_proc_i|Add3~19\);

-- Location: LCCOMB_X26_Y25_N16
\eth_top_i|net_proc_i|Selector57~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector57~0_combout\ = (\eth_top_i|net_proc_i|Add3~18_combout\ & !\eth_top_i|net_proc_i|tx_ram_addr_r[5]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|Add3~18_combout\,
	datac => \eth_top_i|net_proc_i|tx_ram_addr_r[5]~4_combout\,
	combout => \eth_top_i|net_proc_i|Selector57~0_combout\);

-- Location: FF_X26_Y25_N17
\eth_top_i|net_proc_i|tx_ram_addr_r[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Selector57~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|tx_ram_addr_r\(9));

-- Location: LCCOMB_X24_Y25_N28
\eth_top_i|net_proc_i|Selector56~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector56~1_combout\ = (\eth_top_i|net_proc_i|WideOr23~combout\) # ((\eth_top_i|net_proc_i|Selector62~0_combout\) # ((\eth_top_i|net_proc_i|Selector66~0_combout\ & !\eth_top_i|net_proc_i|tx_ram_data_last_r~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|Selector66~0_combout\,
	datab => \eth_top_i|net_proc_i|WideOr23~combout\,
	datac => \eth_top_i|net_proc_i|Selector62~0_combout\,
	datad => \eth_top_i|net_proc_i|tx_ram_data_last_r~q\,
	combout => \eth_top_i|net_proc_i|Selector56~1_combout\);

-- Location: LCCOMB_X24_Y25_N8
\eth_top_i|net_proc_i|Selector56~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector56~3_combout\ = (\eth_top_i|net_proc_i|tx_current_bank_r~q\ & ((\eth_top_i|net_proc_i|Selector56~2_combout\) # ((\eth_top_i|net_proc_i|Selector19~0_combout\) # (!\eth_top_i|net_proc_i|WideOr24~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|Selector56~2_combout\,
	datab => \eth_top_i|net_proc_i|tx_current_bank_r~q\,
	datac => \eth_top_i|net_proc_i|Selector19~0_combout\,
	datad => \eth_top_i|net_proc_i|WideOr24~1_combout\,
	combout => \eth_top_i|net_proc_i|Selector56~3_combout\);

-- Location: LCCOMB_X25_Y25_N26
\eth_top_i|net_proc_i|Add3~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Add3~20_combout\ = \eth_top_i|net_proc_i|tx_ram_addr_r\(10) $ (!\eth_top_i|net_proc_i|Add3~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|tx_ram_addr_r\(10),
	cin => \eth_top_i|net_proc_i|Add3~19\,
	combout => \eth_top_i|net_proc_i|Add3~20_combout\);

-- Location: LCCOMB_X24_Y25_N16
\eth_top_i|net_proc_i|Selector56~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Selector56~4_combout\ = (\eth_top_i|net_proc_i|Selector56~3_combout\) # ((\eth_top_i|net_proc_i|Add3~20_combout\ & ((\eth_top_i|net_proc_i|tx_ram_cnt_r[9]~3_combout\) # (\eth_top_i|net_proc_i|Selector56~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|tx_ram_cnt_r[9]~3_combout\,
	datab => \eth_top_i|net_proc_i|Selector56~1_combout\,
	datac => \eth_top_i|net_proc_i|Selector56~3_combout\,
	datad => \eth_top_i|net_proc_i|Add3~20_combout\,
	combout => \eth_top_i|net_proc_i|Selector56~4_combout\);

-- Location: FF_X24_Y25_N17
\eth_top_i|net_proc_i|tx_ram_addr_r[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|Selector56~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|tx_ram_addr_r\(10));

-- Location: FF_X31_Y25_N1
\eth_top_i|eth_tx_ram_i|addr_out_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	asdata => \eth_top_i|eth_tx_i|addr_cnt_r\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_ram_i|addr_out_r\(0));

-- Location: FF_X31_Y25_N3
\eth_top_i|eth_tx_ram_i|addr_out_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	asdata => \eth_top_i|eth_tx_i|addr_cnt_r\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_ram_i|addr_out_r\(1));

-- Location: FF_X30_Y25_N9
\eth_top_i|eth_tx_i|addr_cnt_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|addr_cnt_r[2]~16_combout\,
	asdata => \~GND~combout\,
	sload => \eth_top_i|eth_tx_i|ALT_INV_eth_tx_sm.st_idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|addr_cnt_r\(2));

-- Location: LCCOMB_X31_Y25_N20
\eth_top_i|eth_tx_ram_i|addr_out_r[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_ram_i|addr_out_r[2]~feeder_combout\ = \eth_top_i|eth_tx_i|addr_cnt_r\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|eth_tx_i|addr_cnt_r\(2),
	combout => \eth_top_i|eth_tx_ram_i|addr_out_r[2]~feeder_combout\);

-- Location: FF_X31_Y25_N21
\eth_top_i|eth_tx_ram_i|addr_out_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_ram_i|addr_out_r[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_ram_i|addr_out_r\(2));

-- Location: FF_X30_Y25_N11
\eth_top_i|eth_tx_i|addr_cnt_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|addr_cnt_r[3]~18_combout\,
	asdata => \~GND~combout\,
	sload => \eth_top_i|eth_tx_i|ALT_INV_eth_tx_sm.st_idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|addr_cnt_r\(3));

-- Location: FF_X34_Y27_N25
\eth_top_i|eth_tx_ram_i|addr_out_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	asdata => \eth_top_i|eth_tx_i|addr_cnt_r\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_ram_i|addr_out_r\(3));

-- Location: LCCOMB_X34_Y27_N18
\eth_top_i|eth_tx_ram_i|addr_out_r[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_ram_i|addr_out_r[4]~feeder_combout\ = \eth_top_i|eth_tx_i|addr_cnt_r\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|eth_tx_i|addr_cnt_r\(4),
	combout => \eth_top_i|eth_tx_ram_i|addr_out_r[4]~feeder_combout\);

-- Location: FF_X34_Y27_N19
\eth_top_i|eth_tx_ram_i|addr_out_r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_ram_i|addr_out_r[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_ram_i|addr_out_r\(4));

-- Location: LCCOMB_X31_Y25_N6
\eth_top_i|eth_tx_ram_i|addr_out_r[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_ram_i|addr_out_r[5]~feeder_combout\ = \eth_top_i|eth_tx_i|addr_cnt_r\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|eth_tx_i|addr_cnt_r\(5),
	combout => \eth_top_i|eth_tx_ram_i|addr_out_r[5]~feeder_combout\);

-- Location: FF_X31_Y25_N7
\eth_top_i|eth_tx_ram_i|addr_out_r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_ram_i|addr_out_r[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_ram_i|addr_out_r\(5));

-- Location: FF_X31_Y25_N25
\eth_top_i|eth_tx_ram_i|addr_out_r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	asdata => \eth_top_i|eth_tx_i|addr_cnt_r\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_ram_i|addr_out_r\(6));

-- Location: FF_X30_Y25_N19
\eth_top_i|eth_tx_i|addr_cnt_r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|addr_cnt_r[7]~26_combout\,
	asdata => \~GND~combout\,
	sload => \eth_top_i|eth_tx_i|ALT_INV_eth_tx_sm.st_idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|addr_cnt_r\(7));

-- Location: LCCOMB_X31_Y25_N10
\eth_top_i|eth_tx_ram_i|addr_out_r[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_ram_i|addr_out_r[7]~feeder_combout\ = \eth_top_i|eth_tx_i|addr_cnt_r\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|eth_tx_i|addr_cnt_r\(7),
	combout => \eth_top_i|eth_tx_ram_i|addr_out_r[7]~feeder_combout\);

-- Location: FF_X31_Y25_N11
\eth_top_i|eth_tx_ram_i|addr_out_r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_ram_i|addr_out_r[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_ram_i|addr_out_r\(7));

-- Location: LCCOMB_X31_Y25_N4
\eth_top_i|eth_tx_ram_i|addr_out_r[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_ram_i|addr_out_r[8]~feeder_combout\ = \eth_top_i|eth_tx_i|addr_cnt_r\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|eth_tx_i|addr_cnt_r\(8),
	combout => \eth_top_i|eth_tx_ram_i|addr_out_r[8]~feeder_combout\);

-- Location: FF_X31_Y25_N5
\eth_top_i|eth_tx_ram_i|addr_out_r[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_ram_i|addr_out_r[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_ram_i|addr_out_r\(8));

-- Location: FF_X30_Y25_N23
\eth_top_i|eth_tx_i|addr_cnt_r[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|addr_cnt_r[9]~30_combout\,
	asdata => \~GND~combout\,
	sload => \eth_top_i|eth_tx_i|ALT_INV_eth_tx_sm.st_idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|addr_cnt_r\(9));

-- Location: LCCOMB_X31_Y25_N22
\eth_top_i|eth_tx_ram_i|addr_out_r[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_ram_i|addr_out_r[9]~feeder_combout\ = \eth_top_i|eth_tx_i|addr_cnt_r\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|eth_tx_i|addr_cnt_r\(9),
	combout => \eth_top_i|eth_tx_ram_i|addr_out_r[9]~feeder_combout\);

-- Location: FF_X31_Y25_N23
\eth_top_i|eth_tx_ram_i|addr_out_r[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_ram_i|addr_out_r[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_ram_i|addr_out_r\(9));

-- Location: LCCOMB_X31_Y25_N16
\eth_top_i|eth_tx_ram_i|addr_out_r[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_ram_i|addr_out_r[10]~feeder_combout\ = \eth_top_i|eth_tx_i|addr_cnt_r\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|eth_tx_i|addr_cnt_r\(10),
	combout => \eth_top_i|eth_tx_ram_i|addr_out_r[10]~feeder_combout\);

-- Location: FF_X31_Y25_N17
\eth_top_i|eth_tx_ram_i|addr_out_r[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_ram_i|addr_out_r[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_ram_i|addr_out_r\(10));

-- Location: FF_X31_Y25_N27
\eth_top_i|eth_tx_ram_i|addr_out_r[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	asdata => \eth_top_i|eth_tx_i|addr_cnt_r\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_ram_i|addr_out_r\(11));

-- Location: LCCOMB_X31_Y29_N16
\eth_top_i|eth_tx_ram_i|addr_out_r[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_ram_i|addr_out_r[12]~feeder_combout\ = \eth_top_i|eth_tx_i|current_bank_r~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|eth_tx_i|current_bank_r~q\,
	combout => \eth_top_i|eth_tx_ram_i|addr_out_r[12]~feeder_combout\);

-- Location: FF_X31_Y29_N17
\eth_top_i|eth_tx_ram_i|addr_out_r[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_ram_i|addr_out_r[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_ram_i|addr_out_r\(12));

-- Location: M9K_X33_Y26_N0
\eth_top_i|eth_tx_ram_i|eth_tx_buf_i|altsyncram_component|auto_generated|ram_block1a2\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF30F990242F005F3000EFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF30F990242F005F3000EFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 4,
	data_interleave_width_in_bits => 1,
	init_file => "eth_tx_ram.mif",
	init_file_layout => "port_a",
	logical_ram_name => "eth_top:eth_top_i|eth_tx_ram:eth_tx_ram_i|eth_tx_buf:eth_tx_buf_i|altsyncram:altsyncram_component|altsyncram_djo1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 8192,
	port_b_logical_ram_width => 4,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \eth_top_i|net_proc_i|tx_ram_we_r~q\,
	portbre => VCC,
	clk0 => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	clk1 => \ETH_TX_CLK~inputclkctrl_outclk\,
	ena0 => \eth_top_i|net_proc_i|tx_ram_we_r~q\,
	portadatain => \eth_top_i|eth_tx_ram_i|eth_tx_buf_i|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \eth_top_i|eth_tx_ram_i|eth_tx_buf_i|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \eth_top_i|eth_tx_ram_i|eth_tx_buf_i|altsyncram_component|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \eth_top_i|eth_tx_ram_i|eth_tx_buf_i|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

-- Location: FF_X32_Y29_N27
\eth_top_i|eth_tx_ram_i|data_out_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	asdata => \eth_top_i|eth_tx_ram_i|eth_tx_buf_i|altsyncram_component|auto_generated|q_b\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_ram_i|data_out_r\(2));

-- Location: LCCOMB_X26_Y28_N14
\eth_top_i|net_proc_i|Mux111~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Mux111~0_combout\ = (\eth_top_i|net_proc_i|Mux110~1_combout\ & (((!\eth_top_i|net_proc_i|process_0~0_combout\)))) # (!\eth_top_i|net_proc_i|Mux110~1_combout\ & ((\eth_top_i|net_proc_i|process_0~0_combout\ & 
-- ((\eth_top_i|eth_rx_ram_i|data_out_r\(3)))) # (!\eth_top_i|net_proc_i|process_0~0_combout\ & (\eth_top_i|net_proc_i|Mux110~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|Mux110~1_combout\,
	datab => \eth_top_i|net_proc_i|Mux110~4_combout\,
	datac => \eth_top_i|eth_rx_ram_i|data_out_r\(3),
	datad => \eth_top_i|net_proc_i|process_0~0_combout\,
	combout => \eth_top_i|net_proc_i|Mux111~0_combout\);

-- Location: LCCOMB_X26_Y30_N8
\eth_top_i|net_proc_i|info_words[1][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|info_words[1][3]~feeder_combout\ = \eth_top_i|eth_rx_ram_i|data_out_r\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|eth_rx_ram_i|data_out_r\(3),
	combout => \eth_top_i|net_proc_i|info_words[1][3]~feeder_combout\);

-- Location: FF_X26_Y30_N9
\eth_top_i|net_proc_i|info_words[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|info_words[1][3]~feeder_combout\,
	ena => \eth_top_i|net_proc_i|Mux66~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|info_words[1][3]~q\);

-- Location: LCCOMB_X28_Y30_N22
\reg_file_i|spi_reg_num_reg_x|reg_value_r[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|spi_reg_num_reg_x|reg_value_r[3]~feeder_combout\ = \eth_top_i|net_proc_i|info_words[1][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|net_proc_i|info_words[1][3]~q\,
	combout => \reg_file_i|spi_reg_num_reg_x|reg_value_r[3]~feeder_combout\);

-- Location: LCCOMB_X25_Y28_N4
\reg_file_i|spi_reg_num_reg_x|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|spi_reg_num_reg_x|Equal0~0_combout\ = (!\eth_top_i|net_proc_i|info_words[2][14]~q\ & (!\eth_top_i|net_proc_i|info_words[2][0]~q\ & (\eth_top_i|net_proc_i|info_words[2][4]~q\ & \reg_file_i|control1_reg_x|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|info_words[2][14]~q\,
	datab => \eth_top_i|net_proc_i|info_words[2][0]~q\,
	datac => \eth_top_i|net_proc_i|info_words[2][4]~q\,
	datad => \reg_file_i|control1_reg_x|Equal0~3_combout\,
	combout => \reg_file_i|spi_reg_num_reg_x|Equal0~0_combout\);

-- Location: FF_X25_Y28_N5
\reg_file_i|spi_reg_num_reg_x|reg_num_match_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|spi_reg_num_reg_x|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|spi_reg_num_reg_x|reg_num_match_r~q\);

-- Location: LCCOMB_X27_Y30_N16
\reg_file_i|spi_reg_num_reg_x|reg_value_r[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|spi_reg_num_reg_x|reg_value_r[0]~0_combout\ = (\reg_file_i|control1_reg_x|eth_reg_we_r~q\ & \reg_file_i|spi_reg_num_reg_x|reg_num_match_r~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_file_i|control1_reg_x|eth_reg_we_r~q\,
	datad => \reg_file_i|spi_reg_num_reg_x|reg_num_match_r~q\,
	combout => \reg_file_i|spi_reg_num_reg_x|reg_value_r[0]~0_combout\);

-- Location: FF_X28_Y30_N23
\reg_file_i|spi_reg_num_reg_x|reg_value_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|spi_reg_num_reg_x|reg_value_r[3]~feeder_combout\,
	ena => \reg_file_i|spi_reg_num_reg_x|reg_value_r[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|spi_reg_num_reg_x|reg_value_r\(3));

-- Location: LCCOMB_X29_Y30_N4
\reg_file_i|spi_reg_num_reg_x|eth_reg_rdata_r~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|spi_reg_num_reg_x|eth_reg_rdata_r~6_combout\ = (\reg_file_i|spi_reg_num_reg_x|reg_num_match_r~q\ & \reg_file_i|spi_reg_num_reg_x|reg_value_r\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_i|spi_reg_num_reg_x|reg_num_match_r~q\,
	datad => \reg_file_i|spi_reg_num_reg_x|reg_value_r\(3),
	combout => \reg_file_i|spi_reg_num_reg_x|eth_reg_rdata_r~6_combout\);

-- Location: FF_X29_Y30_N5
\reg_file_i|spi_reg_num_reg_x|eth_reg_rdata_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|spi_reg_num_reg_x|eth_reg_rdata_r~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|spi_reg_num_reg_x|eth_reg_rdata_r\(3));

-- Location: LCCOMB_X28_Y30_N8
\reg_file_i|spi_burst_len_reg_x|reg_value_r[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|spi_burst_len_reg_x|reg_value_r[3]~feeder_combout\ = \eth_top_i|net_proc_i|info_words[1][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|net_proc_i|info_words[1][3]~q\,
	combout => \reg_file_i|spi_burst_len_reg_x|reg_value_r[3]~feeder_combout\);

-- Location: FF_X28_Y30_N9
\reg_file_i|spi_burst_len_reg_x|reg_value_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|spi_burst_len_reg_x|reg_value_r[3]~feeder_combout\,
	ena => \reg_file_i|spi_burst_len_reg_x|reg_value_r[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|spi_burst_len_reg_x|reg_value_r\(3));

-- Location: LCCOMB_X29_Y30_N22
\reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~12_combout\ = (\reg_file_i|spi_burst_len_reg_x|reg_num_match_r~q\ & \reg_file_i|spi_burst_len_reg_x|reg_value_r\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_i|spi_burst_len_reg_x|reg_num_match_r~q\,
	datad => \reg_file_i|spi_burst_len_reg_x|reg_value_r\(3),
	combout => \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~12_combout\);

-- Location: FF_X29_Y30_N23
\reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r\(3));

-- Location: LCCOMB_X29_Y30_N20
\reg_file_i|eth_reg_rdata~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|eth_reg_rdata~13_combout\ = (\reg_file_i|echo_reg_x|eth_reg_rdata_r\(3)) # ((\reg_file_i|spi_reg_num_reg_x|eth_reg_rdata_r\(3)) # (\reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_i|echo_reg_x|eth_reg_rdata_r\(3),
	datab => \reg_file_i|spi_reg_num_reg_x|eth_reg_rdata_r\(3),
	datac => \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r\(3),
	combout => \reg_file_i|eth_reg_rdata~13_combout\);

-- Location: FF_X29_Y30_N21
\reg_file_i|eth_reg_rdata[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|eth_reg_rdata~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|eth_reg_rdata\(3));

-- Location: LCCOMB_X26_Y28_N6
\eth_top_i|net_proc_i|Mux110~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Mux110~1_combout\ = (\eth_top_i|net_proc_i|tx_ram_source_r\(2)) # ((\eth_top_i|net_proc_i|tx_ram_source_r\(0) & !\eth_top_i|net_proc_i|tx_ram_source_r\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|tx_ram_source_r\(2),
	datab => \eth_top_i|net_proc_i|tx_ram_source_r\(0),
	datad => \eth_top_i|net_proc_i|tx_ram_source_r\(1),
	combout => \eth_top_i|net_proc_i|Mux110~1_combout\);

-- Location: LCCOMB_X26_Y28_N8
\eth_top_i|net_proc_i|Mux111~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Mux111~1_combout\ = (\eth_top_i|net_proc_i|Mux111~0_combout\ & ((\eth_top_i|net_proc_i|ip_checksum_r\(11)) # ((!\eth_top_i|net_proc_i|Mux110~1_combout\)))) # (!\eth_top_i|net_proc_i|Mux111~0_combout\ & 
-- (((\reg_file_i|eth_reg_rdata\(3) & \eth_top_i|net_proc_i|Mux110~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|ip_checksum_r\(11),
	datab => \eth_top_i|net_proc_i|Mux111~0_combout\,
	datac => \reg_file_i|eth_reg_rdata\(3),
	datad => \eth_top_i|net_proc_i|Mux110~1_combout\,
	combout => \eth_top_i|net_proc_i|Mux111~1_combout\);

-- Location: LCCOMB_X28_Y28_N28
\eth_top_i|net_proc_i|ip_checksum_r[15]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|ip_checksum_r[15]~31_combout\ = \eth_top_i|net_proc_i|proto_len_r\(11) $ (!\eth_top_i|net_proc_i|ip_checksum_r[14]~30\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|proto_len_r\(11),
	cin => \eth_top_i|net_proc_i|ip_checksum_r[14]~30\,
	combout => \eth_top_i|net_proc_i|ip_checksum_r[15]~31_combout\);

-- Location: FF_X28_Y28_N29
\eth_top_i|net_proc_i|ip_checksum_r[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|ip_checksum_r[15]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|ip_checksum_r\(15));

-- Location: LCCOMB_X26_Y28_N28
\eth_top_i|net_proc_i|Mux107~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Mux107~1_combout\ = (\eth_top_i|net_proc_i|Mux107~0_combout\ & (((\eth_top_i|net_proc_i|ip_checksum_r\(15)) # (\eth_top_i|net_proc_i|process_0~0_combout\)))) # (!\eth_top_i|net_proc_i|Mux107~0_combout\ & 
-- (\eth_top_i|net_proc_i|Mux110~4_combout\ & ((!\eth_top_i|net_proc_i|process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|Mux107~0_combout\,
	datab => \eth_top_i|net_proc_i|Mux110~4_combout\,
	datac => \eth_top_i|net_proc_i|ip_checksum_r\(15),
	datad => \eth_top_i|net_proc_i|process_0~0_combout\,
	combout => \eth_top_i|net_proc_i|Mux107~1_combout\);

-- Location: FF_X28_Y26_N15
\eth_top_i|net_proc_i|proto_len_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|proto_len_r[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|proto_len_r\(3));

-- Location: LCCOMB_X29_Y26_N0
\eth_top_i|net_proc_i|ip_checksum_r[3]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|ip_checksum_r[3]~35_combout\ = !\eth_top_i|net_proc_i|proto_len_r\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|net_proc_i|proto_len_r\(3),
	combout => \eth_top_i|net_proc_i|ip_checksum_r[3]~35_combout\);

-- Location: FF_X29_Y26_N1
\eth_top_i|net_proc_i|ip_checksum_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|ip_checksum_r[3]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|ip_checksum_r\(3));

-- Location: LCCOMB_X29_Y26_N28
\eth_top_i|net_proc_i|Mux103~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Mux103~2_combout\ = (\eth_top_i|net_proc_i|tx_ram_source_r\(2) & ((\eth_top_i|net_proc_i|ip_checksum_r\(3)))) # (!\eth_top_i|net_proc_i|tx_ram_source_r\(2) & (\eth_top_i|net_proc_i|Mux103~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|Mux103~1_combout\,
	datac => \eth_top_i|net_proc_i|tx_ram_source_r\(2),
	datad => \eth_top_i|net_proc_i|ip_checksum_r\(3),
	combout => \eth_top_i|net_proc_i|Mux103~2_combout\);

-- Location: LCCOMB_X25_Y30_N28
\reg_file_i|echo_reg_x|eth_reg_rdata_r~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|echo_reg_x|eth_reg_rdata_r~15_combout\ = (\reg_file_i|echo_reg_x|reg_value_r\(15) & \reg_file_i|echo_reg_x|reg_num_match_r~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_i|echo_reg_x|reg_value_r\(15),
	datad => \reg_file_i|echo_reg_x|reg_num_match_r~q\,
	combout => \reg_file_i|echo_reg_x|eth_reg_rdata_r~15_combout\);

-- Location: FF_X25_Y30_N29
\reg_file_i|echo_reg_x|eth_reg_rdata_r[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|echo_reg_x|eth_reg_rdata_r~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|echo_reg_x|eth_reg_rdata_r\(15));

-- Location: LCCOMB_X26_Y30_N14
\eth_top_i|net_proc_i|info_words[1][15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|info_words[1][15]~feeder_combout\ = \eth_top_i|eth_rx_ram_i|data_out_r\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|eth_rx_ram_i|data_out_r\(15),
	combout => \eth_top_i|net_proc_i|info_words[1][15]~feeder_combout\);

-- Location: FF_X26_Y30_N15
\eth_top_i|net_proc_i|info_words[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|info_words[1][15]~feeder_combout\,
	ena => \eth_top_i|net_proc_i|Mux66~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|info_words[1][15]~q\);

-- Location: LCCOMB_X25_Y30_N22
\reg_file_i|spi_burst_len_reg_x|reg_value_r[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|spi_burst_len_reg_x|reg_value_r[15]~feeder_combout\ = \eth_top_i|net_proc_i|info_words[1][15]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|net_proc_i|info_words[1][15]~q\,
	combout => \reg_file_i|spi_burst_len_reg_x|reg_value_r[15]~feeder_combout\);

-- Location: FF_X25_Y30_N23
\reg_file_i|spi_burst_len_reg_x|reg_value_r[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|spi_burst_len_reg_x|reg_value_r[15]~feeder_combout\,
	ena => \reg_file_i|spi_burst_len_reg_x|reg_value_r[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|spi_burst_len_reg_x|reg_value_r\(15));

-- Location: LCCOMB_X25_Y30_N14
\reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~15_combout\ = (\reg_file_i|spi_burst_len_reg_x|reg_num_match_r~q\ & \reg_file_i|spi_burst_len_reg_x|reg_value_r\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_file_i|spi_burst_len_reg_x|reg_num_match_r~q\,
	datad => \reg_file_i|spi_burst_len_reg_x|reg_value_r\(15),
	combout => \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~15_combout\);

-- Location: FF_X25_Y30_N15
\reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r\(15));

-- Location: LCCOMB_X25_Y30_N6
\reg_file_i|eth_reg_rdata~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|eth_reg_rdata~16_combout\ = (\reg_file_i|echo_reg_x|eth_reg_rdata_r\(15)) # ((\reg_file_i|id_reg_x|eth_reg_rdata_r\(0)) # (\reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_file_i|echo_reg_x|eth_reg_rdata_r\(15),
	datac => \reg_file_i|id_reg_x|eth_reg_rdata_r\(0),
	datad => \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r\(15),
	combout => \reg_file_i|eth_reg_rdata~16_combout\);

-- Location: FF_X25_Y30_N7
\reg_file_i|eth_reg_rdata[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|eth_reg_rdata~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|eth_reg_rdata\(15));

-- Location: LCCOMB_X29_Y26_N30
\eth_top_i|net_proc_i|Mux99~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Mux99~0_combout\ = (\eth_top_i|net_proc_i|tx_ram_source_r\(0) & ((\reg_file_i|eth_reg_rdata\(15)) # ((\eth_top_i|net_proc_i|tx_ram_source_r\(1))))) # (!\eth_top_i|net_proc_i|tx_ram_source_r\(0) & 
-- (((!\eth_top_i|net_proc_i|tx_ram_source_r\(1) & \eth_top_i|eth_rx_ram_i|data_out_r\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|tx_ram_source_r\(0),
	datab => \reg_file_i|eth_reg_rdata\(15),
	datac => \eth_top_i|net_proc_i|tx_ram_source_r\(1),
	datad => \eth_top_i|eth_rx_ram_i|data_out_r\(15),
	combout => \eth_top_i|net_proc_i|Mux99~0_combout\);

-- Location: FF_X28_Y26_N23
\eth_top_i|net_proc_i|proto_len_r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|proto_len_r[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|proto_len_r\(7));

-- Location: LCCOMB_X29_Y26_N24
\eth_top_i|net_proc_i|Mux99~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Mux99~1_combout\ = (\eth_top_i|net_proc_i|tx_ram_source_r\(1) & ((\eth_top_i|net_proc_i|Mux99~0_combout\ & ((\eth_top_i|net_proc_i|proto_len_r\(7)))) # (!\eth_top_i|net_proc_i|Mux99~0_combout\ & (\mem_file_i|eth_mem_rdata_r\(2))))) # 
-- (!\eth_top_i|net_proc_i|tx_ram_source_r\(1) & (((\eth_top_i|net_proc_i|Mux99~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|tx_ram_source_r\(1),
	datab => \mem_file_i|eth_mem_rdata_r\(2),
	datac => \eth_top_i|net_proc_i|Mux99~0_combout\,
	datad => \eth_top_i|net_proc_i|proto_len_r\(7),
	combout => \eth_top_i|net_proc_i|Mux99~1_combout\);

-- Location: LCCOMB_X29_Y26_N18
\eth_top_i|net_proc_i|Mux99~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Mux99~2_combout\ = (\eth_top_i|net_proc_i|tx_ram_source_r\(2) & (\eth_top_i|net_proc_i|ip_checksum_r\(7))) # (!\eth_top_i|net_proc_i|tx_ram_source_r\(2) & ((\eth_top_i|net_proc_i|Mux99~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|ip_checksum_r\(7),
	datac => \eth_top_i|net_proc_i|tx_ram_source_r\(2),
	datad => \eth_top_i|net_proc_i|Mux99~1_combout\,
	combout => \eth_top_i|net_proc_i|Mux99~2_combout\);

-- Location: M9K_X33_Y25_N0
\eth_top_i|eth_tx_ram_i|eth_tx_buf_i|altsyncram_component|auto_generated|ram_block1a3\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F000E4EF205F010F0FFF8000",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F000E4EF205F010F0FFF8000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 4,
	data_interleave_width_in_bits => 1,
	init_file => "eth_tx_ram.mif",
	init_file_layout => "port_a",
	logical_ram_name => "eth_top:eth_top_i|eth_tx_ram:eth_tx_ram_i|eth_tx_buf:eth_tx_buf_i|altsyncram:altsyncram_component|altsyncram_djo1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 8192,
	port_b_logical_ram_width => 4,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \eth_top_i|net_proc_i|tx_ram_we_r~q\,
	portbre => VCC,
	clk0 => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	clk1 => \ETH_TX_CLK~inputclkctrl_outclk\,
	ena0 => \eth_top_i|net_proc_i|tx_ram_we_r~q\,
	portadatain => \eth_top_i|eth_tx_ram_i|eth_tx_buf_i|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \eth_top_i|eth_tx_ram_i|eth_tx_buf_i|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\,
	portbaddr => \eth_top_i|eth_tx_ram_i|eth_tx_buf_i|altsyncram_component|auto_generated|ram_block1a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \eth_top_i|eth_tx_ram_i|eth_tx_buf_i|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAOUT_bus\);

-- Location: FF_X32_Y29_N29
\eth_top_i|eth_tx_ram_i|data_out_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	asdata => \eth_top_i|eth_tx_ram_i|eth_tx_buf_i|altsyncram_component|auto_generated|q_b\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_ram_i|data_out_r\(3));

-- Location: LCCOMB_X32_Y29_N26
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~20_combout\ = \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(2) $ (\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(3) $ (\eth_top_i|eth_tx_ram_i|data_out_r\(2) $ (\eth_top_i|eth_tx_ram_i|data_out_r\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(2),
	datab => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(3),
	datac => \eth_top_i|eth_tx_ram_i|data_out_r\(2),
	datad => \eth_top_i|eth_tx_ram_i|data_out_r\(3),
	combout => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~20_combout\);

-- Location: LCCOMB_X32_Y28_N8
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~54_combout\ = (!\eth_top_i|eth_tx_i|crc_sclr_s~3_combout\ & (\eth_top_i|eth_tx_ram_i|data_out_r\(3) $ (\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_ram_i|data_out_r\(3),
	datab => \eth_top_i|eth_tx_i|crc_sclr_s~3_combout\,
	datad => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(3),
	combout => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~54_combout\);

-- Location: FF_X32_Y28_N9
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~54_combout\,
	ena => \eth_top_i|eth_tx_i|ALT_INV_eth_tx_sm.st_send_crc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(31));

-- Location: LCCOMB_X31_Y28_N2
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~28_combout\ = (!\eth_top_i|eth_tx_i|crc_sclr_s~3_combout\ & (\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(21) $ (\eth_top_i|eth_tx_i|crc32nibble_i|crc_r~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(21),
	datac => \eth_top_i|eth_tx_i|crc_sclr_s~3_combout\,
	datad => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~22_combout\,
	combout => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~28_combout\);

-- Location: FF_X31_Y28_N3
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~28_combout\,
	ena => \eth_top_i|eth_tx_i|ALT_INV_eth_tx_sm.st_send_crc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(17));

-- Location: LCCOMB_X25_Y27_N28
\eth_top_i|net_proc_i|Mux105~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Mux105~2_combout\ = (\eth_top_i|net_proc_i|tx_ram_source_r\(2)) # ((\eth_top_i|net_proc_i|tx_ram_source_r\(0) & \eth_top_i|net_proc_i|tx_ram_source_r\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|tx_ram_source_r\(0),
	datac => \eth_top_i|net_proc_i|tx_ram_source_r\(2),
	datad => \eth_top_i|net_proc_i|tx_ram_source_r\(1),
	combout => \eth_top_i|net_proc_i|Mux105~2_combout\);

-- Location: FF_X28_Y28_N17
\eth_top_i|net_proc_i|ip_checksum_r[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|ip_checksum_r[9]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|ip_checksum_r\(9));

-- Location: LCCOMB_X28_Y28_N2
\eth_top_i|net_proc_i|Mux113~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Mux113~0_combout\ = (\eth_top_i|net_proc_i|Mux105~1_combout\ & ((\eth_top_i|net_proc_i|Mux105~2_combout\ & ((\eth_top_i|net_proc_i|ip_checksum_r\(9)))) # (!\eth_top_i|net_proc_i|Mux105~2_combout\ & 
-- (\eth_top_i|eth_rx_ram_i|data_out_r\(1))))) # (!\eth_top_i|net_proc_i|Mux105~1_combout\ & (\eth_top_i|net_proc_i|Mux105~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|Mux105~1_combout\,
	datab => \eth_top_i|net_proc_i|Mux105~2_combout\,
	datac => \eth_top_i|eth_rx_ram_i|data_out_r\(1),
	datad => \eth_top_i|net_proc_i|ip_checksum_r\(9),
	combout => \eth_top_i|net_proc_i|Mux113~0_combout\);

-- Location: LCCOMB_X25_Y27_N12
\eth_top_i|net_proc_i|Mux105~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Mux105~0_combout\ = (\eth_top_i|net_proc_i|tx_ram_source_r\(0) & !\eth_top_i|net_proc_i|tx_ram_source_r\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|tx_ram_source_r\(0),
	datac => \eth_top_i|net_proc_i|tx_ram_source_r\(2),
	combout => \eth_top_i|net_proc_i|Mux105~0_combout\);

-- Location: LCCOMB_X28_Y28_N4
\eth_top_i|net_proc_i|Mux113\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Mux113~combout\ = (\eth_top_i|net_proc_i|Mux113~0_combout\ & (((\eth_top_i|net_proc_i|proto_len_r\(9)) # (!\eth_top_i|net_proc_i|Mux105~0_combout\)))) # (!\eth_top_i|net_proc_i|Mux113~0_combout\ & (\reg_file_i|eth_reg_rdata\(1) & 
-- (\eth_top_i|net_proc_i|Mux105~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_i|eth_reg_rdata\(1),
	datab => \eth_top_i|net_proc_i|Mux113~0_combout\,
	datac => \eth_top_i|net_proc_i|Mux105~0_combout\,
	datad => \eth_top_i|net_proc_i|proto_len_r\(9),
	combout => \eth_top_i|net_proc_i|Mux113~combout\);

-- Location: LCCOMB_X26_Y28_N24
\eth_top_i|net_proc_i|Mux110~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Mux110~0_combout\ = (\eth_top_i|net_proc_i|tx_ram_source_r\(0) & \eth_top_i|net_proc_i|proto_len_r\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|tx_ram_source_r\(0),
	datad => \eth_top_i|net_proc_i|proto_len_r\(11),
	combout => \eth_top_i|net_proc_i|Mux110~0_combout\);

-- Location: LCCOMB_X26_Y28_N20
\eth_top_i|net_proc_i|Mux109~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Mux109~0_combout\ = (\eth_top_i|net_proc_i|Mux110~1_combout\ & (((!\eth_top_i|net_proc_i|process_0~0_combout\)))) # (!\eth_top_i|net_proc_i|Mux110~1_combout\ & ((\eth_top_i|net_proc_i|process_0~0_combout\ & 
-- ((\eth_top_i|eth_rx_ram_i|data_out_r\(5)))) # (!\eth_top_i|net_proc_i|process_0~0_combout\ & (\eth_top_i|net_proc_i|Mux110~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|Mux110~1_combout\,
	datab => \eth_top_i|net_proc_i|Mux110~0_combout\,
	datac => \eth_top_i|eth_rx_ram_i|data_out_r\(5),
	datad => \eth_top_i|net_proc_i|process_0~0_combout\,
	combout => \eth_top_i|net_proc_i|Mux109~0_combout\);

-- Location: LCCOMB_X26_Y29_N26
\eth_top_i|net_proc_i|info_words[1][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|info_words[1][5]~feeder_combout\ = \eth_top_i|eth_rx_ram_i|data_out_r\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|eth_rx_ram_i|data_out_r\(5),
	combout => \eth_top_i|net_proc_i|info_words[1][5]~feeder_combout\);

-- Location: FF_X26_Y29_N27
\eth_top_i|net_proc_i|info_words[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|info_words[1][5]~feeder_combout\,
	ena => \eth_top_i|net_proc_i|Mux66~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|info_words[1][5]~q\);

-- Location: LCCOMB_X28_Y30_N14
\reg_file_i|spi_reg_num_reg_x|reg_value_r[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|spi_reg_num_reg_x|reg_value_r[5]~feeder_combout\ = \eth_top_i|net_proc_i|info_words[1][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|net_proc_i|info_words[1][5]~q\,
	combout => \reg_file_i|spi_reg_num_reg_x|reg_value_r[5]~feeder_combout\);

-- Location: FF_X28_Y30_N15
\reg_file_i|spi_reg_num_reg_x|reg_value_r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|spi_reg_num_reg_x|reg_value_r[5]~feeder_combout\,
	ena => \reg_file_i|spi_reg_num_reg_x|reg_value_r[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|spi_reg_num_reg_x|reg_value_r\(5));

-- Location: LCCOMB_X29_Y30_N16
\reg_file_i|spi_reg_num_reg_x|eth_reg_rdata_r~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|spi_reg_num_reg_x|eth_reg_rdata_r~3_combout\ = (\reg_file_i|spi_reg_num_reg_x|reg_num_match_r~q\ & \reg_file_i|spi_reg_num_reg_x|reg_value_r\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_i|spi_reg_num_reg_x|reg_num_match_r~q\,
	datad => \reg_file_i|spi_reg_num_reg_x|reg_value_r\(5),
	combout => \reg_file_i|spi_reg_num_reg_x|eth_reg_rdata_r~3_combout\);

-- Location: FF_X29_Y30_N17
\reg_file_i|spi_reg_num_reg_x|eth_reg_rdata_r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|spi_reg_num_reg_x|eth_reg_rdata_r~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|spi_reg_num_reg_x|eth_reg_rdata_r\(5));

-- Location: LCCOMB_X29_Y30_N8
\reg_file_i|spi_burst_len_reg_x|reg_value_r[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|spi_burst_len_reg_x|reg_value_r[5]~feeder_combout\ = \eth_top_i|net_proc_i|info_words[1][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|net_proc_i|info_words[1][5]~q\,
	combout => \reg_file_i|spi_burst_len_reg_x|reg_value_r[5]~feeder_combout\);

-- Location: FF_X29_Y30_N9
\reg_file_i|spi_burst_len_reg_x|reg_value_r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|spi_burst_len_reg_x|reg_value_r[5]~feeder_combout\,
	ena => \reg_file_i|spi_burst_len_reg_x|reg_value_r[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|spi_burst_len_reg_x|reg_value_r\(5));

-- Location: LCCOMB_X29_Y30_N2
\reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~5_combout\ = (\reg_file_i|spi_burst_len_reg_x|reg_num_match_r~q\ & \reg_file_i|spi_burst_len_reg_x|reg_value_r\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_i|spi_burst_len_reg_x|reg_num_match_r~q\,
	datad => \reg_file_i|spi_burst_len_reg_x|reg_value_r\(5),
	combout => \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~5_combout\);

-- Location: FF_X29_Y30_N3
\reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r\(5));

-- Location: LCCOMB_X26_Y29_N10
\reg_file_i|echo_reg_x|reg_value_r[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|echo_reg_x|reg_value_r[5]~feeder_combout\ = \eth_top_i|net_proc_i|info_words[1][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|net_proc_i|info_words[1][5]~q\,
	combout => \reg_file_i|echo_reg_x|reg_value_r[5]~feeder_combout\);

-- Location: FF_X26_Y29_N11
\reg_file_i|echo_reg_x|reg_value_r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|echo_reg_x|reg_value_r[5]~feeder_combout\,
	ena => \reg_file_i|echo_reg_x|reg_value_r[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|echo_reg_x|reg_value_r\(5));

-- Location: LCCOMB_X29_Y30_N30
\reg_file_i|echo_reg_x|eth_reg_rdata_r~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|echo_reg_x|eth_reg_rdata_r~5_combout\ = (\reg_file_i|echo_reg_x|reg_value_r\(5) & \reg_file_i|echo_reg_x|reg_num_match_r~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_file_i|echo_reg_x|reg_value_r\(5),
	datac => \reg_file_i|echo_reg_x|reg_num_match_r~q\,
	combout => \reg_file_i|echo_reg_x|eth_reg_rdata_r~5_combout\);

-- Location: FF_X29_Y30_N31
\reg_file_i|echo_reg_x|eth_reg_rdata_r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|echo_reg_x|eth_reg_rdata_r~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|echo_reg_x|eth_reg_rdata_r\(5));

-- Location: LCCOMB_X29_Y30_N0
\reg_file_i|eth_reg_rdata~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|eth_reg_rdata~6_combout\ = (\reg_file_i|id_reg_x|eth_reg_rdata_r\(0)) # ((\reg_file_i|spi_reg_num_reg_x|eth_reg_rdata_r\(5)) # ((\reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r\(5)) # (\reg_file_i|echo_reg_x|eth_reg_rdata_r\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_i|id_reg_x|eth_reg_rdata_r\(0),
	datab => \reg_file_i|spi_reg_num_reg_x|eth_reg_rdata_r\(5),
	datac => \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r\(5),
	datad => \reg_file_i|echo_reg_x|eth_reg_rdata_r\(5),
	combout => \reg_file_i|eth_reg_rdata~6_combout\);

-- Location: FF_X29_Y30_N1
\reg_file_i|eth_reg_rdata[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|eth_reg_rdata~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|eth_reg_rdata\(5));

-- Location: FF_X28_Y28_N25
\eth_top_i|net_proc_i|ip_checksum_r[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|ip_checksum_r[13]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|ip_checksum_r\(13));

-- Location: LCCOMB_X26_Y28_N30
\eth_top_i|net_proc_i|Mux109~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Mux109~1_combout\ = (\eth_top_i|net_proc_i|Mux110~1_combout\ & ((\eth_top_i|net_proc_i|Mux109~0_combout\ & ((\eth_top_i|net_proc_i|ip_checksum_r\(13)))) # (!\eth_top_i|net_proc_i|Mux109~0_combout\ & (\reg_file_i|eth_reg_rdata\(5))))) 
-- # (!\eth_top_i|net_proc_i|Mux110~1_combout\ & (\eth_top_i|net_proc_i|Mux109~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|Mux110~1_combout\,
	datab => \eth_top_i|net_proc_i|Mux109~0_combout\,
	datac => \reg_file_i|eth_reg_rdata\(5),
	datad => \eth_top_i|net_proc_i|ip_checksum_r\(13),
	combout => \eth_top_i|net_proc_i|Mux109~1_combout\);

-- Location: LCCOMB_X25_Y27_N10
\eth_top_i|net_proc_i|Mux105~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Mux105~1_combout\ = (\eth_top_i|net_proc_i|tx_ram_source_r\(2)) # ((!\eth_top_i|net_proc_i|tx_ram_source_r\(0) & !\eth_top_i|net_proc_i|tx_ram_source_r\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|tx_ram_source_r\(0),
	datac => \eth_top_i|net_proc_i|tx_ram_source_r\(2),
	datad => \eth_top_i|net_proc_i|tx_ram_source_r\(1),
	combout => \eth_top_i|net_proc_i|Mux105~1_combout\);

-- Location: FF_X28_Y26_N11
\eth_top_i|net_proc_i|proto_len_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|proto_len_r[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|proto_len_r\(1));

-- Location: LCCOMB_X30_Y27_N0
\eth_top_i|net_proc_i|ip_checksum_r[1]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|ip_checksum_r[1]~33_combout\ = !\eth_top_i|net_proc_i|proto_len_r\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|net_proc_i|proto_len_r\(1),
	combout => \eth_top_i|net_proc_i|ip_checksum_r[1]~33_combout\);

-- Location: FF_X30_Y27_N1
\eth_top_i|net_proc_i|ip_checksum_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|ip_checksum_r[1]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|ip_checksum_r\(1));

-- Location: LCCOMB_X30_Y27_N2
\eth_top_i|net_proc_i|Mux105~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Mux105~3_combout\ = (\eth_top_i|net_proc_i|Mux105~2_combout\ & (((\eth_top_i|net_proc_i|ip_checksum_r\(1)) # (!\eth_top_i|net_proc_i|Mux105~1_combout\)))) # (!\eth_top_i|net_proc_i|Mux105~2_combout\ & 
-- (\eth_top_i|eth_rx_ram_i|data_out_r\(9) & (\eth_top_i|net_proc_i|Mux105~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_rx_ram_i|data_out_r\(9),
	datab => \eth_top_i|net_proc_i|Mux105~2_combout\,
	datac => \eth_top_i|net_proc_i|Mux105~1_combout\,
	datad => \eth_top_i|net_proc_i|ip_checksum_r\(1),
	combout => \eth_top_i|net_proc_i|Mux105~3_combout\);

-- Location: LCCOMB_X27_Y29_N24
\reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~6_combout\ = (\reg_file_i|spi_burst_len_reg_x|reg_value_r\(9) & \reg_file_i|spi_burst_len_reg_x|reg_num_match_r~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_i|spi_burst_len_reg_x|reg_value_r\(9),
	datab => \reg_file_i|spi_burst_len_reg_x|reg_num_match_r~q\,
	combout => \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~6_combout\);

-- Location: FF_X27_Y29_N25
\reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r\(9));

-- Location: LCCOMB_X27_Y29_N2
\reg_file_i|eth_reg_rdata~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|eth_reg_rdata~7_combout\ = (\reg_file_i|echo_reg_x|eth_reg_rdata_r\(9)) # ((\reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r\(9)) # (\reg_file_i|id_reg_x|eth_reg_rdata_r\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_i|echo_reg_x|eth_reg_rdata_r\(9),
	datab => \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r\(9),
	datad => \reg_file_i|id_reg_x|eth_reg_rdata_r\(0),
	combout => \reg_file_i|eth_reg_rdata~7_combout\);

-- Location: FF_X27_Y29_N3
\reg_file_i|eth_reg_rdata[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|eth_reg_rdata~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|eth_reg_rdata\(9));

-- Location: LCCOMB_X30_Y27_N20
\eth_top_i|net_proc_i|Mux105\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Mux105~combout\ = (\eth_top_i|net_proc_i|Mux105~0_combout\ & ((\eth_top_i|net_proc_i|Mux105~3_combout\ & ((\eth_top_i|net_proc_i|proto_len_r\(1)))) # (!\eth_top_i|net_proc_i|Mux105~3_combout\ & (\reg_file_i|eth_reg_rdata\(9))))) # 
-- (!\eth_top_i|net_proc_i|Mux105~0_combout\ & (\eth_top_i|net_proc_i|Mux105~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|Mux105~0_combout\,
	datab => \eth_top_i|net_proc_i|Mux105~3_combout\,
	datac => \reg_file_i|eth_reg_rdata\(9),
	datad => \eth_top_i|net_proc_i|proto_len_r\(1),
	combout => \eth_top_i|net_proc_i|Mux105~combout\);

-- Location: LCCOMB_X26_Y29_N30
\eth_top_i|net_proc_i|info_words[1][13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|info_words[1][13]~feeder_combout\ = \eth_top_i|eth_rx_ram_i|data_out_r\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|eth_rx_ram_i|data_out_r\(13),
	combout => \eth_top_i|net_proc_i|info_words[1][13]~feeder_combout\);

-- Location: FF_X26_Y29_N31
\eth_top_i|net_proc_i|info_words[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|info_words[1][13]~feeder_combout\,
	ena => \eth_top_i|net_proc_i|Mux66~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|info_words[1][13]~q\);

-- Location: LCCOMB_X26_Y29_N6
\reg_file_i|echo_reg_x|reg_value_r[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|echo_reg_x|reg_value_r[13]~feeder_combout\ = \eth_top_i|net_proc_i|info_words[1][13]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|net_proc_i|info_words[1][13]~q\,
	combout => \reg_file_i|echo_reg_x|reg_value_r[13]~feeder_combout\);

-- Location: FF_X26_Y29_N7
\reg_file_i|echo_reg_x|reg_value_r[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|echo_reg_x|reg_value_r[13]~feeder_combout\,
	ena => \reg_file_i|echo_reg_x|reg_value_r[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|echo_reg_x|reg_value_r\(13));

-- Location: LCCOMB_X25_Y30_N16
\reg_file_i|echo_reg_x|eth_reg_rdata_r~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|echo_reg_x|eth_reg_rdata_r~7_combout\ = (\reg_file_i|echo_reg_x|reg_value_r\(13) & \reg_file_i|echo_reg_x|reg_num_match_r~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_file_i|echo_reg_x|reg_value_r\(13),
	datad => \reg_file_i|echo_reg_x|reg_num_match_r~q\,
	combout => \reg_file_i|echo_reg_x|eth_reg_rdata_r~7_combout\);

-- Location: FF_X25_Y30_N17
\reg_file_i|echo_reg_x|eth_reg_rdata_r[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|echo_reg_x|eth_reg_rdata_r~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|echo_reg_x|eth_reg_rdata_r\(13));

-- Location: LCCOMB_X25_Y30_N8
\reg_file_i|spi_burst_len_reg_x|reg_value_r[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|spi_burst_len_reg_x|reg_value_r[13]~feeder_combout\ = \eth_top_i|net_proc_i|info_words[1][13]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|net_proc_i|info_words[1][13]~q\,
	combout => \reg_file_i|spi_burst_len_reg_x|reg_value_r[13]~feeder_combout\);

-- Location: FF_X25_Y30_N9
\reg_file_i|spi_burst_len_reg_x|reg_value_r[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|spi_burst_len_reg_x|reg_value_r[13]~feeder_combout\,
	ena => \reg_file_i|spi_burst_len_reg_x|reg_value_r[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|spi_burst_len_reg_x|reg_value_r\(13));

-- Location: LCCOMB_X25_Y30_N18
\reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~7_combout\ = (\reg_file_i|spi_burst_len_reg_x|reg_num_match_r~q\ & \reg_file_i|spi_burst_len_reg_x|reg_value_r\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_file_i|spi_burst_len_reg_x|reg_num_match_r~q\,
	datad => \reg_file_i|spi_burst_len_reg_x|reg_value_r\(13),
	combout => \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~7_combout\);

-- Location: FF_X25_Y30_N19
\reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r\(13));

-- Location: LCCOMB_X25_Y30_N0
\reg_file_i|eth_reg_rdata~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|eth_reg_rdata~8_combout\ = (\reg_file_i|echo_reg_x|eth_reg_rdata_r\(13)) # (\reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_file_i|echo_reg_x|eth_reg_rdata_r\(13),
	datac => \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r\(13),
	combout => \reg_file_i|eth_reg_rdata~8_combout\);

-- Location: FF_X25_Y30_N1
\reg_file_i|eth_reg_rdata[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|eth_reg_rdata~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|eth_reg_rdata\(13));

-- Location: FF_X28_Y28_N9
\eth_top_i|net_proc_i|ip_checksum_r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|ip_checksum_r[5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|ip_checksum_r\(5));

-- Location: LCCOMB_X28_Y28_N6
\eth_top_i|net_proc_i|Mux101~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Mux101~0_combout\ = (\eth_top_i|net_proc_i|Mux105~1_combout\ & ((\eth_top_i|net_proc_i|Mux105~2_combout\ & (\eth_top_i|net_proc_i|ip_checksum_r\(5))) # (!\eth_top_i|net_proc_i|Mux105~2_combout\ & 
-- ((\eth_top_i|eth_rx_ram_i|data_out_r\(13)))))) # (!\eth_top_i|net_proc_i|Mux105~1_combout\ & (\eth_top_i|net_proc_i|Mux105~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|Mux105~1_combout\,
	datab => \eth_top_i|net_proc_i|Mux105~2_combout\,
	datac => \eth_top_i|net_proc_i|ip_checksum_r\(5),
	datad => \eth_top_i|eth_rx_ram_i|data_out_r\(13),
	combout => \eth_top_i|net_proc_i|Mux101~0_combout\);

-- Location: LCCOMB_X28_Y28_N30
\eth_top_i|net_proc_i|Mux101\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Mux101~combout\ = (\eth_top_i|net_proc_i|Mux105~0_combout\ & ((\eth_top_i|net_proc_i|Mux101~0_combout\ & (\eth_top_i|net_proc_i|proto_len_r\(5))) # (!\eth_top_i|net_proc_i|Mux101~0_combout\ & ((\reg_file_i|eth_reg_rdata\(13)))))) # 
-- (!\eth_top_i|net_proc_i|Mux105~0_combout\ & (((\eth_top_i|net_proc_i|Mux101~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|proto_len_r\(5),
	datab => \eth_top_i|net_proc_i|Mux105~0_combout\,
	datac => \reg_file_i|eth_reg_rdata\(13),
	datad => \eth_top_i|net_proc_i|Mux101~0_combout\,
	combout => \eth_top_i|net_proc_i|Mux101~combout\);

-- Location: M9K_X33_Y28_N0
\eth_top_i|eth_tx_ram_i|eth_tx_buf_i|altsyncram_component|auto_generated|ram_block1a1\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000D00990848000C0004CD0000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000D00990848000C0004CD0000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 4,
	data_interleave_width_in_bits => 1,
	init_file => "eth_tx_ram.mif",
	init_file_layout => "port_a",
	logical_ram_name => "eth_top:eth_top_i|eth_tx_ram:eth_tx_ram_i|eth_tx_buf:eth_tx_buf_i|altsyncram:altsyncram_component|altsyncram_djo1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 8192,
	port_b_logical_ram_width => 4,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \eth_top_i|net_proc_i|tx_ram_we_r~q\,
	portbre => VCC,
	clk0 => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	clk1 => \ETH_TX_CLK~inputclkctrl_outclk\,
	ena0 => \eth_top_i|net_proc_i|tx_ram_we_r~q\,
	portadatain => \eth_top_i|eth_tx_ram_i|eth_tx_buf_i|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \eth_top_i|eth_tx_ram_i|eth_tx_buf_i|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\,
	portbaddr => \eth_top_i|eth_tx_ram_i|eth_tx_buf_i|altsyncram_component|auto_generated|ram_block1a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \eth_top_i|eth_tx_ram_i|eth_tx_buf_i|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAOUT_bus\);

-- Location: FF_X32_Y29_N7
\eth_top_i|eth_tx_ram_i|data_out_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	asdata => \eth_top_i|eth_tx_ram_i|eth_tx_buf_i|altsyncram_component|auto_generated|q_b\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_ram_i|data_out_r\(1));

-- Location: LCCOMB_X31_Y28_N24
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~49_combout\ = (!\eth_top_i|eth_tx_i|crc_sclr_s~3_combout\ & (\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(17) $ (\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(1) $ (!\eth_top_i|eth_tx_ram_i|data_out_r\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|crc_sclr_s~3_combout\,
	datab => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(17),
	datac => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(1),
	datad => \eth_top_i|eth_tx_ram_i|data_out_r\(1),
	combout => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~49_combout\);

-- Location: FF_X31_Y28_N25
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~49_combout\,
	ena => \eth_top_i|eth_tx_i|ALT_INV_eth_tx_sm.st_send_crc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(13));

-- Location: LCCOMB_X31_Y28_N0
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~48_combout\ = (!\eth_top_i|eth_tx_i|crc_sclr_s~3_combout\ & (\eth_top_i|eth_tx_ram_i|data_out_r\(3) $ (\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(13) $ (!\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_ram_i|data_out_r\(3),
	datab => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(13),
	datac => \eth_top_i|eth_tx_i|crc_sclr_s~3_combout\,
	datad => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(3),
	combout => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~48_combout\);

-- Location: FF_X31_Y28_N1
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~48_combout\,
	ena => \eth_top_i|eth_tx_i|ALT_INV_eth_tx_sm.st_send_crc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(9));

-- Location: FF_X28_Y28_N15
\eth_top_i|net_proc_i|ip_checksum_r[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|ip_checksum_r[8]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|ip_checksum_r\(8));

-- Location: LCCOMB_X25_Y27_N30
\eth_top_i|net_proc_i|Mux114~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Mux114~0_combout\ = (\eth_top_i|net_proc_i|Mux105~1_combout\ & ((\eth_top_i|net_proc_i|Mux105~2_combout\ & ((\eth_top_i|net_proc_i|ip_checksum_r\(8)))) # (!\eth_top_i|net_proc_i|Mux105~2_combout\ & 
-- (\eth_top_i|eth_rx_ram_i|data_out_r\(0))))) # (!\eth_top_i|net_proc_i|Mux105~1_combout\ & (\eth_top_i|net_proc_i|Mux105~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|Mux105~1_combout\,
	datab => \eth_top_i|net_proc_i|Mux105~2_combout\,
	datac => \eth_top_i|eth_rx_ram_i|data_out_r\(0),
	datad => \eth_top_i|net_proc_i|ip_checksum_r\(8),
	combout => \eth_top_i|net_proc_i|Mux114~0_combout\);

-- Location: LCCOMB_X25_Y27_N6
\eth_top_i|net_proc_i|Mux114\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Mux114~combout\ = (\eth_top_i|net_proc_i|Mux105~0_combout\ & ((\eth_top_i|net_proc_i|Mux114~0_combout\ & ((\eth_top_i|net_proc_i|proto_len_r\(8)))) # (!\eth_top_i|net_proc_i|Mux114~0_combout\ & (\reg_file_i|eth_reg_rdata\(0))))) # 
-- (!\eth_top_i|net_proc_i|Mux105~0_combout\ & (((\eth_top_i|net_proc_i|Mux114~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_i|eth_reg_rdata\(0),
	datab => \eth_top_i|net_proc_i|proto_len_r\(8),
	datac => \eth_top_i|net_proc_i|Mux105~0_combout\,
	datad => \eth_top_i|net_proc_i|Mux114~0_combout\,
	combout => \eth_top_i|net_proc_i|Mux114~combout\);

-- Location: FF_X28_Y28_N23
\eth_top_i|net_proc_i|ip_checksum_r[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|ip_checksum_r[12]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|ip_checksum_r\(12));

-- Location: LCCOMB_X26_Y28_N18
\eth_top_i|net_proc_i|Mux110~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Mux110~3_combout\ = (\eth_top_i|net_proc_i|Mux110~2_combout\ & (((\eth_top_i|net_proc_i|ip_checksum_r\(12)) # (\eth_top_i|net_proc_i|process_0~0_combout\)))) # (!\eth_top_i|net_proc_i|Mux110~2_combout\ & 
-- (\eth_top_i|net_proc_i|Mux110~0_combout\ & ((!\eth_top_i|net_proc_i|process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|Mux110~2_combout\,
	datab => \eth_top_i|net_proc_i|Mux110~0_combout\,
	datac => \eth_top_i|net_proc_i|ip_checksum_r\(12),
	datad => \eth_top_i|net_proc_i|process_0~0_combout\,
	combout => \eth_top_i|net_proc_i|Mux110~3_combout\);

-- Location: LCCOMB_X26_Y29_N28
\eth_top_i|net_proc_i|info_words[1][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|info_words[1][8]~feeder_combout\ = \eth_top_i|eth_rx_ram_i|data_out_r\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|eth_rx_ram_i|data_out_r\(8),
	combout => \eth_top_i|net_proc_i|info_words[1][8]~feeder_combout\);

-- Location: FF_X26_Y29_N29
\eth_top_i|net_proc_i|info_words[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \eth_top_i|net_proc_i|info_words[1][8]~feeder_combout\,
	ena => \eth_top_i|net_proc_i|Mux66~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|info_words[1][8]~q\);

-- Location: LCCOMB_X28_Y30_N0
\reg_file_i|spi_burst_len_reg_x|reg_value_r[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|spi_burst_len_reg_x|reg_value_r[8]~feeder_combout\ = \eth_top_i|net_proc_i|info_words[1][8]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|net_proc_i|info_words[1][8]~q\,
	combout => \reg_file_i|spi_burst_len_reg_x|reg_value_r[8]~feeder_combout\);

-- Location: FF_X28_Y30_N1
\reg_file_i|spi_burst_len_reg_x|reg_value_r[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|spi_burst_len_reg_x|reg_value_r[8]~feeder_combout\,
	ena => \reg_file_i|spi_burst_len_reg_x|reg_value_r[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|spi_burst_len_reg_x|reg_value_r\(8));

-- Location: LCCOMB_X25_Y26_N14
\reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~2_combout\ = (\reg_file_i|spi_burst_len_reg_x|reg_value_r\(8) & \reg_file_i|spi_burst_len_reg_x|reg_num_match_r~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_file_i|spi_burst_len_reg_x|reg_value_r\(8),
	datad => \reg_file_i|spi_burst_len_reg_x|reg_num_match_r~q\,
	combout => \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~2_combout\);

-- Location: FF_X25_Y26_N15
\reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r\(8));

-- Location: LCCOMB_X28_Y29_N20
\reg_file_i|fw_ver_reg_x|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|fw_ver_reg_x|Equal0~5_combout\ = (\eth_top_i|net_proc_i|info_words[2][1]~q\ & (!\eth_top_i|net_proc_i|info_words[2][0]~q\ & \reg_file_i|fw_ver_reg_x|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|info_words[2][1]~q\,
	datac => \eth_top_i|net_proc_i|info_words[2][0]~q\,
	datad => \reg_file_i|fw_ver_reg_x|Equal0~4_combout\,
	combout => \reg_file_i|fw_ver_reg_x|Equal0~5_combout\);

-- Location: FF_X28_Y29_N21
\reg_file_i|fw_ver_reg_x|reg_num_match_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|fw_ver_reg_x|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|fw_ver_reg_x|reg_num_match_r~q\);

-- Location: LCCOMB_X28_Y29_N24
\reg_file_i|fw_ver_reg_x|eth_reg_rdata_r[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|fw_ver_reg_x|eth_reg_rdata_r[0]~feeder_combout\ = \reg_file_i|fw_ver_reg_x|reg_num_match_r~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_file_i|fw_ver_reg_x|reg_num_match_r~q\,
	combout => \reg_file_i|fw_ver_reg_x|eth_reg_rdata_r[0]~feeder_combout\);

-- Location: FF_X28_Y29_N25
\reg_file_i|fw_ver_reg_x|eth_reg_rdata_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|fw_ver_reg_x|eth_reg_rdata_r[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|fw_ver_reg_x|eth_reg_rdata_r\(0));

-- Location: LCCOMB_X27_Y29_N0
\reg_file_i|eth_reg_rdata~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_file_i|eth_reg_rdata~3_combout\ = (\reg_file_i|echo_reg_x|eth_reg_rdata_r\(8)) # ((\reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r\(8)) # (\reg_file_i|fw_ver_reg_x|eth_reg_rdata_r\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_i|echo_reg_x|eth_reg_rdata_r\(8),
	datac => \reg_file_i|spi_burst_len_reg_x|eth_reg_rdata_r\(8),
	datad => \reg_file_i|fw_ver_reg_x|eth_reg_rdata_r\(0),
	combout => \reg_file_i|eth_reg_rdata~3_combout\);

-- Location: FF_X27_Y29_N1
\reg_file_i|eth_reg_rdata[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \reg_file_i|eth_reg_rdata~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file_i|eth_reg_rdata\(8));

-- Location: LCCOMB_X25_Y27_N0
\eth_top_i|net_proc_i|Mux106~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Mux106~2_combout\ = (\eth_top_i|net_proc_i|tx_ram_source_r\(0) & ((\reg_file_i|eth_reg_rdata\(8)))) # (!\eth_top_i|net_proc_i|tx_ram_source_r\(0) & (\eth_top_i|eth_rx_ram_i|data_out_r\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|net_proc_i|tx_ram_source_r\(0),
	datac => \eth_top_i|eth_rx_ram_i|data_out_r\(8),
	datad => \reg_file_i|eth_reg_rdata\(8),
	combout => \eth_top_i|net_proc_i|Mux106~2_combout\);

-- Location: LCCOMB_X25_Y27_N22
\eth_top_i|net_proc_i|Mux106~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Mux106~3_combout\ = (\eth_top_i|net_proc_i|tx_ram_source_r\(2) & (\eth_top_i|net_proc_i|ip_checksum_r\(0))) # (!\eth_top_i|net_proc_i|tx_ram_source_r\(2) & (((!\eth_top_i|net_proc_i|tx_ram_source_r\(1) & 
-- \eth_top_i|net_proc_i|Mux106~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|ip_checksum_r\(0),
	datab => \eth_top_i|net_proc_i|tx_ram_source_r\(1),
	datac => \eth_top_i|net_proc_i|tx_ram_source_r\(2),
	datad => \eth_top_i|net_proc_i|Mux106~2_combout\,
	combout => \eth_top_i|net_proc_i|Mux106~3_combout\);

-- Location: FF_X28_Y28_N1
\eth_top_i|net_proc_i|ip_checksum_r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \eth_top_i|net_proc_i|proto_len_r\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|net_proc_i|ip_checksum_r\(4));

-- Location: LCCOMB_X28_Y28_N0
\eth_top_i|net_proc_i|Mux102~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Mux102~0_combout\ = (\eth_top_i|net_proc_i|Mux105~1_combout\ & ((\eth_top_i|net_proc_i|Mux105~2_combout\ & (\eth_top_i|net_proc_i|ip_checksum_r\(4))) # (!\eth_top_i|net_proc_i|Mux105~2_combout\ & 
-- ((\eth_top_i|eth_rx_ram_i|data_out_r\(12)))))) # (!\eth_top_i|net_proc_i|Mux105~1_combout\ & (\eth_top_i|net_proc_i|Mux105~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|net_proc_i|Mux105~1_combout\,
	datab => \eth_top_i|net_proc_i|Mux105~2_combout\,
	datac => \eth_top_i|net_proc_i|ip_checksum_r\(4),
	datad => \eth_top_i|eth_rx_ram_i|data_out_r\(12),
	combout => \eth_top_i|net_proc_i|Mux102~0_combout\);

-- Location: LCCOMB_X28_Y29_N28
\eth_top_i|net_proc_i|Mux102\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|net_proc_i|Mux102~combout\ = (\eth_top_i|net_proc_i|Mux102~0_combout\ & (((\eth_top_i|net_proc_i|proto_len_r\(4)) # (!\eth_top_i|net_proc_i|Mux105~0_combout\)))) # (!\eth_top_i|net_proc_i|Mux102~0_combout\ & (\reg_file_i|eth_reg_rdata\(12) & 
-- ((\eth_top_i|net_proc_i|Mux105~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file_i|eth_reg_rdata\(12),
	datab => \eth_top_i|net_proc_i|Mux102~0_combout\,
	datac => \eth_top_i|net_proc_i|proto_len_r\(4),
	datad => \eth_top_i|net_proc_i|Mux105~0_combout\,
	combout => \eth_top_i|net_proc_i|Mux102~combout\);

-- Location: M9K_X33_Y27_N0
\eth_top_i|eth_tx_ram_i|eth_tx_buf_i|altsyncram_component|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000400FF50100C090109AA000FFFF",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000400FF50100C090109AA000FFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 4,
	data_interleave_width_in_bits => 1,
	init_file => "eth_tx_ram.mif",
	init_file_layout => "port_a",
	logical_ram_name => "eth_top:eth_top_i|eth_tx_ram:eth_tx_ram_i|eth_tx_buf:eth_tx_buf_i|altsyncram:altsyncram_component|altsyncram_djo1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 8192,
	port_b_logical_ram_width => 4,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \eth_top_i|net_proc_i|tx_ram_we_r~q\,
	portbre => VCC,
	clk0 => \infrastructure_top_i|system_clock_pll_i|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	clk1 => \ETH_TX_CLK~inputclkctrl_outclk\,
	ena0 => \eth_top_i|net_proc_i|tx_ram_we_r~q\,
	portadatain => \eth_top_i|eth_tx_ram_i|eth_tx_buf_i|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \eth_top_i|eth_tx_ram_i|eth_tx_buf_i|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \eth_top_i|eth_tx_ram_i|eth_tx_buf_i|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \eth_top_i|eth_tx_ram_i|eth_tx_buf_i|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: FF_X32_Y29_N19
\eth_top_i|eth_tx_ram_i|data_out_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	asdata => \eth_top_i|eth_tx_ram_i|eth_tx_buf_i|altsyncram_component|auto_generated|q_b\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_ram_i|data_out_r\(0));

-- Location: LCCOMB_X32_Y29_N30
\eth_top_i|eth_tx_i|crc32nibble_i|m_s[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|crc32nibble_i|m_s\(3) = \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(0) $ (\eth_top_i|eth_tx_ram_i|data_out_r\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(0),
	datad => \eth_top_i|eth_tx_ram_i|data_out_r\(0),
	combout => \eth_top_i|eth_tx_i|crc32nibble_i|m_s\(3));

-- Location: LCCOMB_X31_Y28_N20
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~32_combout\ = (!\eth_top_i|eth_tx_i|crc_sclr_s~3_combout\ & (\eth_top_i|eth_tx_i|crc32nibble_i|m_s\(0) $ (\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(9) $ (\eth_top_i|eth_tx_i|crc32nibble_i|m_s\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|crc32nibble_i|m_s\(0),
	datab => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(9),
	datac => \eth_top_i|eth_tx_i|crc_sclr_s~3_combout\,
	datad => \eth_top_i|eth_tx_i|crc32nibble_i|m_s\(3),
	combout => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~32_combout\);

-- Location: FF_X31_Y28_N21
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~32_combout\,
	ena => \eth_top_i|eth_tx_i|ALT_INV_eth_tx_sm.st_send_crc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(5));

-- Location: LCCOMB_X32_Y29_N12
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~30_combout\ = (!\eth_top_i|eth_tx_i|crc_sclr_s~3_combout\ & \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|crc_sclr_s~3_combout\,
	datad => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(5),
	combout => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~30_combout\);

-- Location: FF_X32_Y29_N13
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~30_combout\,
	ena => \eth_top_i|eth_tx_i|ALT_INV_eth_tx_sm.st_send_crc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(1));

-- Location: LCCOMB_X32_Y29_N18
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~22_combout\ = \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(0) $ (\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(1) $ (\eth_top_i|eth_tx_ram_i|data_out_r\(0) $ (\eth_top_i|eth_tx_ram_i|data_out_r\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(0),
	datab => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(1),
	datac => \eth_top_i|eth_tx_ram_i|data_out_r\(0),
	datad => \eth_top_i|eth_tx_ram_i|data_out_r\(1),
	combout => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~22_combout\);

-- Location: LCCOMB_X32_Y29_N4
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~42_combout\ = (!\eth_top_i|eth_tx_i|crc_sclr_s~3_combout\ & (\eth_top_i|eth_tx_i|crc32nibble_i|m_s\(0) $ (\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(31) $ (!\eth_top_i|eth_tx_i|crc32nibble_i|crc_r~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|crc_sclr_s~3_combout\,
	datab => \eth_top_i|eth_tx_i|crc32nibble_i|m_s\(0),
	datac => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(31),
	datad => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~22_combout\,
	combout => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~42_combout\);

-- Location: FF_X32_Y29_N5
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~42_combout\,
	ena => \eth_top_i|eth_tx_i|ALT_INV_eth_tx_sm.st_send_crc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(27));

-- Location: LCCOMB_X32_Y29_N0
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~43_combout\ = (!\eth_top_i|eth_tx_i|crc_sclr_s~3_combout\ & (\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(27) $ (\eth_top_i|eth_tx_i|crc32nibble_i|m_s\(3) $ (!\eth_top_i|eth_tx_i|crc32nibble_i|crc_r~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|crc_sclr_s~3_combout\,
	datab => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(27),
	datac => \eth_top_i|eth_tx_i|crc32nibble_i|m_s\(3),
	datad => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~20_combout\,
	combout => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~43_combout\);

-- Location: FF_X32_Y29_N1
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~43_combout\,
	ena => \eth_top_i|eth_tx_i|ALT_INV_eth_tx_sm.st_send_crc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(23));

-- Location: LCCOMB_X31_Y28_N30
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~41_combout\ = (!\eth_top_i|eth_tx_i|crc_sclr_s~3_combout\ & (\eth_top_i|eth_tx_i|crc32nibble_i|m_s\(2) $ (\eth_top_i|eth_tx_i|crc32nibble_i|crc_r~20_combout\ $ (!\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|crc32nibble_i|m_s\(2),
	datab => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~20_combout\,
	datac => \eth_top_i|eth_tx_i|crc_sclr_s~3_combout\,
	datad => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(23),
	combout => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~41_combout\);

-- Location: FF_X31_Y28_N31
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~41_combout\,
	ena => \eth_top_i|eth_tx_i|ALT_INV_eth_tx_sm.st_send_crc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(19));

-- Location: LCCOMB_X32_Y28_N14
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~53_combout\ = (!\eth_top_i|eth_tx_i|crc_sclr_s~3_combout\ & (\eth_top_i|eth_tx_ram_i|data_out_r\(3) $ (\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(3) $ (!\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_ram_i|data_out_r\(3),
	datab => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(3),
	datac => \eth_top_i|eth_tx_i|crc_sclr_s~3_combout\,
	datad => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(19),
	combout => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~53_combout\);

-- Location: FF_X32_Y28_N15
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~53_combout\,
	ena => \eth_top_i|eth_tx_i|ALT_INV_eth_tx_sm.st_send_crc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(15));

-- Location: LCCOMB_X32_Y28_N0
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~40_combout\ = (\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(15) & !\eth_top_i|eth_tx_i|crc_sclr_s~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(15),
	datac => \eth_top_i|eth_tx_i|crc_sclr_s~3_combout\,
	combout => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~40_combout\);

-- Location: FF_X32_Y28_N1
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~40_combout\,
	ena => \eth_top_i|eth_tx_i|ALT_INV_eth_tx_sm.st_send_crc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(11));

-- Location: LCCOMB_X32_Y27_N16
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~37_combout\ = (!\eth_top_i|eth_tx_i|crc_sclr_s~3_combout\ & (\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(18) $ (\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(2) $ (!\eth_top_i|eth_tx_ram_i|data_out_r\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(18),
	datab => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(2),
	datac => \eth_top_i|eth_tx_i|crc_sclr_s~3_combout\,
	datad => \eth_top_i|eth_tx_ram_i|data_out_r\(2),
	combout => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~37_combout\);

-- Location: FF_X32_Y27_N17
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~37_combout\,
	ena => \eth_top_i|eth_tx_i|ALT_INV_eth_tx_sm.st_send_crc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(14));

-- Location: LCCOMB_X32_Y27_N12
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~33_combout\ = (!\eth_top_i|eth_tx_i|crc_sclr_s~3_combout\ & \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|eth_tx_i|crc_sclr_s~3_combout\,
	datad => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(14),
	combout => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~33_combout\);

-- Location: FF_X32_Y27_N13
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~33_combout\,
	ena => \eth_top_i|eth_tx_i|ALT_INV_eth_tx_sm.st_send_crc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(10));

-- Location: LCCOMB_X32_Y27_N6
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~39_combout\ = (!\eth_top_i|eth_tx_i|crc_sclr_s~3_combout\ & (\eth_top_i|eth_tx_i|crc32nibble_i|crc_r~22_combout\ $ (\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|crc_sclr_s~3_combout\,
	datac => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~22_combout\,
	datad => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(10),
	combout => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~39_combout\);

-- Location: FF_X32_Y27_N7
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~39_combout\,
	ena => \eth_top_i|eth_tx_i|ALT_INV_eth_tx_sm.st_send_crc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(6));

-- Location: LCCOMB_X31_Y28_N10
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~21_combout\ = (!\eth_top_i|eth_tx_i|crc_sclr_s~3_combout\ & (\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(12) $ (\eth_top_i|eth_tx_i|crc32nibble_i|crc_r~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(12),
	datac => \eth_top_i|eth_tx_i|crc_sclr_s~3_combout\,
	datad => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~20_combout\,
	combout => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~21_combout\);

-- Location: FF_X31_Y28_N11
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~21_combout\,
	ena => \eth_top_i|eth_tx_i|ALT_INV_eth_tx_sm.st_send_crc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(8));

-- Location: LCCOMB_X32_Y29_N24
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~27_combout\ = (!\eth_top_i|eth_tx_i|crc_sclr_s~3_combout\ & (\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(2) $ (\eth_top_i|eth_tx_ram_i|data_out_r\(2) $ (!\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|crc_sclr_s~3_combout\,
	datab => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(2),
	datac => \eth_top_i|eth_tx_ram_i|data_out_r\(2),
	datad => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(8),
	combout => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~27_combout\);

-- Location: FF_X32_Y29_N25
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~27_combout\,
	ena => \eth_top_i|eth_tx_i|ALT_INV_eth_tx_sm.st_send_crc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(4));

-- Location: LCCOMB_X32_Y29_N10
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~24_combout\ = (!\eth_top_i|eth_tx_i|crc_sclr_s~3_combout\ & \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|crc_sclr_s~3_combout\,
	datad => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(4),
	combout => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~24_combout\);

-- Location: FF_X32_Y29_N11
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~24_combout\,
	ena => \eth_top_i|eth_tx_i|ALT_INV_eth_tx_sm.st_send_crc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(0));

-- Location: LCCOMB_X32_Y29_N8
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~51_combout\ = (!\eth_top_i|eth_tx_i|crc_sclr_s~3_combout\ & (\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(6) $ (\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(0) $ (!\eth_top_i|eth_tx_ram_i|data_out_r\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|crc_sclr_s~3_combout\,
	datab => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(6),
	datac => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(0),
	datad => \eth_top_i|eth_tx_ram_i|data_out_r\(0),
	combout => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~51_combout\);

-- Location: FF_X32_Y29_N9
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~51_combout\,
	ena => \eth_top_i|eth_tx_i|ALT_INV_eth_tx_sm.st_send_crc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(2));

-- Location: LCCOMB_X32_Y29_N6
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~26_combout\ = \eth_top_i|eth_tx_ram_i|data_out_r\(2) $ (\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(2) $ (\eth_top_i|eth_tx_ram_i|data_out_r\(1) $ (\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_ram_i|data_out_r\(2),
	datab => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(2),
	datac => \eth_top_i|eth_tx_ram_i|data_out_r\(1),
	datad => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(1),
	combout => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~26_combout\);

-- Location: LCCOMB_X32_Y29_N2
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~44_combout\ = (!\eth_top_i|eth_tx_i|crc_sclr_s~3_combout\ & (\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(11) $ (\eth_top_i|eth_tx_i|crc32nibble_i|crc_r~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|crc_sclr_s~3_combout\,
	datab => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(11),
	datac => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~26_combout\,
	combout => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~44_combout\);

-- Location: FF_X32_Y29_N3
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~44_combout\,
	ena => \eth_top_i|eth_tx_i|ALT_INV_eth_tx_sm.st_send_crc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(7));

-- Location: LCCOMB_X32_Y29_N14
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~52_combout\ = (!\eth_top_i|eth_tx_i|crc_sclr_s~3_combout\ & (\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(7) $ (\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(1) $ (!\eth_top_i|eth_tx_ram_i|data_out_r\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|crc_sclr_s~3_combout\,
	datab => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(7),
	datac => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(1),
	datad => \eth_top_i|eth_tx_ram_i|data_out_r\(1),
	combout => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~52_combout\);

-- Location: FF_X32_Y29_N15
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~52_combout\,
	ena => \eth_top_i|eth_tx_i|ALT_INV_eth_tx_sm.st_send_crc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(3));

-- Location: LCCOMB_X32_Y29_N28
\eth_top_i|eth_tx_i|crc32nibble_i|m_s[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|crc32nibble_i|m_s\(0) = \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(3) $ (\eth_top_i|eth_tx_ram_i|data_out_r\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(3),
	datac => \eth_top_i|eth_tx_ram_i|data_out_r\(3),
	combout => \eth_top_i|eth_tx_i|crc32nibble_i|m_s\(0));

-- Location: LCCOMB_X32_Y29_N22
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~47_combout\ = (!\eth_top_i|eth_tx_i|crc_sclr_s~3_combout\ & (\eth_top_i|eth_tx_i|crc32nibble_i|crc_r~26_combout\ $ (\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(0) $ (\eth_top_i|eth_tx_ram_i|data_out_r\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|crc_sclr_s~3_combout\,
	datab => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~26_combout\,
	datac => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(0),
	datad => \eth_top_i|eth_tx_ram_i|data_out_r\(0),
	combout => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~47_combout\);

-- Location: FF_X32_Y29_N23
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~47_combout\,
	ena => \eth_top_i|eth_tx_i|ALT_INV_eth_tx_sm.st_send_crc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(28));

-- Location: LCCOMB_X32_Y29_N16
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~23_combout\ = (!\eth_top_i|eth_tx_i|crc_sclr_s~3_combout\ & (\eth_top_i|eth_tx_i|crc32nibble_i|m_s\(0) $ (\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(28) $ (!\eth_top_i|eth_tx_i|crc32nibble_i|crc_r~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|crc_sclr_s~3_combout\,
	datab => \eth_top_i|eth_tx_i|crc32nibble_i|m_s\(0),
	datac => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(28),
	datad => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~22_combout\,
	combout => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~23_combout\);

-- Location: FF_X32_Y29_N17
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~23_combout\,
	ena => \eth_top_i|eth_tx_i|ALT_INV_eth_tx_sm.st_send_crc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(24));

-- Location: LCCOMB_X32_Y29_N20
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~25_combout\ = (!\eth_top_i|eth_tx_i|crc_sclr_s~3_combout\ & (\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(24) $ (\eth_top_i|eth_tx_i|crc32nibble_i|m_s\(3) $ (!\eth_top_i|eth_tx_i|crc32nibble_i|crc_r~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|crc_sclr_s~3_combout\,
	datab => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(24),
	datac => \eth_top_i|eth_tx_i|crc32nibble_i|m_s\(3),
	datad => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~20_combout\,
	combout => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~25_combout\);

-- Location: FF_X32_Y29_N21
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~25_combout\,
	ena => \eth_top_i|eth_tx_i|ALT_INV_eth_tx_sm.st_send_crc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(20));

-- Location: LCCOMB_X31_Y28_N28
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~45_combout\ = (!\eth_top_i|eth_tx_i|crc_sclr_s~3_combout\ & (\eth_top_i|eth_tx_ram_i|data_out_r\(0) $ (\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(20) $ (!\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_ram_i|data_out_r\(0),
	datab => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(20),
	datac => \eth_top_i|eth_tx_i|crc_sclr_s~3_combout\,
	datad => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(0),
	combout => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~45_combout\);

-- Location: FF_X31_Y28_N29
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~45_combout\,
	ena => \eth_top_i|eth_tx_i|ALT_INV_eth_tx_sm.st_send_crc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(16));

-- Location: LCCOMB_X31_Y28_N22
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~46_combout\ = (!\eth_top_i|eth_tx_i|crc_sclr_s~3_combout\ & (\eth_top_i|eth_tx_ram_i|data_out_r\(0) $ (\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(16) $ (!\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_ram_i|data_out_r\(0),
	datab => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(16),
	datac => \eth_top_i|eth_tx_i|crc_sclr_s~3_combout\,
	datad => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(0),
	combout => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~46_combout\);

-- Location: FF_X31_Y28_N23
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~46_combout\,
	ena => \eth_top_i|eth_tx_i|ALT_INV_eth_tx_sm.st_send_crc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(12));

-- Location: LCCOMB_X31_Y29_N20
\eth_top_i|eth_tx_i|Mux3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|Mux3~2_combout\ = (\eth_top_i|eth_tx_i|nibble_cnt_r\(2) & ((\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(12)) # ((\eth_top_i|eth_tx_i|nibble_cnt_r\(1))))) # (!\eth_top_i|eth_tx_i|nibble_cnt_r\(2) & (((!\eth_top_i|eth_tx_i|nibble_cnt_r\(1) 
-- & \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|nibble_cnt_r\(2),
	datab => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(12),
	datac => \eth_top_i|eth_tx_i|nibble_cnt_r\(1),
	datad => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(28),
	combout => \eth_top_i|eth_tx_i|Mux3~2_combout\);

-- Location: LCCOMB_X31_Y29_N14
\eth_top_i|eth_tx_i|Mux3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|Mux3~3_combout\ = (\eth_top_i|eth_tx_i|Mux3~2_combout\ & (((\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(4)) # (!\eth_top_i|eth_tx_i|nibble_cnt_r\(1))))) # (!\eth_top_i|eth_tx_i|Mux3~2_combout\ & 
-- (\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(20) & (\eth_top_i|eth_tx_i|nibble_cnt_r\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(20),
	datab => \eth_top_i|eth_tx_i|Mux3~2_combout\,
	datac => \eth_top_i|eth_tx_i|nibble_cnt_r\(1),
	datad => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(4),
	combout => \eth_top_i|eth_tx_i|Mux3~3_combout\);

-- Location: LCCOMB_X31_Y29_N0
\eth_top_i|eth_tx_i|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|Mux3~0_combout\ = (\eth_top_i|eth_tx_i|nibble_cnt_r\(2) & (((\eth_top_i|eth_tx_i|nibble_cnt_r\(1))))) # (!\eth_top_i|eth_tx_i|nibble_cnt_r\(2) & ((\eth_top_i|eth_tx_i|nibble_cnt_r\(1) & (\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(16))) # 
-- (!\eth_top_i|eth_tx_i|nibble_cnt_r\(1) & ((\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(24))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(16),
	datab => \eth_top_i|eth_tx_i|nibble_cnt_r\(2),
	datac => \eth_top_i|eth_tx_i|nibble_cnt_r\(1),
	datad => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(24),
	combout => \eth_top_i|eth_tx_i|Mux3~0_combout\);

-- Location: LCCOMB_X31_Y29_N10
\eth_top_i|eth_tx_i|Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|Mux3~1_combout\ = (\eth_top_i|eth_tx_i|nibble_cnt_r\(2) & ((\eth_top_i|eth_tx_i|Mux3~0_combout\ & (\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(0))) # (!\eth_top_i|eth_tx_i|Mux3~0_combout\ & 
-- ((\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(8)))))) # (!\eth_top_i|eth_tx_i|nibble_cnt_r\(2) & (\eth_top_i|eth_tx_i|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|nibble_cnt_r\(2),
	datab => \eth_top_i|eth_tx_i|Mux3~0_combout\,
	datac => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(0),
	datad => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(8),
	combout => \eth_top_i|eth_tx_i|Mux3~1_combout\);

-- Location: LCCOMB_X31_Y29_N8
\eth_top_i|eth_tx_i|Selector21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|Selector21~0_combout\ = (\eth_top_i|eth_tx_i|eth_tx_sm.st_send_crc~q\ & ((\eth_top_i|eth_tx_i|nibble_cnt_r\(0) & ((\eth_top_i|eth_tx_i|Mux3~1_combout\))) # (!\eth_top_i|eth_tx_i|nibble_cnt_r\(0) & 
-- (\eth_top_i|eth_tx_i|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|nibble_cnt_r\(0),
	datab => \eth_top_i|eth_tx_i|Mux3~3_combout\,
	datac => \eth_top_i|eth_tx_i|eth_tx_sm.st_send_crc~q\,
	datad => \eth_top_i|eth_tx_i|Mux3~1_combout\,
	combout => \eth_top_i|eth_tx_i|Selector21~0_combout\);

-- Location: LCCOMB_X31_Y29_N6
\eth_top_i|eth_tx_i|Selector21~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|Selector21~1_combout\ = (\eth_top_i|eth_tx_i|Selector21~0_combout\) # ((\eth_top_i|eth_tx_ram_i|data_out_r\(0) & \eth_top_i|eth_tx_i|eth_tx_sm.st_send_data~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_ram_i|data_out_r\(0),
	datab => \eth_top_i|eth_tx_i|Selector21~0_combout\,
	datad => \eth_top_i|eth_tx_i|eth_tx_sm.st_send_data~q\,
	combout => \eth_top_i|eth_tx_i|Selector21~1_combout\);

-- Location: FF_X31_Y29_N7
\eth_top_i|eth_tx_i|txd_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|Selector21~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|txd_r\(0));

-- Location: LCCOMB_X31_Y29_N18
\eth_top_i|eth_pins_i|txd_or[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_pins_i|txd_or[0]~feeder_combout\ = \eth_top_i|eth_tx_i|txd_r\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|eth_tx_i|txd_r\(0),
	combout => \eth_top_i|eth_pins_i|txd_or[0]~feeder_combout\);

-- Location: FF_X31_Y29_N19
\eth_top_i|eth_pins_i|txd_or[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_pins_i|txd_or[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_pins_i|txd_or\(0));

-- Location: LCCOMB_X31_Y28_N18
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~50_combout\ = (!\eth_top_i|eth_tx_i|crc_sclr_s~3_combout\ & (\eth_top_i|eth_tx_i|crc32nibble_i|crc_r~20_combout\ $ (\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(1) $ (\eth_top_i|eth_tx_ram_i|data_out_r\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|crc_sclr_s~3_combout\,
	datab => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~20_combout\,
	datac => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(1),
	datad => \eth_top_i|eth_tx_ram_i|data_out_r\(1),
	combout => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~50_combout\);

-- Location: FF_X31_Y28_N19
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~50_combout\,
	ena => \eth_top_i|eth_tx_i|ALT_INV_eth_tx_sm.st_send_crc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(29));

-- Location: LCCOMB_X31_Y28_N12
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~29_combout\ = (!\eth_top_i|eth_tx_i|crc_sclr_s~3_combout\ & (\eth_top_i|eth_tx_i|crc32nibble_i|crc_r~26_combout\ $ (\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~26_combout\,
	datab => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(29),
	datac => \eth_top_i|eth_tx_i|crc_sclr_s~3_combout\,
	combout => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~29_combout\);

-- Location: FF_X31_Y28_N13
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~29_combout\,
	ena => \eth_top_i|eth_tx_i|ALT_INV_eth_tx_sm.st_send_crc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(25));

-- Location: LCCOMB_X31_Y28_N6
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~31_combout\ = (!\eth_top_i|eth_tx_i|crc_sclr_s~3_combout\ & (\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(25) $ (\eth_top_i|eth_tx_i|crc32nibble_i|m_s\(0) $ (!\eth_top_i|eth_tx_i|crc32nibble_i|crc_r~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|crc_sclr_s~3_combout\,
	datab => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(25),
	datac => \eth_top_i|eth_tx_i|crc32nibble_i|m_s\(0),
	datad => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~22_combout\,
	combout => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~31_combout\);

-- Location: FF_X31_Y28_N7
\eth_top_i|eth_tx_i|crc32nibble_i|crc_r[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r~31_combout\,
	ena => \eth_top_i|eth_tx_i|ALT_INV_eth_tx_sm.st_send_crc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(21));

-- Location: LCCOMB_X32_Y28_N26
\eth_top_i|eth_tx_i|Mux2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|Mux2~2_combout\ = (\eth_top_i|eth_tx_i|nibble_cnt_r\(2) & ((\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(13)) # ((\eth_top_i|eth_tx_i|nibble_cnt_r\(1))))) # (!\eth_top_i|eth_tx_i|nibble_cnt_r\(2) & 
-- (((\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(29) & !\eth_top_i|eth_tx_i|nibble_cnt_r\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(13),
	datab => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(29),
	datac => \eth_top_i|eth_tx_i|nibble_cnt_r\(2),
	datad => \eth_top_i|eth_tx_i|nibble_cnt_r\(1),
	combout => \eth_top_i|eth_tx_i|Mux2~2_combout\);

-- Location: LCCOMB_X32_Y28_N4
\eth_top_i|eth_tx_i|Mux2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|Mux2~3_combout\ = (\eth_top_i|eth_tx_i|Mux2~2_combout\ & ((\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(5)) # ((!\eth_top_i|eth_tx_i|nibble_cnt_r\(1))))) # (!\eth_top_i|eth_tx_i|Mux2~2_combout\ & 
-- (((\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(21) & \eth_top_i|eth_tx_i|nibble_cnt_r\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(5),
	datab => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(21),
	datac => \eth_top_i|eth_tx_i|Mux2~2_combout\,
	datad => \eth_top_i|eth_tx_i|nibble_cnt_r\(1),
	combout => \eth_top_i|eth_tx_i|Mux2~3_combout\);

-- Location: LCCOMB_X32_Y28_N16
\eth_top_i|eth_tx_i|Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|Mux2~1_combout\ = (\eth_top_i|eth_tx_i|Mux2~0_combout\ & (((\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(1))) # (!\eth_top_i|eth_tx_i|nibble_cnt_r\(2)))) # (!\eth_top_i|eth_tx_i|Mux2~0_combout\ & (\eth_top_i|eth_tx_i|nibble_cnt_r\(2) & 
-- ((\eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|Mux2~0_combout\,
	datab => \eth_top_i|eth_tx_i|nibble_cnt_r\(2),
	datac => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(1),
	datad => \eth_top_i|eth_tx_i|crc32nibble_i|crc_r\(9),
	combout => \eth_top_i|eth_tx_i|Mux2~1_combout\);

-- Location: LCCOMB_X32_Y28_N6
\eth_top_i|eth_tx_i|Selector20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|Selector20~0_combout\ = (\eth_top_i|eth_tx_i|eth_tx_sm.st_send_crc~q\ & ((\eth_top_i|eth_tx_i|nibble_cnt_r\(0) & ((\eth_top_i|eth_tx_i|Mux2~1_combout\))) # (!\eth_top_i|eth_tx_i|nibble_cnt_r\(0) & 
-- (\eth_top_i|eth_tx_i|Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|nibble_cnt_r\(0),
	datab => \eth_top_i|eth_tx_i|Mux2~3_combout\,
	datac => \eth_top_i|eth_tx_i|eth_tx_sm.st_send_crc~q\,
	datad => \eth_top_i|eth_tx_i|Mux2~1_combout\,
	combout => \eth_top_i|eth_tx_i|Selector20~0_combout\);

-- Location: LCCOMB_X32_Y28_N10
\eth_top_i|eth_tx_i|Selector20~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|Selector20~1_combout\ = (\eth_top_i|eth_tx_i|Selector20~0_combout\) # ((\eth_top_i|eth_tx_i|eth_tx_sm.st_send_data~q\ & \eth_top_i|eth_tx_ram_i|data_out_r\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|eth_tx_sm.st_send_data~q\,
	datac => \eth_top_i|eth_tx_ram_i|data_out_r\(1),
	datad => \eth_top_i|eth_tx_i|Selector20~0_combout\,
	combout => \eth_top_i|eth_tx_i|Selector20~1_combout\);

-- Location: FF_X32_Y28_N11
\eth_top_i|eth_tx_i|txd_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|Selector20~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|txd_r\(1));

-- Location: LCCOMB_X31_Y29_N12
\eth_top_i|eth_pins_i|txd_or[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_pins_i|txd_or[1]~feeder_combout\ = \eth_top_i|eth_tx_i|txd_r\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \eth_top_i|eth_tx_i|txd_r\(1),
	combout => \eth_top_i|eth_pins_i|txd_or[1]~feeder_combout\);

-- Location: FF_X31_Y29_N13
\eth_top_i|eth_pins_i|txd_or[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_pins_i|txd_or[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_pins_i|txd_or\(1));

-- Location: LCCOMB_X32_Y27_N18
\eth_top_i|eth_tx_i|Selector19~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|Selector19~1_combout\ = (\eth_top_i|eth_tx_i|Selector19~0_combout\) # ((\eth_top_i|eth_tx_i|eth_tx_sm.st_send_data~q\ & \eth_top_i|eth_tx_ram_i|data_out_r\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|Selector19~0_combout\,
	datab => \eth_top_i|eth_tx_i|eth_tx_sm.st_send_data~q\,
	datad => \eth_top_i|eth_tx_ram_i|data_out_r\(2),
	combout => \eth_top_i|eth_tx_i|Selector19~1_combout\);

-- Location: FF_X32_Y27_N19
\eth_top_i|eth_tx_i|txd_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|Selector19~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|txd_r\(2));

-- Location: LCCOMB_X32_Y27_N8
\eth_top_i|eth_pins_i|txd_or[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_pins_i|txd_or[2]~feeder_combout\ = \eth_top_i|eth_tx_i|txd_r\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|eth_tx_i|txd_r\(2),
	combout => \eth_top_i|eth_pins_i|txd_or[2]~feeder_combout\);

-- Location: FF_X32_Y27_N9
\eth_top_i|eth_pins_i|txd_or[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_pins_i|txd_or[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_pins_i|txd_or\(2));

-- Location: LCCOMB_X32_Y28_N28
\eth_top_i|eth_tx_i|Selector18~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_tx_i|Selector18~1_combout\ = (\eth_top_i|eth_tx_i|Selector18~0_combout\) # ((\eth_top_i|eth_tx_i|eth_tx_sm.st_send_data~q\ & \eth_top_i|eth_tx_ram_i|data_out_r\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eth_top_i|eth_tx_i|Selector18~0_combout\,
	datac => \eth_top_i|eth_tx_i|eth_tx_sm.st_send_data~q\,
	datad => \eth_top_i|eth_tx_ram_i|data_out_r\(3),
	combout => \eth_top_i|eth_tx_i|Selector18~1_combout\);

-- Location: FF_X32_Y28_N29
\eth_top_i|eth_tx_i|txd_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_tx_i|Selector18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_tx_i|txd_r\(3));

-- Location: LCCOMB_X32_Y28_N24
\eth_top_i|eth_pins_i|txd_or[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \eth_top_i|eth_pins_i|txd_or[3]~feeder_combout\ = \eth_top_i|eth_tx_i|txd_r\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \eth_top_i|eth_tx_i|txd_r\(3),
	combout => \eth_top_i|eth_pins_i|txd_or[3]~feeder_combout\);

-- Location: FF_X32_Y28_N25
\eth_top_i|eth_pins_i|txd_or[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ETH_TX_CLK~inputclkctrl_outclk\,
	d => \eth_top_i|eth_pins_i|txd_or[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \eth_top_i|eth_pins_i|txd_or\(3));

-- Location: IOIBUF_X31_Y34_N1
\CLOCK20MHZ[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK20MHZ(1),
	o => \CLOCK20MHZ[1]~input_o\);

-- Location: IOIBUF_X53_Y25_N1
\STROBE~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_STROBE,
	o => \STROBE~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\EthAddrSelect[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EthAddrSelect(0),
	o => \EthAddrSelect[0]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\EthAddrSelect[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EthAddrSelect(1),
	o => \EthAddrSelect[1]~input_o\);

-- Location: IOIBUF_X3_Y0_N22
\EthAddrSelect[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EthAddrSelect(2),
	o => \EthAddrSelect[2]~input_o\);

-- Location: IOIBUF_X7_Y0_N8
\EthAddrSelect[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EthAddrSelect(3),
	o => \EthAddrSelect[3]~input_o\);

-- Location: IOIBUF_X40_Y0_N1
\EthAddrSelect[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EthAddrSelect(4),
	o => \EthAddrSelect[4]~input_o\);

-- Location: IOIBUF_X0_Y5_N22
\EthAddrSelect[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EthAddrSelect(5),
	o => \EthAddrSelect[5]~input_o\);

-- Location: IOIBUF_X53_Y26_N22
\EthAddrSelect[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EthAddrSelect(6),
	o => \EthAddrSelect[6]~input_o\);

-- Location: IOIBUF_X53_Y13_N8
\EthAddrSelect[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EthAddrSelect(7),
	o => \EthAddrSelect[7]~input_o\);

-- Location: IOIBUF_X0_Y6_N15
\ETH_CRS~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ETH_CRS,
	o => \ETH_CRS~input_o\);

-- Location: IOIBUF_X45_Y34_N22
\ETH_COL~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ETH_COL,
	o => \ETH_COL~input_o\);

ww_ETH_TX_EN <= \ETH_TX_EN~output_o\;

ww_ETH_TXD(0) <= \ETH_TXD[0]~output_o\;

ww_ETH_TXD(1) <= \ETH_TXD[1]~output_o\;

ww_ETH_TXD(2) <= \ETH_TXD[2]~output_o\;

ww_ETH_TXD(3) <= \ETH_TXD[3]~output_o\;
END structure;


