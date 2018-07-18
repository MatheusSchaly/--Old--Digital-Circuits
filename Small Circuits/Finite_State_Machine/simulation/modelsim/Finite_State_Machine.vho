-- Copyright (C) 1991-2013 Altera Corporation
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

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "07/18/2018 15:06:16"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Finite_State_Machine IS
    PORT (
	Clock : IN std_logic;
	Reset : IN std_logic;
	Counter : OUT std_logic_vector(2 DOWNTO 0)
	);
END Finite_State_Machine;

-- Design Ports Information
-- Counter[0]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Counter[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Counter[2]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Finite_State_Machine IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_Counter : std_logic_vector(2 DOWNTO 0);
SIGNAL \Reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \Counter[0]~output_o\ : std_logic;
SIGNAL \Counter[1]~output_o\ : std_logic;
SIGNAL \Counter[2]~output_o\ : std_logic;
SIGNAL \CE.E2~feeder_combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \Reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \CE.E2~q\ : std_logic;
SIGNAL \CE.E3~feeder_combout\ : std_logic;
SIGNAL \CE.E3~q\ : std_logic;
SIGNAL \CE.E4~feeder_combout\ : std_logic;
SIGNAL \CE.E4~q\ : std_logic;
SIGNAL \CE.E0~0_combout\ : std_logic;
SIGNAL \CE.E0~q\ : std_logic;
SIGNAL \CE.E1~0_combout\ : std_logic;
SIGNAL \CE.E1~q\ : std_logic;
SIGNAL \Counter~4_combout\ : std_logic;
SIGNAL \Counter~5_combout\ : std_logic;
SIGNAL \Counter~6_combout\ : std_logic;
SIGNAL \ALT_INV_Reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_Counter~4_combout\ : std_logic;

BEGIN

ww_Clock <= Clock;
ww_Reset <= Reset;
Counter <= ww_Counter;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Reset~input_o\);

\Clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clock~input_o\);
\ALT_INV_Reset~inputclkctrl_outclk\ <= NOT \Reset~inputclkctrl_outclk\;
\ALT_INV_Counter~4_combout\ <= NOT \Counter~4_combout\;

-- Location: IOIBUF_X16_Y0_N15
\Clock~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

-- Location: CLKCTRL_G17
\Clock~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clock~inputclkctrl_outclk\);

-- Location: IOOBUF_X33_Y28_N9
\Counter[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Counter~4_combout\,
	devoe => ww_devoe,
	o => \Counter[0]~output_o\);

-- Location: IOOBUF_X31_Y31_N2
\Counter[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter~5_combout\,
	devoe => ww_devoe,
	o => \Counter[1]~output_o\);

-- Location: IOOBUF_X33_Y28_N2
\Counter[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter~6_combout\,
	devoe => ww_devoe,
	o => \Counter[2]~output_o\);

-- Location: LCCOMB_X32_Y28_N10
\CE.E2~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CE.E2~feeder_combout\ = \CE.E1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CE.E1~q\,
	combout => \CE.E2~feeder_combout\);

-- Location: IOIBUF_X16_Y0_N22
\Reset~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset,
	o => \Reset~input_o\);

-- Location: CLKCTRL_G19
\Reset~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Reset~inputclkctrl_outclk\);

-- Location: FF_X32_Y28_N11
\CE.E2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \CE.E2~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CE.E2~q\);

-- Location: LCCOMB_X32_Y28_N18
\CE.E3~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CE.E3~feeder_combout\ = \CE.E2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CE.E2~q\,
	combout => \CE.E3~feeder_combout\);

-- Location: FF_X32_Y28_N19
\CE.E3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \CE.E3~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CE.E3~q\);

-- Location: LCCOMB_X32_Y28_N2
\CE.E4~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CE.E4~feeder_combout\ = \CE.E3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CE.E3~q\,
	combout => \CE.E4~feeder_combout\);

-- Location: FF_X32_Y28_N3
\CE.E4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \CE.E4~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CE.E4~q\);

-- Location: LCCOMB_X32_Y28_N6
\CE.E0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CE.E0~0_combout\ = !\CE.E4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CE.E4~q\,
	combout => \CE.E0~0_combout\);

-- Location: FF_X32_Y28_N7
\CE.E0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \CE.E0~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CE.E0~q\);

-- Location: LCCOMB_X32_Y28_N0
\CE.E1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CE.E1~0_combout\ = !\CE.E0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CE.E0~q\,
	combout => \CE.E1~0_combout\);

-- Location: FF_X32_Y28_N1
\CE.E1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \CE.E1~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CE.E1~q\);

-- Location: LCCOMB_X32_Y28_N20
\Counter~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Counter~4_combout\ = (\CE.E1~q\) # (\CE.E3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CE.E1~q\,
	datad => \CE.E3~q\,
	combout => \Counter~4_combout\);

-- Location: LCCOMB_X32_Y28_N4
\Counter~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Counter~5_combout\ = (\CE.E1~q\) # (\CE.E2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CE.E1~q\,
	datad => \CE.E2~q\,
	combout => \Counter~5_combout\);

-- Location: LCCOMB_X32_Y28_N12
\Counter~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Counter~6_combout\ = (\CE.E3~q\) # (\CE.E4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CE.E3~q\,
	datad => \CE.E4~q\,
	combout => \Counter~6_combout\);

ww_Counter(0) <= \Counter[0]~output_o\;

ww_Counter(1) <= \Counter[1]~output_o\;

ww_Counter(2) <= \Counter[2]~output_o\;
END structure;


