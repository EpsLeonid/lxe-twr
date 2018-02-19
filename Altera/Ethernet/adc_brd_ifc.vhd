library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

use work.types.all;

entity adc_brd_ifc is
port(
	clock           : in std_logic;
	clock_cycle     : in std_logic_vector(2 downto 0);
	
	reg_num    : in std_logic_vector(6 downto 0);
	burst_len  : in std_logic_vector(15 downto 0);
	read_init  : in std_logic;
	write_init : in std_logic;
	ready      : out std_logic;
	
	ram_addr	 : in std_logic_vector(8 downto 0);
	ram_wdata : in std_logic_vector(15 downto 0);
	ram_we	 : in std_logic;
	ram_rdata : out std_logic_vector(15 downto 0);

	strobe   : in std_logic;

   ADC_BRD_CS_N : out std_logic;
	ADC_BRD_MISO : in  std_logic;
	ADC_BRD_MOSI : out std_logic;
	ADC_BRD_SCLK : out std_logic;
	ADC_BRD_STROBE : out std_logic);
end adc_brd_ifc;

architecture behavioral of adc_brd_ifc is

component ab_ifc_ram
port(
		clock			: in std_logic;

		address_a	: in std_logic_vector(8 downto 0);
		data_a		: in std_logic_vector(15 downto 0);
		wren_a		: in std_logic := '0';
		q_a		   : out std_logic_vector(15 downto 0);

		address_b	: in std_logic_vector (9 downto 0);
		data_b		: in std_logic_vector (7 downto 0);
		wren_b		: in STD_LOGIC  := '0';
		q_b		   : out std_logic_vector (7 downto 0));
end component;


component spi_master is
port(
	clock       : in std_logic; -- 120 MHz
	clock_cycle : in std_logic_vector(2 downto 0); --0,1,2,3,4,5,0,1,...

	ready     : out std_logic;
	reg_num   : in std_logic_vector( 6 downto 0);
	burst_len : in std_logic_vector(15 downto 0);
	op_init   : in std_logic;
	op_type   : in std_logic; -- '0': read, '1': write
	
	reg_rdata : out std_logic_vector(7 downto 0);
	reg_rdata_valid : out std_logic;
	reg_wdata : in std_logic_vector(7 downto 0);
	reg_wdata_next  : out std_logic;

	spi_mosi  : out std_logic;
	spi_miso  : in std_logic;
	spi_clk   : out std_logic;
	spi_sel_n : out std_logic);
end component;

	signal ram_addr_cnt : std_logic_vector(9 downto 0) := (others=>'0');
	signal spi_reg_rdata_valid : std_logic := '0';
	signal spi_reg_wdata_next  : std_logic := '0';
	signal spi_reg_rdata       : std_logic_vector(7 downto 0) := (others=>'0');
	signal spi_reg_wdata       : std_logic_vector(7 downto 0) := (others=>'0');
	signal op_init_r   : std_logic := '0';
	signal op_type_r   : std_logic := '0'; -- '0': read, '1': write
	
begin

ab_ifc_ram_i : ab_ifc_ram
port map(
		clock => clock,

		address_a => ram_addr,
		data_a	 => ram_wdata,
		wren_a	 => ram_we,
		q_a		 => ram_rdata,

		address_b => ram_addr_cnt,
		data_b	 => spi_reg_rdata,
		wren_b	 => spi_reg_rdata_valid,
		q_b		 => spi_reg_wdata);

spi_master_i : spi_master
port map(
	clock       => clock,
	clock_cycle => clock_cycle,

	ready     => ready,
	reg_num   => reg_num,
	burst_len => burst_len,
	op_init   => op_init_r,
	op_type   => op_type_r,
	
	reg_rdata       => spi_reg_rdata,
	reg_rdata_valid => spi_reg_rdata_valid,
	reg_wdata       => spi_reg_wdata,
	reg_wdata_next  => spi_reg_wdata_next,

	spi_mosi  => ADC_BRD_MOSI,
	spi_miso  => ADC_BRD_MISO,
	spi_clk   => ADC_BRD_SCLK,
	spi_sel_n => ADC_BRD_CS_N);
	
process(clock)
begin
	if clock'event and clock='1' then
		op_init_r <= '0';
		if read_init='1' or write_init='1' then
			op_init_r <= '1';
			ram_addr_cnt <= (others=>'0');
		elsif spi_reg_rdata_valid='1' or spi_reg_wdata_next='1' then
			ram_addr_cnt <= ram_addr_cnt + '1';
		end if;
		
		if read_init='1' then
			op_type_r <= '0';
		elsif write_init='1' then
			op_type_r <= '1';
		end if;
	end if;
end process;

ADC_BRD_STROBE <= strobe;
	
end architecture;