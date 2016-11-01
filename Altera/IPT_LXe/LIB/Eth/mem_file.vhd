library ieee;
use ieee.std_logic_1164.ALL;
use ieee.std_logic_arith.ALL;
use ieee.std_logic_unsigned.ALL;

use work.types.all;

entity mem_file is
port(
	clock      : in std_logic; -- system clock

	adc_brd_ram_addr  : out std_logic_vector(8 downto 0);
	adc_brd_ram_wdata : out std_logic_vector(15 downto 0);
	adc_brd_ram_we	   : out std_logic_vector(7 downto 0);
	adc_brd_ram_rdata : in arr8x16_t;
	
-- Ethernet interface
	eth_mem_addr  : in std_logic_vector(31 downto 0);
	eth_mem_wdata : in std_logic_vector(15 downto 0);
	eth_mem_rdata : out std_logic_vector(15 downto 0);
	eth_mem_we    : in std_logic);	
end mem_file;

architecture behavioral of mem_file is
	signal adc_brd_ram_sel_r    : std_logic := '0';
	signal adc_brd_ram_sel_dr   : std_logic := '0';
	signal adc_brd_ram_sel_ddr  : std_logic := '0';
	signal adc_brd_ram_sel_dddr : std_logic := '0';
	
	signal adc_brd_num_r    : std_logic_vector(2 downto 0) := B"000";
	signal adc_brd_num_dr   : std_logic_vector(2 downto 0) := B"000";
	signal adc_brd_num_ddr  : std_logic_vector(2 downto 0) := B"000";
	
	signal adc_brd_ram_addr_r      : std_logic_vector( 8 downto 0) := (others=>'0');
	signal adc_brd_ram_wdata_r : std_logic_vector(15 downto 0) := (others=>'0');
	signal adc_brd_ram_we_r    : std_logic_vector( 7 downto 0) := (others=>'0');
	signal adc_brd_ram_rdata_r : std_logic_vector(15 downto 0) := (others=>'0');
	
	
	signal eth_mem_rdata_r : std_logic_vector(15 downto 0) := (others=>'0');
begin

clock_proc : process( clock )
begin
	if clock'event and clock='1' then
		
		adc_brd_ram_sel_r <= '0';
		if  eth_mem_addr(31 downto 12) = B"0000_0000_0010_0000_0000" then -- b2..0: ADC_BRD number, b11..3: ADC_BRD_RAM addr
			adc_brd_ram_sel_r <= '1';			
		end if;
		if (eth_mem_addr(31 downto 19) = B"0000_0000_0001_0" and eth_mem_addr(15 downto 9) = B"0000_000") then 
		-- b18..16: ADC_BRD number, b8..0: ADC_BRD_RAM addr					
			adc_brd_ram_sel_r <= '1';
		end if;
		
		adc_brd_ram_we_r <= X"00";
		if eth_mem_addr(20)='1' then
			adc_brd_num_r  <= eth_mem_addr(18 downto 16);
			adc_brd_ram_addr_r <= eth_mem_addr( 8 downto  0);
			case eth_mem_addr(18 downto 16) is
				when B"000" => adc_brd_ram_we_r(0) <= eth_mem_we;
				when B"001" => adc_brd_ram_we_r(1) <= eth_mem_we;
				when B"010" => adc_brd_ram_we_r(2) <= eth_mem_we;
				when B"011" => adc_brd_ram_we_r(3) <= eth_mem_we;
				when B"100" => adc_brd_ram_we_r(4) <= eth_mem_we;
				when B"101" => adc_brd_ram_we_r(5) <= eth_mem_we;
				when B"110" => adc_brd_ram_we_r(6) <= eth_mem_we;
				when B"111" => adc_brd_ram_we_r(7) <= eth_mem_we;
				when others =>
			end case;
		else
			adc_brd_num_r  <= eth_mem_addr( 2 downto 0);
			adc_brd_ram_addr_r <= eth_mem_addr(11 downto 3);
			case eth_mem_addr(2 downto 0) is
				when B"000" => adc_brd_ram_we_r(0) <= eth_mem_we;
				when B"001" => adc_brd_ram_we_r(1) <= eth_mem_we;
				when B"010" => adc_brd_ram_we_r(2) <= eth_mem_we;
				when B"011" => adc_brd_ram_we_r(3) <= eth_mem_we;
				when B"100" => adc_brd_ram_we_r(4) <= eth_mem_we;
				when B"101" => adc_brd_ram_we_r(5) <= eth_mem_we;
				when B"110" => adc_brd_ram_we_r(6) <= eth_mem_we;
				when B"111" => adc_brd_ram_we_r(7) <= eth_mem_we;
				when others =>
			end case;
		end if;
		
		adc_brd_ram_wdata_r <= eth_mem_wdata;
		
		adc_brd_ram_sel_dr   <= adc_brd_ram_sel_r;
		adc_brd_ram_sel_ddr  <= adc_brd_ram_sel_dr;
		adc_brd_ram_sel_dddr <= adc_brd_ram_sel_ddr;
		
		adc_brd_num_dr   <= adc_brd_num_r;
		adc_brd_num_ddr  <= adc_brd_num_dr;
		
		case adc_brd_num_ddr is
			when B"000" => adc_brd_ram_rdata_r <= adc_brd_ram_rdata(0);
			when B"001" => adc_brd_ram_rdata_r <= adc_brd_ram_rdata(1);
			when B"010" => adc_brd_ram_rdata_r <= adc_brd_ram_rdata(2);
			when B"011" => adc_brd_ram_rdata_r <= adc_brd_ram_rdata(3);
			when B"100" => adc_brd_ram_rdata_r <= adc_brd_ram_rdata(4);
			when B"101" => adc_brd_ram_rdata_r <= adc_brd_ram_rdata(5);
			when B"110" => adc_brd_ram_rdata_r <= adc_brd_ram_rdata(6);
			when B"111" => adc_brd_ram_rdata_r <= adc_brd_ram_rdata(7);
			when others =>
		end case;

		eth_mem_rdata_r <= X"CCCC";
		if adc_brd_ram_sel_dddr='1' then
			eth_mem_rdata_r <= adc_brd_ram_rdata_r;
		end if;

	end if; -- clock;
	
end process;

	adc_brd_ram_addr  <= adc_brd_ram_addr_r;
	adc_brd_ram_wdata <= adc_brd_ram_wdata_r;
	adc_brd_ram_we    <= adc_brd_ram_we_r;
	
	eth_mem_rdata <= eth_mem_rdata_r;

end behavioral;

