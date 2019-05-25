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

-- DATE "04/27/2019 14:24:38"

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

ENTITY 	shift3mode IS
    PORT (
	a : IN std_logic_vector(7 DOWNTO 0);
	lar : IN std_logic_vector(1 DOWNTO 0);
	amt : IN std_logic_vector(2 DOWNTO 0);
	y : OUT std_logic_vector(7 DOWNTO 0)
	);
END shift3mode;

-- Design Ports Information
-- y[0]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[4]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[5]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[6]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[7]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- amt[0]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- amt[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- amt[2]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lar[0]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lar[1]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF shift3mode IS
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
SIGNAL ww_lar : std_logic_vector(1 DOWNTO 0);
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
SIGNAL \amt[1]~input_o\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \le1_out[4]~0_combout\ : std_logic;
SIGNAL \le1_out[4]~2_combout\ : std_logic;
SIGNAL \amt[2]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \le1_out[0]~4_combout\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \le1_out[0]~3_combout\ : std_logic;
SIGNAL \le2_out~0_combout\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \le1_out[2]~5_combout\ : std_logic;
SIGNAL \le1_out[1]~6_combout\ : std_logic;
SIGNAL \le2_out~1_combout\ : std_logic;
SIGNAL \lar[0]~input_o\ : std_logic;
SIGNAL \lar[1]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \le1_out[5]~7_combout\ : std_logic;
SIGNAL \le1_out[5]~8_combout\ : std_logic;
SIGNAL \le2_out~2_combout\ : std_logic;
SIGNAL \le2_out~3_combout\ : std_logic;
SIGNAL \le1_out[6]~10_combout\ : std_logic;
SIGNAL \le1_out[6]~11_combout\ : std_logic;
SIGNAL \le1_out[6]~12_combout\ : std_logic;
SIGNAL \le1_out[6]~14_combout\ : std_logic;
SIGNAL \le2_out~4_combout\ : std_logic;
SIGNAL \le1_out[3]~9_combout\ : std_logic;
SIGNAL \le2_out~5_combout\ : std_logic;
SIGNAL \le1_out[7]~15_combout\ : std_logic;
SIGNAL \le1_out[7]~16_combout\ : std_logic;
SIGNAL \le2_out~6_combout\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \le1_out[6]~13_combout\ : std_logic;
SIGNAL \le2_out~8_combout\ : std_logic;
SIGNAL \le2_out~9_combout\ : std_logic;
SIGNAL \le2_out~10_combout\ : std_logic;
SIGNAL \le2_out~11_combout\ : std_logic;
SIGNAL \le2_out~7_combout\ : std_logic;
SIGNAL \le2_out~12_combout\ : std_logic;
SIGNAL \le2_out~13_combout\ : std_logic;
SIGNAL \le1_out[4]~1_combout\ : std_logic;
SIGNAL \le2_out~14_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \le2_out~15_combout\ : std_logic;

BEGIN

ww_a <= a;
ww_lar <= lar;
ww_amt <= amt;
y <= ww_y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y63_N23
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

-- Location: IOOBUF_X0_Y57_N23
\y[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le2_out~2_combout\,
	devoe => ww_devoe,
	o => \y[1]~output_o\);

-- Location: IOOBUF_X0_Y57_N16
\y[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le2_out~4_combout\,
	devoe => ww_devoe,
	o => \y[2]~output_o\);

-- Location: IOOBUF_X0_Y52_N16
\y[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le2_out~6_combout\,
	devoe => ww_devoe,
	o => \y[3]~output_o\);

-- Location: IOOBUF_X0_Y54_N9
\y[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le2_out~9_combout\,
	devoe => ww_devoe,
	o => \y[4]~output_o\);

-- Location: IOOBUF_X0_Y53_N2
\y[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le2_out~11_combout\,
	devoe => ww_devoe,
	o => \y[5]~output_o\);

-- Location: IOOBUF_X0_Y50_N23
\y[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le2_out~13_combout\,
	devoe => ww_devoe,
	o => \y[6]~output_o\);

-- Location: IOOBUF_X0_Y55_N23
\y[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le2_out~15_combout\,
	devoe => ww_devoe,
	o => \y[7]~output_o\);

-- Location: IOIBUF_X0_Y55_N8
\amt[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_amt(0),
	o => \amt[0]~input_o\);

-- Location: IOIBUF_X0_Y59_N22
\amt[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_amt(1),
	o => \amt[1]~input_o\);

-- Location: IOIBUF_X0_Y60_N15
\a[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: LCCOMB_X1_Y58_N8
\le1_out[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[4]~0_combout\ = (\amt[0]~input_o\ & ((\amt[1]~input_o\ & (\a[7]~input_o\)) # (!\amt[1]~input_o\ & ((\a[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[7]~input_o\,
	datab => \amt[0]~input_o\,
	datac => \amt[1]~input_o\,
	datad => \a[5]~input_o\,
	combout => \le1_out[4]~0_combout\);

-- Location: LCCOMB_X1_Y58_N4
\le1_out[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[4]~2_combout\ = (\le1_out[4]~0_combout\) # ((\le1_out[4]~1_combout\ & !\amt[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le1_out[4]~1_combout\,
	datab => \le1_out[4]~0_combout\,
	datac => \amt[0]~input_o\,
	combout => \le1_out[4]~2_combout\);

-- Location: IOIBUF_X0_Y53_N8
\amt[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_amt(2),
	o => \amt[2]~input_o\);

-- Location: IOIBUF_X0_Y62_N15
\a[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: IOIBUF_X0_Y65_N15
\a[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: LCCOMB_X1_Y58_N30
\le1_out[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[0]~4_combout\ = (!\amt[0]~input_o\ & ((\amt[1]~input_o\ & (\a[2]~input_o\)) # (!\amt[1]~input_o\ & ((\a[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datab => \a[2]~input_o\,
	datac => \amt[0]~input_o\,
	datad => \a[0]~input_o\,
	combout => \le1_out[0]~4_combout\);

-- Location: IOIBUF_X0_Y59_N15
\a[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: IOIBUF_X0_Y63_N15
\a[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: LCCOMB_X1_Y59_N16
\le1_out[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[0]~3_combout\ = (\amt[0]~input_o\ & ((\amt[1]~input_o\ & ((\a[3]~input_o\))) # (!\amt[1]~input_o\ & (\a[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \a[1]~input_o\,
	datac => \a[3]~input_o\,
	datad => \amt[1]~input_o\,
	combout => \le1_out[0]~3_combout\);

-- Location: LCCOMB_X1_Y57_N16
\le2_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \le2_out~0_combout\ = (\amt[2]~input_o\ & (\le1_out[4]~2_combout\)) # (!\amt[2]~input_o\ & (((\le1_out[0]~4_combout\) # (\le1_out[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le1_out[4]~2_combout\,
	datab => \amt[2]~input_o\,
	datac => \le1_out[0]~4_combout\,
	datad => \le1_out[0]~3_combout\,
	combout => \le2_out~0_combout\);

-- Location: IOIBUF_X0_Y62_N22
\a[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: LCCOMB_X1_Y58_N16
\le1_out[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[2]~5_combout\ = (\amt[1]~input_o\ & ((\a[4]~input_o\))) # (!\amt[1]~input_o\ & (\a[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[2]~input_o\,
	datac => \amt[1]~input_o\,
	datad => \a[4]~input_o\,
	combout => \le1_out[2]~5_combout\);

-- Location: LCCOMB_X1_Y59_N10
\le1_out[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[1]~6_combout\ = (\amt[1]~input_o\ & ((\a[3]~input_o\))) # (!\amt[1]~input_o\ & (\a[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datab => \a[1]~input_o\,
	datac => \a[3]~input_o\,
	combout => \le1_out[1]~6_combout\);

-- Location: LCCOMB_X1_Y57_N2
\le2_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \le2_out~1_combout\ = (!\amt[2]~input_o\ & ((\amt[0]~input_o\ & (\le1_out[2]~5_combout\)) # (!\amt[0]~input_o\ & ((\le1_out[1]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datab => \amt[0]~input_o\,
	datac => \le1_out[2]~5_combout\,
	datad => \le1_out[1]~6_combout\,
	combout => \le2_out~1_combout\);

-- Location: IOIBUF_X0_Y64_N1
\lar[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_lar(0),
	o => \lar[0]~input_o\);

-- Location: IOIBUF_X0_Y58_N15
\lar[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_lar(1),
	o => \lar[1]~input_o\);

-- Location: LCCOMB_X1_Y58_N10
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\a[7]~input_o\ & (((\lar[0]~input_o\ & !\lar[1]~input_o\)) # (!\amt[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[7]~input_o\,
	datab => \lar[0]~input_o\,
	datac => \amt[0]~input_o\,
	datad => \lar[1]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X1_Y58_N20
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Mux0~0_combout\) # ((\lar[1]~input_o\ & (\a[0]~input_o\ & \amt[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[1]~input_o\,
	datab => \a[0]~input_o\,
	datac => \amt[0]~input_o\,
	datad => \Mux0~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: IOIBUF_X0_Y61_N22
\a[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

-- Location: LCCOMB_X1_Y59_N12
\le1_out[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[5]~7_combout\ = (!\amt[1]~input_o\ & ((\amt[0]~input_o\ & ((\a[6]~input_o\))) # (!\amt[0]~input_o\ & (\a[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \a[5]~input_o\,
	datac => \a[6]~input_o\,
	datad => \amt[1]~input_o\,
	combout => \le1_out[5]~7_combout\);

-- Location: LCCOMB_X1_Y59_N14
\le1_out[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[5]~8_combout\ = (\le1_out[5]~7_combout\) # ((\amt[1]~input_o\ & \Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datab => \Mux0~1_combout\,
	datad => \le1_out[5]~7_combout\,
	combout => \le1_out[5]~8_combout\);

-- Location: LCCOMB_X1_Y57_N4
\le2_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \le2_out~2_combout\ = (\le2_out~1_combout\) # ((\amt[2]~input_o\ & \le1_out[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \le2_out~1_combout\,
	datac => \amt[2]~input_o\,
	datad => \le1_out[5]~8_combout\,
	combout => \le2_out~2_combout\);

-- Location: LCCOMB_X1_Y57_N22
\le2_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \le2_out~3_combout\ = (!\amt[2]~input_o\ & ((\amt[0]~input_o\ & (\le1_out[3]~9_combout\)) # (!\amt[0]~input_o\ & ((\le1_out[2]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le1_out[3]~9_combout\,
	datab => \amt[2]~input_o\,
	datac => \le1_out[2]~5_combout\,
	datad => \amt[0]~input_o\,
	combout => \le2_out~3_combout\);

-- Location: LCCOMB_X1_Y58_N6
\le1_out[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[6]~10_combout\ = (\lar[1]~input_o\ & \amt[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[1]~input_o\,
	datac => \amt[1]~input_o\,
	combout => \le1_out[6]~10_combout\);

-- Location: LCCOMB_X1_Y58_N0
\le1_out[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[6]~11_combout\ = (\le1_out[6]~10_combout\ & ((\amt[0]~input_o\ & (\a[1]~input_o\)) # (!\amt[0]~input_o\ & ((\a[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \a[0]~input_o\,
	datac => \amt[0]~input_o\,
	datad => \le1_out[6]~10_combout\,
	combout => \le1_out[6]~11_combout\);

-- Location: LCCOMB_X1_Y58_N2
\le1_out[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[6]~12_combout\ = (!\amt[1]~input_o\ & ((\amt[0]~input_o\ & (\a[7]~input_o\)) # (!\amt[0]~input_o\ & ((\a[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[7]~input_o\,
	datab => \amt[0]~input_o\,
	datac => \amt[1]~input_o\,
	datad => \a[6]~input_o\,
	combout => \le1_out[6]~12_combout\);

-- Location: LCCOMB_X1_Y58_N22
\le1_out[6]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[6]~14_combout\ = (\le1_out[6]~11_combout\) # ((\le1_out[6]~12_combout\) # ((\le1_out[6]~13_combout\ & \amt[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le1_out[6]~13_combout\,
	datab => \le1_out[6]~11_combout\,
	datac => \amt[1]~input_o\,
	datad => \le1_out[6]~12_combout\,
	combout => \le1_out[6]~14_combout\);

-- Location: LCCOMB_X1_Y57_N8
\le2_out~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \le2_out~4_combout\ = (\le2_out~3_combout\) # ((\amt[2]~input_o\ & \le1_out[6]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le2_out~3_combout\,
	datab => \amt[2]~input_o\,
	datad => \le1_out[6]~14_combout\,
	combout => \le2_out~4_combout\);

-- Location: LCCOMB_X1_Y59_N0
\le1_out[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[3]~9_combout\ = (\amt[1]~input_o\ & ((\a[5]~input_o\))) # (!\amt[1]~input_o\ & (\a[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datab => \a[3]~input_o\,
	datac => \a[5]~input_o\,
	combout => \le1_out[3]~9_combout\);

-- Location: LCCOMB_X1_Y57_N10
\le2_out~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \le2_out~5_combout\ = (!\amt[2]~input_o\ & ((\amt[0]~input_o\ & (\le1_out[4]~1_combout\)) # (!\amt[0]~input_o\ & ((\le1_out[3]~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le1_out[4]~1_combout\,
	datab => \amt[2]~input_o\,
	datac => \le1_out[3]~9_combout\,
	datad => \amt[0]~input_o\,
	combout => \le2_out~5_combout\);

-- Location: LCCOMB_X1_Y58_N24
\le1_out[7]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[7]~15_combout\ = (\le1_out[6]~10_combout\ & ((\amt[0]~input_o\ & ((\a[2]~input_o\))) # (!\amt[0]~input_o\ & (\a[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \a[2]~input_o\,
	datac => \amt[0]~input_o\,
	datad => \le1_out[6]~10_combout\,
	combout => \le1_out[7]~15_combout\);

-- Location: LCCOMB_X1_Y58_N12
\le1_out[7]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[7]~16_combout\ = (\le1_out[7]~15_combout\) # ((\Mux0~1_combout\ & ((\Mux0~2_combout\) # (!\amt[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~2_combout\,
	datab => \le1_out[7]~15_combout\,
	datac => \amt[1]~input_o\,
	datad => \Mux0~1_combout\,
	combout => \le1_out[7]~16_combout\);

-- Location: LCCOMB_X1_Y57_N20
\le2_out~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \le2_out~6_combout\ = (\le2_out~5_combout\) # ((\amt[2]~input_o\ & \le1_out[7]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le2_out~5_combout\,
	datac => \amt[2]~input_o\,
	datad => \le1_out[7]~16_combout\,
	combout => \le2_out~6_combout\);

-- Location: IOIBUF_X0_Y55_N15
\a[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

-- Location: LCCOMB_X1_Y58_N28
\le1_out[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[6]~13_combout\ = (!\lar[1]~input_o\ & (\a[7]~input_o\ & \lar[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[1]~input_o\,
	datac => \a[7]~input_o\,
	datad => \lar[0]~input_o\,
	combout => \le1_out[6]~13_combout\);

-- Location: LCCOMB_X1_Y57_N0
\le2_out~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \le2_out~8_combout\ = (\le2_out~7_combout\ & ((\le1_out[0]~4_combout\) # ((\amt[0]~input_o\ & \le1_out[1]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le2_out~7_combout\,
	datab => \amt[0]~input_o\,
	datac => \le1_out[0]~4_combout\,
	datad => \le1_out[1]~6_combout\,
	combout => \le2_out~8_combout\);

-- Location: LCCOMB_X1_Y57_N26
\le2_out~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \le2_out~9_combout\ = (\le2_out~8_combout\) # ((\amt[2]~input_o\ & ((\le1_out[6]~13_combout\))) # (!\amt[2]~input_o\ & (\le1_out[4]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le1_out[4]~2_combout\,
	datab => \amt[2]~input_o\,
	datac => \le1_out[6]~13_combout\,
	datad => \le2_out~8_combout\,
	combout => \le2_out~9_combout\);

-- Location: LCCOMB_X1_Y57_N12
\le2_out~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \le2_out~10_combout\ = (\lar[1]~input_o\ & ((\amt[0]~input_o\ & (\le1_out[2]~5_combout\)) # (!\amt[0]~input_o\ & ((\le1_out[1]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[1]~input_o\,
	datab => \amt[0]~input_o\,
	datac => \le1_out[2]~5_combout\,
	datad => \le1_out[1]~6_combout\,
	combout => \le2_out~10_combout\);

-- Location: LCCOMB_X1_Y57_N14
\le2_out~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \le2_out~11_combout\ = (\amt[2]~input_o\ & ((\le2_out~10_combout\) # ((\le1_out[6]~13_combout\)))) # (!\amt[2]~input_o\ & (((\le1_out[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le2_out~10_combout\,
	datab => \amt[2]~input_o\,
	datac => \le1_out[6]~13_combout\,
	datad => \le1_out[5]~8_combout\,
	combout => \le2_out~11_combout\);

-- Location: LCCOMB_X1_Y57_N30
\le2_out~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \le2_out~7_combout\ = (\lar[1]~input_o\ & \amt[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[1]~input_o\,
	datac => \amt[2]~input_o\,
	combout => \le2_out~7_combout\);

-- Location: LCCOMB_X1_Y57_N24
\le2_out~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \le2_out~12_combout\ = (\le2_out~7_combout\ & ((\amt[0]~input_o\ & (\le1_out[3]~9_combout\)) # (!\amt[0]~input_o\ & ((\le1_out[2]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le1_out[3]~9_combout\,
	datab => \amt[0]~input_o\,
	datac => \le1_out[2]~5_combout\,
	datad => \le2_out~7_combout\,
	combout => \le2_out~12_combout\);

-- Location: LCCOMB_X1_Y57_N18
\le2_out~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \le2_out~13_combout\ = (\le2_out~12_combout\) # ((\amt[2]~input_o\ & ((\le1_out[6]~13_combout\))) # (!\amt[2]~input_o\ & (\le1_out[6]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le1_out[6]~14_combout\,
	datab => \amt[2]~input_o\,
	datac => \le1_out[6]~13_combout\,
	datad => \le2_out~12_combout\,
	combout => \le2_out~13_combout\);

-- Location: LCCOMB_X1_Y58_N18
\le1_out[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[4]~1_combout\ = (\amt[1]~input_o\ & (\a[6]~input_o\)) # (!\amt[1]~input_o\ & ((\a[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[6]~input_o\,
	datac => \amt[1]~input_o\,
	datad => \a[4]~input_o\,
	combout => \le1_out[4]~1_combout\);

-- Location: LCCOMB_X1_Y57_N28
\le2_out~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \le2_out~14_combout\ = (\le2_out~7_combout\ & ((\amt[0]~input_o\ & ((\le1_out[4]~1_combout\))) # (!\amt[0]~input_o\ & (\le1_out[3]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le2_out~7_combout\,
	datab => \amt[0]~input_o\,
	datac => \le1_out[3]~9_combout\,
	datad => \le1_out[4]~1_combout\,
	combout => \le2_out~14_combout\);

-- Location: LCCOMB_X1_Y58_N26
\Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (!\lar[1]~input_o\ & \lar[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[1]~input_o\,
	datad => \lar[0]~input_o\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X1_Y57_N6
\le2_out~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \le2_out~15_combout\ = (\le2_out~14_combout\) # ((\le1_out[7]~16_combout\ & ((\Mux0~2_combout\) # (!\amt[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le2_out~14_combout\,
	datab => \le1_out[7]~16_combout\,
	datac => \amt[2]~input_o\,
	datad => \Mux0~2_combout\,
	combout => \le2_out~15_combout\);

ww_y(0) <= \y[0]~output_o\;

ww_y(1) <= \y[1]~output_o\;

ww_y(2) <= \y[2]~output_o\;

ww_y(3) <= \y[3]~output_o\;

ww_y(4) <= \y[4]~output_o\;

ww_y(5) <= \y[5]~output_o\;

ww_y(6) <= \y[6]~output_o\;

ww_y(7) <= \y[7]~output_o\;
END structure;


