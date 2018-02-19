-- Edited MANUALLY !!

FUNCTION  Digitizer_Q16
(
Clock,          -- Clock 100MHz
--Sync,           -- signal-"Tag" of Phase's rising edge (12.5Mhz)
DigitInit,      -- initiates Cycle: Digitizing and store the results in ADC_RAM

ADCdata,        -- input of serial data from ADCs

    ADC_RAM_addr[ 5..0],--\  Signals for 
    ADC_RAM_data[15..0],-- \ accessing the Digitizer's Memory
    ADC_RAM_clk,        --  > from outside
    ADC_RAM_we,         -- /  of the Digitizer Unit 
Reset           -- Main RESET
)

RETURNS
(
    ADC_RAM_q[15..0],   -- outputs of ADC_RAM to the outside of "Digitizer" unit
Working,        -- Flag: Digitizing_Cycle in progress
Error,          -- Flag: Error detected during Digitizing_Cycle
-- Connections via real pins to external parts
MUX_next,       -- strobe for switching MUX to next channel

ADC_clock,      -- clock for ADC chip
ADC_cs,         -- ChipSelect signal for ADC
ADC_a0, ADC_range,  -- signals for setting the ADC's modes
test[4..1]      -- test outs
);
