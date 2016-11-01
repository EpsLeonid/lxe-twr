library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

use ieee.std_logic_arith.all;
use ieee.numeric_bit.all;

use std.textio.all;
use work.io_utils.all;

entity tb_adc_brd is
generic(
	module_name : string);
port(
   CS_N   : in std_logic;
	MISO   : out  std_logic;
	MOSI   : in std_logic;
	SCLK   : in std_logic;
	STROBE : in std_logic);
end tb_adc_brd;

architecture behavioral of tb_adc_brd is
	signal miso_r : std_logic := '0';
begin

process( SCLK )
begin
	if SCLK'event and SCLK='0' and CS_N='0' then
		if MOSI='1' then
			miso_r <= not miso_r;
		end if;
	end if;
end process;
	MISO <= 'Z' when CS_N='1' else miso_r;
end;
