-- WARNING: Do NOT edit the input and output ports in this file in a text
-- editor if you plan to continue editing the block that represents it in
-- the Block Editor! File corruption is VERY likely to occur.

-- Copyright (C) 1991-2008 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.


-- Generated by Quartus II Version 8.1 (Build Build 163 10/28/2008)
-- Created on Fri Apr 01 15:26:21 2011

FUNCTION CMD3_FOR_Lines_Simulator (Fast_Link_Clock, Next_Slice, Parallel_Start, Parallel_Stop, Bus_Clock, Reset, DataBus_In[15..0], DataBusStrobe, Select, DirectIn, AddrBus_In[9..0])
	RETURNS (Started, Add_nReplace, Pattern_Active, q[23..0], DataBusOut[15..0], Error);
