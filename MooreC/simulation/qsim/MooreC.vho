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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.1 Build 646 04/11/2019 SJ Lite Edition"

-- DATE "10/12/2022 16:43:48"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	mooreC IS
    PORT (
	clk : IN std_logic;
	Q0 : BUFFER std_logic;
	Q1 : BUFFER std_logic;
	Q2 : BUFFER std_logic
	);
END mooreC;

-- Design Ports Information
-- Q0	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q1	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q2	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mooreC IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_Q0 : std_logic;
SIGNAL ww_Q1 : std_logic;
SIGNAL ww_Q2 : std_logic;
SIGNAL \Q0~input_o\ : std_logic;
SIGNAL \Q1~input_o\ : std_logic;
SIGNAL \Q2~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \u2|Q~0_combout\ : std_logic;
SIGNAL \u2|Q~q\ : std_logic;
SIGNAL \u2|Q~DUPLICATE_q\ : std_logic;
SIGNAL \u1|D1~combout\ : std_logic;
SIGNAL \u3|Q~q\ : std_logic;
SIGNAL \u3|Q~DUPLICATE_q\ : std_logic;
SIGNAL \u1|D2~0_combout\ : std_logic;
SIGNAL \u4|Q~q\ : std_logic;
SIGNAL \u3|ALT_INV_Q~DUPLICATE_q\ : std_logic;
SIGNAL \u2|ALT_INV_Q~DUPLICATE_q\ : std_logic;
SIGNAL \u4|ALT_INV_Q~q\ : std_logic;
SIGNAL \u3|ALT_INV_Q~q\ : std_logic;
SIGNAL \u2|ALT_INV_Q~q\ : std_logic;

BEGIN

ww_clk <= clk;
Q0 <= ww_Q0;
Q1 <= ww_Q1;
Q2 <= ww_Q2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\u3|ALT_INV_Q~DUPLICATE_q\ <= NOT \u3|Q~DUPLICATE_q\;
\u2|ALT_INV_Q~DUPLICATE_q\ <= NOT \u2|Q~DUPLICATE_q\;
\u4|ALT_INV_Q~q\ <= NOT \u4|Q~q\;
\u3|ALT_INV_Q~q\ <= NOT \u3|Q~q\;
\u2|ALT_INV_Q~q\ <= NOT \u2|Q~q\;

-- Location: IOOBUF_X28_Y0_N19
\Q0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|Q~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_Q0);

-- Location: IOOBUF_X28_Y0_N53
\Q1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|Q~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_Q1);

-- Location: IOOBUF_X28_Y0_N2
\Q2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|Q~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_Q2);

-- Location: IOIBUF_X89_Y35_N61
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: MLABCELL_X28_Y1_N30
\u2|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Q~0_combout\ = ( !\u2|Q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \u2|ALT_INV_Q~q\,
	combout => \u2|Q~0_combout\);

-- Location: FF_X28_Y1_N32
\u2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u2|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|Q~q\);

-- Location: FF_X28_Y1_N31
\u2|Q~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u2|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|Q~DUPLICATE_q\);

-- Location: MLABCELL_X28_Y1_N42
\u1|D1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|D1~combout\ = ( !\u3|Q~q\ & ( \u2|Q~DUPLICATE_q\ ) ) # ( \u3|Q~q\ & ( !\u2|Q~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \u3|ALT_INV_Q~q\,
	dataf => \u2|ALT_INV_Q~DUPLICATE_q\,
	combout => \u1|D1~combout\);

-- Location: FF_X28_Y1_N44
\u3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u1|D1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|Q~q\);

-- Location: FF_X28_Y1_N43
\u3|Q~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u1|D1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|Q~DUPLICATE_q\);

-- Location: MLABCELL_X28_Y1_N51
\u1|D2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|D2~0_combout\ = ( \u4|Q~q\ & ( \u3|Q~DUPLICATE_q\ & ( !\u2|Q~q\ ) ) ) # ( !\u4|Q~q\ & ( \u3|Q~DUPLICATE_q\ & ( \u2|Q~q\ ) ) ) # ( \u4|Q~q\ & ( !\u3|Q~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2|ALT_INV_Q~q\,
	datae => \u4|ALT_INV_Q~q\,
	dataf => \u3|ALT_INV_Q~DUPLICATE_q\,
	combout => \u1|D2~0_combout\);

-- Location: FF_X28_Y1_N52
\u4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u1|D2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|Q~q\);

-- Location: IOIBUF_X28_Y0_N18
\Q0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Q0,
	o => \Q0~input_o\);

-- Location: IOIBUF_X28_Y0_N52
\Q1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Q1,
	o => \Q1~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\Q2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Q2,
	o => \Q2~input_o\);

-- Location: LABCELL_X50_Y18_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


