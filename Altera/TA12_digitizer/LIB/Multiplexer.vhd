library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

------------------------------------------------------------------------------
--									Entity									--
------------------------------------------------------------------------------
entity Multiplexer is

	port(
--Inputs
	--clock
		clk      	: in std_logic;
	-- start
		start_work 	: in std_logic;
	--Data
		data0x		: in std_logic_vector(11 downto 0);
		data1x  	: in std_logic_vector(11 downto 0);
		data2x	 	: in std_logic_vector(11 downto 0);
		data3x	 	: in std_logic_vector(11 downto 0);
		data4x	 	: in std_logic_vector(11 downto 0);
		data5x	 	: in std_logic_vector(11 downto 0);
		data6x	 	: in std_logic_vector(11 downto 0);
		data7x	 	: in std_logic_vector(11 downto 0);
		data8x	 	: in std_logic_vector(11 downto 0);
		data9x	 	: in std_logic_vector(11 downto 0);
		data10x	 	: in std_logic_vector(11 downto 0);
		data11x	 	: in std_logic_vector(11 downto 0);
	--Select Data
		sel 	 	: in std_logic_vector(3 downto 0);
--Output	
	--Data
		result		: out std_logic_vector(11 downto 0)
	);

end Multiplexer;



----------------------------------------------------------------------------------
--								  Architecture									--
----------------------------------------------------------------------------------
architecture Mux of Multiplexer is
    
	--------------------------
	--		  Begin 		--
    --------------------------
	begin
		process(clk,start_work)
		begin
			if(rising_edge(clk) and (start_work='1')) then
					case sel is
						when "0000" => result <= data0x;
						when "0001" => result <= data1x;
						when "0010" => result <= data2x;
						when "0011" => result <= data3x;
						when "0100" => result <= data4x;
						when "0101" => result <= data5x;
						when "0110" => result <= data6x;
						when "0111" => result <= data7x;
						when "1000" => result <= data8x;
						when "1001" => result <= data9x;
						when "1010" => result <= data10x;
						when others => result <= data11x;
					end case;
			end if;
		end process;	
end Mux;