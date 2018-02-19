library ieee;
use ieee.std_logic_1164.ALL;
use ieee.std_logic_arith.ALL;
use ieee.std_logic_unsigned.ALL;

entity ThermoSensor is
port(
	clock       : in std_logic;  -- 100 MHz
		
	ThermoSDA : inout std_logic;
	ThermoSCL : out std_logic;

	TemperatureOut : out std_logic_vector(9 downto 0)
--	;
	
--	TmpOut : out std_logic_vector(4 downto 0)
	);
end ThermoSensor;

architecture behavioral of ThermoSensor is

	signal En1600k  : std_logic := '0';

	signal En_cnt  : std_logic_vector (4 downto 0) := (others=>'0');
	
	signal En800k  : std_logic := '0';
	signal En400k  : std_logic := '0';
	signal En200k  : std_logic := '0';
	signal En100k  : std_logic := '0';
	signal EnCycle  : std_logic := '0'; -- Enable signal with period of 1 s

	signal ClkEn_ShReg  : std_logic_vector (31 downto 0) := X"3FFFFFFC";
	signal ClkEn_t1  : std_logic := '0';
	signal ClkEn  : std_logic := '0';

--	signal DataFromMaster_ShReg  : std_logic_vector (31 downto 0) := X"D2600001";
	signal DataFromMaster_ShReg  : std_logic_vector (31 downto 0) := X"D2600005";
	signal DataFromMaster  : std_logic := '0';

	signal WrEn_ShReg  : std_logic_vector (31 downto 0) := X"FFF00807";
	signal WrEn_t1  : std_logic := '0';
	signal WrEn  : std_logic := '0';

	signal RdEn_ShReg  : std_logic_vector (31 downto 0) := X"000FF600";
	signal RdEn  : std_logic := '0';
	
	signal ThermoClk  : std_logic := '1';
	signal DataFromProbe_ShReg  : std_logic_vector (9 downto 0) := (others=>'0');
	signal DataFromProbe  : std_logic_vector (9 downto 0) := (others=>'0');
	signal Ready  : std_logic := '0';

begin

-- enable signal with period of 625 ns
process(clock)
variable En1600k_cnt : integer := 0;
begin
	if clock'event and clock='1' then
		if En1600k_cnt >= 62 then
			En1600k_cnt := 0;
			En1600k <= '1';
		else
			En1600k_cnt := En1600k_cnt + 1;
			En1600k <= '0';
		end if;	
	end if;
end process;

-- enable signals with periods of 10, 5, 2.5, 1.25 us
process(clock, En1600k)
begin
	if clock'event and clock='1' and En1600k='1' then
		En_cnt <= En_cnt + 1;
	end if;
		
	if clock'event and clock='1' then
		if En_cnt(0) = '1' and En1600k='1' then
			En800k <= '1';
		else
			En800k <= '0';
		end if;	
		
		if En_cnt(1 downto 0) = 3 and En1600k='1' then
			En400k <= '1';
		else
			En400k <= '0';
		end if;	
		
		if En_cnt(2 downto 0) = 7 and En1600k='1' then
			En200k <= '1';
		else
			En200k <= '0';
		end if;	
		
		if En_cnt(3 downto 0) = 15 and En1600k='1' then
			En100k <= '1';
		else
			En100k <= '0';
		end if;	
		
	end if;
		
end process;

-- EnCycle creation - one 320 us pulse every seconds
process(clock, En100k)
variable En1_cnt : integer := 0;
variable EnCycle_cnt : integer := 0;
begin
	if clock'event and clock='1' and En100k = '1' then
		if En1_cnt >= 100000 then
			En1_cnt := 0;
		else
			En1_cnt := En1_cnt + 1;
		end if;	
		
		if En1_cnt = 1 then
			EnCycle <= '1';
		end if;	
		
		if EnCycle = '1' then
			EnCycle_cnt := EnCycle_cnt + 1;
		else
			EnCycle_cnt := 0;
		end if;	
		
		if EnCycle_cnt = 32 then
			EnCycle <= '0';
			Ready <= '1';
		else
			Ready <= '0';
		end if;	
	end if;
	

end process;

-- shift registers with cyclogram
process(clock, En100k, EnCycle)
begin
	if clock'event and clock='1' and En100k = '1' and EnCycle = '1' then
		ClkEn_ShReg <= ClkEn_ShReg(30 downto 0) & ClkEn_ShReg(31);
		DataFromMaster_ShReg <= DataFromMaster_ShReg(30 downto 0) & DataFromMaster_ShReg(31);
		WrEn_ShReg <= WrEn_ShReg(30 downto 0) & WrEn_ShReg(31);
		RdEn_ShReg <= RdEn_ShReg(30 downto 0) & RdEn_ShReg(31);
	end if;	
end process;

-- delay cyclograms for 5 us   
process(clock, En200k)
begin
	if clock'event and clock='1' and En200k = '1' then
		ClkEn_t1 <= ClkEn_ShReg(31);
	end if;	
end process;

-- delay cyclograms for 2.5 us   
process(clock, En400k)
begin
	if clock'event and clock='1' and En400k = '1' then
		ClkEn <= ClkEn_t1;
		DataFromMaster <= DataFromMaster_ShReg(31);
		WrEn_t1 <= WrEn_ShReg(31);
		RdEn <= RdEn_ShReg(31);
	end if;	
end process;

-- delay cyclograms for 1.25 us   
process(clock, En800k)
begin
	if clock'event and clock='1' and En800k = '1' then
		WrEn <= WrEn_t1;
	end if;	
end process;

-- Clock 100 kHz for I2C thermoprobe
process(clock, En200k, ClkEn)
begin
	if clock'event and clock='1' and En200k = '1' and ClkEn = '1' then
		ThermoClk <= not ThermoClk;
	end if;	
end process;

-- Get data from thermoprobe
process(ThermoClk, RdEn)
begin
	if ThermoClk'event and ThermoClk='1' and RdEn = '1' then
		DataFromProbe_ShReg <= DataFromProbe_ShReg(8 downto 0) & ThermoSDA;
	end if;	
end process;

-- Transfer data from thermoprobe shift register to store register
process(clock, En100k, Ready)
begin
	if clock'event and clock='1' and En100k = '1' and Ready = '1' then
		DataFromProbe <= DataFromProbe_ShReg;
	end if;	
end process;


--	TmpOut(0) <= ThermoClk;
--	TmpOut(1) <= ClkEn;
--	TmpOut(2) <= DataFromMaster;
--	TmpOut(3) <= WrEn;
--	TmpOut(4) <= RdEn;

-- result output -----------------------------
	TemperatureOut <= DataFromProbe;
	
-- I2C bus interface -----------------	
--	ThermoSDA <= 'Z';
--	ThermoSCL <= '1';

	ThermoSCL <= ThermoClk;

process(clock)
begin
	if WrEn = '1' then
		ThermoSDA <= DataFromMaster;
	else	
		ThermoSDA <= 'Z';
	end if;
end process;
	
end behavioral;
