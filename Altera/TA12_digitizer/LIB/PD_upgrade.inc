-- WARNING: Do NOT edit the input and output ports in this file in a text
-- editor if you plan to continue editing the block that represents it in
-- the Block Editor! File corruption is VERY likely to occur.

-- Copyright (C) 1991-2010 Altera Corporation
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


-- Generated by Quartus II Version 9.1 (Build Build 350 03/24/2010)
-- Created on Tue Jun 19 10:40:27 2018

FUNCTION PD_upgrade (trigger, CLOCK_100, buffer_DATA[11..0], cs, Read_Write, thr_in[7..0])
	RETURNS (buffer_ADDR[7..0], buffer_EN[3..0], ram_DATA[15..0], ram_ADDR[15..0], ram_LB_N, ram_UB_N, ram_CE_N, ram_OE_N, ram_WE_N, work_time, thr_out[7..0]);
