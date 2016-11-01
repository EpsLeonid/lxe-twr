library ieee;
use ieee.std_logic_1164.ALL;
use ieee.std_logic_arith.ALL;
use ieee.std_logic_unsigned.ALL;

--library work;
--use work.types.all;

entity crc32nibble is
port(
	clock    : in std_logic;
	clock_en	: in std_logic;
	sclr		: in std_logic;
	d        : in std_logic_vector(3 downto 0);
	q			: out std_logic_vector(31 downto 0);
	crc_ok   : out std_logic);
end crc32nibble;

architecture behavioral of crc32nibble is
	signal crc_r : std_logic_vector(31 downto 0) := (others=>'0');
	signal m_s   : std_logic_vector(3 downto 0)  := (others=>'0');	
begin

	m_s(0) <= crc_r(3) xnor d(3);
	m_s(1) <= crc_r(2) xnor d(2);
	m_s(2) <= crc_r(1) xnor d(1);
	m_s(3) <= crc_r(0) xnor d(0);

	crc_ok <= '1' when crc_r=X"2144DF1C" else '0';

process(clock, clock_en)
begin

	if clock'event and clock='1' and clock_en='1' then
		if sclr='1' then
			crc_r <= (others=>'0');
		else
			crc_r(31) <= 			  not m_s(0);          					--	CRC31.d = !sclr& (VCC $ m0);
			crc_r(30) <= m_s(1)   xnor m_s(0);            				--	CRC30.d = !sclr& (VCC $ m1 $ m0);
			crc_r(29) <= m_s(2)   xnor (m_s(1) xor m_s(0));				--	CRC29.d = !sclr& (VCC $ m2 $ m1 $ m0);
			crc_r(28) <= m_s(3) 	 xnor (m_s(2) xor m_s(1)); 			--	CRC28.d = !sclr& (VCC $ m3 $ m2 $ m1);
			crc_r(27) <= crc_r(31) xor m_s(3) xor m_s(2) xor m_s(0); -- CRC27.d = !sclr& (CRC31$ m3 $ m2 $ m0);
			crc_r(26) <= crc_r(30) xor m_s(3) xor m_s(1) xor m_s(0); --	CRC26.d = !sclr& (CRC30$ m3 $ m1 $ m0);
			crc_r(25) <= crc_r(29) xor m_s(2) xor m_s(1);            --	CRC25.d = !sclr& (CRC29$ m2 $ m1);
			crc_r(24) <= crc_r(28) xor m_s(3) xor m_s(2) xor m_s(0); --	CRC24.d = !sclr& (CRC28$ m3 $ m2 $ m0);
			crc_r(23) <= crc_r(27) xor m_s(3) xor m_s(1) xor m_s(0); --	CRC23.d = !sclr& (CRC27$ m3 $ m1 $ m0);
			crc_r(22) <= crc_r(26) xor m_s(2) xor m_s(1); 				--	CRC22.d = !sclr& (CRC26$ m2 $ m1);
			crc_r(21) <= crc_r(25) xor m_s(3) xor m_s(2) xor m_s(0); --	CRC21.d = !sclr& (CRC25$ m3 $ m2 $ m0);
			crc_r(20) <= crc_r(24) xor m_s(3) xor m_s(1) xor m_s(0); --	CRC20.d = !sclr& (CRC24$ m3 $ m1 $ m0);
			crc_r(19) <= crc_r(23) xor m_s(2) xor m_s(1) xor m_s(0); --	CRC19.d = !sclr& (CRC23$ m2 $ m1 $ m0);
			crc_r(18) <= crc_r(22) xor m_s(3) xor m_s(2) xor m_s(1); --	CRC18.d = !sclr& (CRC22$ m3 $ m2 $ m1);
			crc_r(17) <= crc_r(21) xor m_s(3) xor m_s(2); 				--	CRC17.d = !sclr& (CRC21$ m3 $ m2);
			crc_r(16) <= crc_r(20) xor m_s(3); 								--	CRC16.d = !sclr& (CRC20$ m3);
			crc_r(15) <= crc_r(19) xor m_s(0); 								--	CRC15.d = !sclr& (CRC19$ m0);
			crc_r(14) <= crc_r(18) xor m_s(1); 								--	CRC14.d = !sclr& (CRC18$ m1);
			crc_r(13) <= crc_r(17) xor m_s(2); 								--	CRC13.d = !sclr& (CRC17$ m2);
			crc_r(12) <= crc_r(16) xor m_s(3); 								--	CRC12.d = !sclr& (CRC16$ m3);
			crc_r(11) <= crc_r(15); 											--	CRC11.d = !sclr& (CRC15);
			crc_r(10) <= crc_r(14); 											--	CRC10.d = !sclr& (CRC14);
			crc_r( 9) <= crc_r(13) xor m_s(0); 								--	CRC9 .d = !sclr& (CRC13$ m0);
			crc_r( 8) <= crc_r(12) xor m_s(1) xor m_s(0); 				--	CRC8 .d = !sclr& (CRC12$ m1 $ m0);
			crc_r( 7) <= crc_r(11) xor m_s(2) xor m_s(1); 				--	CRC7 .d = !sclr& (CRC11$ m2 $ m1);
			crc_r( 6) <= crc_r(10) xor m_s(3) xor m_s(2); 				--	CRC6 .d = !sclr& (CRC10$ m3 $ m2);
			crc_r( 5) <= crc_r( 9) xor m_s(3) xor m_s(0); 				--	CRC5 .d = !sclr& (CRC9 $ m3 $ m0);
			crc_r( 4) <= crc_r( 8) xor	m_s(1); 								--	CRC4 .d = !sclr& (CRC8 $ m1);
			crc_r( 3) <= crc_r( 7) xor m_s(2); 								--	CRC3 .d = !sclr& (CRC7 $ m2);
			crc_r( 2) <= crc_r( 6) xor m_s(3); 								--	CRC2 .d = !sclr& (CRC6 $ m3);
			crc_r( 1) <= crc_r( 5); 											--	CRC1 .d = !sclr& (CRC5);
			crc_r( 0) <= crc_r( 4); 											--	CRC0 .d = !sclr& (CRC4);			
		end if;
	end if;
end process;
	q <= crc_r;
end behavioral;
