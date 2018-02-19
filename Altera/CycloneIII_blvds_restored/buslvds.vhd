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

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 9.1 Build 350 03/24/2010 Service Pack 2 SJ Full Version"
-- CREATED		"Wed Dec 27 16:36:57 2017"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY buslvds IS 
	PORT
	(
		doutp :  IN  STD_LOGIC;
		oe :  IN  STD_LOGIC;
		p :  INOUT  STD_LOGIC;
		n :  INOUT  STD_LOGIC;
		din :  OUT  STD_LOGIC
	);
END buslvds;

ARCHITECTURE bdf_type OF buslvds IS 

COMPONENT pdo
	PORT(i : IN STD_LOGIC;
		 o : OUT STD_LOGIC;
		 obar : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT seio
	PORT(datain : IN STD_LOGIC_VECTOR(0 TO 0);
		 oe : IN STD_LOGIC_VECTOR(0 TO 0);
		 dataout : OUT STD_LOGIC_VECTOR(0 TO 0)
	);
END COMPONENT;

COMPONENT diffin
	PORT(datain : IN STD_LOGIC_VECTOR(0 TO 0);
		 datain_b : IN STD_LOGIC_VECTOR(0 TO 0);
		 dataout : OUT STD_LOGIC_VECTOR(0 TO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;


BEGIN 



SYNTHESIZED_WIRE_1 <= NOT(oe);



din <= SYNTHESIZED_WIRE_0 AND SYNTHESIZED_WIRE_1;


b2v_inst2 : pdo
PORT MAP(i => doutp,
		 o => SYNTHESIZED_WIRE_2,
		 obar => SYNTHESIZED_WIRE_3);


b2v_inst3 : seio
PORT MAP(datain(0) => SYNTHESIZED_WIRE_2,
		 oe(0) => oe,
		 dataout(0) => p);


b2v_inst4 : seio
PORT MAP(datain(0) => SYNTHESIZED_WIRE_3,
		 oe(0) => oe,
		 dataout(0) => n);


b2v_inst5 : diffin
PORT MAP(datain(0) => p,
		 datain_b(0) => n,
		 dataout(0) => SYNTHESIZED_WIRE_0);


END bdf_type;