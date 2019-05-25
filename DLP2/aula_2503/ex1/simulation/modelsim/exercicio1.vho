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

-- DATE "03/29/2019 11:34:16"

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

ENTITY 	exercicio1 IS
    PORT (
	x0 : IN std_logic_vector(7 DOWNTO 0);
	x1 : IN std_logic_vector(7 DOWNTO 0);
	x2 : IN std_logic_vector(7 DOWNTO 0);
	x3 : IN std_logic_vector(7 DOWNTO 0);
	y0 : IN std_logic_vector(7 DOWNTO 0);
	s : OUT std_logic_vector(7 DOWNTO 0);
	sel : IN std_logic
	);
END exercicio1;

-- Design Ports Information
-- s[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[1]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[2]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[3]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[4]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[5]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[6]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[7]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x3[0]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x2[0]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1[0]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x0[0]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y0[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x3[1]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x2[1]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1[1]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x0[1]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y0[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x3[2]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x2[2]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1[2]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x0[2]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y0[2]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x3[3]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x2[3]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1[3]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x0[3]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y0[3]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x3[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x2[4]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1[4]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x0[4]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y0[4]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x3[5]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x2[5]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1[5]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x0[5]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y0[5]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x3[6]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x2[6]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1[6]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x0[6]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y0[6]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x3[7]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x2[7]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1[7]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x0[7]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y0[7]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF exercicio1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_x0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_x1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_x2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_x3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_y0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_s : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_sel : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add2~1_combout\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add2~3_combout\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add2~5_combout\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add2~9_combout\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Add2~13_combout\ : std_logic;
SIGNAL \x2[0]~input_o\ : std_logic;
SIGNAL \x0[0]~input_o\ : std_logic;
SIGNAL \x3[1]~input_o\ : std_logic;
SIGNAL \x0[1]~input_o\ : std_logic;
SIGNAL \x2[2]~input_o\ : std_logic;
SIGNAL \x1[2]~input_o\ : std_logic;
SIGNAL \x2[3]~input_o\ : std_logic;
SIGNAL \x1[3]~input_o\ : std_logic;
SIGNAL \x3[4]~input_o\ : std_logic;
SIGNAL \x0[4]~input_o\ : std_logic;
SIGNAL \x3[5]~input_o\ : std_logic;
SIGNAL \x1[5]~input_o\ : std_logic;
SIGNAL \x2[6]~input_o\ : std_logic;
SIGNAL \x1[6]~input_o\ : std_logic;
SIGNAL \s[0]~output_o\ : std_logic;
SIGNAL \s[1]~output_o\ : std_logic;
SIGNAL \s[2]~output_o\ : std_logic;
SIGNAL \s[3]~output_o\ : std_logic;
SIGNAL \s[4]~output_o\ : std_logic;
SIGNAL \s[5]~output_o\ : std_logic;
SIGNAL \s[6]~output_o\ : std_logic;
SIGNAL \s[7]~output_o\ : std_logic;
SIGNAL \x1[0]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \sumout[0]~0_combout\ : std_logic;
SIGNAL \y0[0]~input_o\ : std_logic;
SIGNAL \sumout2[0]~0_combout\ : std_logic;
SIGNAL \sel~input_o\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \x1[1]~input_o\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \sumout[0]~1\ : std_logic;
SIGNAL \sumout[1]~2_combout\ : std_logic;
SIGNAL \y0[1]~input_o\ : std_logic;
SIGNAL \sumout2[0]~1\ : std_logic;
SIGNAL \sumout2[1]~2_combout\ : std_logic;
SIGNAL \Add3~1_combout\ : std_logic;
SIGNAL \y0[2]~input_o\ : std_logic;
SIGNAL \sumout2[1]~3\ : std_logic;
SIGNAL \sumout2[2]~4_combout\ : std_logic;
SIGNAL \x3[2]~input_o\ : std_logic;
SIGNAL \x2[1]~input_o\ : std_logic;
SIGNAL \x3[0]~input_o\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \sumout[1]~3\ : std_logic;
SIGNAL \sumout[2]~4_combout\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \y0[3]~input_o\ : std_logic;
SIGNAL \x3[3]~input_o\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \sumout[2]~5\ : std_logic;
SIGNAL \sumout[3]~6_combout\ : std_logic;
SIGNAL \Add2~7_combout\ : std_logic;
SIGNAL \sumout2[2]~5\ : std_logic;
SIGNAL \sumout2[3]~6_combout\ : std_logic;
SIGNAL \Add3~3_combout\ : std_logic;
SIGNAL \y0[4]~input_o\ : std_logic;
SIGNAL \x1[4]~input_o\ : std_logic;
SIGNAL \x0[3]~input_o\ : std_logic;
SIGNAL \x0[2]~input_o\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \sumout[3]~7\ : std_logic;
SIGNAL \sumout[4]~8_combout\ : std_logic;
SIGNAL \sumout2[3]~7\ : std_logic;
SIGNAL \sumout2[4]~8_combout\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \y0[5]~input_o\ : std_logic;
SIGNAL \x2[5]~input_o\ : std_logic;
SIGNAL \x2[4]~input_o\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \sumout[4]~9\ : std_logic;
SIGNAL \sumout[5]~10_combout\ : std_logic;
SIGNAL \Add2~11_combout\ : std_logic;
SIGNAL \sumout2[4]~9\ : std_logic;
SIGNAL \sumout2[5]~10_combout\ : std_logic;
SIGNAL \Add3~5_combout\ : std_logic;
SIGNAL \y0[6]~input_o\ : std_logic;
SIGNAL \sumout2[5]~11\ : std_logic;
SIGNAL \sumout2[6]~12_combout\ : std_logic;
SIGNAL \x0[6]~input_o\ : std_logic;
SIGNAL \x0[5]~input_o\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \sumout[5]~11\ : std_logic;
SIGNAL \sumout[6]~12_combout\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \y0[7]~input_o\ : std_logic;
SIGNAL \x1[7]~input_o\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \x3[7]~input_o\ : std_logic;
SIGNAL \x2[7]~input_o\ : std_logic;
SIGNAL \x3[6]~input_o\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \sumout[6]~13\ : std_logic;
SIGNAL \sumout[7]~14_combout\ : std_logic;
SIGNAL \x0[7]~input_o\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Add2~15_combout\ : std_logic;
SIGNAL \sumout2[6]~13\ : std_logic;
SIGNAL \sumout2[7]~14_combout\ : std_logic;
SIGNAL \Add3~7_combout\ : std_logic;

BEGIN

ww_x0 <= x0;
ww_x1 <= x1;
ww_x2 <= x2;
ww_x3 <= x3;
ww_y0 <= y0;
s <= ww_s;
ww_sel <= sel;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X23_Y72_N14
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\x2[0]~input_o\ & (\x3[0]~input_o\ $ (VCC))) # (!\x2[0]~input_o\ & (\x3[0]~input_o\ & VCC))
-- \Add1~1\ = CARRY((\x2[0]~input_o\ & \x3[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x2[0]~input_o\,
	datab => \x3[0]~input_o\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X23_Y72_N16
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\x3[1]~input_o\ & ((\x2[1]~input_o\ & (\Add1~1\ & VCC)) # (!\x2[1]~input_o\ & (!\Add1~1\)))) # (!\x3[1]~input_o\ & ((\x2[1]~input_o\ & (!\Add1~1\)) # (!\x2[1]~input_o\ & ((\Add1~1\) # (GND)))))
-- \Add1~3\ = CARRY((\x3[1]~input_o\ & (!\x2[1]~input_o\ & !\Add1~1\)) # (!\x3[1]~input_o\ & ((!\Add1~1\) # (!\x2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x3[1]~input_o\,
	datab => \x2[1]~input_o\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X24_Y72_N4
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\x1[2]~input_o\ $ (\x0[2]~input_o\ $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\x1[2]~input_o\ & ((\x0[2]~input_o\) # (!\Add0~3\))) # (!\x1[2]~input_o\ & (\x0[2]~input_o\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x1[2]~input_o\,
	datab => \x0[2]~input_o\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X24_Y72_N6
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\x1[3]~input_o\ & ((\x0[3]~input_o\ & (\Add0~5\ & VCC)) # (!\x0[3]~input_o\ & (!\Add0~5\)))) # (!\x1[3]~input_o\ & ((\x0[3]~input_o\ & (!\Add0~5\)) # (!\x0[3]~input_o\ & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((\x1[3]~input_o\ & (!\x0[3]~input_o\ & !\Add0~5\)) # (!\x1[3]~input_o\ & ((!\Add0~5\) # (!\x0[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x1[3]~input_o\,
	datab => \x0[3]~input_o\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X23_Y72_N22
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((\x3[4]~input_o\ $ (\x2[4]~input_o\ $ (!\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((\x3[4]~input_o\ & ((\x2[4]~input_o\) # (!\Add1~7\))) # (!\x3[4]~input_o\ & (\x2[4]~input_o\ & !\Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x3[4]~input_o\,
	datab => \x2[4]~input_o\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X24_Y72_N10
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\x1[5]~input_o\ & ((\x0[5]~input_o\ & (\Add0~9\ & VCC)) # (!\x0[5]~input_o\ & (!\Add0~9\)))) # (!\x1[5]~input_o\ & ((\x0[5]~input_o\ & (!\Add0~9\)) # (!\x0[5]~input_o\ & ((\Add0~9\) # (GND)))))
-- \Add0~11\ = CARRY((\x1[5]~input_o\ & (!\x0[5]~input_o\ & !\Add0~9\)) # (!\x1[5]~input_o\ & ((!\Add0~9\) # (!\x0[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x1[5]~input_o\,
	datab => \x0[5]~input_o\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X23_Y72_N26
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((\x2[6]~input_o\ $ (\x3[6]~input_o\ $ (!\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((\x2[6]~input_o\ & ((\x3[6]~input_o\) # (!\Add1~11\))) # (!\x2[6]~input_o\ & (\x3[6]~input_o\ & !\Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x2[6]~input_o\,
	datab => \x3[6]~input_o\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X23_Y72_N0
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (\x2[0]~input_o\ & (\x3[0]~input_o\ & (\x0[0]~input_o\ & \x1[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x2[0]~input_o\,
	datab => \x3[0]~input_o\,
	datac => \x0[0]~input_o\,
	datad => \x1[0]~input_o\,
	combout => \Add2~0_combout\);

-- Location: LCCOMB_X30_Y72_N0
\Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~1_combout\ = (\sel~input_o\ & ((\Add2~0_combout\))) # (!\sel~input_o\ & (\sumout[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sumout[0]~0_combout\,
	datac => \Add2~0_combout\,
	datad => \sel~input_o\,
	combout => \Add2~1_combout\);

-- Location: LCCOMB_X23_Y72_N2
\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\x0[1]~input_o\ & (\x1[1]~input_o\ & (\x2[1]~input_o\ & \x3[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x0[1]~input_o\,
	datab => \x1[1]~input_o\,
	datac => \x2[1]~input_o\,
	datad => \x3[1]~input_o\,
	combout => \Add2~2_combout\);

-- Location: LCCOMB_X30_Y72_N4
\Add2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~3_combout\ = (\sel~input_o\ & ((\Add2~2_combout\))) # (!\sel~input_o\ & (\sumout[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sumout[1]~2_combout\,
	datac => \Add2~2_combout\,
	datad => \sel~input_o\,
	combout => \Add2~3_combout\);

-- Location: LCCOMB_X23_Y72_N4
\Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (\x2[2]~input_o\ & (\x3[2]~input_o\ & (\x1[2]~input_o\ & \x0[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x2[2]~input_o\,
	datab => \x3[2]~input_o\,
	datac => \x1[2]~input_o\,
	datad => \x0[2]~input_o\,
	combout => \Add2~4_combout\);

-- Location: LCCOMB_X30_Y72_N8
\Add2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~5_combout\ = (\sel~input_o\ & ((\Add2~4_combout\))) # (!\sel~input_o\ & (\sumout[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sumout[2]~4_combout\,
	datac => \Add2~4_combout\,
	datad => \sel~input_o\,
	combout => \Add2~5_combout\);

-- Location: LCCOMB_X23_Y72_N6
\Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\x1[3]~input_o\ & (\x2[3]~input_o\ & (\x0[3]~input_o\ & \x3[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x1[3]~input_o\,
	datab => \x2[3]~input_o\,
	datac => \x0[3]~input_o\,
	datad => \x3[3]~input_o\,
	combout => \Add2~6_combout\);

-- Location: LCCOMB_X23_Y72_N8
\Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (\x3[4]~input_o\ & (\x0[4]~input_o\ & (\x2[4]~input_o\ & \x1[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x3[4]~input_o\,
	datab => \x0[4]~input_o\,
	datac => \x2[4]~input_o\,
	datad => \x1[4]~input_o\,
	combout => \Add2~8_combout\);

-- Location: LCCOMB_X27_Y72_N8
\Add2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~9_combout\ = (\sel~input_o\ & (\Add2~8_combout\)) # (!\sel~input_o\ & ((\sumout[4]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datab => \sumout[4]~8_combout\,
	datad => \sel~input_o\,
	combout => \Add2~9_combout\);

-- Location: LCCOMB_X23_Y72_N10
\Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (\x1[5]~input_o\ & (\x2[5]~input_o\ & (\x0[5]~input_o\ & \x3[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x1[5]~input_o\,
	datab => \x2[5]~input_o\,
	datac => \x0[5]~input_o\,
	datad => \x3[5]~input_o\,
	combout => \Add2~10_combout\);

-- Location: LCCOMB_X23_Y72_N12
\Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (\x1[6]~input_o\ & (\x3[6]~input_o\ & (\x2[6]~input_o\ & \x0[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x1[6]~input_o\,
	datab => \x3[6]~input_o\,
	datac => \x2[6]~input_o\,
	datad => \x0[6]~input_o\,
	combout => \Add2~12_combout\);

-- Location: LCCOMB_X27_Y72_N24
\Add2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~13_combout\ = (\sel~input_o\ & ((\Add2~12_combout\))) # (!\sel~input_o\ & (\sumout[6]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sumout[6]~12_combout\,
	datac => \Add2~12_combout\,
	datad => \sel~input_o\,
	combout => \Add2~13_combout\);

-- Location: IOIBUF_X20_Y73_N1
\x2[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x2(0),
	o => \x2[0]~input_o\);

-- Location: IOIBUF_X27_Y73_N15
\x0[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x0(0),
	o => \x0[0]~input_o\);

-- Location: IOIBUF_X13_Y73_N1
\x3[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x3(1),
	o => \x3[1]~input_o\);

-- Location: IOIBUF_X16_Y73_N8
\x0[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x0(1),
	o => \x0[1]~input_o\);

-- Location: IOIBUF_X9_Y73_N8
\x2[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x2(2),
	o => \x2[2]~input_o\);

-- Location: IOIBUF_X11_Y73_N1
\x1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x1(2),
	o => \x1[2]~input_o\);

-- Location: IOIBUF_X35_Y73_N22
\x2[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x2(3),
	o => \x2[3]~input_o\);

-- Location: IOIBUF_X16_Y73_N15
\x1[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x1(3),
	o => \x1[3]~input_o\);

-- Location: IOIBUF_X27_Y73_N8
\x3[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x3(4),
	o => \x3[4]~input_o\);

-- Location: IOIBUF_X13_Y73_N8
\x0[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x0(4),
	o => \x0[4]~input_o\);

-- Location: IOIBUF_X18_Y73_N15
\x3[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x3(5),
	o => \x3[5]~input_o\);

-- Location: IOIBUF_X20_Y73_N15
\x1[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x1(5),
	o => \x1[5]~input_o\);

-- Location: IOIBUF_X16_Y73_N22
\x2[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x2(6),
	o => \x2[6]~input_o\);

-- Location: IOIBUF_X18_Y73_N22
\x1[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x1(6),
	o => \x1[6]~input_o\);

-- Location: IOOBUF_X35_Y73_N16
\s[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~0_combout\,
	devoe => ww_devoe,
	o => \s[0]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\s[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~1_combout\,
	devoe => ww_devoe,
	o => \s[1]~output_o\);

-- Location: IOOBUF_X29_Y73_N2
\s[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~2_combout\,
	devoe => ww_devoe,
	o => \s[2]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\s[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~3_combout\,
	devoe => ww_devoe,
	o => \s[3]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\s[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~4_combout\,
	devoe => ww_devoe,
	o => \s[4]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\s[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~5_combout\,
	devoe => ww_devoe,
	o => \s[5]~output_o\);

-- Location: IOOBUF_X38_Y73_N23
\s[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~6_combout\,
	devoe => ww_devoe,
	o => \s[6]~output_o\);

-- Location: IOOBUF_X11_Y73_N9
\s[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~7_combout\,
	devoe => ww_devoe,
	o => \s[7]~output_o\);

-- Location: IOIBUF_X25_Y73_N22
\x1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x1(0),
	o => \x1[0]~input_o\);

-- Location: LCCOMB_X24_Y72_N0
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\x0[0]~input_o\ & (\x1[0]~input_o\ $ (VCC))) # (!\x0[0]~input_o\ & (\x1[0]~input_o\ & VCC))
-- \Add0~1\ = CARRY((\x0[0]~input_o\ & \x1[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x0[0]~input_o\,
	datab => \x1[0]~input_o\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X24_Y72_N16
\sumout[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sumout[0]~0_combout\ = (\Add1~0_combout\ & (\Add0~0_combout\ $ (VCC))) # (!\Add1~0_combout\ & (\Add0~0_combout\ & VCC))
-- \sumout[0]~1\ = CARRY((\Add1~0_combout\ & \Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \Add0~0_combout\,
	datad => VCC,
	combout => \sumout[0]~0_combout\,
	cout => \sumout[0]~1\);

-- Location: IOIBUF_X31_Y73_N1
\y0[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y0(0),
	o => \y0[0]~input_o\);

-- Location: LCCOMB_X30_Y72_N12
\sumout2[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sumout2[0]~0_combout\ = (\Add2~1_combout\ & (\y0[0]~input_o\ $ (VCC))) # (!\Add2~1_combout\ & (\y0[0]~input_o\ & VCC))
-- \sumout2[0]~1\ = CARRY((\Add2~1_combout\ & \y0[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~1_combout\,
	datab => \y0[0]~input_o\,
	datad => VCC,
	combout => \sumout2[0]~0_combout\,
	cout => \sumout2[0]~1\);

-- Location: IOIBUF_X38_Y73_N1
\sel~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel,
	o => \sel~input_o\);

-- Location: LCCOMB_X30_Y72_N2
\Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = (\sel~input_o\ & (((\sumout2[0]~0_combout\)))) # (!\sel~input_o\ & (\sumout[0]~0_combout\ & (\y0[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sumout[0]~0_combout\,
	datab => \y0[0]~input_o\,
	datac => \sumout2[0]~0_combout\,
	datad => \sel~input_o\,
	combout => \Add3~0_combout\);

-- Location: IOIBUF_X7_Y73_N22
\x1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x1(1),
	o => \x1[1]~input_o\);

-- Location: LCCOMB_X24_Y72_N2
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\x0[1]~input_o\ & ((\x1[1]~input_o\ & (\Add0~1\ & VCC)) # (!\x1[1]~input_o\ & (!\Add0~1\)))) # (!\x0[1]~input_o\ & ((\x1[1]~input_o\ & (!\Add0~1\)) # (!\x1[1]~input_o\ & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((\x0[1]~input_o\ & (!\x1[1]~input_o\ & !\Add0~1\)) # (!\x0[1]~input_o\ & ((!\Add0~1\) # (!\x1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x0[1]~input_o\,
	datab => \x1[1]~input_o\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X24_Y72_N18
\sumout[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sumout[1]~2_combout\ = (\Add1~2_combout\ & ((\Add0~2_combout\ & (\sumout[0]~1\ & VCC)) # (!\Add0~2_combout\ & (!\sumout[0]~1\)))) # (!\Add1~2_combout\ & ((\Add0~2_combout\ & (!\sumout[0]~1\)) # (!\Add0~2_combout\ & ((\sumout[0]~1\) # (GND)))))
-- \sumout[1]~3\ = CARRY((\Add1~2_combout\ & (!\Add0~2_combout\ & !\sumout[0]~1\)) # (!\Add1~2_combout\ & ((!\sumout[0]~1\) # (!\Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \Add0~2_combout\,
	datad => VCC,
	cin => \sumout[0]~1\,
	combout => \sumout[1]~2_combout\,
	cout => \sumout[1]~3\);

-- Location: IOIBUF_X31_Y73_N8
\y0[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y0(1),
	o => \y0[1]~input_o\);

-- Location: LCCOMB_X30_Y72_N14
\sumout2[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sumout2[1]~2_combout\ = (\Add2~3_combout\ & ((\y0[1]~input_o\ & (\sumout2[0]~1\ & VCC)) # (!\y0[1]~input_o\ & (!\sumout2[0]~1\)))) # (!\Add2~3_combout\ & ((\y0[1]~input_o\ & (!\sumout2[0]~1\)) # (!\y0[1]~input_o\ & ((\sumout2[0]~1\) # (GND)))))
-- \sumout2[1]~3\ = CARRY((\Add2~3_combout\ & (!\y0[1]~input_o\ & !\sumout2[0]~1\)) # (!\Add2~3_combout\ & ((!\sumout2[0]~1\) # (!\y0[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~3_combout\,
	datab => \y0[1]~input_o\,
	datad => VCC,
	cin => \sumout2[0]~1\,
	combout => \sumout2[1]~2_combout\,
	cout => \sumout2[1]~3\);

-- Location: LCCOMB_X30_Y72_N30
\Add3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~1_combout\ = (\sel~input_o\ & (((\sumout2[1]~2_combout\)))) # (!\sel~input_o\ & (\sumout[1]~2_combout\ & (\y0[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sumout[1]~2_combout\,
	datab => \y0[1]~input_o\,
	datac => \sumout2[1]~2_combout\,
	datad => \sel~input_o\,
	combout => \Add3~1_combout\);

-- Location: IOIBUF_X54_Y73_N8
\y0[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y0(2),
	o => \y0[2]~input_o\);

-- Location: LCCOMB_X30_Y72_N16
\sumout2[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sumout2[2]~4_combout\ = ((\Add2~5_combout\ $ (\y0[2]~input_o\ $ (!\sumout2[1]~3\)))) # (GND)
-- \sumout2[2]~5\ = CARRY((\Add2~5_combout\ & ((\y0[2]~input_o\) # (!\sumout2[1]~3\))) # (!\Add2~5_combout\ & (\y0[2]~input_o\ & !\sumout2[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~5_combout\,
	datab => \y0[2]~input_o\,
	datad => VCC,
	cin => \sumout2[1]~3\,
	combout => \sumout2[2]~4_combout\,
	cout => \sumout2[2]~5\);

-- Location: IOIBUF_X5_Y73_N8
\x3[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x3(2),
	o => \x3[2]~input_o\);

-- Location: IOIBUF_X11_Y73_N22
\x2[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x2(1),
	o => \x2[1]~input_o\);

-- Location: IOIBUF_X11_Y73_N15
\x3[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x3(0),
	o => \x3[0]~input_o\);

-- Location: LCCOMB_X23_Y72_N18
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\x2[2]~input_o\ $ (\x3[2]~input_o\ $ (!\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\x2[2]~input_o\ & ((\x3[2]~input_o\) # (!\Add1~3\))) # (!\x2[2]~input_o\ & (\x3[2]~input_o\ & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x2[2]~input_o\,
	datab => \x3[2]~input_o\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X24_Y72_N20
\sumout[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sumout[2]~4_combout\ = ((\Add0~4_combout\ $ (\Add1~4_combout\ $ (!\sumout[1]~3\)))) # (GND)
-- \sumout[2]~5\ = CARRY((\Add0~4_combout\ & ((\Add1~4_combout\) # (!\sumout[1]~3\))) # (!\Add0~4_combout\ & (\Add1~4_combout\ & !\sumout[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Add1~4_combout\,
	datad => VCC,
	cin => \sumout[1]~3\,
	combout => \sumout[2]~4_combout\,
	cout => \sumout[2]~5\);

-- Location: LCCOMB_X30_Y72_N10
\Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (\sel~input_o\ & (\sumout2[2]~4_combout\)) # (!\sel~input_o\ & (((\sumout[2]~4_combout\ & \y0[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sumout2[2]~4_combout\,
	datab => \sumout[2]~4_combout\,
	datac => \y0[2]~input_o\,
	datad => \sel~input_o\,
	combout => \Add3~2_combout\);

-- Location: IOIBUF_X40_Y73_N1
\y0[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y0(3),
	o => \y0[3]~input_o\);

-- Location: IOIBUF_X3_Y73_N1
\x3[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x3(3),
	o => \x3[3]~input_o\);

-- Location: LCCOMB_X23_Y72_N20
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\x2[3]~input_o\ & ((\x3[3]~input_o\ & (\Add1~5\ & VCC)) # (!\x3[3]~input_o\ & (!\Add1~5\)))) # (!\x2[3]~input_o\ & ((\x3[3]~input_o\ & (!\Add1~5\)) # (!\x3[3]~input_o\ & ((\Add1~5\) # (GND)))))
-- \Add1~7\ = CARRY((\x2[3]~input_o\ & (!\x3[3]~input_o\ & !\Add1~5\)) # (!\x2[3]~input_o\ & ((!\Add1~5\) # (!\x3[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x2[3]~input_o\,
	datab => \x3[3]~input_o\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X24_Y72_N22
\sumout[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sumout[3]~6_combout\ = (\Add0~6_combout\ & ((\Add1~6_combout\ & (\sumout[2]~5\ & VCC)) # (!\Add1~6_combout\ & (!\sumout[2]~5\)))) # (!\Add0~6_combout\ & ((\Add1~6_combout\ & (!\sumout[2]~5\)) # (!\Add1~6_combout\ & ((\sumout[2]~5\) # (GND)))))
-- \sumout[3]~7\ = CARRY((\Add0~6_combout\ & (!\Add1~6_combout\ & !\sumout[2]~5\)) # (!\Add0~6_combout\ & ((!\sumout[2]~5\) # (!\Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Add1~6_combout\,
	datad => VCC,
	cin => \sumout[2]~5\,
	combout => \sumout[3]~6_combout\,
	cout => \sumout[3]~7\);

-- Location: LCCOMB_X30_Y72_N28
\Add2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~7_combout\ = (\sel~input_o\ & (\Add2~6_combout\)) # (!\sel~input_o\ & ((\sumout[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datac => \sumout[3]~6_combout\,
	datad => \sel~input_o\,
	combout => \Add2~7_combout\);

-- Location: LCCOMB_X30_Y72_N18
\sumout2[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sumout2[3]~6_combout\ = (\y0[3]~input_o\ & ((\Add2~7_combout\ & (\sumout2[2]~5\ & VCC)) # (!\Add2~7_combout\ & (!\sumout2[2]~5\)))) # (!\y0[3]~input_o\ & ((\Add2~7_combout\ & (!\sumout2[2]~5\)) # (!\Add2~7_combout\ & ((\sumout2[2]~5\) # (GND)))))
-- \sumout2[3]~7\ = CARRY((\y0[3]~input_o\ & (!\Add2~7_combout\ & !\sumout2[2]~5\)) # (!\y0[3]~input_o\ & ((!\sumout2[2]~5\) # (!\Add2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \y0[3]~input_o\,
	datab => \Add2~7_combout\,
	datad => VCC,
	cin => \sumout2[2]~5\,
	combout => \sumout2[3]~6_combout\,
	cout => \sumout2[3]~7\);

-- Location: LCCOMB_X30_Y72_N6
\Add3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~3_combout\ = (\sel~input_o\ & (((\sumout2[3]~6_combout\)))) # (!\sel~input_o\ & (\y0[3]~input_o\ & ((\sumout[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y0[3]~input_o\,
	datab => \sumout2[3]~6_combout\,
	datac => \sumout[3]~6_combout\,
	datad => \sel~input_o\,
	combout => \Add3~3_combout\);

-- Location: IOIBUF_X9_Y73_N1
\y0[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y0(4),
	o => \y0[4]~input_o\);

-- Location: IOIBUF_X47_Y73_N15
\x1[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x1(4),
	o => \x1[4]~input_o\);

-- Location: IOIBUF_X13_Y73_N22
\x0[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x0(3),
	o => \x0[3]~input_o\);

-- Location: IOIBUF_X23_Y73_N22
\x0[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x0(2),
	o => \x0[2]~input_o\);

-- Location: LCCOMB_X24_Y72_N8
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\x0[4]~input_o\ $ (\x1[4]~input_o\ $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\x0[4]~input_o\ & ((\x1[4]~input_o\) # (!\Add0~7\))) # (!\x0[4]~input_o\ & (\x1[4]~input_o\ & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x0[4]~input_o\,
	datab => \x1[4]~input_o\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X24_Y72_N24
\sumout[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sumout[4]~8_combout\ = ((\Add1~8_combout\ $ (\Add0~8_combout\ $ (!\sumout[3]~7\)))) # (GND)
-- \sumout[4]~9\ = CARRY((\Add1~8_combout\ & ((\Add0~8_combout\) # (!\sumout[3]~7\))) # (!\Add1~8_combout\ & (\Add0~8_combout\ & !\sumout[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datab => \Add0~8_combout\,
	datad => VCC,
	cin => \sumout[3]~7\,
	combout => \sumout[4]~8_combout\,
	cout => \sumout[4]~9\);

-- Location: LCCOMB_X30_Y72_N20
\sumout2[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sumout2[4]~8_combout\ = ((\Add2~9_combout\ $ (\y0[4]~input_o\ $ (!\sumout2[3]~7\)))) # (GND)
-- \sumout2[4]~9\ = CARRY((\Add2~9_combout\ & ((\y0[4]~input_o\) # (!\sumout2[3]~7\))) # (!\Add2~9_combout\ & (\y0[4]~input_o\ & !\sumout2[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~9_combout\,
	datab => \y0[4]~input_o\,
	datad => VCC,
	cin => \sumout2[3]~7\,
	combout => \sumout2[4]~8_combout\,
	cout => \sumout2[4]~9\);

-- Location: LCCOMB_X27_Y72_N26
\Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (\sel~input_o\ & (((\sumout2[4]~8_combout\)))) # (!\sel~input_o\ & (\y0[4]~input_o\ & (\sumout[4]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y0[4]~input_o\,
	datab => \sumout[4]~8_combout\,
	datac => \sumout2[4]~8_combout\,
	datad => \sel~input_o\,
	combout => \Add3~4_combout\);

-- Location: IOIBUF_X33_Y73_N1
\y0[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y0(5),
	o => \y0[5]~input_o\);

-- Location: IOIBUF_X20_Y73_N22
\x2[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x2(5),
	o => \x2[5]~input_o\);

-- Location: IOIBUF_X13_Y73_N15
\x2[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x2(4),
	o => \x2[4]~input_o\);

-- Location: LCCOMB_X23_Y72_N24
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\x3[5]~input_o\ & ((\x2[5]~input_o\ & (\Add1~9\ & VCC)) # (!\x2[5]~input_o\ & (!\Add1~9\)))) # (!\x3[5]~input_o\ & ((\x2[5]~input_o\ & (!\Add1~9\)) # (!\x2[5]~input_o\ & ((\Add1~9\) # (GND)))))
-- \Add1~11\ = CARRY((\x3[5]~input_o\ & (!\x2[5]~input_o\ & !\Add1~9\)) # (!\x3[5]~input_o\ & ((!\Add1~9\) # (!\x2[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x3[5]~input_o\,
	datab => \x2[5]~input_o\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X24_Y72_N26
\sumout[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sumout[5]~10_combout\ = (\Add0~10_combout\ & ((\Add1~10_combout\ & (\sumout[4]~9\ & VCC)) # (!\Add1~10_combout\ & (!\sumout[4]~9\)))) # (!\Add0~10_combout\ & ((\Add1~10_combout\ & (!\sumout[4]~9\)) # (!\Add1~10_combout\ & ((\sumout[4]~9\) # (GND)))))
-- \sumout[5]~11\ = CARRY((\Add0~10_combout\ & (!\Add1~10_combout\ & !\sumout[4]~9\)) # (!\Add0~10_combout\ & ((!\sumout[4]~9\) # (!\Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Add1~10_combout\,
	datad => VCC,
	cin => \sumout[4]~9\,
	combout => \sumout[5]~10_combout\,
	cout => \sumout[5]~11\);

-- Location: LCCOMB_X27_Y72_N28
\Add2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~11_combout\ = (\sel~input_o\ & (\Add2~10_combout\)) # (!\sel~input_o\ & ((\sumout[5]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~10_combout\,
	datab => \sumout[5]~10_combout\,
	datad => \sel~input_o\,
	combout => \Add2~11_combout\);

-- Location: LCCOMB_X30_Y72_N22
\sumout2[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sumout2[5]~10_combout\ = (\y0[5]~input_o\ & ((\Add2~11_combout\ & (\sumout2[4]~9\ & VCC)) # (!\Add2~11_combout\ & (!\sumout2[4]~9\)))) # (!\y0[5]~input_o\ & ((\Add2~11_combout\ & (!\sumout2[4]~9\)) # (!\Add2~11_combout\ & ((\sumout2[4]~9\) # (GND)))))
-- \sumout2[5]~11\ = CARRY((\y0[5]~input_o\ & (!\Add2~11_combout\ & !\sumout2[4]~9\)) # (!\y0[5]~input_o\ & ((!\sumout2[4]~9\) # (!\Add2~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \y0[5]~input_o\,
	datab => \Add2~11_combout\,
	datad => VCC,
	cin => \sumout2[4]~9\,
	combout => \sumout2[5]~10_combout\,
	cout => \sumout2[5]~11\);

-- Location: LCCOMB_X27_Y72_N22
\Add3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~5_combout\ = (\sel~input_o\ & (((\sumout2[5]~10_combout\)))) # (!\sel~input_o\ & (\y0[5]~input_o\ & (\sumout[5]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y0[5]~input_o\,
	datab => \sumout[5]~10_combout\,
	datac => \sumout2[5]~10_combout\,
	datad => \sel~input_o\,
	combout => \Add3~5_combout\);

-- Location: IOIBUF_X38_Y73_N8
\y0[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y0(6),
	o => \y0[6]~input_o\);

-- Location: LCCOMB_X30_Y72_N24
\sumout2[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sumout2[6]~12_combout\ = ((\Add2~13_combout\ $ (\y0[6]~input_o\ $ (!\sumout2[5]~11\)))) # (GND)
-- \sumout2[6]~13\ = CARRY((\Add2~13_combout\ & ((\y0[6]~input_o\) # (!\sumout2[5]~11\))) # (!\Add2~13_combout\ & (\y0[6]~input_o\ & !\sumout2[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~13_combout\,
	datab => \y0[6]~input_o\,
	datad => VCC,
	cin => \sumout2[5]~11\,
	combout => \sumout2[6]~12_combout\,
	cout => \sumout2[6]~13\);

-- Location: IOIBUF_X23_Y73_N1
\x0[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x0(6),
	o => \x0[6]~input_o\);

-- Location: IOIBUF_X23_Y73_N8
\x0[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x0(5),
	o => \x0[5]~input_o\);

-- Location: LCCOMB_X24_Y72_N12
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\x1[6]~input_o\ $ (\x0[6]~input_o\ $ (!\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((\x1[6]~input_o\ & ((\x0[6]~input_o\) # (!\Add0~11\))) # (!\x1[6]~input_o\ & (\x0[6]~input_o\ & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x1[6]~input_o\,
	datab => \x0[6]~input_o\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X24_Y72_N28
\sumout[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sumout[6]~12_combout\ = ((\Add1~12_combout\ $ (\Add0~12_combout\ $ (!\sumout[5]~11\)))) # (GND)
-- \sumout[6]~13\ = CARRY((\Add1~12_combout\ & ((\Add0~12_combout\) # (!\sumout[5]~11\))) # (!\Add1~12_combout\ & (\Add0~12_combout\ & !\sumout[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datab => \Add0~12_combout\,
	datad => VCC,
	cin => \sumout[5]~11\,
	combout => \sumout[6]~12_combout\,
	cout => \sumout[6]~13\);

-- Location: LCCOMB_X27_Y72_N10
\Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (\sel~input_o\ & (\sumout2[6]~12_combout\)) # (!\sel~input_o\ & (((\sumout[6]~12_combout\ & \y0[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sumout2[6]~12_combout\,
	datab => \sumout[6]~12_combout\,
	datac => \y0[6]~input_o\,
	datad => \sel~input_o\,
	combout => \Add3~6_combout\);

-- Location: IOIBUF_X33_Y73_N8
\y0[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y0(7),
	o => \y0[7]~input_o\);

-- Location: IOIBUF_X25_Y73_N15
\x1[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x1(7),
	o => \x1[7]~input_o\);

-- Location: LCCOMB_X24_Y72_N14
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = \x0[7]~input_o\ $ (\x1[7]~input_o\ $ (\Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x0[7]~input_o\,
	datab => \x1[7]~input_o\,
	cin => \Add0~13\,
	combout => \Add0~14_combout\);

-- Location: IOIBUF_X16_Y73_N1
\x3[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x3(7),
	o => \x3[7]~input_o\);

-- Location: IOIBUF_X23_Y73_N15
\x2[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x2(7),
	o => \x2[7]~input_o\);

-- Location: IOIBUF_X20_Y73_N8
\x3[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x3(6),
	o => \x3[6]~input_o\);

-- Location: LCCOMB_X23_Y72_N28
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = \x3[7]~input_o\ $ (\Add1~13\ $ (\x2[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \x3[7]~input_o\,
	datad => \x2[7]~input_o\,
	cin => \Add1~13\,
	combout => \Add1~14_combout\);

-- Location: LCCOMB_X24_Y72_N30
\sumout[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sumout[7]~14_combout\ = \Add0~14_combout\ $ (\sumout[6]~13\ $ (\Add1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~14_combout\,
	datad => \Add1~14_combout\,
	cin => \sumout[6]~13\,
	combout => \sumout[7]~14_combout\);

-- Location: IOIBUF_X27_Y73_N22
\x0[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x0(7),
	o => \x0[7]~input_o\);

-- Location: LCCOMB_X23_Y72_N30
\Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (\x1[7]~input_o\ & (\x3[7]~input_o\ & (\x0[7]~input_o\ & \x2[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x1[7]~input_o\,
	datab => \x3[7]~input_o\,
	datac => \x0[7]~input_o\,
	datad => \x2[7]~input_o\,
	combout => \Add2~14_combout\);

-- Location: LCCOMB_X27_Y72_N12
\Add2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~15_combout\ = (\sel~input_o\ & ((\Add2~14_combout\))) # (!\sel~input_o\ & (\sumout[7]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sumout[7]~14_combout\,
	datac => \Add2~14_combout\,
	datad => \sel~input_o\,
	combout => \Add2~15_combout\);

-- Location: LCCOMB_X30_Y72_N26
\sumout2[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sumout2[7]~14_combout\ = \y0[7]~input_o\ $ (\Add2~15_combout\ $ (\sumout2[6]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \y0[7]~input_o\,
	datab => \Add2~15_combout\,
	cin => \sumout2[6]~13\,
	combout => \sumout2[7]~14_combout\);

-- Location: LCCOMB_X27_Y72_N30
\Add3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~7_combout\ = (\sel~input_o\ & (((\sumout2[7]~14_combout\)))) # (!\sel~input_o\ & (\y0[7]~input_o\ & (\sumout[7]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y0[7]~input_o\,
	datab => \sumout[7]~14_combout\,
	datac => \sumout2[7]~14_combout\,
	datad => \sel~input_o\,
	combout => \Add3~7_combout\);

ww_s(0) <= \s[0]~output_o\;

ww_s(1) <= \s[1]~output_o\;

ww_s(2) <= \s[2]~output_o\;

ww_s(3) <= \s[3]~output_o\;

ww_s(4) <= \s[4]~output_o\;

ww_s(5) <= \s[5]~output_o\;

ww_s(6) <= \s[6]~output_o\;

ww_s(7) <= \s[7]~output_o\;
END structure;


