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

-- DATE "06/04/2019 15:31:53"

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
-- cseg_u[6]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cseg_u[5]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cseg_u[4]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cseg_u[3]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cseg_u[2]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cseg_u[1]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cseg_u[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cseg_d[6]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cseg_d[5]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cseg_d[4]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cseg_d[3]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cseg_d[2]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cseg_d[1]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cseg_d[0]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_u[6]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_u[5]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_u[4]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_u[3]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_u[2]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_u[1]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_u[0]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_d[6]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_d[5]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_d[4]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_d[3]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_d[2]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_d[1]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_d[0]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_u[6]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_u[5]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_u[4]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_u[3]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_u[2]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_u[1]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_u[0]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_d[6]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_d[5]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_d[4]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_d[3]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_d[2]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_d[1]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_d[0]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \timer_1|Add2~7\ : std_logic;
SIGNAL \timer_1|Add1~2_combout\ : std_logic;
SIGNAL \timer_1|Add1~4_combout\ : std_logic;
SIGNAL \timer_1|Add1~7\ : std_logic;
SIGNAL \timer_1|Add1~8_combout\ : std_logic;
SIGNAL \timer_1|Add1~9\ : std_logic;
SIGNAL \timer_1|Add1~10_combout\ : std_logic;
SIGNAL \timer_1|Add1~11\ : std_logic;
SIGNAL \timer_1|Add1~12_combout\ : std_logic;
SIGNAL \timer_1|Add2~8_combout\ : std_logic;
SIGNAL \timer_1|Add2~9\ : std_logic;
SIGNAL \timer_1|Add3~8_combout\ : std_logic;
SIGNAL \timer_1|Add2~10_combout\ : std_logic;
SIGNAL \ctrl_1|Add0~2_combout\ : std_logic;
SIGNAL \ctrl_1|Add0~8_combout\ : std_logic;
SIGNAL \timer_1|Add0~14_combout\ : std_logic;
SIGNAL \timer_1|Add0~16_combout\ : std_logic;
SIGNAL \timer_1|Add0~24_combout\ : std_logic;
SIGNAL \timer_1|Add0~30_combout\ : std_logic;
SIGNAL \to_bcd[0]~0_combout\ : std_logic;
SIGNAL \to_bcd[0]~1_combout\ : std_logic;
SIGNAL \to_bcd[4]~4_combout\ : std_logic;
SIGNAL \to_bcd[4]~5_combout\ : std_logic;
SIGNAL \to_bcd[5]~6_combout\ : std_logic;
SIGNAL \bin2bcd_1|bcd~0_combout\ : std_logic;
SIGNAL \bin2bcd_1|bcd~3_combout\ : std_logic;
SIGNAL \bin2bcd_1|bcd~6_combout\ : std_logic;
SIGNAL \bin2bcd_1|tens[3]~5_combout\ : std_logic;
SIGNAL \bin2bcd_1|tens[3]~6_combout\ : std_logic;
SIGNAL \timer_1|Equal1~0_combout\ : std_logic;
SIGNAL \timer_1|s_en~0_combout\ : std_logic;
SIGNAL \timer_1|m_en~0_combout\ : std_logic;
SIGNAL \timer_1|m_next~0_combout\ : std_logic;
SIGNAL \timer_1|c_reg[6]~2_combout\ : std_logic;
SIGNAL \timer_1|s_reg[4]~2_combout\ : std_logic;
SIGNAL \timer_1|c_reg[4]~3_combout\ : std_logic;
SIGNAL \timer_1|m_reg[4]~3_combout\ : std_logic;
SIGNAL \timer_1|s_reg[5]~3_combout\ : std_logic;
SIGNAL \timer_1|c_reg[5]~4_combout\ : std_logic;
SIGNAL \ctrl_1|r_next[4]~1_combout\ : std_logic;
SIGNAL \ctrl_1|r_next[1]~2_combout\ : std_logic;
SIGNAL \timer_1|Equal0~3_combout\ : std_logic;
SIGNAL \timer_1|r_next[16]~1_combout\ : std_logic;
SIGNAL \timer_1|r_next[13]~5_combout\ : std_logic;
SIGNAL \timer_1|r_next[8]~6_combout\ : std_logic;
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
SIGNAL \timer_1|Add3~0_combout\ : std_logic;
SIGNAL \timer_1|Add3~2_combout\ : std_logic;
SIGNAL \timer_1|m_reg[1]~6_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \timer_1|Add2~0_combout\ : std_logic;
SIGNAL \timer_1|s_reg[0]~0_combout\ : std_logic;
SIGNAL \timer_1|Add2~1\ : std_logic;
SIGNAL \timer_1|Add2~2_combout\ : std_logic;
SIGNAL \timer_1|s_reg[1]~5_combout\ : std_logic;
SIGNAL \timer_1|Add1~0_combout\ : std_logic;
SIGNAL \timer_1|c_reg[0]~0_combout\ : std_logic;
SIGNAL \timer_1|Add0~0_combout\ : std_logic;
SIGNAL \timer_1|Add0~1\ : std_logic;
SIGNAL \timer_1|Add0~2_combout\ : std_logic;
SIGNAL \timer_1|Add0~3\ : std_logic;
SIGNAL \timer_1|Add0~4_combout\ : std_logic;
SIGNAL \timer_1|Add0~5\ : std_logic;
SIGNAL \timer_1|Add0~6_combout\ : std_logic;
SIGNAL \timer_1|Add0~7\ : std_logic;
SIGNAL \timer_1|Add0~8_combout\ : std_logic;
SIGNAL \timer_1|Add0~12_combout\ : std_logic;
SIGNAL \timer_1|Equal0~4_combout\ : std_logic;
SIGNAL \ctrl_1|Add0~0_combout\ : std_logic;
SIGNAL \timer_1|Equal0~5_combout\ : std_logic;
SIGNAL \timer_1|Equal0~6_combout\ : std_logic;
SIGNAL \timer_1|r_next[5]~3_combout\ : std_logic;
SIGNAL \timer_1|Add0~9\ : std_logic;
SIGNAL \timer_1|Add0~10_combout\ : std_logic;
SIGNAL \timer_1|Add0~11\ : std_logic;
SIGNAL \timer_1|Add0~13\ : std_logic;
SIGNAL \timer_1|Add0~15\ : std_logic;
SIGNAL \timer_1|Add0~17\ : std_logic;
SIGNAL \timer_1|Add0~18_combout\ : std_logic;
SIGNAL \timer_1|Add0~19\ : std_logic;
SIGNAL \timer_1|Add0~20_combout\ : std_logic;
SIGNAL \timer_1|Add0~21\ : std_logic;
SIGNAL \timer_1|Add0~22_combout\ : std_logic;
SIGNAL \timer_1|Add0~23\ : std_logic;
SIGNAL \timer_1|Add0~25\ : std_logic;
SIGNAL \timer_1|Add0~26_combout\ : std_logic;
SIGNAL \timer_1|Add0~27\ : std_logic;
SIGNAL \timer_1|Add0~28_combout\ : std_logic;
SIGNAL \timer_1|r_next[15]~2_combout\ : std_logic;
SIGNAL \timer_1|Add0~29\ : std_logic;
SIGNAL \timer_1|Add0~31\ : std_logic;
SIGNAL \timer_1|Add0~32_combout\ : std_logic;
SIGNAL \timer_1|r_next[17]~0_combout\ : std_logic;
SIGNAL \timer_1|Add0~33\ : std_logic;
SIGNAL \timer_1|Add0~34_combout\ : std_logic;
SIGNAL \timer_1|r_next[18]~4_combout\ : std_logic;
SIGNAL \timer_1|Add0~35\ : std_logic;
SIGNAL \timer_1|Add0~36_combout\ : std_logic;
SIGNAL \timer_1|Equal0~0_combout\ : std_logic;
SIGNAL \timer_1|Equal0~1_combout\ : std_logic;
SIGNAL \timer_1|Equal0~2_combout\ : std_logic;
SIGNAL \timer_1|Equal1~2_combout\ : std_logic;
SIGNAL \timer_1|Equal1~1_combout\ : std_logic;
SIGNAL \timer_1|Equal1~3_combout\ : std_logic;
SIGNAL \timer_1|c_reg[1]~6_combout\ : std_logic;
SIGNAL \timer_1|c_reg[2]~5_combout\ : std_logic;
SIGNAL \timer_1|s_en~1_combout\ : std_logic;
SIGNAL \timer_1|s_en~combout\ : std_logic;
SIGNAL \timer_1|m_en~combout\ : std_logic;
SIGNAL \timer_1|m_reg[5]~0_combout\ : std_logic;
SIGNAL \timer_1|m_reg[0]~1_combout\ : std_logic;
SIGNAL \timer_1|Add3~1\ : std_logic;
SIGNAL \timer_1|Add3~3\ : std_logic;
SIGNAL \timer_1|Add3~5\ : std_logic;
SIGNAL \timer_1|Add3~6_combout\ : std_logic;
SIGNAL \timer_1|m_reg[3]~2_combout\ : std_logic;
SIGNAL \timer_1|Add3~7\ : std_logic;
SIGNAL \timer_1|Add3~9\ : std_logic;
SIGNAL \timer_1|Add3~10_combout\ : std_logic;
SIGNAL \timer_1|m_reg[5]~4_combout\ : std_logic;
SIGNAL \ctrl_1|Add0~1\ : std_logic;
SIGNAL \ctrl_1|Add0~3\ : std_logic;
SIGNAL \ctrl_1|Add0~4_combout\ : std_logic;
SIGNAL \ctrl_1|Add0~5\ : std_logic;
SIGNAL \ctrl_1|Add0~6_combout\ : std_logic;
SIGNAL \ctrl_1|Add0~7\ : std_logic;
SIGNAL \ctrl_1|Add0~9\ : std_logic;
SIGNAL \ctrl_1|Add0~10_combout\ : std_logic;
SIGNAL \ctrl_1|r_next[5]~0_combout\ : std_logic;
SIGNAL \ctrl_1|Equal0~0_combout\ : std_logic;
SIGNAL \ctrl_1|Equal0~1_combout\ : std_logic;
SIGNAL \ctrl_1|sel_next[0]~3_combout\ : std_logic;
SIGNAL \ctrl_1|sel_next[1]~2_combout\ : std_logic;
SIGNAL \to_bcd[5]~7_combout\ : std_logic;
SIGNAL \timer_1|Add1~1\ : std_logic;
SIGNAL \timer_1|Add1~3\ : std_logic;
SIGNAL \timer_1|Add1~5\ : std_logic;
SIGNAL \timer_1|Add1~6_combout\ : std_logic;
SIGNAL \timer_1|c_reg[3]~1_combout\ : std_logic;
SIGNAL \timer_1|Add2~3\ : std_logic;
SIGNAL \timer_1|Add2~4_combout\ : std_logic;
SIGNAL \timer_1|s_reg[2]~4_combout\ : std_logic;
SIGNAL \timer_1|Add2~5\ : std_logic;
SIGNAL \timer_1|Add2~6_combout\ : std_logic;
SIGNAL \timer_1|s_reg[3]~1_combout\ : std_logic;
SIGNAL \to_bcd[3]~2_combout\ : std_logic;
SIGNAL \to_bcd[3]~3_combout\ : std_logic;
SIGNAL \bin2bcd_1|LessThan0~0_combout\ : std_logic;
SIGNAL \bin2bcd_1|bcd~2_combout\ : std_logic;
SIGNAL \bin2bcd_1|bcd~1_combout\ : std_logic;
SIGNAL \timer_1|Add3~4_combout\ : std_logic;
SIGNAL \timer_1|m_reg[2]~5_combout\ : std_logic;
SIGNAL \to_bcd[2]~8_combout\ : std_logic;
SIGNAL \to_bcd[2]~9_combout\ : std_logic;
SIGNAL \bin2bcd_1|bcd~5_combout\ : std_logic;
SIGNAL \to_bcd[1]~10_combout\ : std_logic;
SIGNAL \to_bcd[1]~11_combout\ : std_logic;
SIGNAL \bin2bcd_1|bcd~4_combout\ : std_logic;
SIGNAL \bin2bcd_1|ones[2]~1_combout\ : std_logic;
SIGNAL \bin2bcd_1|ones[1]~0_combout\ : std_logic;
SIGNAL \bin2bcd_1|ones[3]~2_combout\ : std_logic;
SIGNAL \bin2ssd_1|Mux6~0_combout\ : std_logic;
SIGNAL \cseg_u~14_combout\ : std_logic;
SIGNAL \bin2ssd_1|Mux5~0_combout\ : std_logic;
SIGNAL \cseg_u~15_combout\ : std_logic;
SIGNAL \bin2ssd_1|Mux4~0_combout\ : std_logic;
SIGNAL \cseg_u~16_combout\ : std_logic;
SIGNAL \bin2ssd_1|Mux3~0_combout\ : std_logic;
SIGNAL \cseg_u~17_combout\ : std_logic;
SIGNAL \bin2ssd_1|Mux2~0_combout\ : std_logic;
SIGNAL \cseg_u~18_combout\ : std_logic;
SIGNAL \bin2ssd_1|Mux1~0_combout\ : std_logic;
SIGNAL \cseg_u~19_combout\ : std_logic;
SIGNAL \bin2ssd_1|Mux0~0_combout\ : std_logic;
SIGNAL \cseg_u~20_combout\ : std_logic;
SIGNAL \bin2bcd_1|tens[1]~1_combout\ : std_logic;
SIGNAL \bin2bcd_1|tens[2]~2_combout\ : std_logic;
SIGNAL \bin2bcd_1|tens[1]~3_combout\ : std_logic;
SIGNAL \bin2bcd_1|tens[0]~0_combout\ : std_logic;
SIGNAL \bin2bcd_1|tens[2]~4_combout\ : std_logic;
SIGNAL \bin2ssd_2|Mux6~0_combout\ : std_logic;
SIGNAL \cseg_d~11_combout\ : std_logic;
SIGNAL \bin2ssd_2|Mux5~0_combout\ : std_logic;
SIGNAL \cseg_d~12_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \cseg_d~8_combout\ : std_logic;
SIGNAL \bin2ssd_2|Mux3~0_combout\ : std_logic;
SIGNAL \cseg_d~13_combout\ : std_logic;
SIGNAL \cseg_d~9_combout\ : std_logic;
SIGNAL \cseg_d~10_combout\ : std_logic;
SIGNAL \bin2ssd_2|Mux0~0_combout\ : std_logic;
SIGNAL \cseg_d~14_combout\ : std_logic;
SIGNAL \seg_u~14_combout\ : std_logic;
SIGNAL \seg_u~15_combout\ : std_logic;
SIGNAL \seg_u~16_combout\ : std_logic;
SIGNAL \seg_u~17_combout\ : std_logic;
SIGNAL \seg_u~18_combout\ : std_logic;
SIGNAL \seg_u~19_combout\ : std_logic;
SIGNAL \seg_u~20_combout\ : std_logic;
SIGNAL \seg_d~11_combout\ : std_logic;
SIGNAL \seg_d~12_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \seg_d~8_combout\ : std_logic;
SIGNAL \seg_d~13_combout\ : std_logic;
SIGNAL \seg_d~9_combout\ : std_logic;
SIGNAL \seg_d~10_combout\ : std_logic;
SIGNAL \seg_d~14_combout\ : std_logic;
SIGNAL \min_u~14_combout\ : std_logic;
SIGNAL \min_u~15_combout\ : std_logic;
SIGNAL \min_u~16_combout\ : std_logic;
SIGNAL \min_u~17_combout\ : std_logic;
SIGNAL \min_u~18_combout\ : std_logic;
SIGNAL \min_u~19_combout\ : std_logic;
SIGNAL \min_u~20_combout\ : std_logic;
SIGNAL \min_d~11_combout\ : std_logic;
SIGNAL \min_d~12_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \min_d~8_combout\ : std_logic;
SIGNAL \min_d~13_combout\ : std_logic;
SIGNAL \min_d~9_combout\ : std_logic;
SIGNAL \min_d~10_combout\ : std_logic;
SIGNAL \min_d~14_combout\ : std_logic;
SIGNAL \timer_1|s_reg\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \timer_1|r_reg\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \timer_1|m_reg\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \timer_1|c_reg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ctrl_1|sel_reg\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ctrl_1|r_reg\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_cseg_d~11_combout\ : std_logic;
SIGNAL \ALT_INV_cseg_u~14_combout\ : std_logic;

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
\ALT_INV_cseg_d~11_combout\ <= NOT \cseg_d~11_combout\;
\ALT_INV_cseg_u~14_combout\ <= NOT \cseg_u~14_combout\;

-- Location: LCCOMB_X5_Y69_N20
\timer_1|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add2~6_combout\ = (\timer_1|s_reg\(3) & (!\timer_1|Add2~5\)) # (!\timer_1|s_reg\(3) & ((\timer_1|Add2~5\) # (GND)))
-- \timer_1|Add2~7\ = CARRY((!\timer_1|Add2~5\) # (!\timer_1|s_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|s_reg\(3),
	datad => VCC,
	cin => \timer_1|Add2~5\,
	combout => \timer_1|Add2~6_combout\,
	cout => \timer_1|Add2~7\);

-- Location: LCCOMB_X1_Y69_N10
\timer_1|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add1~2_combout\ = (\timer_1|c_reg\(1) & (!\timer_1|Add1~1\)) # (!\timer_1|c_reg\(1) & ((\timer_1|Add1~1\) # (GND)))
-- \timer_1|Add1~3\ = CARRY((!\timer_1|Add1~1\) # (!\timer_1|c_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|c_reg\(1),
	datad => VCC,
	cin => \timer_1|Add1~1\,
	combout => \timer_1|Add1~2_combout\,
	cout => \timer_1|Add1~3\);

-- Location: LCCOMB_X1_Y69_N12
\timer_1|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add1~4_combout\ = (\timer_1|c_reg\(2) & (\timer_1|Add1~3\ $ (GND))) # (!\timer_1|c_reg\(2) & (!\timer_1|Add1~3\ & VCC))
-- \timer_1|Add1~5\ = CARRY((\timer_1|c_reg\(2) & !\timer_1|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|c_reg\(2),
	datad => VCC,
	cin => \timer_1|Add1~3\,
	combout => \timer_1|Add1~4_combout\,
	cout => \timer_1|Add1~5\);

-- Location: LCCOMB_X1_Y69_N14
\timer_1|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add1~6_combout\ = (\timer_1|c_reg\(3) & (!\timer_1|Add1~5\)) # (!\timer_1|c_reg\(3) & ((\timer_1|Add1~5\) # (GND)))
-- \timer_1|Add1~7\ = CARRY((!\timer_1|Add1~5\) # (!\timer_1|c_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|c_reg\(3),
	datad => VCC,
	cin => \timer_1|Add1~5\,
	combout => \timer_1|Add1~6_combout\,
	cout => \timer_1|Add1~7\);

-- Location: LCCOMB_X1_Y69_N16
\timer_1|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add1~8_combout\ = (\timer_1|c_reg\(4) & (\timer_1|Add1~7\ $ (GND))) # (!\timer_1|c_reg\(4) & (!\timer_1|Add1~7\ & VCC))
-- \timer_1|Add1~9\ = CARRY((\timer_1|c_reg\(4) & !\timer_1|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|c_reg\(4),
	datad => VCC,
	cin => \timer_1|Add1~7\,
	combout => \timer_1|Add1~8_combout\,
	cout => \timer_1|Add1~9\);

-- Location: LCCOMB_X1_Y69_N18
\timer_1|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add1~10_combout\ = (\timer_1|c_reg\(5) & (!\timer_1|Add1~9\)) # (!\timer_1|c_reg\(5) & ((\timer_1|Add1~9\) # (GND)))
-- \timer_1|Add1~11\ = CARRY((!\timer_1|Add1~9\) # (!\timer_1|c_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|c_reg\(5),
	datad => VCC,
	cin => \timer_1|Add1~9\,
	combout => \timer_1|Add1~10_combout\,
	cout => \timer_1|Add1~11\);

-- Location: LCCOMB_X1_Y69_N20
\timer_1|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add1~12_combout\ = \timer_1|c_reg\(6) $ (!\timer_1|Add1~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|c_reg\(6),
	cin => \timer_1|Add1~11\,
	combout => \timer_1|Add1~12_combout\);

-- Location: LCCOMB_X5_Y69_N22
\timer_1|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add2~8_combout\ = (\timer_1|s_reg\(4) & (\timer_1|Add2~7\ $ (GND))) # (!\timer_1|s_reg\(4) & (!\timer_1|Add2~7\ & VCC))
-- \timer_1|Add2~9\ = CARRY((\timer_1|s_reg\(4) & !\timer_1|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|s_reg\(4),
	datad => VCC,
	cin => \timer_1|Add2~7\,
	combout => \timer_1|Add2~8_combout\,
	cout => \timer_1|Add2~9\);

-- Location: LCCOMB_X2_Y69_N18
\timer_1|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add3~8_combout\ = (\timer_1|m_reg\(4) & (\timer_1|Add3~7\ $ (GND))) # (!\timer_1|m_reg\(4) & (!\timer_1|Add3~7\ & VCC))
-- \timer_1|Add3~9\ = CARRY((\timer_1|m_reg\(4) & !\timer_1|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|m_reg\(4),
	datad => VCC,
	cin => \timer_1|Add3~7\,
	combout => \timer_1|Add3~8_combout\,
	cout => \timer_1|Add3~9\);

-- Location: LCCOMB_X5_Y69_N24
\timer_1|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add2~10_combout\ = \timer_1|Add2~9\ $ (\timer_1|s_reg\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \timer_1|s_reg\(5),
	cin => \timer_1|Add2~9\,
	combout => \timer_1|Add2~10_combout\);

-- Location: LCCOMB_X3_Y70_N14
\ctrl_1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl_1|Add0~2_combout\ = (\ctrl_1|r_reg\(1) & (!\ctrl_1|Add0~1\)) # (!\ctrl_1|r_reg\(1) & ((\ctrl_1|Add0~1\) # (GND)))
-- \ctrl_1|Add0~3\ = CARRY((!\ctrl_1|Add0~1\) # (!\ctrl_1|r_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_1|r_reg\(1),
	datad => VCC,
	cin => \ctrl_1|Add0~1\,
	combout => \ctrl_1|Add0~2_combout\,
	cout => \ctrl_1|Add0~3\);

-- Location: LCCOMB_X3_Y70_N20
\ctrl_1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl_1|Add0~8_combout\ = (\ctrl_1|r_reg\(4) & (\ctrl_1|Add0~7\ $ (GND))) # (!\ctrl_1|r_reg\(4) & (!\ctrl_1|Add0~7\ & VCC))
-- \ctrl_1|Add0~9\ = CARRY((\ctrl_1|r_reg\(4) & !\ctrl_1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_1|r_reg\(4),
	datad => VCC,
	cin => \ctrl_1|Add0~7\,
	combout => \ctrl_1|Add0~8_combout\,
	cout => \ctrl_1|Add0~9\);

-- Location: LCCOMB_X4_Y70_N28
\timer_1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add0~14_combout\ = (\timer_1|r_reg\(8) & (!\timer_1|Add0~13\)) # (!\timer_1|r_reg\(8) & ((\timer_1|Add0~13\) # (GND)))
-- \timer_1|Add0~15\ = CARRY((!\timer_1|Add0~13\) # (!\timer_1|r_reg\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|r_reg\(8),
	datad => VCC,
	cin => \timer_1|Add0~13\,
	combout => \timer_1|Add0~14_combout\,
	cout => \timer_1|Add0~15\);

-- Location: LCCOMB_X4_Y70_N30
\timer_1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add0~16_combout\ = (\timer_1|r_reg\(9) & (\timer_1|Add0~15\ $ (GND))) # (!\timer_1|r_reg\(9) & (!\timer_1|Add0~15\ & VCC))
-- \timer_1|Add0~17\ = CARRY((\timer_1|r_reg\(9) & !\timer_1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|r_reg\(9),
	datad => VCC,
	cin => \timer_1|Add0~15\,
	combout => \timer_1|Add0~16_combout\,
	cout => \timer_1|Add0~17\);

-- Location: LCCOMB_X4_Y69_N6
\timer_1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add0~24_combout\ = (\timer_1|r_reg\(13) & (\timer_1|Add0~23\ $ (GND))) # (!\timer_1|r_reg\(13) & (!\timer_1|Add0~23\ & VCC))
-- \timer_1|Add0~25\ = CARRY((\timer_1|r_reg\(13) & !\timer_1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|r_reg\(13),
	datad => VCC,
	cin => \timer_1|Add0~23\,
	combout => \timer_1|Add0~24_combout\,
	cout => \timer_1|Add0~25\);

-- Location: LCCOMB_X4_Y69_N12
\timer_1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add0~30_combout\ = (\timer_1|r_reg\(16) & (!\timer_1|Add0~29\)) # (!\timer_1|r_reg\(16) & ((\timer_1|Add0~29\) # (GND)))
-- \timer_1|Add0~31\ = CARRY((!\timer_1|Add0~29\) # (!\timer_1|r_reg\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|r_reg\(16),
	datad => VCC,
	cin => \timer_1|Add0~29\,
	combout => \timer_1|Add0~30_combout\,
	cout => \timer_1|Add0~31\);

-- Location: LCCOMB_X2_Y67_N0
\to_bcd[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \to_bcd[0]~0_combout\ = (!\ctrl_1|sel_reg\(1) & ((\ctrl_1|sel_reg\(0) & ((\timer_1|s_reg\(0)))) # (!\ctrl_1|sel_reg\(0) & (\timer_1|c_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|c_reg\(0),
	datab => \ctrl_1|sel_reg\(1),
	datac => \timer_1|s_reg\(0),
	datad => \ctrl_1|sel_reg\(0),
	combout => \to_bcd[0]~0_combout\);

-- Location: LCCOMB_X2_Y67_N10
\to_bcd[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \to_bcd[0]~1_combout\ = (\to_bcd[0]~0_combout\) # ((\ctrl_1|sel_reg\(1) & \timer_1|m_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \to_bcd[0]~0_combout\,
	datac => \ctrl_1|sel_reg\(1),
	datad => \timer_1|m_reg\(0),
	combout => \to_bcd[0]~1_combout\);

-- Location: FF_X1_Y69_N5
\timer_1|c_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|c_reg[6]~2_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|c_reg\(6));

-- Location: FF_X5_Y69_N31
\timer_1|s_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|s_reg[4]~2_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|s_reg\(4));

-- Location: FF_X1_Y69_N31
\timer_1|c_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|c_reg[4]~3_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|c_reg\(4));

-- Location: LCCOMB_X5_Y69_N8
\to_bcd[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \to_bcd[4]~4_combout\ = (!\ctrl_1|sel_reg\(1) & ((\ctrl_1|sel_reg\(0) & (\timer_1|s_reg\(4))) # (!\ctrl_1|sel_reg\(0) & ((\timer_1|c_reg\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_1|sel_reg\(0),
	datab => \ctrl_1|sel_reg\(1),
	datac => \timer_1|s_reg\(4),
	datad => \timer_1|c_reg\(4),
	combout => \to_bcd[4]~4_combout\);

-- Location: FF_X2_Y69_N23
\timer_1|m_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|m_reg[4]~3_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|m_reg\(4));

-- Location: LCCOMB_X2_Y66_N10
\to_bcd[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \to_bcd[4]~5_combout\ = (\to_bcd[4]~4_combout\) # ((\timer_1|m_reg\(4) & \ctrl_1|sel_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|m_reg\(4),
	datac => \ctrl_1|sel_reg\(1),
	datad => \to_bcd[4]~4_combout\,
	combout => \to_bcd[4]~5_combout\);

-- Location: FF_X5_Y69_N3
\timer_1|s_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|s_reg[5]~3_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|s_reg\(5));

-- Location: FF_X1_Y69_N7
\timer_1|c_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|c_reg[5]~4_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|c_reg\(5));

-- Location: LCCOMB_X1_Y67_N10
\to_bcd[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \to_bcd[5]~6_combout\ = (!\ctrl_1|sel_reg\(1) & ((\ctrl_1|sel_reg\(0) & ((\timer_1|s_reg\(5)))) # (!\ctrl_1|sel_reg\(0) & (\timer_1|c_reg\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_1|sel_reg\(1),
	datab => \ctrl_1|sel_reg\(0),
	datac => \timer_1|c_reg\(5),
	datad => \timer_1|s_reg\(5),
	combout => \to_bcd[5]~6_combout\);

-- Location: LCCOMB_X2_Y66_N6
\bin2bcd_1|bcd~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_1|bcd~0_combout\ = (\to_bcd[5]~7_combout\ & ((\to_bcd[4]~5_combout\ & (!\to_bcd[3]~3_combout\ & !\bin2bcd_1|LessThan0~0_combout\)) # (!\to_bcd[4]~5_combout\ & (\to_bcd[3]~3_combout\ & \bin2bcd_1|LessThan0~0_combout\)))) # (!\to_bcd[5]~7_combout\ 
-- & (\to_bcd[3]~3_combout\ $ (((!\to_bcd[4]~5_combout\ & \bin2bcd_1|LessThan0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \to_bcd[4]~5_combout\,
	datab => \to_bcd[5]~7_combout\,
	datac => \to_bcd[3]~3_combout\,
	datad => \bin2bcd_1|LessThan0~0_combout\,
	combout => \bin2bcd_1|bcd~0_combout\);

-- Location: LCCOMB_X2_Y66_N4
\bin2bcd_1|bcd~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_1|bcd~3_combout\ = (\bin2bcd_1|bcd~2_combout\ & (!\to_bcd[2]~9_combout\ & ((\bin2bcd_1|bcd~0_combout\) # (\bin2bcd_1|bcd~1_combout\)))) # (!\bin2bcd_1|bcd~2_combout\ & ((\bin2bcd_1|bcd~1_combout\ $ (\to_bcd[2]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_1|bcd~0_combout\,
	datab => \bin2bcd_1|bcd~2_combout\,
	datac => \bin2bcd_1|bcd~1_combout\,
	datad => \to_bcd[2]~9_combout\,
	combout => \bin2bcd_1|bcd~3_combout\);

-- Location: LCCOMB_X2_Y66_N26
\bin2bcd_1|bcd~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_1|bcd~6_combout\ = \bin2bcd_1|bcd~1_combout\ $ ((((!\bin2bcd_1|bcd~0_combout\ & !\to_bcd[2]~9_combout\)) # (!\bin2bcd_1|bcd~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_1|bcd~0_combout\,
	datab => \bin2bcd_1|bcd~2_combout\,
	datac => \bin2bcd_1|bcd~1_combout\,
	datad => \to_bcd[2]~9_combout\,
	combout => \bin2bcd_1|bcd~6_combout\);

-- Location: LCCOMB_X2_Y66_N12
\bin2bcd_1|tens[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_1|tens[3]~5_combout\ = (\bin2bcd_1|LessThan0~0_combout\ & ((\to_bcd[4]~5_combout\ & ((!\to_bcd[3]~3_combout\) # (!\to_bcd[5]~7_combout\))) # (!\to_bcd[4]~5_combout\ & (\to_bcd[5]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \to_bcd[4]~5_combout\,
	datab => \to_bcd[5]~7_combout\,
	datac => \to_bcd[3]~3_combout\,
	datad => \bin2bcd_1|LessThan0~0_combout\,
	combout => \bin2bcd_1|tens[3]~5_combout\);

-- Location: LCCOMB_X2_Y66_N30
\bin2bcd_1|tens[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_1|tens[3]~6_combout\ = (\bin2bcd_1|tens[3]~5_combout\ & \bin2bcd_1|bcd~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_1|tens[3]~5_combout\,
	datac => \bin2bcd_1|bcd~6_combout\,
	combout => \bin2bcd_1|tens[3]~6_combout\);

-- Location: FF_X3_Y70_N7
\ctrl_1|r_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ctrl_1|r_next[4]~1_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl_1|r_reg\(4));

-- Location: FF_X3_Y70_N11
\ctrl_1|r_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ctrl_1|r_next[1]~2_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl_1|r_reg\(1));

-- Location: FF_X4_Y69_N31
\timer_1|r_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|r_next[16]~1_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|r_reg\(16));

-- Location: FF_X4_Y70_N31
\timer_1|r_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|Add0~16_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|r_reg\(9));

-- Location: FF_X4_Y69_N23
\timer_1|r_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|r_next[13]~5_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|r_reg\(13));

-- Location: LCCOMB_X3_Y69_N12
\timer_1|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Equal1~0_combout\ = (!\timer_1|r_reg\(13) & (\timer_1|r_reg\(14) & (\timer_1|r_reg\(12) & !\timer_1|r_reg\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|r_reg\(13),
	datab => \timer_1|r_reg\(14),
	datac => \timer_1|r_reg\(12),
	datad => \timer_1|r_reg\(18),
	combout => \timer_1|Equal1~0_combout\);

-- Location: FF_X4_Y70_N7
\timer_1|r_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|r_next[8]~6_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|r_reg\(8));

-- Location: LCCOMB_X1_Y69_N28
\timer_1|s_en~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|s_en~0_combout\ = (!\timer_1|c_reg\(4) & (!\timer_1|c_reg\(3) & (\timer_1|c_reg\(6) & \timer_1|c_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|c_reg\(4),
	datab => \timer_1|c_reg\(3),
	datac => \timer_1|c_reg\(6),
	datad => \timer_1|c_reg\(5),
	combout => \timer_1|s_en~0_combout\);

-- Location: LCCOMB_X5_Y69_N6
\timer_1|m_en~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|m_en~0_combout\ = (\timer_1|s_reg\(3) & (!\timer_1|s_reg\(2) & (\timer_1|s_reg\(4) & \timer_1|s_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|s_reg\(3),
	datab => \timer_1|s_reg\(2),
	datac => \timer_1|s_reg\(4),
	datad => \timer_1|s_reg\(5),
	combout => \timer_1|m_en~0_combout\);

-- Location: LCCOMB_X2_Y69_N28
\timer_1|m_next~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|m_next~0_combout\ = (!\timer_1|m_reg\(2) & (\timer_1|m_reg\(3) & (\timer_1|m_reg\(4) & \timer_1|m_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|m_reg\(2),
	datab => \timer_1|m_reg\(3),
	datac => \timer_1|m_reg\(4),
	datad => \timer_1|m_reg\(5),
	combout => \timer_1|m_next~0_combout\);

-- Location: LCCOMB_X1_Y69_N4
\timer_1|c_reg[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|c_reg[6]~2_combout\ = (\timer_1|Equal1~3_combout\ & (\timer_1|Add1~12_combout\ & ((!\timer_1|s_en~combout\)))) # (!\timer_1|Equal1~3_combout\ & (((\timer_1|c_reg\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|Equal1~3_combout\,
	datab => \timer_1|Add1~12_combout\,
	datac => \timer_1|c_reg\(6),
	datad => \timer_1|s_en~combout\,
	combout => \timer_1|c_reg[6]~2_combout\);

-- Location: LCCOMB_X5_Y69_N30
\timer_1|s_reg[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|s_reg[4]~2_combout\ = (\timer_1|s_en~combout\ & (\timer_1|Add2~8_combout\ & ((!\timer_1|m_en~combout\)))) # (!\timer_1|s_en~combout\ & (((\timer_1|s_reg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|Add2~8_combout\,
	datab => \timer_1|s_en~combout\,
	datac => \timer_1|s_reg\(4),
	datad => \timer_1|m_en~combout\,
	combout => \timer_1|s_reg[4]~2_combout\);

-- Location: LCCOMB_X1_Y69_N30
\timer_1|c_reg[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|c_reg[4]~3_combout\ = (\timer_1|Equal1~3_combout\ & (\timer_1|Add1~8_combout\ & ((!\timer_1|s_en~combout\)))) # (!\timer_1|Equal1~3_combout\ & (((\timer_1|c_reg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|Equal1~3_combout\,
	datab => \timer_1|Add1~8_combout\,
	datac => \timer_1|c_reg\(4),
	datad => \timer_1|s_en~combout\,
	combout => \timer_1|c_reg[4]~3_combout\);

-- Location: LCCOMB_X2_Y69_N22
\timer_1|m_reg[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|m_reg[4]~3_combout\ = (\timer_1|m_en~combout\ & (\timer_1|Add3~8_combout\ & ((!\timer_1|m_reg[5]~0_combout\)))) # (!\timer_1|m_en~combout\ & ((\timer_1|m_reg\(4)) # ((\timer_1|Add3~8_combout\ & !\timer_1|m_reg[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|m_en~combout\,
	datab => \timer_1|Add3~8_combout\,
	datac => \timer_1|m_reg\(4),
	datad => \timer_1|m_reg[5]~0_combout\,
	combout => \timer_1|m_reg[4]~3_combout\);

-- Location: LCCOMB_X5_Y69_N2
\timer_1|s_reg[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|s_reg[5]~3_combout\ = (\timer_1|s_en~combout\ & (\timer_1|Add2~10_combout\ & ((!\timer_1|m_en~combout\)))) # (!\timer_1|s_en~combout\ & (((\timer_1|s_reg\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|s_en~combout\,
	datab => \timer_1|Add2~10_combout\,
	datac => \timer_1|s_reg\(5),
	datad => \timer_1|m_en~combout\,
	combout => \timer_1|s_reg[5]~3_combout\);

-- Location: LCCOMB_X1_Y69_N6
\timer_1|c_reg[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|c_reg[5]~4_combout\ = (\timer_1|Equal1~3_combout\ & (\timer_1|Add1~10_combout\ & ((!\timer_1|s_en~combout\)))) # (!\timer_1|Equal1~3_combout\ & (((\timer_1|c_reg\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|Equal1~3_combout\,
	datab => \timer_1|Add1~10_combout\,
	datac => \timer_1|c_reg\(5),
	datad => \timer_1|s_en~combout\,
	combout => \timer_1|c_reg[5]~4_combout\);

-- Location: LCCOMB_X3_Y70_N6
\ctrl_1|r_next[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl_1|r_next[4]~1_combout\ = (\ctrl_1|Add0~8_combout\ & ((\ctrl_1|r_reg\(1)) # ((!\ctrl_1|r_reg\(0)) # (!\ctrl_1|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_1|r_reg\(1),
	datab => \ctrl_1|Equal0~0_combout\,
	datac => \ctrl_1|Add0~8_combout\,
	datad => \ctrl_1|r_reg\(0),
	combout => \ctrl_1|r_next[4]~1_combout\);

-- Location: LCCOMB_X3_Y70_N10
\ctrl_1|r_next[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl_1|r_next[1]~2_combout\ = (\ctrl_1|Add0~2_combout\ & (((\ctrl_1|r_reg\(1)) # (!\ctrl_1|Equal0~0_combout\)) # (!\ctrl_1|r_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_1|r_reg\(0),
	datab => \ctrl_1|Add0~2_combout\,
	datac => \ctrl_1|r_reg\(1),
	datad => \ctrl_1|Equal0~0_combout\,
	combout => \ctrl_1|r_next[1]~2_combout\);

-- Location: LCCOMB_X3_Y69_N22
\timer_1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Equal0~3_combout\ = (\timer_1|r_reg\(13) & (!\timer_1|r_reg\(14) & (!\timer_1|r_reg\(12) & \timer_1|r_reg\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|r_reg\(13),
	datab => \timer_1|r_reg\(14),
	datac => \timer_1|r_reg\(12),
	datad => \timer_1|r_reg\(18),
	combout => \timer_1|Equal0~3_combout\);

-- Location: LCCOMB_X4_Y69_N30
\timer_1|r_next[16]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|r_next[16]~1_combout\ = (!\timer_1|Equal0~6_combout\ & \timer_1|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|Equal0~6_combout\,
	datad => \timer_1|Add0~30_combout\,
	combout => \timer_1|r_next[16]~1_combout\);

-- Location: LCCOMB_X4_Y69_N22
\timer_1|r_next[13]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|r_next[13]~5_combout\ = (!\timer_1|Equal0~6_combout\ & \timer_1|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|Equal0~6_combout\,
	datad => \timer_1|Add0~24_combout\,
	combout => \timer_1|r_next[13]~5_combout\);

-- Location: LCCOMB_X4_Y70_N6
\timer_1|r_next[8]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|r_next[8]~6_combout\ = (!\timer_1|Equal0~6_combout\ & \timer_1|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|Equal0~6_combout\,
	datad => \timer_1|Add0~14_combout\,
	combout => \timer_1|r_next[8]~6_combout\);

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

-- Location: IOOBUF_X0_Y68_N2
\cseg_u[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_cseg_u~14_combout\,
	devoe => ww_devoe,
	o => \cseg_u[6]~output_o\);

-- Location: IOOBUF_X1_Y73_N23
\cseg_u[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cseg_u~15_combout\,
	devoe => ww_devoe,
	o => \cseg_u[5]~output_o\);

-- Location: IOOBUF_X0_Y64_N2
\cseg_u[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cseg_u~16_combout\,
	devoe => ww_devoe,
	o => \cseg_u[4]~output_o\);

-- Location: IOOBUF_X0_Y65_N16
\cseg_u[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cseg_u~17_combout\,
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
	i => \cseg_u~18_combout\,
	devoe => ww_devoe,
	o => \cseg_u[2]~output_o\);

-- Location: IOOBUF_X0_Y55_N23
\cseg_u[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cseg_u~19_combout\,
	devoe => ww_devoe,
	o => \cseg_u[1]~output_o\);

-- Location: IOOBUF_X0_Y50_N16
\cseg_u[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cseg_u~20_combout\,
	devoe => ww_devoe,
	o => \cseg_u[0]~output_o\);

-- Location: IOOBUF_X0_Y55_N16
\cseg_d[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_cseg_d~11_combout\,
	devoe => ww_devoe,
	o => \cseg_d[6]~output_o\);

-- Location: IOOBUF_X0_Y61_N23
\cseg_d[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cseg_d~12_combout\,
	devoe => ww_devoe,
	o => \cseg_d[5]~output_o\);

-- Location: IOOBUF_X0_Y57_N16
\cseg_d[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cseg_d~8_combout\,
	devoe => ww_devoe,
	o => \cseg_d[4]~output_o\);

-- Location: IOOBUF_X0_Y60_N16
\cseg_d[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cseg_d~13_combout\,
	devoe => ww_devoe,
	o => \cseg_d[3]~output_o\);

-- Location: IOOBUF_X0_Y62_N23
\cseg_d[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cseg_d~9_combout\,
	devoe => ww_devoe,
	o => \cseg_d[2]~output_o\);

-- Location: IOOBUF_X0_Y49_N9
\cseg_d[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cseg_d~10_combout\,
	devoe => ww_devoe,
	o => \cseg_d[1]~output_o\);

-- Location: IOOBUF_X0_Y59_N23
\cseg_d[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cseg_d~14_combout\,
	devoe => ww_devoe,
	o => \cseg_d[0]~output_o\);

-- Location: IOOBUF_X0_Y66_N23
\seg_u[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_u~14_combout\,
	devoe => ww_devoe,
	o => \seg_u[6]~output_o\);

-- Location: IOOBUF_X0_Y68_N9
\seg_u[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_u~15_combout\,
	devoe => ww_devoe,
	o => \seg_u[5]~output_o\);

-- Location: IOOBUF_X0_Y67_N16
\seg_u[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_u~16_combout\,
	devoe => ww_devoe,
	o => \seg_u[4]~output_o\);

-- Location: IOOBUF_X0_Y69_N9
\seg_u[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_u~17_combout\,
	devoe => ww_devoe,
	o => \seg_u[3]~output_o\);

-- Location: IOOBUF_X0_Y54_N9
\seg_u[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_u~18_combout\,
	devoe => ww_devoe,
	o => \seg_u[2]~output_o\);

-- Location: IOOBUF_X0_Y46_N16
\seg_u[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_u~19_combout\,
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
	i => \seg_u~20_combout\,
	devoe => ww_devoe,
	o => \seg_u[0]~output_o\);

-- Location: IOOBUF_X0_Y52_N2
\seg_d[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_d~11_combout\,
	devoe => ww_devoe,
	o => \seg_d[6]~output_o\);

-- Location: IOOBUF_X0_Y53_N2
\seg_d[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_d~12_combout\,
	devoe => ww_devoe,
	o => \seg_d[5]~output_o\);

-- Location: IOOBUF_X3_Y73_N2
\seg_d[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_d~8_combout\,
	devoe => ww_devoe,
	o => \seg_d[4]~output_o\);

-- Location: IOOBUF_X0_Y57_N23
\seg_d[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_d~13_combout\,
	devoe => ww_devoe,
	o => \seg_d[3]~output_o\);

-- Location: IOOBUF_X1_Y73_N9
\seg_d[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_d~9_combout\,
	devoe => ww_devoe,
	o => \seg_d[2]~output_o\);

-- Location: IOOBUF_X3_Y73_N9
\seg_d[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_d~10_combout\,
	devoe => ww_devoe,
	o => \seg_d[1]~output_o\);

-- Location: IOOBUF_X0_Y58_N16
\seg_d[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_d~14_combout\,
	devoe => ww_devoe,
	o => \seg_d[0]~output_o\);

-- Location: IOOBUF_X0_Y68_N16
\min_u[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_u~14_combout\,
	devoe => ww_devoe,
	o => \min_u[6]~output_o\);

-- Location: IOOBUF_X0_Y67_N23
\min_u[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_u~15_combout\,
	devoe => ww_devoe,
	o => \min_u[5]~output_o\);

-- Location: IOOBUF_X1_Y73_N2
\min_u[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_u~16_combout\,
	devoe => ww_devoe,
	o => \min_u[4]~output_o\);

-- Location: IOOBUF_X0_Y66_N16
\min_u[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_u~17_combout\,
	devoe => ww_devoe,
	o => \min_u[3]~output_o\);

-- Location: IOOBUF_X0_Y51_N16
\min_u[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_u~18_combout\,
	devoe => ww_devoe,
	o => \min_u[2]~output_o\);

-- Location: IOOBUF_X0_Y52_N23
\min_u[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_u~19_combout\,
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
	i => \min_u~20_combout\,
	devoe => ww_devoe,
	o => \min_u[0]~output_o\);

-- Location: IOOBUF_X0_Y53_N9
\min_d[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_d~11_combout\,
	devoe => ww_devoe,
	o => \min_d[6]~output_o\);

-- Location: IOOBUF_X0_Y63_N23
\min_d[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_d~12_combout\,
	devoe => ww_devoe,
	o => \min_d[5]~output_o\);

-- Location: IOOBUF_X5_Y73_N9
\min_d[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_d~8_combout\,
	devoe => ww_devoe,
	o => \min_d[4]~output_o\);

-- Location: IOOBUF_X0_Y59_N16
\min_d[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_d~13_combout\,
	devoe => ww_devoe,
	o => \min_d[3]~output_o\);

-- Location: IOOBUF_X1_Y73_N16
\min_d[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_d~9_combout\,
	devoe => ww_devoe,
	o => \min_d[2]~output_o\);

-- Location: IOOBUF_X5_Y73_N23
\min_d[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_d~10_combout\,
	devoe => ww_devoe,
	o => \min_d[1]~output_o\);

-- Location: IOOBUF_X0_Y52_N16
\min_d[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_d~14_combout\,
	devoe => ww_devoe,
	o => \min_d[0]~output_o\);

-- Location: LCCOMB_X2_Y69_N10
\timer_1|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add3~0_combout\ = \timer_1|m_reg\(0) $ (VCC)
-- \timer_1|Add3~1\ = CARRY(\timer_1|m_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|m_reg\(0),
	datad => VCC,
	combout => \timer_1|Add3~0_combout\,
	cout => \timer_1|Add3~1\);

-- Location: LCCOMB_X2_Y69_N12
\timer_1|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add3~2_combout\ = (\timer_1|m_reg\(1) & (!\timer_1|Add3~1\)) # (!\timer_1|m_reg\(1) & ((\timer_1|Add3~1\) # (GND)))
-- \timer_1|Add3~3\ = CARRY((!\timer_1|Add3~1\) # (!\timer_1|m_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|m_reg\(1),
	datad => VCC,
	cin => \timer_1|Add3~1\,
	combout => \timer_1|Add3~2_combout\,
	cout => \timer_1|Add3~3\);

-- Location: LCCOMB_X2_Y69_N26
\timer_1|m_reg[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|m_reg[1]~6_combout\ = (\timer_1|m_en~combout\ & (\timer_1|Add3~2_combout\ & ((!\timer_1|m_reg[5]~0_combout\)))) # (!\timer_1|m_en~combout\ & ((\timer_1|m_reg\(1)) # ((\timer_1|Add3~2_combout\ & !\timer_1|m_reg[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|m_en~combout\,
	datab => \timer_1|Add3~2_combout\,
	datac => \timer_1|m_reg\(1),
	datad => \timer_1|m_reg[5]~0_combout\,
	combout => \timer_1|m_reg[1]~6_combout\);

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

-- Location: FF_X2_Y69_N27
\timer_1|m_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|m_reg[1]~6_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|m_reg\(1));

-- Location: LCCOMB_X5_Y69_N14
\timer_1|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add2~0_combout\ = \timer_1|s_reg\(0) $ (VCC)
-- \timer_1|Add2~1\ = CARRY(\timer_1|s_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|s_reg\(0),
	datad => VCC,
	combout => \timer_1|Add2~0_combout\,
	cout => \timer_1|Add2~1\);

-- Location: LCCOMB_X5_Y69_N0
\timer_1|s_reg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|s_reg[0]~0_combout\ = (\timer_1|s_en~combout\ & (\timer_1|Add2~0_combout\ & ((!\timer_1|m_en~combout\)))) # (!\timer_1|s_en~combout\ & (((\timer_1|s_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|s_en~combout\,
	datab => \timer_1|Add2~0_combout\,
	datac => \timer_1|s_reg\(0),
	datad => \timer_1|m_en~combout\,
	combout => \timer_1|s_reg[0]~0_combout\);

-- Location: FF_X5_Y69_N1
\timer_1|s_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|s_reg[0]~0_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|s_reg\(0));

-- Location: LCCOMB_X5_Y69_N16
\timer_1|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add2~2_combout\ = (\timer_1|s_reg\(1) & (!\timer_1|Add2~1\)) # (!\timer_1|s_reg\(1) & ((\timer_1|Add2~1\) # (GND)))
-- \timer_1|Add2~3\ = CARRY((!\timer_1|Add2~1\) # (!\timer_1|s_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|s_reg\(1),
	datad => VCC,
	cin => \timer_1|Add2~1\,
	combout => \timer_1|Add2~2_combout\,
	cout => \timer_1|Add2~3\);

-- Location: LCCOMB_X5_Y69_N4
\timer_1|s_reg[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|s_reg[1]~5_combout\ = (\timer_1|s_en~combout\ & (\timer_1|Add2~2_combout\ & ((!\timer_1|m_en~combout\)))) # (!\timer_1|s_en~combout\ & (((\timer_1|s_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|s_en~combout\,
	datab => \timer_1|Add2~2_combout\,
	datac => \timer_1|s_reg\(1),
	datad => \timer_1|m_en~combout\,
	combout => \timer_1|s_reg[1]~5_combout\);

-- Location: FF_X5_Y69_N5
\timer_1|s_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|s_reg[1]~5_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|s_reg\(1));

-- Location: LCCOMB_X1_Y69_N8
\timer_1|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add1~0_combout\ = \timer_1|c_reg\(0) $ (VCC)
-- \timer_1|Add1~1\ = CARRY(\timer_1|c_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|c_reg\(0),
	datad => VCC,
	combout => \timer_1|Add1~0_combout\,
	cout => \timer_1|Add1~1\);

-- Location: LCCOMB_X1_Y69_N0
\timer_1|c_reg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|c_reg[0]~0_combout\ = (\timer_1|Equal1~3_combout\ & (\timer_1|Add1~0_combout\ & ((!\timer_1|s_en~combout\)))) # (!\timer_1|Equal1~3_combout\ & (((\timer_1|c_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|Equal1~3_combout\,
	datab => \timer_1|Add1~0_combout\,
	datac => \timer_1|c_reg\(0),
	datad => \timer_1|s_en~combout\,
	combout => \timer_1|c_reg[0]~0_combout\);

-- Location: FF_X1_Y69_N1
\timer_1|c_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|c_reg[0]~0_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|c_reg\(0));

-- Location: LCCOMB_X4_Y70_N14
\timer_1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add0~0_combout\ = (\ctrl_1|r_reg\(0) & (\timer_1|r_reg\(1) $ (VCC))) # (!\ctrl_1|r_reg\(0) & (\timer_1|r_reg\(1) & VCC))
-- \timer_1|Add0~1\ = CARRY((\ctrl_1|r_reg\(0) & \timer_1|r_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_1|r_reg\(0),
	datab => \timer_1|r_reg\(1),
	datad => VCC,
	combout => \timer_1|Add0~0_combout\,
	cout => \timer_1|Add0~1\);

-- Location: FF_X4_Y70_N15
\timer_1|r_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|Add0~0_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|r_reg\(1));

-- Location: LCCOMB_X4_Y70_N16
\timer_1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add0~2_combout\ = (\timer_1|r_reg\(2) & (!\timer_1|Add0~1\)) # (!\timer_1|r_reg\(2) & ((\timer_1|Add0~1\) # (GND)))
-- \timer_1|Add0~3\ = CARRY((!\timer_1|Add0~1\) # (!\timer_1|r_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|r_reg\(2),
	datad => VCC,
	cin => \timer_1|Add0~1\,
	combout => \timer_1|Add0~2_combout\,
	cout => \timer_1|Add0~3\);

-- Location: FF_X4_Y70_N17
\timer_1|r_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|Add0~2_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|r_reg\(2));

-- Location: LCCOMB_X4_Y70_N18
\timer_1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add0~4_combout\ = (\timer_1|r_reg\(3) & (\timer_1|Add0~3\ $ (GND))) # (!\timer_1|r_reg\(3) & (!\timer_1|Add0~3\ & VCC))
-- \timer_1|Add0~5\ = CARRY((\timer_1|r_reg\(3) & !\timer_1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|r_reg\(3),
	datad => VCC,
	cin => \timer_1|Add0~3\,
	combout => \timer_1|Add0~4_combout\,
	cout => \timer_1|Add0~5\);

-- Location: FF_X4_Y70_N19
\timer_1|r_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|Add0~4_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|r_reg\(3));

-- Location: LCCOMB_X4_Y70_N20
\timer_1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add0~6_combout\ = (\timer_1|r_reg\(4) & (!\timer_1|Add0~5\)) # (!\timer_1|r_reg\(4) & ((\timer_1|Add0~5\) # (GND)))
-- \timer_1|Add0~7\ = CARRY((!\timer_1|Add0~5\) # (!\timer_1|r_reg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|r_reg\(4),
	datad => VCC,
	cin => \timer_1|Add0~5\,
	combout => \timer_1|Add0~6_combout\,
	cout => \timer_1|Add0~7\);

-- Location: FF_X4_Y70_N21
\timer_1|r_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|Add0~6_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|r_reg\(4));

-- Location: LCCOMB_X4_Y70_N22
\timer_1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add0~8_combout\ = (\timer_1|r_reg\(5) & (\timer_1|Add0~7\ $ (GND))) # (!\timer_1|r_reg\(5) & (!\timer_1|Add0~7\ & VCC))
-- \timer_1|Add0~9\ = CARRY((\timer_1|r_reg\(5) & !\timer_1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|r_reg\(5),
	datad => VCC,
	cin => \timer_1|Add0~7\,
	combout => \timer_1|Add0~8_combout\,
	cout => \timer_1|Add0~9\);

-- Location: LCCOMB_X4_Y70_N26
\timer_1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add0~12_combout\ = (\timer_1|r_reg\(7) & (\timer_1|Add0~11\ $ (GND))) # (!\timer_1|r_reg\(7) & (!\timer_1|Add0~11\ & VCC))
-- \timer_1|Add0~13\ = CARRY((\timer_1|r_reg\(7) & !\timer_1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|r_reg\(7),
	datad => VCC,
	cin => \timer_1|Add0~11\,
	combout => \timer_1|Add0~12_combout\,
	cout => \timer_1|Add0~13\);

-- Location: FF_X4_Y70_N27
\timer_1|r_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|Add0~12_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|r_reg\(7));

-- Location: LCCOMB_X4_Y70_N10
\timer_1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Equal0~4_combout\ = (\timer_1|r_reg\(8) & (\timer_1|r_reg\(3) & (!\timer_1|r_reg\(7) & \timer_1|r_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|r_reg\(8),
	datab => \timer_1|r_reg\(3),
	datac => \timer_1|r_reg\(7),
	datad => \timer_1|r_reg\(2),
	combout => \timer_1|Equal0~4_combout\);

-- Location: LCCOMB_X3_Y70_N12
\ctrl_1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl_1|Add0~0_combout\ = \ctrl_1|r_reg\(0) $ (VCC)
-- \ctrl_1|Add0~1\ = CARRY(\ctrl_1|r_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_1|r_reg\(0),
	datad => VCC,
	combout => \ctrl_1|Add0~0_combout\,
	cout => \ctrl_1|Add0~1\);

-- Location: FF_X3_Y70_N13
\ctrl_1|r_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ctrl_1|Add0~0_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl_1|r_reg\(0));

-- Location: LCCOMB_X3_Y69_N24
\timer_1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Equal0~5_combout\ = (\timer_1|r_reg\(1) & \ctrl_1|r_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer_1|r_reg\(1),
	datad => \ctrl_1|r_reg\(0),
	combout => \timer_1|Equal0~5_combout\);

-- Location: LCCOMB_X3_Y69_N2
\timer_1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Equal0~6_combout\ = (\timer_1|Equal0~3_combout\ & (\timer_1|Equal0~2_combout\ & (\timer_1|Equal0~4_combout\ & \timer_1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|Equal0~3_combout\,
	datab => \timer_1|Equal0~2_combout\,
	datac => \timer_1|Equal0~4_combout\,
	datad => \timer_1|Equal0~5_combout\,
	combout => \timer_1|Equal0~6_combout\);

-- Location: LCCOMB_X4_Y70_N4
\timer_1|r_next[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|r_next[5]~3_combout\ = (\timer_1|Add0~8_combout\ & !\timer_1|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer_1|Add0~8_combout\,
	datad => \timer_1|Equal0~6_combout\,
	combout => \timer_1|r_next[5]~3_combout\);

-- Location: FF_X4_Y70_N5
\timer_1|r_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|r_next[5]~3_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|r_reg\(5));

-- Location: LCCOMB_X4_Y70_N24
\timer_1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add0~10_combout\ = (\timer_1|r_reg\(6) & (!\timer_1|Add0~9\)) # (!\timer_1|r_reg\(6) & ((\timer_1|Add0~9\) # (GND)))
-- \timer_1|Add0~11\ = CARRY((!\timer_1|Add0~9\) # (!\timer_1|r_reg\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|r_reg\(6),
	datad => VCC,
	cin => \timer_1|Add0~9\,
	combout => \timer_1|Add0~10_combout\,
	cout => \timer_1|Add0~11\);

-- Location: FF_X4_Y70_N25
\timer_1|r_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|Add0~10_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|r_reg\(6));

-- Location: LCCOMB_X4_Y69_N0
\timer_1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add0~18_combout\ = (\timer_1|r_reg\(10) & (!\timer_1|Add0~17\)) # (!\timer_1|r_reg\(10) & ((\timer_1|Add0~17\) # (GND)))
-- \timer_1|Add0~19\ = CARRY((!\timer_1|Add0~17\) # (!\timer_1|r_reg\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|r_reg\(10),
	datad => VCC,
	cin => \timer_1|Add0~17\,
	combout => \timer_1|Add0~18_combout\,
	cout => \timer_1|Add0~19\);

-- Location: FF_X4_Y69_N1
\timer_1|r_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|Add0~18_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|r_reg\(10));

-- Location: LCCOMB_X4_Y69_N2
\timer_1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add0~20_combout\ = (\timer_1|r_reg\(11) & (\timer_1|Add0~19\ $ (GND))) # (!\timer_1|r_reg\(11) & (!\timer_1|Add0~19\ & VCC))
-- \timer_1|Add0~21\ = CARRY((\timer_1|r_reg\(11) & !\timer_1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|r_reg\(11),
	datad => VCC,
	cin => \timer_1|Add0~19\,
	combout => \timer_1|Add0~20_combout\,
	cout => \timer_1|Add0~21\);

-- Location: FF_X4_Y69_N3
\timer_1|r_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|Add0~20_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|r_reg\(11));

-- Location: LCCOMB_X4_Y69_N4
\timer_1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add0~22_combout\ = (\timer_1|r_reg\(12) & (!\timer_1|Add0~21\)) # (!\timer_1|r_reg\(12) & ((\timer_1|Add0~21\) # (GND)))
-- \timer_1|Add0~23\ = CARRY((!\timer_1|Add0~21\) # (!\timer_1|r_reg\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|r_reg\(12),
	datad => VCC,
	cin => \timer_1|Add0~21\,
	combout => \timer_1|Add0~22_combout\,
	cout => \timer_1|Add0~23\);

-- Location: FF_X4_Y69_N5
\timer_1|r_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|Add0~22_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|r_reg\(12));

-- Location: LCCOMB_X4_Y69_N8
\timer_1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add0~26_combout\ = (\timer_1|r_reg\(14) & (!\timer_1|Add0~25\)) # (!\timer_1|r_reg\(14) & ((\timer_1|Add0~25\) # (GND)))
-- \timer_1|Add0~27\ = CARRY((!\timer_1|Add0~25\) # (!\timer_1|r_reg\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|r_reg\(14),
	datad => VCC,
	cin => \timer_1|Add0~25\,
	combout => \timer_1|Add0~26_combout\,
	cout => \timer_1|Add0~27\);

-- Location: FF_X4_Y69_N9
\timer_1|r_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|Add0~26_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|r_reg\(14));

-- Location: LCCOMB_X4_Y69_N10
\timer_1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add0~28_combout\ = (\timer_1|r_reg\(15) & (\timer_1|Add0~27\ $ (GND))) # (!\timer_1|r_reg\(15) & (!\timer_1|Add0~27\ & VCC))
-- \timer_1|Add0~29\ = CARRY((\timer_1|r_reg\(15) & !\timer_1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|r_reg\(15),
	datad => VCC,
	cin => \timer_1|Add0~27\,
	combout => \timer_1|Add0~28_combout\,
	cout => \timer_1|Add0~29\);

-- Location: LCCOMB_X4_Y69_N24
\timer_1|r_next[15]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|r_next[15]~2_combout\ = (!\timer_1|Equal0~6_combout\ & \timer_1|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|Equal0~6_combout\,
	datad => \timer_1|Add0~28_combout\,
	combout => \timer_1|r_next[15]~2_combout\);

-- Location: FF_X4_Y69_N25
\timer_1|r_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|r_next[15]~2_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|r_reg\(15));

-- Location: LCCOMB_X4_Y69_N14
\timer_1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add0~32_combout\ = (\timer_1|r_reg\(17) & (\timer_1|Add0~31\ $ (GND))) # (!\timer_1|r_reg\(17) & (!\timer_1|Add0~31\ & VCC))
-- \timer_1|Add0~33\ = CARRY((\timer_1|r_reg\(17) & !\timer_1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|r_reg\(17),
	datad => VCC,
	cin => \timer_1|Add0~31\,
	combout => \timer_1|Add0~32_combout\,
	cout => \timer_1|Add0~33\);

-- Location: LCCOMB_X4_Y69_N20
\timer_1|r_next[17]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|r_next[17]~0_combout\ = (\timer_1|Add0~32_combout\ & !\timer_1|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer_1|Add0~32_combout\,
	datad => \timer_1|Equal0~6_combout\,
	combout => \timer_1|r_next[17]~0_combout\);

-- Location: FF_X4_Y69_N21
\timer_1|r_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|r_next[17]~0_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|r_reg\(17));

-- Location: LCCOMB_X4_Y69_N16
\timer_1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add0~34_combout\ = (\timer_1|r_reg\(18) & (!\timer_1|Add0~33\)) # (!\timer_1|r_reg\(18) & ((\timer_1|Add0~33\) # (GND)))
-- \timer_1|Add0~35\ = CARRY((!\timer_1|Add0~33\) # (!\timer_1|r_reg\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|r_reg\(18),
	datad => VCC,
	cin => \timer_1|Add0~33\,
	combout => \timer_1|Add0~34_combout\,
	cout => \timer_1|Add0~35\);

-- Location: LCCOMB_X4_Y69_N28
\timer_1|r_next[18]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|r_next[18]~4_combout\ = (!\timer_1|Equal0~6_combout\ & \timer_1|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|Equal0~6_combout\,
	datad => \timer_1|Add0~34_combout\,
	combout => \timer_1|r_next[18]~4_combout\);

-- Location: FF_X4_Y69_N29
\timer_1|r_reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|r_next[18]~4_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|r_reg\(18));

-- Location: LCCOMB_X4_Y69_N18
\timer_1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add0~36_combout\ = \timer_1|Add0~35\ $ (!\timer_1|r_reg\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \timer_1|r_reg\(19),
	cin => \timer_1|Add0~35\,
	combout => \timer_1|Add0~36_combout\);

-- Location: FF_X4_Y69_N19
\timer_1|r_reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|Add0~36_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|r_reg\(19));

-- Location: LCCOMB_X4_Y69_N26
\timer_1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Equal0~0_combout\ = (\timer_1|r_reg\(16) & (\timer_1|r_reg\(17) & (!\timer_1|r_reg\(19) & \timer_1|r_reg\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|r_reg\(16),
	datab => \timer_1|r_reg\(17),
	datac => \timer_1|r_reg\(19),
	datad => \timer_1|r_reg\(15),
	combout => \timer_1|Equal0~0_combout\);

-- Location: LCCOMB_X3_Y69_N8
\timer_1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Equal0~1_combout\ = (!\timer_1|r_reg\(9) & (!\timer_1|r_reg\(10) & (!\timer_1|r_reg\(11) & !\timer_1|r_reg\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|r_reg\(9),
	datab => \timer_1|r_reg\(10),
	datac => \timer_1|r_reg\(11),
	datad => \timer_1|r_reg\(6),
	combout => \timer_1|Equal0~1_combout\);

-- Location: LCCOMB_X3_Y69_N18
\timer_1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Equal0~2_combout\ = (!\timer_1|r_reg\(5) & (\timer_1|Equal0~0_combout\ & (\timer_1|Equal0~1_combout\ & \timer_1|r_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|r_reg\(5),
	datab => \timer_1|Equal0~0_combout\,
	datac => \timer_1|Equal0~1_combout\,
	datad => \timer_1|r_reg\(4),
	combout => \timer_1|Equal0~2_combout\);

-- Location: LCCOMB_X3_Y69_N30
\timer_1|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Equal1~2_combout\ = (!\timer_1|r_reg\(1) & !\ctrl_1|r_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer_1|r_reg\(1),
	datad => \ctrl_1|r_reg\(0),
	combout => \timer_1|Equal1~2_combout\);

-- Location: LCCOMB_X4_Y70_N0
\timer_1|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Equal1~1_combout\ = (!\timer_1|r_reg\(8) & (!\timer_1|r_reg\(3) & (\timer_1|r_reg\(7) & !\timer_1|r_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|r_reg\(8),
	datab => \timer_1|r_reg\(3),
	datac => \timer_1|r_reg\(7),
	datad => \timer_1|r_reg\(2),
	combout => \timer_1|Equal1~1_combout\);

-- Location: LCCOMB_X3_Y69_N16
\timer_1|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Equal1~3_combout\ = (\timer_1|Equal1~0_combout\ & (\timer_1|Equal0~2_combout\ & (\timer_1|Equal1~2_combout\ & \timer_1|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|Equal1~0_combout\,
	datab => \timer_1|Equal0~2_combout\,
	datac => \timer_1|Equal1~2_combout\,
	datad => \timer_1|Equal1~1_combout\,
	combout => \timer_1|Equal1~3_combout\);

-- Location: LCCOMB_X1_Y69_N26
\timer_1|c_reg[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|c_reg[1]~6_combout\ = (\timer_1|Equal1~3_combout\ & (\timer_1|Add1~2_combout\ & (!\timer_1|s_en~combout\))) # (!\timer_1|Equal1~3_combout\ & (((\timer_1|c_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|Add1~2_combout\,
	datab => \timer_1|s_en~combout\,
	datac => \timer_1|c_reg\(1),
	datad => \timer_1|Equal1~3_combout\,
	combout => \timer_1|c_reg[1]~6_combout\);

-- Location: FF_X1_Y69_N27
\timer_1|c_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|c_reg[1]~6_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|c_reg\(1));

-- Location: LCCOMB_X1_Y69_N24
\timer_1|c_reg[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|c_reg[2]~5_combout\ = (\timer_1|Equal1~3_combout\ & (\timer_1|Add1~4_combout\ & (!\timer_1|s_en~combout\))) # (!\timer_1|Equal1~3_combout\ & (((\timer_1|c_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|Add1~4_combout\,
	datab => \timer_1|s_en~combout\,
	datac => \timer_1|c_reg\(2),
	datad => \timer_1|Equal1~3_combout\,
	combout => \timer_1|c_reg[2]~5_combout\);

-- Location: FF_X1_Y69_N25
\timer_1|c_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|c_reg[2]~5_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|c_reg\(2));

-- Location: LCCOMB_X1_Y69_N22
\timer_1|s_en~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|s_en~1_combout\ = (\timer_1|c_reg\(0) & (\timer_1|c_reg\(1) & !\timer_1|c_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|c_reg\(0),
	datac => \timer_1|c_reg\(1),
	datad => \timer_1|c_reg\(2),
	combout => \timer_1|s_en~1_combout\);

-- Location: LCCOMB_X3_Y69_N26
\timer_1|s_en\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|s_en~combout\ = (\timer_1|s_en~0_combout\ & (\timer_1|s_en~1_combout\ & \timer_1|Equal1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|s_en~0_combout\,
	datac => \timer_1|s_en~1_combout\,
	datad => \timer_1|Equal1~3_combout\,
	combout => \timer_1|s_en~combout\);

-- Location: LCCOMB_X3_Y69_N4
\timer_1|m_en\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|m_en~combout\ = (\timer_1|m_en~0_combout\ & (\timer_1|s_reg\(1) & (\timer_1|s_en~combout\ & \timer_1|s_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|m_en~0_combout\,
	datab => \timer_1|s_reg\(1),
	datac => \timer_1|s_en~combout\,
	datad => \timer_1|s_reg\(0),
	combout => \timer_1|m_en~combout\);

-- Location: LCCOMB_X2_Y69_N6
\timer_1|m_reg[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|m_reg[5]~0_combout\ = ((\timer_1|m_next~0_combout\ & (\timer_1|m_reg\(1) & \timer_1|m_reg\(0)))) # (!\timer_1|m_en~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|m_next~0_combout\,
	datab => \timer_1|m_reg\(1),
	datac => \timer_1|m_reg\(0),
	datad => \timer_1|m_en~combout\,
	combout => \timer_1|m_reg[5]~0_combout\);

-- Location: LCCOMB_X2_Y69_N8
\timer_1|m_reg[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|m_reg[0]~1_combout\ = (\timer_1|m_en~combout\ & (\timer_1|Add3~0_combout\ & ((!\timer_1|m_reg[5]~0_combout\)))) # (!\timer_1|m_en~combout\ & ((\timer_1|m_reg\(0)) # ((\timer_1|Add3~0_combout\ & !\timer_1|m_reg[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|m_en~combout\,
	datab => \timer_1|Add3~0_combout\,
	datac => \timer_1|m_reg\(0),
	datad => \timer_1|m_reg[5]~0_combout\,
	combout => \timer_1|m_reg[0]~1_combout\);

-- Location: FF_X2_Y69_N9
\timer_1|m_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|m_reg[0]~1_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|m_reg\(0));

-- Location: LCCOMB_X2_Y69_N14
\timer_1|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add3~4_combout\ = (\timer_1|m_reg\(2) & (\timer_1|Add3~3\ $ (GND))) # (!\timer_1|m_reg\(2) & (!\timer_1|Add3~3\ & VCC))
-- \timer_1|Add3~5\ = CARRY((\timer_1|m_reg\(2) & !\timer_1|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|m_reg\(2),
	datad => VCC,
	cin => \timer_1|Add3~3\,
	combout => \timer_1|Add3~4_combout\,
	cout => \timer_1|Add3~5\);

-- Location: LCCOMB_X2_Y69_N16
\timer_1|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add3~6_combout\ = (\timer_1|m_reg\(3) & (!\timer_1|Add3~5\)) # (!\timer_1|m_reg\(3) & ((\timer_1|Add3~5\) # (GND)))
-- \timer_1|Add3~7\ = CARRY((!\timer_1|Add3~5\) # (!\timer_1|m_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|m_reg\(3),
	datad => VCC,
	cin => \timer_1|Add3~5\,
	combout => \timer_1|Add3~6_combout\,
	cout => \timer_1|Add3~7\);

-- Location: LCCOMB_X2_Y69_N2
\timer_1|m_reg[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|m_reg[3]~2_combout\ = (\timer_1|m_en~combout\ & (\timer_1|Add3~6_combout\ & ((!\timer_1|m_reg[5]~0_combout\)))) # (!\timer_1|m_en~combout\ & ((\timer_1|m_reg\(3)) # ((\timer_1|Add3~6_combout\ & !\timer_1|m_reg[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|m_en~combout\,
	datab => \timer_1|Add3~6_combout\,
	datac => \timer_1|m_reg\(3),
	datad => \timer_1|m_reg[5]~0_combout\,
	combout => \timer_1|m_reg[3]~2_combout\);

-- Location: FF_X2_Y69_N3
\timer_1|m_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|m_reg[3]~2_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|m_reg\(3));

-- Location: LCCOMB_X2_Y69_N20
\timer_1|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add3~10_combout\ = \timer_1|Add3~9\ $ (\timer_1|m_reg\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \timer_1|m_reg\(5),
	cin => \timer_1|Add3~9\,
	combout => \timer_1|Add3~10_combout\);

-- Location: LCCOMB_X2_Y69_N0
\timer_1|m_reg[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|m_reg[5]~4_combout\ = (\timer_1|m_en~combout\ & (\timer_1|Add3~10_combout\ & ((!\timer_1|m_reg[5]~0_combout\)))) # (!\timer_1|m_en~combout\ & ((\timer_1|m_reg\(5)) # ((\timer_1|Add3~10_combout\ & !\timer_1|m_reg[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|m_en~combout\,
	datab => \timer_1|Add3~10_combout\,
	datac => \timer_1|m_reg\(5),
	datad => \timer_1|m_reg[5]~0_combout\,
	combout => \timer_1|m_reg[5]~4_combout\);

-- Location: FF_X2_Y69_N1
\timer_1|m_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|m_reg[5]~4_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|m_reg\(5));

-- Location: LCCOMB_X3_Y70_N16
\ctrl_1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl_1|Add0~4_combout\ = (\ctrl_1|r_reg\(2) & (\ctrl_1|Add0~3\ $ (GND))) # (!\ctrl_1|r_reg\(2) & (!\ctrl_1|Add0~3\ & VCC))
-- \ctrl_1|Add0~5\ = CARRY((\ctrl_1|r_reg\(2) & !\ctrl_1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ctrl_1|r_reg\(2),
	datad => VCC,
	cin => \ctrl_1|Add0~3\,
	combout => \ctrl_1|Add0~4_combout\,
	cout => \ctrl_1|Add0~5\);

-- Location: FF_X3_Y70_N17
\ctrl_1|r_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ctrl_1|Add0~4_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl_1|r_reg\(2));

-- Location: LCCOMB_X3_Y70_N18
\ctrl_1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl_1|Add0~6_combout\ = (\ctrl_1|r_reg\(3) & (!\ctrl_1|Add0~5\)) # (!\ctrl_1|r_reg\(3) & ((\ctrl_1|Add0~5\) # (GND)))
-- \ctrl_1|Add0~7\ = CARRY((!\ctrl_1|Add0~5\) # (!\ctrl_1|r_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ctrl_1|r_reg\(3),
	datad => VCC,
	cin => \ctrl_1|Add0~5\,
	combout => \ctrl_1|Add0~6_combout\,
	cout => \ctrl_1|Add0~7\);

-- Location: FF_X3_Y70_N19
\ctrl_1|r_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ctrl_1|Add0~6_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl_1|r_reg\(3));

-- Location: LCCOMB_X3_Y70_N22
\ctrl_1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl_1|Add0~10_combout\ = \ctrl_1|Add0~9\ $ (\ctrl_1|r_reg\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_1|r_reg\(5),
	cin => \ctrl_1|Add0~9\,
	combout => \ctrl_1|Add0~10_combout\);

-- Location: LCCOMB_X3_Y70_N28
\ctrl_1|r_next[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl_1|r_next[5]~0_combout\ = (\ctrl_1|Add0~10_combout\ & ((\ctrl_1|r_reg\(1)) # ((!\ctrl_1|r_reg\(0)) # (!\ctrl_1|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_1|r_reg\(1),
	datab => \ctrl_1|Equal0~0_combout\,
	datac => \ctrl_1|Add0~10_combout\,
	datad => \ctrl_1|r_reg\(0),
	combout => \ctrl_1|r_next[5]~0_combout\);

-- Location: FF_X3_Y70_N29
\ctrl_1|r_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ctrl_1|r_next[5]~0_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl_1|r_reg\(5));

-- Location: LCCOMB_X3_Y70_N0
\ctrl_1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl_1|Equal0~0_combout\ = (\ctrl_1|r_reg\(4) & (!\ctrl_1|r_reg\(3) & (\ctrl_1|r_reg\(5) & !\ctrl_1|r_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_1|r_reg\(4),
	datab => \ctrl_1|r_reg\(3),
	datac => \ctrl_1|r_reg\(5),
	datad => \ctrl_1|r_reg\(2),
	combout => \ctrl_1|Equal0~0_combout\);

-- Location: LCCOMB_X3_Y70_N8
\ctrl_1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl_1|Equal0~1_combout\ = (!\ctrl_1|r_reg\(1) & (\ctrl_1|Equal0~0_combout\ & \ctrl_1|r_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_1|r_reg\(1),
	datab => \ctrl_1|Equal0~0_combout\,
	datad => \ctrl_1|r_reg\(0),
	combout => \ctrl_1|Equal0~1_combout\);

-- Location: LCCOMB_X3_Y70_N2
\ctrl_1|sel_next[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl_1|sel_next[0]~3_combout\ = (!\ctrl_1|sel_reg\(0) & ((!\ctrl_1|sel_reg\(1)) # (!\ctrl_1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctrl_1|Equal0~1_combout\,
	datac => \ctrl_1|sel_reg\(0),
	datad => \ctrl_1|sel_reg\(1),
	combout => \ctrl_1|sel_next[0]~3_combout\);

-- Location: FF_X3_Y70_N3
\ctrl_1|sel_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ctrl_1|sel_next[0]~3_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \ctrl_1|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl_1|sel_reg\(0));

-- Location: LCCOMB_X3_Y70_N24
\ctrl_1|sel_next[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl_1|sel_next[1]~2_combout\ = (\ctrl_1|sel_reg\(1) & (!\ctrl_1|Equal0~1_combout\ & !\ctrl_1|sel_reg\(0))) # (!\ctrl_1|sel_reg\(1) & ((\ctrl_1|sel_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctrl_1|Equal0~1_combout\,
	datac => \ctrl_1|sel_reg\(1),
	datad => \ctrl_1|sel_reg\(0),
	combout => \ctrl_1|sel_next[1]~2_combout\);

-- Location: FF_X3_Y70_N25
\ctrl_1|sel_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ctrl_1|sel_next[1]~2_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	ena => \ctrl_1|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl_1|sel_reg\(1));

-- Location: LCCOMB_X2_Y66_N20
\to_bcd[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \to_bcd[5]~7_combout\ = (\to_bcd[5]~6_combout\) # ((\timer_1|m_reg\(5) & \ctrl_1|sel_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \to_bcd[5]~6_combout\,
	datab => \timer_1|m_reg\(5),
	datac => \ctrl_1|sel_reg\(1),
	combout => \to_bcd[5]~7_combout\);

-- Location: LCCOMB_X1_Y69_N2
\timer_1|c_reg[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|c_reg[3]~1_combout\ = (\timer_1|Equal1~3_combout\ & (\timer_1|Add1~6_combout\ & ((!\timer_1|s_en~combout\)))) # (!\timer_1|Equal1~3_combout\ & (((\timer_1|c_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|Equal1~3_combout\,
	datab => \timer_1|Add1~6_combout\,
	datac => \timer_1|c_reg\(3),
	datad => \timer_1|s_en~combout\,
	combout => \timer_1|c_reg[3]~1_combout\);

-- Location: FF_X1_Y69_N3
\timer_1|c_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|c_reg[3]~1_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|c_reg\(3));

-- Location: LCCOMB_X5_Y69_N18
\timer_1|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add2~4_combout\ = (\timer_1|s_reg\(2) & (\timer_1|Add2~3\ $ (GND))) # (!\timer_1|s_reg\(2) & (!\timer_1|Add2~3\ & VCC))
-- \timer_1|Add2~5\ = CARRY((\timer_1|s_reg\(2) & !\timer_1|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|s_reg\(2),
	datad => VCC,
	cin => \timer_1|Add2~3\,
	combout => \timer_1|Add2~4_combout\,
	cout => \timer_1|Add2~5\);

-- Location: LCCOMB_X5_Y69_N28
\timer_1|s_reg[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|s_reg[2]~4_combout\ = (\timer_1|s_en~combout\ & (\timer_1|Add2~4_combout\ & ((!\timer_1|m_en~combout\)))) # (!\timer_1|s_en~combout\ & (((\timer_1|s_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|s_en~combout\,
	datab => \timer_1|Add2~4_combout\,
	datac => \timer_1|s_reg\(2),
	datad => \timer_1|m_en~combout\,
	combout => \timer_1|s_reg[2]~4_combout\);

-- Location: FF_X5_Y69_N29
\timer_1|s_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|s_reg[2]~4_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|s_reg\(2));

-- Location: LCCOMB_X5_Y69_N10
\timer_1|s_reg[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|s_reg[3]~1_combout\ = (\timer_1|s_en~combout\ & (\timer_1|Add2~6_combout\ & ((!\timer_1|m_en~combout\)))) # (!\timer_1|s_en~combout\ & (((\timer_1|s_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|s_en~combout\,
	datab => \timer_1|Add2~6_combout\,
	datac => \timer_1|s_reg\(3),
	datad => \timer_1|m_en~combout\,
	combout => \timer_1|s_reg[3]~1_combout\);

-- Location: FF_X5_Y69_N11
\timer_1|s_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|s_reg[3]~1_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|s_reg\(3));

-- Location: LCCOMB_X5_Y69_N12
\to_bcd[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \to_bcd[3]~2_combout\ = (!\ctrl_1|sel_reg\(1) & ((\ctrl_1|sel_reg\(0) & ((\timer_1|s_reg\(3)))) # (!\ctrl_1|sel_reg\(0) & (\timer_1|c_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_1|sel_reg\(0),
	datab => \timer_1|c_reg\(3),
	datac => \ctrl_1|sel_reg\(1),
	datad => \timer_1|s_reg\(3),
	combout => \to_bcd[3]~2_combout\);

-- Location: LCCOMB_X2_Y69_N4
\to_bcd[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \to_bcd[3]~3_combout\ = (\to_bcd[3]~2_combout\) # ((\ctrl_1|sel_reg\(1) & \timer_1|m_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctrl_1|sel_reg\(1),
	datac => \timer_1|m_reg\(3),
	datad => \to_bcd[3]~2_combout\,
	combout => \to_bcd[3]~3_combout\);

-- Location: LCCOMB_X2_Y66_N16
\bin2bcd_1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_1|LessThan0~0_combout\ = (\timer_1|c_reg\(6) & (!\ctrl_1|sel_reg\(1) & !\ctrl_1|sel_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|c_reg\(6),
	datac => \ctrl_1|sel_reg\(1),
	datad => \ctrl_1|sel_reg\(0),
	combout => \bin2bcd_1|LessThan0~0_combout\);

-- Location: LCCOMB_X2_Y66_N2
\bin2bcd_1|bcd~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_1|bcd~2_combout\ = (\to_bcd[4]~5_combout\ & (!\bin2bcd_1|LessThan0~0_combout\ & ((\to_bcd[3]~3_combout\) # (!\to_bcd[5]~7_combout\)))) # (!\to_bcd[4]~5_combout\ & (\bin2bcd_1|LessThan0~0_combout\ & ((\to_bcd[5]~7_combout\) # 
-- (!\to_bcd[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \to_bcd[4]~5_combout\,
	datab => \to_bcd[5]~7_combout\,
	datac => \to_bcd[3]~3_combout\,
	datad => \bin2bcd_1|LessThan0~0_combout\,
	combout => \bin2bcd_1|bcd~2_combout\);

-- Location: LCCOMB_X2_Y66_N8
\bin2bcd_1|bcd~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_1|bcd~1_combout\ = (\to_bcd[5]~7_combout\ & (!\to_bcd[3]~3_combout\ & (\to_bcd[4]~5_combout\ $ (!\bin2bcd_1|LessThan0~0_combout\)))) # (!\to_bcd[5]~7_combout\ & (!\to_bcd[4]~5_combout\ & (\to_bcd[3]~3_combout\ & \bin2bcd_1|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \to_bcd[4]~5_combout\,
	datab => \to_bcd[5]~7_combout\,
	datac => \to_bcd[3]~3_combout\,
	datad => \bin2bcd_1|LessThan0~0_combout\,
	combout => \bin2bcd_1|bcd~1_combout\);

-- Location: LCCOMB_X2_Y69_N30
\timer_1|m_reg[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|m_reg[2]~5_combout\ = (\timer_1|m_en~combout\ & (\timer_1|Add3~4_combout\ & ((!\timer_1|m_reg[5]~0_combout\)))) # (!\timer_1|m_en~combout\ & ((\timer_1|m_reg\(2)) # ((\timer_1|Add3~4_combout\ & !\timer_1|m_reg[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|m_en~combout\,
	datab => \timer_1|Add3~4_combout\,
	datac => \timer_1|m_reg\(2),
	datad => \timer_1|m_reg[5]~0_combout\,
	combout => \timer_1|m_reg[2]~5_combout\);

-- Location: FF_X2_Y69_N31
\timer_1|m_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|m_reg[2]~5_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|m_reg\(2));

-- Location: LCCOMB_X5_Y69_N26
\to_bcd[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \to_bcd[2]~8_combout\ = (!\ctrl_1|sel_reg\(1) & ((\ctrl_1|sel_reg\(0) & ((\timer_1|s_reg\(2)))) # (!\ctrl_1|sel_reg\(0) & (\timer_1|c_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_1|sel_reg\(0),
	datab => \timer_1|c_reg\(2),
	datac => \ctrl_1|sel_reg\(1),
	datad => \timer_1|s_reg\(2),
	combout => \to_bcd[2]~8_combout\);

-- Location: LCCOMB_X2_Y69_N24
\to_bcd[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \to_bcd[2]~9_combout\ = (\to_bcd[2]~8_combout\) # ((\ctrl_1|sel_reg\(1) & \timer_1|m_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctrl_1|sel_reg\(1),
	datac => \timer_1|m_reg\(2),
	datad => \to_bcd[2]~8_combout\,
	combout => \to_bcd[2]~9_combout\);

-- Location: LCCOMB_X2_Y66_N0
\bin2bcd_1|bcd~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_1|bcd~5_combout\ = (\bin2bcd_1|bcd~0_combout\ & ((\to_bcd[2]~9_combout\) # ((!\bin2bcd_1|bcd~2_combout\ & !\bin2bcd_1|bcd~1_combout\)))) # (!\bin2bcd_1|bcd~0_combout\ & (((\bin2bcd_1|bcd~1_combout\ & !\to_bcd[2]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_1|bcd~0_combout\,
	datab => \bin2bcd_1|bcd~2_combout\,
	datac => \bin2bcd_1|bcd~1_combout\,
	datad => \to_bcd[2]~9_combout\,
	combout => \bin2bcd_1|bcd~5_combout\);

-- Location: LCCOMB_X2_Y67_N28
\to_bcd[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \to_bcd[1]~10_combout\ = (!\ctrl_1|sel_reg\(1) & ((\ctrl_1|sel_reg\(0) & ((\timer_1|s_reg\(1)))) # (!\ctrl_1|sel_reg\(0) & (\timer_1|c_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_1|sel_reg\(0),
	datab => \timer_1|c_reg\(1),
	datac => \ctrl_1|sel_reg\(1),
	datad => \timer_1|s_reg\(1),
	combout => \to_bcd[1]~10_combout\);

-- Location: LCCOMB_X2_Y67_N14
\to_bcd[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \to_bcd[1]~11_combout\ = (\to_bcd[1]~10_combout\) # ((\ctrl_1|sel_reg\(1) & \timer_1|m_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_1|sel_reg\(1),
	datab => \to_bcd[1]~10_combout\,
	datac => \timer_1|m_reg\(1),
	combout => \to_bcd[1]~11_combout\);

-- Location: LCCOMB_X2_Y66_N14
\bin2bcd_1|bcd~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_1|bcd~4_combout\ = (\bin2bcd_1|bcd~2_combout\ & (!\bin2bcd_1|bcd~0_combout\ & ((!\to_bcd[2]~9_combout\)))) # (!\bin2bcd_1|bcd~2_combout\ & (\bin2bcd_1|bcd~1_combout\ & ((\bin2bcd_1|bcd~0_combout\) # (\to_bcd[2]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_1|bcd~0_combout\,
	datab => \bin2bcd_1|bcd~2_combout\,
	datac => \bin2bcd_1|bcd~1_combout\,
	datad => \to_bcd[2]~9_combout\,
	combout => \bin2bcd_1|bcd~4_combout\);

-- Location: LCCOMB_X2_Y67_N18
\bin2bcd_1|ones[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_1|ones[2]~1_combout\ = (\bin2bcd_1|bcd~3_combout\ & ((\to_bcd[1]~11_combout\) # ((!\bin2bcd_1|bcd~5_combout\ & !\bin2bcd_1|bcd~4_combout\)))) # (!\bin2bcd_1|bcd~3_combout\ & (((!\to_bcd[1]~11_combout\ & \bin2bcd_1|bcd~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_1|bcd~3_combout\,
	datab => \bin2bcd_1|bcd~5_combout\,
	datac => \to_bcd[1]~11_combout\,
	datad => \bin2bcd_1|bcd~4_combout\,
	combout => \bin2bcd_1|ones[2]~1_combout\);

-- Location: LCCOMB_X2_Y67_N8
\bin2bcd_1|ones[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_1|ones[1]~0_combout\ = (\bin2bcd_1|bcd~5_combout\ & (!\to_bcd[1]~11_combout\ & ((\bin2bcd_1|bcd~3_combout\) # (\bin2bcd_1|bcd~4_combout\)))) # (!\bin2bcd_1|bcd~5_combout\ & ((\to_bcd[1]~11_combout\ $ (\bin2bcd_1|bcd~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_1|bcd~3_combout\,
	datab => \bin2bcd_1|bcd~5_combout\,
	datac => \to_bcd[1]~11_combout\,
	datad => \bin2bcd_1|bcd~4_combout\,
	combout => \bin2bcd_1|ones[1]~0_combout\);

-- Location: LCCOMB_X2_Y67_N20
\bin2bcd_1|ones[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_1|ones[3]~2_combout\ = (\bin2bcd_1|bcd~5_combout\ & (!\bin2bcd_1|bcd~3_combout\ & (!\to_bcd[1]~11_combout\))) # (!\bin2bcd_1|bcd~5_combout\ & (\bin2bcd_1|bcd~4_combout\ & ((\bin2bcd_1|bcd~3_combout\) # (\to_bcd[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_1|bcd~3_combout\,
	datab => \bin2bcd_1|bcd~5_combout\,
	datac => \to_bcd[1]~11_combout\,
	datad => \bin2bcd_1|bcd~4_combout\,
	combout => \bin2bcd_1|ones[3]~2_combout\);

-- Location: LCCOMB_X2_Y67_N6
\bin2ssd_1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2ssd_1|Mux6~0_combout\ = (\bin2bcd_1|ones[3]~2_combout\) # ((\bin2bcd_1|ones[2]~1_combout\ & ((!\bin2bcd_1|ones[1]~0_combout\) # (!\to_bcd[0]~1_combout\))) # (!\bin2bcd_1|ones[2]~1_combout\ & ((\bin2bcd_1|ones[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \to_bcd[0]~1_combout\,
	datab => \bin2bcd_1|ones[2]~1_combout\,
	datac => \bin2bcd_1|ones[1]~0_combout\,
	datad => \bin2bcd_1|ones[3]~2_combout\,
	combout => \bin2ssd_1|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y67_N14
\cseg_u~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \cseg_u~14_combout\ = (\bin2ssd_1|Mux6~0_combout\) # ((\ctrl_1|sel_reg\(0)) # (\ctrl_1|sel_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2ssd_1|Mux6~0_combout\,
	datab => \ctrl_1|sel_reg\(0),
	datac => \ctrl_1|sel_reg\(1),
	combout => \cseg_u~14_combout\);

-- Location: LCCOMB_X2_Y67_N24
\bin2ssd_1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2ssd_1|Mux5~0_combout\ = (!\bin2bcd_1|ones[3]~2_combout\ & ((\to_bcd[0]~1_combout\ & ((\bin2bcd_1|ones[1]~0_combout\) # (!\bin2bcd_1|ones[2]~1_combout\))) # (!\to_bcd[0]~1_combout\ & (!\bin2bcd_1|ones[2]~1_combout\ & \bin2bcd_1|ones[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \to_bcd[0]~1_combout\,
	datab => \bin2bcd_1|ones[2]~1_combout\,
	datac => \bin2bcd_1|ones[1]~0_combout\,
	datad => \bin2bcd_1|ones[3]~2_combout\,
	combout => \bin2ssd_1|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y67_N24
\cseg_u~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \cseg_u~15_combout\ = (!\ctrl_1|sel_reg\(1) & (!\ctrl_1|sel_reg\(0) & \bin2ssd_1|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_1|sel_reg\(1),
	datab => \ctrl_1|sel_reg\(0),
	datad => \bin2ssd_1|Mux5~0_combout\,
	combout => \cseg_u~15_combout\);

-- Location: LCCOMB_X2_Y67_N2
\bin2ssd_1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2ssd_1|Mux4~0_combout\ = (\bin2bcd_1|ones[1]~0_combout\ & (\to_bcd[0]~1_combout\ & ((!\bin2bcd_1|ones[3]~2_combout\)))) # (!\bin2bcd_1|ones[1]~0_combout\ & ((\bin2bcd_1|ones[2]~1_combout\ & ((!\bin2bcd_1|ones[3]~2_combout\))) # 
-- (!\bin2bcd_1|ones[2]~1_combout\ & (\to_bcd[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \to_bcd[0]~1_combout\,
	datab => \bin2bcd_1|ones[2]~1_combout\,
	datac => \bin2bcd_1|ones[1]~0_combout\,
	datad => \bin2bcd_1|ones[3]~2_combout\,
	combout => \bin2ssd_1|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y67_N26
\cseg_u~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \cseg_u~16_combout\ = (\bin2ssd_1|Mux4~0_combout\ & (!\ctrl_1|sel_reg\(0) & !\ctrl_1|sel_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2ssd_1|Mux4~0_combout\,
	datab => \ctrl_1|sel_reg\(0),
	datac => \ctrl_1|sel_reg\(1),
	combout => \cseg_u~16_combout\);

-- Location: LCCOMB_X2_Y67_N4
\bin2ssd_1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2ssd_1|Mux3~0_combout\ = (!\bin2bcd_1|ones[3]~2_combout\ & ((\to_bcd[0]~1_combout\ & (\bin2bcd_1|ones[2]~1_combout\ $ (!\bin2bcd_1|ones[1]~0_combout\))) # (!\to_bcd[0]~1_combout\ & (\bin2bcd_1|ones[2]~1_combout\ & !\bin2bcd_1|ones[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \to_bcd[0]~1_combout\,
	datab => \bin2bcd_1|ones[2]~1_combout\,
	datac => \bin2bcd_1|ones[1]~0_combout\,
	datad => \bin2bcd_1|ones[3]~2_combout\,
	combout => \bin2ssd_1|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y67_N20
\cseg_u~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \cseg_u~17_combout\ = (\bin2ssd_1|Mux3~0_combout\ & (!\ctrl_1|sel_reg\(0) & !\ctrl_1|sel_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2ssd_1|Mux3~0_combout\,
	datab => \ctrl_1|sel_reg\(0),
	datac => \ctrl_1|sel_reg\(1),
	combout => \cseg_u~17_combout\);

-- Location: LCCOMB_X2_Y67_N22
\bin2ssd_1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2ssd_1|Mux2~0_combout\ = (\bin2bcd_1|ones[2]~1_combout\ & (((\bin2bcd_1|ones[3]~2_combout\)))) # (!\bin2bcd_1|ones[2]~1_combout\ & (\bin2bcd_1|ones[1]~0_combout\ & ((\bin2bcd_1|ones[3]~2_combout\) # (!\to_bcd[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \to_bcd[0]~1_combout\,
	datab => \bin2bcd_1|ones[2]~1_combout\,
	datac => \bin2bcd_1|ones[1]~0_combout\,
	datad => \bin2bcd_1|ones[3]~2_combout\,
	combout => \bin2ssd_1|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y55_N10
\cseg_u~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \cseg_u~18_combout\ = (!\ctrl_1|sel_reg\(1) & (\bin2ssd_1|Mux2~0_combout\ & !\ctrl_1|sel_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_1|sel_reg\(1),
	datac => \bin2ssd_1|Mux2~0_combout\,
	datad => \ctrl_1|sel_reg\(0),
	combout => \cseg_u~18_combout\);

-- Location: LCCOMB_X2_Y67_N16
\bin2ssd_1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2ssd_1|Mux1~0_combout\ = (\bin2bcd_1|ones[2]~1_combout\ & ((\bin2bcd_1|ones[3]~2_combout\) # (\to_bcd[0]~1_combout\ $ (\bin2bcd_1|ones[1]~0_combout\)))) # (!\bin2bcd_1|ones[2]~1_combout\ & (((\bin2bcd_1|ones[1]~0_combout\ & 
-- \bin2bcd_1|ones[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \to_bcd[0]~1_combout\,
	datab => \bin2bcd_1|ones[2]~1_combout\,
	datac => \bin2bcd_1|ones[1]~0_combout\,
	datad => \bin2bcd_1|ones[3]~2_combout\,
	combout => \bin2ssd_1|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y55_N4
\cseg_u~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \cseg_u~19_combout\ = (\bin2ssd_1|Mux1~0_combout\ & (!\ctrl_1|sel_reg\(1) & !\ctrl_1|sel_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2ssd_1|Mux1~0_combout\,
	datac => \ctrl_1|sel_reg\(1),
	datad => \ctrl_1|sel_reg\(0),
	combout => \cseg_u~19_combout\);

-- Location: LCCOMB_X2_Y67_N26
\bin2ssd_1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2ssd_1|Mux0~0_combout\ = (!\bin2bcd_1|ones[1]~0_combout\ & (!\bin2bcd_1|ones[3]~2_combout\ & (\to_bcd[0]~1_combout\ $ (\bin2bcd_1|ones[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \to_bcd[0]~1_combout\,
	datab => \bin2bcd_1|ones[2]~1_combout\,
	datac => \bin2bcd_1|ones[1]~0_combout\,
	datad => \bin2bcd_1|ones[3]~2_combout\,
	combout => \bin2ssd_1|Mux0~0_combout\);

-- Location: LCCOMB_X1_Y55_N30
\cseg_u~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \cseg_u~20_combout\ = (\bin2ssd_1|Mux0~0_combout\ & (!\ctrl_1|sel_reg\(1) & !\ctrl_1|sel_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2ssd_1|Mux0~0_combout\,
	datac => \ctrl_1|sel_reg\(1),
	datad => \ctrl_1|sel_reg\(0),
	combout => \cseg_u~20_combout\);

-- Location: LCCOMB_X2_Y66_N28
\bin2bcd_1|tens[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_1|tens[1]~1_combout\ = (\bin2bcd_1|LessThan0~0_combout\ & ((\to_bcd[4]~5_combout\) # (\to_bcd[5]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \to_bcd[4]~5_combout\,
	datab => \to_bcd[5]~7_combout\,
	datad => \bin2bcd_1|LessThan0~0_combout\,
	combout => \bin2bcd_1|tens[1]~1_combout\);

-- Location: LCCOMB_X2_Y66_N22
\bin2bcd_1|tens[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_1|tens[2]~2_combout\ = (\to_bcd[4]~5_combout\ & (\to_bcd[5]~7_combout\ & ((\to_bcd[3]~3_combout\) # (!\bin2bcd_1|LessThan0~0_combout\)))) # (!\to_bcd[4]~5_combout\ & ((\to_bcd[5]~7_combout\ & (\to_bcd[3]~3_combout\ & 
-- !\bin2bcd_1|LessThan0~0_combout\)) # (!\to_bcd[5]~7_combout\ & ((\bin2bcd_1|LessThan0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \to_bcd[4]~5_combout\,
	datab => \to_bcd[5]~7_combout\,
	datac => \to_bcd[3]~3_combout\,
	datad => \bin2bcd_1|LessThan0~0_combout\,
	combout => \bin2bcd_1|tens[2]~2_combout\);

-- Location: LCCOMB_X2_Y66_N24
\bin2bcd_1|tens[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_1|tens[1]~3_combout\ = (\bin2bcd_1|bcd~6_combout\ & ((!\bin2bcd_1|tens[2]~2_combout\) # (!\bin2bcd_1|tens[1]~1_combout\))) # (!\bin2bcd_1|bcd~6_combout\ & (\bin2bcd_1|tens[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_1|bcd~6_combout\,
	datab => \bin2bcd_1|tens[1]~1_combout\,
	datac => \bin2bcd_1|tens[2]~2_combout\,
	combout => \bin2bcd_1|tens[1]~3_combout\);

-- Location: LCCOMB_X2_Y67_N12
\bin2bcd_1|tens[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_1|tens[0]~0_combout\ = \bin2bcd_1|bcd~4_combout\ $ ((((!\bin2bcd_1|bcd~3_combout\ & !\to_bcd[1]~11_combout\)) # (!\bin2bcd_1|bcd~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_1|bcd~3_combout\,
	datab => \bin2bcd_1|bcd~5_combout\,
	datac => \to_bcd[1]~11_combout\,
	datad => \bin2bcd_1|bcd~4_combout\,
	combout => \bin2bcd_1|tens[0]~0_combout\);

-- Location: LCCOMB_X2_Y66_N18
\bin2bcd_1|tens[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_1|tens[2]~4_combout\ = (\bin2bcd_1|tens[2]~2_combout\ & ((!\bin2bcd_1|tens[1]~1_combout\) # (!\bin2bcd_1|bcd~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_1|bcd~6_combout\,
	datab => \bin2bcd_1|tens[1]~1_combout\,
	datac => \bin2bcd_1|tens[2]~2_combout\,
	combout => \bin2bcd_1|tens[2]~4_combout\);

-- Location: LCCOMB_X1_Y59_N8
\bin2ssd_2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2ssd_2|Mux6~0_combout\ = (\bin2bcd_1|tens[3]~6_combout\) # ((\bin2bcd_1|tens[1]~3_combout\ & ((\bin2bcd_1|tens[2]~4_combout\))) # (!\bin2bcd_1|tens[1]~3_combout\ & ((\bin2bcd_1|tens[0]~0_combout\) # (!\bin2bcd_1|tens[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_1|tens[3]~6_combout\,
	datab => \bin2bcd_1|tens[1]~3_combout\,
	datac => \bin2bcd_1|tens[0]~0_combout\,
	datad => \bin2bcd_1|tens[2]~4_combout\,
	combout => \bin2ssd_2|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y55_N16
\cseg_d~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \cseg_d~11_combout\ = (\bin2ssd_2|Mux6~0_combout\) # ((\ctrl_1|sel_reg\(1)) # (\ctrl_1|sel_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2ssd_2|Mux6~0_combout\,
	datac => \ctrl_1|sel_reg\(1),
	datad => \ctrl_1|sel_reg\(0),
	combout => \cseg_d~11_combout\);

-- Location: LCCOMB_X1_Y59_N18
\bin2ssd_2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2ssd_2|Mux5~0_combout\ = (!\bin2bcd_1|tens[3]~6_combout\ & ((\bin2bcd_1|tens[1]~3_combout\ & (!\bin2bcd_1|tens[0]~0_combout\ & !\bin2bcd_1|tens[2]~4_combout\)) # (!\bin2bcd_1|tens[1]~3_combout\ & ((!\bin2bcd_1|tens[2]~4_combout\) # 
-- (!\bin2bcd_1|tens[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_1|tens[3]~6_combout\,
	datab => \bin2bcd_1|tens[1]~3_combout\,
	datac => \bin2bcd_1|tens[0]~0_combout\,
	datad => \bin2bcd_1|tens[2]~4_combout\,
	combout => \bin2ssd_2|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y59_N30
\cseg_d~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \cseg_d~12_combout\ = (\bin2ssd_2|Mux5~0_combout\ & (!\ctrl_1|sel_reg\(1) & !\ctrl_1|sel_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2ssd_2|Mux5~0_combout\,
	datac => \ctrl_1|sel_reg\(1),
	datad => \ctrl_1|sel_reg\(0),
	combout => \cseg_d~12_combout\);

-- Location: LCCOMB_X1_Y67_N8
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (\ctrl_1|sel_reg\(0)) # (\ctrl_1|sel_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctrl_1|sel_reg\(0),
	datac => \ctrl_1|sel_reg\(1),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X1_Y59_N28
\cseg_d~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \cseg_d~8_combout\ = (!\Equal1~0_combout\ & (((\bin2bcd_1|tens[1]~3_combout\ & \bin2bcd_1|tens[2]~4_combout\)) # (!\bin2bcd_1|tens[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \bin2bcd_1|tens[1]~3_combout\,
	datac => \bin2bcd_1|tens[0]~0_combout\,
	datad => \bin2bcd_1|tens[2]~4_combout\,
	combout => \cseg_d~8_combout\);

-- Location: LCCOMB_X1_Y59_N6
\bin2ssd_2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2ssd_2|Mux3~0_combout\ = (!\bin2bcd_1|tens[3]~6_combout\ & ((\bin2bcd_1|tens[1]~3_combout\ & (\bin2bcd_1|tens[0]~0_combout\ $ (!\bin2bcd_1|tens[2]~4_combout\))) # (!\bin2bcd_1|tens[1]~3_combout\ & (!\bin2bcd_1|tens[0]~0_combout\ & 
-- \bin2bcd_1|tens[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_1|tens[3]~6_combout\,
	datab => \bin2bcd_1|tens[1]~3_combout\,
	datac => \bin2bcd_1|tens[0]~0_combout\,
	datad => \bin2bcd_1|tens[2]~4_combout\,
	combout => \bin2ssd_2|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y59_N0
\cseg_d~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \cseg_d~13_combout\ = (\bin2ssd_2|Mux3~0_combout\ & (!\ctrl_1|sel_reg\(1) & !\ctrl_1|sel_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2ssd_2|Mux3~0_combout\,
	datac => \ctrl_1|sel_reg\(1),
	datad => \ctrl_1|sel_reg\(0),
	combout => \cseg_d~13_combout\);

-- Location: LCCOMB_X1_Y59_N16
\cseg_d~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \cseg_d~9_combout\ = (!\Equal1~0_combout\ & (!\bin2bcd_1|tens[1]~3_combout\ & (\bin2bcd_1|tens[0]~0_combout\ & !\bin2bcd_1|tens[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \bin2bcd_1|tens[1]~3_combout\,
	datac => \bin2bcd_1|tens[0]~0_combout\,
	datad => \bin2bcd_1|tens[2]~4_combout\,
	combout => \cseg_d~9_combout\);

-- Location: LCCOMB_X1_Y59_N26
\cseg_d~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \cseg_d~10_combout\ = (!\Equal1~0_combout\ & (\bin2bcd_1|tens[2]~4_combout\ & (\bin2bcd_1|tens[1]~3_combout\ $ (\bin2bcd_1|tens[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \bin2bcd_1|tens[1]~3_combout\,
	datac => \bin2bcd_1|tens[0]~0_combout\,
	datad => \bin2bcd_1|tens[2]~4_combout\,
	combout => \cseg_d~10_combout\);

-- Location: LCCOMB_X1_Y59_N12
\bin2ssd_2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2ssd_2|Mux0~0_combout\ = (!\bin2bcd_1|tens[3]~6_combout\ & (\bin2bcd_1|tens[1]~3_combout\ & (\bin2bcd_1|tens[0]~0_combout\ $ (!\bin2bcd_1|tens[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_1|tens[3]~6_combout\,
	datab => \bin2bcd_1|tens[1]~3_combout\,
	datac => \bin2bcd_1|tens[0]~0_combout\,
	datad => \bin2bcd_1|tens[2]~4_combout\,
	combout => \bin2ssd_2|Mux0~0_combout\);

-- Location: LCCOMB_X1_Y59_N2
\cseg_d~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \cseg_d~14_combout\ = (\bin2ssd_2|Mux0~0_combout\ & (!\ctrl_1|sel_reg\(1) & !\ctrl_1|sel_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2ssd_2|Mux0~0_combout\,
	datac => \ctrl_1|sel_reg\(1),
	datad => \ctrl_1|sel_reg\(0),
	combout => \cseg_d~14_combout\);

-- Location: LCCOMB_X1_Y67_N30
\seg_u~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_u~14_combout\ = (!\bin2ssd_1|Mux6~0_combout\ & (\ctrl_1|sel_reg\(0) & !\ctrl_1|sel_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2ssd_1|Mux6~0_combout\,
	datab => \ctrl_1|sel_reg\(0),
	datac => \ctrl_1|sel_reg\(1),
	combout => \seg_u~14_combout\);

-- Location: LCCOMB_X1_Y67_N0
\seg_u~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_u~15_combout\ = (!\ctrl_1|sel_reg\(1) & (\ctrl_1|sel_reg\(0) & \bin2ssd_1|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_1|sel_reg\(1),
	datab => \ctrl_1|sel_reg\(0),
	datad => \bin2ssd_1|Mux5~0_combout\,
	combout => \seg_u~15_combout\);

-- Location: LCCOMB_X1_Y67_N18
\seg_u~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_u~16_combout\ = (\bin2ssd_1|Mux4~0_combout\ & (\ctrl_1|sel_reg\(0) & !\ctrl_1|sel_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2ssd_1|Mux4~0_combout\,
	datab => \ctrl_1|sel_reg\(0),
	datac => \ctrl_1|sel_reg\(1),
	combout => \seg_u~16_combout\);

-- Location: LCCOMB_X1_Y67_N12
\seg_u~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_u~17_combout\ = (\bin2ssd_1|Mux3~0_combout\ & (\ctrl_1|sel_reg\(0) & !\ctrl_1|sel_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2ssd_1|Mux3~0_combout\,
	datab => \ctrl_1|sel_reg\(0),
	datac => \ctrl_1|sel_reg\(1),
	combout => \seg_u~17_combout\);

-- Location: LCCOMB_X1_Y55_N26
\seg_u~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_u~18_combout\ = (!\ctrl_1|sel_reg\(1) & (\bin2ssd_1|Mux2~0_combout\ & \ctrl_1|sel_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_1|sel_reg\(1),
	datac => \bin2ssd_1|Mux2~0_combout\,
	datad => \ctrl_1|sel_reg\(0),
	combout => \seg_u~18_combout\);

-- Location: LCCOMB_X1_Y55_N28
\seg_u~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_u~19_combout\ = (\bin2ssd_1|Mux1~0_combout\ & (!\ctrl_1|sel_reg\(1) & \ctrl_1|sel_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2ssd_1|Mux1~0_combout\,
	datac => \ctrl_1|sel_reg\(1),
	datad => \ctrl_1|sel_reg\(0),
	combout => \seg_u~19_combout\);

-- Location: LCCOMB_X1_Y55_N22
\seg_u~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_u~20_combout\ = (\bin2ssd_1|Mux0~0_combout\ & (!\ctrl_1|sel_reg\(1) & \ctrl_1|sel_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2ssd_1|Mux0~0_combout\,
	datac => \ctrl_1|sel_reg\(1),
	datad => \ctrl_1|sel_reg\(0),
	combout => \seg_u~20_combout\);

-- Location: LCCOMB_X1_Y55_N0
\seg_d~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_d~11_combout\ = (!\bin2ssd_2|Mux6~0_combout\ & (!\ctrl_1|sel_reg\(1) & \ctrl_1|sel_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2ssd_2|Mux6~0_combout\,
	datac => \ctrl_1|sel_reg\(1),
	datad => \ctrl_1|sel_reg\(0),
	combout => \seg_d~11_combout\);

-- Location: LCCOMB_X1_Y59_N20
\seg_d~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_d~12_combout\ = (\bin2ssd_2|Mux5~0_combout\ & (!\ctrl_1|sel_reg\(1) & \ctrl_1|sel_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2ssd_2|Mux5~0_combout\,
	datac => \ctrl_1|sel_reg\(1),
	datad => \ctrl_1|sel_reg\(0),
	combout => \seg_d~12_combout\);

-- Location: LCCOMB_X1_Y67_N4
\Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (\ctrl_1|sel_reg\(0) & !\ctrl_1|sel_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctrl_1|sel_reg\(0),
	datac => \ctrl_1|sel_reg\(1),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X3_Y69_N0
\seg_d~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_d~8_combout\ = (\Equal1~1_combout\ & (((\bin2bcd_1|tens[1]~3_combout\ & \bin2bcd_1|tens[2]~4_combout\)) # (!\bin2bcd_1|tens[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => \bin2bcd_1|tens[1]~3_combout\,
	datac => \bin2bcd_1|tens[2]~4_combout\,
	datad => \bin2bcd_1|tens[0]~0_combout\,
	combout => \seg_d~8_combout\);

-- Location: LCCOMB_X1_Y59_N14
\seg_d~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_d~13_combout\ = (\bin2ssd_2|Mux3~0_combout\ & (!\ctrl_1|sel_reg\(1) & \ctrl_1|sel_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2ssd_2|Mux3~0_combout\,
	datac => \ctrl_1|sel_reg\(1),
	datad => \ctrl_1|sel_reg\(0),
	combout => \seg_d~13_combout\);

-- Location: LCCOMB_X3_Y69_N10
\seg_d~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_d~9_combout\ = (\Equal1~1_combout\ & (!\bin2bcd_1|tens[1]~3_combout\ & (!\bin2bcd_1|tens[2]~4_combout\ & \bin2bcd_1|tens[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => \bin2bcd_1|tens[1]~3_combout\,
	datac => \bin2bcd_1|tens[2]~4_combout\,
	datad => \bin2bcd_1|tens[0]~0_combout\,
	combout => \seg_d~9_combout\);

-- Location: LCCOMB_X3_Y69_N28
\seg_d~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_d~10_combout\ = (\Equal1~1_combout\ & (\bin2bcd_1|tens[2]~4_combout\ & (\bin2bcd_1|tens[1]~3_combout\ $ (\bin2bcd_1|tens[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => \bin2bcd_1|tens[1]~3_combout\,
	datac => \bin2bcd_1|tens[2]~4_combout\,
	datad => \bin2bcd_1|tens[0]~0_combout\,
	combout => \seg_d~10_combout\);

-- Location: LCCOMB_X1_Y59_N24
\seg_d~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_d~14_combout\ = (\bin2ssd_2|Mux0~0_combout\ & (!\ctrl_1|sel_reg\(1) & \ctrl_1|sel_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2ssd_2|Mux0~0_combout\,
	datac => \ctrl_1|sel_reg\(1),
	datad => \ctrl_1|sel_reg\(0),
	combout => \seg_d~14_combout\);

-- Location: LCCOMB_X1_Y67_N22
\min_u~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \min_u~14_combout\ = (!\bin2ssd_1|Mux6~0_combout\ & (!\ctrl_1|sel_reg\(0) & \ctrl_1|sel_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2ssd_1|Mux6~0_combout\,
	datab => \ctrl_1|sel_reg\(0),
	datac => \ctrl_1|sel_reg\(1),
	combout => \min_u~14_combout\);

-- Location: LCCOMB_X1_Y67_N16
\min_u~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \min_u~15_combout\ = (\ctrl_1|sel_reg\(1) & (!\ctrl_1|sel_reg\(0) & \bin2ssd_1|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_1|sel_reg\(1),
	datab => \ctrl_1|sel_reg\(0),
	datad => \bin2ssd_1|Mux5~0_combout\,
	combout => \min_u~15_combout\);

-- Location: LCCOMB_X1_Y67_N2
\min_u~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \min_u~16_combout\ = (\bin2ssd_1|Mux4~0_combout\ & (!\ctrl_1|sel_reg\(0) & \ctrl_1|sel_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2ssd_1|Mux4~0_combout\,
	datab => \ctrl_1|sel_reg\(0),
	datac => \ctrl_1|sel_reg\(1),
	combout => \min_u~16_combout\);

-- Location: LCCOMB_X1_Y67_N28
\min_u~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \min_u~17_combout\ = (\bin2ssd_1|Mux3~0_combout\ & (!\ctrl_1|sel_reg\(0) & \ctrl_1|sel_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2ssd_1|Mux3~0_combout\,
	datab => \ctrl_1|sel_reg\(0),
	datac => \ctrl_1|sel_reg\(1),
	combout => \min_u~17_combout\);

-- Location: LCCOMB_X1_Y55_N18
\min_u~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \min_u~18_combout\ = (\ctrl_1|sel_reg\(1) & (\bin2ssd_1|Mux2~0_combout\ & !\ctrl_1|sel_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_1|sel_reg\(1),
	datac => \bin2ssd_1|Mux2~0_combout\,
	datad => \ctrl_1|sel_reg\(0),
	combout => \min_u~18_combout\);

-- Location: LCCOMB_X1_Y55_N20
\min_u~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \min_u~19_combout\ = (\bin2ssd_1|Mux1~0_combout\ & (\ctrl_1|sel_reg\(1) & !\ctrl_1|sel_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2ssd_1|Mux1~0_combout\,
	datac => \ctrl_1|sel_reg\(1),
	datad => \ctrl_1|sel_reg\(0),
	combout => \min_u~19_combout\);

-- Location: LCCOMB_X1_Y55_N14
\min_u~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \min_u~20_combout\ = (\bin2ssd_1|Mux0~0_combout\ & (\ctrl_1|sel_reg\(1) & !\ctrl_1|sel_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2ssd_1|Mux0~0_combout\,
	datac => \ctrl_1|sel_reg\(1),
	datad => \ctrl_1|sel_reg\(0),
	combout => \min_u~20_combout\);

-- Location: LCCOMB_X1_Y55_N24
\min_d~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \min_d~11_combout\ = (!\bin2ssd_2|Mux6~0_combout\ & (\ctrl_1|sel_reg\(1) & !\ctrl_1|sel_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2ssd_2|Mux6~0_combout\,
	datac => \ctrl_1|sel_reg\(1),
	datad => \ctrl_1|sel_reg\(0),
	combout => \min_d~11_combout\);

-- Location: LCCOMB_X1_Y59_N10
\min_d~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \min_d~12_combout\ = (\bin2ssd_2|Mux5~0_combout\ & (\ctrl_1|sel_reg\(1) & !\ctrl_1|sel_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2ssd_2|Mux5~0_combout\,
	datac => \ctrl_1|sel_reg\(1),
	datad => \ctrl_1|sel_reg\(0),
	combout => \min_d~12_combout\);

-- Location: LCCOMB_X1_Y55_N8
\Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (\ctrl_1|sel_reg\(1) & !\ctrl_1|sel_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ctrl_1|sel_reg\(1),
	datad => \ctrl_1|sel_reg\(0),
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X4_Y70_N8
\min_d~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \min_d~8_combout\ = (\Equal1~2_combout\ & (((\bin2bcd_1|tens[1]~3_combout\ & \bin2bcd_1|tens[2]~4_combout\)) # (!\bin2bcd_1|tens[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~2_combout\,
	datab => \bin2bcd_1|tens[1]~3_combout\,
	datac => \bin2bcd_1|tens[0]~0_combout\,
	datad => \bin2bcd_1|tens[2]~4_combout\,
	combout => \min_d~8_combout\);

-- Location: LCCOMB_X1_Y59_N4
\min_d~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \min_d~13_combout\ = (\bin2ssd_2|Mux3~0_combout\ & (\ctrl_1|sel_reg\(1) & !\ctrl_1|sel_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2ssd_2|Mux3~0_combout\,
	datac => \ctrl_1|sel_reg\(1),
	datad => \ctrl_1|sel_reg\(0),
	combout => \min_d~13_combout\);

-- Location: LCCOMB_X3_Y69_N6
\min_d~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \min_d~9_combout\ = (\bin2bcd_1|tens[0]~0_combout\ & (\Equal1~2_combout\ & (!\bin2bcd_1|tens[2]~4_combout\ & !\bin2bcd_1|tens[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_1|tens[0]~0_combout\,
	datab => \Equal1~2_combout\,
	datac => \bin2bcd_1|tens[2]~4_combout\,
	datad => \bin2bcd_1|tens[1]~3_combout\,
	combout => \min_d~9_combout\);

-- Location: LCCOMB_X4_Y70_N2
\min_d~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \min_d~10_combout\ = (\Equal1~2_combout\ & (\bin2bcd_1|tens[2]~4_combout\ & (\bin2bcd_1|tens[1]~3_combout\ $ (\bin2bcd_1|tens[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~2_combout\,
	datab => \bin2bcd_1|tens[1]~3_combout\,
	datac => \bin2bcd_1|tens[0]~0_combout\,
	datad => \bin2bcd_1|tens[2]~4_combout\,
	combout => \min_d~10_combout\);

-- Location: LCCOMB_X1_Y59_N22
\min_d~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \min_d~14_combout\ = (\bin2ssd_2|Mux0~0_combout\ & (\ctrl_1|sel_reg\(1) & !\ctrl_1|sel_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2ssd_2|Mux0~0_combout\,
	datac => \ctrl_1|sel_reg\(1),
	datad => \ctrl_1|sel_reg\(0),
	combout => \min_d~14_combout\);

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


