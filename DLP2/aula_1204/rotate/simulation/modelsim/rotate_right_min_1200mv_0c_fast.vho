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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "04/12/2019 12:07:57"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	rotate_right IS
    PORT (
	a : IN std_logic_vector(7 DOWNTO 0);
	amt : IN std_logic_vector(2 DOWNTO 0);
	y : OUT std_logic_vector(7 DOWNTO 0)
	);
END rotate_right;

-- Design Ports Information
-- y[0]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[4]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[5]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[6]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[7]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- amt[1]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_AE2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- amt[0]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- amt[2]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF rotate_right IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_amt : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(7 DOWNTO 0);
SIGNAL \y[0]~output_o\ : std_logic;
SIGNAL \y[1]~output_o\ : std_logic;
SIGNAL \y[2]~output_o\ : std_logic;
SIGNAL \y[3]~output_o\ : std_logic;
SIGNAL \y[4]~output_o\ : std_logic;
SIGNAL \y[5]~output_o\ : std_logic;
SIGNAL \y[6]~output_o\ : std_logic;
SIGNAL \y[7]~output_o\ : std_logic;
SIGNAL \amt[0]~input_o\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \le1_out[5]~0_combout\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \le1_out[4]~1_combout\ : std_logic;
SIGNAL \le1_out[4]~2_combout\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \amt[1]~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \le1_out[1]~3_combout\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \le1_out[7]~4_combout\ : std_logic;
SIGNAL \le1_out[0]~5_combout\ : std_logic;
SIGNAL \amt[2]~input_o\ : std_logic;
SIGNAL \le2_out~0_combout\ : std_logic;
SIGNAL \le1_out[5]~6_combout\ : std_logic;
SIGNAL \le1_out[5]~7_combout\ : std_logic;
SIGNAL \le1_out[2]~8_combout\ : std_logic;
SIGNAL \le1_out[1]~9_combout\ : std_logic;
SIGNAL \le2_out~1_combout\ : std_logic;
SIGNAL \le1_out[3]~12_combout\ : std_logic;
SIGNAL \le1_out[2]~13_combout\ : std_logic;
SIGNAL \le1_out[6]~11_combout\ : std_logic;
SIGNAL \le2_out~2_combout\ : std_logic;
SIGNAL \le1_out[7]~10_combout\ : std_logic;
SIGNAL \le1_out[7]~14_combout\ : std_logic;
SIGNAL \le1_out[3]~15_combout\ : std_logic;
SIGNAL \le2_out~3_combout\ : std_logic;
SIGNAL \le2_out~4_combout\ : std_logic;
SIGNAL \le2_out~5_combout\ : std_logic;
SIGNAL \le2_out~6_combout\ : std_logic;
SIGNAL \le2_out~7_combout\ : std_logic;

BEGIN

ww_a <= a;
ww_amt <= amt;
y <= ww_y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y12_N23
\y[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le2_out~0_combout\,
	devoe => ww_devoe,
	o => \y[0]~output_o\);

-- Location: IOOBUF_X0_Y9_N16
\y[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le2_out~1_combout\,
	devoe => ww_devoe,
	o => \y[1]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\y[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le2_out~2_combout\,
	devoe => ww_devoe,
	o => \y[2]~output_o\);

-- Location: IOOBUF_X0_Y11_N16
\y[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le2_out~3_combout\,
	devoe => ww_devoe,
	o => \y[3]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\y[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le2_out~4_combout\,
	devoe => ww_devoe,
	o => \y[4]~output_o\);

-- Location: IOOBUF_X0_Y11_N23
\y[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le2_out~5_combout\,
	devoe => ww_devoe,
	o => \y[5]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\y[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le2_out~6_combout\,
	devoe => ww_devoe,
	o => \y[6]~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\y[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le2_out~7_combout\,
	devoe => ww_devoe,
	o => \y[7]~output_o\);

-- Location: IOIBUF_X0_Y10_N15
\amt[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_amt(0),
	o => \amt[0]~input_o\);

-- Location: IOIBUF_X0_Y15_N22
\a[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: IOIBUF_X0_Y16_N22
\a[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

-- Location: LCCOMB_X1_Y12_N8
\le1_out[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[5]~0_combout\ = (\amt[1]~input_o\ & ((\a[7]~input_o\))) # (!\amt[1]~input_o\ & (\a[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \a[5]~input_o\,
	datad => \a[7]~input_o\,
	combout => \le1_out[5]~0_combout\);

-- Location: IOIBUF_X0_Y16_N15
\a[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: IOIBUF_X0_Y17_N15
\a[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

-- Location: LCCOMB_X1_Y12_N6
\le1_out[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[4]~1_combout\ = (\amt[1]~input_o\ & ((\a[6]~input_o\))) # (!\amt[1]~input_o\ & (\a[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \a[4]~input_o\,
	datad => \a[6]~input_o\,
	combout => \le1_out[4]~1_combout\);

-- Location: LCCOMB_X1_Y12_N24
\le1_out[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[4]~2_combout\ = (\amt[0]~input_o\ & (\le1_out[5]~0_combout\)) # (!\amt[0]~input_o\ & ((\le1_out[4]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[0]~input_o\,
	datac => \le1_out[5]~0_combout\,
	datad => \le1_out[4]~1_combout\,
	combout => \le1_out[4]~2_combout\);

-- Location: IOIBUF_X0_Y14_N1
\a[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: IOIBUF_X0_Y14_N8
\amt[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_amt(1),
	o => \amt[1]~input_o\);

-- Location: IOIBUF_X0_Y13_N8
\a[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: LCCOMB_X1_Y12_N22
\le1_out[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[1]~3_combout\ = (\amt[1]~input_o\ & (\a[3]~input_o\)) # (!\amt[1]~input_o\ & ((\a[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[3]~input_o\,
	datac => \amt[1]~input_o\,
	datad => \a[1]~input_o\,
	combout => \le1_out[1]~3_combout\);

-- Location: IOIBUF_X0_Y13_N1
\a[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: IOIBUF_X0_Y15_N15
\a[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: LCCOMB_X1_Y12_N20
\le1_out[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[7]~4_combout\ = (\amt[1]~input_o\ & ((\a[2]~input_o\))) # (!\amt[1]~input_o\ & (\a[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \a[0]~input_o\,
	datad => \a[2]~input_o\,
	combout => \le1_out[7]~4_combout\);

-- Location: LCCOMB_X1_Y12_N30
\le1_out[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[0]~5_combout\ = (\amt[0]~input_o\ & (\le1_out[1]~3_combout\)) # (!\amt[0]~input_o\ & ((\le1_out[7]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[0]~input_o\,
	datac => \le1_out[1]~3_combout\,
	datad => \le1_out[7]~4_combout\,
	combout => \le1_out[0]~5_combout\);

-- Location: IOIBUF_X0_Y10_N22
\amt[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_amt(2),
	o => \amt[2]~input_o\);

-- Location: LCCOMB_X1_Y12_N16
\le2_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \le2_out~0_combout\ = (\amt[2]~input_o\ & (\le1_out[4]~2_combout\)) # (!\amt[2]~input_o\ & ((\le1_out[0]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le1_out[4]~2_combout\,
	datac => \le1_out[0]~5_combout\,
	datad => \amt[2]~input_o\,
	combout => \le2_out~0_combout\);

-- Location: LCCOMB_X1_Y14_N20
\le1_out[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[5]~6_combout\ = (\amt[1]~input_o\ & (\a[0]~input_o\)) # (!\amt[1]~input_o\ & ((\a[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \a[0]~input_o\,
	datad => \a[6]~input_o\,
	combout => \le1_out[5]~6_combout\);

-- Location: LCCOMB_X1_Y12_N26
\le1_out[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[5]~7_combout\ = (\amt[0]~input_o\ & ((\le1_out[5]~6_combout\))) # (!\amt[0]~input_o\ & (\le1_out[5]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \le1_out[5]~0_combout\,
	datac => \amt[0]~input_o\,
	datad => \le1_out[5]~6_combout\,
	combout => \le1_out[5]~7_combout\);

-- Location: LCCOMB_X1_Y14_N26
\le1_out[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[2]~8_combout\ = (\amt[1]~input_o\ & ((\a[4]~input_o\))) # (!\amt[1]~input_o\ & (\a[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[2]~input_o\,
	datac => \amt[1]~input_o\,
	datad => \a[4]~input_o\,
	combout => \le1_out[2]~8_combout\);

-- Location: LCCOMB_X1_Y12_N0
\le1_out[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[1]~9_combout\ = (\amt[0]~input_o\ & ((\le1_out[2]~8_combout\))) # (!\amt[0]~input_o\ & (\le1_out[1]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le1_out[1]~3_combout\,
	datac => \amt[0]~input_o\,
	datad => \le1_out[2]~8_combout\,
	combout => \le1_out[1]~9_combout\);

-- Location: LCCOMB_X1_Y12_N18
\le2_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \le2_out~1_combout\ = (\amt[2]~input_o\ & (\le1_out[5]~7_combout\)) # (!\amt[2]~input_o\ & ((\le1_out[1]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datac => \le1_out[5]~7_combout\,
	datad => \le1_out[1]~9_combout\,
	combout => \le2_out~1_combout\);

-- Location: LCCOMB_X1_Y14_N16
\le1_out[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[3]~12_combout\ = (\amt[1]~input_o\ & ((\a[5]~input_o\))) # (!\amt[1]~input_o\ & (\a[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \a[3]~input_o\,
	datad => \a[5]~input_o\,
	combout => \le1_out[3]~12_combout\);

-- Location: LCCOMB_X1_Y14_N22
\le1_out[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[2]~13_combout\ = (\amt[0]~input_o\ & ((\le1_out[3]~12_combout\))) # (!\amt[0]~input_o\ & (\le1_out[2]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datac => \le1_out[2]~8_combout\,
	datad => \le1_out[3]~12_combout\,
	combout => \le1_out[2]~13_combout\);

-- Location: LCCOMB_X1_Y14_N2
\le1_out[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[6]~11_combout\ = (\amt[0]~input_o\ & (\le1_out[7]~10_combout\)) # (!\amt[0]~input_o\ & ((\le1_out[5]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le1_out[7]~10_combout\,
	datac => \amt[0]~input_o\,
	datad => \le1_out[5]~6_combout\,
	combout => \le1_out[6]~11_combout\);

-- Location: LCCOMB_X1_Y14_N0
\le2_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \le2_out~2_combout\ = (\amt[2]~input_o\ & ((\le1_out[6]~11_combout\))) # (!\amt[2]~input_o\ & (\le1_out[2]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datac => \le1_out[2]~13_combout\,
	datad => \le1_out[6]~11_combout\,
	combout => \le2_out~2_combout\);

-- Location: LCCOMB_X1_Y14_N12
\le1_out[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[7]~10_combout\ = (\amt[1]~input_o\ & (\a[1]~input_o\)) # (!\amt[1]~input_o\ & ((\a[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datac => \amt[1]~input_o\,
	datad => \a[7]~input_o\,
	combout => \le1_out[7]~10_combout\);

-- Location: LCCOMB_X1_Y12_N4
\le1_out[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[7]~14_combout\ = (\amt[0]~input_o\ & (\le1_out[7]~4_combout\)) # (!\amt[0]~input_o\ & ((\le1_out[7]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \le1_out[7]~4_combout\,
	datac => \amt[0]~input_o\,
	datad => \le1_out[7]~10_combout\,
	combout => \le1_out[7]~14_combout\);

-- Location: LCCOMB_X1_Y12_N2
\le1_out[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[3]~15_combout\ = (\amt[0]~input_o\ & (\le1_out[4]~1_combout\)) # (!\amt[0]~input_o\ & ((\le1_out[3]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le1_out[4]~1_combout\,
	datab => \amt[0]~input_o\,
	datad => \le1_out[3]~12_combout\,
	combout => \le1_out[3]~15_combout\);

-- Location: LCCOMB_X1_Y12_N12
\le2_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \le2_out~3_combout\ = (\amt[2]~input_o\ & (\le1_out[7]~14_combout\)) # (!\amt[2]~input_o\ & ((\le1_out[3]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datac => \le1_out[7]~14_combout\,
	datad => \le1_out[3]~15_combout\,
	combout => \le2_out~3_combout\);

-- Location: LCCOMB_X1_Y12_N14
\le2_out~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \le2_out~4_combout\ = (\amt[2]~input_o\ & (\le1_out[0]~5_combout\)) # (!\amt[2]~input_o\ & ((\le1_out[4]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datac => \le1_out[0]~5_combout\,
	datad => \le1_out[4]~2_combout\,
	combout => \le2_out~4_combout\);

-- Location: LCCOMB_X1_Y12_N28
\le2_out~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \le2_out~5_combout\ = (\amt[2]~input_o\ & ((\le1_out[1]~9_combout\))) # (!\amt[2]~input_o\ & (\le1_out[5]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datac => \le1_out[5]~7_combout\,
	datad => \le1_out[1]~9_combout\,
	combout => \le2_out~5_combout\);

-- Location: LCCOMB_X1_Y14_N10
\le2_out~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \le2_out~6_combout\ = (\amt[2]~input_o\ & (\le1_out[2]~13_combout\)) # (!\amt[2]~input_o\ & ((\le1_out[6]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datac => \le1_out[2]~13_combout\,
	datad => \le1_out[6]~11_combout\,
	combout => \le2_out~6_combout\);

-- Location: LCCOMB_X1_Y12_N10
\le2_out~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \le2_out~7_combout\ = (\amt[2]~input_o\ & ((\le1_out[3]~15_combout\))) # (!\amt[2]~input_o\ & (\le1_out[7]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datac => \le1_out[7]~14_combout\,
	datad => \le1_out[3]~15_combout\,
	combout => \le2_out~7_combout\);

ww_y(0) <= \y[0]~output_o\;

ww_y(1) <= \y[1]~output_o\;

ww_y(2) <= \y[2]~output_o\;

ww_y(3) <= \y[3]~output_o\;

ww_y(4) <= \y[4]~output_o\;

ww_y(5) <= \y[5]~output_o\;

ww_y(6) <= \y[6]~output_o\;

ww_y(7) <= \y[7]~output_o\;
END structure;


