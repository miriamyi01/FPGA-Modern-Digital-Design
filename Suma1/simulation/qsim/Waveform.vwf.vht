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
-- Generated on "09/04/2022 20:26:35"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          sum
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY sum_vhd_vec_tst IS
END sum_vhd_vec_tst;
ARCHITECTURE sum_arch OF sum_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL E : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL S : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT sum
	PORT (
	E : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	S : BUFFER STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : sum
	PORT MAP (
-- list connections between master ports and signals
	E => E,
	S => S
	);
-- E[2]
t_prcs_E_2: PROCESS
BEGIN
	E(2) <= '1';
WAIT;
END PROCESS t_prcs_E_2;
-- E[1]
t_prcs_E_1: PROCESS
BEGIN
	E(1) <= '1';
WAIT;
END PROCESS t_prcs_E_1;
-- E[0]
t_prcs_E_0: PROCESS
BEGIN
	E(0) <= '0';
WAIT;
END PROCESS t_prcs_E_0;
END sum_arch;
