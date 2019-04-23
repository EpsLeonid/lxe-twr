library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

------------------------------------------------------------------------------
--									Entity									--
------------------------------------------------------------------------------
entity DataSelect_V2 is

	port(
		--Inputs
			--clock
		CLOCK_100   : in std_logic;							-- Clock at 100Mhz
			--reset
		reset_n     : in std_logic;							-- Signal which reset my programm
			--trigger
		trigger		: in std_logic;							-- Signal which start my programm
			--Data
		buffer_DATA : in std_logic_vector(11 downto 0);		-- Data comming from buffers
		
		--Outputs
			--buffer enable sent data
		buffer_EN   : out std_logic_vector(3 downto 0);		-- Enable buffers to send their data
			--buffer address
		buffer_ADDR : out std_logic_vector(7 downto 0);		-- Address sent to the buffers
			--Ram access
		ram_DATA 	: out std_logic_vector(15 downto 0);	-- Data
		ram_ADDR  	: out std_logic_vector(15 downto 0);	-- Address
		ram_LB_N  	: out std_logic;						-- LB_N
		ram_UB_N  	: out std_logic;						-- UB_N
		ram_CE_N  	: out std_logic;						-- CE_N
		ram_OE_N  	: out std_logic;						-- OE_N
		ram_WE_N  	: out std_logic;						-- WE_N

			--Working time of the program
		work_time	: out std_logic							-- Tell if my programm is working on data
	);

end DataSelect_V2;



----------------------------------------------------------------------------------
--								  Architecture									--
----------------------------------------------------------------------------------
architecture particle_detector of DataSelect_V2 is
	
	
    --------------------------
	--		 Signals		--
    --------------------------
	signal start            : std_logic                     :='0';				--Tell if the state machine is working.
	signal end_cycle		: std_logic						:='0';				--Signal telling if all data from a sample of 16 has been acquired and if it is time to choose in which format the values will be written in memory.
	signal control_input    : std_logic_vector(3  downto 0) :="1111";			--Select which buffer will sent his data.
	signal data_input       : std_logic_vector(11 downto 0) :=(others => '0');	--Save actual data comming from the buffer.
	signal highest_value    : std_logic_vector(11 downto 0) :=(others => '0');	--Signal used to know how many bits we need to write the data for a sample of 16 fifferences.
	signal count_addr    	: std_logic_vector(15 downto 0) :=(others => '0');  --Counter use as an address to save data in RAM at the output.
	signal count_buffer     : std_logic_vector(7 downto 0)  :=(others => '0');	--Counter use as an address to select data from the ROM.
	signal count_word    	: unsigned(3 downto 0)  		:=(others => '0');	--Counter use to know which word we are using.
	signal count_cycle		: unsigned(4 downto 0)			:=(others => '0');	--Counter use to know in which cycle of 16 words we are acting.
	
	type array_type is array (0 to 15) of std_logic_vector(11 downto 0);
	signal tab_data  : array_type :=(others => (others => '0'));				--Data storage for the arithmetic.
	signal tab_diff  : array_type :=(others => (others => '0'));				--Difference between 2 nearest values.
	
	type sign_comp is array (0 to 15) of std_logic;
	signal sign      : sign_comp  :=(others => '0');							--Sign of the difference between two values.
	
	type typeautom is (S0,S1,S2,S3,S4,S5,S6,S7);								--State Machine 1 for the arithmetic part.
	signal autom     : typeautom;
	
	type typeautom2 is (E0,E1,E2,E3,E4_2bits,E4_4bits,E4_8bits,E4_16bits);		--State Machine 2 to write in the external RAM.
	signal autom2    : typeautom2;

	
	--------------------------
	--		  Begin 		--
    --------------------------
	begin


		---------------------------------------
		-- Process communication with buffer --
		---------------------------------------
		Buffer_com : process(CLOCK_100,start)
		begin
		if(rising_edge(CLOCK_100)) then
			-- Communication with ring Buffers --
			if(start = '1') then
				buffer_ADDR <= count_buffer;
				buffer_EN   <= control_input;
			else
				buffer_ADDR <= (others => '0');
				buffer_EN   <= (others => '1');
			end if;
			data_input <= buffer_DATA;
		end if;
		end process Buffer_com;


		---------------------------------------
		-- 			   Process 1             --
		---------------------------------------
		Arithmetic : process(CLOCK_100, reset_n)
		begin
		if(reset_n='0') then
			control_input <= (others => '1');
			count_word    <= (others => '0');
			count_cycle   <= (others => '0');
			count_buffer  <= (others => '0');
			highest_value <= (others => '0');
			sign          <= (others => '0');
			tab_diff      <= (others =>(others => '0'));
			tab_data      <= (others =>(others => '0'));
			end_cycle <= '0';
			start     <= '0';
			work_time <= '0';
			autom <= S0;
			
		elsif(rising_edge(CLOCK_100)) then

				-- start the state machine --
				if(trigger='1') then		
					work_time <= '1';
					start <= '1';
				end if;
			
				----	State machine 1   ----
				case autom is
					-- initialise some parameters --
					when S0 =>
						control_input <= (others => '1');
						count_word    <= (others => '0');
						count_cycle   <= (others => '0');
						count_buffer  <= (others => '0');
						highest_value <= (others => '0');
						sign          <= (others => '0');
						tab_diff      <= (others =>(others => '0'));
						tab_data      <= (others =>(others => '0'));
						end_cycle <= '0';
						start     <= '0';
						work_time <= '0';
						autom <= S1;
						
		
					-- Start the programm --
					when S1 =>
						if(start='1') then
							control_input <= (others => '0');
							autom <= S2;
						end if;
						
						
					-- Waiting to receive data from buffer in data_input signal --
					when S2 =>
						count_buffer <= count_buffer+1;
						if (count_buffer = 2) then
							autom <= S3;
						end if;
					

					-- Save the first data from a sensor --
					when S3 =>
						tab_data(to_integer(count_word)) <= data_input;
						count_buffer <= count_buffer+1;
						count_word   <= count_word+1;
						autom <= S4;
					
						
					-- Calcul the 16 differences (15 at the first step) between values from a sample  --
					-- and select the highest value from the differences calculated --
					when S4 =>
						----
						if(end_cycle='0') then
							----
							tab_data(to_integer(count_word))<= data_input;
							count_word <= count_word+1;
							----
							if((tab_data (to_integer(count_word-1)))>data_input) then
								tab_diff (to_integer(count_word)) <= tab_data(to_integer(count_word-1))-data_input;
								sign (to_integer(count_word)) <= '1';
							else
								tab_diff (to_integer(count_word)) <= data_input-tab_data(to_integer(count_word-1));
								sign (to_integer(count_word)) <= '0';
							end if;
							----
							if(count_word>0) then
								if(tab_diff (to_integer(count_word-1))>highest_value) then
									highest_value <= tab_diff (to_integer(count_word-1));
								end if;
							end if;
							----	
							if(count_word < 12 or count_word > 13) then
								count_buffer <= count_buffer+1;
							end if;
							----
							if(count_word = 15) then
								end_cycle <= '1';
							end if;
							----
						else
							if(tab_diff (to_integer(count_word-1))>highest_value) then
								highest_value <= tab_diff (to_integer(count_word-1));
							end if;
							----
							count_buffer <= count_buffer+1;
							count_cycle <= count_cycle+1;
							end_cycle <= '0';
							autom <= S5;
						end if;
					
					
					-- Check if all samples from sensor has been treaty --
					when S5 =>
						count_buffer <= count_buffer+1;
						highest_value  <= (others => '0');
						----
						if(count_cycle<16) then
							autom <= S4;
						else
							autom <= S6;
						end if;
	

					-- Waiting all data to be written in the external memory --
					when S6 =>
						count_word <= count_word+1;
						----
						if(count_word = 15) then
							end_cycle <= '1';
						end if;
						----
						if(end_cycle = '1') then
							count_cycle <= count_cycle+1;
							control_input <= control_input+1;
							autom <= S7;
						end if;
					
					
					-- Take data from another sensor or end the programm if all has been treaty --
					when S7 => 
						count_word    <= (others => '0');
						count_cycle   <= (others => '0');
						count_buffer  <= (others => '0');
						sign          <= (others => '0');
						tab_diff      <= (others =>(others => '0'));
						tab_data      <= (others =>(others => '0'));
						end_cycle <= '0';
						----
						if(unsigned(control_input)>11)then
							work_time <= '0';
							start <= '0';
							autom <= S0;
						else
							autom <= S2;
						end if;


					when others =>
						autom <= S0;
						
				end case;
			end if;
		end process Arithmetic;
		
		
		
		
		
		
		---------------------------------------
		-- 			   Process 2             --
		---------------------------------------
		Write_RAM : process(CLOCK_100,reset_n)
		begin
			if(reset_n='0') then
				ram_CE_N <= '1';
				ram_OE_N <= '1';
				ram_WE_N <= '1';
				ram_UB_N <= '1';
				ram_LB_N <= '1';
				ram_DATA <= (others => '0');
				ram_ADDR <= (others => '0');
				count_addr <= (others => '0');
				autom2 <= E0;
				
			elsif(rising_edge(CLOCK_100)) then
				case autom2 is
				
					-- Start when process 1 has received the first value --
					When E0 =>
						ram_CE_N <= '1';
						ram_OE_N <= '1';
						ram_WE_N <= '1';
						ram_UB_N <= '1';
						ram_LB_N <= '1';
						ram_DATA <= (others => '0');
						ram_ADDR <= (others => '0');
						if(start='1') then
							autom2 <= E1;
						end if;
				
				
					-- write the first value from a sensor --
					When E1 =>
						if (count_buffer = 2) then
							ram_CE_N <= '0';
							ram_OE_N <= '0';
							ram_WE_N <= '0';
							ram_UB_N <= '0';
							ram_LB_N <= '0';
							ram_ADDR <= count_addr;
						elsif(count_buffer = 3) then
							ram_DATA <= "0000"&data_input;
							autom2 <= E2;
						end if;
						
						
					-- Wait process 1 has calculated first 16 differences values (15 first time)  --	
					When E2 =>
						if(end_cycle = '1') then
							count_addr <= count_addr+'1';
							autom2 <= E3;
						end if;
				
					
					-- Select the way to write data in external memory --
					When E3 => 
						if(count_cycle<17) then
							ram_ADDR <= count_addr;
							count_addr <= count_addr+'1';
							if(highest_value<"000000000010") then
								ram_DATA <= "0000000000000010";
								autom2 <= E4_2bits;
							elsif(highest_value<"000000001000" and highest_value>="000000000010") then
								ram_DATA <= "0000000000000100";
								autom2 <= E4_4bits;
							elsif(highest_value<"00010000000" and highest_value>="000000001000") then
								ram_DATA <= "0000000000001000";
								autom2 <= E4_8bits;
							else
								ram_DATA <= "0000000000010000";
								autom2 <= E4_16bits;
							end if;
						else
							ram_CE_N <= '1';
							ram_OE_N <= '1';
							ram_WE_N <= '1';
							ram_UB_N <= '1';
							ram_LB_N <= '1';
							autom2 <= E0;
						end if;

					
					-- Write data on 2 bits in 2 addresses --
					When E4_2bits =>
						if(end_cycle='0') then
							if(count_word = 0) then
								ram_DATA <= sign(to_integer(count_word)) & tab_diff(to_integer(count_word))(0)&
											sign(to_integer(count_word+1)) & tab_diff(to_integer(count_word+1))(0)&
											sign(to_integer(count_word+2)) & tab_diff(to_integer(count_word+2))(0)&
											sign(to_integer(count_word+3)) & tab_diff(to_integer(count_word+3))(0)&
											sign(to_integer(count_word+4)) & tab_diff(to_integer(count_word+4))(0)&
											sign(to_integer(count_word+5)) & tab_diff(to_integer(count_word+5))(0)&
											sign(to_integer(count_word+6)) & tab_diff(to_integer(count_word+6))(0)&
											sign(to_integer(count_word+7)) & tab_diff(to_integer(count_word+7))(0);
								ram_ADDR <= count_addr;
								count_addr <= count_addr+'1';
							elsif(count_word = 1) then
								ram_DATA <= sign(to_integer(count_word+7)) & tab_diff(to_integer(count_word+7))(0)&
											sign(to_integer(count_word+8)) & tab_diff(to_integer(count_word+8))(0)&
											sign(to_integer(count_word+9)) & tab_diff(to_integer(count_word+9))(0)&
											sign(to_integer(count_word+10)) & tab_diff(to_integer(count_word+10))(0)&
											sign(to_integer(count_word+11)) & tab_diff(to_integer(count_word+11))(0)&
											sign(to_integer(count_word+12)) & tab_diff(to_integer(count_word+12))(0)&
											sign(to_integer(count_word+13)) & tab_diff(to_integer(count_word+13))(0)&
											sign(to_integer(count_word+14)) & tab_diff(to_integer(count_word+14))(0);
								ram_ADDR <= count_addr;
								count_addr <= count_addr+'1';
							end if;
						else
							autom2 <= E3;
						end if;	
							
					
					-- Write data on 4 bits in 4 addresses --
					When E4_4bits =>
						if(end_cycle='0') then
							if(count_word = 0) then
								ram_DATA <= sign(to_integer(count_word)) & tab_diff(to_integer(count_word))(2 downto 0)&
											sign(to_integer(count_word+1)) & tab_diff(to_integer(count_word+1))(2 downto 0)&
											sign(to_integer(count_word+2)) & tab_diff(to_integer(count_word+2))(2 downto 0)&
											sign(to_integer(count_word+3)) & tab_diff(to_integer(count_word+3))(2 downto 0);
								ram_ADDR <= count_addr;
								count_addr <= count_addr+'1';
							elsif(count_word = 1) then
								ram_DATA <= sign(to_integer(count_word+3)) & tab_diff(to_integer(count_word+3))(2 downto 0)&
											sign(to_integer(count_word+4)) & tab_diff(to_integer(count_word+4))(2 downto 0)&
											sign(to_integer(count_word+5)) & tab_diff(to_integer(count_word+5))(2 downto 0)&
											sign(to_integer(count_word+6)) & tab_diff(to_integer(count_word+6))(2 downto 0);
								ram_ADDR <= count_addr;
								count_addr <= count_addr+'1';
							elsif(count_word = 2) then
								ram_DATA <= sign(to_integer(count_word+6)) & tab_diff(to_integer(count_word+6))(2 downto 0)&
											sign(to_integer(count_word+7)) & tab_diff(to_integer(count_word+7))(2 downto 0)&
											sign(to_integer(count_word+8)) & tab_diff(to_integer(count_word+8))(2 downto 0)&
											sign(to_integer(count_word+9)) & tab_diff(to_integer(count_word+9))(2 downto 0);
								ram_ADDR <= count_addr;
								count_addr <= count_addr+'1';
							elsif(count_word = 3) then
								ram_DATA <= sign(to_integer(count_word+9)) & tab_diff(to_integer(count_word+9))(2 downto 0)&
											sign(to_integer(count_word+10)) & tab_diff(to_integer(count_word+10))(2 downto 0)&
											sign(to_integer(count_word+11)) & tab_diff(to_integer(count_word+11))(2 downto 0)&
											sign(to_integer(count_word+12)) & tab_diff(to_integer(count_word+12))(2 downto 0);
								ram_ADDR <= count_addr;
								count_addr <= count_addr+'1';
							end if;
						else
							autom2 <= E3;
						end if;
						
					
					-- Write data on 8 bits in 8 addresses --
					When E4_8bits =>
						if(end_cycle='0') then
							if(count_word = 0) then
								ram_DATA <= sign(to_integer(count_word)) & tab_diff(to_integer(count_word))(6 downto 0)&
											sign(to_integer(count_word+1)) & tab_diff(to_integer(count_word+1))(6 downto 0);
								ram_ADDR <= count_addr;
								count_addr <= count_addr+'1';
							elsif(count_word = 1) then
								ram_DATA <= sign(to_integer(count_word+1)) & tab_diff(to_integer(count_word+1))(6 downto 0)&
											sign(to_integer(count_word+2)) & tab_diff(to_integer(count_word+2))(6 downto 0);
								ram_ADDR <= count_addr;
								count_addr <= count_addr+'1';
							elsif(count_word = 2) then
								ram_DATA <= sign(to_integer(count_word+2)) & tab_diff(to_integer(count_word+2))(6 downto 0)&
											sign(to_integer(count_word+3)) & tab_diff(to_integer(count_word+3))(6 downto 0);
								ram_ADDR <= count_addr;
								count_addr <= count_addr+'1';
							elsif(count_word = 3) then
								ram_DATA <= sign(to_integer(count_word+3)) & tab_diff(to_integer(count_word+3))(6 downto 0)&
											sign(to_integer(count_word+4)) & tab_diff(to_integer(count_word+4))(6 downto 0);
								ram_ADDR <= count_addr;
								count_addr <= count_addr+'1';							
							elsif(count_word = 4) then
								ram_DATA <= sign(to_integer(count_word+4)) & tab_diff(to_integer(count_word+4))(6 downto 0)&
											sign(to_integer(count_word+5)) & tab_diff(to_integer(count_word+5))(6 downto 0);
								ram_ADDR <= count_addr;
								count_addr <= count_addr+'1';							
							elsif(count_word = 5) then
								ram_DATA <= sign(to_integer(count_word+5)) & tab_diff(to_integer(count_word+5))(6 downto 0)&
											sign(to_integer(count_word+6)) & tab_diff(to_integer(count_word+6))(6 downto 0);
								ram_ADDR <= count_addr;
								count_addr <= count_addr+'1';							
							elsif(count_word = 6) then
								ram_DATA <= sign(to_integer(count_word+6)) & tab_diff(to_integer(count_word+6))(6 downto 0)&
											sign(to_integer(count_word+7)) & tab_diff(to_integer(count_word+7))(6 downto 0);
								ram_ADDR <= count_addr;
								count_addr <= count_addr+'1';							
							elsif(count_word = 7) then
								ram_DATA <= sign(to_integer(count_word+7)) & tab_diff(to_integer(count_word+7))(6 downto 0)&
											sign(to_integer(count_word+8)) & tab_diff(to_integer(count_word+8))(6 downto 0);
								ram_ADDR <= count_addr;
								count_addr <= count_addr+'1';
							end if;
						else
							autom2 <= E3;
						end if;
						
						
					-- Write data one per address --	
					When E4_16bits =>
						if(end_cycle='0') then
							ram_DATA <= sign(to_integer(count_word)) & "000" & tab_diff(to_integer(count_word));
							ram_ADDR <= count_addr;
							count_addr <= count_addr+'1';
						else
							autom2 <= E3;
						end if;
						
						
					When others =>
						autom2 <= E0;
								
				end case;
			end if;
		end process Write_RAM;		
		
		
end particle_detector;
