--TITLE "Level_Sensing";
--This file contain function for Positive Edge Sensing, T2Q project
-- It produce one clk width output positive pulse for input positive level
FUNCTION Level_Sensing
(
       clk,  --: input;   -- Clock
       clr,  --: input;   -- Common FPGA Reset
       d     --: input;   -- Exturnal signal to synchronize
)  
RETURNS
(  
       q    --: output;  -- Synchronized out
);

