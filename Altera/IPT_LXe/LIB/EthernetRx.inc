-- Created by hand
-- (C) Yury  24.04.2016

FUNCTION  EthernetRx 
(
RX_CLK, RX_DV, COL, CRS, RXD[3..0],     -- signals from Eth_Controller

--Ready,
Saddr[47..0]   -- ThisDevice' MAC-address
)

--WITH  (ThisDeviceAddr)

RETURNS 
(
RxWaitSFD,  RxDestAddr, RxSourAddr, RxPkLength, 
RxDataBlck, RxFrameCRC, RxEndFrame, Receive_OK, 

RxCount[15..0],     -- outputs of the Receiving Cycle Counter

Daddr[47..0],       -- DestinationAddr for the reply packet
RxLength[15..0],    -- Length of the Data Block to be received
RxData[3..0],       -- half-Bytes of Data, registered

Test[4..1]
);
