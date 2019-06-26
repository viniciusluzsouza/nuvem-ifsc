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

-- DATE "06/17/2019 13:22:35"

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

ENTITY 	mem_ctrl_6 IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	mem : IN std_logic;
	rw : IN std_logic;
	burst : IN std_logic;
	oe : OUT std_logic;
	we : OUT std_logic;
	we_me : OUT std_logic
	);
END mem_ctrl_6;

-- Design Ports Information
-- oe	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- we	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- we_me	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- burst	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rw	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mem_ctrl_6 IS
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
SIGNAL ww_mem : std_logic;
SIGNAL ww_rw : std_logic;
SIGNAL ww_burst : std_logic;
SIGNAL ww_oe : std_logic;
SIGNAL ww_we : std_logic;
SIGNAL ww_we_me : std_logic;
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mem~input_o\ : std_logic;
SIGNAL \oe~output_o\ : std_logic;
SIGNAL \we~output_o\ : std_logic;
SIGNAL \we_me~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \rw~input_o\ : std_logic;
SIGNAL \state_next.read1~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \state_reg.read1~q\ : std_logic;
SIGNAL \burst~input_o\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \state_next.read2~0_combout\ : std_logic;
SIGNAL \state_reg.read2~q\ : std_logic;
SIGNAL \state_reg.read3~feeder_combout\ : std_logic;
SIGNAL \state_reg.read3~q\ : std_logic;
SIGNAL \state_reg.read4~q\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \state_reg.idle~q\ : std_logic;
SIGNAL \state_next.write~0_combout\ : std_logic;
SIGNAL \state_reg.write~q\ : std_logic;
SIGNAL \oe_next~0_combout\ : std_logic;
SIGNAL \oe_buf_reg~q\ : std_logic;
SIGNAL \we_buf_reg~feeder_combout\ : std_logic;
SIGNAL \we_buf_reg~q\ : std_logic;
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_mem <= mem;
ww_rw <= rw;
ww_burst <= burst;
oe <= ww_oe;
we <= ww_we;
we_me <= ww_we_me;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: IOIBUF_X0_Y67_N22
\mem~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem,
	o => \mem~input_o\);

-- Location: IOOBUF_X0_Y68_N16
\oe~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \oe_buf_reg~q\,
	devoe => ww_devoe,
	o => \oe~output_o\);

-- Location: IOOBUF_X0_Y67_N16
\we~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \we_buf_reg~q\,
	devoe => ww_devoe,
	o => \we~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\we_me~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \we_me~output_o\);

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

-- Location: IOIBUF_X0_Y68_N1
\rw~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rw,
	o => \rw~input_o\);

-- Location: LCCOMB_X1_Y68_N20
\state_next.read1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_next.read1~0_combout\ = (\mem~input_o\ & (\rw~input_o\ & !\state_reg.idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~input_o\,
	datab => \rw~input_o\,
	datac => \state_reg.idle~q\,
	combout => \state_next.read1~0_combout\);

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

-- Location: FF_X1_Y68_N21
\state_reg.read1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state_next.read1~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_reg.read1~q\);

-- Location: IOIBUF_X0_Y68_N8
\burst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_burst,
	o => \burst~input_o\);

-- Location: LCCOMB_X1_Y68_N24
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\mem~input_o\ & (\state_reg.read1~q\ & ((!\burst~input_o\)))) # (!\mem~input_o\ & (((\state_reg.read1~q\ & !\burst~input_o\)) # (!\state_reg.idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~input_o\,
	datab => \state_reg.read1~q\,
	datac => \state_reg.idle~q\,
	datad => \burst~input_o\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X1_Y68_N0
\state_next.read2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_next.read2~0_combout\ = (\burst~input_o\ & \state_reg.read1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \burst~input_o\,
	datad => \state_reg.read1~q\,
	combout => \state_next.read2~0_combout\);

-- Location: FF_X1_Y68_N1
\state_reg.read2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state_next.read2~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_reg.read2~q\);

-- Location: LCCOMB_X1_Y68_N22
\state_reg.read3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_reg.read3~feeder_combout\ = \state_reg.read2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_reg.read2~q\,
	combout => \state_reg.read3~feeder_combout\);

-- Location: FF_X1_Y68_N23
\state_reg.read3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state_reg.read3~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_reg.read3~q\);

-- Location: FF_X1_Y68_N19
\state_reg.read4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \state_reg.read3~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_reg.read4~q\);

-- Location: LCCOMB_X1_Y68_N30
\Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (!\state_reg.write~q\ & (!\Selector0~0_combout\ & !\state_reg.read4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_reg.write~q\,
	datac => \Selector0~0_combout\,
	datad => \state_reg.read4~q\,
	combout => \Selector0~1_combout\);

-- Location: FF_X1_Y68_N31
\state_reg.idle\ : dffeas
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
	q => \state_reg.idle~q\);

-- Location: LCCOMB_X1_Y68_N28
\state_next.write~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_next.write~0_combout\ = (\mem~input_o\ & (!\rw~input_o\ & !\state_reg.idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~input_o\,
	datab => \rw~input_o\,
	datac => \state_reg.idle~q\,
	combout => \state_next.write~0_combout\);

-- Location: FF_X1_Y68_N29
\state_reg.write\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state_next.write~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_reg.write~q\);

-- Location: LCCOMB_X1_Y68_N16
\oe_next~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \oe_next~0_combout\ = (!\state_reg.read4~q\ & (!\state_reg.write~q\ & (!\Selector0~0_combout\ & !\state_next.write~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_reg.read4~q\,
	datab => \state_reg.write~q\,
	datac => \Selector0~0_combout\,
	datad => \state_next.write~0_combout\,
	combout => \oe_next~0_combout\);

-- Location: FF_X1_Y68_N17
oe_buf_reg : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \oe_next~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \oe_buf_reg~q\);

-- Location: LCCOMB_X1_Y68_N26
\we_buf_reg~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \we_buf_reg~feeder_combout\ = \state_next.write~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_next.write~0_combout\,
	combout => \we_buf_reg~feeder_combout\);

-- Location: FF_X1_Y68_N27
we_buf_reg : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \we_buf_reg~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \we_buf_reg~q\);

ww_oe <= \oe~output_o\;

ww_we <= \we~output_o\;

ww_we_me <= \we_me~output_o\;
END structure;


