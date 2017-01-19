-- Created by hand
-- (C) Yury  22.05.2016


FUNCTION  ETHERNET  
(
RX_CLK, RX_DV, COL, CRS, RXD[3..0], Saddr[48..1], 
TX_CLK, StTransmit, TxLength[12..1], 
clock, 
Select, RdWr_in, DataStrobe, DataBus_in[15..0], 
RESET 
)
RETURNS 
(
RxWaitSFD,              -- flag: Waiting for "StartFrameDelimiter"
RxDestAddr,             -- flag: "DestinationAddr" is being received
RxSourAddr,             -- flag: "SourceAddr" is being received
RxPkLenTyp,             -- flag: "Length/Type" is being received
RxDataBlck,             -- flag: receiving of Data_Block is ongoing
RxEndFrame,             -- flag: receiving of a Frame is completed
RxLenTyp[16..1],        -- value of the "PkLength/Type" field
RxLength[12..1],        -- resulting Length(Bytes) of the Data_Block
RxError, 

TXD[3..0], TX_EN, 

TxPreamble,             -- flag: "Preamble" is being transmitted
TxStFrmDel,             -- flag: "Start Frame Delimiter" is being transmitted
TxDestAddr,             -- flag: "DestinationAddr" is being transmitted
TxSourAddr,             -- flag: "SourceAddr is being transmitted
TxPkLenTyp,             -- flag: "Packet Length/Type" is being transmitted
TxDataBlck,             -- flag: Data_Block is being transmitted
TxFrameCRC,             -- flag: "FrameCheckSequence" is being transmitted
TxEndFrame,             -- flag: Transmit of a Frame is completed
TxError, 

IORq, RdWr_out, DataBus_out[15..0], 

--Error, 
Test[8..1]
);
