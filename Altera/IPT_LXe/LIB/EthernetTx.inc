-- Created by hand
-- (C) Yury  24.04.2016

FUNCTION  EthernetTx 
(
TX_CLK,             -- ethernet clock (25 MHz) from Eth_Controller

StTransmit,         -- Start Transmission signal from MainProj
Daddr[47..0],       -- DestinationAddr (received before, at SourceAddr field)
Saddr[47..0],       -- ThisDevice' address (used as SourceAddr in the reply packets)
TxLength[15..0],    -- Length of the Data Block to send 
TxData[3..0],       -- half-Bytes of Data 
RESET
)

RETURNS
(
TX_ENA, TXD[3..0],  -- outputs to Ethernet-controller

TxPreamble,         -- "Preamble" is being transmitted
TxStFrmDel,         -- "Start Frame Delimiter" is being transmitted
TxDestAddr, TxSourAddr, 
TxPkLength, TxDataBlck, 
TxFrameCRC, TxEndFrame, 

--enTransmit,         -- internal Enable signal, needed for test only
TxCount[15..0],     -- outputs of the Transmission Cycle Counter
--sm_t[2..0],         -- needed for test only
CRC_ok 
);
