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

-- DATE "07/05/2019 22:46:58"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	arbiter4 IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	t : IN std_logic;
	r : IN std_logic_vector(3 DOWNTO 0);
	g_out : OUT std_logic_vector(3 DOWNTO 0)
	);
END arbiter4;

-- Design Ports Information
-- g_out[0]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_out[1]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_out[2]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_out[3]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[0]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[1]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[2]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[3]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF arbiter4 IS
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_t : std_logic;
SIGNAL ww_r : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_g_out : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \g_out[0]~output_o\ : std_logic;
SIGNAL \g_out[1]~output_o\ : std_logic;
SIGNAL \g_out[2]~output_o\ : std_logic;
SIGNAL \g_out[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \r[0]~input_o\ : std_logic;
SIGNAL \r[3]~input_o\ : std_logic;
SIGNAL \Selector5~2_combout\ : std_logic;
SIGNAL \t~input_o\ : std_logic;
SIGNAL \state_reg.grant0~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \state_reg.grant0~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \state_reg.waitr3~q\ : std_logic;
SIGNAL \r[2]~input_o\ : std_logic;
SIGNAL \r[1]~input_o\ : std_logic;
SIGNAL \Selector7~2_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \state_reg.waitr2~q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \Selector5~3_combout\ : std_logic;
SIGNAL \state_reg.grant2~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \state_reg.waitr1~q\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \Selector6~2_combout\ : std_logic;
SIGNAL \state_reg.grant1~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \state_reg.waitr0~q\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \Selector7~3_combout\ : std_logic;
SIGNAL \g_out[0]~reg0_q\ : std_logic;
SIGNAL \g_out[1]~reg0_q\ : std_logic;
SIGNAL \g_out[2]~reg0_q\ : std_logic;
SIGNAL \state_reg.grant3~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \Selector4~2_combout\ : std_logic;
SIGNAL \g_out[3]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_t <= t;
ww_r <= r;
g_out <= ww_g_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;

-- Location: LCCOMB_X1_Y34_N12
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\state_reg.grant3~q\ & ((\t~input_o\) # (!\r[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t~input_o\,
	datac => \state_reg.grant3~q\,
	datad => \r[3]~input_o\,
	combout => \Selector1~0_combout\);

-- Location: IOOBUF_X0_Y32_N23
\g_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g_out[0]~reg0_q\,
	devoe => ww_devoe,
	o => \g_out[0]~output_o\);

-- Location: IOOBUF_X0_Y33_N16
\g_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g_out[1]~reg0_q\,
	devoe => ww_devoe,
	o => \g_out[1]~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\g_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g_out[2]~reg0_q\,
	devoe => ww_devoe,
	o => \g_out[2]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\g_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g_out[3]~reg0_q\,
	devoe => ww_devoe,
	o => \g_out[3]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y34_N1
\r[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r(0),
	o => \r[0]~input_o\);

-- Location: IOIBUF_X0_Y35_N1
\r[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r(3),
	o => \r[3]~input_o\);

-- Location: LCCOMB_X1_Y34_N24
\Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~2_combout\ = (!\r[0]~input_o\ & !\r[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r[0]~input_o\,
	datad => \r[3]~input_o\,
	combout => \Selector5~2_combout\);

-- Location: IOIBUF_X0_Y34_N22
\t~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_t,
	o => \t~input_o\);

-- Location: LCCOMB_X2_Y34_N6
\state_reg.grant0~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_reg.grant0~feeder_combout\ = \Selector7~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector7~3_combout\,
	combout => \state_reg.grant0~feeder_combout\);

-- Location: IOIBUF_X0_Y36_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G4
\reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X2_Y34_N7
\state_reg.grant0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state_reg.grant0~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_reg.grant0~q\);

-- Location: LCCOMB_X1_Y34_N16
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\state_reg.grant0~q\ & ((\t~input_o\) # (!\r[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r[0]~input_o\,
	datab => \t~input_o\,
	datad => \state_reg.grant0~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X1_Y34_N4
\Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (!\Selector0~0_combout\ & (((\state_reg.waitr3~q\) # (!\Selector5~2_combout\)) # (!\Selector7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~2_combout\,
	datab => \Selector5~2_combout\,
	datac => \state_reg.waitr3~q\,
	datad => \Selector0~0_combout\,
	combout => \Selector0~1_combout\);

-- Location: FF_X1_Y34_N5
\state_reg.waitr3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector0~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_reg.waitr3~q\);

-- Location: IOIBUF_X0_Y33_N22
\r[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r(2),
	o => \r[2]~input_o\);

-- Location: IOIBUF_X0_Y34_N8
\r[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r(1),
	o => \r[1]~input_o\);

-- Location: LCCOMB_X1_Y34_N26
\Selector7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~2_combout\ = (!\r[2]~input_o\ & !\r[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r[2]~input_o\,
	datad => \r[1]~input_o\,
	combout => \Selector7~2_combout\);

-- Location: LCCOMB_X1_Y34_N10
\Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\Selector1~0_combout\) # ((\Selector7~2_combout\ & (\state_reg.waitr2~q\ & \Selector5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datab => \Selector7~2_combout\,
	datac => \state_reg.waitr2~q\,
	datad => \Selector5~2_combout\,
	combout => \Selector1~1_combout\);

-- Location: FF_X1_Y34_N11
\state_reg.waitr2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector1~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_reg.waitr2~q\);

-- Location: LCCOMB_X1_Y34_N6
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (!\state_reg.waitr2~q\ & ((\r[3]~input_o\) # (\state_reg.waitr3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r[3]~input_o\,
	datab => \state_reg.waitr3~q\,
	datad => \state_reg.waitr2~q\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X1_Y34_N20
\Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = ((!\t~input_o\ & \state_reg.grant2~q\)) # (!\Selector5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t~input_o\,
	datac => \state_reg.grant2~q\,
	datad => \Selector5~0_combout\,
	combout => \Selector5~1_combout\);

-- Location: LCCOMB_X1_Y34_N22
\Selector5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~3_combout\ = (\r[2]~input_o\ & ((\Selector5~1_combout\) # ((\Selector5~2_combout\ & !\Selector7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r[2]~input_o\,
	datab => \Selector5~2_combout\,
	datac => \Selector7~0_combout\,
	datad => \Selector5~1_combout\,
	combout => \Selector5~3_combout\);

-- Location: FF_X1_Y34_N27
\state_reg.grant2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Selector5~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_reg.grant2~q\);

-- Location: LCCOMB_X1_Y34_N14
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\state_reg.grant2~q\ & ((\t~input_o\) # (!\r[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r[2]~input_o\,
	datac => \state_reg.grant2~q\,
	datad => \t~input_o\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X2_Y34_N24
\Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\Selector2~0_combout\) # ((\Selector7~2_combout\ & (\Selector5~2_combout\ & \state_reg.waitr1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~2_combout\,
	datab => \Selector5~2_combout\,
	datac => \state_reg.waitr1~q\,
	datad => \Selector2~0_combout\,
	combout => \Selector2~1_combout\);

-- Location: FF_X2_Y34_N25
\state_reg.waitr1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector2~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_reg.waitr1~q\);

-- Location: LCCOMB_X1_Y34_N18
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\r[3]~input_o\) # ((\state_reg.waitr3~q\ & ((\r[0]~input_o\) # (!\state_reg.waitr0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r[0]~input_o\,
	datab => \r[3]~input_o\,
	datac => \state_reg.waitr3~q\,
	datad => \state_reg.waitr0~q\,
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X1_Y34_N0
\Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = (!\state_reg.waitr1~q\ & ((\r[2]~input_o\) # ((!\state_reg.waitr2~q\ & \Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_reg.waitr2~q\,
	datab => \state_reg.waitr1~q\,
	datac => \r[2]~input_o\,
	datad => \Selector6~0_combout\,
	combout => \Selector6~1_combout\);

-- Location: LCCOMB_X1_Y34_N30
\Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~2_combout\ = (\r[1]~input_o\ & (((!\t~input_o\ & \state_reg.grant1~q\)) # (!\Selector6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t~input_o\,
	datab => \r[1]~input_o\,
	datac => \state_reg.grant1~q\,
	datad => \Selector6~1_combout\,
	combout => \Selector6~2_combout\);

-- Location: FF_X1_Y34_N25
\state_reg.grant1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Selector6~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_reg.grant1~q\);

-- Location: LCCOMB_X2_Y34_N12
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\state_reg.grant1~q\ & ((\t~input_o\) # (!\r[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r[1]~input_o\,
	datac => \state_reg.grant1~q\,
	datad => \t~input_o\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X2_Y34_N22
\Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\Selector3~0_combout\) # ((\Selector7~2_combout\ & (\Selector5~2_combout\ & \state_reg.waitr0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~2_combout\,
	datab => \Selector5~2_combout\,
	datac => \state_reg.waitr0~q\,
	datad => \Selector3~0_combout\,
	combout => \Selector3~1_combout\);

-- Location: FF_X2_Y34_N23
\state_reg.waitr0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector3~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_reg.waitr0~q\);

-- Location: LCCOMB_X2_Y34_N8
\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (!\state_reg.waitr0~q\ & ((\r[1]~input_o\) # (!\state_reg.waitr1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r[1]~input_o\,
	datac => \state_reg.waitr0~q\,
	datad => \state_reg.waitr1~q\,
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X2_Y34_N18
\Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = ((!\t~input_o\ & \state_reg.grant0~q\)) # (!\Selector7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t~input_o\,
	datac => \Selector7~0_combout\,
	datad => \state_reg.grant0~q\,
	combout => \Selector7~1_combout\);

-- Location: LCCOMB_X2_Y34_N20
\Selector7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~3_combout\ = (\r[0]~input_o\ & ((\Selector7~1_combout\) # ((\Selector7~2_combout\ & !\Selector5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~2_combout\,
	datab => \r[0]~input_o\,
	datac => \Selector5~0_combout\,
	datad => \Selector7~1_combout\,
	combout => \Selector7~3_combout\);

-- Location: FF_X2_Y34_N21
\g_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector7~3_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g_out[0]~reg0_q\);

-- Location: FF_X1_Y34_N17
\g_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Selector6~2_combout\,
	sload => VCC,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g_out[1]~reg0_q\);

-- Location: FF_X1_Y34_N7
\g_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Selector5~3_combout\,
	sload => VCC,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g_out[2]~reg0_q\);

-- Location: FF_X1_Y34_N13
\state_reg.grant3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Selector4~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_reg.grant3~q\);

-- Location: LCCOMB_X1_Y34_N2
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\r[1]~input_o\) # ((!\state_reg.waitr1~q\ & ((\r[2]~input_o\) # (!\state_reg.waitr2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_reg.waitr2~q\,
	datab => \r[1]~input_o\,
	datac => \r[2]~input_o\,
	datad => \state_reg.waitr1~q\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X1_Y34_N28
\Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (\state_reg.waitr3~q\ & ((\r[0]~input_o\) # ((!\state_reg.waitr0~q\ & \Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r[0]~input_o\,
	datab => \state_reg.waitr0~q\,
	datac => \state_reg.waitr3~q\,
	datad => \Selector4~0_combout\,
	combout => \Selector4~1_combout\);

-- Location: LCCOMB_X1_Y34_N8
\Selector4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~2_combout\ = (\r[3]~input_o\ & (((!\t~input_o\ & \state_reg.grant3~q\)) # (!\Selector4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t~input_o\,
	datab => \r[3]~input_o\,
	datac => \state_reg.grant3~q\,
	datad => \Selector4~1_combout\,
	combout => \Selector4~2_combout\);

-- Location: FF_X1_Y34_N9
\g_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector4~2_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g_out[3]~reg0_q\);

ww_g_out(0) <= \g_out[0]~output_o\;

ww_g_out(1) <= \g_out[1]~output_o\;

ww_g_out(2) <= \g_out[2]~output_o\;

ww_g_out(3) <= \g_out[3]~output_o\;
END structure;


