library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

------------------------------------------------------------------------------
--									Entity									--
------------------------------------------------------------------------------
entity PD_upgrade is

	port(
		--Inputs
			--Begin
		trigger   	:in std_logic;
			--Clock
		CLOCK_100 	:in std_logic;
			--Data
		buffer_DATA :in std_logic_vector(11 downto 0);
		--Outputs
			--Address send to ROM
		buffer_ADDR	:out std_logic_vector(7 downto 0)	  := (others => 'X');
			--Enable to read ROM
		buffer_EN   :out std_logic_vector(3 downto 0)    := (others => 'X');
			--Communication with RAM
		ram_DATA 	: out std_logic_vector(15 downto 0) := (others => 'X');   -- Data
		ram_ADDR  	: out std_logic_vector(15 downto 0) := (others => 'X');   -- Address
		ram_LB_N  	: out std_logic                     := 'X';               -- LB_N
		ram_UB_N  	: out std_logic                     := 'X';               -- UB_N
		ram_CE_N  	: out std_logic                     := 'X';               -- CE_N
		ram_OE_N  	: out std_logic                     := 'X';               -- OE_N
		ram_WE_N  	: out std_logic                     := 'X';               -- WE_N
			--Signal for working time of process
		work_time 	: out std_logic					  := 'X'; 
		
		--Inout
			--threshold
		cs        	: in std_logic;		--control signal which indicate if we can access to Threshold
		Read_Write	: in std_logic;    	--0=>read & 1=>write
		thr_in    	: in std_logic_vector(7 downto 0);
		thr_out   	: out std_logic_vector(7 downto 0)
	);

end PD_upgrade;



----------------------------------------------------------------------------------
--								  Architecture									--
----------------------------------------------------------------------------------
architecture particle_detector of PD_upgrade is
	
	
    --------------------------
	--		 Signals		--
    --------------------------
    signal start            : std_logic                     :='0';				--Tell if the state machine is working.
	signal WR_th_en         : std_logic						:='0';				--Enable read and write for the threshold value.
	signal control_input    : std_logic_vector(3  downto 0) :="1111";			--Select input of mux which will be send in the output.
	signal data_input       : std_logic_vector(11 downto 0) :=(OTHERS => '0');
	signal threshold_12bits : std_logic_vector(11 downto 0) :=(OTHERS => '0');	--Threshold value used to be compared with data running average.
	signal Run_Aver         : std_logic_vector(15 downto 0)	:=(OTHERS => '0');	--Running average data.
	signal save_first_addr  : std_logic_vector(15 downto 0) :=(OTHERS => '0');	--Save the address where the first data comming from a ROM is written.
	signal count_addr    	: std_logic_vector(15 downto 0) :=(OTHERS => '0');  --Counter use as an address to save data in RAM at the output.
	signal count_buffer     : std_logic_vector(7 downto 0)  :=(OTHERS => '0');	--Counter use as an address to select data from the ROM.
	signal count_etat    	: unsigned(8 downto 0)  		:=(OTHERS => '0');	--Counter use as a way to evolve in state machine and help in arithmetics to calculate Run_Aver value.
	
	type tab_type is array (0 to 255) of std_logic_vector(11 downto 0);
	signal tab_data         : tab_type;										    --Data storage for the arithmetics.
	
	type typeautom1 is (S0,S1,S2,S3,S4,S5);
	signal autom     : typeautom1;
	
    --------------------------
	--		Components		--
    --------------------------

	component Communication_buffer is
	port(
		clk      	: in std_logic;
		start_work  : in std_logic;
		enable      : out std_logic_vector(3 downto 0);
		address_in  : in  std_logic_vector(7 downto 0);
		address_out : out std_logic_vector(7 downto 0);
		sel 	    : in std_logic_vector(3 downto 0)
	);
	end component;
	
	--------------------------
	--		  Begin 		--
    --------------------------
	begin
	
	
		--------------------------
		--		Ports Map		--
		--------------------------
									
		Mux_buffer : Communication_buffer port map (clk      	 => CLOCK_100,
													start_work   => start,
													enable       => buffer_EN,
													address_in   => count_buffer,
													address_out  => buffer_ADDR,
													sel 	     => control_input);
										
		--------------------------------------------------------------
		-- Process which permit to read the threshold / write in it --
		--------------------------------------------------------------
		-- One inout --
		threshold_proc : process(CLOCK_100,WR_th_en,cs,Read_Write)
		begin
			if(rising_edge(CLOCK_100)) then
				if ((WR_th_en = '1') and (cs = '1') and (Read_Write='0')) then
					thr_out <= threshold_12bits(7 downto 0);
				elsif ((WR_th_en = '1') and (cs = '1') and (Read_Write='1')) then
					threshold_12bits <= "0000"&thr_in;
				end if;
			end if;
		end process;
		
		---------------------------------------
		-- Process which select usefull data --
		---------------------------------------
		main_proc : process(CLOCK_100,start)
		begin
			if(rising_edge(CLOCK_100)) then

				data_input <= buffer_DATA;
				
				if(trigger='1') then		-- start the state machine
					work_time <= '1';
					start <= '1';
				end if;
				----		State machine	   ----
				case autom is
				
					-- Initiate all parameters --
					when S0 =>
						ram_CE_N <= '1';
						ram_OE_N <= '1';
						ram_WE_N <= '1';
						ram_UB_N <= '1';
						ram_LB_N <= '1';
						WR_th_en <= '1';
						if(start='1') then
							count_buffer   <= (OTHERS => '0');
							control_input <= (OTHERS => '0');	
							autom <= S1;
						end if;

					-- First step to write data in the external ram --		
					when S1 =>
						count_buffer <= count_buffer+1;
						if (count_buffer = 2) then
							ram_CE_N <= '0';
							ram_OE_N <= '0';
							ram_WE_N <= '0';
							ram_UB_N <= '0';
							ram_LB_N <= '0';
							ram_ADDR <= count_addr;
							save_first_addr <= count_addr;
							count_etat <= (OTHERS => '0');
							Run_Aver   <= (OTHERS => '0');
							autom <= S2;
						end if;
						
					-- Write data in ram and prepare the first runnig average value --
					when S2 =>
						ram_ADDR <= count_addr;
						ram_DATA <= "0000"&data_input;
						tab_data(to_integer(count_etat)) <= data_input;
						Run_Aver <= Run_Aver + data_input;
						count_buffer  <= count_buffer+1;
						count_etat <= count_etat+1;
						count_addr <= count_addr+1;
						if (count_etat=15) then
							WR_th_en <= '0';
							autom <= S3;
						end if;
							
					-- Write data in ram, compare the threshold with RA value --
					--        and prepare the next runnig average value       --
					when S3 =>
						if (count_etat<256) then
							ram_ADDR <= count_addr;
							ram_DATA <= "0000"&data_input;
							tab_data(to_integer(count_etat)) <= data_input;
							count_buffer  <= count_buffer+1;
							count_etat <= count_etat+1;
							count_addr <= count_addr+1;
							if (Run_Aver(15 downto 4)>=threshold_12bits) then
								WR_th_en <= '1';
								autom <= S4;
							else
								Run_Aver <= Run_Aver+data_input-tab_data(to_integer(count_etat)-16);			
							end if;
						else
							if (Run_Aver(15 downto 4)<threshold_12bits) then
									count_addr <= save_first_addr;
							end if;
							ram_CE_N <= '1';
							ram_OE_N <= '1';							
							ram_WE_N <= '1';
							ram_UB_N <= '1';
							ram_LB_N <= '1';
							WR_th_en <= '1';
							control_input <= control_input+'1';
							autom <= S5; 
						end if;
								
					--     Saving last data in ram if (Run_Aver >= threshold) in S3      --
					-- and stop to write in the external ram when all data as been saved -- 
					when S4 =>
						if(count_etat<256) then
							ram_ADDR <= count_addr;
							ram_DATA <= "0000"&data_input;
							count_buffer  <= count_buffer+1;
							count_etat <= count_etat+1;
							count_addr <= count_addr+1;
						else
							ram_CE_N <= '1';
							ram_OE_N <= '1';
							ram_WE_N <= '1';
							ram_UB_N <= '1';
							ram_LB_N <= '1';
							control_input <= control_input+'1';
							autom <= S5;
						end if;
					
					--     Prepare to take data from next channel      --
					-- or end the process and wait next trigger signal -- 	
					when S5 =>
						count_buffer <= (OTHERS => '0');
						if(unsigned(control_input)>11)then
							start <= '0';
							work_time <= '0';
							autom <= S0;
						else
							autom <= S1;
						end if;
							
					when others =>
						autom <= S0;
						
				end case;
				
			end if;
		end process main_proc;
		
end particle_detector;
