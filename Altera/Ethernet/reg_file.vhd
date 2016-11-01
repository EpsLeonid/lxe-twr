library ieee;
use ieee.std_logic_1164.ALL;
use ieee.std_logic_arith.ALL;
use ieee.std_logic_unsigned.ALL;

use work.types.all;
use work.reg_map.all;

entity reg_file is
port(
	clock      : in std_logic; -- system clock
	
	spi_reg_num    : out std_logic_vector( 6 downto 0);
	spi_burst_len  : out std_logic_vector(15 downto 0);
	spi_read_init  : out std_logic_vector(7 downto 0);
	spi_write_init : out std_logic_vector(7 downto 0);
	spi_ready      : in  std_logic_vector(7 downto 0);
	
	FanOn : out std_logic;

	Voltage0 : in std_logic_vector(11 downto 0);
	Voltage1 : in std_logic_vector(11 downto 0);
	Voltage2 : in std_logic_vector(11 downto 0);
	Voltage3 : in std_logic_vector(11 downto 0);
	Voltage4 : in std_logic_vector(11 downto 0);
	Voltage5 : in std_logic_vector(11 downto 0);
	Voltage6 : in std_logic_vector(11 downto 0);
	Voltage7 : in std_logic_vector(11 downto 0);
	
	Temperature : in std_logic_vector(9 downto 0);

-- ethernet interface
	eth_reg_we    : in  std_logic;
	eth_reg_num   : in  std_logic_vector(15 downto 0);
	eth_reg_wdata : in  std_logic_vector(15 downto 0);
	eth_reg_rdata : out std_logic_vector(15 downto 0));	
end reg_file;

architecture behavioral of reg_file is

component reg_x is
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
end component;

component reg_s is
generic(
	REG_NUMBER : std_logic_vector(15 downto 0);
	REG_WIDTH  : integer);
port(
	clock     : in std_logic; -- system clock
	
	reg_value : in std_logic_vector(REG_WIDTH-1 downto 0);

	eth_reg_num : in std_logic_vector(15 downto 0);
	eth_reg_rdata : out  std_logic_vector(15 downto 0));
end component;

	signal reg_echo_eth_rdata   : std_logic_vector(15 downto 0) := (others=>'0');
	
	signal spi_reg_num_val       : std_logic_vector(REG_SPI_REG_NUM_WIDTH-1 downto 0) := (others=>'0');
	signal spi_reg_num_eth_rdata : std_logic_vector(15 downto 0) := (others=>'0');

	signal spi_burst_len_val       : std_logic_vector(REG_SPI_BURST_LEN_WIDTH-1 downto 0) := (others=>'0');
	signal spi_burst_len_eth_rdata : std_logic_vector(15 downto 0) := (others=>'0');

	signal spi_read_command_reg  : std_logic_vector(REG_SPI_READ_COMMAND_WIDTH-1 downto 0) := (others=>'0');

	signal spi_write_command_reg : std_logic_vector(REG_SPI_WRITE_COMMAND_WIDTH-1 downto 0) := (others=>'0');	
	
	signal spi_status_eth_rdata : std_logic_vector(15 downto 0) := (others=>'0');

	signal voltgage0_eth_rdata : std_logic_vector(15 downto 0) := (others=>'0');
	signal voltgage1_eth_rdata : std_logic_vector(15 downto 0) := (others=>'0');
	signal voltgage2_eth_rdata : std_logic_vector(15 downto 0) := (others=>'0');
	signal voltgage3_eth_rdata : std_logic_vector(15 downto 0) := (others=>'0');
	signal voltgage4_eth_rdata : std_logic_vector(15 downto 0) := (others=>'0');
	signal voltgage5_eth_rdata : std_logic_vector(15 downto 0) := (others=>'0');
	signal voltgage6_eth_rdata : std_logic_vector(15 downto 0) := (others=>'0');
	signal voltgage7_eth_rdata : std_logic_vector(15 downto 0) := (others=>'0');
	
	signal temperature_eth_rdata : std_logic_vector(15 downto 0) := (others=>'0');
	
	
	signal control1_val       : std_logic_vector(REG_CONTROL1_WIDTH-1 downto 0) := (others=>'0');
	signal control1_eth_rdata : std_logic_vector(15 downto 0) := (others=>'0');

	signal reg_id_eth_rdata     : std_logic_vector(15 downto 0) := (others=>'0');
	signal reg_hw_ver_eth_rdata : std_logic_vector(15 downto 0) := (others=>'0');
	signal reg_fw_ver_eth_rdata : std_logic_vector(15 downto 0) := (others=>'0');		

begin

echo_reg_x : reg_x
generic map(
	REG_NUMBER => REG_ECHO_NUM,
	REG_WIDTH  => REG_ECHO_WIDTH)
port map(
	clock         => clock,
	eth_reg_we    => eth_reg_we,
	eth_reg_num   => eth_reg_num,
	eth_reg_wdata => eth_reg_wdata,
	eth_reg_rdata => reg_echo_eth_rdata);

spi_reg_num_reg_x : reg_x
generic map(
	REG_NUMBER        => REG_SPI_REG_NUM_NUM,
	REG_WIDTH         => REG_SPI_REG_NUM_WIDTH,
	REG_DEFAULT_VALUE => REG_SPI_REG_NUM_DEFAULT_VALUE)
port map(
	clock     => clock,
	reg_value => spi_reg_num_val,
	eth_reg_we    => eth_reg_we,
	eth_reg_num   => eth_reg_num,
	eth_reg_wdata => eth_reg_wdata,
	eth_reg_rdata => spi_reg_num_eth_rdata);

	
spi_burst_len_reg_x : reg_x
generic map(
	REG_NUMBER        => REG_SPI_BURST_LEN_NUM,
	REG_WIDTH         => REG_SPI_BURST_LEN_WIDTH,
	REG_DEFAULT_VALUE => REG_SPI_BURST_LEN_DEFAULT_VALUE)
port map(
	clock     => clock,
	reg_value => spi_burst_len_val,
	eth_reg_we    => eth_reg_we,
	eth_reg_num   => eth_reg_num,
	eth_reg_wdata => eth_reg_wdata,
	eth_reg_rdata => spi_burst_len_eth_rdata);
	
spi_read_command_reg_x : reg_x
generic map(
	REG_NUMBER => REG_SPI_READ_COMMAND_NUM,
	REG_WIDTH  => REG_SPI_READ_COMMAND_WIDTH)
port map(
	clock     => clock,

	reg_cmd_b => spi_read_command_reg,
	
	eth_reg_we    => eth_reg_we,
	eth_reg_num   => eth_reg_num,
	eth_reg_wdata => eth_reg_wdata);
	
spi_write_command_reg_x : reg_x
generic map(
	REG_NUMBER => REG_SPI_WRITE_COMMAND_NUM,
	REG_WIDTH  => REG_SPI_WRITE_COMMAND_WIDTH)
port map(
	clock     => clock,

	reg_cmd_b => spi_write_command_reg,
	
	eth_reg_we    => eth_reg_we,
	eth_reg_num   => eth_reg_num,
	eth_reg_wdata => eth_reg_wdata);

spi_status_reg_s : reg_s
generic map(
	REG_NUMBER => REG_SPI_STATUS_NUM,
	REG_WIDTH  => REG_SPI_STATUS_WIDTH)
port map(
	clock => clock,
	
	reg_value => spi_ready,

	eth_reg_num   => eth_reg_num,
	eth_reg_rdata => spi_status_eth_rdata);

voltage0_reg_s : reg_s
generic map(
	REG_NUMBER => REG_VOLTAGE0_NUM,
	REG_WIDTH  => REG_VOLTAGE0_WIDTH)
port map(
	clock => clock,
	
	reg_value => Voltage0,

	eth_reg_num   => eth_reg_num,
	eth_reg_rdata => voltgage0_eth_rdata);

voltage1_reg_s : reg_s
generic map(
	REG_NUMBER => REG_VOLTAGE1_NUM,
	REG_WIDTH  => REG_VOLTAGE1_WIDTH)
port map(
	clock => clock,
	
	reg_value => Voltage1,

	eth_reg_num   => eth_reg_num,
	eth_reg_rdata => voltgage1_eth_rdata);

voltage2_reg_s : reg_s
generic map(
	REG_NUMBER => REG_VOLTAGE2_NUM,
	REG_WIDTH  => REG_VOLTAGE2_WIDTH)
port map(
	clock => clock,
	
	reg_value => Voltage2,

	eth_reg_num   => eth_reg_num,
	eth_reg_rdata => voltgage2_eth_rdata);

voltage3_reg_s : reg_s
generic map(
	REG_NUMBER => REG_VOLTAGE3_NUM,
	REG_WIDTH  => REG_VOLTAGE3_WIDTH)
port map(
	clock => clock,
	
	reg_value => Voltage3,

	eth_reg_num   => eth_reg_num,
	eth_reg_rdata => voltgage3_eth_rdata);

voltage4_reg_s : reg_s
generic map(
	REG_NUMBER => REG_VOLTAGE4_NUM,
	REG_WIDTH  => REG_VOLTAGE4_WIDTH)
port map(
	clock => clock,
	
	reg_value => Voltage4,

	eth_reg_num   => eth_reg_num,
	eth_reg_rdata => voltgage4_eth_rdata);

voltage5_reg_s : reg_s
generic map(
	REG_NUMBER => REG_VOLTAGE5_NUM,
	REG_WIDTH  => REG_VOLTAGE5_WIDTH)
port map(
	clock => clock,
	
	reg_value => Voltage5,

	eth_reg_num   => eth_reg_num,
	eth_reg_rdata => voltgage5_eth_rdata);

voltage6_reg_s : reg_s
generic map(
	REG_NUMBER => REG_VOLTAGE6_NUM,
	REG_WIDTH  => REG_VOLTAGE6_WIDTH)
port map(
	clock => clock,
	
	reg_value => Voltage6,

	eth_reg_num   => eth_reg_num,
	eth_reg_rdata => voltgage6_eth_rdata);

voltage7_reg_s : reg_s
generic map(
	REG_NUMBER => REG_VOLTAGE7_NUM,
	REG_WIDTH  => REG_VOLTAGE7_WIDTH)
port map(
	clock => clock,
	
	reg_value => Voltage7,

	eth_reg_num   => eth_reg_num,
	eth_reg_rdata => voltgage7_eth_rdata);

temperature_reg_s : reg_s
generic map(
	REG_NUMBER => REG_TEMPR_NUM,
	REG_WIDTH  => REG_TEMPR_WIDTH)
port map(
	clock => clock,
	
	reg_value => temperature,

	eth_reg_num   => eth_reg_num,
	eth_reg_rdata => temperature_eth_rdata);

control1_reg_x : reg_x
generic map(
	REG_NUMBER        => REG_CONTROL1_NUM,
	REG_WIDTH         => REG_CONTROL1_WIDTH,
	REG_DEFAULT_VALUE => REG_CONTROL1_DEFAULT_VALUE)
port map(
	clock     => clock,
	reg_value => control1_val,
	eth_reg_we    => eth_reg_we,
	eth_reg_num   => eth_reg_num,
	eth_reg_wdata => eth_reg_wdata,
	eth_reg_rdata => control1_eth_rdata);
	
	
id_reg_x : reg_x
generic map(
	REG_NUMBER => REG_ID_NUM,
	REG_WIDTH  => REG_ID_WIDTH,
	REG_DEFAULT_VALUE => REG_ID_DATA)
port map(
	clock         => clock,
	eth_reg_we    => '0', -- read only
	eth_reg_num   => eth_reg_num,
	eth_reg_wdata => eth_reg_wdata,
	eth_reg_rdata => reg_id_eth_rdata);

hw_ver_reg_x : reg_x
generic map(
	REG_NUMBER => REG_HW_VER_NUM,
	REG_WIDTH  => REG_HW_VER_WIDTH,
	REG_DEFAULT_VALUE => REG_HW_VER_DATA)
port map(
	clock         => clock,
	eth_reg_we    => '0', -- read only
	eth_reg_num   => eth_reg_num,
	eth_reg_wdata => eth_reg_wdata,
	eth_reg_rdata => reg_hw_ver_eth_rdata);

fw_ver_reg_x : reg_x
generic map(
	REG_NUMBER => REG_FW_VER_NUM,
	REG_WIDTH  => REG_FW_VER_WIDTH,
	REG_DEFAULT_VALUE => REG_FW_VER_DATA)
port map(
	clock         => clock,
	eth_reg_we    => '0', -- read only
	eth_reg_num   => eth_reg_num,
	eth_reg_wdata => eth_reg_wdata,
	eth_reg_rdata => reg_fw_ver_eth_rdata);

clock_proc : process( clock )
begin
	if clock'event and clock='1' then
		eth_reg_rdata <= reg_echo_eth_rdata or 
							  spi_reg_num_eth_rdata or
							  spi_burst_len_eth_rdata or
							  spi_status_eth_rdata or
							  voltgage0_eth_rdata or
							  voltgage1_eth_rdata or
							  voltgage2_eth_rdata or
							  voltgage3_eth_rdata or
							  voltgage4_eth_rdata or
							  voltgage5_eth_rdata or
							  voltgage6_eth_rdata or
							  voltgage7_eth_rdata or
							  temperature_eth_rdata or
							  control1_eth_rdata or 
							  reg_id_eth_rdata or
							  reg_hw_ver_eth_rdata or
							  reg_fw_ver_eth_rdata;
	end if; -- clock;
end process;

spi_reg_num <= spi_reg_num_val;
spi_burst_len <= spi_burst_len_val;
spi_read_init  <= spi_read_command_reg;
spi_write_init <= spi_write_command_reg;

FanOn <= control1_val(0);

end behavioral;
