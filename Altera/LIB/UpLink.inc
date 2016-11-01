-- Made by Hand
INCLUDE  "CMD3_DAQ_Link.inc";


FUNCTION  UpLink 
(
LinkClk, 
LinkData_in, 
clock,
DataBus_in[15..0], 
--AccessGranted, 
Select, 
RdWr_in,
DataStrobe, 
Reset
)
    WITH (RefClock)
RETURNS 
(
LinkData_out, 
TxRx, 
LinkMessage, 
OpCode_out[(CommandSize + Pause - 1)..0], 
InData_out[15..0], 
CRC_out[15..0], 
--AddrBus_out[15..0], 
DataBus_out[15..0], 
IORq,--AccessRequest, 
RdWr_out, 
Error, 
Test[8..1]
);
