library ieee;
use ieee.std_logic_1164.ALL;
use ieee.std_logic_arith.ALL;
use ieee.std_logic_unsigned.ALL;

entity VoltageMeasure is
port(
	clock       : in std_logic;  -- 100 MHz
		
	nVoltageCS   : out std_logic;
	VoltageDin  : out std_logic;
	VoltageDout : in  std_logic;
	VoltageSclk : out std_logic;

	Voltage0 : out std_logic_vector(11 downto 0);
	Voltage1 : out std_logic_vector(11 downto 0);
	Voltage2 : out std_logic_vector(11 downto 0);
	Voltage3 : out std_logic_vector(11 downto 0);
	Voltage4 : out std_logic_vector(11 downto 0);
	Voltage5 : out std_logic_vector(11 downto 0);
	Voltage6 : out std_logic_vector(11 downto 0);
	Voltage7 : out std_logic_vector(11 downto 0);

	VoltageControl : in std_logic_vector(3 downto 0);

	VoltageStatus : out std_logic_vector(1 downto 0);

	VoltageThreshold0 : in std_logic_vector(11 downto 0);
	VoltageThreshold1 : in std_logic_vector(11 downto 0);

	nAmplPowerOn : out std_logic;
	AdcPowerDown : out std_logic;
	HVoff : out std_logic);
	
end VoltageMeasure;

architecture behavioral of VoltageMeasure is

component VoltageMeasureRom
port(
	address : in std_logic_vector (9 downto 0);
	clock		 : in std_logic  := '1';
	rden		 : in std_logic  := '0';
	q		    : out std_logic_vector (7 downto 0));
end component;

	signal En4M  : std_logic := '0'; -- 4 MHz enable signal

	signal Start  : std_logic := '0';
	signal Ready  : std_logic := '0';
	signal EnCycle  : std_logic := '0'; -- Enable signal with period of 1 s

	signal RomAddress : std_logic_vector(9 downto 0)  := (others=>'0');
	signal RomRdEn	: std_logic := '0';
	signal RomQ : std_logic_vector(7 downto 0)  := (others=>'0');

	signal AdcClock  : std_logic := '0';
	signal AdcClockDl  : std_logic := '0';
	signal ShRegWrStrobe  : std_logic := '0';
	
	signal Voltage0_En  : std_logic := '0';
	signal Voltage1_En  : std_logic := '0';
	signal Voltage2_En  : std_logic := '0';
	signal Voltage3_En  : std_logic := '0';
	signal Voltage4_En  : std_logic := '0';
	signal Voltage5_En  : std_logic := '0';
	signal Voltage6_En  : std_logic := '0';
	signal Voltage7_En  : std_logic := '0';

	signal Voltage0_ShReg  : std_logic_vector (11 downto 0) := (others=>'0');
	signal Voltage1_ShReg  : std_logic_vector (11 downto 0) := (others=>'0');
	signal Voltage2_ShReg  : std_logic_vector (11 downto 0) := (others=>'0');
	signal Voltage3_ShReg  : std_logic_vector (11 downto 0) := (others=>'0');
	signal Voltage4_ShReg  : std_logic_vector (11 downto 0) := (others=>'0');
	signal Voltage5_ShReg  : std_logic_vector (11 downto 0) := (others=>'0');
	signal Voltage6_ShReg  : std_logic_vector (11 downto 0) := (others=>'0');
	signal Voltage7_ShReg  : std_logic_vector (11 downto 0) := (others=>'0');

	signal Voltage0_Reg  : std_logic_vector (11 downto 0) := (others=>'0');
	signal Voltage1_Reg  : std_logic_vector (11 downto 0) := (others=>'0');
	signal Voltage2_Reg  : std_logic_vector (11 downto 0) := (others=>'0');
	signal Voltage3_Reg  : std_logic_vector (11 downto 0) := (others=>'0');
	signal Voltage4_Reg  : std_logic_vector (11 downto 0) := (others=>'0');
	signal Voltage5_Reg  : std_logic_vector (11 downto 0) := (others=>'0');
	signal Voltage6_Reg  : std_logic_vector (11 downto 0) := (others=>'0');
	signal Voltage7_Reg  : std_logic_vector (11 downto 0) := (others=>'0');
	
	signal VoltageCompare0  : std_logic := '0';
	signal VoltageCompare1  : std_logic := '0';
	signal VoltageCompareResult  : std_logic := '0';

	signal VoltageCompare0_ShReg  : std_logic_vector (4 downto 0) := (others=>'0');
	signal VoltageCompare1_ShReg  : std_logic_vector (4 downto 0) := (others=>'0');
	
	signal VoltageAutoEn  : std_logic := '0';
	signal VoltageForcedOff  : std_logic := '0';
	
begin

VoltageMeasureRom0 : VoltageMeasureRom
port map(
	clock		=> clock,
	address 	=> RomAddress,
	rden		=> RomRdEn,
	q		   => RomQ);

-- enable signal with period of 250 ns
process(clock)
variable En4M_cnt : integer := 0;
begin
	if clock'event and clock='1' then
		if En4M_cnt >= 24 then
			En4M_cnt := 0;
			En4M <= '1';
		else
			En4M_cnt := En4M_cnt + 1;
			En4M <= '0';
		end if;	
	end if;
end process;

-- Start pulse creation - 1 Hz
process(clock, En4M)
variable En1_cnt : integer := 0;
begin
	if clock'event and clock='1' and En4M = '1' then
		if En1_cnt >= 4000000 then
			En1_cnt := 0;
		else
			En1_cnt := En1_cnt + 1;
		end if;	
		
		if En1_cnt = 1 then
			EnCycle <= '1';
		end if;	
		
		if EnCycle = '1' then
			RomAddress <= RomAddress + 1;
		else
			RomAddress <= (others=>'0');
		end if;	
		
		if RomAddress = 650 then
			EnCycle <= '0';
		end if;	
		
	end if;
		
	if clock'event and clock='1' then
		if En1_cnt = 1 and En4M = '1' then
			Start <= '1';
		else
			Start <= '0';
		end if;	

		if RomAddress = 650 then
			Ready <= En4M;
		else
			Ready <= '0';
		end if;	
		
		RomRdEn <= EnCycle and En4M;
		
	end if;

end process;

-- strobe signal for shift registers
process(clock)
begin
	if clock'event and clock='1' then
		AdcClockDl <= AdcClock;
	end if;	
end process;

	ShRegWrStrobe <= AdcClock and (not AdcClockDl);


-- enable signal decoder for shift registers 
process(clock)
begin
	if clock'event and clock='1' then
--		case RomQ(7 downto 4) is
--			when X"1" => Voltage0_En <= '1';
--			when X"2" => Voltage1_En <= '1';
--			when X"3" => Voltage2_En <= '1';
--			when X"4" => Voltage3_En <= '1';
--			when X"5" => Voltage4_En <= '1';
--			when X"6" => Voltage5_En <= '1';
--			when X"7" => Voltage6_En <= '1';
--			when X"8" => Voltage7_En <= '1';
--			when others =>
--		end case;	
		if RomQ(7 downto 4) = X"1" then
			Voltage0_En <= '1';
		else	
			Voltage0_En <= '0';
		end if;	

		if RomQ(7 downto 4) = X"2" then
			Voltage1_En <= '1';
		else	
			Voltage1_En <= '0';
		end if;	

		if RomQ(7 downto 4) = X"3" then
			Voltage2_En <= '1';
		else	
			Voltage2_En <= '0';
		end if;	

		if RomQ(7 downto 4) = X"4" then
			Voltage3_En <= '1';
		else	
			Voltage3_En <= '0';
		end if;	

		if RomQ(7 downto 4) = X"5" then
			Voltage4_En <= '1';
		else	
			Voltage4_En <= '0';
		end if;	

		if RomQ(7 downto 4) = X"6" then
			Voltage5_En <= '1';
		else	
			Voltage5_En <= '0';
		end if;	

		if RomQ(7 downto 4) = X"7" then
			Voltage6_En <= '1';
		else	
			Voltage6_En <= '0';
		end if;	

		if RomQ(7 downto 4) = X"8" then
			Voltage7_En <= '1';
		else	
			Voltage7_En <= '0';
		end if;	

	end if;	
end process;
	
	
-- store data to shift registers
process(clock, ShRegWrStrobe, Voltage0_En)
begin
	if clock'event and clock='1' and ShRegWrStrobe = '1' and Voltage0_En = '1' then
		Voltage0_ShReg <= Voltage0_ShReg(10 downto 0) & VoltageDout;
	end if;	
end process;

process(clock, ShRegWrStrobe, Voltage1_En)
begin
	if clock'event and clock='1' and ShRegWrStrobe = '1' and Voltage1_En = '1' then
		Voltage1_ShReg <= Voltage1_ShReg(10 downto 0) & VoltageDout;
	end if;	
end process;

process(clock, ShRegWrStrobe, Voltage2_En)
begin
	if clock'event and clock='1' and ShRegWrStrobe = '1' and Voltage2_En = '1' then
		Voltage2_ShReg <= Voltage2_ShReg(10 downto 0) & VoltageDout;
	end if;	
end process;

process(clock, ShRegWrStrobe, Voltage3_En)
begin
	if clock'event and clock='1' and ShRegWrStrobe = '1' and Voltage3_En = '1' then
		Voltage3_ShReg <= Voltage3_ShReg(10 downto 0) & VoltageDout;
	end if;	
end process;

process(clock, ShRegWrStrobe, Voltage4_En)
begin
	if clock'event and clock='1' and ShRegWrStrobe = '1' and Voltage4_En = '1' then
		Voltage4_ShReg <= Voltage4_ShReg(10 downto 0) & VoltageDout;
	end if;	
end process;

process(clock, ShRegWrStrobe, Voltage5_En)
begin
	if clock'event and clock='1' and ShRegWrStrobe = '1' and Voltage5_En = '1' then
		Voltage5_ShReg <= Voltage5_ShReg(10 downto 0) & VoltageDout;
	end if;	
end process;

process(clock, ShRegWrStrobe, Voltage6_En)
begin
	if clock'event and clock='1' and ShRegWrStrobe = '1' and Voltage6_En = '1' then
		Voltage6_ShReg <= Voltage6_ShReg(10 downto 0) & VoltageDout;
	end if;	
end process;

process(clock, ShRegWrStrobe, Voltage7_En)
begin
	if clock'event and clock='1' and ShRegWrStrobe = '1' and Voltage7_En = '1' then
		Voltage7_ShReg <= Voltage7_ShReg(10 downto 0) & VoltageDout;
	end if;	
end process;


-- Transfer data from shift registers to store registers
process(clock, Ready)
begin
	if clock'event and clock='1' and Ready = '1' then
		Voltage0_Reg <= Voltage0_ShReg;
		Voltage1_Reg <= Voltage1_ShReg;
		Voltage2_Reg <= Voltage2_ShReg;
		Voltage3_Reg <= Voltage3_ShReg;
		Voltage4_Reg <= Voltage4_ShReg;
		Voltage5_Reg <= Voltage5_ShReg;
		Voltage6_Reg <= Voltage6_ShReg;
		Voltage7_Reg <= Voltage7_ShReg;
	end if;	
end process;

	AdcClock <= RomQ(1);

	
-- Compare +-6V with thresholds

	VoltageAutoEn <= VoltageControl(0);
	VoltageForcedOff <= VoltageControl(1);
	VoltageStatus(0) <= VoltageCompare0;
	VoltageStatus(1) <= VoltageCompare1;

	nAmplPowerOn <= VoltageCompareResult;
	AdcPowerDown <= VoltageControl(2);
	HVoff <= VoltageControl(3);
	
process(clock, Ready)
begin
	if clock'event and clock='1' and Ready = '1' then
		if Voltage2_Reg < VoltageThreshold0 then
			VoltageCompare0_ShReg(0) <= '1';
		else	
			VoltageCompare0_ShReg(0) <= '0';
		end if;	

		if Voltage3_Reg < VoltageThreshold1 then
			VoltageCompare1_ShReg(0) <= '1';
		else	
			VoltageCompare1_ShReg(0) <= '0';
		end if;	

		VoltageCompare0_ShReg(4 downto 1) <= VoltageCompare0_ShReg(3 downto 0);
		VoltageCompare1_ShReg(4 downto 1) <= VoltageCompare1_ShReg(3 downto 0);

		if (VoltageCompare0_ShReg(0) and VoltageCompare0_ShReg(1) and VoltageCompare0_ShReg(2) and VoltageCompare0_ShReg(3) and VoltageCompare0_ShReg(4)) = '1' then 
			VoltageCompare0 <= '1'; 
		end if;	

		if (VoltageCompare1_ShReg(0) and VoltageCompare1_ShReg(1) and VoltageCompare1_ShReg(2) and VoltageCompare1_ShReg(3) and VoltageCompare1_ShReg(4)) = '1' then 
		   VoltageCompare1 <=  '1'; 
		end if;
		
		VoltageCompareResult <= ((VoltageCompare0 or VoltageCompare1) and VoltageAutoEn) or VoltageForcedOff;
		
	end if;	
end process;

-- result output -----------------------------
	Voltage0 <= Voltage0_Reg;
	Voltage1 <= Voltage1_Reg;
	Voltage2 <= Voltage2_Reg;
	Voltage3 <= Voltage3_Reg;
	Voltage4 <= Voltage4_Reg;
	Voltage5 <= Voltage5_Reg;
	Voltage6 <= Voltage6_Reg;
	Voltage7 <= Voltage7_Reg;
	
-- SPI bus interface -----------------	
	nVoltageCS <= RomQ(0);
	VoltageSclk <= AdcClock;
	VoltageDin <= RomQ(2);
	
end behavioral;
