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

-- DATE "05/29/2019 02:19:08"

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

ENTITY 	main_timer IS
    PORT (
	RST : IN std_logic;
	CLK : IN std_logic;
	cseg_u : OUT std_logic_vector(0 TO 6);
	cseg_d : OUT std_logic_vector(0 TO 6);
	seg_u : OUT std_logic_vector(0 TO 6);
	seg_d : OUT std_logic_vector(0 TO 6);
	min_u : OUT std_logic_vector(0 TO 6);
	min_d : OUT std_logic_vector(0 TO 6)
	);
END main_timer;

-- Design Ports Information
-- cseg_u[6]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cseg_u[5]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cseg_u[4]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cseg_u[3]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cseg_u[2]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cseg_u[1]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cseg_u[0]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cseg_d[6]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cseg_d[5]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cseg_d[4]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cseg_d[3]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cseg_d[2]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cseg_d[1]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cseg_d[0]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_u[6]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_u[5]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_u[4]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_u[3]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_u[2]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_u[1]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_u[0]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_d[6]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_d[5]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_d[4]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_d[3]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_d[2]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_d[1]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_d[0]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_u[6]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_u[5]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_u[4]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_u[3]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_u[2]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_u[1]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_u[0]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_d[6]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_d[5]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_d[4]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_d[3]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_d[2]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_d[1]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_d[0]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF main_timer IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_cseg_u : std_logic_vector(0 TO 6);
SIGNAL ww_cseg_d : std_logic_vector(0 TO 6);
SIGNAL ww_seg_u : std_logic_vector(0 TO 6);
SIGNAL ww_seg_d : std_logic_vector(0 TO 6);
SIGNAL ww_min_u : std_logic_vector(0 TO 6);
SIGNAL ww_min_d : std_logic_vector(0 TO 6);
SIGNAL \RST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \timer_1|Equal2~0_combout\ : std_logic;
SIGNAL \timer_1|cseg_counter~7_combout\ : std_logic;
SIGNAL \timer_1|cseg_counter~9_combout\ : std_logic;
SIGNAL \timer_1|v_min_u[3]~5_combout\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \cseg_u[6]~output_o\ : std_logic;
SIGNAL \cseg_u[5]~output_o\ : std_logic;
SIGNAL \cseg_u[4]~output_o\ : std_logic;
SIGNAL \cseg_u[3]~output_o\ : std_logic;
SIGNAL \cseg_u[2]~output_o\ : std_logic;
SIGNAL \cseg_u[1]~output_o\ : std_logic;
SIGNAL \cseg_u[0]~output_o\ : std_logic;
SIGNAL \cseg_d[6]~output_o\ : std_logic;
SIGNAL \cseg_d[5]~output_o\ : std_logic;
SIGNAL \cseg_d[4]~output_o\ : std_logic;
SIGNAL \cseg_d[3]~output_o\ : std_logic;
SIGNAL \cseg_d[2]~output_o\ : std_logic;
SIGNAL \cseg_d[1]~output_o\ : std_logic;
SIGNAL \cseg_d[0]~output_o\ : std_logic;
SIGNAL \seg_u[6]~output_o\ : std_logic;
SIGNAL \seg_u[5]~output_o\ : std_logic;
SIGNAL \seg_u[4]~output_o\ : std_logic;
SIGNAL \seg_u[3]~output_o\ : std_logic;
SIGNAL \seg_u[2]~output_o\ : std_logic;
SIGNAL \seg_u[1]~output_o\ : std_logic;
SIGNAL \seg_u[0]~output_o\ : std_logic;
SIGNAL \seg_d[6]~output_o\ : std_logic;
SIGNAL \seg_d[5]~output_o\ : std_logic;
SIGNAL \seg_d[4]~output_o\ : std_logic;
SIGNAL \seg_d[3]~output_o\ : std_logic;
SIGNAL \seg_d[2]~output_o\ : std_logic;
SIGNAL \seg_d[1]~output_o\ : std_logic;
SIGNAL \seg_d[0]~output_o\ : std_logic;
SIGNAL \min_u[6]~output_o\ : std_logic;
SIGNAL \min_u[5]~output_o\ : std_logic;
SIGNAL \min_u[4]~output_o\ : std_logic;
SIGNAL \min_u[3]~output_o\ : std_logic;
SIGNAL \min_u[2]~output_o\ : std_logic;
SIGNAL \min_u[1]~output_o\ : std_logic;
SIGNAL \min_u[0]~output_o\ : std_logic;
SIGNAL \min_d[6]~output_o\ : std_logic;
SIGNAL \min_d[5]~output_o\ : std_logic;
SIGNAL \min_d[4]~output_o\ : std_logic;
SIGNAL \min_d[3]~output_o\ : std_logic;
SIGNAL \min_d[2]~output_o\ : std_logic;
SIGNAL \min_d[1]~output_o\ : std_logic;
SIGNAL \min_d[0]~output_o\ : std_logic;
SIGNAL \timer_1|v_cseg_u[0]~2_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \timer_1|Add0~0_combout\ : std_logic;
SIGNAL \timer_1|Add0~1\ : std_logic;
SIGNAL \timer_1|Add0~2_combout\ : std_logic;
SIGNAL \timer_1|Add0~3\ : std_logic;
SIGNAL \timer_1|Add0~5\ : std_logic;
SIGNAL \timer_1|Add0~7\ : std_logic;
SIGNAL \timer_1|Add0~8_combout\ : std_logic;
SIGNAL \timer_1|Add0~9\ : std_logic;
SIGNAL \timer_1|Add0~11\ : std_logic;
SIGNAL \timer_1|Add0~12_combout\ : std_logic;
SIGNAL \timer_1|Add0~13\ : std_logic;
SIGNAL \timer_1|Add0~15\ : std_logic;
SIGNAL \timer_1|Add0~16_combout\ : std_logic;
SIGNAL \timer_1|cseg_counter~8_combout\ : std_logic;
SIGNAL \timer_1|Add0~17\ : std_logic;
SIGNAL \timer_1|Add0~19\ : std_logic;
SIGNAL \timer_1|Add0~21\ : std_logic;
SIGNAL \timer_1|Add0~22_combout\ : std_logic;
SIGNAL \timer_1|Add0~23\ : std_logic;
SIGNAL \timer_1|Add0~24_combout\ : std_logic;
SIGNAL \timer_1|Add0~25\ : std_logic;
SIGNAL \timer_1|Add0~26_combout\ : std_logic;
SIGNAL \timer_1|Add0~18_combout\ : std_logic;
SIGNAL \timer_1|Add0~20_combout\ : std_logic;
SIGNAL \timer_1|Add0~14_combout\ : std_logic;
SIGNAL \timer_1|Add0~4_combout\ : std_logic;
SIGNAL \timer_1|Add0~6_combout\ : std_logic;
SIGNAL \timer_1|Equal0~0_combout\ : std_logic;
SIGNAL \timer_1|Add0~10_combout\ : std_logic;
SIGNAL \timer_1|Equal0~1_combout\ : std_logic;
SIGNAL \timer_1|Equal0~2_combout\ : std_logic;
SIGNAL \timer_1|Equal0~3_combout\ : std_logic;
SIGNAL \timer_1|Equal0~4_combout\ : std_logic;
SIGNAL \timer_1|Add0~27\ : std_logic;
SIGNAL \timer_1|Add0~28_combout\ : std_logic;
SIGNAL \timer_1|Equal0~5_combout\ : std_logic;
SIGNAL \timer_1|cseg_counter~12_combout\ : std_logic;
SIGNAL \timer_1|cseg_counter~10_combout\ : std_logic;
SIGNAL \timer_1|Add0~29\ : std_logic;
SIGNAL \timer_1|Add0~30_combout\ : std_logic;
SIGNAL \timer_1|cseg_counter~6_combout\ : std_logic;
SIGNAL \timer_1|Add0~31\ : std_logic;
SIGNAL \timer_1|Add0~33\ : std_logic;
SIGNAL \timer_1|Add0~35\ : std_logic;
SIGNAL \timer_1|Add0~36_combout\ : std_logic;
SIGNAL \timer_1|cseg_counter~11_combout\ : std_logic;
SIGNAL \timer_1|Add0~34_combout\ : std_logic;
SIGNAL \timer_1|Add0~32_combout\ : std_logic;
SIGNAL \timer_1|Equal0~6_combout\ : std_logic;
SIGNAL \timer_1|Add1~0_combout\ : std_logic;
SIGNAL \timer_1|v_cseg_u~1_combout\ : std_logic;
SIGNAL \timer_1|v_cseg_u~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux6~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux5~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux4~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux3~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux2~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux1~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux0~0_combout\ : std_logic;
SIGNAL \timer_1|v_cseg_d[0]~3_combout\ : std_logic;
SIGNAL \timer_1|Equal1~0_combout\ : std_logic;
SIGNAL \timer_1|v_cseg_d[3]~0_combout\ : std_logic;
SIGNAL \timer_1|Add2~0_combout\ : std_logic;
SIGNAL \timer_1|v_cseg_d~2_combout\ : std_logic;
SIGNAL \timer_1|v_cseg_d~1_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux13~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux12~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux11~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux10~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux9~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux8~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux7~0_combout\ : std_logic;
SIGNAL \timer_1|v_seg_u[0]~3_combout\ : std_logic;
SIGNAL \timer_1|v_seg_u[3]~0_combout\ : std_logic;
SIGNAL \timer_1|Add3~0_combout\ : std_logic;
SIGNAL \timer_1|v_seg_u~2_combout\ : std_logic;
SIGNAL \timer_1|v_seg_u~1_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux20~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux19~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux18~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux17~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux16~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux15~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux14~0_combout\ : std_logic;
SIGNAL \timer_1|v_seg_d[0]~3_combout\ : std_logic;
SIGNAL \timer_1|Equal3~0_combout\ : std_logic;
SIGNAL \timer_1|v_seg_d[0]~0_combout\ : std_logic;
SIGNAL \timer_1|v_seg_d~2_combout\ : std_logic;
SIGNAL \timer_1|v_seg_d~1_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux27~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux26~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux25~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux24~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux23~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux22~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux21~0_combout\ : std_logic;
SIGNAL \timer_1|v_min_u[0]~6_combout\ : std_logic;
SIGNAL \timer_1|v_min_u[3]~2_combout\ : std_logic;
SIGNAL \timer_1|Add5~0_combout\ : std_logic;
SIGNAL \timer_1|v_min_u~4_combout\ : std_logic;
SIGNAL \timer_1|v_min_u~3_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux34~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux33~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux32~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux31~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux30~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux29~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux28~0_combout\ : std_logic;
SIGNAL \timer_1|v_min_d[0]~3_combout\ : std_logic;
SIGNAL \timer_1|Equal5~0_combout\ : std_logic;
SIGNAL \timer_1|Equal4~0_combout\ : std_logic;
SIGNAL \timer_1|v_min_d[0]~0_combout\ : std_logic;
SIGNAL \timer_1|v_min_d~2_combout\ : std_logic;
SIGNAL \timer_1|v_min_d~1_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux41~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux40~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux39~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux38~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux37~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux36~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux35~0_combout\ : std_logic;
SIGNAL \timer_1|v_seg_u\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \timer_1|v_seg_d\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \timer_1|v_min_u\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \timer_1|v_min_d\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \timer_1|v_cseg_u\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \timer_1|v_cseg_d\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \timer_1|cseg_counter\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \bcd2ssd_1|ALT_INV_Mux36~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|ALT_INV_Mux34~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|ALT_INV_Mux22~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|ALT_INV_Mux20~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_RST <= RST;
ww_CLK <= CLK;
cseg_u <= ww_cseg_u;
cseg_d <= ww_cseg_d;
seg_u <= ww_seg_u;
seg_d <= ww_seg_d;
min_u <= ww_min_u;
min_d <= ww_min_d;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RST~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\bcd2ssd_1|ALT_INV_Mux36~0_combout\ <= NOT \bcd2ssd_1|Mux36~0_combout\;
\bcd2ssd_1|ALT_INV_Mux34~0_combout\ <= NOT \bcd2ssd_1|Mux34~0_combout\;
\bcd2ssd_1|ALT_INV_Mux22~0_combout\ <= NOT \bcd2ssd_1|Mux22~0_combout\;
\bcd2ssd_1|ALT_INV_Mux20~0_combout\ <= NOT \bcd2ssd_1|Mux20~0_combout\;
\bcd2ssd_1|ALT_INV_Mux13~0_combout\ <= NOT \bcd2ssd_1|Mux13~0_combout\;
\bcd2ssd_1|ALT_INV_Mux6~0_combout\ <= NOT \bcd2ssd_1|Mux6~0_combout\;

-- Location: FF_X2_Y53_N11
\timer_1|cseg_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|Add0~28_combout\,
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|cseg_counter\(14));

-- Location: FF_X2_Y53_N27
\timer_1|cseg_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|cseg_counter~7_combout\,
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|cseg_counter\(13));

-- Location: FF_X2_Y53_N3
\timer_1|cseg_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|Add0~20_combout\,
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|cseg_counter\(10));

-- Location: FF_X2_Y53_N1
\timer_1|cseg_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|Add0~18_combout\,
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|cseg_counter\(9));

-- Location: FF_X2_Y54_N29
\timer_1|cseg_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|Add0~14_combout\,
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|cseg_counter\(7));

-- Location: FF_X2_Y54_N11
\timer_1|cseg_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|cseg_counter~9_combout\,
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|cseg_counter\(5));

-- Location: FF_X2_Y54_N21
\timer_1|cseg_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|Add0~6_combout\,
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|cseg_counter\(3));

-- Location: FF_X2_Y54_N19
\timer_1|cseg_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|Add0~4_combout\,
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|cseg_counter\(2));

-- Location: LCCOMB_X3_Y53_N14
\timer_1|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Equal2~0_combout\ = (\timer_1|v_cseg_d\(3) & (\timer_1|v_cseg_d\(0) & (!\timer_1|v_cseg_d\(1) & !\timer_1|v_cseg_d\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|v_cseg_d\(3),
	datab => \timer_1|v_cseg_d\(0),
	datac => \timer_1|v_cseg_d\(1),
	datad => \timer_1|v_cseg_d\(2),
	combout => \timer_1|Equal2~0_combout\);

-- Location: LCCOMB_X2_Y53_N26
\timer_1|cseg_counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|cseg_counter~7_combout\ = (\timer_1|Add0~26_combout\ & !\timer_1|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|Add0~26_combout\,
	datac => \timer_1|Equal0~6_combout\,
	combout => \timer_1|cseg_counter~7_combout\);

-- Location: LCCOMB_X2_Y54_N10
\timer_1|cseg_counter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|cseg_counter~9_combout\ = (\timer_1|Add0~10_combout\ & !\timer_1|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer_1|Add0~10_combout\,
	datad => \timer_1|Equal0~6_combout\,
	combout => \timer_1|cseg_counter~9_combout\);

-- Location: LCCOMB_X1_Y53_N30
\timer_1|v_min_u[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|v_min_u[3]~5_combout\ = (\timer_1|Equal2~0_combout\ & (!\timer_1|v_seg_d\(1) & (\timer_1|v_seg_d\(0) & \timer_1|v_seg_d\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|Equal2~0_combout\,
	datab => \timer_1|v_seg_d\(1),
	datac => \timer_1|v_seg_d\(0),
	datad => \timer_1|v_seg_d\(2),
	combout => \timer_1|v_min_u[3]~5_combout\);

-- Location: IOIBUF_X0_Y36_N8
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G2
\CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOOBUF_X0_Y45_N16
\cseg_u[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd2ssd_1|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \cseg_u[6]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\cseg_u[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd2ssd_1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \cseg_u[5]~output_o\);

-- Location: IOOBUF_X0_Y45_N23
\cseg_u[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd2ssd_1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \cseg_u[4]~output_o\);

-- Location: IOOBUF_X0_Y48_N9
\cseg_u[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd2ssd_1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \cseg_u[3]~output_o\);

-- Location: IOOBUF_X0_Y49_N2
\cseg_u[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd2ssd_1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \cseg_u[2]~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\cseg_u[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd2ssd_1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \cseg_u[1]~output_o\);

-- Location: IOOBUF_X0_Y49_N9
\cseg_u[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd2ssd_1|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \cseg_u[0]~output_o\);

-- Location: IOOBUF_X0_Y53_N2
\cseg_d[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd2ssd_1|ALT_INV_Mux13~0_combout\,
	devoe => ww_devoe,
	o => \cseg_d[6]~output_o\);

-- Location: IOOBUF_X0_Y57_N16
\cseg_d[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd2ssd_1|Mux12~0_combout\,
	devoe => ww_devoe,
	o => \cseg_d[5]~output_o\);

-- Location: IOOBUF_X0_Y57_N23
\cseg_d[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd2ssd_1|Mux11~0_combout\,
	devoe => ww_devoe,
	o => \cseg_d[4]~output_o\);

-- Location: IOOBUF_X0_Y53_N9
\cseg_d[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd2ssd_1|Mux10~0_combout\,
	devoe => ww_devoe,
	o => \cseg_d[3]~output_o\);

-- Location: IOOBUF_X0_Y54_N9
\cseg_d[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd2ssd_1|Mux9~0_combout\,
	devoe => ww_devoe,
	o => \cseg_d[2]~output_o\);

-- Location: IOOBUF_X0_Y58_N16
\cseg_d[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd2ssd_1|Mux8~0_combout\,
	devoe => ww_devoe,
	o => \cseg_d[1]~output_o\);

-- Location: IOOBUF_X0_Y61_N23
\cseg_d[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd2ssd_1|Mux7~0_combout\,
	devoe => ww_devoe,
	o => \cseg_d[0]~output_o\);

-- Location: IOOBUF_X0_Y47_N16
\seg_u[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd2ssd_1|ALT_INV_Mux20~0_combout\,
	devoe => ww_devoe,
	o => \seg_u[6]~output_o\);

-- Location: IOOBUF_X0_Y50_N16
\seg_u[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd2ssd_1|Mux19~0_combout\,
	devoe => ww_devoe,
	o => \seg_u[5]~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\seg_u[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd2ssd_1|Mux18~0_combout\,
	devoe => ww_devoe,
	o => \seg_u[4]~output_o\);

-- Location: IOOBUF_X0_Y51_N16
\seg_u[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd2ssd_1|Mux17~0_combout\,
	devoe => ww_devoe,
	o => \seg_u[3]~output_o\);

-- Location: IOOBUF_X0_Y48_N2
\seg_u[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd2ssd_1|Mux16~0_combout\,
	devoe => ww_devoe,
	o => \seg_u[2]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\seg_u[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd2ssd_1|Mux15~0_combout\,
	devoe => ww_devoe,
	o => \seg_u[1]~output_o\);

-- Location: IOOBUF_X0_Y50_N23
\seg_u[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd2ssd_1|Mux14~0_combout\,
	devoe => ww_devoe,
	o => \seg_u[0]~output_o\);

-- Location: IOOBUF_X0_Y63_N16
\seg_d[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd2ssd_1|Mux27~0_combout\,
	devoe => ww_devoe,
	o => \seg_d[6]~output_o\);

-- Location: IOOBUF_X0_Y62_N16
\seg_d[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd2ssd_1|Mux26~0_combout\,
	devoe => ww_devoe,
	o => \seg_d[5]~output_o\);

-- Location: IOOBUF_X0_Y59_N23
\seg_d[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd2ssd_1|Mux25~0_combout\,
	devoe => ww_devoe,
	o => \seg_d[4]~output_o\);

-- Location: IOOBUF_X0_Y62_N23
\seg_d[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd2ssd_1|Mux24~0_combout\,
	devoe => ww_devoe,
	o => \seg_d[3]~output_o\);

-- Location: IOOBUF_X0_Y59_N16
\seg_d[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd2ssd_1|Mux23~0_combout\,
	devoe => ww_devoe,
	o => \seg_d[2]~output_o\);

-- Location: IOOBUF_X0_Y63_N23
\seg_d[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd2ssd_1|ALT_INV_Mux22~0_combout\,
	devoe => ww_devoe,
	o => \seg_d[1]~output_o\);

-- Location: IOOBUF_X0_Y64_N2
\seg_d[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd2ssd_1|Mux21~0_combout\,
	devoe => ww_devoe,
	o => \seg_d[0]~output_o\);

-- Location: IOOBUF_X0_Y52_N23
\min_u[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd2ssd_1|ALT_INV_Mux34~0_combout\,
	devoe => ww_devoe,
	o => \min_u[6]~output_o\);

-- Location: IOOBUF_X0_Y55_N16
\min_u[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd2ssd_1|Mux33~0_combout\,
	devoe => ww_devoe,
	o => \min_u[5]~output_o\);

-- Location: IOOBUF_X0_Y52_N2
\min_u[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd2ssd_1|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \min_u[4]~output_o\);

-- Location: IOOBUF_X0_Y52_N16
\min_u[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd2ssd_1|Mux31~0_combout\,
	devoe => ww_devoe,
	o => \min_u[3]~output_o\);

-- Location: IOOBUF_X0_Y60_N16
\min_u[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd2ssd_1|Mux30~0_combout\,
	devoe => ww_devoe,
	o => \min_u[2]~output_o\);

-- Location: IOOBUF_X0_Y55_N23
\min_u[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd2ssd_1|Mux29~0_combout\,
	devoe => ww_devoe,
	o => \min_u[1]~output_o\);

-- Location: IOOBUF_X0_Y55_N9
\min_u[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd2ssd_1|Mux28~0_combout\,
	devoe => ww_devoe,
	o => \min_u[0]~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\min_d[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd2ssd_1|Mux41~0_combout\,
	devoe => ww_devoe,
	o => \min_d[6]~output_o\);

-- Location: IOOBUF_X0_Y43_N16
\min_d[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd2ssd_1|Mux40~0_combout\,
	devoe => ww_devoe,
	o => \min_d[5]~output_o\);

-- Location: IOOBUF_X0_Y46_N16
\min_d[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd2ssd_1|Mux39~0_combout\,
	devoe => ww_devoe,
	o => \min_d[4]~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\min_d[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd2ssd_1|Mux38~0_combout\,
	devoe => ww_devoe,
	o => \min_d[3]~output_o\);

-- Location: IOOBUF_X0_Y42_N2
\min_d[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd2ssd_1|Mux37~0_combout\,
	devoe => ww_devoe,
	o => \min_d[2]~output_o\);

-- Location: IOOBUF_X0_Y42_N9
\min_d[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd2ssd_1|ALT_INV_Mux36~0_combout\,
	devoe => ww_devoe,
	o => \min_d[1]~output_o\);

-- Location: IOOBUF_X0_Y46_N23
\min_d[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd2ssd_1|Mux35~0_combout\,
	devoe => ww_devoe,
	o => \min_d[0]~output_o\);

-- Location: LCCOMB_X3_Y53_N12
\timer_1|v_cseg_u[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|v_cseg_u[0]~2_combout\ = !\timer_1|v_cseg_u\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \timer_1|v_cseg_u\(0),
	combout => \timer_1|v_cseg_u[0]~2_combout\);

-- Location: IOIBUF_X0_Y36_N15
\RST~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: CLKCTRL_G4
\RST~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RST~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RST~inputclkctrl_outclk\);

-- Location: LCCOMB_X2_Y54_N14
\timer_1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add0~0_combout\ = \timer_1|cseg_counter\(0) $ (VCC)
-- \timer_1|Add0~1\ = CARRY(\timer_1|cseg_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|cseg_counter\(0),
	datad => VCC,
	combout => \timer_1|Add0~0_combout\,
	cout => \timer_1|Add0~1\);

-- Location: FF_X2_Y54_N15
\timer_1|cseg_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|Add0~0_combout\,
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|cseg_counter\(0));

-- Location: LCCOMB_X2_Y54_N16
\timer_1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add0~2_combout\ = (\timer_1|cseg_counter\(1) & (!\timer_1|Add0~1\)) # (!\timer_1|cseg_counter\(1) & ((\timer_1|Add0~1\) # (GND)))
-- \timer_1|Add0~3\ = CARRY((!\timer_1|Add0~1\) # (!\timer_1|cseg_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|cseg_counter\(1),
	datad => VCC,
	cin => \timer_1|Add0~1\,
	combout => \timer_1|Add0~2_combout\,
	cout => \timer_1|Add0~3\);

-- Location: FF_X2_Y54_N17
\timer_1|cseg_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|Add0~2_combout\,
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|cseg_counter\(1));

-- Location: LCCOMB_X2_Y54_N18
\timer_1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add0~4_combout\ = (\timer_1|cseg_counter\(2) & (\timer_1|Add0~3\ $ (GND))) # (!\timer_1|cseg_counter\(2) & (!\timer_1|Add0~3\ & VCC))
-- \timer_1|Add0~5\ = CARRY((\timer_1|cseg_counter\(2) & !\timer_1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|cseg_counter\(2),
	datad => VCC,
	cin => \timer_1|Add0~3\,
	combout => \timer_1|Add0~4_combout\,
	cout => \timer_1|Add0~5\);

-- Location: LCCOMB_X2_Y54_N20
\timer_1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add0~6_combout\ = (\timer_1|cseg_counter\(3) & (!\timer_1|Add0~5\)) # (!\timer_1|cseg_counter\(3) & ((\timer_1|Add0~5\) # (GND)))
-- \timer_1|Add0~7\ = CARRY((!\timer_1|Add0~5\) # (!\timer_1|cseg_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|cseg_counter\(3),
	datad => VCC,
	cin => \timer_1|Add0~5\,
	combout => \timer_1|Add0~6_combout\,
	cout => \timer_1|Add0~7\);

-- Location: LCCOMB_X2_Y54_N22
\timer_1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add0~8_combout\ = (\timer_1|cseg_counter\(4) & (\timer_1|Add0~7\ $ (GND))) # (!\timer_1|cseg_counter\(4) & (!\timer_1|Add0~7\ & VCC))
-- \timer_1|Add0~9\ = CARRY((\timer_1|cseg_counter\(4) & !\timer_1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|cseg_counter\(4),
	datad => VCC,
	cin => \timer_1|Add0~7\,
	combout => \timer_1|Add0~8_combout\,
	cout => \timer_1|Add0~9\);

-- Location: FF_X2_Y54_N23
\timer_1|cseg_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|Add0~8_combout\,
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|cseg_counter\(4));

-- Location: LCCOMB_X2_Y54_N24
\timer_1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add0~10_combout\ = (\timer_1|cseg_counter\(5) & (!\timer_1|Add0~9\)) # (!\timer_1|cseg_counter\(5) & ((\timer_1|Add0~9\) # (GND)))
-- \timer_1|Add0~11\ = CARRY((!\timer_1|Add0~9\) # (!\timer_1|cseg_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|cseg_counter\(5),
	datad => VCC,
	cin => \timer_1|Add0~9\,
	combout => \timer_1|Add0~10_combout\,
	cout => \timer_1|Add0~11\);

-- Location: LCCOMB_X2_Y54_N26
\timer_1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add0~12_combout\ = (\timer_1|cseg_counter\(6) & (\timer_1|Add0~11\ $ (GND))) # (!\timer_1|cseg_counter\(6) & (!\timer_1|Add0~11\ & VCC))
-- \timer_1|Add0~13\ = CARRY((\timer_1|cseg_counter\(6) & !\timer_1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|cseg_counter\(6),
	datad => VCC,
	cin => \timer_1|Add0~11\,
	combout => \timer_1|Add0~12_combout\,
	cout => \timer_1|Add0~13\);

-- Location: FF_X2_Y54_N27
\timer_1|cseg_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|Add0~12_combout\,
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|cseg_counter\(6));

-- Location: LCCOMB_X2_Y54_N28
\timer_1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add0~14_combout\ = (\timer_1|cseg_counter\(7) & (!\timer_1|Add0~13\)) # (!\timer_1|cseg_counter\(7) & ((\timer_1|Add0~13\) # (GND)))
-- \timer_1|Add0~15\ = CARRY((!\timer_1|Add0~13\) # (!\timer_1|cseg_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|cseg_counter\(7),
	datad => VCC,
	cin => \timer_1|Add0~13\,
	combout => \timer_1|Add0~14_combout\,
	cout => \timer_1|Add0~15\);

-- Location: LCCOMB_X2_Y54_N30
\timer_1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add0~16_combout\ = (\timer_1|cseg_counter\(8) & (\timer_1|Add0~15\ $ (GND))) # (!\timer_1|cseg_counter\(8) & (!\timer_1|Add0~15\ & VCC))
-- \timer_1|Add0~17\ = CARRY((\timer_1|cseg_counter\(8) & !\timer_1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|cseg_counter\(8),
	datad => VCC,
	cin => \timer_1|Add0~15\,
	combout => \timer_1|Add0~16_combout\,
	cout => \timer_1|Add0~17\);

-- Location: LCCOMB_X2_Y54_N0
\timer_1|cseg_counter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|cseg_counter~8_combout\ = (\timer_1|Add0~16_combout\ & !\timer_1|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer_1|Add0~16_combout\,
	datad => \timer_1|Equal0~6_combout\,
	combout => \timer_1|cseg_counter~8_combout\);

-- Location: FF_X2_Y54_N1
\timer_1|cseg_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|cseg_counter~8_combout\,
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|cseg_counter\(8));

-- Location: LCCOMB_X2_Y53_N0
\timer_1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add0~18_combout\ = (\timer_1|cseg_counter\(9) & (!\timer_1|Add0~17\)) # (!\timer_1|cseg_counter\(9) & ((\timer_1|Add0~17\) # (GND)))
-- \timer_1|Add0~19\ = CARRY((!\timer_1|Add0~17\) # (!\timer_1|cseg_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|cseg_counter\(9),
	datad => VCC,
	cin => \timer_1|Add0~17\,
	combout => \timer_1|Add0~18_combout\,
	cout => \timer_1|Add0~19\);

-- Location: LCCOMB_X2_Y53_N2
\timer_1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add0~20_combout\ = (\timer_1|cseg_counter\(10) & (\timer_1|Add0~19\ $ (GND))) # (!\timer_1|cseg_counter\(10) & (!\timer_1|Add0~19\ & VCC))
-- \timer_1|Add0~21\ = CARRY((\timer_1|cseg_counter\(10) & !\timer_1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|cseg_counter\(10),
	datad => VCC,
	cin => \timer_1|Add0~19\,
	combout => \timer_1|Add0~20_combout\,
	cout => \timer_1|Add0~21\);

-- Location: LCCOMB_X2_Y53_N4
\timer_1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add0~22_combout\ = (\timer_1|cseg_counter\(11) & (!\timer_1|Add0~21\)) # (!\timer_1|cseg_counter\(11) & ((\timer_1|Add0~21\) # (GND)))
-- \timer_1|Add0~23\ = CARRY((!\timer_1|Add0~21\) # (!\timer_1|cseg_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|cseg_counter\(11),
	datad => VCC,
	cin => \timer_1|Add0~21\,
	combout => \timer_1|Add0~22_combout\,
	cout => \timer_1|Add0~23\);

-- Location: FF_X2_Y53_N5
\timer_1|cseg_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|Add0~22_combout\,
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|cseg_counter\(11));

-- Location: LCCOMB_X2_Y53_N6
\timer_1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add0~24_combout\ = (\timer_1|cseg_counter\(12) & (\timer_1|Add0~23\ $ (GND))) # (!\timer_1|cseg_counter\(12) & (!\timer_1|Add0~23\ & VCC))
-- \timer_1|Add0~25\ = CARRY((\timer_1|cseg_counter\(12) & !\timer_1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|cseg_counter\(12),
	datad => VCC,
	cin => \timer_1|Add0~23\,
	combout => \timer_1|Add0~24_combout\,
	cout => \timer_1|Add0~25\);

-- Location: FF_X2_Y53_N7
\timer_1|cseg_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|Add0~24_combout\,
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|cseg_counter\(12));

-- Location: LCCOMB_X2_Y53_N8
\timer_1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add0~26_combout\ = (\timer_1|cseg_counter\(13) & (!\timer_1|Add0~25\)) # (!\timer_1|cseg_counter\(13) & ((\timer_1|Add0~25\) # (GND)))
-- \timer_1|Add0~27\ = CARRY((!\timer_1|Add0~25\) # (!\timer_1|cseg_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|cseg_counter\(13),
	datad => VCC,
	cin => \timer_1|Add0~25\,
	combout => \timer_1|Add0~26_combout\,
	cout => \timer_1|Add0~27\);

-- Location: LCCOMB_X2_Y54_N8
\timer_1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Equal0~0_combout\ = (!\timer_1|Add0~0_combout\ & (!\timer_1|Add0~4_combout\ & (!\timer_1|Add0~2_combout\ & !\timer_1|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|Add0~0_combout\,
	datab => \timer_1|Add0~4_combout\,
	datac => \timer_1|Add0~2_combout\,
	datad => \timer_1|Add0~6_combout\,
	combout => \timer_1|Equal0~0_combout\);

-- Location: LCCOMB_X2_Y54_N2
\timer_1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Equal0~1_combout\ = (!\timer_1|Add0~8_combout\ & \timer_1|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer_1|Add0~8_combout\,
	datad => \timer_1|Add0~10_combout\,
	combout => \timer_1|Equal0~1_combout\);

-- Location: LCCOMB_X2_Y54_N12
\timer_1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Equal0~2_combout\ = (!\timer_1|Add0~12_combout\ & (!\timer_1|Add0~14_combout\ & (\timer_1|Equal0~0_combout\ & \timer_1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|Add0~12_combout\,
	datab => \timer_1|Add0~14_combout\,
	datac => \timer_1|Equal0~0_combout\,
	datad => \timer_1|Equal0~1_combout\,
	combout => \timer_1|Equal0~2_combout\);

-- Location: LCCOMB_X2_Y53_N28
\timer_1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Equal0~3_combout\ = (\timer_1|Add0~16_combout\ & (!\timer_1|Add0~18_combout\ & (!\timer_1|Add0~20_combout\ & \timer_1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|Add0~16_combout\,
	datab => \timer_1|Add0~18_combout\,
	datac => \timer_1|Add0~20_combout\,
	datad => \timer_1|Equal0~2_combout\,
	combout => \timer_1|Equal0~3_combout\);

-- Location: LCCOMB_X2_Y53_N30
\timer_1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Equal0~4_combout\ = (!\timer_1|Add0~24_combout\ & (\timer_1|Add0~26_combout\ & (!\timer_1|Add0~22_combout\ & \timer_1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|Add0~24_combout\,
	datab => \timer_1|Add0~26_combout\,
	datac => \timer_1|Add0~22_combout\,
	datad => \timer_1|Equal0~3_combout\,
	combout => \timer_1|Equal0~4_combout\);

-- Location: LCCOMB_X2_Y53_N10
\timer_1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add0~28_combout\ = (\timer_1|cseg_counter\(14) & (\timer_1|Add0~27\ $ (GND))) # (!\timer_1|cseg_counter\(14) & (!\timer_1|Add0~27\ & VCC))
-- \timer_1|Add0~29\ = CARRY((\timer_1|cseg_counter\(14) & !\timer_1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|cseg_counter\(14),
	datad => VCC,
	cin => \timer_1|Add0~27\,
	combout => \timer_1|Add0~28_combout\,
	cout => \timer_1|Add0~29\);

-- Location: LCCOMB_X2_Y53_N20
\timer_1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Equal0~5_combout\ = (\timer_1|Add0~30_combout\ & (\timer_1|Equal0~4_combout\ & !\timer_1|Add0~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|Add0~30_combout\,
	datac => \timer_1|Equal0~4_combout\,
	datad => \timer_1|Add0~28_combout\,
	combout => \timer_1|Equal0~5_combout\);

-- Location: LCCOMB_X3_Y53_N18
\timer_1|cseg_counter~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|cseg_counter~12_combout\ = (\timer_1|Add0~36_combout\ & (((!\timer_1|Equal0~5_combout\) # (!\timer_1|Add0~34_combout\)) # (!\timer_1|Add0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|Add0~32_combout\,
	datab => \timer_1|Add0~36_combout\,
	datac => \timer_1|Add0~34_combout\,
	datad => \timer_1|Equal0~5_combout\,
	combout => \timer_1|cseg_counter~12_combout\);

-- Location: FF_X3_Y53_N19
\timer_1|cseg_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|cseg_counter~12_combout\,
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|cseg_counter\(18));

-- Location: LCCOMB_X3_Y53_N10
\timer_1|cseg_counter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|cseg_counter~10_combout\ = (\timer_1|Add0~32_combout\ & (((!\timer_1|Equal0~5_combout\) # (!\timer_1|Add0~34_combout\)) # (!\timer_1|Add0~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|Add0~32_combout\,
	datab => \timer_1|Add0~36_combout\,
	datac => \timer_1|Add0~34_combout\,
	datad => \timer_1|Equal0~5_combout\,
	combout => \timer_1|cseg_counter~10_combout\);

-- Location: FF_X3_Y53_N11
\timer_1|cseg_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|cseg_counter~10_combout\,
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|cseg_counter\(16));

-- Location: LCCOMB_X2_Y53_N12
\timer_1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add0~30_combout\ = (\timer_1|cseg_counter\(15) & (!\timer_1|Add0~29\)) # (!\timer_1|cseg_counter\(15) & ((\timer_1|Add0~29\) # (GND)))
-- \timer_1|Add0~31\ = CARRY((!\timer_1|Add0~29\) # (!\timer_1|cseg_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|cseg_counter\(15),
	datad => VCC,
	cin => \timer_1|Add0~29\,
	combout => \timer_1|Add0~30_combout\,
	cout => \timer_1|Add0~31\);

-- Location: LCCOMB_X2_Y53_N24
\timer_1|cseg_counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|cseg_counter~6_combout\ = (!\timer_1|Equal0~6_combout\ & \timer_1|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer_1|Equal0~6_combout\,
	datad => \timer_1|Add0~30_combout\,
	combout => \timer_1|cseg_counter~6_combout\);

-- Location: FF_X2_Y53_N25
\timer_1|cseg_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|cseg_counter~6_combout\,
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|cseg_counter\(15));

-- Location: LCCOMB_X2_Y53_N14
\timer_1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add0~32_combout\ = (\timer_1|cseg_counter\(16) & (\timer_1|Add0~31\ $ (GND))) # (!\timer_1|cseg_counter\(16) & (!\timer_1|Add0~31\ & VCC))
-- \timer_1|Add0~33\ = CARRY((\timer_1|cseg_counter\(16) & !\timer_1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|cseg_counter\(16),
	datad => VCC,
	cin => \timer_1|Add0~31\,
	combout => \timer_1|Add0~32_combout\,
	cout => \timer_1|Add0~33\);

-- Location: LCCOMB_X2_Y53_N16
\timer_1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add0~34_combout\ = (\timer_1|cseg_counter\(17) & (!\timer_1|Add0~33\)) # (!\timer_1|cseg_counter\(17) & ((\timer_1|Add0~33\) # (GND)))
-- \timer_1|Add0~35\ = CARRY((!\timer_1|Add0~33\) # (!\timer_1|cseg_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|cseg_counter\(17),
	datad => VCC,
	cin => \timer_1|Add0~33\,
	combout => \timer_1|Add0~34_combout\,
	cout => \timer_1|Add0~35\);

-- Location: LCCOMB_X2_Y53_N18
\timer_1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add0~36_combout\ = \timer_1|Add0~35\ $ (!\timer_1|cseg_counter\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \timer_1|cseg_counter\(18),
	cin => \timer_1|Add0~35\,
	combout => \timer_1|Add0~36_combout\);

-- Location: LCCOMB_X3_Y53_N24
\timer_1|cseg_counter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|cseg_counter~11_combout\ = (\timer_1|Add0~34_combout\ & (((!\timer_1|Equal0~5_combout\) # (!\timer_1|Add0~36_combout\)) # (!\timer_1|Add0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|Add0~32_combout\,
	datab => \timer_1|Add0~36_combout\,
	datac => \timer_1|Add0~34_combout\,
	datad => \timer_1|Equal0~5_combout\,
	combout => \timer_1|cseg_counter~11_combout\);

-- Location: FF_X3_Y53_N25
\timer_1|cseg_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|cseg_counter~11_combout\,
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|cseg_counter\(17));

-- Location: LCCOMB_X2_Y53_N22
\timer_1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Equal0~6_combout\ = (\timer_1|Add0~36_combout\ & (\timer_1|Add0~34_combout\ & (\timer_1|Add0~32_combout\ & \timer_1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|Add0~36_combout\,
	datab => \timer_1|Add0~34_combout\,
	datac => \timer_1|Add0~32_combout\,
	datad => \timer_1|Equal0~5_combout\,
	combout => \timer_1|Equal0~6_combout\);

-- Location: FF_X2_Y53_N19
\timer_1|v_cseg_u[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \timer_1|v_cseg_u[0]~2_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \timer_1|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|v_cseg_u\(0));

-- Location: LCCOMB_X1_Y49_N16
\timer_1|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add1~0_combout\ = \timer_1|v_cseg_u\(2) $ (((\timer_1|v_cseg_u\(0) & \timer_1|v_cseg_u\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|v_cseg_u\(0),
	datac => \timer_1|v_cseg_u\(1),
	datad => \timer_1|v_cseg_u\(2),
	combout => \timer_1|Add1~0_combout\);

-- Location: FF_X2_Y53_N17
\timer_1|v_cseg_u[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \timer_1|Add1~0_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \timer_1|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|v_cseg_u\(2));

-- Location: LCCOMB_X1_Y49_N6
\timer_1|v_cseg_u~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|v_cseg_u~1_combout\ = (\timer_1|v_cseg_u\(0) & ((\timer_1|v_cseg_u\(1) & (\timer_1|v_cseg_u\(3) $ (\timer_1|v_cseg_u\(2)))) # (!\timer_1|v_cseg_u\(1) & (\timer_1|v_cseg_u\(3) & \timer_1|v_cseg_u\(2))))) # (!\timer_1|v_cseg_u\(0) & 
-- (((\timer_1|v_cseg_u\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|v_cseg_u\(0),
	datab => \timer_1|v_cseg_u\(1),
	datac => \timer_1|v_cseg_u\(3),
	datad => \timer_1|v_cseg_u\(2),
	combout => \timer_1|v_cseg_u~1_combout\);

-- Location: FF_X2_Y53_N9
\timer_1|v_cseg_u[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \timer_1|v_cseg_u~1_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \timer_1|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|v_cseg_u\(3));

-- Location: LCCOMB_X1_Y49_N26
\timer_1|v_cseg_u~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|v_cseg_u~0_combout\ = (\timer_1|v_cseg_u\(0) & (!\timer_1|v_cseg_u\(1) & ((\timer_1|v_cseg_u\(2)) # (!\timer_1|v_cseg_u\(3))))) # (!\timer_1|v_cseg_u\(0) & (\timer_1|v_cseg_u\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|v_cseg_u\(0),
	datab => \timer_1|v_cseg_u\(1),
	datac => \timer_1|v_cseg_u\(3),
	datad => \timer_1|v_cseg_u\(2),
	combout => \timer_1|v_cseg_u~0_combout\);

-- Location: FF_X2_Y53_N15
\timer_1|v_cseg_u[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \timer_1|v_cseg_u~0_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \timer_1|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|v_cseg_u\(1));

-- Location: LCCOMB_X1_Y49_N8
\bcd2ssd_1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux6~0_combout\ = (\timer_1|v_cseg_u\(3)) # ((\timer_1|v_cseg_u\(1) & ((!\timer_1|v_cseg_u\(2)) # (!\timer_1|v_cseg_u\(0)))) # (!\timer_1|v_cseg_u\(1) & ((\timer_1|v_cseg_u\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|v_cseg_u\(0),
	datab => \timer_1|v_cseg_u\(1),
	datac => \timer_1|v_cseg_u\(3),
	datad => \timer_1|v_cseg_u\(2),
	combout => \bcd2ssd_1|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y49_N2
\bcd2ssd_1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux5~0_combout\ = (!\timer_1|v_cseg_u\(3) & ((\timer_1|v_cseg_u\(0) & ((\timer_1|v_cseg_u\(1)) # (!\timer_1|v_cseg_u\(2)))) # (!\timer_1|v_cseg_u\(0) & (\timer_1|v_cseg_u\(1) & !\timer_1|v_cseg_u\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|v_cseg_u\(0),
	datab => \timer_1|v_cseg_u\(1),
	datac => \timer_1|v_cseg_u\(3),
	datad => \timer_1|v_cseg_u\(2),
	combout => \bcd2ssd_1|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y49_N28
\bcd2ssd_1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux4~0_combout\ = (\timer_1|v_cseg_u\(1) & (\timer_1|v_cseg_u\(0) & (!\timer_1|v_cseg_u\(3)))) # (!\timer_1|v_cseg_u\(1) & ((\timer_1|v_cseg_u\(2) & ((!\timer_1|v_cseg_u\(3)))) # (!\timer_1|v_cseg_u\(2) & (\timer_1|v_cseg_u\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|v_cseg_u\(0),
	datab => \timer_1|v_cseg_u\(1),
	datac => \timer_1|v_cseg_u\(3),
	datad => \timer_1|v_cseg_u\(2),
	combout => \bcd2ssd_1|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y49_N22
\bcd2ssd_1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux3~0_combout\ = (!\timer_1|v_cseg_u\(3) & ((\timer_1|v_cseg_u\(0) & (\timer_1|v_cseg_u\(1) $ (!\timer_1|v_cseg_u\(2)))) # (!\timer_1|v_cseg_u\(0) & (!\timer_1|v_cseg_u\(1) & \timer_1|v_cseg_u\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|v_cseg_u\(0),
	datab => \timer_1|v_cseg_u\(1),
	datac => \timer_1|v_cseg_u\(3),
	datad => \timer_1|v_cseg_u\(2),
	combout => \bcd2ssd_1|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y49_N12
\bcd2ssd_1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux2~0_combout\ = (\timer_1|v_cseg_u\(2) & (((\timer_1|v_cseg_u\(3))))) # (!\timer_1|v_cseg_u\(2) & (\timer_1|v_cseg_u\(1) & ((\timer_1|v_cseg_u\(3)) # (!\timer_1|v_cseg_u\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|v_cseg_u\(0),
	datab => \timer_1|v_cseg_u\(1),
	datac => \timer_1|v_cseg_u\(3),
	datad => \timer_1|v_cseg_u\(2),
	combout => \bcd2ssd_1|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y49_N30
\bcd2ssd_1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux1~0_combout\ = (\timer_1|v_cseg_u\(3) & (((\timer_1|v_cseg_u\(1)) # (\timer_1|v_cseg_u\(2))))) # (!\timer_1|v_cseg_u\(3) & (\timer_1|v_cseg_u\(2) & (\timer_1|v_cseg_u\(0) $ (\timer_1|v_cseg_u\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|v_cseg_u\(0),
	datab => \timer_1|v_cseg_u\(1),
	datac => \timer_1|v_cseg_u\(3),
	datad => \timer_1|v_cseg_u\(2),
	combout => \bcd2ssd_1|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y49_N0
\bcd2ssd_1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux0~0_combout\ = (!\timer_1|v_cseg_u\(1) & (!\timer_1|v_cseg_u\(3) & (\timer_1|v_cseg_u\(0) $ (\timer_1|v_cseg_u\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|v_cseg_u\(0),
	datab => \timer_1|v_cseg_u\(1),
	datac => \timer_1|v_cseg_u\(3),
	datad => \timer_1|v_cseg_u\(2),
	combout => \bcd2ssd_1|Mux0~0_combout\);

-- Location: LCCOMB_X3_Y53_N0
\timer_1|v_cseg_d[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|v_cseg_d[0]~3_combout\ = !\timer_1|v_cseg_d\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer_1|v_cseg_d\(0),
	combout => \timer_1|v_cseg_d[0]~3_combout\);

-- Location: LCCOMB_X1_Y49_N4
\timer_1|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Equal1~0_combout\ = (\timer_1|v_cseg_u\(0) & (!\timer_1|v_cseg_u\(1) & (\timer_1|v_cseg_u\(3) & !\timer_1|v_cseg_u\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|v_cseg_u\(0),
	datab => \timer_1|v_cseg_u\(1),
	datac => \timer_1|v_cseg_u\(3),
	datad => \timer_1|v_cseg_u\(2),
	combout => \timer_1|Equal1~0_combout\);

-- Location: LCCOMB_X3_Y53_N8
\timer_1|v_cseg_d[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|v_cseg_d[3]~0_combout\ = (\timer_1|Equal1~0_combout\ & \timer_1|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer_1|Equal1~0_combout\,
	datad => \timer_1|Equal0~6_combout\,
	combout => \timer_1|v_cseg_d[3]~0_combout\);

-- Location: FF_X3_Y53_N1
\timer_1|v_cseg_d[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|v_cseg_d[0]~3_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \timer_1|v_cseg_d[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|v_cseg_d\(0));

-- Location: LCCOMB_X3_Y53_N16
\timer_1|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add2~0_combout\ = \timer_1|v_cseg_d\(2) $ (((\timer_1|v_cseg_d\(1) & \timer_1|v_cseg_d\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|v_cseg_d\(1),
	datac => \timer_1|v_cseg_d\(2),
	datad => \timer_1|v_cseg_d\(0),
	combout => \timer_1|Add2~0_combout\);

-- Location: FF_X3_Y53_N17
\timer_1|v_cseg_d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|Add2~0_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \timer_1|v_cseg_d[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|v_cseg_d\(2));

-- Location: LCCOMB_X3_Y53_N22
\timer_1|v_cseg_d~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|v_cseg_d~2_combout\ = (\timer_1|v_cseg_d\(1) & (\timer_1|v_cseg_d\(3) $ (((\timer_1|v_cseg_d\(0) & \timer_1|v_cseg_d\(2)))))) # (!\timer_1|v_cseg_d\(1) & (\timer_1|v_cseg_d\(3) & ((\timer_1|v_cseg_d\(2)) # (!\timer_1|v_cseg_d\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|v_cseg_d\(1),
	datab => \timer_1|v_cseg_d\(0),
	datac => \timer_1|v_cseg_d\(3),
	datad => \timer_1|v_cseg_d\(2),
	combout => \timer_1|v_cseg_d~2_combout\);

-- Location: FF_X3_Y53_N23
\timer_1|v_cseg_d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|v_cseg_d~2_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \timer_1|v_cseg_d[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|v_cseg_d\(3));

-- Location: LCCOMB_X3_Y53_N26
\timer_1|v_cseg_d~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|v_cseg_d~1_combout\ = (\timer_1|v_cseg_d\(0) & (!\timer_1|v_cseg_d\(1) & ((\timer_1|v_cseg_d\(2)) # (!\timer_1|v_cseg_d\(3))))) # (!\timer_1|v_cseg_d\(0) & (((\timer_1|v_cseg_d\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|v_cseg_d\(3),
	datab => \timer_1|v_cseg_d\(0),
	datac => \timer_1|v_cseg_d\(1),
	datad => \timer_1|v_cseg_d\(2),
	combout => \timer_1|v_cseg_d~1_combout\);

-- Location: FF_X3_Y53_N27
\timer_1|v_cseg_d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|v_cseg_d~1_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \timer_1|v_cseg_d[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|v_cseg_d\(1));

-- Location: LCCOMB_X1_Y53_N16
\bcd2ssd_1|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux13~0_combout\ = (\timer_1|v_cseg_d\(3)) # ((\timer_1|v_cseg_d\(1) & ((!\timer_1|v_cseg_d\(2)) # (!\timer_1|v_cseg_d\(0)))) # (!\timer_1|v_cseg_d\(1) & ((\timer_1|v_cseg_d\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|v_cseg_d\(3),
	datab => \timer_1|v_cseg_d\(0),
	datac => \timer_1|v_cseg_d\(1),
	datad => \timer_1|v_cseg_d\(2),
	combout => \bcd2ssd_1|Mux13~0_combout\);

-- Location: LCCOMB_X1_Y53_N26
\bcd2ssd_1|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux12~0_combout\ = (!\timer_1|v_cseg_d\(3) & ((\timer_1|v_cseg_d\(0) & ((\timer_1|v_cseg_d\(1)) # (!\timer_1|v_cseg_d\(2)))) # (!\timer_1|v_cseg_d\(0) & (\timer_1|v_cseg_d\(1) & !\timer_1|v_cseg_d\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|v_cseg_d\(3),
	datab => \timer_1|v_cseg_d\(0),
	datac => \timer_1|v_cseg_d\(1),
	datad => \timer_1|v_cseg_d\(2),
	combout => \bcd2ssd_1|Mux12~0_combout\);

-- Location: LCCOMB_X1_Y53_N0
\bcd2ssd_1|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux11~0_combout\ = (\timer_1|v_cseg_d\(1) & (!\timer_1|v_cseg_d\(3) & (\timer_1|v_cseg_d\(0)))) # (!\timer_1|v_cseg_d\(1) & ((\timer_1|v_cseg_d\(2) & (!\timer_1|v_cseg_d\(3))) # (!\timer_1|v_cseg_d\(2) & ((\timer_1|v_cseg_d\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|v_cseg_d\(3),
	datab => \timer_1|v_cseg_d\(0),
	datac => \timer_1|v_cseg_d\(1),
	datad => \timer_1|v_cseg_d\(2),
	combout => \bcd2ssd_1|Mux11~0_combout\);

-- Location: LCCOMB_X1_Y53_N10
\bcd2ssd_1|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux10~0_combout\ = (!\timer_1|v_cseg_d\(3) & ((\timer_1|v_cseg_d\(0) & (\timer_1|v_cseg_d\(1) $ (!\timer_1|v_cseg_d\(2)))) # (!\timer_1|v_cseg_d\(0) & (!\timer_1|v_cseg_d\(1) & \timer_1|v_cseg_d\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|v_cseg_d\(3),
	datab => \timer_1|v_cseg_d\(0),
	datac => \timer_1|v_cseg_d\(1),
	datad => \timer_1|v_cseg_d\(2),
	combout => \bcd2ssd_1|Mux10~0_combout\);

-- Location: LCCOMB_X1_Y53_N24
\bcd2ssd_1|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux9~0_combout\ = (\timer_1|v_cseg_d\(2) & (\timer_1|v_cseg_d\(3))) # (!\timer_1|v_cseg_d\(2) & (\timer_1|v_cseg_d\(1) & ((\timer_1|v_cseg_d\(3)) # (!\timer_1|v_cseg_d\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|v_cseg_d\(3),
	datab => \timer_1|v_cseg_d\(0),
	datac => \timer_1|v_cseg_d\(1),
	datad => \timer_1|v_cseg_d\(2),
	combout => \bcd2ssd_1|Mux9~0_combout\);

-- Location: LCCOMB_X3_Y53_N4
\bcd2ssd_1|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux8~0_combout\ = (\timer_1|v_cseg_d\(3) & (((\timer_1|v_cseg_d\(1)) # (\timer_1|v_cseg_d\(2))))) # (!\timer_1|v_cseg_d\(3) & (\timer_1|v_cseg_d\(2) & (\timer_1|v_cseg_d\(0) $ (\timer_1|v_cseg_d\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|v_cseg_d\(3),
	datab => \timer_1|v_cseg_d\(0),
	datac => \timer_1|v_cseg_d\(1),
	datad => \timer_1|v_cseg_d\(2),
	combout => \bcd2ssd_1|Mux8~0_combout\);

-- Location: LCCOMB_X1_Y53_N14
\bcd2ssd_1|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux7~0_combout\ = (!\timer_1|v_cseg_d\(3) & (!\timer_1|v_cseg_d\(1) & (\timer_1|v_cseg_d\(0) $ (\timer_1|v_cseg_d\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|v_cseg_d\(3),
	datab => \timer_1|v_cseg_d\(0),
	datac => \timer_1|v_cseg_d\(1),
	datad => \timer_1|v_cseg_d\(2),
	combout => \bcd2ssd_1|Mux7~0_combout\);

-- Location: LCCOMB_X4_Y53_N28
\timer_1|v_seg_u[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|v_seg_u[0]~3_combout\ = !\timer_1|v_seg_u\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer_1|v_seg_u\(0),
	combout => \timer_1|v_seg_u[0]~3_combout\);

-- Location: LCCOMB_X4_Y53_N0
\timer_1|v_seg_u[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|v_seg_u[3]~0_combout\ = (\timer_1|Equal2~0_combout\ & (\timer_1|Equal1~0_combout\ & \timer_1|Equal0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|Equal2~0_combout\,
	datac => \timer_1|Equal1~0_combout\,
	datad => \timer_1|Equal0~6_combout\,
	combout => \timer_1|v_seg_u[3]~0_combout\);

-- Location: FF_X4_Y53_N29
\timer_1|v_seg_u[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|v_seg_u[0]~3_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \timer_1|v_seg_u[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|v_seg_u\(0));

-- Location: LCCOMB_X4_Y53_N12
\timer_1|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add3~0_combout\ = \timer_1|v_seg_u\(2) $ (((\timer_1|v_seg_u\(1) & \timer_1|v_seg_u\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|v_seg_u\(1),
	datac => \timer_1|v_seg_u\(2),
	datad => \timer_1|v_seg_u\(0),
	combout => \timer_1|Add3~0_combout\);

-- Location: FF_X4_Y53_N13
\timer_1|v_seg_u[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|Add3~0_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \timer_1|v_seg_u[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|v_seg_u\(2));

-- Location: LCCOMB_X4_Y53_N26
\timer_1|v_seg_u~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|v_seg_u~2_combout\ = (\timer_1|v_seg_u\(1) & (\timer_1|v_seg_u\(3) $ (((\timer_1|v_seg_u\(0) & \timer_1|v_seg_u\(2)))))) # (!\timer_1|v_seg_u\(1) & (\timer_1|v_seg_u\(3) & ((\timer_1|v_seg_u\(2)) # (!\timer_1|v_seg_u\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|v_seg_u\(1),
	datab => \timer_1|v_seg_u\(0),
	datac => \timer_1|v_seg_u\(3),
	datad => \timer_1|v_seg_u\(2),
	combout => \timer_1|v_seg_u~2_combout\);

-- Location: FF_X4_Y53_N27
\timer_1|v_seg_u[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|v_seg_u~2_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \timer_1|v_seg_u[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|v_seg_u\(3));

-- Location: LCCOMB_X4_Y53_N22
\timer_1|v_seg_u~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|v_seg_u~1_combout\ = (\timer_1|v_seg_u\(0) & (!\timer_1|v_seg_u\(1) & ((\timer_1|v_seg_u\(2)) # (!\timer_1|v_seg_u\(3))))) # (!\timer_1|v_seg_u\(0) & (((\timer_1|v_seg_u\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|v_seg_u\(3),
	datab => \timer_1|v_seg_u\(0),
	datac => \timer_1|v_seg_u\(1),
	datad => \timer_1|v_seg_u\(2),
	combout => \timer_1|v_seg_u~1_combout\);

-- Location: FF_X4_Y53_N23
\timer_1|v_seg_u[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|v_seg_u~1_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \timer_1|v_seg_u[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|v_seg_u\(1));

-- Location: LCCOMB_X1_Y50_N20
\bcd2ssd_1|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux20~0_combout\ = (\timer_1|v_seg_u\(3)) # ((\timer_1|v_seg_u\(1) & ((!\timer_1|v_seg_u\(2)) # (!\timer_1|v_seg_u\(0)))) # (!\timer_1|v_seg_u\(1) & ((\timer_1|v_seg_u\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|v_seg_u\(0),
	datab => \timer_1|v_seg_u\(3),
	datac => \timer_1|v_seg_u\(1),
	datad => \timer_1|v_seg_u\(2),
	combout => \bcd2ssd_1|Mux20~0_combout\);

-- Location: LCCOMB_X1_Y50_N14
\bcd2ssd_1|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux19~0_combout\ = (!\timer_1|v_seg_u\(3) & ((\timer_1|v_seg_u\(0) & ((\timer_1|v_seg_u\(1)) # (!\timer_1|v_seg_u\(2)))) # (!\timer_1|v_seg_u\(0) & (\timer_1|v_seg_u\(1) & !\timer_1|v_seg_u\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|v_seg_u\(0),
	datab => \timer_1|v_seg_u\(3),
	datac => \timer_1|v_seg_u\(1),
	datad => \timer_1|v_seg_u\(2),
	combout => \bcd2ssd_1|Mux19~0_combout\);

-- Location: LCCOMB_X1_Y50_N12
\bcd2ssd_1|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux18~0_combout\ = (\timer_1|v_seg_u\(1) & (\timer_1|v_seg_u\(0) & (!\timer_1|v_seg_u\(3)))) # (!\timer_1|v_seg_u\(1) & ((\timer_1|v_seg_u\(2) & ((!\timer_1|v_seg_u\(3)))) # (!\timer_1|v_seg_u\(2) & (\timer_1|v_seg_u\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|v_seg_u\(0),
	datab => \timer_1|v_seg_u\(3),
	datac => \timer_1|v_seg_u\(1),
	datad => \timer_1|v_seg_u\(2),
	combout => \bcd2ssd_1|Mux18~0_combout\);

-- Location: LCCOMB_X1_Y50_N10
\bcd2ssd_1|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux17~0_combout\ = (!\timer_1|v_seg_u\(3) & ((\timer_1|v_seg_u\(0) & (\timer_1|v_seg_u\(1) $ (!\timer_1|v_seg_u\(2)))) # (!\timer_1|v_seg_u\(0) & (!\timer_1|v_seg_u\(1) & \timer_1|v_seg_u\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|v_seg_u\(0),
	datab => \timer_1|v_seg_u\(3),
	datac => \timer_1|v_seg_u\(1),
	datad => \timer_1|v_seg_u\(2),
	combout => \bcd2ssd_1|Mux17~0_combout\);

-- Location: LCCOMB_X1_Y50_N4
\bcd2ssd_1|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux16~0_combout\ = (\timer_1|v_seg_u\(2) & (((\timer_1|v_seg_u\(3))))) # (!\timer_1|v_seg_u\(2) & (\timer_1|v_seg_u\(1) & ((\timer_1|v_seg_u\(3)) # (!\timer_1|v_seg_u\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|v_seg_u\(0),
	datab => \timer_1|v_seg_u\(3),
	datac => \timer_1|v_seg_u\(1),
	datad => \timer_1|v_seg_u\(2),
	combout => \bcd2ssd_1|Mux16~0_combout\);

-- Location: LCCOMB_X1_Y50_N22
\bcd2ssd_1|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux15~0_combout\ = (\timer_1|v_seg_u\(3) & (((\timer_1|v_seg_u\(1)) # (\timer_1|v_seg_u\(2))))) # (!\timer_1|v_seg_u\(3) & (\timer_1|v_seg_u\(2) & (\timer_1|v_seg_u\(0) $ (\timer_1|v_seg_u\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|v_seg_u\(0),
	datab => \timer_1|v_seg_u\(3),
	datac => \timer_1|v_seg_u\(1),
	datad => \timer_1|v_seg_u\(2),
	combout => \bcd2ssd_1|Mux15~0_combout\);

-- Location: LCCOMB_X1_Y50_N16
\bcd2ssd_1|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux14~0_combout\ = (!\timer_1|v_seg_u\(3) & (!\timer_1|v_seg_u\(1) & (\timer_1|v_seg_u\(0) $ (\timer_1|v_seg_u\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|v_seg_u\(0),
	datab => \timer_1|v_seg_u\(3),
	datac => \timer_1|v_seg_u\(1),
	datad => \timer_1|v_seg_u\(2),
	combout => \bcd2ssd_1|Mux14~0_combout\);

-- Location: LCCOMB_X1_Y53_N8
\timer_1|v_seg_d[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|v_seg_d[0]~3_combout\ = !\timer_1|v_seg_d\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer_1|v_seg_d\(0),
	combout => \timer_1|v_seg_d[0]~3_combout\);

-- Location: LCCOMB_X4_Y53_N30
\timer_1|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Equal3~0_combout\ = (\timer_1|v_seg_u\(3) & (\timer_1|v_seg_u\(0) & (!\timer_1|v_seg_u\(1) & !\timer_1|v_seg_u\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|v_seg_u\(3),
	datab => \timer_1|v_seg_u\(0),
	datac => \timer_1|v_seg_u\(1),
	datad => \timer_1|v_seg_u\(2),
	combout => \timer_1|Equal3~0_combout\);

-- Location: LCCOMB_X1_Y53_N20
\timer_1|v_seg_d[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|v_seg_d[0]~0_combout\ = (\timer_1|Equal2~0_combout\ & (\timer_1|Equal3~0_combout\ & (\timer_1|Equal1~0_combout\ & \timer_1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|Equal2~0_combout\,
	datab => \timer_1|Equal3~0_combout\,
	datac => \timer_1|Equal1~0_combout\,
	datad => \timer_1|Equal0~6_combout\,
	combout => \timer_1|v_seg_d[0]~0_combout\);

-- Location: FF_X1_Y53_N9
\timer_1|v_seg_d[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|v_seg_d[0]~3_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \timer_1|v_seg_d[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|v_seg_d\(0));

-- Location: LCCOMB_X1_Y53_N28
\timer_1|v_seg_d~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|v_seg_d~2_combout\ = (\timer_1|v_seg_d\(0) & (!\timer_1|v_seg_d\(1) & !\timer_1|v_seg_d\(2))) # (!\timer_1|v_seg_d\(0) & (\timer_1|v_seg_d\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|v_seg_d\(0),
	datac => \timer_1|v_seg_d\(1),
	datad => \timer_1|v_seg_d\(2),
	combout => \timer_1|v_seg_d~2_combout\);

-- Location: FF_X1_Y53_N29
\timer_1|v_seg_d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|v_seg_d~2_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \timer_1|v_seg_d[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|v_seg_d\(1));

-- Location: LCCOMB_X1_Y53_N2
\timer_1|v_seg_d~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|v_seg_d~1_combout\ = (\timer_1|v_seg_d\(0) & (!\timer_1|v_seg_d\(2) & \timer_1|v_seg_d\(1))) # (!\timer_1|v_seg_d\(0) & (\timer_1|v_seg_d\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|v_seg_d\(0),
	datac => \timer_1|v_seg_d\(2),
	datad => \timer_1|v_seg_d\(1),
	combout => \timer_1|v_seg_d~1_combout\);

-- Location: FF_X1_Y53_N3
\timer_1|v_seg_d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|v_seg_d~1_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \timer_1|v_seg_d[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|v_seg_d\(2));

-- Location: LCCOMB_X1_Y59_N12
\bcd2ssd_1|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux27~0_combout\ = (\timer_1|v_seg_d\(2) & (\timer_1|v_seg_d\(0) & \timer_1|v_seg_d\(1))) # (!\timer_1|v_seg_d\(2) & ((!\timer_1|v_seg_d\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|v_seg_d\(2),
	datac => \timer_1|v_seg_d\(0),
	datad => \timer_1|v_seg_d\(1),
	combout => \bcd2ssd_1|Mux27~0_combout\);

-- Location: LCCOMB_X1_Y59_N6
\bcd2ssd_1|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux26~0_combout\ = (\timer_1|v_seg_d\(2) & (\timer_1|v_seg_d\(0) & \timer_1|v_seg_d\(1))) # (!\timer_1|v_seg_d\(2) & ((\timer_1|v_seg_d\(0)) # (\timer_1|v_seg_d\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|v_seg_d\(2),
	datac => \timer_1|v_seg_d\(0),
	datad => \timer_1|v_seg_d\(1),
	combout => \bcd2ssd_1|Mux26~0_combout\);

-- Location: LCCOMB_X1_Y59_N16
\bcd2ssd_1|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux25~0_combout\ = (\timer_1|v_seg_d\(0)) # ((\timer_1|v_seg_d\(2) & !\timer_1|v_seg_d\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|v_seg_d\(2),
	datac => \timer_1|v_seg_d\(0),
	datad => \timer_1|v_seg_d\(1),
	combout => \bcd2ssd_1|Mux25~0_combout\);

-- Location: LCCOMB_X1_Y59_N26
\bcd2ssd_1|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux24~0_combout\ = (\timer_1|v_seg_d\(2) & (\timer_1|v_seg_d\(0) $ (!\timer_1|v_seg_d\(1)))) # (!\timer_1|v_seg_d\(2) & (\timer_1|v_seg_d\(0) & !\timer_1|v_seg_d\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|v_seg_d\(2),
	datac => \timer_1|v_seg_d\(0),
	datad => \timer_1|v_seg_d\(1),
	combout => \bcd2ssd_1|Mux24~0_combout\);

-- Location: LCCOMB_X1_Y59_N4
\bcd2ssd_1|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux23~0_combout\ = (!\timer_1|v_seg_d\(2) & (!\timer_1|v_seg_d\(0) & \timer_1|v_seg_d\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|v_seg_d\(2),
	datac => \timer_1|v_seg_d\(0),
	datad => \timer_1|v_seg_d\(1),
	combout => \bcd2ssd_1|Mux23~0_combout\);

-- Location: LCCOMB_X1_Y59_N10
\bcd2ssd_1|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux22~0_combout\ = (\timer_1|v_seg_d\(0) $ (!\timer_1|v_seg_d\(1))) # (!\timer_1|v_seg_d\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|v_seg_d\(2),
	datac => \timer_1|v_seg_d\(0),
	datad => \timer_1|v_seg_d\(1),
	combout => \bcd2ssd_1|Mux22~0_combout\);

-- Location: LCCOMB_X1_Y59_N0
\bcd2ssd_1|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux21~0_combout\ = (!\timer_1|v_seg_d\(1) & (\timer_1|v_seg_d\(2) $ (\timer_1|v_seg_d\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|v_seg_d\(2),
	datac => \timer_1|v_seg_d\(0),
	datad => \timer_1|v_seg_d\(1),
	combout => \bcd2ssd_1|Mux21~0_combout\);

-- Location: LCCOMB_X1_Y52_N24
\timer_1|v_min_u[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|v_min_u[0]~6_combout\ = !\timer_1|v_min_u\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer_1|v_min_u\(0),
	combout => \timer_1|v_min_u[0]~6_combout\);

-- Location: LCCOMB_X1_Y52_N18
\timer_1|v_min_u[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|v_min_u[3]~2_combout\ = (\timer_1|v_min_u[3]~5_combout\ & (\timer_1|Equal1~0_combout\ & (\timer_1|Equal3~0_combout\ & \timer_1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|v_min_u[3]~5_combout\,
	datab => \timer_1|Equal1~0_combout\,
	datac => \timer_1|Equal3~0_combout\,
	datad => \timer_1|Equal0~6_combout\,
	combout => \timer_1|v_min_u[3]~2_combout\);

-- Location: FF_X1_Y52_N25
\timer_1|v_min_u[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|v_min_u[0]~6_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \timer_1|v_min_u[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|v_min_u\(0));

-- Location: LCCOMB_X1_Y52_N12
\timer_1|Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add5~0_combout\ = \timer_1|v_min_u\(2) $ (((\timer_1|v_min_u\(1) & \timer_1|v_min_u\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|v_min_u\(1),
	datac => \timer_1|v_min_u\(2),
	datad => \timer_1|v_min_u\(0),
	combout => \timer_1|Add5~0_combout\);

-- Location: FF_X1_Y52_N13
\timer_1|v_min_u[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|Add5~0_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \timer_1|v_min_u[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|v_min_u\(2));

-- Location: LCCOMB_X1_Y52_N2
\timer_1|v_min_u~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|v_min_u~4_combout\ = (\timer_1|v_min_u\(1) & (\timer_1|v_min_u\(3) $ (((\timer_1|v_min_u\(0) & \timer_1|v_min_u\(2)))))) # (!\timer_1|v_min_u\(1) & (\timer_1|v_min_u\(3) & ((\timer_1|v_min_u\(2)) # (!\timer_1|v_min_u\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|v_min_u\(1),
	datab => \timer_1|v_min_u\(0),
	datac => \timer_1|v_min_u\(3),
	datad => \timer_1|v_min_u\(2),
	combout => \timer_1|v_min_u~4_combout\);

-- Location: FF_X1_Y52_N3
\timer_1|v_min_u[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|v_min_u~4_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \timer_1|v_min_u[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|v_min_u\(3));

-- Location: LCCOMB_X1_Y52_N22
\timer_1|v_min_u~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|v_min_u~3_combout\ = (\timer_1|v_min_u\(1) & (((!\timer_1|v_min_u\(0))))) # (!\timer_1|v_min_u\(1) & (\timer_1|v_min_u\(0) & ((\timer_1|v_min_u\(2)) # (!\timer_1|v_min_u\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|v_min_u\(2),
	datab => \timer_1|v_min_u\(3),
	datac => \timer_1|v_min_u\(1),
	datad => \timer_1|v_min_u\(0),
	combout => \timer_1|v_min_u~3_combout\);

-- Location: FF_X1_Y52_N23
\timer_1|v_min_u[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|v_min_u~3_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \timer_1|v_min_u[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|v_min_u\(1));

-- Location: LCCOMB_X1_Y52_N16
\bcd2ssd_1|Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux34~0_combout\ = (\timer_1|v_min_u\(3)) # ((\timer_1|v_min_u\(2) & ((!\timer_1|v_min_u\(0)) # (!\timer_1|v_min_u\(1)))) # (!\timer_1|v_min_u\(2) & (\timer_1|v_min_u\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|v_min_u\(2),
	datab => \timer_1|v_min_u\(3),
	datac => \timer_1|v_min_u\(1),
	datad => \timer_1|v_min_u\(0),
	combout => \bcd2ssd_1|Mux34~0_combout\);

-- Location: LCCOMB_X1_Y52_N26
\bcd2ssd_1|Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux33~0_combout\ = (!\timer_1|v_min_u\(3) & ((\timer_1|v_min_u\(2) & (\timer_1|v_min_u\(1) & \timer_1|v_min_u\(0))) # (!\timer_1|v_min_u\(2) & ((\timer_1|v_min_u\(1)) # (\timer_1|v_min_u\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|v_min_u\(2),
	datab => \timer_1|v_min_u\(3),
	datac => \timer_1|v_min_u\(1),
	datad => \timer_1|v_min_u\(0),
	combout => \bcd2ssd_1|Mux33~0_combout\);

-- Location: LCCOMB_X1_Y52_N28
\bcd2ssd_1|Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux32~0_combout\ = (\timer_1|v_min_u\(1) & (((!\timer_1|v_min_u\(3) & \timer_1|v_min_u\(0))))) # (!\timer_1|v_min_u\(1) & ((\timer_1|v_min_u\(2) & (!\timer_1|v_min_u\(3))) # (!\timer_1|v_min_u\(2) & ((\timer_1|v_min_u\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|v_min_u\(2),
	datab => \timer_1|v_min_u\(3),
	datac => \timer_1|v_min_u\(1),
	datad => \timer_1|v_min_u\(0),
	combout => \bcd2ssd_1|Mux32~0_combout\);

-- Location: LCCOMB_X1_Y52_N14
\bcd2ssd_1|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux31~0_combout\ = (!\timer_1|v_min_u\(3) & ((\timer_1|v_min_u\(2) & (\timer_1|v_min_u\(1) $ (!\timer_1|v_min_u\(0)))) # (!\timer_1|v_min_u\(2) & (!\timer_1|v_min_u\(1) & \timer_1|v_min_u\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|v_min_u\(2),
	datab => \timer_1|v_min_u\(3),
	datac => \timer_1|v_min_u\(1),
	datad => \timer_1|v_min_u\(0),
	combout => \bcd2ssd_1|Mux31~0_combout\);

-- Location: LCCOMB_X1_Y52_N8
\bcd2ssd_1|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux30~0_combout\ = (\timer_1|v_min_u\(2) & (\timer_1|v_min_u\(3))) # (!\timer_1|v_min_u\(2) & (\timer_1|v_min_u\(1) & ((\timer_1|v_min_u\(3)) # (!\timer_1|v_min_u\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|v_min_u\(2),
	datab => \timer_1|v_min_u\(3),
	datac => \timer_1|v_min_u\(1),
	datad => \timer_1|v_min_u\(0),
	combout => \bcd2ssd_1|Mux30~0_combout\);

-- Location: LCCOMB_X1_Y52_N10
\bcd2ssd_1|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux29~0_combout\ = (\timer_1|v_min_u\(2) & ((\timer_1|v_min_u\(3)) # (\timer_1|v_min_u\(1) $ (\timer_1|v_min_u\(0))))) # (!\timer_1|v_min_u\(2) & (\timer_1|v_min_u\(3) & (\timer_1|v_min_u\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|v_min_u\(2),
	datab => \timer_1|v_min_u\(3),
	datac => \timer_1|v_min_u\(1),
	datad => \timer_1|v_min_u\(0),
	combout => \bcd2ssd_1|Mux29~0_combout\);

-- Location: LCCOMB_X1_Y52_N20
\bcd2ssd_1|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux28~0_combout\ = (!\timer_1|v_min_u\(3) & (!\timer_1|v_min_u\(1) & (\timer_1|v_min_u\(2) $ (\timer_1|v_min_u\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|v_min_u\(2),
	datab => \timer_1|v_min_u\(3),
	datac => \timer_1|v_min_u\(1),
	datad => \timer_1|v_min_u\(0),
	combout => \bcd2ssd_1|Mux28~0_combout\);

-- Location: LCCOMB_X1_Y53_N18
\timer_1|v_min_d[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|v_min_d[0]~3_combout\ = !\timer_1|v_min_d\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer_1|v_min_d\(0),
	combout => \timer_1|v_min_d[0]~3_combout\);

-- Location: LCCOMB_X1_Y52_N0
\timer_1|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Equal5~0_combout\ = (!\timer_1|v_min_u\(2) & (\timer_1|v_min_u\(3) & (!\timer_1|v_min_u\(1) & \timer_1|v_min_u\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|v_min_u\(2),
	datab => \timer_1|v_min_u\(3),
	datac => \timer_1|v_min_u\(1),
	datad => \timer_1|v_min_u\(0),
	combout => \timer_1|Equal5~0_combout\);

-- Location: LCCOMB_X1_Y53_N22
\timer_1|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Equal4~0_combout\ = (\timer_1|v_seg_d\(2) & (\timer_1|v_seg_d\(0) & !\timer_1|v_seg_d\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|v_seg_d\(2),
	datac => \timer_1|v_seg_d\(0),
	datad => \timer_1|v_seg_d\(1),
	combout => \timer_1|Equal4~0_combout\);

-- Location: LCCOMB_X1_Y53_N4
\timer_1|v_min_d[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|v_min_d[0]~0_combout\ = (\timer_1|Equal5~0_combout\ & (\timer_1|Equal4~0_combout\ & \timer_1|v_seg_d[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|Equal5~0_combout\,
	datac => \timer_1|Equal4~0_combout\,
	datad => \timer_1|v_seg_d[0]~0_combout\,
	combout => \timer_1|v_min_d[0]~0_combout\);

-- Location: FF_X1_Y53_N19
\timer_1|v_min_d[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|v_min_d[0]~3_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \timer_1|v_min_d[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|v_min_d\(0));

-- Location: LCCOMB_X1_Y53_N6
\timer_1|v_min_d~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|v_min_d~2_combout\ = (\timer_1|v_min_d\(0) & (!\timer_1|v_min_d\(1) & !\timer_1|v_min_d\(2))) # (!\timer_1|v_min_d\(0) & (\timer_1|v_min_d\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|v_min_d\(0),
	datac => \timer_1|v_min_d\(1),
	datad => \timer_1|v_min_d\(2),
	combout => \timer_1|v_min_d~2_combout\);

-- Location: FF_X1_Y53_N7
\timer_1|v_min_d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|v_min_d~2_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \timer_1|v_min_d[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|v_min_d\(1));

-- Location: LCCOMB_X1_Y53_N12
\timer_1|v_min_d~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|v_min_d~1_combout\ = (\timer_1|v_min_d\(0) & (!\timer_1|v_min_d\(2) & \timer_1|v_min_d\(1))) # (!\timer_1|v_min_d\(0) & (\timer_1|v_min_d\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|v_min_d\(0),
	datac => \timer_1|v_min_d\(2),
	datad => \timer_1|v_min_d\(1),
	combout => \timer_1|v_min_d~1_combout\);

-- Location: FF_X1_Y53_N13
\timer_1|v_min_d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|v_min_d~1_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \timer_1|v_min_d[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|v_min_d\(2));

-- Location: LCCOMB_X1_Y46_N12
\bcd2ssd_1|Mux41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux41~0_combout\ = (\timer_1|v_min_d\(2) & (\timer_1|v_min_d\(0) & \timer_1|v_min_d\(1))) # (!\timer_1|v_min_d\(2) & ((!\timer_1|v_min_d\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|v_min_d\(2),
	datab => \timer_1|v_min_d\(0),
	datad => \timer_1|v_min_d\(1),
	combout => \bcd2ssd_1|Mux41~0_combout\);

-- Location: LCCOMB_X1_Y46_N2
\bcd2ssd_1|Mux40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux40~0_combout\ = (\timer_1|v_min_d\(2) & (\timer_1|v_min_d\(0) & \timer_1|v_min_d\(1))) # (!\timer_1|v_min_d\(2) & ((\timer_1|v_min_d\(0)) # (\timer_1|v_min_d\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|v_min_d\(2),
	datab => \timer_1|v_min_d\(0),
	datad => \timer_1|v_min_d\(1),
	combout => \bcd2ssd_1|Mux40~0_combout\);

-- Location: LCCOMB_X1_Y46_N4
\bcd2ssd_1|Mux39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux39~0_combout\ = (\timer_1|v_min_d\(0)) # ((\timer_1|v_min_d\(2) & !\timer_1|v_min_d\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|v_min_d\(2),
	datab => \timer_1|v_min_d\(0),
	datad => \timer_1|v_min_d\(1),
	combout => \bcd2ssd_1|Mux39~0_combout\);

-- Location: LCCOMB_X1_Y46_N18
\bcd2ssd_1|Mux38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux38~0_combout\ = (\timer_1|v_min_d\(2) & (\timer_1|v_min_d\(0) $ (!\timer_1|v_min_d\(1)))) # (!\timer_1|v_min_d\(2) & (\timer_1|v_min_d\(0) & !\timer_1|v_min_d\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|v_min_d\(2),
	datab => \timer_1|v_min_d\(0),
	datad => \timer_1|v_min_d\(1),
	combout => \bcd2ssd_1|Mux38~0_combout\);

-- Location: LCCOMB_X1_Y46_N28
\bcd2ssd_1|Mux37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux37~0_combout\ = (!\timer_1|v_min_d\(2) & (!\timer_1|v_min_d\(0) & \timer_1|v_min_d\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|v_min_d\(2),
	datab => \timer_1|v_min_d\(0),
	datad => \timer_1|v_min_d\(1),
	combout => \bcd2ssd_1|Mux37~0_combout\);

-- Location: LCCOMB_X1_Y46_N30
\bcd2ssd_1|Mux36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux36~0_combout\ = (\timer_1|v_min_d\(0) $ (!\timer_1|v_min_d\(1))) # (!\timer_1|v_min_d\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|v_min_d\(2),
	datab => \timer_1|v_min_d\(0),
	datad => \timer_1|v_min_d\(1),
	combout => \bcd2ssd_1|Mux36~0_combout\);

-- Location: LCCOMB_X1_Y46_N16
\bcd2ssd_1|Mux35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux35~0_combout\ = (!\timer_1|v_min_d\(1) & (\timer_1|v_min_d\(2) $ (\timer_1|v_min_d\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|v_min_d\(2),
	datab => \timer_1|v_min_d\(0),
	datad => \timer_1|v_min_d\(1),
	combout => \bcd2ssd_1|Mux35~0_combout\);

ww_cseg_u(6) <= \cseg_u[6]~output_o\;

ww_cseg_u(5) <= \cseg_u[5]~output_o\;

ww_cseg_u(4) <= \cseg_u[4]~output_o\;

ww_cseg_u(3) <= \cseg_u[3]~output_o\;

ww_cseg_u(2) <= \cseg_u[2]~output_o\;

ww_cseg_u(1) <= \cseg_u[1]~output_o\;

ww_cseg_u(0) <= \cseg_u[0]~output_o\;

ww_cseg_d(6) <= \cseg_d[6]~output_o\;

ww_cseg_d(5) <= \cseg_d[5]~output_o\;

ww_cseg_d(4) <= \cseg_d[4]~output_o\;

ww_cseg_d(3) <= \cseg_d[3]~output_o\;

ww_cseg_d(2) <= \cseg_d[2]~output_o\;

ww_cseg_d(1) <= \cseg_d[1]~output_o\;

ww_cseg_d(0) <= \cseg_d[0]~output_o\;

ww_seg_u(6) <= \seg_u[6]~output_o\;

ww_seg_u(5) <= \seg_u[5]~output_o\;

ww_seg_u(4) <= \seg_u[4]~output_o\;

ww_seg_u(3) <= \seg_u[3]~output_o\;

ww_seg_u(2) <= \seg_u[2]~output_o\;

ww_seg_u(1) <= \seg_u[1]~output_o\;

ww_seg_u(0) <= \seg_u[0]~output_o\;

ww_seg_d(6) <= \seg_d[6]~output_o\;

ww_seg_d(5) <= \seg_d[5]~output_o\;

ww_seg_d(4) <= \seg_d[4]~output_o\;

ww_seg_d(3) <= \seg_d[3]~output_o\;

ww_seg_d(2) <= \seg_d[2]~output_o\;

ww_seg_d(1) <= \seg_d[1]~output_o\;

ww_seg_d(0) <= \seg_d[0]~output_o\;

ww_min_u(6) <= \min_u[6]~output_o\;

ww_min_u(5) <= \min_u[5]~output_o\;

ww_min_u(4) <= \min_u[4]~output_o\;

ww_min_u(3) <= \min_u[3]~output_o\;

ww_min_u(2) <= \min_u[2]~output_o\;

ww_min_u(1) <= \min_u[1]~output_o\;

ww_min_u(0) <= \min_u[0]~output_o\;

ww_min_d(6) <= \min_d[6]~output_o\;

ww_min_d(5) <= \min_d[5]~output_o\;

ww_min_d(4) <= \min_d[4]~output_o\;

ww_min_d(3) <= \min_d[3]~output_o\;

ww_min_d(2) <= \min_d[2]~output_o\;

ww_min_d(1) <= \min_d[1]~output_o\;

ww_min_d(0) <= \min_d[0]~output_o\;
END structure;


