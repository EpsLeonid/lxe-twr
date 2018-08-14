library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

------------------------------------------------------------------------------
--									Entity									--
------------------------------------------------------------------------------
entity Communication_buffer is

	port(
	--clock
		clk      	 : in std_logic;
	--start
		start_work   : in std_logic;
	--enables
		enable       : out std_logic_vector(3 downto 0);
	--Adress
		address_in   : in  std_logic_vector(7 downto 0);
		address_out  : out std_logic_vector(7 downto 0);
	--Select Data
		sel 	     : in std_logic_vector(3 downto 0)
	);

end Communication_buffer;



----------------------------------------------------------------------------------
--								  Architecture									--
----------------------------------------------------------------------------------
architecture Mux_buffer of Communication_buffer is
    
	--------------------------
	--		  Begin 		--
    --------------------------
	begin
		process(clk,start_work)
		begin
			if(rising_edge(clk) and (start_work='1')) then
					case sel is
						when "0000" => 
							enable <= "0000";
							address_out <= address_in;
						when "0001" => 
							enable <= "0001";
							address_out <= address_in;
						when "0010" =>
							enable <= "0010";
							address_out <= address_in;
						when "0011" =>
							enable <= "0011";
							address_out <= address_in;
						when "0100" => 
							enable <= "0100";
							address_out <= address_in;
						when "0101" => 
							enable <= "0101";
							address_out <= address_in;
						when "0110" => 
							enable <= "0110";
							address_out <= address_in;
						when "0111" => 
							enable <= "0111";
							address_out <= address_in;
						when "1000" =>
							enable <= "1000";
							address_out <= address_in;
						when "1001" =>
							enable <= "1001";
							address_out <= address_in;
						when "1010" =>
							enable <= "1010";
							address_out <= address_in;
						when "1011" =>
							enable <= "1011";
							address_out <= address_in;						
						when others =>
							enable <= "1111";
							address_out <= (OTHERS => '0');	
					end case;
			end if;
		end process;	
end Mux_buffer;