library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

use work.types.all;

entity net_proc is
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
end net_proc;

architecture behavioral of net_proc is
	signal rx_bank_busy_r   : std_logic_vector(1 downto 0) := (others=>'0');
	signal tx_bank_busy_r : std_logic_vector(1 downto 0) := (others=>'0');

--	attribute async_reg : string;
--	attribute async_reg of rx_bank_busy_r: signal is "TRUE";
--	attribute async_reg of tx_bank_busy_r: signal is "TRUE";
	
	signal tx_bank_ready_s : std_logic := '0';
	
	signal rx_current_bank_r : std_logic := '0';
	signal rx_current_bank_proc_done_r : std_logic := '0';
	signal rx_bank_info_clrn_r : std_logic_vector(1 downto 0) := (others=>'0');

	signal tx_init : std_logic := '0';

	signal rx_ram_addr_r : std_logic_vector(10 downto 0) := (others=>'0');
	signal rx_ram_re_r   : std_logic := '0';
	signal rx_ram_cnt_r  : std_logic_vector(9 downto 0) := (others=>'0');
	signal rx_ram_re_dr  : std_logic_vector(2 downto 0) := (others=>'0');	
	signal rx_ram_data_valid_r : std_logic := '0';
	signal rx_ram_data_last_r : std_logic := '0';

	signal tx_bank_info_r : eth_bank_t := (others=>(others=>'0'));
	signal tx_current_bank_r : std_logic := '0';

	signal tx_ram_addr_r   : std_logic_vector(10 downto 0) := (others=>'0');
	signal tx_ram_we_r     : std_logic := '0';
	signal tx_ram_cnt_r    : std_logic_vector(9 downto 0) := (others=>'0');
	signal tx_ram_source_r : std_logic_vector(2 downto 0) := B"000"; -- 000: rx_ram, 001: reg_rdata, 010: mem_rdata, 011: IP and UDP length, 100: IP checksum
	signal tx_ram_data_last_r : std_logic := '0';

	type np_fsm_t is (npf_idle, npf_checkProtocolID, npf_copyDestMAC, 
			npf_copyPacketInfo, npf_caseComID, npf_store_reg_rdata1, npf_store_reg_rdata2, npf_store_reg_rdata3, npf_store_reg_rdata4, 
			npf_write_mem1, npf_write_mem2, npf_read_mem1, npf_read_mem2, npf_read_mem3, npf_read_mem4, npf_read_mem5, npf_read_mem6, 
			npf_store_ip_checksum, npf_store_udp_len, npf_reset);
	signal np_fsm : np_fsm_t := npf_idle;
	
	signal mem_addr_r  : std_logic_vector(31 downto 0) := (others=>'0');
	signal mem_we_r : std_logic := '0';

	signal reg_we_r    : std_logic := '0';

	type info_words_t is array (0 to 3) of std_logic_vector(15 downto 0);
	signal info_words : info_words_t := (others=>(others=>'0'));
	signal com_id_high_bits_zero_r : std_logic := '0';

	signal tx_len_r : std_logic_vector(9 downto 0) := (others=>'0');
	signal sys_data_base_r : std_logic_vector(5 downto 0) := (others=>'0');
	
	signal proto_len_r   : std_logic_vector(15 downto 0) := (others=>'0');
	signal ip_checksum_r : std_logic_vector(15 downto 0) := (others=>'0');

	signal short_read_r : std_logic := '0';
begin
	
process(clock, tx_bank_info_clrn)
	variable tx_bank_info_len_v : std_logic_vector(9 downto 0);
	

begin

	if clock'event and clock='1' then

-- RX_RAM control
		if rx_ram_cnt_r /= B"00_0000_0000" then
			rx_ram_cnt_r <= rx_ram_cnt_r - '1';
		end if;
		
		rx_ram_data_last_r <= '0';
		if rx_ram_cnt_r = B"00_0000_0010" then
			rx_ram_data_last_r <= '1';
		end if;
		
		if rx_ram_cnt_r = B"00_0000_0001" then
			rx_ram_re_r <= '0';
		end if;

		rx_ram_addr_r <= rx_ram_addr_r+'1';

-- TX_RAM control
		if tx_ram_cnt_r /= B"00_0000_0000" then
			tx_ram_cnt_r <= tx_ram_cnt_r - '1';
		end if;
		
		tx_ram_data_last_r <= '0';
		if tx_ram_cnt_r = B"00_0000_0010" then
			tx_ram_data_last_r <= '1';
		end if;

		if tx_ram_cnt_r = B"00_0000_0001" then
			mem_we_r    <= '0';
			tx_ram_we_r <= '0';
			tx_ram_source_r <= B"000";
		end if;

		tx_ram_addr_r <= tx_ram_addr_r+'1';
		
		short_read_r <= '0';
		if info_words(0)(9 downto 1) = B"00_0000_000" then
			short_read_r <= '1';
		end if;

	
		com_id_high_bits_zero_r<='0';
		if info_words(3)(15 downto 2)=B"0000_0000_0000_00" then
			com_id_high_bits_zero_r<='1';
		end if;
		
		rx_current_bank_proc_done_r <= '0';
		tx_init <= '0';

		mem_addr_r  <= mem_addr_r+'1';

		reg_we_r    <= '0';
		
		sys_data_base_r <= B"10_1010"; -- -22 (default)

		proto_len_r <= (B"1111_1111_11" & sys_data_base_r) + (B"0000_0" & tx_len_r & '0');

--		ip_checksum_r <= X"AA51" - proto_len_r;  -- for 0C01
		ip_checksum_r <= X"AA4F" - proto_len_r;  -- for 0E01

		case np_fsm is
		when npf_idle =>
			tx_ram_source_r <= B"000";
			tx_ram_we_r   <= '0';				
			rx_ram_addr_r <= rx_current_bank_r & B"00_0001_0101";

			if (rx_current_bank_r='0' and rx_bank_busy_r(0)='1') or (rx_current_bank_r='1' and rx_bank_busy_r(1)='1') then
				rx_ram_re_r  <= '1'; 
				np_fsm <= npf_checkProtocolID;
			end if;
			
		when npf_checkProtocolID => 
			rx_ram_addr_r <= rx_current_bank_r & B"00_0000_0011";
			rx_ram_cnt_r  <= B"00_0000_0011";
			rx_ram_re_r  <= '1'; 
			np_fsm <= npf_copyDestMAC;

		when npf_copyDestMAC =>
			if rx_ram_data_last_r='1' then -- Dest MAC copied
				rx_ram_addr_r <= rx_current_bank_r & B"00_0001_0110";
				rx_ram_cnt_r  <= B"00_0000_0101";
				rx_ram_re_r  <= '1';
			end if;

			if rx_ram_data_valid_r='1' then
				if rx_ram_data=X"ABCE" and tx_bank_ready_s='1' then
					tx_ram_cnt_r  <= B"00_0000_0011";
					tx_ram_addr_r <= tx_current_bank_r & B"00_0000_0100";
					tx_ram_we_r   <= '1';
					np_fsm <= npf_copyPacketInfo;
				else -- wrong ProtocolID
					rx_current_bank_proc_done_r <= '1';
					np_fsm <= npf_reset;
				end if;
			end if;
			
		when npf_copyPacketInfo	=>
			if tx_ram_data_last_r='1' then -- DestMAC wrote
				tx_ram_cnt_r  <= B"00_0000_0101";
				tx_ram_addr_r <= tx_current_bank_r & B"00_0001_1010";
				tx_ram_we_r   <= '1';				
			end if;

			if rx_ram_data_last_r='1' then -- PacketInfo read
				np_fsm <= npf_caseComID;
			end if;
			
		when npf_caseComID =>
			tx_len_r <= B"00_0001_1110";   --  30 (default - for write reg / read reg)

			mem_addr_r   <= info_words(1) & info_words(2); -- (default - for memory read operation)
				
			if tx_ram_data_last_r='1' then -- PacketInfo read 
				if com_id_high_bits_zero_r='1' then					
					case info_words(3)(1 downto 0) is
					when B"00" => -- read reg
						rx_current_bank_proc_done_r <= '1'; 

						np_fsm <= npf_store_reg_rdata1;

					when B"01" => -- write reg
						reg_we_r <= '1';

						tx_ram_addr_r <= tx_current_bank_r & B"00_0000_1100"; 
						tx_ram_source_r <= B"011";
						tx_ram_we_r   <= '1';	-- store ip_len


						rx_current_bank_proc_done_r <= '1';				      
						np_fsm <= npf_store_ip_checksum;
						
					when B"10" => -- read memory
						np_fsm <= npf_read_mem1;
						
					when B"11" => -- write memory

						tx_len_r <= B"00_0001_1111";   --  31
						
						rx_ram_cnt_r  <= rx_ram_data(9 downto 0);
						rx_ram_addr_r <= rx_current_bank_r & B"00_0001_1011";
						rx_ram_re_r  <= '1'; 

						np_fsm <= npf_write_mem1;

					when others=>
					end case;
				else  -- command_id>3
					rx_current_bank_proc_done_r <= '1';
					np_fsm <= npf_reset;
				end if; -- com_id_high_bits_zero_r
			end if; -- tx_ram_data_last_r		

		when npf_read_mem1 =>
			tx_len_r <= info_words(0)(9 downto 0) + B"00_0001_1111";
			np_fsm <= npf_read_mem2;

		when npf_read_mem2 =>
			np_fsm <= npf_read_mem3;

		when npf_read_mem3 =>
			np_fsm <= npf_read_mem4;

		when npf_read_mem4 =>
			np_fsm <= npf_read_mem5;

		when npf_read_mem5 =>

			tx_ram_addr_r <= tx_current_bank_r & B"00_0001_1111";
			tx_ram_source_r <= B"010";
			tx_ram_we_r   <= '1';	-- store ip_len
			
			if short_read_r='1' then
				tx_ram_cnt_r <= B"00_0000_0010";
			else
				tx_ram_cnt_r <= info_words(0)(9 downto 0);
			end if;

			np_fsm <= npf_read_mem6;

		when npf_read_mem6 =>
			if tx_ram_data_last_r='1' then
				rx_current_bank_proc_done_r <= '1';				      

				tx_ram_addr_r <= tx_current_bank_r & B"00_0000_1100"; 
				tx_ram_source_r <= B"011";
				tx_ram_we_r   <= '1';	-- store ip_len

				np_fsm <= npf_store_ip_checksum;				
			end if;


		when npf_store_reg_rdata1   =>
			np_fsm <= npf_store_reg_rdata2;

		when npf_store_reg_rdata2   =>
			np_fsm <= npf_store_reg_rdata3;

		when npf_store_reg_rdata3   =>
			tx_ram_addr_r <= tx_current_bank_r & B"00_0001_1101"; 
			tx_ram_source_r <= B"001";
			tx_ram_we_r   <= '1';	-- store reg_rdata

			np_fsm <= npf_store_reg_rdata4;

		when npf_store_reg_rdata4   =>
			tx_ram_addr_r <= tx_current_bank_r & B"00_0000_1100"; 
			tx_ram_source_r <= B"011";
			tx_ram_we_r   <= '1';	-- store ip_len
		
			np_fsm <= npf_store_ip_checksum;

		when npf_write_mem1 => 
			mem_addr_r   <= info_words(1) & info_words(2);
			if rx_ram_re_dr(rx_ram_re_dr'high)='1' then
				tx_ram_cnt_r <= info_words(0)(9 downto 0);
				mem_we_r    <= '1';
				np_fsm <= npf_write_mem2;				
			end if;
		
		when npf_write_mem2 =>
			if tx_ram_data_last_r='1' then
				rx_current_bank_proc_done_r <= '1';				      

				tx_ram_addr_r <= tx_current_bank_r & B"00_0000_1100"; 
				tx_ram_source_r <= B"011";
				tx_ram_we_r   <= '1';	-- store ip_len

				np_fsm <= npf_store_ip_checksum;				
			end if;
		
		when npf_store_ip_checksum =>
			tx_ram_addr_r <= tx_current_bank_r & B"00_0001_0000"; 
			sys_data_base_r <= B"01_0110"; -- base for udp_len
			tx_ram_source_r <= B"100";

			np_fsm <= npf_store_udp_len;

		when npf_store_udp_len =>
			tx_ram_addr_r <= tx_current_bank_r & B"00_0001_0111"; 
			tx_ram_source_r <= B"011";
			tx_ram_we_r   <= '1';				
			tx_init <= '1';
			
			np_fsm <= npf_idle;
		
		when npf_reset => -- cycle to reset bank busy flag in case of incorrect packet
			np_fsm <= npf_idle;
	
		when others=>
		end case;

		rx_bank_info_clrn_r<=(others=>'1');
		rx_bank_busy_r <= rx_bank_info(1)(10) & rx_bank_info(0)(10);

		if rx_current_bank_proc_done_r='1' then
			if rx_current_bank_r='0' then
				rx_bank_info_clrn_r(0) <= '0';
			else
				rx_bank_info_clrn_r(1) <= '0';
			end if;
			rx_current_bank_r <= not rx_current_bank_r;
		end if;

		if tx_len_r < B"00_0010_0010" then
			tx_bank_info_len_v := B"00_0010_0010";
		else
			tx_bank_info_len_v := tx_len_r;
		end if;

		if tx_init='1' then
			if tx_current_bank_r='0' then
				tx_bank_info_r(0) <= '1' & tx_bank_info_len_v;
			else
				tx_bank_info_r(1) <= '1' & tx_bank_info_len_v;
			end if;
			tx_current_bank_r <= not tx_current_bank_r;
		end if;

		if tx_ram_source_r = B"00" and tx_ram_we_r='1' then
			case tx_ram_cnt_r(1 downto 0) is
			when B"01" =>
				info_words(0) <= rx_ram_data;
			when B"10" =>
				info_words(1) <= rx_ram_data;
			when B"11" =>
				info_words(2) <= rx_ram_data;
			when B"00" =>
				info_words(3) <= rx_ram_data;
			when others=>
			end case;
		end if;

		rx_ram_re_dr <= rx_ram_re_dr(1 downto 0) & rx_ram_re_r;
		rx_ram_data_valid_r <= rx_ram_re_dr(2);

		tx_bank_busy_r <= tx_bank_info_r(1)(10) & tx_bank_info_r(0)(10);

	end if; -- clock	

	if tx_bank_info_clrn(0)='0' then
		tx_bank_info_r(0)(10) <= '0';
	end if;
	if tx_bank_info_clrn(1)='0' then
		tx_bank_info_r(1)(10) <= '0';
	end if;

end process;

	rx_bank_info_clrn <= rx_bank_info_clrn_r;
	tx_bank_info <= tx_bank_info_r;

	tx_bank_ready_s <= not tx_bank_busy_r(0) when tx_current_bank_r='0' else not tx_bank_busy_r(1);
	
	rx_ram_addr <= rx_ram_addr_r;
	tx_ram_addr <= tx_ram_addr_r;
	
	with tx_ram_source_r select
	tx_ram_data <= rx_ram_data   when B"000",
				      reg_rdata     when B"001",
				      mem_rdata     when B"010",
						proto_len_r(7 downto 0) & proto_len_r(15 downto 8)   when B"011",
						ip_checksum_r(7 downto 0) & ip_checksum_r(15 downto 8) when others;

	tx_ram_we   <= tx_ram_we_r;
	
	mem_addr  <= mem_addr_r;
	mem_wdata <= rx_ram_data;
	mem_we    <= mem_we_r;
	
	reg_we    <= reg_we_r;
	
	reg_num   <= info_words(2);
	reg_wdata <= info_words(1);		
end behavioral;
