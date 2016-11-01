library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity spi_master is
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
end spi_master;

architecture behavioral of spi_master is
	signal hb_r  : std_logic := '0'; -- cycle=5
	signal hbx_r : std_logic := '0'; -- cycle=2
	signal in_cycle_r : std_logic := '0';
	
	signal op_pending_r : std_logic := '0';
	signal reg_num_r    : std_logic_vector(6 downto 0) := (others=>'0');
	signal op_type_r    : std_logic := '0';
	signal burst_len_r  : std_logic_vector(15 downto 0) := (others=>'0');
	
	signal spi_sel_r   : std_logic := '0';
	signal spi_mosi_sr : std_logic_vector(7 downto 0) := (others=>'0');
	signal spi_miso_sr : std_logic_vector(7 downto 0) := (others=>'0');
	signal spi_clk_r   : std_logic := '0';
	
	signal bit_cnt     : std_logic_vector( 2 downto 0) := (others=>'0');
	signal last_bit_r  : std_logic := '0';
	
	signal byte_cnt    : std_logic_vector(15 downto 0) := (others=>'0');
	signal last_byte_r : std_logic := '0';
	
	signal reg_wdata_next_r : std_logic := '0';
	
	signal read_byte_r : std_logic := '0';
	signal reg_rdata_valid_r : std_logic := '0';
begin

process(clock)
begin
	if clock'event and clock='1' then
		hb_r <= '0';
		if clock_cycle=B"101" then
			hb_r <= '1';
		end if;
		
		hbx_r <= '0';
		if clock_cycle=B"010" then
			hbx_r <= '1';
		end if;
		
		if op_init='1' and in_cycle_r='0' then
			op_pending_r <= '1';
			op_type_r    <= op_type;
			reg_num_r    <= reg_num;
			burst_len_r  <= burst_len;
		end if;
		
		if clock_cycle=B"011" then
			spi_clk_r <= '1';			
			spi_miso_sr <= spi_miso_sr(6 downto 0) & spi_miso;
		end if;

		last_byte_r <= '0';
		if byte_cnt=X"0000" then
			last_byte_r <= '1';
		end if;
		
		last_bit_r <= '0';
		if bit_cnt=B"111" then
			last_bit_r <= '1';
		end if;
		
		reg_wdata_next_r <= '0';
		reg_rdata_valid_r <= '0';
		
		if hb_r='1' then
			spi_mosi_sr <= spi_mosi_sr(6 downto 0) & '0';
			spi_clk_r <= '0';
			bit_cnt <= bit_cnt + '1';
			if op_pending_r='1' then
				in_cycle_r   <= '1';
				op_pending_r <= '0';
				bit_cnt <= (others=>'0');
				spi_sel_r  <= '1';
				spi_mosi_sr <= reg_num_r & op_type_r;
				byte_cnt <= burst_len_r;
--			end if;
			elsif last_bit_r='1' then
				byte_cnt <= byte_cnt-'1';
				if in_cycle_r='1' then
					read_byte_r <= not op_type_r; -- asserts on second byte while reading
					if last_byte_r='1' then
						spi_sel_r  <= '0';
						in_cycle_r <= '0';
						read_byte_r <= '0';
					else
						if op_type_r='1' then
							spi_mosi_sr <= reg_wdata;
							reg_wdata_next_r <= '1';
						else
							spi_mosi_sr <= (others=>'0');
						end if;
					end if;
				end if;
			end if; -- last_bit_r;
		end if; -- hb_r
		if hbx_r='1' and last_bit_r='1' and read_byte_r='1' then
			reg_rdata_valid_r <= '1';
		end if;
	end if;
end process;

	ready     <= '1' when op_pending_r='0' and in_cycle_r='0' else '0';
	spi_sel_n <= not spi_sel_r;
	spi_clk   <= spi_clk_r;
	spi_mosi  <= spi_mosi_sr(7);
	reg_wdata_next <= reg_wdata_next_r;
	reg_rdata <= spi_miso_sr;
	reg_rdata_valid <= reg_rdata_valid_r;
	
end behavioral;
