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

-- DATE "06/07/2019 09:07:05"

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
-- cseg_u[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cseg_u[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cseg_u[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cseg_u[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cseg_u[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cseg_u[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cseg_u[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cseg_d[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cseg_d[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cseg_d[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cseg_d[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cseg_d[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cseg_d[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cseg_d[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_u[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_u[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_u[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_u[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_u[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_u[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_u[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_d[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_d[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_d[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_d[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_d[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_d[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_d[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_u[6]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_u[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_u[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_u[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_u[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_u[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_u[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_d[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_d[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_d[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_d[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_d[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_d[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_d[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \timer_1|Add0~0_combout\ : std_logic;
SIGNAL \timer_1|Add0~10_combout\ : std_logic;
SIGNAL \timer_1|Add0~16_combout\ : std_logic;
SIGNAL \timer_1|Add0~31\ : std_logic;
SIGNAL \timer_1|Add0~32_combout\ : std_logic;
SIGNAL \timer_1|Add0~33\ : std_logic;
SIGNAL \timer_1|Add0~34_combout\ : std_logic;
SIGNAL \timer_1|Add0~35\ : std_logic;
SIGNAL \timer_1|Add0~36_combout\ : std_logic;
SIGNAL \timer_1|Add0~37\ : std_logic;
SIGNAL \timer_1|Add0~38_combout\ : std_logic;
SIGNAL \timer_1|Equal0~1_combout\ : std_logic;
SIGNAL \timer_1|c_d_en~0_combout\ : std_logic;
SIGNAL \timer_1|Add2~0_combout\ : std_logic;
SIGNAL \timer_1|Add2~1_combout\ : std_logic;
SIGNAL \timer_1|Add4~0_combout\ : std_logic;
SIGNAL \timer_1|Add4~1_combout\ : std_logic;
SIGNAL \timer_1|m_d_en~0_combout\ : std_logic;
SIGNAL \timer_1|Add5~0_combout\ : std_logic;
SIGNAL \timer_1|Add5~1_combout\ : std_logic;
SIGNAL \timer_1|Add6~0_combout\ : std_logic;
SIGNAL \timer_1|Add6~1_combout\ : std_logic;
SIGNAL \timer_1|r_next[18]~0_combout\ : std_logic;
SIGNAL \timer_1|r_next[17]~1_combout\ : std_logic;
SIGNAL \timer_1|r_next[16]~2_combout\ : std_logic;
SIGNAL \timer_1|r_next[8]~5_combout\ : std_logic;
SIGNAL \timer_1|r_next[5]~6_combout\ : std_logic;
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
SIGNAL \timer_1|Add0~1\ : std_logic;
SIGNAL \timer_1|Add0~2_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \timer_1|Add0~3\ : std_logic;
SIGNAL \timer_1|Add0~4_combout\ : std_logic;
SIGNAL \timer_1|Add0~5\ : std_logic;
SIGNAL \timer_1|Add0~6_combout\ : std_logic;
SIGNAL \timer_1|Add0~7\ : std_logic;
SIGNAL \timer_1|Add0~8_combout\ : std_logic;
SIGNAL \timer_1|Add0~9\ : std_logic;
SIGNAL \timer_1|Add0~11\ : std_logic;
SIGNAL \timer_1|Add0~12_combout\ : std_logic;
SIGNAL \timer_1|Add0~13\ : std_logic;
SIGNAL \timer_1|Add0~14_combout\ : std_logic;
SIGNAL \timer_1|Add0~15\ : std_logic;
SIGNAL \timer_1|Add0~17\ : std_logic;
SIGNAL \timer_1|Add0~19\ : std_logic;
SIGNAL \timer_1|Add0~20_combout\ : std_logic;
SIGNAL \timer_1|Add0~21\ : std_logic;
SIGNAL \timer_1|Add0~22_combout\ : std_logic;
SIGNAL \timer_1|Add0~23\ : std_logic;
SIGNAL \timer_1|Add0~24_combout\ : std_logic;
SIGNAL \timer_1|Add0~25\ : std_logic;
SIGNAL \timer_1|Add0~27\ : std_logic;
SIGNAL \timer_1|Add0~28_combout\ : std_logic;
SIGNAL \timer_1|Equal0~0_combout\ : std_logic;
SIGNAL \timer_1|Add0~29\ : std_logic;
SIGNAL \timer_1|Add0~30_combout\ : std_logic;
SIGNAL \timer_1|r_next[15]~3_combout\ : std_logic;
SIGNAL \timer_1|Add0~26_combout\ : std_logic;
SIGNAL \timer_1|r_next[13]~4_combout\ : std_logic;
SIGNAL \timer_1|Equal0~2_combout\ : std_logic;
SIGNAL \timer_1|Add0~18_combout\ : std_logic;
SIGNAL \timer_1|Equal0~3_combout\ : std_logic;
SIGNAL \timer_1|Equal0~4_combout\ : std_logic;
SIGNAL \timer_1|Equal0~5_combout\ : std_logic;
SIGNAL \timer_1|c_reg_u[0]~0_combout\ : std_logic;
SIGNAL \timer_1|Equal0~6_combout\ : std_logic;
SIGNAL \timer_1|c_reg_u[1]~1_combout\ : std_logic;
SIGNAL \timer_1|Add1~0_combout\ : std_logic;
SIGNAL \timer_1|c_reg_u[2]~2_combout\ : std_logic;
SIGNAL \timer_1|Add1~1_combout\ : std_logic;
SIGNAL \timer_1|c_reg_u[3]~3_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux6~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux5~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux4~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux3~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux2~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux1~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux0~0_combout\ : std_logic;
SIGNAL \timer_1|c_d_en~combout\ : std_logic;
SIGNAL \timer_1|c_reg_d[0]~0_combout\ : std_logic;
SIGNAL \timer_1|c_reg_d[1]~1_combout\ : std_logic;
SIGNAL \timer_1|c_reg_d[2]~2_combout\ : std_logic;
SIGNAL \timer_1|s_u_en~0_combout\ : std_logic;
SIGNAL \timer_1|s_u_en~combout\ : std_logic;
SIGNAL \timer_1|c_reg_d[3]~3_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux13~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux12~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux11~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux10~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux9~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux8~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux7~0_combout\ : std_logic;
SIGNAL \timer_1|s_reg_u[0]~0_combout\ : std_logic;
SIGNAL \timer_1|Add3~0_combout\ : std_logic;
SIGNAL \timer_1|s_d_en~combout\ : std_logic;
SIGNAL \timer_1|s_reg_u[2]~2_combout\ : std_logic;
SIGNAL \timer_1|s_d_en~0_combout\ : std_logic;
SIGNAL \timer_1|s_reg_u[1]~1_combout\ : std_logic;
SIGNAL \timer_1|Add3~1_combout\ : std_logic;
SIGNAL \timer_1|s_reg_u[3]~3_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux20~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux19~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux18~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux17~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux16~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux15~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux14~0_combout\ : std_logic;
SIGNAL \timer_1|m_u_en~combout\ : std_logic;
SIGNAL \timer_1|s_reg_d[3]~3_combout\ : std_logic;
SIGNAL \timer_1|s_reg_d[2]~2_combout\ : std_logic;
SIGNAL \timer_1|m_u_en~0_combout\ : std_logic;
SIGNAL \timer_1|s_reg_d[1]~1_combout\ : std_logic;
SIGNAL \timer_1|s_reg_d[0]~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux27~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux26~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux25~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux24~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux23~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux22~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux21~0_combout\ : std_logic;
SIGNAL \timer_1|m_reg_u[0]~0_combout\ : std_logic;
SIGNAL \timer_1|m_reg_u[1]~1_combout\ : std_logic;
SIGNAL \timer_1|m_u_en~1_combout\ : std_logic;
SIGNAL \timer_1|m_d_en~combout\ : std_logic;
SIGNAL \timer_1|m_reg_u[2]~2_combout\ : std_logic;
SIGNAL \timer_1|m_reg_u[3]~3_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux34~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux33~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux32~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux31~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux30~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux29~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux28~0_combout\ : std_logic;
SIGNAL \timer_1|m_reg_d[1]~1_combout\ : std_logic;
SIGNAL \timer_1|m_reg_d[3]~3_combout\ : std_logic;
SIGNAL \timer_1|m_next_d~0_combout\ : std_logic;
SIGNAL \timer_1|m_reg_d[2]~2_combout\ : std_logic;
SIGNAL \timer_1|m_d_en~1_combout\ : std_logic;
SIGNAL \timer_1|m_reg_d[0]~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux41~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux40~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux39~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux38~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux37~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux36~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|Mux35~0_combout\ : std_logic;
SIGNAL \timer_1|s_reg_u\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \timer_1|s_reg_d\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \timer_1|r_reg\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \timer_1|m_reg_u\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \timer_1|m_reg_d\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \timer_1|c_reg_u\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \timer_1|c_reg_d\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bcd2ssd_1|ALT_INV_Mux41~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|ALT_INV_Mux34~0_combout\ : std_logic;
SIGNAL \bcd2ssd_1|ALT_INV_Mux27~0_combout\ : std_logic;
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

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\bcd2ssd_1|ALT_INV_Mux41~0_combout\ <= NOT \bcd2ssd_1|Mux41~0_combout\;
\bcd2ssd_1|ALT_INV_Mux34~0_combout\ <= NOT \bcd2ssd_1|Mux34~0_combout\;
\bcd2ssd_1|ALT_INV_Mux27~0_combout\ <= NOT \bcd2ssd_1|Mux27~0_combout\;
\bcd2ssd_1|ALT_INV_Mux20~0_combout\ <= NOT \bcd2ssd_1|Mux20~0_combout\;
\bcd2ssd_1|ALT_INV_Mux13~0_combout\ <= NOT \bcd2ssd_1|Mux13~0_combout\;
\bcd2ssd_1|ALT_INV_Mux6~0_combout\ <= NOT \bcd2ssd_1|Mux6~0_combout\;

-- Location: LCCOMB_X96_Y2_N12
\timer_1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add0~0_combout\ = \timer_1|r_reg\(0) $ (VCC)
-- \timer_1|Add0~1\ = CARRY(\timer_1|r_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|r_reg\(0),
	datad => VCC,
	combout => \timer_1|Add0~0_combout\,
	cout => \timer_1|Add0~1\);

-- Location: LCCOMB_X96_Y2_N22
\timer_1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add0~10_combout\ = (\timer_1|r_reg\(5) & (!\timer_1|Add0~9\)) # (!\timer_1|r_reg\(5) & ((\timer_1|Add0~9\) # (GND)))
-- \timer_1|Add0~11\ = CARRY((!\timer_1|Add0~9\) # (!\timer_1|r_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|r_reg\(5),
	datad => VCC,
	cin => \timer_1|Add0~9\,
	combout => \timer_1|Add0~10_combout\,
	cout => \timer_1|Add0~11\);

-- Location: LCCOMB_X96_Y2_N28
\timer_1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add0~16_combout\ = (\timer_1|r_reg\(8) & (\timer_1|Add0~15\ $ (GND))) # (!\timer_1|r_reg\(8) & (!\timer_1|Add0~15\ & VCC))
-- \timer_1|Add0~17\ = CARRY((\timer_1|r_reg\(8) & !\timer_1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|r_reg\(8),
	datad => VCC,
	cin => \timer_1|Add0~15\,
	combout => \timer_1|Add0~16_combout\,
	cout => \timer_1|Add0~17\);

-- Location: LCCOMB_X96_Y1_N10
\timer_1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add0~30_combout\ = (\timer_1|r_reg\(15) & (!\timer_1|Add0~29\)) # (!\timer_1|r_reg\(15) & ((\timer_1|Add0~29\) # (GND)))
-- \timer_1|Add0~31\ = CARRY((!\timer_1|Add0~29\) # (!\timer_1|r_reg\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|r_reg\(15),
	datad => VCC,
	cin => \timer_1|Add0~29\,
	combout => \timer_1|Add0~30_combout\,
	cout => \timer_1|Add0~31\);

-- Location: LCCOMB_X96_Y1_N12
\timer_1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add0~32_combout\ = (\timer_1|r_reg\(16) & (\timer_1|Add0~31\ $ (GND))) # (!\timer_1|r_reg\(16) & (!\timer_1|Add0~31\ & VCC))
-- \timer_1|Add0~33\ = CARRY((\timer_1|r_reg\(16) & !\timer_1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|r_reg\(16),
	datad => VCC,
	cin => \timer_1|Add0~31\,
	combout => \timer_1|Add0~32_combout\,
	cout => \timer_1|Add0~33\);

-- Location: LCCOMB_X96_Y1_N14
\timer_1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add0~34_combout\ = (\timer_1|r_reg\(17) & (!\timer_1|Add0~33\)) # (!\timer_1|r_reg\(17) & ((\timer_1|Add0~33\) # (GND)))
-- \timer_1|Add0~35\ = CARRY((!\timer_1|Add0~33\) # (!\timer_1|r_reg\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|r_reg\(17),
	datad => VCC,
	cin => \timer_1|Add0~33\,
	combout => \timer_1|Add0~34_combout\,
	cout => \timer_1|Add0~35\);

-- Location: LCCOMB_X96_Y1_N16
\timer_1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add0~36_combout\ = (\timer_1|r_reg\(18) & (\timer_1|Add0~35\ $ (GND))) # (!\timer_1|r_reg\(18) & (!\timer_1|Add0~35\ & VCC))
-- \timer_1|Add0~37\ = CARRY((\timer_1|r_reg\(18) & !\timer_1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|r_reg\(18),
	datad => VCC,
	cin => \timer_1|Add0~35\,
	combout => \timer_1|Add0~36_combout\,
	cout => \timer_1|Add0~37\);

-- Location: LCCOMB_X96_Y1_N18
\timer_1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add0~38_combout\ = \timer_1|Add0~37\ $ (\timer_1|r_reg\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \timer_1|r_reg\(19),
	cin => \timer_1|Add0~37\,
	combout => \timer_1|Add0~38_combout\);

-- Location: FF_X96_Y2_N13
\timer_1|r_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|Add0~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|r_reg\(0));

-- Location: FF_X96_Y1_N25
\timer_1|r_reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|r_next[18]~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|r_reg\(18));

-- Location: FF_X96_Y1_N23
\timer_1|r_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|r_next[17]~1_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|r_reg\(17));

-- Location: FF_X96_Y1_N29
\timer_1|r_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|r_next[16]~2_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|r_reg\(16));

-- Location: FF_X96_Y1_N19
\timer_1|r_reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|Add0~38_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|r_reg\(19));

-- Location: LCCOMB_X96_Y1_N30
\timer_1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Equal0~1_combout\ = (\timer_1|r_reg\(17) & (\timer_1|r_reg\(18) & (\timer_1|r_reg\(16) & !\timer_1|r_reg\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|r_reg\(17),
	datab => \timer_1|r_reg\(18),
	datac => \timer_1|r_reg\(16),
	datad => \timer_1|r_reg\(19),
	combout => \timer_1|Equal0~1_combout\);

-- Location: FF_X95_Y1_N27
\timer_1|r_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|r_next[8]~5_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|r_reg\(8));

-- Location: FF_X96_Y2_N7
\timer_1|r_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|r_next[5]~6_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|r_reg\(5));

-- Location: LCCOMB_X99_Y1_N20
\timer_1|c_d_en~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|c_d_en~0_combout\ = (!\timer_1|c_reg_u\(1) & (\timer_1|c_reg_u\(3) & !\timer_1|c_reg_u\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|c_reg_u\(1),
	datac => \timer_1|c_reg_u\(3),
	datad => \timer_1|c_reg_u\(2),
	combout => \timer_1|c_d_en~0_combout\);

-- Location: LCCOMB_X100_Y1_N12
\timer_1|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add2~0_combout\ = \timer_1|c_reg_d\(2) $ (((\timer_1|c_reg_d\(1) & \timer_1|c_reg_d\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|c_reg_d\(2),
	datac => \timer_1|c_reg_d\(1),
	datad => \timer_1|c_reg_d\(0),
	combout => \timer_1|Add2~0_combout\);

-- Location: LCCOMB_X100_Y1_N30
\timer_1|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add2~1_combout\ = \timer_1|c_reg_d\(3) $ (((\timer_1|c_reg_d\(1) & (\timer_1|c_reg_d\(2) & \timer_1|c_reg_d\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|c_reg_d\(1),
	datab => \timer_1|c_reg_d\(2),
	datac => \timer_1|c_reg_d\(3),
	datad => \timer_1|c_reg_d\(0),
	combout => \timer_1|Add2~1_combout\);

-- Location: LCCOMB_X94_Y1_N22
\timer_1|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add4~0_combout\ = \timer_1|s_reg_d\(2) $ (((\timer_1|s_reg_d\(1) & \timer_1|s_reg_d\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|s_reg_d\(1),
	datac => \timer_1|s_reg_d\(0),
	datad => \timer_1|s_reg_d\(2),
	combout => \timer_1|Add4~0_combout\);

-- Location: LCCOMB_X94_Y1_N12
\timer_1|Add4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add4~1_combout\ = \timer_1|s_reg_d\(3) $ (((\timer_1|s_reg_d\(2) & (\timer_1|s_reg_d\(0) & \timer_1|s_reg_d\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|s_reg_d\(2),
	datab => \timer_1|s_reg_d\(0),
	datac => \timer_1|s_reg_d\(3),
	datad => \timer_1|s_reg_d\(1),
	combout => \timer_1|Add4~1_combout\);

-- Location: LCCOMB_X94_Y1_N10
\timer_1|m_d_en~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|m_d_en~0_combout\ = (\timer_1|m_reg_u\(3) & (!\timer_1|m_reg_u\(1) & !\timer_1|m_reg_u\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|m_reg_u\(3),
	datac => \timer_1|m_reg_u\(1),
	datad => \timer_1|m_reg_u\(2),
	combout => \timer_1|m_d_en~0_combout\);

-- Location: LCCOMB_X90_Y1_N14
\timer_1|Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add5~0_combout\ = \timer_1|m_reg_u\(2) $ (((\timer_1|m_reg_u\(1) & \timer_1|m_reg_u\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|m_reg_u\(2),
	datac => \timer_1|m_reg_u\(1),
	datad => \timer_1|m_reg_u\(0),
	combout => \timer_1|Add5~0_combout\);

-- Location: LCCOMB_X90_Y1_N12
\timer_1|Add5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add5~1_combout\ = \timer_1|m_reg_u\(3) $ (((\timer_1|m_reg_u\(0) & (\timer_1|m_reg_u\(2) & \timer_1|m_reg_u\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|m_reg_u\(0),
	datab => \timer_1|m_reg_u\(2),
	datac => \timer_1|m_reg_u\(1),
	datad => \timer_1|m_reg_u\(3),
	combout => \timer_1|Add5~1_combout\);

-- Location: LCCOMB_X94_Y1_N16
\timer_1|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add6~0_combout\ = \timer_1|m_reg_d\(2) $ (((\timer_1|m_reg_d\(0) & \timer_1|m_reg_d\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|m_reg_d\(0),
	datab => \timer_1|m_reg_d\(1),
	datac => \timer_1|m_reg_d\(2),
	combout => \timer_1|Add6~0_combout\);

-- Location: LCCOMB_X94_Y1_N2
\timer_1|Add6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add6~1_combout\ = \timer_1|m_reg_d\(3) $ (((\timer_1|m_reg_d\(0) & (\timer_1|m_reg_d\(1) & \timer_1|m_reg_d\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|m_reg_d\(0),
	datab => \timer_1|m_reg_d\(1),
	datac => \timer_1|m_reg_d\(2),
	datad => \timer_1|m_reg_d\(3),
	combout => \timer_1|Add6~1_combout\);

-- Location: LCCOMB_X96_Y1_N24
\timer_1|r_next[18]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|r_next[18]~0_combout\ = (\timer_1|Add0~36_combout\ & ((!\timer_1|Equal0~5_combout\) # (!\timer_1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|Equal0~0_combout\,
	datac => \timer_1|Equal0~5_combout\,
	datad => \timer_1|Add0~36_combout\,
	combout => \timer_1|r_next[18]~0_combout\);

-- Location: LCCOMB_X96_Y1_N22
\timer_1|r_next[17]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|r_next[17]~1_combout\ = (\timer_1|Add0~34_combout\ & ((!\timer_1|Equal0~0_combout\) # (!\timer_1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|Equal0~5_combout\,
	datac => \timer_1|Add0~34_combout\,
	datad => \timer_1|Equal0~0_combout\,
	combout => \timer_1|r_next[17]~1_combout\);

-- Location: LCCOMB_X96_Y1_N28
\timer_1|r_next[16]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|r_next[16]~2_combout\ = (\timer_1|Add0~32_combout\ & ((!\timer_1|Equal0~5_combout\) # (!\timer_1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|Equal0~0_combout\,
	datac => \timer_1|Equal0~5_combout\,
	datad => \timer_1|Add0~32_combout\,
	combout => \timer_1|r_next[16]~2_combout\);

-- Location: LCCOMB_X95_Y1_N26
\timer_1|r_next[8]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|r_next[8]~5_combout\ = (\timer_1|Add0~16_combout\ & ((!\timer_1|Equal0~0_combout\) # (!\timer_1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|Equal0~5_combout\,
	datac => \timer_1|Equal0~0_combout\,
	datad => \timer_1|Add0~16_combout\,
	combout => \timer_1|r_next[8]~5_combout\);

-- Location: LCCOMB_X96_Y2_N6
\timer_1|r_next[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|r_next[5]~6_combout\ = (\timer_1|Add0~10_combout\ & ((!\timer_1|Equal0~5_combout\) # (!\timer_1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|Equal0~0_combout\,
	datac => \timer_1|Equal0~5_combout\,
	datad => \timer_1|Add0~10_combout\,
	combout => \timer_1|r_next[5]~6_combout\);

-- Location: IOIBUF_X0_Y36_N15
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G4
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

-- Location: IOOBUF_X115_Y21_N16
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

-- Location: IOOBUF_X115_Y20_N2
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

-- Location: IOOBUF_X115_Y18_N2
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

-- Location: IOOBUF_X115_Y19_N2
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

-- Location: IOOBUF_X115_Y19_N9
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

-- Location: IOOBUF_X115_Y16_N2
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

-- Location: IOOBUF_X115_Y17_N9
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

-- Location: IOOBUF_X105_Y0_N2
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

-- Location: IOOBUF_X105_Y0_N9
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

-- Location: IOOBUF_X105_Y0_N23
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

-- Location: IOOBUF_X111_Y0_N2
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

-- Location: IOOBUF_X100_Y0_N2
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

-- Location: IOOBUF_X115_Y29_N2
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

-- Location: IOOBUF_X115_Y25_N16
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

-- Location: IOOBUF_X79_Y0_N23
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

-- Location: IOOBUF_X83_Y0_N16
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

-- Location: IOOBUF_X83_Y0_N23
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

-- Location: IOOBUF_X74_Y0_N2
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

-- Location: IOOBUF_X74_Y0_N9
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

-- Location: IOOBUF_X107_Y0_N9
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

-- Location: IOOBUF_X98_Y0_N23
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

-- Location: IOOBUF_X69_Y0_N2
\seg_d[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd2ssd_1|ALT_INV_Mux27~0_combout\,
	devoe => ww_devoe,
	o => \seg_d[6]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
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

-- Location: IOOBUF_X72_Y0_N9
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

-- Location: IOOBUF_X72_Y0_N2
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

-- Location: IOOBUF_X98_Y0_N16
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

-- Location: IOOBUF_X87_Y0_N16
\seg_d[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd2ssd_1|Mux22~0_combout\,
	devoe => ww_devoe,
	o => \seg_d[1]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
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

-- Location: IOOBUF_X74_Y0_N23
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

-- Location: IOOBUF_X67_Y0_N23
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

-- Location: IOOBUF_X67_Y0_N16
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

-- Location: IOOBUF_X89_Y0_N16
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

-- Location: IOOBUF_X65_Y0_N9
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

-- Location: IOOBUF_X65_Y0_N2
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

-- Location: IOOBUF_X89_Y0_N23
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

-- Location: IOOBUF_X54_Y0_N23
\min_d[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd2ssd_1|ALT_INV_Mux41~0_combout\,
	devoe => ww_devoe,
	o => \min_d[6]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
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

-- Location: IOOBUF_X67_Y0_N2
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

-- Location: IOOBUF_X62_Y0_N16
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

-- Location: IOOBUF_X62_Y0_N23
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

-- Location: IOOBUF_X67_Y0_N9
\min_d[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd2ssd_1|Mux36~0_combout\,
	devoe => ww_devoe,
	o => \min_d[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
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

-- Location: LCCOMB_X96_Y2_N14
\timer_1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add0~2_combout\ = (\timer_1|r_reg\(1) & (!\timer_1|Add0~1\)) # (!\timer_1|r_reg\(1) & ((\timer_1|Add0~1\) # (GND)))
-- \timer_1|Add0~3\ = CARRY((!\timer_1|Add0~1\) # (!\timer_1|r_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|r_reg\(1),
	datad => VCC,
	cin => \timer_1|Add0~1\,
	combout => \timer_1|Add0~2_combout\,
	cout => \timer_1|Add0~3\);

-- Location: IOIBUF_X115_Y40_N8
\RST~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: FF_X96_Y2_N15
\timer_1|r_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|Add0~2_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|r_reg\(1));

-- Location: LCCOMB_X96_Y2_N16
\timer_1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add0~4_combout\ = (\timer_1|r_reg\(2) & (\timer_1|Add0~3\ $ (GND))) # (!\timer_1|r_reg\(2) & (!\timer_1|Add0~3\ & VCC))
-- \timer_1|Add0~5\ = CARRY((\timer_1|r_reg\(2) & !\timer_1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|r_reg\(2),
	datad => VCC,
	cin => \timer_1|Add0~3\,
	combout => \timer_1|Add0~4_combout\,
	cout => \timer_1|Add0~5\);

-- Location: FF_X96_Y2_N17
\timer_1|r_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|Add0~4_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|r_reg\(2));

-- Location: LCCOMB_X96_Y2_N18
\timer_1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add0~6_combout\ = (\timer_1|r_reg\(3) & (!\timer_1|Add0~5\)) # (!\timer_1|r_reg\(3) & ((\timer_1|Add0~5\) # (GND)))
-- \timer_1|Add0~7\ = CARRY((!\timer_1|Add0~5\) # (!\timer_1|r_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|r_reg\(3),
	datad => VCC,
	cin => \timer_1|Add0~5\,
	combout => \timer_1|Add0~6_combout\,
	cout => \timer_1|Add0~7\);

-- Location: FF_X96_Y2_N19
\timer_1|r_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|Add0~6_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|r_reg\(3));

-- Location: LCCOMB_X96_Y2_N20
\timer_1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add0~8_combout\ = (\timer_1|r_reg\(4) & (\timer_1|Add0~7\ $ (GND))) # (!\timer_1|r_reg\(4) & (!\timer_1|Add0~7\ & VCC))
-- \timer_1|Add0~9\ = CARRY((\timer_1|r_reg\(4) & !\timer_1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|r_reg\(4),
	datad => VCC,
	cin => \timer_1|Add0~7\,
	combout => \timer_1|Add0~8_combout\,
	cout => \timer_1|Add0~9\);

-- Location: FF_X96_Y2_N21
\timer_1|r_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|Add0~8_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|r_reg\(4));

-- Location: LCCOMB_X96_Y2_N24
\timer_1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add0~12_combout\ = (\timer_1|r_reg\(6) & (\timer_1|Add0~11\ $ (GND))) # (!\timer_1|r_reg\(6) & (!\timer_1|Add0~11\ & VCC))
-- \timer_1|Add0~13\ = CARRY((\timer_1|r_reg\(6) & !\timer_1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|r_reg\(6),
	datad => VCC,
	cin => \timer_1|Add0~11\,
	combout => \timer_1|Add0~12_combout\,
	cout => \timer_1|Add0~13\);

-- Location: FF_X96_Y2_N25
\timer_1|r_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|Add0~12_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|r_reg\(6));

-- Location: LCCOMB_X96_Y2_N26
\timer_1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add0~14_combout\ = (\timer_1|r_reg\(7) & (!\timer_1|Add0~13\)) # (!\timer_1|r_reg\(7) & ((\timer_1|Add0~13\) # (GND)))
-- \timer_1|Add0~15\ = CARRY((!\timer_1|Add0~13\) # (!\timer_1|r_reg\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|r_reg\(7),
	datad => VCC,
	cin => \timer_1|Add0~13\,
	combout => \timer_1|Add0~14_combout\,
	cout => \timer_1|Add0~15\);

-- Location: FF_X96_Y2_N27
\timer_1|r_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|Add0~14_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|r_reg\(7));

-- Location: LCCOMB_X96_Y2_N30
\timer_1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add0~18_combout\ = (\timer_1|r_reg\(9) & (!\timer_1|Add0~17\)) # (!\timer_1|r_reg\(9) & ((\timer_1|Add0~17\) # (GND)))
-- \timer_1|Add0~19\ = CARRY((!\timer_1|Add0~17\) # (!\timer_1|r_reg\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|r_reg\(9),
	datad => VCC,
	cin => \timer_1|Add0~17\,
	combout => \timer_1|Add0~18_combout\,
	cout => \timer_1|Add0~19\);

-- Location: LCCOMB_X96_Y1_N0
\timer_1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add0~20_combout\ = (\timer_1|r_reg\(10) & (\timer_1|Add0~19\ $ (GND))) # (!\timer_1|r_reg\(10) & (!\timer_1|Add0~19\ & VCC))
-- \timer_1|Add0~21\ = CARRY((\timer_1|r_reg\(10) & !\timer_1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|r_reg\(10),
	datad => VCC,
	cin => \timer_1|Add0~19\,
	combout => \timer_1|Add0~20_combout\,
	cout => \timer_1|Add0~21\);

-- Location: FF_X96_Y1_N1
\timer_1|r_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|Add0~20_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|r_reg\(10));

-- Location: LCCOMB_X96_Y1_N2
\timer_1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add0~22_combout\ = (\timer_1|r_reg\(11) & (!\timer_1|Add0~21\)) # (!\timer_1|r_reg\(11) & ((\timer_1|Add0~21\) # (GND)))
-- \timer_1|Add0~23\ = CARRY((!\timer_1|Add0~21\) # (!\timer_1|r_reg\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|r_reg\(11),
	datad => VCC,
	cin => \timer_1|Add0~21\,
	combout => \timer_1|Add0~22_combout\,
	cout => \timer_1|Add0~23\);

-- Location: FF_X96_Y1_N3
\timer_1|r_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|Add0~22_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|r_reg\(11));

-- Location: LCCOMB_X96_Y1_N4
\timer_1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add0~24_combout\ = (\timer_1|r_reg\(12) & (\timer_1|Add0~23\ $ (GND))) # (!\timer_1|r_reg\(12) & (!\timer_1|Add0~23\ & VCC))
-- \timer_1|Add0~25\ = CARRY((\timer_1|r_reg\(12) & !\timer_1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|r_reg\(12),
	datad => VCC,
	cin => \timer_1|Add0~23\,
	combout => \timer_1|Add0~24_combout\,
	cout => \timer_1|Add0~25\);

-- Location: FF_X96_Y1_N5
\timer_1|r_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|Add0~24_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|r_reg\(12));

-- Location: LCCOMB_X96_Y1_N6
\timer_1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add0~26_combout\ = (\timer_1|r_reg\(13) & (!\timer_1|Add0~25\)) # (!\timer_1|r_reg\(13) & ((\timer_1|Add0~25\) # (GND)))
-- \timer_1|Add0~27\ = CARRY((!\timer_1|Add0~25\) # (!\timer_1|r_reg\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|r_reg\(13),
	datad => VCC,
	cin => \timer_1|Add0~25\,
	combout => \timer_1|Add0~26_combout\,
	cout => \timer_1|Add0~27\);

-- Location: LCCOMB_X96_Y1_N8
\timer_1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add0~28_combout\ = (\timer_1|r_reg\(14) & (\timer_1|Add0~27\ $ (GND))) # (!\timer_1|r_reg\(14) & (!\timer_1|Add0~27\ & VCC))
-- \timer_1|Add0~29\ = CARRY((\timer_1|r_reg\(14) & !\timer_1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|r_reg\(14),
	datad => VCC,
	cin => \timer_1|Add0~27\,
	combout => \timer_1|Add0~28_combout\,
	cout => \timer_1|Add0~29\);

-- Location: FF_X96_Y1_N9
\timer_1|r_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|Add0~28_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|r_reg\(14));

-- Location: LCCOMB_X96_Y2_N4
\timer_1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Equal0~0_combout\ = (\timer_1|r_reg\(0) & (\timer_1|r_reg\(2) & (\timer_1|r_reg\(1) & \timer_1|r_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|r_reg\(0),
	datab => \timer_1|r_reg\(2),
	datac => \timer_1|r_reg\(1),
	datad => \timer_1|r_reg\(3),
	combout => \timer_1|Equal0~0_combout\);

-- Location: LCCOMB_X96_Y1_N20
\timer_1|r_next[15]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|r_next[15]~3_combout\ = (\timer_1|Add0~30_combout\ & ((!\timer_1|Equal0~5_combout\) # (!\timer_1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|Equal0~0_combout\,
	datac => \timer_1|Equal0~5_combout\,
	datad => \timer_1|Add0~30_combout\,
	combout => \timer_1|r_next[15]~3_combout\);

-- Location: FF_X96_Y1_N21
\timer_1|r_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|r_next[15]~3_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|r_reg\(15));

-- Location: LCCOMB_X96_Y1_N26
\timer_1|r_next[13]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|r_next[13]~4_combout\ = (\timer_1|Add0~26_combout\ & ((!\timer_1|Equal0~5_combout\) # (!\timer_1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|Equal0~0_combout\,
	datac => \timer_1|Equal0~5_combout\,
	datad => \timer_1|Add0~26_combout\,
	combout => \timer_1|r_next[13]~4_combout\);

-- Location: FF_X96_Y1_N27
\timer_1|r_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|r_next[13]~4_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|r_reg\(13));

-- Location: LCCOMB_X95_Y1_N0
\timer_1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Equal0~2_combout\ = (!\timer_1|r_reg\(12) & (!\timer_1|r_reg\(14) & (\timer_1|r_reg\(15) & \timer_1|r_reg\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|r_reg\(12),
	datab => \timer_1|r_reg\(14),
	datac => \timer_1|r_reg\(15),
	datad => \timer_1|r_reg\(13),
	combout => \timer_1|Equal0~2_combout\);

-- Location: FF_X95_Y1_N9
\timer_1|r_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \timer_1|Add0~18_combout\,
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|r_reg\(9));

-- Location: LCCOMB_X95_Y1_N8
\timer_1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Equal0~3_combout\ = (\timer_1|r_reg\(8) & (!\timer_1|r_reg\(10) & (!\timer_1|r_reg\(9) & !\timer_1|r_reg\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|r_reg\(8),
	datab => \timer_1|r_reg\(10),
	datac => \timer_1|r_reg\(9),
	datad => \timer_1|r_reg\(11),
	combout => \timer_1|Equal0~3_combout\);

-- Location: LCCOMB_X96_Y2_N8
\timer_1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Equal0~4_combout\ = (!\timer_1|r_reg\(5) & (\timer_1|r_reg\(4) & (!\timer_1|r_reg\(7) & !\timer_1|r_reg\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|r_reg\(5),
	datab => \timer_1|r_reg\(4),
	datac => \timer_1|r_reg\(7),
	datad => \timer_1|r_reg\(6),
	combout => \timer_1|Equal0~4_combout\);

-- Location: LCCOMB_X95_Y1_N10
\timer_1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Equal0~5_combout\ = (\timer_1|Equal0~1_combout\ & (\timer_1|Equal0~2_combout\ & (\timer_1|Equal0~3_combout\ & \timer_1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|Equal0~1_combout\,
	datab => \timer_1|Equal0~2_combout\,
	datac => \timer_1|Equal0~3_combout\,
	datad => \timer_1|Equal0~4_combout\,
	combout => \timer_1|Equal0~5_combout\);

-- Location: LCCOMB_X99_Y1_N24
\timer_1|c_reg_u[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|c_reg_u[0]~0_combout\ = \timer_1|c_reg_u\(0) $ (((\timer_1|Equal0~0_combout\ & \timer_1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|Equal0~0_combout\,
	datac => \timer_1|c_reg_u\(0),
	datad => \timer_1|Equal0~5_combout\,
	combout => \timer_1|c_reg_u[0]~0_combout\);

-- Location: FF_X99_Y1_N25
\timer_1|c_reg_u[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|c_reg_u[0]~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|c_reg_u\(0));

-- Location: LCCOMB_X99_Y1_N6
\timer_1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Equal0~6_combout\ = (\timer_1|Equal0~0_combout\ & \timer_1|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer_1|Equal0~0_combout\,
	datad => \timer_1|Equal0~5_combout\,
	combout => \timer_1|Equal0~6_combout\);

-- Location: LCCOMB_X99_Y1_N22
\timer_1|c_reg_u[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|c_reg_u[1]~1_combout\ = (\timer_1|Equal0~6_combout\ & (!\timer_1|c_d_en~combout\ & (\timer_1|c_reg_u\(0) $ (\timer_1|c_reg_u\(1))))) # (!\timer_1|Equal0~6_combout\ & (((\timer_1|c_reg_u\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|c_d_en~combout\,
	datab => \timer_1|c_reg_u\(0),
	datac => \timer_1|c_reg_u\(1),
	datad => \timer_1|Equal0~6_combout\,
	combout => \timer_1|c_reg_u[1]~1_combout\);

-- Location: FF_X99_Y1_N23
\timer_1|c_reg_u[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|c_reg_u[1]~1_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|c_reg_u\(1));

-- Location: LCCOMB_X99_Y1_N28
\timer_1|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add1~0_combout\ = \timer_1|c_reg_u\(2) $ (((\timer_1|c_reg_u\(0) & \timer_1|c_reg_u\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|c_reg_u\(2),
	datab => \timer_1|c_reg_u\(0),
	datac => \timer_1|c_reg_u\(1),
	combout => \timer_1|Add1~0_combout\);

-- Location: LCCOMB_X99_Y1_N12
\timer_1|c_reg_u[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|c_reg_u[2]~2_combout\ = (\timer_1|Equal0~6_combout\ & (!\timer_1|c_d_en~combout\ & (\timer_1|Add1~0_combout\))) # (!\timer_1|Equal0~6_combout\ & (((\timer_1|c_reg_u\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|c_d_en~combout\,
	datab => \timer_1|Add1~0_combout\,
	datac => \timer_1|c_reg_u\(2),
	datad => \timer_1|Equal0~6_combout\,
	combout => \timer_1|c_reg_u[2]~2_combout\);

-- Location: FF_X99_Y1_N13
\timer_1|c_reg_u[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|c_reg_u[2]~2_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|c_reg_u\(2));

-- Location: LCCOMB_X99_Y1_N14
\timer_1|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add1~1_combout\ = \timer_1|c_reg_u\(3) $ (((\timer_1|c_reg_u\(1) & (\timer_1|c_reg_u\(0) & \timer_1|c_reg_u\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|c_reg_u\(1),
	datab => \timer_1|c_reg_u\(0),
	datac => \timer_1|c_reg_u\(3),
	datad => \timer_1|c_reg_u\(2),
	combout => \timer_1|Add1~1_combout\);

-- Location: LCCOMB_X99_Y1_N26
\timer_1|c_reg_u[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|c_reg_u[3]~3_combout\ = (\timer_1|Equal0~6_combout\ & (!\timer_1|c_d_en~combout\ & (\timer_1|Add1~1_combout\))) # (!\timer_1|Equal0~6_combout\ & (((\timer_1|c_reg_u\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|c_d_en~combout\,
	datab => \timer_1|Add1~1_combout\,
	datac => \timer_1|c_reg_u\(3),
	datad => \timer_1|Equal0~6_combout\,
	combout => \timer_1|c_reg_u[3]~3_combout\);

-- Location: FF_X99_Y1_N27
\timer_1|c_reg_u[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|c_reg_u[3]~3_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|c_reg_u\(3));

-- Location: LCCOMB_X99_Y1_N16
\bcd2ssd_1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux6~0_combout\ = (\timer_1|c_reg_u\(3)) # ((\timer_1|c_reg_u\(1) & ((!\timer_1|c_reg_u\(2)) # (!\timer_1|c_reg_u\(0)))) # (!\timer_1|c_reg_u\(1) & ((\timer_1|c_reg_u\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|c_reg_u\(1),
	datab => \timer_1|c_reg_u\(0),
	datac => \timer_1|c_reg_u\(3),
	datad => \timer_1|c_reg_u\(2),
	combout => \bcd2ssd_1|Mux6~0_combout\);

-- Location: LCCOMB_X99_Y1_N10
\bcd2ssd_1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux5~0_combout\ = (!\timer_1|c_reg_u\(3) & ((\timer_1|c_reg_u\(1) & ((\timer_1|c_reg_u\(0)) # (!\timer_1|c_reg_u\(2)))) # (!\timer_1|c_reg_u\(1) & (\timer_1|c_reg_u\(0) & !\timer_1|c_reg_u\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|c_reg_u\(1),
	datab => \timer_1|c_reg_u\(0),
	datac => \timer_1|c_reg_u\(3),
	datad => \timer_1|c_reg_u\(2),
	combout => \bcd2ssd_1|Mux5~0_combout\);

-- Location: LCCOMB_X99_Y1_N0
\bcd2ssd_1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux4~0_combout\ = (\timer_1|c_reg_u\(1) & (\timer_1|c_reg_u\(0) & (!\timer_1|c_reg_u\(3)))) # (!\timer_1|c_reg_u\(1) & ((\timer_1|c_reg_u\(2) & ((!\timer_1|c_reg_u\(3)))) # (!\timer_1|c_reg_u\(2) & (\timer_1|c_reg_u\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|c_reg_u\(1),
	datab => \timer_1|c_reg_u\(0),
	datac => \timer_1|c_reg_u\(3),
	datad => \timer_1|c_reg_u\(2),
	combout => \bcd2ssd_1|Mux4~0_combout\);

-- Location: LCCOMB_X99_Y1_N18
\bcd2ssd_1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux3~0_combout\ = (!\timer_1|c_reg_u\(3) & ((\timer_1|c_reg_u\(1) & (\timer_1|c_reg_u\(0) & \timer_1|c_reg_u\(2))) # (!\timer_1|c_reg_u\(1) & (\timer_1|c_reg_u\(0) $ (\timer_1|c_reg_u\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|c_reg_u\(1),
	datab => \timer_1|c_reg_u\(0),
	datac => \timer_1|c_reg_u\(3),
	datad => \timer_1|c_reg_u\(2),
	combout => \bcd2ssd_1|Mux3~0_combout\);

-- Location: LCCOMB_X99_Y1_N4
\bcd2ssd_1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux2~0_combout\ = (\timer_1|c_reg_u\(2) & (((\timer_1|c_reg_u\(3))))) # (!\timer_1|c_reg_u\(2) & (\timer_1|c_reg_u\(1) & ((\timer_1|c_reg_u\(3)) # (!\timer_1|c_reg_u\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|c_reg_u\(1),
	datab => \timer_1|c_reg_u\(0),
	datac => \timer_1|c_reg_u\(3),
	datad => \timer_1|c_reg_u\(2),
	combout => \bcd2ssd_1|Mux2~0_combout\);

-- Location: LCCOMB_X99_Y1_N30
\bcd2ssd_1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux1~0_combout\ = (\timer_1|c_reg_u\(3) & ((\timer_1|c_reg_u\(1)) # ((\timer_1|c_reg_u\(2))))) # (!\timer_1|c_reg_u\(3) & (\timer_1|c_reg_u\(2) & (\timer_1|c_reg_u\(1) $ (\timer_1|c_reg_u\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|c_reg_u\(1),
	datab => \timer_1|c_reg_u\(0),
	datac => \timer_1|c_reg_u\(3),
	datad => \timer_1|c_reg_u\(2),
	combout => \bcd2ssd_1|Mux1~0_combout\);

-- Location: LCCOMB_X99_Y1_N8
\bcd2ssd_1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux0~0_combout\ = (!\timer_1|c_reg_u\(1) & (!\timer_1|c_reg_u\(3) & (\timer_1|c_reg_u\(0) $ (\timer_1|c_reg_u\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|c_reg_u\(1),
	datab => \timer_1|c_reg_u\(0),
	datac => \timer_1|c_reg_u\(3),
	datad => \timer_1|c_reg_u\(2),
	combout => \bcd2ssd_1|Mux0~0_combout\);

-- Location: LCCOMB_X95_Y1_N16
\timer_1|c_d_en\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|c_d_en~combout\ = (\timer_1|c_d_en~0_combout\ & (\timer_1|c_reg_u\(0) & (\timer_1|Equal0~0_combout\ & \timer_1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|c_d_en~0_combout\,
	datab => \timer_1|c_reg_u\(0),
	datac => \timer_1|Equal0~0_combout\,
	datad => \timer_1|Equal0~5_combout\,
	combout => \timer_1|c_d_en~combout\);

-- Location: LCCOMB_X100_Y1_N24
\timer_1|c_reg_d[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|c_reg_d[0]~0_combout\ = \timer_1|c_reg_d\(0) $ (\timer_1|c_d_en~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer_1|c_reg_d\(0),
	datad => \timer_1|c_d_en~combout\,
	combout => \timer_1|c_reg_d[0]~0_combout\);

-- Location: FF_X100_Y1_N25
\timer_1|c_reg_d[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|c_reg_d[0]~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|c_reg_d\(0));

-- Location: LCCOMB_X100_Y1_N18
\timer_1|c_reg_d[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|c_reg_d[1]~1_combout\ = (\timer_1|c_reg_d\(0) & ((\timer_1|c_reg_d\(1) & ((!\timer_1|c_d_en~combout\))) # (!\timer_1|c_reg_d\(1) & (!\timer_1|s_u_en~0_combout\ & \timer_1|c_d_en~combout\)))) # (!\timer_1|c_reg_d\(0) & (((\timer_1|c_reg_d\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|s_u_en~0_combout\,
	datab => \timer_1|c_reg_d\(0),
	datac => \timer_1|c_reg_d\(1),
	datad => \timer_1|c_d_en~combout\,
	combout => \timer_1|c_reg_d[1]~1_combout\);

-- Location: FF_X100_Y1_N19
\timer_1|c_reg_d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|c_reg_d[1]~1_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|c_reg_d\(1));

-- Location: LCCOMB_X100_Y1_N0
\timer_1|c_reg_d[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|c_reg_d[2]~2_combout\ = (\timer_1|c_d_en~combout\ & (\timer_1|Add2~0_combout\ & ((!\timer_1|s_u_en~combout\)))) # (!\timer_1|c_d_en~combout\ & (((\timer_1|c_reg_d\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|Add2~0_combout\,
	datab => \timer_1|c_d_en~combout\,
	datac => \timer_1|c_reg_d\(2),
	datad => \timer_1|s_u_en~combout\,
	combout => \timer_1|c_reg_d[2]~2_combout\);

-- Location: FF_X100_Y1_N1
\timer_1|c_reg_d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|c_reg_d[2]~2_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|c_reg_d\(2));

-- Location: LCCOMB_X100_Y1_N14
\timer_1|s_u_en~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|s_u_en~0_combout\ = (!\timer_1|c_reg_d\(2) & (\timer_1|c_reg_d\(3) & !\timer_1|c_reg_d\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|c_reg_d\(2),
	datac => \timer_1|c_reg_d\(3),
	datad => \timer_1|c_reg_d\(1),
	combout => \timer_1|s_u_en~0_combout\);

-- Location: LCCOMB_X95_Y1_N6
\timer_1|s_u_en\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|s_u_en~combout\ = (\timer_1|c_reg_d\(0) & (\timer_1|s_u_en~0_combout\ & \timer_1|c_d_en~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|c_reg_d\(0),
	datac => \timer_1|s_u_en~0_combout\,
	datad => \timer_1|c_d_en~combout\,
	combout => \timer_1|s_u_en~combout\);

-- Location: LCCOMB_X100_Y1_N22
\timer_1|c_reg_d[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|c_reg_d[3]~3_combout\ = (\timer_1|c_d_en~combout\ & (\timer_1|Add2~1_combout\ & ((!\timer_1|s_u_en~combout\)))) # (!\timer_1|c_d_en~combout\ & (((\timer_1|c_reg_d\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|Add2~1_combout\,
	datab => \timer_1|c_d_en~combout\,
	datac => \timer_1|c_reg_d\(3),
	datad => \timer_1|s_u_en~combout\,
	combout => \timer_1|c_reg_d[3]~3_combout\);

-- Location: FF_X100_Y1_N23
\timer_1|c_reg_d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|c_reg_d[3]~3_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|c_reg_d\(3));

-- Location: LCCOMB_X100_Y1_N20
\bcd2ssd_1|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux13~0_combout\ = (\timer_1|c_reg_d\(3)) # ((\timer_1|c_reg_d\(1) & ((!\timer_1|c_reg_d\(2)) # (!\timer_1|c_reg_d\(0)))) # (!\timer_1|c_reg_d\(1) & ((\timer_1|c_reg_d\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|c_reg_d\(1),
	datab => \timer_1|c_reg_d\(0),
	datac => \timer_1|c_reg_d\(3),
	datad => \timer_1|c_reg_d\(2),
	combout => \bcd2ssd_1|Mux13~0_combout\);

-- Location: LCCOMB_X100_Y1_N6
\bcd2ssd_1|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux12~0_combout\ = (!\timer_1|c_reg_d\(3) & ((\timer_1|c_reg_d\(1) & ((\timer_1|c_reg_d\(0)) # (!\timer_1|c_reg_d\(2)))) # (!\timer_1|c_reg_d\(1) & (\timer_1|c_reg_d\(0) & !\timer_1|c_reg_d\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|c_reg_d\(1),
	datab => \timer_1|c_reg_d\(0),
	datac => \timer_1|c_reg_d\(3),
	datad => \timer_1|c_reg_d\(2),
	combout => \bcd2ssd_1|Mux12~0_combout\);

-- Location: LCCOMB_X100_Y1_N4
\bcd2ssd_1|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux11~0_combout\ = (\timer_1|c_reg_d\(1) & (\timer_1|c_reg_d\(0) & (!\timer_1|c_reg_d\(3)))) # (!\timer_1|c_reg_d\(1) & ((\timer_1|c_reg_d\(2) & ((!\timer_1|c_reg_d\(3)))) # (!\timer_1|c_reg_d\(2) & (\timer_1|c_reg_d\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|c_reg_d\(1),
	datab => \timer_1|c_reg_d\(0),
	datac => \timer_1|c_reg_d\(3),
	datad => \timer_1|c_reg_d\(2),
	combout => \bcd2ssd_1|Mux11~0_combout\);

-- Location: LCCOMB_X100_Y1_N2
\bcd2ssd_1|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux10~0_combout\ = (!\timer_1|c_reg_d\(3) & ((\timer_1|c_reg_d\(1) & (\timer_1|c_reg_d\(0) & \timer_1|c_reg_d\(2))) # (!\timer_1|c_reg_d\(1) & (\timer_1|c_reg_d\(0) $ (\timer_1|c_reg_d\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|c_reg_d\(1),
	datab => \timer_1|c_reg_d\(0),
	datac => \timer_1|c_reg_d\(3),
	datad => \timer_1|c_reg_d\(2),
	combout => \bcd2ssd_1|Mux10~0_combout\);

-- Location: LCCOMB_X100_Y1_N28
\bcd2ssd_1|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux9~0_combout\ = (\timer_1|c_reg_d\(2) & (((\timer_1|c_reg_d\(3))))) # (!\timer_1|c_reg_d\(2) & (\timer_1|c_reg_d\(1) & ((\timer_1|c_reg_d\(3)) # (!\timer_1|c_reg_d\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|c_reg_d\(1),
	datab => \timer_1|c_reg_d\(0),
	datac => \timer_1|c_reg_d\(3),
	datad => \timer_1|c_reg_d\(2),
	combout => \bcd2ssd_1|Mux9~0_combout\);

-- Location: LCCOMB_X100_Y1_N26
\bcd2ssd_1|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux8~0_combout\ = (\timer_1|c_reg_d\(3) & ((\timer_1|c_reg_d\(1)) # ((\timer_1|c_reg_d\(2))))) # (!\timer_1|c_reg_d\(3) & (\timer_1|c_reg_d\(2) & (\timer_1|c_reg_d\(1) $ (\timer_1|c_reg_d\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|c_reg_d\(1),
	datab => \timer_1|c_reg_d\(0),
	datac => \timer_1|c_reg_d\(3),
	datad => \timer_1|c_reg_d\(2),
	combout => \bcd2ssd_1|Mux8~0_combout\);

-- Location: LCCOMB_X100_Y1_N16
\bcd2ssd_1|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux7~0_combout\ = (!\timer_1|c_reg_d\(1) & (!\timer_1|c_reg_d\(3) & (\timer_1|c_reg_d\(0) $ (\timer_1|c_reg_d\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|c_reg_d\(1),
	datab => \timer_1|c_reg_d\(0),
	datac => \timer_1|c_reg_d\(3),
	datad => \timer_1|c_reg_d\(2),
	combout => \bcd2ssd_1|Mux7~0_combout\);

-- Location: LCCOMB_X99_Y1_N2
\timer_1|s_reg_u[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|s_reg_u[0]~0_combout\ = \timer_1|s_reg_u\(0) $ (((\timer_1|c_reg_d\(0) & (\timer_1|s_u_en~0_combout\ & \timer_1|c_d_en~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|c_reg_d\(0),
	datab => \timer_1|s_u_en~0_combout\,
	datac => \timer_1|s_reg_u\(0),
	datad => \timer_1|c_d_en~combout\,
	combout => \timer_1|s_reg_u[0]~0_combout\);

-- Location: FF_X99_Y1_N3
\timer_1|s_reg_u[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|s_reg_u[0]~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|s_reg_u\(0));

-- Location: LCCOMB_X92_Y1_N26
\timer_1|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add3~0_combout\ = \timer_1|s_reg_u\(2) $ (((\timer_1|s_reg_u\(1) & \timer_1|s_reg_u\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|s_reg_u\(2),
	datab => \timer_1|s_reg_u\(1),
	datad => \timer_1|s_reg_u\(0),
	combout => \timer_1|Add3~0_combout\);

-- Location: LCCOMB_X95_Y1_N28
\timer_1|s_d_en\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|s_d_en~combout\ = (\timer_1|s_reg_u\(0) & (\timer_1|s_d_en~0_combout\ & \timer_1|s_u_en~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|s_reg_u\(0),
	datac => \timer_1|s_d_en~0_combout\,
	datad => \timer_1|s_u_en~combout\,
	combout => \timer_1|s_d_en~combout\);

-- Location: LCCOMB_X94_Y1_N8
\timer_1|s_reg_u[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|s_reg_u[2]~2_combout\ = (\timer_1|s_u_en~combout\ & (\timer_1|Add3~0_combout\ & ((!\timer_1|s_d_en~combout\)))) # (!\timer_1|s_u_en~combout\ & (((\timer_1|s_reg_u\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|s_u_en~combout\,
	datab => \timer_1|Add3~0_combout\,
	datac => \timer_1|s_reg_u\(2),
	datad => \timer_1|s_d_en~combout\,
	combout => \timer_1|s_reg_u[2]~2_combout\);

-- Location: FF_X94_Y1_N9
\timer_1|s_reg_u[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|s_reg_u[2]~2_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|s_reg_u\(2));

-- Location: LCCOMB_X92_Y1_N12
\timer_1|s_d_en~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|s_d_en~0_combout\ = (\timer_1|s_reg_u\(3) & (!\timer_1|s_reg_u\(1) & !\timer_1|s_reg_u\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|s_reg_u\(3),
	datab => \timer_1|s_reg_u\(1),
	datad => \timer_1|s_reg_u\(2),
	combout => \timer_1|s_d_en~0_combout\);

-- Location: LCCOMB_X92_Y1_N4
\timer_1|s_reg_u[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|s_reg_u[1]~1_combout\ = (\timer_1|s_reg_u\(0) & ((\timer_1|s_reg_u\(1) & ((!\timer_1|s_u_en~combout\))) # (!\timer_1|s_reg_u\(1) & (!\timer_1|s_d_en~0_combout\ & \timer_1|s_u_en~combout\)))) # (!\timer_1|s_reg_u\(0) & (((\timer_1|s_reg_u\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|s_reg_u\(0),
	datab => \timer_1|s_d_en~0_combout\,
	datac => \timer_1|s_reg_u\(1),
	datad => \timer_1|s_u_en~combout\,
	combout => \timer_1|s_reg_u[1]~1_combout\);

-- Location: FF_X92_Y1_N5
\timer_1|s_reg_u[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|s_reg_u[1]~1_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|s_reg_u\(1));

-- Location: LCCOMB_X92_Y1_N0
\timer_1|Add3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add3~1_combout\ = \timer_1|s_reg_u\(3) $ (((\timer_1|s_reg_u\(2) & (\timer_1|s_reg_u\(1) & \timer_1|s_reg_u\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|s_reg_u\(2),
	datab => \timer_1|s_reg_u\(3),
	datac => \timer_1|s_reg_u\(1),
	datad => \timer_1|s_reg_u\(0),
	combout => \timer_1|Add3~1_combout\);

-- Location: LCCOMB_X92_Y1_N6
\timer_1|s_reg_u[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|s_reg_u[3]~3_combout\ = (\timer_1|s_u_en~combout\ & (\timer_1|Add3~1_combout\ & ((!\timer_1|s_d_en~combout\)))) # (!\timer_1|s_u_en~combout\ & (((\timer_1|s_reg_u\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|s_u_en~combout\,
	datab => \timer_1|Add3~1_combout\,
	datac => \timer_1|s_reg_u\(3),
	datad => \timer_1|s_d_en~combout\,
	combout => \timer_1|s_reg_u[3]~3_combout\);

-- Location: FF_X92_Y1_N7
\timer_1|s_reg_u[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|s_reg_u[3]~3_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|s_reg_u\(3));

-- Location: LCCOMB_X91_Y1_N4
\bcd2ssd_1|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux20~0_combout\ = (\timer_1|s_reg_u\(3)) # ((\timer_1|s_reg_u\(2) & ((!\timer_1|s_reg_u\(1)) # (!\timer_1|s_reg_u\(0)))) # (!\timer_1|s_reg_u\(2) & ((\timer_1|s_reg_u\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|s_reg_u\(3),
	datab => \timer_1|s_reg_u\(0),
	datac => \timer_1|s_reg_u\(2),
	datad => \timer_1|s_reg_u\(1),
	combout => \bcd2ssd_1|Mux20~0_combout\);

-- Location: LCCOMB_X91_Y1_N10
\bcd2ssd_1|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux19~0_combout\ = (!\timer_1|s_reg_u\(3) & ((\timer_1|s_reg_u\(0) & ((\timer_1|s_reg_u\(1)) # (!\timer_1|s_reg_u\(2)))) # (!\timer_1|s_reg_u\(0) & (!\timer_1|s_reg_u\(2) & \timer_1|s_reg_u\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|s_reg_u\(3),
	datab => \timer_1|s_reg_u\(0),
	datac => \timer_1|s_reg_u\(2),
	datad => \timer_1|s_reg_u\(1),
	combout => \bcd2ssd_1|Mux19~0_combout\);

-- Location: LCCOMB_X91_Y1_N12
\bcd2ssd_1|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux18~0_combout\ = (\timer_1|s_reg_u\(1) & (!\timer_1|s_reg_u\(3) & (\timer_1|s_reg_u\(0)))) # (!\timer_1|s_reg_u\(1) & ((\timer_1|s_reg_u\(2) & (!\timer_1|s_reg_u\(3))) # (!\timer_1|s_reg_u\(2) & ((\timer_1|s_reg_u\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|s_reg_u\(3),
	datab => \timer_1|s_reg_u\(0),
	datac => \timer_1|s_reg_u\(2),
	datad => \timer_1|s_reg_u\(1),
	combout => \bcd2ssd_1|Mux18~0_combout\);

-- Location: LCCOMB_X92_Y1_N28
\bcd2ssd_1|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux17~0_combout\ = (!\timer_1|s_reg_u\(3) & ((\timer_1|s_reg_u\(2) & (\timer_1|s_reg_u\(1) $ (!\timer_1|s_reg_u\(0)))) # (!\timer_1|s_reg_u\(2) & (!\timer_1|s_reg_u\(1) & \timer_1|s_reg_u\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|s_reg_u\(3),
	datab => \timer_1|s_reg_u\(2),
	datac => \timer_1|s_reg_u\(1),
	datad => \timer_1|s_reg_u\(0),
	combout => \bcd2ssd_1|Mux17~0_combout\);

-- Location: LCCOMB_X92_Y1_N30
\bcd2ssd_1|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux16~0_combout\ = (\timer_1|s_reg_u\(2) & (\timer_1|s_reg_u\(3))) # (!\timer_1|s_reg_u\(2) & (\timer_1|s_reg_u\(1) & ((\timer_1|s_reg_u\(3)) # (!\timer_1|s_reg_u\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|s_reg_u\(3),
	datab => \timer_1|s_reg_u\(2),
	datac => \timer_1|s_reg_u\(1),
	datad => \timer_1|s_reg_u\(0),
	combout => \bcd2ssd_1|Mux16~0_combout\);

-- Location: LCCOMB_X92_Y1_N24
\bcd2ssd_1|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux15~0_combout\ = (\timer_1|s_reg_u\(3) & ((\timer_1|s_reg_u\(2)) # ((\timer_1|s_reg_u\(1))))) # (!\timer_1|s_reg_u\(3) & (\timer_1|s_reg_u\(2) & (\timer_1|s_reg_u\(1) $ (\timer_1|s_reg_u\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|s_reg_u\(3),
	datab => \timer_1|s_reg_u\(2),
	datac => \timer_1|s_reg_u\(1),
	datad => \timer_1|s_reg_u\(0),
	combout => \bcd2ssd_1|Mux15~0_combout\);

-- Location: LCCOMB_X92_Y1_N14
\bcd2ssd_1|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux14~0_combout\ = (!\timer_1|s_reg_u\(3) & (!\timer_1|s_reg_u\(1) & (\timer_1|s_reg_u\(2) $ (\timer_1|s_reg_u\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|s_reg_u\(3),
	datab => \timer_1|s_reg_u\(2),
	datac => \timer_1|s_reg_u\(1),
	datad => \timer_1|s_reg_u\(0),
	combout => \bcd2ssd_1|Mux14~0_combout\);

-- Location: LCCOMB_X95_Y1_N18
\timer_1|m_u_en\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|m_u_en~combout\ = (\timer_1|s_reg_d\(0) & (\timer_1|m_u_en~0_combout\ & \timer_1|s_d_en~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|s_reg_d\(0),
	datac => \timer_1|m_u_en~0_combout\,
	datad => \timer_1|s_d_en~combout\,
	combout => \timer_1|m_u_en~combout\);

-- Location: LCCOMB_X95_Y1_N12
\timer_1|s_reg_d[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|s_reg_d[3]~3_combout\ = (\timer_1|s_d_en~combout\ & (\timer_1|Add4~1_combout\ & ((!\timer_1|m_u_en~combout\)))) # (!\timer_1|s_d_en~combout\ & (((\timer_1|s_reg_d\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|Add4~1_combout\,
	datab => \timer_1|s_d_en~combout\,
	datac => \timer_1|s_reg_d\(3),
	datad => \timer_1|m_u_en~combout\,
	combout => \timer_1|s_reg_d[3]~3_combout\);

-- Location: FF_X95_Y1_N13
\timer_1|s_reg_d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|s_reg_d[3]~3_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|s_reg_d\(3));

-- Location: LCCOMB_X94_Y1_N6
\timer_1|s_reg_d[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|s_reg_d[2]~2_combout\ = (\timer_1|s_d_en~combout\ & (\timer_1|Add4~0_combout\ & ((!\timer_1|m_u_en~combout\)))) # (!\timer_1|s_d_en~combout\ & (((\timer_1|s_reg_d\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|Add4~0_combout\,
	datab => \timer_1|s_d_en~combout\,
	datac => \timer_1|s_reg_d\(2),
	datad => \timer_1|m_u_en~combout\,
	combout => \timer_1|s_reg_d[2]~2_combout\);

-- Location: FF_X94_Y1_N7
\timer_1|s_reg_d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|s_reg_d[2]~2_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|s_reg_d\(2));

-- Location: LCCOMB_X94_Y1_N4
\timer_1|m_u_en~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|m_u_en~0_combout\ = (!\timer_1|s_reg_d\(1) & (!\timer_1|s_reg_d\(3) & \timer_1|s_reg_d\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|s_reg_d\(1),
	datac => \timer_1|s_reg_d\(3),
	datad => \timer_1|s_reg_d\(2),
	combout => \timer_1|m_u_en~0_combout\);

-- Location: LCCOMB_X94_Y1_N20
\timer_1|s_reg_d[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|s_reg_d[1]~1_combout\ = (\timer_1|s_reg_d\(0) & ((\timer_1|s_reg_d\(1) & ((!\timer_1|s_d_en~combout\))) # (!\timer_1|s_reg_d\(1) & (!\timer_1|m_u_en~0_combout\ & \timer_1|s_d_en~combout\)))) # (!\timer_1|s_reg_d\(0) & (((\timer_1|s_reg_d\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|s_reg_d\(0),
	datab => \timer_1|m_u_en~0_combout\,
	datac => \timer_1|s_reg_d\(1),
	datad => \timer_1|s_d_en~combout\,
	combout => \timer_1|s_reg_d[1]~1_combout\);

-- Location: FF_X94_Y1_N21
\timer_1|s_reg_d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|s_reg_d[1]~1_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|s_reg_d\(1));

-- Location: LCCOMB_X94_Y1_N14
\timer_1|s_reg_d[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|s_reg_d[0]~0_combout\ = \timer_1|s_reg_d\(0) $ (((\timer_1|s_d_en~0_combout\ & (\timer_1|s_reg_u\(0) & \timer_1|s_u_en~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|s_d_en~0_combout\,
	datab => \timer_1|s_reg_u\(0),
	datac => \timer_1|s_reg_d\(0),
	datad => \timer_1|s_u_en~combout\,
	combout => \timer_1|s_reg_d[0]~0_combout\);

-- Location: FF_X94_Y1_N15
\timer_1|s_reg_d[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|s_reg_d[0]~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|s_reg_d\(0));

-- Location: LCCOMB_X91_Y1_N6
\bcd2ssd_1|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux27~0_combout\ = (\timer_1|s_reg_d\(3)) # ((\timer_1|s_reg_d\(1) & ((!\timer_1|s_reg_d\(0)) # (!\timer_1|s_reg_d\(2)))) # (!\timer_1|s_reg_d\(1) & (\timer_1|s_reg_d\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|s_reg_d\(1),
	datab => \timer_1|s_reg_d\(3),
	datac => \timer_1|s_reg_d\(2),
	datad => \timer_1|s_reg_d\(0),
	combout => \bcd2ssd_1|Mux27~0_combout\);

-- Location: LCCOMB_X91_Y1_N0
\bcd2ssd_1|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux26~0_combout\ = (!\timer_1|s_reg_d\(3) & ((\timer_1|s_reg_d\(1) & ((\timer_1|s_reg_d\(0)) # (!\timer_1|s_reg_d\(2)))) # (!\timer_1|s_reg_d\(1) & (!\timer_1|s_reg_d\(2) & \timer_1|s_reg_d\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|s_reg_d\(1),
	datab => \timer_1|s_reg_d\(3),
	datac => \timer_1|s_reg_d\(2),
	datad => \timer_1|s_reg_d\(0),
	combout => \bcd2ssd_1|Mux26~0_combout\);

-- Location: LCCOMB_X91_Y1_N26
\bcd2ssd_1|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux25~0_combout\ = (\timer_1|s_reg_d\(1) & (!\timer_1|s_reg_d\(3) & ((\timer_1|s_reg_d\(0))))) # (!\timer_1|s_reg_d\(1) & ((\timer_1|s_reg_d\(2) & (!\timer_1|s_reg_d\(3))) # (!\timer_1|s_reg_d\(2) & ((\timer_1|s_reg_d\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|s_reg_d\(1),
	datab => \timer_1|s_reg_d\(3),
	datac => \timer_1|s_reg_d\(2),
	datad => \timer_1|s_reg_d\(0),
	combout => \bcd2ssd_1|Mux25~0_combout\);

-- Location: LCCOMB_X91_Y1_N16
\bcd2ssd_1|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux24~0_combout\ = (!\timer_1|s_reg_d\(3) & ((\timer_1|s_reg_d\(1) & (\timer_1|s_reg_d\(2) & \timer_1|s_reg_d\(0))) # (!\timer_1|s_reg_d\(1) & (\timer_1|s_reg_d\(2) $ (\timer_1|s_reg_d\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|s_reg_d\(1),
	datab => \timer_1|s_reg_d\(3),
	datac => \timer_1|s_reg_d\(2),
	datad => \timer_1|s_reg_d\(0),
	combout => \bcd2ssd_1|Mux24~0_combout\);

-- Location: LCCOMB_X94_Y1_N24
\bcd2ssd_1|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux23~0_combout\ = (\timer_1|s_reg_d\(2) & (((\timer_1|s_reg_d\(3))))) # (!\timer_1|s_reg_d\(2) & (\timer_1|s_reg_d\(1) & ((\timer_1|s_reg_d\(3)) # (!\timer_1|s_reg_d\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|s_reg_d\(0),
	datab => \timer_1|s_reg_d\(1),
	datac => \timer_1|s_reg_d\(3),
	datad => \timer_1|s_reg_d\(2),
	combout => \bcd2ssd_1|Mux23~0_combout\);

-- Location: LCCOMB_X91_Y1_N22
\bcd2ssd_1|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux22~0_combout\ = (\timer_1|s_reg_d\(3) & ((\timer_1|s_reg_d\(1)) # ((\timer_1|s_reg_d\(2))))) # (!\timer_1|s_reg_d\(3) & (\timer_1|s_reg_d\(2) & (\timer_1|s_reg_d\(1) $ (\timer_1|s_reg_d\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|s_reg_d\(1),
	datab => \timer_1|s_reg_d\(3),
	datac => \timer_1|s_reg_d\(2),
	datad => \timer_1|s_reg_d\(0),
	combout => \bcd2ssd_1|Mux22~0_combout\);

-- Location: LCCOMB_X91_Y1_N28
\bcd2ssd_1|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux21~0_combout\ = (!\timer_1|s_reg_d\(1) & (!\timer_1|s_reg_d\(3) & (\timer_1|s_reg_d\(2) $ (\timer_1|s_reg_d\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|s_reg_d\(1),
	datab => \timer_1|s_reg_d\(3),
	datac => \timer_1|s_reg_d\(2),
	datad => \timer_1|s_reg_d\(0),
	combout => \bcd2ssd_1|Mux21~0_combout\);

-- Location: LCCOMB_X94_Y1_N30
\timer_1|m_reg_u[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|m_reg_u[0]~0_combout\ = \timer_1|m_reg_u\(0) $ (((\timer_1|s_reg_d\(0) & (\timer_1|m_u_en~0_combout\ & \timer_1|s_d_en~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|s_reg_d\(0),
	datab => \timer_1|m_u_en~0_combout\,
	datac => \timer_1|m_reg_u\(0),
	datad => \timer_1|s_d_en~combout\,
	combout => \timer_1|m_reg_u[0]~0_combout\);

-- Location: FF_X94_Y1_N31
\timer_1|m_reg_u[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|m_reg_u[0]~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|m_reg_u\(0));

-- Location: LCCOMB_X95_Y1_N30
\timer_1|m_reg_u[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|m_reg_u[1]~1_combout\ = (\timer_1|m_reg_u\(0) & ((\timer_1|m_reg_u\(1) & ((!\timer_1|m_u_en~combout\))) # (!\timer_1|m_reg_u\(1) & (!\timer_1|m_d_en~0_combout\ & \timer_1|m_u_en~combout\)))) # (!\timer_1|m_reg_u\(0) & (((\timer_1|m_reg_u\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|m_d_en~0_combout\,
	datab => \timer_1|m_reg_u\(0),
	datac => \timer_1|m_reg_u\(1),
	datad => \timer_1|m_u_en~combout\,
	combout => \timer_1|m_reg_u[1]~1_combout\);

-- Location: FF_X95_Y1_N31
\timer_1|m_reg_u[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|m_reg_u[1]~1_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|m_reg_u\(1));

-- Location: LCCOMB_X95_Y1_N24
\timer_1|m_u_en~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|m_u_en~1_combout\ = (\timer_1|s_reg_d\(0) & (\timer_1|s_reg_u\(0) & (\timer_1|s_d_en~0_combout\ & \timer_1|s_u_en~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|s_reg_d\(0),
	datab => \timer_1|s_reg_u\(0),
	datac => \timer_1|s_d_en~0_combout\,
	datad => \timer_1|s_u_en~combout\,
	combout => \timer_1|m_u_en~1_combout\);

-- Location: LCCOMB_X95_Y1_N2
\timer_1|m_d_en\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|m_d_en~combout\ = (\timer_1|m_d_en~0_combout\ & (\timer_1|m_u_en~0_combout\ & (\timer_1|m_reg_u\(0) & \timer_1|m_u_en~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|m_d_en~0_combout\,
	datab => \timer_1|m_u_en~0_combout\,
	datac => \timer_1|m_reg_u\(0),
	datad => \timer_1|m_u_en~1_combout\,
	combout => \timer_1|m_d_en~combout\);

-- Location: LCCOMB_X95_Y1_N4
\timer_1|m_reg_u[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|m_reg_u[2]~2_combout\ = (\timer_1|m_u_en~combout\ & (\timer_1|Add5~0_combout\ & ((!\timer_1|m_d_en~combout\)))) # (!\timer_1|m_u_en~combout\ & (((\timer_1|m_reg_u\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|Add5~0_combout\,
	datab => \timer_1|m_u_en~combout\,
	datac => \timer_1|m_reg_u\(2),
	datad => \timer_1|m_d_en~combout\,
	combout => \timer_1|m_reg_u[2]~2_combout\);

-- Location: FF_X95_Y1_N5
\timer_1|m_reg_u[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|m_reg_u[2]~2_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|m_reg_u\(2));

-- Location: LCCOMB_X94_Y1_N28
\timer_1|m_reg_u[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|m_reg_u[3]~3_combout\ = (\timer_1|m_u_en~combout\ & (\timer_1|Add5~1_combout\ & ((!\timer_1|m_d_en~combout\)))) # (!\timer_1|m_u_en~combout\ & (((\timer_1|m_reg_u\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|Add5~1_combout\,
	datab => \timer_1|m_u_en~combout\,
	datac => \timer_1|m_reg_u\(3),
	datad => \timer_1|m_d_en~combout\,
	combout => \timer_1|m_reg_u[3]~3_combout\);

-- Location: FF_X94_Y1_N29
\timer_1|m_reg_u[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|m_reg_u[3]~3_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|m_reg_u\(3));

-- Location: LCCOMB_X90_Y1_N24
\bcd2ssd_1|Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux34~0_combout\ = (\timer_1|m_reg_u\(3)) # ((\timer_1|m_reg_u\(1) & ((!\timer_1|m_reg_u\(2)) # (!\timer_1|m_reg_u\(0)))) # (!\timer_1|m_reg_u\(1) & ((\timer_1|m_reg_u\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|m_reg_u\(1),
	datab => \timer_1|m_reg_u\(0),
	datac => \timer_1|m_reg_u\(2),
	datad => \timer_1|m_reg_u\(3),
	combout => \bcd2ssd_1|Mux34~0_combout\);

-- Location: LCCOMB_X90_Y1_N26
\bcd2ssd_1|Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux33~0_combout\ = (!\timer_1|m_reg_u\(3) & ((\timer_1|m_reg_u\(1) & ((\timer_1|m_reg_u\(0)) # (!\timer_1|m_reg_u\(2)))) # (!\timer_1|m_reg_u\(1) & (\timer_1|m_reg_u\(0) & !\timer_1|m_reg_u\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|m_reg_u\(1),
	datab => \timer_1|m_reg_u\(0),
	datac => \timer_1|m_reg_u\(2),
	datad => \timer_1|m_reg_u\(3),
	combout => \bcd2ssd_1|Mux33~0_combout\);

-- Location: LCCOMB_X90_Y1_N0
\bcd2ssd_1|Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux32~0_combout\ = (\timer_1|m_reg_u\(1) & (\timer_1|m_reg_u\(0) & ((!\timer_1|m_reg_u\(3))))) # (!\timer_1|m_reg_u\(1) & ((\timer_1|m_reg_u\(2) & ((!\timer_1|m_reg_u\(3)))) # (!\timer_1|m_reg_u\(2) & (\timer_1|m_reg_u\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|m_reg_u\(1),
	datab => \timer_1|m_reg_u\(0),
	datac => \timer_1|m_reg_u\(2),
	datad => \timer_1|m_reg_u\(3),
	combout => \bcd2ssd_1|Mux32~0_combout\);

-- Location: LCCOMB_X90_Y1_N30
\bcd2ssd_1|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux31~0_combout\ = (!\timer_1|m_reg_u\(3) & ((\timer_1|m_reg_u\(1) & (\timer_1|m_reg_u\(0) & \timer_1|m_reg_u\(2))) # (!\timer_1|m_reg_u\(1) & (\timer_1|m_reg_u\(0) $ (\timer_1|m_reg_u\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|m_reg_u\(1),
	datab => \timer_1|m_reg_u\(0),
	datac => \timer_1|m_reg_u\(2),
	datad => \timer_1|m_reg_u\(3),
	combout => \bcd2ssd_1|Mux31~0_combout\);

-- Location: LCCOMB_X90_Y1_N16
\bcd2ssd_1|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux30~0_combout\ = (\timer_1|m_reg_u\(2) & (((\timer_1|m_reg_u\(3))))) # (!\timer_1|m_reg_u\(2) & (\timer_1|m_reg_u\(1) & ((\timer_1|m_reg_u\(3)) # (!\timer_1|m_reg_u\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|m_reg_u\(1),
	datab => \timer_1|m_reg_u\(0),
	datac => \timer_1|m_reg_u\(2),
	datad => \timer_1|m_reg_u\(3),
	combout => \bcd2ssd_1|Mux30~0_combout\);

-- Location: LCCOMB_X90_Y1_N2
\bcd2ssd_1|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux29~0_combout\ = (\timer_1|m_reg_u\(2) & ((\timer_1|m_reg_u\(3)) # (\timer_1|m_reg_u\(1) $ (\timer_1|m_reg_u\(0))))) # (!\timer_1|m_reg_u\(2) & (\timer_1|m_reg_u\(1) & ((\timer_1|m_reg_u\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|m_reg_u\(1),
	datab => \timer_1|m_reg_u\(0),
	datac => \timer_1|m_reg_u\(2),
	datad => \timer_1|m_reg_u\(3),
	combout => \bcd2ssd_1|Mux29~0_combout\);

-- Location: LCCOMB_X90_Y1_N28
\bcd2ssd_1|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux28~0_combout\ = (!\timer_1|m_reg_u\(1) & (!\timer_1|m_reg_u\(3) & (\timer_1|m_reg_u\(0) $ (\timer_1|m_reg_u\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|m_reg_u\(1),
	datab => \timer_1|m_reg_u\(0),
	datac => \timer_1|m_reg_u\(2),
	datad => \timer_1|m_reg_u\(3),
	combout => \bcd2ssd_1|Mux28~0_combout\);

-- Location: LCCOMB_X95_Y1_N14
\timer_1|m_reg_d[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|m_reg_d[1]~1_combout\ = (\timer_1|m_d_en~combout\ & (!\timer_1|m_next_d~0_combout\ & (\timer_1|m_reg_d\(0) $ (\timer_1|m_reg_d\(1))))) # (!\timer_1|m_d_en~combout\ & (((\timer_1|m_reg_d\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|m_reg_d\(0),
	datab => \timer_1|m_next_d~0_combout\,
	datac => \timer_1|m_reg_d\(1),
	datad => \timer_1|m_d_en~combout\,
	combout => \timer_1|m_reg_d[1]~1_combout\);

-- Location: FF_X95_Y1_N15
\timer_1|m_reg_d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|m_reg_d[1]~1_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|m_reg_d\(1));

-- Location: LCCOMB_X95_Y1_N22
\timer_1|m_reg_d[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|m_reg_d[3]~3_combout\ = (\timer_1|m_d_en~combout\ & (\timer_1|Add6~1_combout\ & (!\timer_1|m_next_d~0_combout\))) # (!\timer_1|m_d_en~combout\ & (((\timer_1|m_reg_d\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|Add6~1_combout\,
	datab => \timer_1|m_next_d~0_combout\,
	datac => \timer_1|m_reg_d\(3),
	datad => \timer_1|m_d_en~combout\,
	combout => \timer_1|m_reg_d[3]~3_combout\);

-- Location: FF_X95_Y1_N23
\timer_1|m_reg_d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|m_reg_d[3]~3_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|m_reg_d\(3));

-- Location: LCCOMB_X94_Y1_N18
\timer_1|m_next_d~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|m_next_d~0_combout\ = (\timer_1|m_reg_d\(0) & (!\timer_1|m_reg_d\(1) & (\timer_1|m_reg_d\(2) & !\timer_1|m_reg_d\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|m_reg_d\(0),
	datab => \timer_1|m_reg_d\(1),
	datac => \timer_1|m_reg_d\(2),
	datad => \timer_1|m_reg_d\(3),
	combout => \timer_1|m_next_d~0_combout\);

-- Location: LCCOMB_X95_Y1_N20
\timer_1|m_reg_d[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|m_reg_d[2]~2_combout\ = (\timer_1|m_d_en~combout\ & (\timer_1|Add6~0_combout\ & (!\timer_1|m_next_d~0_combout\))) # (!\timer_1|m_d_en~combout\ & (((\timer_1|m_reg_d\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|Add6~0_combout\,
	datab => \timer_1|m_next_d~0_combout\,
	datac => \timer_1|m_reg_d\(2),
	datad => \timer_1|m_d_en~combout\,
	combout => \timer_1|m_reg_d[2]~2_combout\);

-- Location: FF_X95_Y1_N21
\timer_1|m_reg_d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|m_reg_d[2]~2_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|m_reg_d\(2));

-- Location: LCCOMB_X94_Y1_N0
\timer_1|m_d_en~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|m_d_en~1_combout\ = (\timer_1|m_reg_u\(0) & (\timer_1|s_reg_d\(0) & (\timer_1|m_u_en~0_combout\ & \timer_1|s_d_en~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|m_reg_u\(0),
	datab => \timer_1|s_reg_d\(0),
	datac => \timer_1|m_u_en~0_combout\,
	datad => \timer_1|s_d_en~combout\,
	combout => \timer_1|m_d_en~1_combout\);

-- Location: LCCOMB_X94_Y1_N26
\timer_1|m_reg_d[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|m_reg_d[0]~0_combout\ = (\timer_1|m_d_en~0_combout\ & ((\timer_1|m_reg_d\(0) & ((!\timer_1|m_d_en~1_combout\))) # (!\timer_1|m_reg_d\(0) & (!\timer_1|m_next_d~0_combout\ & \timer_1|m_d_en~1_combout\)))) # (!\timer_1|m_d_en~0_combout\ & 
-- (((\timer_1|m_reg_d\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|m_d_en~0_combout\,
	datab => \timer_1|m_next_d~0_combout\,
	datac => \timer_1|m_reg_d\(0),
	datad => \timer_1|m_d_en~1_combout\,
	combout => \timer_1|m_reg_d[0]~0_combout\);

-- Location: FF_X94_Y1_N27
\timer_1|m_reg_d[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|m_reg_d[0]~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|m_reg_d\(0));

-- Location: LCCOMB_X91_Y1_N30
\bcd2ssd_1|Mux41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux41~0_combout\ = (\timer_1|m_reg_d\(3)) # ((\timer_1|m_reg_d\(2) & ((!\timer_1|m_reg_d\(1)) # (!\timer_1|m_reg_d\(0)))) # (!\timer_1|m_reg_d\(2) & ((\timer_1|m_reg_d\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|m_reg_d\(2),
	datab => \timer_1|m_reg_d\(0),
	datac => \timer_1|m_reg_d\(3),
	datad => \timer_1|m_reg_d\(1),
	combout => \bcd2ssd_1|Mux41~0_combout\);

-- Location: LCCOMB_X91_Y1_N20
\bcd2ssd_1|Mux40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux40~0_combout\ = (!\timer_1|m_reg_d\(3) & ((\timer_1|m_reg_d\(2) & (\timer_1|m_reg_d\(0) & \timer_1|m_reg_d\(1))) # (!\timer_1|m_reg_d\(2) & ((\timer_1|m_reg_d\(0)) # (\timer_1|m_reg_d\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|m_reg_d\(2),
	datab => \timer_1|m_reg_d\(0),
	datac => \timer_1|m_reg_d\(3),
	datad => \timer_1|m_reg_d\(1),
	combout => \bcd2ssd_1|Mux40~0_combout\);

-- Location: LCCOMB_X91_Y1_N18
\bcd2ssd_1|Mux39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux39~0_combout\ = (\timer_1|m_reg_d\(1) & (((\timer_1|m_reg_d\(0) & !\timer_1|m_reg_d\(3))))) # (!\timer_1|m_reg_d\(1) & ((\timer_1|m_reg_d\(2) & ((!\timer_1|m_reg_d\(3)))) # (!\timer_1|m_reg_d\(2) & (\timer_1|m_reg_d\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|m_reg_d\(2),
	datab => \timer_1|m_reg_d\(0),
	datac => \timer_1|m_reg_d\(3),
	datad => \timer_1|m_reg_d\(1),
	combout => \bcd2ssd_1|Mux39~0_combout\);

-- Location: LCCOMB_X91_Y1_N8
\bcd2ssd_1|Mux38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux38~0_combout\ = (!\timer_1|m_reg_d\(3) & ((\timer_1|m_reg_d\(2) & (\timer_1|m_reg_d\(0) $ (!\timer_1|m_reg_d\(1)))) # (!\timer_1|m_reg_d\(2) & (\timer_1|m_reg_d\(0) & !\timer_1|m_reg_d\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|m_reg_d\(2),
	datab => \timer_1|m_reg_d\(0),
	datac => \timer_1|m_reg_d\(3),
	datad => \timer_1|m_reg_d\(1),
	combout => \bcd2ssd_1|Mux38~0_combout\);

-- Location: LCCOMB_X91_Y1_N2
\bcd2ssd_1|Mux37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux37~0_combout\ = (\timer_1|m_reg_d\(2) & (((\timer_1|m_reg_d\(3))))) # (!\timer_1|m_reg_d\(2) & (\timer_1|m_reg_d\(1) & ((\timer_1|m_reg_d\(3)) # (!\timer_1|m_reg_d\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|m_reg_d\(2),
	datab => \timer_1|m_reg_d\(0),
	datac => \timer_1|m_reg_d\(3),
	datad => \timer_1|m_reg_d\(1),
	combout => \bcd2ssd_1|Mux37~0_combout\);

-- Location: LCCOMB_X91_Y1_N24
\bcd2ssd_1|Mux36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux36~0_combout\ = (\timer_1|m_reg_d\(2) & ((\timer_1|m_reg_d\(3)) # (\timer_1|m_reg_d\(0) $ (\timer_1|m_reg_d\(1))))) # (!\timer_1|m_reg_d\(2) & (((\timer_1|m_reg_d\(3) & \timer_1|m_reg_d\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|m_reg_d\(2),
	datab => \timer_1|m_reg_d\(0),
	datac => \timer_1|m_reg_d\(3),
	datad => \timer_1|m_reg_d\(1),
	combout => \bcd2ssd_1|Mux36~0_combout\);

-- Location: LCCOMB_X91_Y1_N14
\bcd2ssd_1|Mux35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd2ssd_1|Mux35~0_combout\ = (!\timer_1|m_reg_d\(3) & (!\timer_1|m_reg_d\(1) & (\timer_1|m_reg_d\(2) $ (\timer_1|m_reg_d\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|m_reg_d\(2),
	datab => \timer_1|m_reg_d\(0),
	datac => \timer_1|m_reg_d\(3),
	datad => \timer_1|m_reg_d\(1),
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


