library ieee;
use ieee.std_logic_1164.all;

package reg_map is

	constant REG_ECHO_NUM   : std_logic_vector(15 downto 0) := X"0000";
	constant REG_ECHO_WIDTH : integer := 16;

	constant REG_SPI_REG_NUM_NUM            : std_logic_vector(15 downto 0) := X"0010";
	constant REG_SPI_REG_NUM_WIDTH          : integer := 7;
	constant REG_SPI_REG_NUM_DEFAULT_VALUE  : std_logic_vector(15 downto 0) := X"0000";

	constant REG_SPI_BURST_LEN_NUM            : std_logic_vector(15 downto 0) := X"0011";
	constant REG_SPI_BURST_LEN_WIDTH          : integer := 16;
	constant REG_SPI_BURST_LEN_DEFAULT_VALUE  : std_logic_vector(15 downto 0) := X"0000";

	constant REG_SPI_READ_COMMAND_NUM   : std_logic_vector(15 downto 0) := X"0020";
	constant REG_SPI_READ_COMMAND_WIDTH : integer := 8;

	constant REG_SPI_WRITE_COMMAND_NUM   : std_logic_vector(15 downto 0) := X"0021";
	constant REG_SPI_WRITE_COMMAND_WIDTH : integer := 8;

	constant REG_SPI_STATUS_NUM   : std_logic_vector(15 downto 0) := X"0030";
	constant REG_SPI_STATUS_WIDTH : integer := 8;
	
	constant REG_VOLTAGE0_NUM   : std_logic_vector(15 downto 0) := X"0100";
	constant REG_VOLTAGE0_WIDTH : integer := 12;

	constant REG_VOLTAGE1_NUM   : std_logic_vector(15 downto 0) := X"0101";
	constant REG_VOLTAGE1_WIDTH : integer := 12;

	constant REG_VOLTAGE2_NUM   : std_logic_vector(15 downto 0) := X"0102";
	constant REG_VOLTAGE2_WIDTH : integer := 12;

	constant REG_VOLTAGE3_NUM   : std_logic_vector(15 downto 0) := X"0103";
	constant REG_VOLTAGE3_WIDTH : integer := 12;

	constant REG_VOLTAGE4_NUM   : std_logic_vector(15 downto 0) := X"0104";
	constant REG_VOLTAGE4_WIDTH : integer := 12;

	constant REG_VOLTAGE5_NUM   : std_logic_vector(15 downto 0) := X"0105";
	constant REG_VOLTAGE5_WIDTH : integer := 12;

	constant REG_VOLTAGE6_NUM   : std_logic_vector(15 downto 0) := X"0106";
	constant REG_VOLTAGE6_WIDTH : integer := 12;

	constant REG_VOLTAGE7_NUM   : std_logic_vector(15 downto 0) := X"0107";
	constant REG_VOLTAGE7_WIDTH : integer := 12;
	
	constant REG_TEMPR_NUM   : std_logic_vector(15 downto 0) := X"0120";
	constant REG_TEMPR_WIDTH : integer := 10;

	constant REG_CONTROL1_NUM           : std_logic_vector(15 downto 0) := X"4000";
	constant REG_CONTROL1_WIDTH         : integer := 1;
	constant REG_CONTROL1_DEFAULT_VALUE : std_logic_vector(15 downto 0) := X"0001";
	
	constant REG_ID_NUM   : std_logic_vector(15 downto 0) := X"FFF0";
	constant REG_ID_WIDTH : integer := 16;
	constant REG_ID_DATA  : std_logic_vector(15 downto 0) := X"DEA1";
	 
	constant REG_HW_VER_NUM   : std_logic_vector(15 downto 0) := X"FFF1";
	constant REG_HW_VER_WIDTH : integer := 16;
	constant REG_HW_VER_DATA  : std_logic_vector(15 downto 0) := X"1_0_00"; -- v1.0.0
	
	constant REG_FW_VER_NUM   : std_logic_vector(15 downto 0) := X"FFF2";
	constant REG_FW_VER_WIDTH : integer := 16;
	constant REG_FW_VER_DATA  : std_logic_vector(15 downto 0) := X"0_1_01"; -- v0.1.1
	
end reg_map;

package body reg_map is
end reg_map;