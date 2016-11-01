library ieee;
use ieee.std_logic_1164.all;

use work.constants.all;

package types is

	type eth_bank_t is array (integer range 1 downto 0) of std_logic_vector(10 downto 0);
	type arr16x8_t is array (integer range 7 downto 0) of std_logic_vector(15 downto 0);
	type arr8x16_t is array (integer range 7 downto 0) of std_logic_vector(15 downto 0);
	
end types;

package body types is
end types;

