-- Created by hand
-- (C) Yury  22.05.2016


FUNCTION  ETHERNET  
(
RX_CLK, RX_DV, COL, CRS, RXD[3..0], Saddr[47..0], 
TX_CLK, StTransmit, TxLength[15..0], 
clock, 
Select, RdWr_in, DataStrobe, DataBus_in[15..0], 
RESET 
)
RETURNS 
(
RxLength[15..0], 
RxDataBlck,                     -- flag: receiving of Data_Block is ongoing
RxEndFrame,                     -- flag: receiving of a Frame is completed
RxError, 

TXD[3..0], TX_EN, 
TxEndFrame,                     -- flag: transmitting of a Frame is completed
TxError, 

IORq, RdWr_out, DataBus_out[15..0], 

--Error, 
Test[8..1]
);
