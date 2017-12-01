--TITLE "Edge_Sensing";
--This file contain function for Positive Edge Sensing, T2Q project
-- It produce one output positive pulse for input positive transition
FUNCTION Edge_Sensing
(
       clk,  --: input;   -- Clock
       clr,  --: input;   -- Common FPGA Reset
       d     --: input;   -- Exturnal signal to synchronize
)  
RETURNS
(  
       q    --: output;  -- Synchronized out
);

