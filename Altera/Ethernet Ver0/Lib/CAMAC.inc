-- WARNING: Do NOT edit the input and output ports in this file in a text
-- editor if you plan to continue editing the block that represents it in
-- the Block Editor! File corruption is VERY likely to occur.

-- Copyright (C) 1991-2007 Altera Corporation
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


-- Generated by Quartus II Version 7.2 (Build Build 151 09/26/2007)
-- Created on Wed Feb 25 11:24:12 2009

FUNCTION CAMAC (W[16..1], B, N, A[4..1], F[4..0], S1, S2, clock, LamReset, AccessGranted, DataBusStrobe, DataBus_In[(16) - (1)..0], LinkClockCaptured, LinkActive, Link_Error, Busy_on_Digitizing, Busy_on_Copy, DeadTime)
	WITH (RefClock)
	RETURNS (R[16..1], q, X1, LAM, AccessRequest, DirectOut, AddrBusOut[(16) - (1)..0], DataBusOut[(16) - (1)..0], Start, Reset, ERROR, test1, test2, test3, LAMTrg);