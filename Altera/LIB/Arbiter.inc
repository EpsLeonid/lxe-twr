-- Ver3.4 (28.08.2007)

FUNCTION Arbiter 
(
    BARq[(DeviceMaxNumber-1)..0], 
    TargetReady, clock, Reset
)
WITH (DeviceMaxNumber, TimeOut)
	
RETURNS 
(
    BAGd[(DeviceMaxNumber-1)..0], 
    AddressValid, 
    DataStrobe, 
    Error
--    ,Test1, Test2
);
