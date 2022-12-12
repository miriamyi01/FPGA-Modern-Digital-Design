-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "04/15/2022 19:23:33"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          par
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY par_vhd_vec_tst IS
END par_vhd_vec_tst;
ARCHITECTURE par_arch OF par_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL E : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL S : STD_LOGIC;
COMPONENT par
	PORT (
	clk : IN STD_LOGIC;
	E : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	S : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : par
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	E => E,
	reset => reset,
	S => S
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 1000000 ps;
	clk <= '1';
	WAIT FOR 1000000 ps;
	IF (NOW >= 10000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- E
t_prcs_E: PROCESS
BEGIN
	E <= '0';
	WAIT FOR 1000000 ps;
	E <= '1';
	WAIT FOR 4000000 ps;
	E <= '0';
	WAIT FOR 1000000 ps;
	E <= '1';
	WAIT FOR 2000000 ps;
	E <= '0';
WAIT;
END PROCESS t_prcs_E;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END par_arch;
