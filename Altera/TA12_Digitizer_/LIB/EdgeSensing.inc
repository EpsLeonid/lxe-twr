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
-- Created on Fri Jan 14 17:05:47 2011

--TITLE "EdgeSensing";
--This file contains function for Positive Edge Sensing
-- The function produces positive pulse of 2clock duration for positive
-- ( LOW -> HIGH ) input signal transition

-- Unificated NAMES of inputs and outputs (with LevelSensing, DelayLine)

FUNCTION  EdgeSensing
(
    d,          -- Input signal to synchronize
    clk,        -- Clock
    Reset       -- Reset
)  
RETURNS
(  
    q           --: output;  -- Synchronized out
);

