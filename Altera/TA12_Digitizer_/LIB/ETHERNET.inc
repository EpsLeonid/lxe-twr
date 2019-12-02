-- Created by hand
-- (C) Yury  22.05.2016


FUNCTION  ETHERNET  
(
RX_CLK, RX_DV, COL, CRS, RXD[3..0], 
Saddr[48..1],           -- ThisDevice'_Address 
RxLengIn[12..1],        -- Length(Bytes) of the DataBlock 
TX_CLK, StTransmit, 
TxLenTyp[16..1],        -- value of the "PacketLength/Type" to be transmitted
TxLength[12..1],        -- Length(Bytes) of the DataBlock

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
RxFrameCRC,             -- flag: "FrameCheckSequence" is being received
RxEndFrame,             -- flag: receiving of a Frame is completed
RxStagCt[ 3..0],        -- Main Receiving_Cycle Counter 
RxDataCt[11..0],        -- Counter which counts the received DWords of DataBlock
RxLenTyp[16..1],        -- value of the "PkLength/Type" field
RxLength[12..1],        -- resulting Length(Bytes) of the DataBlock
TypeRaw,                -- flag: Type = Raw 

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
TxCount[11..0],         -- Tx-Cycle Counter's outputs

TxError, 

IORq, RdWr_out, DataBus_out[15..0], 

--Error, 
Test[8..1]
);
