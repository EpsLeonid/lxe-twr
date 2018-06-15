library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

------------------------------------------------------------------------------
--									Entity									--
------------------------------------------------------------------------------
entity Control_ROM is

	port(
	--clock
		clk      	 : in std_logic;
	--start
		start_work   : in std_logic;
	--enables
		enable_0     : out std_logic;
		enable_1     : out std_logic;
		enable_2     : out std_logic;
		enable_3     : out std_logic;
		enable_4     : out std_logic;
		enable_5     : out std_logic;
		enable_6     : out std_logic;
		enable_7     : out std_logic;
		enable_8     : out std_logic;
		enable_9     : out std_logic;
		enable_10    : out std_logic;
		enable_11    : out std_logic;
	--Adress
		address_in   : in  std_logic_vector(7 downto 0);
		address_out  : out std_logic_vector(7 downto 0);
	--Select Data
		sel 	     : in std_logic_vector(3 downto 0)
	);

end Control_ROM;



----------------------------------------------------------------------------------
--								  Architecture									--
----------------------------------------------------------------------------------
architecture Mux_ROM of Control_ROM is
    
	--------------------------
	--		  Begin 		--
    --------------------------
	begin
		process(clk,start_work)
		begin
			if(rising_edge(clk) and (start_work='1')) then
					case sel is
						when "0000" => 
							enable_0 <= '1';
							enable_1 <= '0';
							enable_2 <= '0';
							enable_3 <= '0';
							enable_4 <= '0';
							enable_5 <= '0';
							enable_6 <= '0';
							enable_7 <= '0';
							enable_8 <= '0';
							enable_9 <= '0';
							enable_10<= '0';
							enable_11<= '0';
							address_out <= address_in;
						when "0001" => 
							enable_0 <= '0';
							enable_1 <= '1';
							enable_2 <= '0';
							enable_3 <= '0';
							enable_4 <= '0';
							enable_5 <= '0';
							enable_6 <= '0';
							enable_7 <= '0';
							enable_8 <= '0';
							enable_9 <= '0';
							enable_10<= '0';
							enable_11<= '0';
							address_out <= address_in;
						when "0010" =>
							enable_0 <= '0';
							enable_1 <= '0';
							enable_2 <= '1';
							enable_3 <= '0';
							enable_4 <= '0';
							enable_5 <= '0';
							enable_6 <= '0';
							enable_7 <= '0';
							enable_8 <= '0';
							enable_9 <= '0';
							enable_10<= '0';
							enable_11<= '0';
							address_out <= address_in;
						when "0011" =>
							enable_0 <= '0';
							enable_1 <= '0';
							enable_2 <= '0';
							enable_3 <= '1';
							enable_4 <= '0';
							enable_5 <= '0';
							enable_6 <= '0';
							enable_7 <= '0';
							enable_8 <= '0';
							enable_9 <= '0';
							enable_10<= '0';
							enable_11<= '0';
							address_out <= address_in;
						when "0100" => 
							enable_0 <= '0';
							enable_1 <= '0';
							enable_2 <= '0';
							enable_3 <= '0';
							enable_4 <= '1';
							enable_5 <= '0';
							enable_6 <= '0';
							enable_7 <= '0';
							enable_8 <= '0';
							enable_9 <= '0';
							enable_10<= '0';
							enable_11<= '0';
							address_out <= address_in;
						when "0101" => 
							enable_0 <= '0';
							enable_1 <= '0';
							enable_2 <= '0';
							enable_3 <= '0';
							enable_4 <= '0';
							enable_5 <= '1';
							enable_6 <= '0';
							enable_7 <= '0';
							enable_8 <= '0';
							enable_9 <= '0';
							enable_10<= '0';
							enable_11<= '0';
							address_out <= address_in;
						when "0110" => 
							enable_0 <= '0';
							enable_1 <= '0';
							enable_2 <= '0';
							enable_3 <= '0';
							enable_4 <= '0';
							enable_5 <= '0';
							enable_6 <= '1';
							enable_7 <= '0';
							enable_8 <= '0';
							enable_9 <= '0';
							enable_10<= '0';
							enable_11<= '0';
							address_out <= address_in;
						when "0111" => 
							enable_0 <= '0';
							enable_1 <= '0';
							enable_2 <= '0';
							enable_3 <= '0';
							enable_4 <= '0';
							enable_5 <= '0';
							enable_6 <= '0';
							enable_7 <= '1';
							enable_8 <= '0';
							enable_9 <= '0';
							enable_10<= '0';
							enable_11<= '0';
							address_out <= address_in;
						when "1000" =>
							enable_0 <= '0';
							enable_1 <= '0';
							enable_2 <= '0';
							enable_3 <= '0';
							enable_4 <= '0';
							enable_5 <= '0';
							enable_6 <= '0';
							enable_7 <= '0';
							enable_8 <= '1';
							enable_9 <= '0';
							enable_10<= '0';
							enable_11<= '0';
							address_out <= address_in;
						when "1001" =>
							enable_0 <= '0';
							enable_1 <= '0';
							enable_2 <= '0';
							enable_3 <= '0';
							enable_4 <= '0';
							enable_5 <= '0';
							enable_6 <= '0';
							enable_7 <= '0';
							enable_8 <= '0';
							enable_9 <= '1';
							enable_10<= '0';
							enable_11<= '0';
							address_out <= address_in;
						when "1010" =>
							enable_0 <= '0';
							enable_1 <= '0';
							enable_2 <= '0';
							enable_3 <= '0';
							enable_4 <= '0';
							enable_5 <= '0';
							enable_6 <= '0';
							enable_7 <= '0';
							enable_8 <= '0';
							enable_9 <= '0';
							enable_10<= '1';
							enable_11<= '0';
							address_out <= address_in;
						when "1011" =>
							enable_0 <= '0';
							enable_1 <= '0';
							enable_2 <= '0';
							enable_3 <= '0';
							enable_4 <= '0';
							enable_5 <= '0';
							enable_6 <= '0';
							enable_7 <= '0';
							enable_8 <= '0';
							enable_9 <= '0';
							enable_10<= '0';
							enable_11<= '1';
							address_out <= address_in;						
						when others =>
							enable_0 <= '0';
							enable_1 <= '0';
							enable_2 <= '0';
							enable_3 <= '0';
							enable_4 <= '0';
							enable_5 <= '0';
							enable_6 <= '0';
							enable_7 <= '0';
							enable_8 <= '0';
							enable_9 <= '0';
							enable_10<= '0';
							enable_11<= '0';
							address_out <= (OTHERS => '0');	
					end case;
			end if;
		end process;	
end Mux_ROM;