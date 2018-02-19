library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

library work;

entity flash_ifc is
port(
-- system
	clock    : in std_logic;
	clock_locked : in std_logic;
	hb5us : in std_logic;

	FLASH_SI      : out std_logic;
	FLASH_SCK     : out std_logic;
	FLASH_RESEN_N : out std_logic;
	FLASH_CS_N    : out std_logic;
	FLASH_WP_N    : out std_logic;
	FLASH_SO      : in std_logic);
end flash_ifc;

architecture behavioral of flash_ifc is

begin
	FLASH_RESEN_N <= '1';
	FLASH_CS_N <= '1';
	FLASH_WP_N <= '1';
	FLASH_SCK <= '0';
	FLASH_SI <= FLASH_SO;
end behavioral;

