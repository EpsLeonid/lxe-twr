-- megafunction wizard: %ALTDDIO_IN%
-- GENERATION: STANDARD
-- VERSION: WM1.0
-- MODULE: altddio_in 

-- ============================================================
-- File Name: Rx_DDR_Buff.vhd
-- Megafunction Name(s):
-- 			altddio_in
--
-- Simulation Library Files(s):
-- 			altera_mf
-- ============================================================
-- ************************************************************
-- THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
--
-- 8.1 Build 163 10/28/2008 SJ Full Version
-- ************************************************************


--Copyright (C) 1991-2008 Altera Corporation
--Your use of Altera Corporation's design tools, logic functions 
--and other software and tools, and its AMPP partner logic 
--functions, and any output files from any of the foregoing 
--(including device programming or simulation files), and any 
--associated documentation or information are expressly subject 
--to the terms and conditions of the Altera Program License 
--Subscription Agreement, Altera MegaCore Function License 
--Agreement, or other applicable license agreement, including, 
--without limitation, that your use is for the sole purpose of 
--programming logic devices manufactured by Altera and sold by 
--Altera or its authorized distributors.  Please refer to the 
--applicable agreement for further details.


LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY altera_mf;
USE altera_mf.all;

ENTITY Rx_DDR_Buff IS
	PORT
	(
		aclr		: IN STD_LOGIC  := '0';
		datain		: IN STD_LOGIC_VECTOR (6 DOWNTO 0);
		inclock		: IN STD_LOGIC ;
		dataout_h		: OUT STD_LOGIC_VECTOR (6 DOWNTO 0);
		dataout_l		: OUT STD_LOGIC_VECTOR (6 DOWNTO 0)
	);
END Rx_DDR_Buff;


ARCHITECTURE SYN OF rx_ddr_buff IS

	SIGNAL sub_wire0	: STD_LOGIC_VECTOR (6 DOWNTO 0);
	SIGNAL sub_wire1	: STD_LOGIC_VECTOR (6 DOWNTO 0);



	COMPONENT altddio_in
	GENERIC (
		intended_device_family		: STRING;
		invert_input_clocks		: STRING;
		lpm_type		: STRING;
		width		: NATURAL
	);
	PORT (
			datain	: IN STD_LOGIC_VECTOR (6 DOWNTO 0);
			inclock	: IN STD_LOGIC ;
			dataout_h	: OUT STD_LOGIC_VECTOR (6 DOWNTO 0);
			aclr	: IN STD_LOGIC ;
			dataout_l	: OUT STD_LOGIC_VECTOR (6 DOWNTO 0)
	);
	END COMPONENT;

BEGIN
	dataout_h    <= sub_wire0(6 DOWNTO 0);
	dataout_l    <= sub_wire1(6 DOWNTO 0);

	altddio_in_component : altddio_in
	GENERIC MAP (
		intended_device_family => "Cyclone",
		invert_input_clocks => "OFF",
		lpm_type => "altddio_in",
		width => 7
	)
	PORT MAP (
		datain => datain,
		inclock => inclock,
		aclr => aclr,
		dataout_h => sub_wire0,
		dataout_l => sub_wire1
	);



END SYN;

-- ============================================================
-- CNX file retrieval info
-- ============================================================
-- Retrieval info: PRIVATE: ARESET_MODE NUMERIC "0"
-- Retrieval info: PRIVATE: CLKEN NUMERIC "0"
-- Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone"
-- Retrieval info: PRIVATE: INVERT_INPUT_CLOCKS NUMERIC "0"
-- Retrieval info: PRIVATE: POWER_UP_HIGH NUMERIC "0"
-- Retrieval info: PRIVATE: SRESET_MODE NUMERIC "2"
-- Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
-- Retrieval info: PRIVATE: WIDTH NUMERIC "7"
-- Retrieval info: CONSTANT: INTENDED_DEVICE_FAMILY STRING "Cyclone"
-- Retrieval info: CONSTANT: INVERT_INPUT_CLOCKS STRING "OFF"
-- Retrieval info: CONSTANT: LPM_TYPE STRING "altddio_in"
-- Retrieval info: CONSTANT: WIDTH NUMERIC "7"
-- Retrieval info: USED_PORT: aclr 0 0 0 0 INPUT GND aclr
-- Retrieval info: USED_PORT: datain 0 0 7 0 INPUT NODEFVAL datain[6..0]
-- Retrieval info: USED_PORT: dataout_h 0 0 7 0 OUTPUT NODEFVAL dataout_h[6..0]
-- Retrieval info: USED_PORT: dataout_l 0 0 7 0 OUTPUT NODEFVAL dataout_l[6..0]
-- Retrieval info: USED_PORT: inclock 0 0 0 0 INPUT_CLK_EXT NODEFVAL inclock
-- Retrieval info: CONNECT: @datain 0 0 7 0 datain 0 0 7 0
-- Retrieval info: CONNECT: dataout_h 0 0 7 0 @dataout_h 0 0 7 0
-- Retrieval info: CONNECT: dataout_l 0 0 7 0 @dataout_l 0 0 7 0
-- Retrieval info: CONNECT: @inclock 0 0 0 0 inclock 0 0 0 0
-- Retrieval info: CONNECT: @aclr 0 0 0 0 aclr 0 0 0 0
-- Retrieval info: LIBRARY: altera_mf altera_mf.altera_mf_components.all
-- Retrieval info: GEN_FILE: TYPE_NORMAL Rx_DDR_Buff.vhd TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL Rx_DDR_Buff.ppf TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL Rx_DDR_Buff.inc TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL Rx_DDR_Buff.cmp FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL Rx_DDR_Buff.bsf FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL Rx_DDR_Buff_inst.vhd FALSE
-- Retrieval info: LIB_FILE: altera_mf