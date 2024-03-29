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

-- DATE "06/08/2019 13:33:27"

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
SIGNAL \timer_1|Add1~0_combout\ : std_logic;
SIGNAL \timer_1|Add1~1\ : std_logic;
SIGNAL \timer_1|Add1~3_combout\ : std_logic;
SIGNAL \timer_1|Add1~4\ : std_logic;
SIGNAL \timer_1|Add1~5_combout\ : std_logic;
SIGNAL \timer_1|Add1~6\ : std_logic;
SIGNAL \timer_1|Add1~7_combout\ : std_logic;
SIGNAL \timer_1|Add1~8\ : std_logic;
SIGNAL \timer_1|Add1~9_combout\ : std_logic;
SIGNAL \timer_1|Add1~10\ : std_logic;
SIGNAL \timer_1|Add1~11_combout\ : std_logic;
SIGNAL \timer_1|Add1~12\ : std_logic;
SIGNAL \timer_1|Add1~13_combout\ : std_logic;
SIGNAL \timer_1|Add2~8_combout\ : std_logic;
SIGNAL \timer_1|Add3~0_combout\ : std_logic;
SIGNAL \timer_1|Add3~1\ : std_logic;
SIGNAL \timer_1|Add3~2_combout\ : std_logic;
SIGNAL \timer_1|Add3~3\ : std_logic;
SIGNAL \timer_1|Add3~4_combout\ : std_logic;
SIGNAL \timer_1|Add3~5\ : std_logic;
SIGNAL \timer_1|Add3~6_combout\ : std_logic;
SIGNAL \timer_1|Add3~7\ : std_logic;
SIGNAL \timer_1|Add3~8_combout\ : std_logic;
SIGNAL \timer_1|Add3~9\ : std_logic;
SIGNAL \timer_1|Add3~10_combout\ : std_logic;
SIGNAL \timer_1|Add0~0_combout\ : std_logic;
SIGNAL \timer_1|Add0~14_combout\ : std_logic;
SIGNAL \timer_1|Add0~18_combout\ : std_logic;
SIGNAL \timer_1|Add0~30_combout\ : std_logic;
SIGNAL \bin2bcd_1|bcd~4_combout\ : std_logic;
SIGNAL \bin2bcd_1|bcd~6_combout\ : std_logic;
SIGNAL \bin2bcd_2|bcd~2_combout\ : std_logic;
SIGNAL \bin2bcd_3|bcd~1_combout\ : std_logic;
SIGNAL \timer_1|Equal0~2_combout\ : std_logic;
SIGNAL \timer_1|r_next[15]~3_combout\ : std_logic;
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
SIGNAL \timer_1|Equal0~0_combout\ : std_logic;
SIGNAL \timer_1|Add0~7\ : std_logic;
SIGNAL \timer_1|Add0~8_combout\ : std_logic;
SIGNAL \timer_1|Add0~9\ : std_logic;
SIGNAL \timer_1|Add0~10_combout\ : std_logic;
SIGNAL \timer_1|r_next[5]~6_combout\ : std_logic;
SIGNAL \timer_1|Add0~11\ : std_logic;
SIGNAL \timer_1|Add0~12_combout\ : std_logic;
SIGNAL \timer_1|Add0~13\ : std_logic;
SIGNAL \timer_1|Add0~15\ : std_logic;
SIGNAL \timer_1|Add0~16_combout\ : std_logic;
SIGNAL \timer_1|r_next[8]~5_combout\ : std_logic;
SIGNAL \timer_1|Add0~17\ : std_logic;
SIGNAL \timer_1|Add0~19\ : std_logic;
SIGNAL \timer_1|Add0~20_combout\ : std_logic;
SIGNAL \timer_1|Add0~21\ : std_logic;
SIGNAL \timer_1|Add0~22_combout\ : std_logic;
SIGNAL \timer_1|Add0~23\ : std_logic;
SIGNAL \timer_1|Add0~24_combout\ : std_logic;
SIGNAL \timer_1|Add0~25\ : std_logic;
SIGNAL \timer_1|Add0~26_combout\ : std_logic;
SIGNAL \timer_1|r_next[13]~4_combout\ : std_logic;
SIGNAL \timer_1|Add0~27\ : std_logic;
SIGNAL \timer_1|Add0~28_combout\ : std_logic;
SIGNAL \timer_1|Add0~29\ : std_logic;
SIGNAL \timer_1|Add0~31\ : std_logic;
SIGNAL \timer_1|Add0~32_combout\ : std_logic;
SIGNAL \timer_1|r_next[16]~2_combout\ : std_logic;
SIGNAL \timer_1|Add0~33\ : std_logic;
SIGNAL \timer_1|Add0~34_combout\ : std_logic;
SIGNAL \timer_1|r_next[17]~1_combout\ : std_logic;
SIGNAL \timer_1|Add0~35\ : std_logic;
SIGNAL \timer_1|Add0~36_combout\ : std_logic;
SIGNAL \timer_1|r_next[18]~0_combout\ : std_logic;
SIGNAL \timer_1|Add0~37\ : std_logic;
SIGNAL \timer_1|Add0~38_combout\ : std_logic;
SIGNAL \timer_1|Equal0~1_combout\ : std_logic;
SIGNAL \timer_1|Equal0~3_combout\ : std_logic;
SIGNAL \timer_1|Equal0~4_combout\ : std_logic;
SIGNAL \timer_1|Equal0~5_combout\ : std_logic;
SIGNAL \timer_1|Equal0~6_combout\ : std_logic;
SIGNAL \timer_1|c_reg[3]~1_combout\ : std_logic;
SIGNAL \timer_1|c_reg[4]~3_combout\ : std_logic;
SIGNAL \timer_1|s_en~0_combout\ : std_logic;
SIGNAL \timer_1|c_reg[1]~6_combout\ : std_logic;
SIGNAL \timer_1|c_reg[2]~5_combout\ : std_logic;
SIGNAL \timer_1|c_reg[0]~0_combout\ : std_logic;
SIGNAL \timer_1|s_en~1_combout\ : std_logic;
SIGNAL \timer_1|Add1~2_combout\ : std_logic;
SIGNAL \timer_1|c_reg[5]~4_combout\ : std_logic;
SIGNAL \bin2bcd_1|bcd~1_combout\ : std_logic;
SIGNAL \bin2bcd_1|bcd~2_combout\ : std_logic;
SIGNAL \bin2bcd_1|bcd~0_combout\ : std_logic;
SIGNAL \bin2bcd_1|bcd~5_combout\ : std_logic;
SIGNAL \bin2bcd_1|bcd~3_combout\ : std_logic;
SIGNAL \bin2bcd_1|ones[1]~0_combout\ : std_logic;
SIGNAL \bin2bcd_1|ones[3]~2_combout\ : std_logic;
SIGNAL \bin2bcd_1|ones[2]~1_combout\ : std_logic;
SIGNAL \bin2ssd_1|Mux6~0_combout\ : std_logic;
SIGNAL \bin2ssd_1|Mux5~0_combout\ : std_logic;
SIGNAL \bin2ssd_1|Mux4~0_combout\ : std_logic;
SIGNAL \bin2ssd_1|Mux3~0_combout\ : std_logic;
SIGNAL \bin2ssd_1|Mux2~0_combout\ : std_logic;
SIGNAL \bin2ssd_1|Mux1~0_combout\ : std_logic;
SIGNAL \bin2ssd_1|Mux0~0_combout\ : std_logic;
SIGNAL \timer_1|c_reg[6]~2_combout\ : std_logic;
SIGNAL \bin2bcd_1|tens[3]~5_combout\ : std_logic;
SIGNAL \bin2bcd_1|tens[3]~6_combout\ : std_logic;
SIGNAL \bin2bcd_1|tens[0]~0_combout\ : std_logic;
SIGNAL \bin2bcd_1|tens[1]~1_combout\ : std_logic;
SIGNAL \bin2bcd_1|tens[2]~2_combout\ : std_logic;
SIGNAL \bin2bcd_1|tens[2]~4_combout\ : std_logic;
SIGNAL \bin2bcd_1|tens[1]~3_combout\ : std_logic;
SIGNAL \bin2ssd_2|Mux6~0_combout\ : std_logic;
SIGNAL \bin2ssd_2|Mux5~0_combout\ : std_logic;
SIGNAL \bin2ssd_2|Mux4~0_combout\ : std_logic;
SIGNAL \bin2ssd_2|Mux3~0_combout\ : std_logic;
SIGNAL \bin2ssd_2|Mux2~0_combout\ : std_logic;
SIGNAL \bin2ssd_2|Mux1~0_combout\ : std_logic;
SIGNAL \bin2ssd_2|Mux0~0_combout\ : std_logic;
SIGNAL \timer_1|Add2~0_combout\ : std_logic;
SIGNAL \timer_1|s_en~combout\ : std_logic;
SIGNAL \timer_1|s_reg[0]~0_combout\ : std_logic;
SIGNAL \timer_1|s_en~2_combout\ : std_logic;
SIGNAL \timer_1|Add2~1\ : std_logic;
SIGNAL \timer_1|Add2~2_combout\ : std_logic;
SIGNAL \timer_1|s_reg[1]~5_combout\ : std_logic;
SIGNAL \timer_1|Add2~3\ : std_logic;
SIGNAL \timer_1|Add2~5\ : std_logic;
SIGNAL \timer_1|Add2~7\ : std_logic;
SIGNAL \timer_1|Add2~9\ : std_logic;
SIGNAL \timer_1|Add2~10_combout\ : std_logic;
SIGNAL \timer_1|s_reg[5]~2_combout\ : std_logic;
SIGNAL \timer_1|Add2~4_combout\ : std_logic;
SIGNAL \timer_1|s_reg[2]~1_combout\ : std_logic;
SIGNAL \timer_1|m_en~0_combout\ : std_logic;
SIGNAL \timer_1|m_en~1_combout\ : std_logic;
SIGNAL \timer_1|m_en~combout\ : std_logic;
SIGNAL \timer_1|s_reg[4]~4_combout\ : std_logic;
SIGNAL \bin2bcd_2|bcd~1_combout\ : std_logic;
SIGNAL \bin2bcd_2|bcd~0_combout\ : std_logic;
SIGNAL \bin2bcd_2|ones[3]~2_combout\ : std_logic;
SIGNAL \bin2bcd_2|ones[1]~0_combout\ : std_logic;
SIGNAL \bin2bcd_2|ones[2]~1_combout\ : std_logic;
SIGNAL \bin2ssd_3|Mux6~0_combout\ : std_logic;
SIGNAL \bin2ssd_3|Mux5~0_combout\ : std_logic;
SIGNAL \bin2ssd_3|Mux4~0_combout\ : std_logic;
SIGNAL \bin2ssd_3|Mux3~0_combout\ : std_logic;
SIGNAL \bin2ssd_3|Mux2~0_combout\ : std_logic;
SIGNAL \bin2ssd_3|Mux1~0_combout\ : std_logic;
SIGNAL \bin2ssd_3|Mux0~0_combout\ : std_logic;
SIGNAL \timer_1|Add2~6_combout\ : std_logic;
SIGNAL \timer_1|s_reg[3]~3_combout\ : std_logic;
SIGNAL \bin2ssd_4|Mux6~0_combout\ : std_logic;
SIGNAL \bin2bcd_2|tens[0]~0_combout\ : std_logic;
SIGNAL \bin2bcd_2|bcd~3_combout\ : std_logic;
SIGNAL \bin2bcd_2|LessThan1~0_combout\ : std_logic;
SIGNAL \bin2ssd_4|Mux5~0_combout\ : std_logic;
SIGNAL \bin2ssd_4|Mux4~0_combout\ : std_logic;
SIGNAL \bin2ssd_4|Mux3~0_combout\ : std_logic;
SIGNAL \bin2ssd_4|Mux2~3_combout\ : std_logic;
SIGNAL \bin2ssd_4|Mux2~6_combout\ : std_logic;
SIGNAL \bin2ssd_4|Mux1~3_combout\ : std_logic;
SIGNAL \bin2ssd_4|Mux1~9_combout\ : std_logic;
SIGNAL \bin2ssd_4|Mux0~0_combout\ : std_logic;
SIGNAL \timer_1|m_reg[4]~5_combout\ : std_logic;
SIGNAL \timer_1|m_reg[5]~3_combout\ : std_logic;
SIGNAL \timer_1|m_next~0_combout\ : std_logic;
SIGNAL \timer_1|m_reg[0]~1_combout\ : std_logic;
SIGNAL \timer_1|m_reg[4]~0_combout\ : std_logic;
SIGNAL \timer_1|m_reg[3]~4_combout\ : std_logic;
SIGNAL \timer_1|m_reg[2]~2_combout\ : std_logic;
SIGNAL \bin2bcd_3|bcd~0_combout\ : std_logic;
SIGNAL \bin2bcd_3|bcd~2_combout\ : std_logic;
SIGNAL \timer_1|m_reg[1]~6_combout\ : std_logic;
SIGNAL \bin2bcd_3|ones[3]~2_combout\ : std_logic;
SIGNAL \bin2bcd_3|ones[2]~1_combout\ : std_logic;
SIGNAL \bin2bcd_3|ones[1]~0_combout\ : std_logic;
SIGNAL \bin2ssd_5|Mux6~0_combout\ : std_logic;
SIGNAL \bin2ssd_5|Mux5~0_combout\ : std_logic;
SIGNAL \bin2ssd_5|Mux4~0_combout\ : std_logic;
SIGNAL \bin2ssd_5|Mux3~0_combout\ : std_logic;
SIGNAL \bin2ssd_5|Mux2~0_combout\ : std_logic;
SIGNAL \bin2ssd_5|Mux1~0_combout\ : std_logic;
SIGNAL \bin2ssd_5|Mux0~0_combout\ : std_logic;
SIGNAL \bin2ssd_6|Mux6~0_combout\ : std_logic;
SIGNAL \bin2bcd_3|LessThan1~0_combout\ : std_logic;
SIGNAL \bin2bcd_3|bcd~3_combout\ : std_logic;
SIGNAL \bin2bcd_3|tens[0]~0_combout\ : std_logic;
SIGNAL \bin2ssd_6|Mux5~0_combout\ : std_logic;
SIGNAL \bin2ssd_6|Mux4~0_combout\ : std_logic;
SIGNAL \bin2ssd_6|Mux3~0_combout\ : std_logic;
SIGNAL \bin2ssd_6|Mux2~3_combout\ : std_logic;
SIGNAL \bin2ssd_6|Mux2~6_combout\ : std_logic;
SIGNAL \bin2ssd_6|Mux1~3_combout\ : std_logic;
SIGNAL \bin2ssd_6|Mux1~9_combout\ : std_logic;
SIGNAL \bin2ssd_6|Mux0~0_combout\ : std_logic;
SIGNAL \timer_1|s_reg\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \timer_1|r_reg\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \timer_1|m_reg\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \timer_1|c_reg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \bin2ssd_5|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \bin2ssd_3|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \bin2ssd_2|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \bin2ssd_1|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \bin2ssd_6|ALT_INV_Mux1~9_combout\ : std_logic;
SIGNAL \bin2ssd_4|ALT_INV_Mux1~9_combout\ : std_logic;

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
\bin2ssd_5|ALT_INV_Mux6~0_combout\ <= NOT \bin2ssd_5|Mux6~0_combout\;
\bin2ssd_3|ALT_INV_Mux6~0_combout\ <= NOT \bin2ssd_3|Mux6~0_combout\;
\bin2ssd_2|ALT_INV_Mux6~0_combout\ <= NOT \bin2ssd_2|Mux6~0_combout\;
\bin2ssd_1|ALT_INV_Mux6~0_combout\ <= NOT \bin2ssd_1|Mux6~0_combout\;
\bin2ssd_6|ALT_INV_Mux1~9_combout\ <= NOT \bin2ssd_6|Mux1~9_combout\;
\bin2ssd_4|ALT_INV_Mux1~9_combout\ <= NOT \bin2ssd_4|Mux1~9_combout\;

-- Location: LCCOMB_X76_Y2_N4
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

-- Location: LCCOMB_X76_Y2_N6
\timer_1|Add1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add1~3_combout\ = (\timer_1|c_reg\(1) & (!\timer_1|Add1~1\)) # (!\timer_1|c_reg\(1) & ((\timer_1|Add1~1\) # (GND)))
-- \timer_1|Add1~4\ = CARRY((!\timer_1|Add1~1\) # (!\timer_1|c_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|c_reg\(1),
	datad => VCC,
	cin => \timer_1|Add1~1\,
	combout => \timer_1|Add1~3_combout\,
	cout => \timer_1|Add1~4\);

-- Location: LCCOMB_X76_Y2_N8
\timer_1|Add1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add1~5_combout\ = (\timer_1|c_reg\(2) & (\timer_1|Add1~4\ $ (GND))) # (!\timer_1|c_reg\(2) & (!\timer_1|Add1~4\ & VCC))
-- \timer_1|Add1~6\ = CARRY((\timer_1|c_reg\(2) & !\timer_1|Add1~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|c_reg\(2),
	datad => VCC,
	cin => \timer_1|Add1~4\,
	combout => \timer_1|Add1~5_combout\,
	cout => \timer_1|Add1~6\);

-- Location: LCCOMB_X76_Y2_N10
\timer_1|Add1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add1~7_combout\ = (\timer_1|c_reg\(3) & (!\timer_1|Add1~6\)) # (!\timer_1|c_reg\(3) & ((\timer_1|Add1~6\) # (GND)))
-- \timer_1|Add1~8\ = CARRY((!\timer_1|Add1~6\) # (!\timer_1|c_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|c_reg\(3),
	datad => VCC,
	cin => \timer_1|Add1~6\,
	combout => \timer_1|Add1~7_combout\,
	cout => \timer_1|Add1~8\);

-- Location: LCCOMB_X76_Y2_N12
\timer_1|Add1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add1~9_combout\ = (\timer_1|c_reg\(4) & (\timer_1|Add1~8\ $ (GND))) # (!\timer_1|c_reg\(4) & (!\timer_1|Add1~8\ & VCC))
-- \timer_1|Add1~10\ = CARRY((\timer_1|c_reg\(4) & !\timer_1|Add1~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|c_reg\(4),
	datad => VCC,
	cin => \timer_1|Add1~8\,
	combout => \timer_1|Add1~9_combout\,
	cout => \timer_1|Add1~10\);

-- Location: LCCOMB_X76_Y2_N14
\timer_1|Add1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add1~11_combout\ = (\timer_1|c_reg\(5) & (!\timer_1|Add1~10\)) # (!\timer_1|c_reg\(5) & ((\timer_1|Add1~10\) # (GND)))
-- \timer_1|Add1~12\ = CARRY((!\timer_1|Add1~10\) # (!\timer_1|c_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|c_reg\(5),
	datad => VCC,
	cin => \timer_1|Add1~10\,
	combout => \timer_1|Add1~11_combout\,
	cout => \timer_1|Add1~12\);

-- Location: LCCOMB_X76_Y2_N16
\timer_1|Add1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add1~13_combout\ = \timer_1|Add1~12\ $ (!\timer_1|c_reg\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \timer_1|c_reg\(6),
	cin => \timer_1|Add1~12\,
	combout => \timer_1|Add1~13_combout\);

-- Location: LCCOMB_X77_Y2_N22
\timer_1|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add2~8_combout\ = (\timer_1|s_reg\(4) & (\timer_1|Add2~7\ $ (GND))) # (!\timer_1|s_reg\(4) & (!\timer_1|Add2~7\ & VCC))
-- \timer_1|Add2~9\ = CARRY((\timer_1|s_reg\(4) & !\timer_1|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|s_reg\(4),
	datad => VCC,
	cin => \timer_1|Add2~7\,
	combout => \timer_1|Add2~8_combout\,
	cout => \timer_1|Add2~9\);

-- Location: LCCOMB_X74_Y2_N10
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

-- Location: LCCOMB_X74_Y2_N12
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

-- Location: LCCOMB_X74_Y2_N14
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

-- Location: LCCOMB_X74_Y2_N16
\timer_1|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add3~6_combout\ = (\timer_1|m_reg\(3) & (!\timer_1|Add3~5\)) # (!\timer_1|m_reg\(3) & ((\timer_1|Add3~5\) # (GND)))
-- \timer_1|Add3~7\ = CARRY((!\timer_1|Add3~5\) # (!\timer_1|m_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|m_reg\(3),
	datad => VCC,
	cin => \timer_1|Add3~5\,
	combout => \timer_1|Add3~6_combout\,
	cout => \timer_1|Add3~7\);

-- Location: LCCOMB_X74_Y2_N18
\timer_1|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add3~8_combout\ = (\timer_1|m_reg\(4) & (\timer_1|Add3~7\ $ (GND))) # (!\timer_1|m_reg\(4) & (!\timer_1|Add3~7\ & VCC))
-- \timer_1|Add3~9\ = CARRY((\timer_1|m_reg\(4) & !\timer_1|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|m_reg\(4),
	datad => VCC,
	cin => \timer_1|Add3~7\,
	combout => \timer_1|Add3~8_combout\,
	cout => \timer_1|Add3~9\);

-- Location: LCCOMB_X74_Y2_N20
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

-- Location: LCCOMB_X75_Y4_N12
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

-- Location: LCCOMB_X75_Y4_N26
\timer_1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add0~14_combout\ = (\timer_1|r_reg\(7) & (!\timer_1|Add0~13\)) # (!\timer_1|r_reg\(7) & ((\timer_1|Add0~13\) # (GND)))
-- \timer_1|Add0~15\ = CARRY((!\timer_1|Add0~13\) # (!\timer_1|r_reg\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|r_reg\(7),
	datad => VCC,
	cin => \timer_1|Add0~13\,
	combout => \timer_1|Add0~14_combout\,
	cout => \timer_1|Add0~15\);

-- Location: LCCOMB_X75_Y4_N30
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

-- Location: LCCOMB_X75_Y3_N10
\timer_1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add0~30_combout\ = (\timer_1|r_reg\(15) & (!\timer_1|Add0~29\)) # (!\timer_1|r_reg\(15) & ((\timer_1|Add0~29\) # (GND)))
-- \timer_1|Add0~31\ = CARRY((!\timer_1|Add0~29\) # (!\timer_1|r_reg\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|r_reg\(15),
	datad => VCC,
	cin => \timer_1|Add0~29\,
	combout => \timer_1|Add0~30_combout\,
	cout => \timer_1|Add0~31\);

-- Location: LCCOMB_X107_Y6_N10
\bin2bcd_1|bcd~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_1|bcd~4_combout\ = (\bin2bcd_1|bcd~2_combout\ & (!\timer_1|c_reg\(2) & ((!\bin2bcd_1|bcd~0_combout\)))) # (!\bin2bcd_1|bcd~2_combout\ & (\bin2bcd_1|bcd~1_combout\ & ((\timer_1|c_reg\(2)) # (\bin2bcd_1|bcd~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|c_reg\(2),
	datab => \bin2bcd_1|bcd~1_combout\,
	datac => \bin2bcd_1|bcd~2_combout\,
	datad => \bin2bcd_1|bcd~0_combout\,
	combout => \bin2bcd_1|bcd~4_combout\);

-- Location: LCCOMB_X76_Y2_N0
\bin2bcd_1|bcd~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_1|bcd~6_combout\ = \bin2bcd_1|bcd~1_combout\ $ ((((!\bin2bcd_1|bcd~0_combout\ & !\timer_1|c_reg\(2))) # (!\bin2bcd_1|bcd~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_1|bcd~0_combout\,
	datab => \bin2bcd_1|bcd~1_combout\,
	datac => \timer_1|c_reg\(2),
	datad => \bin2bcd_1|bcd~2_combout\,
	combout => \bin2bcd_1|bcd~6_combout\);

-- Location: LCCOMB_X79_Y2_N20
\bin2bcd_2|bcd~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_2|bcd~2_combout\ = (\timer_1|s_reg\(3) & (!\timer_1|s_reg\(5) & ((\timer_1|s_reg\(2)) # (!\timer_1|s_reg\(4))))) # (!\timer_1|s_reg\(3) & (\timer_1|s_reg\(5) & ((\timer_1|s_reg\(4)) # (!\timer_1|s_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|s_reg\(3),
	datab => \timer_1|s_reg\(4),
	datac => \timer_1|s_reg\(5),
	datad => \timer_1|s_reg\(2),
	combout => \bin2bcd_2|bcd~2_combout\);

-- Location: LCCOMB_X70_Y2_N10
\bin2bcd_3|bcd~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_3|bcd~1_combout\ = (\timer_1|m_reg\(4) & (!\timer_1|m_reg\(2) & (\timer_1|m_reg\(5) $ (!\timer_1|m_reg\(3))))) # (!\timer_1|m_reg\(4) & (\timer_1|m_reg\(5) & (!\timer_1|m_reg\(3) & \timer_1|m_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|m_reg\(5),
	datab => \timer_1|m_reg\(3),
	datac => \timer_1|m_reg\(4),
	datad => \timer_1|m_reg\(2),
	combout => \bin2bcd_3|bcd~1_combout\);

-- Location: FF_X75_Y4_N13
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

-- Location: FF_X75_Y3_N27
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

-- Location: LCCOMB_X75_Y3_N30
\timer_1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Equal0~2_combout\ = (\timer_1|r_reg\(15) & (!\timer_1|r_reg\(14) & (!\timer_1|r_reg\(12) & \timer_1|r_reg\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|r_reg\(15),
	datab => \timer_1|r_reg\(14),
	datac => \timer_1|r_reg\(12),
	datad => \timer_1|r_reg\(13),
	combout => \timer_1|Equal0~2_combout\);

-- Location: FF_X75_Y4_N31
\timer_1|r_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|Add0~18_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|r_reg\(9));

-- Location: FF_X75_Y4_N27
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

-- Location: LCCOMB_X75_Y3_N26
\timer_1|r_next[15]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|r_next[15]~3_combout\ = (\timer_1|Add0~30_combout\ & ((!\timer_1|Equal0~5_combout\) # (!\timer_1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|Equal0~0_combout\,
	datac => \timer_1|Equal0~5_combout\,
	datad => \timer_1|Add0~30_combout\,
	combout => \timer_1|r_next[15]~3_combout\);

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
	i => \bin2ssd_1|ALT_INV_Mux6~0_combout\,
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
	i => \bin2ssd_1|Mux5~0_combout\,
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
	i => \bin2ssd_1|Mux4~0_combout\,
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
	i => \bin2ssd_1|Mux3~0_combout\,
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
	i => \bin2ssd_1|Mux2~0_combout\,
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
	i => \bin2ssd_1|Mux1~0_combout\,
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
	i => \bin2ssd_1|Mux0~0_combout\,
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
	i => \bin2ssd_2|ALT_INV_Mux6~0_combout\,
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
	i => \bin2ssd_2|Mux5~0_combout\,
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
	i => \bin2ssd_2|Mux4~0_combout\,
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
	i => \bin2ssd_2|Mux3~0_combout\,
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
	i => \bin2ssd_2|Mux2~0_combout\,
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
	i => \bin2ssd_2|Mux1~0_combout\,
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
	i => \bin2ssd_2|Mux0~0_combout\,
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
	i => \bin2ssd_3|ALT_INV_Mux6~0_combout\,
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
	i => \bin2ssd_3|Mux5~0_combout\,
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
	i => \bin2ssd_3|Mux4~0_combout\,
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
	i => \bin2ssd_3|Mux3~0_combout\,
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
	i => \bin2ssd_3|Mux2~0_combout\,
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
	i => \bin2ssd_3|Mux1~0_combout\,
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
	i => \bin2ssd_3|Mux0~0_combout\,
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
	i => \bin2ssd_4|Mux6~0_combout\,
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
	i => \bin2ssd_4|Mux5~0_combout\,
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
	i => \bin2ssd_4|Mux4~0_combout\,
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
	i => \bin2ssd_4|Mux3~0_combout\,
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
	i => \bin2ssd_4|Mux2~6_combout\,
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
	i => \bin2ssd_4|ALT_INV_Mux1~9_combout\,
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
	i => \bin2ssd_4|Mux0~0_combout\,
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
	i => \bin2ssd_5|ALT_INV_Mux6~0_combout\,
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
	i => \bin2ssd_5|Mux5~0_combout\,
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
	i => \bin2ssd_5|Mux4~0_combout\,
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
	i => \bin2ssd_5|Mux3~0_combout\,
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
	i => \bin2ssd_5|Mux2~0_combout\,
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
	i => \bin2ssd_5|Mux1~0_combout\,
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
	i => \bin2ssd_5|Mux0~0_combout\,
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
	i => \bin2ssd_6|Mux6~0_combout\,
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
	i => \bin2ssd_6|Mux5~0_combout\,
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
	i => \bin2ssd_6|Mux4~0_combout\,
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
	i => \bin2ssd_6|Mux3~0_combout\,
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
	i => \bin2ssd_6|Mux2~6_combout\,
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
	i => \bin2ssd_6|ALT_INV_Mux1~9_combout\,
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
	i => \bin2ssd_6|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \min_d[0]~output_o\);

-- Location: LCCOMB_X75_Y4_N14
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

-- Location: FF_X75_Y4_N15
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

-- Location: LCCOMB_X75_Y4_N16
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

-- Location: FF_X75_Y4_N17
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

-- Location: LCCOMB_X75_Y4_N18
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

-- Location: FF_X75_Y4_N19
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

-- Location: LCCOMB_X75_Y4_N8
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

-- Location: LCCOMB_X75_Y4_N20
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

-- Location: FF_X75_Y4_N21
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

-- Location: LCCOMB_X75_Y4_N22
\timer_1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add0~10_combout\ = (\timer_1|r_reg\(5) & (!\timer_1|Add0~9\)) # (!\timer_1|r_reg\(5) & ((\timer_1|Add0~9\) # (GND)))
-- \timer_1|Add0~11\ = CARRY((!\timer_1|Add0~9\) # (!\timer_1|r_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|r_reg\(5),
	datad => VCC,
	cin => \timer_1|Add0~9\,
	combout => \timer_1|Add0~10_combout\,
	cout => \timer_1|Add0~11\);

-- Location: LCCOMB_X75_Y4_N4
\timer_1|r_next[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|r_next[5]~6_combout\ = (\timer_1|Add0~10_combout\ & ((!\timer_1|Equal0~5_combout\) # (!\timer_1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|Equal0~0_combout\,
	datac => \timer_1|Add0~10_combout\,
	datad => \timer_1|Equal0~5_combout\,
	combout => \timer_1|r_next[5]~6_combout\);

-- Location: FF_X75_Y4_N5
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

-- Location: LCCOMB_X75_Y4_N24
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

-- Location: FF_X75_Y4_N25
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

-- Location: LCCOMB_X75_Y4_N28
\timer_1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add0~16_combout\ = (\timer_1|r_reg\(8) & (\timer_1|Add0~15\ $ (GND))) # (!\timer_1|r_reg\(8) & (!\timer_1|Add0~15\ & VCC))
-- \timer_1|Add0~17\ = CARRY((\timer_1|r_reg\(8) & !\timer_1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|r_reg\(8),
	datad => VCC,
	cin => \timer_1|Add0~15\,
	combout => \timer_1|Add0~16_combout\,
	cout => \timer_1|Add0~17\);

-- Location: LCCOMB_X75_Y4_N2
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

-- Location: FF_X75_Y4_N3
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

-- Location: LCCOMB_X75_Y3_N0
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

-- Location: FF_X75_Y3_N1
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

-- Location: LCCOMB_X75_Y3_N2
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

-- Location: FF_X75_Y3_N3
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

-- Location: LCCOMB_X75_Y3_N4
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

-- Location: FF_X75_Y3_N5
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

-- Location: LCCOMB_X75_Y3_N6
\timer_1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add0~26_combout\ = (\timer_1|r_reg\(13) & (!\timer_1|Add0~25\)) # (!\timer_1|r_reg\(13) & ((\timer_1|Add0~25\) # (GND)))
-- \timer_1|Add0~27\ = CARRY((!\timer_1|Add0~25\) # (!\timer_1|r_reg\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|r_reg\(13),
	datad => VCC,
	cin => \timer_1|Add0~25\,
	combout => \timer_1|Add0~26_combout\,
	cout => \timer_1|Add0~27\);

-- Location: LCCOMB_X75_Y3_N20
\timer_1|r_next[13]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|r_next[13]~4_combout\ = (\timer_1|Add0~26_combout\ & ((!\timer_1|Equal0~5_combout\) # (!\timer_1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|Equal0~0_combout\,
	datac => \timer_1|Equal0~5_combout\,
	datad => \timer_1|Add0~26_combout\,
	combout => \timer_1|r_next[13]~4_combout\);

-- Location: FF_X75_Y3_N21
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

-- Location: LCCOMB_X75_Y3_N8
\timer_1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add0~28_combout\ = (\timer_1|r_reg\(14) & (\timer_1|Add0~27\ $ (GND))) # (!\timer_1|r_reg\(14) & (!\timer_1|Add0~27\ & VCC))
-- \timer_1|Add0~29\ = CARRY((\timer_1|r_reg\(14) & !\timer_1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|r_reg\(14),
	datad => VCC,
	cin => \timer_1|Add0~27\,
	combout => \timer_1|Add0~28_combout\,
	cout => \timer_1|Add0~29\);

-- Location: FF_X75_Y3_N9
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

-- Location: LCCOMB_X75_Y3_N12
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

-- Location: LCCOMB_X75_Y3_N24
\timer_1|r_next[16]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|r_next[16]~2_combout\ = (\timer_1|Add0~32_combout\ & ((!\timer_1|Equal0~5_combout\) # (!\timer_1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|Equal0~0_combout\,
	datac => \timer_1|Equal0~5_combout\,
	datad => \timer_1|Add0~32_combout\,
	combout => \timer_1|r_next[16]~2_combout\);

-- Location: FF_X75_Y3_N25
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

-- Location: LCCOMB_X75_Y3_N14
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

-- Location: LCCOMB_X75_Y3_N22
\timer_1|r_next[17]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|r_next[17]~1_combout\ = (\timer_1|Add0~34_combout\ & ((!\timer_1|Equal0~5_combout\) # (!\timer_1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|Equal0~0_combout\,
	datac => \timer_1|Add0~34_combout\,
	datad => \timer_1|Equal0~5_combout\,
	combout => \timer_1|r_next[17]~1_combout\);

-- Location: FF_X75_Y3_N23
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

-- Location: LCCOMB_X75_Y3_N16
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

-- Location: LCCOMB_X75_Y3_N28
\timer_1|r_next[18]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|r_next[18]~0_combout\ = (\timer_1|Add0~36_combout\ & ((!\timer_1|Equal0~5_combout\) # (!\timer_1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|Equal0~0_combout\,
	datac => \timer_1|Equal0~5_combout\,
	datad => \timer_1|Add0~36_combout\,
	combout => \timer_1|r_next[18]~0_combout\);

-- Location: FF_X75_Y3_N29
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

-- Location: LCCOMB_X75_Y3_N18
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

-- Location: FF_X75_Y3_N19
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

-- Location: LCCOMB_X75_Y2_N2
\timer_1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Equal0~1_combout\ = (\timer_1|r_reg\(18) & (\timer_1|r_reg\(16) & (\timer_1|r_reg\(17) & !\timer_1|r_reg\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|r_reg\(18),
	datab => \timer_1|r_reg\(16),
	datac => \timer_1|r_reg\(17),
	datad => \timer_1|r_reg\(19),
	combout => \timer_1|Equal0~1_combout\);

-- Location: LCCOMB_X75_Y2_N4
\timer_1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Equal0~3_combout\ = (!\timer_1|r_reg\(9) & (!\timer_1|r_reg\(11) & (\timer_1|r_reg\(8) & !\timer_1|r_reg\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|r_reg\(9),
	datab => \timer_1|r_reg\(11),
	datac => \timer_1|r_reg\(8),
	datad => \timer_1|r_reg\(10),
	combout => \timer_1|Equal0~3_combout\);

-- Location: LCCOMB_X75_Y4_N6
\timer_1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Equal0~4_combout\ = (!\timer_1|r_reg\(7) & (!\timer_1|r_reg\(6) & (!\timer_1|r_reg\(5) & \timer_1|r_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|r_reg\(7),
	datab => \timer_1|r_reg\(6),
	datac => \timer_1|r_reg\(5),
	datad => \timer_1|r_reg\(4),
	combout => \timer_1|Equal0~4_combout\);

-- Location: LCCOMB_X75_Y2_N30
\timer_1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Equal0~5_combout\ = (\timer_1|Equal0~2_combout\ & (\timer_1|Equal0~1_combout\ & (\timer_1|Equal0~3_combout\ & \timer_1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|Equal0~2_combout\,
	datab => \timer_1|Equal0~1_combout\,
	datac => \timer_1|Equal0~3_combout\,
	datad => \timer_1|Equal0~4_combout\,
	combout => \timer_1|Equal0~5_combout\);

-- Location: LCCOMB_X75_Y2_N28
\timer_1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Equal0~6_combout\ = (\timer_1|Equal0~0_combout\ & \timer_1|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|Equal0~0_combout\,
	datac => \timer_1|Equal0~5_combout\,
	combout => \timer_1|Equal0~6_combout\);

-- Location: LCCOMB_X75_Y2_N16
\timer_1|c_reg[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|c_reg[3]~1_combout\ = (\timer_1|Add1~7_combout\ & ((\timer_1|Add1~2_combout\) # ((\timer_1|c_reg\(3) & !\timer_1|Equal0~6_combout\)))) # (!\timer_1|Add1~7_combout\ & (((\timer_1|c_reg\(3) & !\timer_1|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|Add1~7_combout\,
	datab => \timer_1|Add1~2_combout\,
	datac => \timer_1|c_reg\(3),
	datad => \timer_1|Equal0~6_combout\,
	combout => \timer_1|c_reg[3]~1_combout\);

-- Location: FF_X75_Y2_N17
\timer_1|c_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|c_reg[3]~1_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|c_reg\(3));

-- Location: LCCOMB_X75_Y2_N12
\timer_1|c_reg[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|c_reg[4]~3_combout\ = (\timer_1|Add1~9_combout\ & ((\timer_1|Add1~2_combout\) # ((\timer_1|c_reg\(4) & !\timer_1|Equal0~6_combout\)))) # (!\timer_1|Add1~9_combout\ & (((\timer_1|c_reg\(4) & !\timer_1|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|Add1~9_combout\,
	datab => \timer_1|Add1~2_combout\,
	datac => \timer_1|c_reg\(4),
	datad => \timer_1|Equal0~6_combout\,
	combout => \timer_1|c_reg[4]~3_combout\);

-- Location: FF_X75_Y2_N13
\timer_1|c_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|c_reg[4]~3_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|c_reg\(4));

-- Location: LCCOMB_X75_Y2_N8
\timer_1|s_en~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|s_en~0_combout\ = (\timer_1|c_reg\(6) & (!\timer_1|c_reg\(3) & (\timer_1|c_reg\(5) & !\timer_1|c_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|c_reg\(6),
	datab => \timer_1|c_reg\(3),
	datac => \timer_1|c_reg\(5),
	datad => \timer_1|c_reg\(4),
	combout => \timer_1|s_en~0_combout\);

-- Location: LCCOMB_X75_Y2_N24
\timer_1|c_reg[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|c_reg[1]~6_combout\ = (\timer_1|Add1~3_combout\ & ((\timer_1|Add1~2_combout\) # ((\timer_1|c_reg\(1) & !\timer_1|Equal0~6_combout\)))) # (!\timer_1|Add1~3_combout\ & (((\timer_1|c_reg\(1) & !\timer_1|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|Add1~3_combout\,
	datab => \timer_1|Add1~2_combout\,
	datac => \timer_1|c_reg\(1),
	datad => \timer_1|Equal0~6_combout\,
	combout => \timer_1|c_reg[1]~6_combout\);

-- Location: FF_X75_Y2_N25
\timer_1|c_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|c_reg[1]~6_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|c_reg\(1));

-- Location: LCCOMB_X76_Y2_N22
\timer_1|c_reg[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|c_reg[2]~5_combout\ = (\timer_1|Add1~5_combout\ & ((\timer_1|Add1~2_combout\) # ((\timer_1|c_reg\(2) & !\timer_1|Equal0~6_combout\)))) # (!\timer_1|Add1~5_combout\ & (((\timer_1|c_reg\(2) & !\timer_1|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|Add1~5_combout\,
	datab => \timer_1|Add1~2_combout\,
	datac => \timer_1|c_reg\(2),
	datad => \timer_1|Equal0~6_combout\,
	combout => \timer_1|c_reg[2]~5_combout\);

-- Location: FF_X76_Y2_N23
\timer_1|c_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|c_reg[2]~5_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|c_reg\(2));

-- Location: LCCOMB_X76_Y2_N24
\timer_1|c_reg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|c_reg[0]~0_combout\ = (\timer_1|Add1~0_combout\ & ((\timer_1|Add1~2_combout\) # ((\timer_1|c_reg\(0) & !\timer_1|Equal0~6_combout\)))) # (!\timer_1|Add1~0_combout\ & (((\timer_1|c_reg\(0) & !\timer_1|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|Add1~0_combout\,
	datab => \timer_1|Add1~2_combout\,
	datac => \timer_1|c_reg\(0),
	datad => \timer_1|Equal0~6_combout\,
	combout => \timer_1|c_reg[0]~0_combout\);

-- Location: FF_X76_Y2_N25
\timer_1|c_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|c_reg[0]~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|c_reg\(0));

-- Location: LCCOMB_X76_Y2_N18
\timer_1|s_en~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|s_en~1_combout\ = (\timer_1|c_reg\(1) & (!\timer_1|c_reg\(2) & \timer_1|c_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|c_reg\(1),
	datac => \timer_1|c_reg\(2),
	datad => \timer_1|c_reg\(0),
	combout => \timer_1|s_en~1_combout\);

-- Location: LCCOMB_X75_Y2_N18
\timer_1|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add1~2_combout\ = (\timer_1|Equal0~0_combout\ & (\timer_1|Equal0~5_combout\ & ((!\timer_1|s_en~1_combout\) # (!\timer_1|s_en~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|Equal0~0_combout\,
	datab => \timer_1|s_en~0_combout\,
	datac => \timer_1|Equal0~5_combout\,
	datad => \timer_1|s_en~1_combout\,
	combout => \timer_1|Add1~2_combout\);

-- Location: LCCOMB_X75_Y2_N22
\timer_1|c_reg[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|c_reg[5]~4_combout\ = (\timer_1|Add1~11_combout\ & ((\timer_1|Add1~2_combout\) # ((\timer_1|c_reg\(5) & !\timer_1|Equal0~6_combout\)))) # (!\timer_1|Add1~11_combout\ & (((\timer_1|c_reg\(5) & !\timer_1|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|Add1~11_combout\,
	datab => \timer_1|Add1~2_combout\,
	datac => \timer_1|c_reg\(5),
	datad => \timer_1|Equal0~6_combout\,
	combout => \timer_1|c_reg[5]~4_combout\);

-- Location: FF_X75_Y2_N23
\timer_1|c_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|c_reg[5]~4_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|c_reg\(5));

-- Location: LCCOMB_X76_Y2_N2
\bin2bcd_1|bcd~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_1|bcd~1_combout\ = (\timer_1|c_reg\(5) & (!\timer_1|c_reg\(3) & (\timer_1|c_reg\(6) $ (!\timer_1|c_reg\(4))))) # (!\timer_1|c_reg\(5) & (\timer_1|c_reg\(6) & (\timer_1|c_reg\(3) & !\timer_1|c_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|c_reg\(6),
	datab => \timer_1|c_reg\(5),
	datac => \timer_1|c_reg\(3),
	datad => \timer_1|c_reg\(4),
	combout => \bin2bcd_1|bcd~1_combout\);

-- Location: LCCOMB_X76_Y2_N28
\bin2bcd_1|bcd~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_1|bcd~2_combout\ = (\timer_1|c_reg\(6) & (!\timer_1|c_reg\(4) & ((\timer_1|c_reg\(5)) # (!\timer_1|c_reg\(3))))) # (!\timer_1|c_reg\(6) & (\timer_1|c_reg\(4) & ((\timer_1|c_reg\(3)) # (!\timer_1|c_reg\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|c_reg\(6),
	datab => \timer_1|c_reg\(5),
	datac => \timer_1|c_reg\(3),
	datad => \timer_1|c_reg\(4),
	combout => \bin2bcd_1|bcd~2_combout\);

-- Location: LCCOMB_X76_Y2_N26
\bin2bcd_1|bcd~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_1|bcd~0_combout\ = (\timer_1|c_reg\(5) & ((\timer_1|c_reg\(6) & (\timer_1|c_reg\(3) & !\timer_1|c_reg\(4))) # (!\timer_1|c_reg\(6) & (!\timer_1|c_reg\(3) & \timer_1|c_reg\(4))))) # (!\timer_1|c_reg\(5) & (\timer_1|c_reg\(3) $ 
-- (((\timer_1|c_reg\(6) & !\timer_1|c_reg\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|c_reg\(6),
	datab => \timer_1|c_reg\(5),
	datac => \timer_1|c_reg\(3),
	datad => \timer_1|c_reg\(4),
	combout => \bin2bcd_1|bcd~0_combout\);

-- Location: LCCOMB_X107_Y6_N28
\bin2bcd_1|bcd~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_1|bcd~5_combout\ = (\timer_1|c_reg\(2) & (((\bin2bcd_1|bcd~0_combout\)))) # (!\timer_1|c_reg\(2) & ((\bin2bcd_1|bcd~1_combout\ & ((!\bin2bcd_1|bcd~0_combout\))) # (!\bin2bcd_1|bcd~1_combout\ & (!\bin2bcd_1|bcd~2_combout\ & 
-- \bin2bcd_1|bcd~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|c_reg\(2),
	datab => \bin2bcd_1|bcd~1_combout\,
	datac => \bin2bcd_1|bcd~2_combout\,
	datad => \bin2bcd_1|bcd~0_combout\,
	combout => \bin2bcd_1|bcd~5_combout\);

-- Location: LCCOMB_X107_Y6_N0
\bin2bcd_1|bcd~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_1|bcd~3_combout\ = (\timer_1|c_reg\(2) & (!\bin2bcd_1|bcd~1_combout\ & (!\bin2bcd_1|bcd~2_combout\))) # (!\timer_1|c_reg\(2) & ((\bin2bcd_1|bcd~1_combout\) # ((\bin2bcd_1|bcd~2_combout\ & \bin2bcd_1|bcd~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|c_reg\(2),
	datab => \bin2bcd_1|bcd~1_combout\,
	datac => \bin2bcd_1|bcd~2_combout\,
	datad => \bin2bcd_1|bcd~0_combout\,
	combout => \bin2bcd_1|bcd~3_combout\);

-- Location: LCCOMB_X107_Y6_N6
\bin2bcd_1|ones[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_1|ones[1]~0_combout\ = (\bin2bcd_1|bcd~4_combout\ & (((!\timer_1|c_reg\(1))))) # (!\bin2bcd_1|bcd~4_combout\ & ((\bin2bcd_1|bcd~5_combout\ & (!\timer_1|c_reg\(1) & \bin2bcd_1|bcd~3_combout\)) # (!\bin2bcd_1|bcd~5_combout\ & 
-- (\timer_1|c_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_1|bcd~4_combout\,
	datab => \bin2bcd_1|bcd~5_combout\,
	datac => \timer_1|c_reg\(1),
	datad => \bin2bcd_1|bcd~3_combout\,
	combout => \bin2bcd_1|ones[1]~0_combout\);

-- Location: LCCOMB_X107_Y6_N18
\bin2bcd_1|ones[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_1|ones[3]~2_combout\ = (\bin2bcd_1|bcd~5_combout\ & (((!\timer_1|c_reg\(1) & !\bin2bcd_1|bcd~3_combout\)))) # (!\bin2bcd_1|bcd~5_combout\ & (\bin2bcd_1|bcd~4_combout\ & ((\timer_1|c_reg\(1)) # (\bin2bcd_1|bcd~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_1|bcd~4_combout\,
	datab => \bin2bcd_1|bcd~5_combout\,
	datac => \timer_1|c_reg\(1),
	datad => \bin2bcd_1|bcd~3_combout\,
	combout => \bin2bcd_1|ones[3]~2_combout\);

-- Location: LCCOMB_X107_Y6_N8
\bin2bcd_1|ones[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_1|ones[2]~1_combout\ = (\bin2bcd_1|bcd~4_combout\ & ((\timer_1|c_reg\(1) $ (!\bin2bcd_1|bcd~3_combout\)))) # (!\bin2bcd_1|bcd~4_combout\ & (\bin2bcd_1|bcd~3_combout\ & ((\timer_1|c_reg\(1)) # (!\bin2bcd_1|bcd~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_1|bcd~4_combout\,
	datab => \bin2bcd_1|bcd~5_combout\,
	datac => \timer_1|c_reg\(1),
	datad => \bin2bcd_1|bcd~3_combout\,
	combout => \bin2bcd_1|ones[2]~1_combout\);

-- Location: LCCOMB_X107_Y6_N20
\bin2ssd_1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2ssd_1|Mux6~0_combout\ = (\bin2bcd_1|ones[3]~2_combout\) # ((\bin2bcd_1|ones[1]~0_combout\ & ((!\bin2bcd_1|ones[2]~1_combout\) # (!\timer_1|c_reg\(0)))) # (!\bin2bcd_1|ones[1]~0_combout\ & ((\bin2bcd_1|ones[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_1|ones[1]~0_combout\,
	datab => \bin2bcd_1|ones[3]~2_combout\,
	datac => \timer_1|c_reg\(0),
	datad => \bin2bcd_1|ones[2]~1_combout\,
	combout => \bin2ssd_1|Mux6~0_combout\);

-- Location: LCCOMB_X107_Y6_N14
\bin2ssd_1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2ssd_1|Mux5~0_combout\ = (!\bin2bcd_1|ones[3]~2_combout\ & ((\bin2bcd_1|ones[1]~0_combout\ & ((\timer_1|c_reg\(0)) # (!\bin2bcd_1|ones[2]~1_combout\))) # (!\bin2bcd_1|ones[1]~0_combout\ & (\timer_1|c_reg\(0) & !\bin2bcd_1|ones[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_1|ones[1]~0_combout\,
	datab => \bin2bcd_1|ones[3]~2_combout\,
	datac => \timer_1|c_reg\(0),
	datad => \bin2bcd_1|ones[2]~1_combout\,
	combout => \bin2ssd_1|Mux5~0_combout\);

-- Location: LCCOMB_X107_Y6_N24
\bin2ssd_1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2ssd_1|Mux4~0_combout\ = (\bin2bcd_1|ones[1]~0_combout\ & (!\bin2bcd_1|ones[3]~2_combout\ & (\timer_1|c_reg\(0)))) # (!\bin2bcd_1|ones[1]~0_combout\ & ((\bin2bcd_1|ones[2]~1_combout\ & (!\bin2bcd_1|ones[3]~2_combout\)) # 
-- (!\bin2bcd_1|ones[2]~1_combout\ & ((\timer_1|c_reg\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_1|ones[1]~0_combout\,
	datab => \bin2bcd_1|ones[3]~2_combout\,
	datac => \timer_1|c_reg\(0),
	datad => \bin2bcd_1|ones[2]~1_combout\,
	combout => \bin2ssd_1|Mux4~0_combout\);

-- Location: LCCOMB_X107_Y6_N26
\bin2ssd_1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2ssd_1|Mux3~0_combout\ = (!\bin2bcd_1|ones[3]~2_combout\ & ((\bin2bcd_1|ones[1]~0_combout\ & (\timer_1|c_reg\(0) & \bin2bcd_1|ones[2]~1_combout\)) # (!\bin2bcd_1|ones[1]~0_combout\ & (\timer_1|c_reg\(0) $ (\bin2bcd_1|ones[2]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_1|ones[1]~0_combout\,
	datab => \bin2bcd_1|ones[3]~2_combout\,
	datac => \timer_1|c_reg\(0),
	datad => \bin2bcd_1|ones[2]~1_combout\,
	combout => \bin2ssd_1|Mux3~0_combout\);

-- Location: LCCOMB_X107_Y6_N12
\bin2ssd_1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2ssd_1|Mux2~0_combout\ = (\bin2bcd_1|ones[2]~1_combout\ & (((\bin2bcd_1|ones[3]~2_combout\)))) # (!\bin2bcd_1|ones[2]~1_combout\ & (\bin2bcd_1|ones[1]~0_combout\ & ((\bin2bcd_1|ones[3]~2_combout\) # (!\timer_1|c_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_1|ones[1]~0_combout\,
	datab => \bin2bcd_1|ones[3]~2_combout\,
	datac => \timer_1|c_reg\(0),
	datad => \bin2bcd_1|ones[2]~1_combout\,
	combout => \bin2ssd_1|Mux2~0_combout\);

-- Location: LCCOMB_X107_Y6_N22
\bin2ssd_1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2ssd_1|Mux1~0_combout\ = (\bin2bcd_1|ones[3]~2_combout\ & ((\bin2bcd_1|ones[1]~0_combout\) # ((\bin2bcd_1|ones[2]~1_combout\)))) # (!\bin2bcd_1|ones[3]~2_combout\ & (\bin2bcd_1|ones[2]~1_combout\ & (\bin2bcd_1|ones[1]~0_combout\ $ 
-- (\timer_1|c_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_1|ones[1]~0_combout\,
	datab => \bin2bcd_1|ones[3]~2_combout\,
	datac => \timer_1|c_reg\(0),
	datad => \bin2bcd_1|ones[2]~1_combout\,
	combout => \bin2ssd_1|Mux1~0_combout\);

-- Location: LCCOMB_X107_Y6_N16
\bin2ssd_1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2ssd_1|Mux0~0_combout\ = (!\bin2bcd_1|ones[1]~0_combout\ & (!\bin2bcd_1|ones[3]~2_combout\ & (\timer_1|c_reg\(0) $ (\bin2bcd_1|ones[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_1|ones[1]~0_combout\,
	datab => \bin2bcd_1|ones[3]~2_combout\,
	datac => \timer_1|c_reg\(0),
	datad => \bin2bcd_1|ones[2]~1_combout\,
	combout => \bin2ssd_1|Mux0~0_combout\);

-- Location: LCCOMB_X75_Y2_N10
\timer_1|c_reg[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|c_reg[6]~2_combout\ = (\timer_1|Add1~13_combout\ & ((\timer_1|Add1~2_combout\) # ((!\timer_1|Equal0~6_combout\ & \timer_1|c_reg\(6))))) # (!\timer_1|Add1~13_combout\ & (!\timer_1|Equal0~6_combout\ & (\timer_1|c_reg\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|Add1~13_combout\,
	datab => \timer_1|Equal0~6_combout\,
	datac => \timer_1|c_reg\(6),
	datad => \timer_1|Add1~2_combout\,
	combout => \timer_1|c_reg[6]~2_combout\);

-- Location: FF_X75_Y2_N11
\timer_1|c_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|c_reg[6]~2_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|c_reg\(6));

-- Location: LCCOMB_X103_Y2_N16
\bin2bcd_1|tens[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_1|tens[3]~5_combout\ = (\timer_1|c_reg\(6) & ((\timer_1|c_reg\(5) & ((!\timer_1|c_reg\(4)) # (!\timer_1|c_reg\(3)))) # (!\timer_1|c_reg\(5) & ((\timer_1|c_reg\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|c_reg\(5),
	datab => \timer_1|c_reg\(6),
	datac => \timer_1|c_reg\(3),
	datad => \timer_1|c_reg\(4),
	combout => \bin2bcd_1|tens[3]~5_combout\);

-- Location: LCCOMB_X103_Y2_N10
\bin2bcd_1|tens[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_1|tens[3]~6_combout\ = (\bin2bcd_1|bcd~6_combout\ & \bin2bcd_1|tens[3]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_1|bcd~6_combout\,
	datad => \bin2bcd_1|tens[3]~5_combout\,
	combout => \bin2bcd_1|tens[3]~6_combout\);

-- Location: LCCOMB_X107_Y6_N2
\bin2bcd_1|tens[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_1|tens[0]~0_combout\ = \bin2bcd_1|bcd~4_combout\ $ ((((!\timer_1|c_reg\(1) & !\bin2bcd_1|bcd~3_combout\)) # (!\bin2bcd_1|bcd~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_1|bcd~4_combout\,
	datab => \bin2bcd_1|bcd~5_combout\,
	datac => \timer_1|c_reg\(1),
	datad => \bin2bcd_1|bcd~3_combout\,
	combout => \bin2bcd_1|tens[0]~0_combout\);

-- Location: LCCOMB_X103_Y2_N8
\bin2bcd_1|tens[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_1|tens[1]~1_combout\ = (\timer_1|c_reg\(6) & ((\timer_1|c_reg\(5)) # (\timer_1|c_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|c_reg\(5),
	datab => \timer_1|c_reg\(6),
	datad => \timer_1|c_reg\(4),
	combout => \bin2bcd_1|tens[1]~1_combout\);

-- Location: LCCOMB_X103_Y2_N18
\bin2bcd_1|tens[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_1|tens[2]~2_combout\ = (\timer_1|c_reg\(5) & ((\timer_1|c_reg\(6) & (\timer_1|c_reg\(3) & \timer_1|c_reg\(4))) # (!\timer_1|c_reg\(6) & ((\timer_1|c_reg\(3)) # (\timer_1|c_reg\(4)))))) # (!\timer_1|c_reg\(5) & (\timer_1|c_reg\(6) & 
-- ((!\timer_1|c_reg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|c_reg\(5),
	datab => \timer_1|c_reg\(6),
	datac => \timer_1|c_reg\(3),
	datad => \timer_1|c_reg\(4),
	combout => \bin2bcd_1|tens[2]~2_combout\);

-- Location: LCCOMB_X103_Y2_N30
\bin2bcd_1|tens[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_1|tens[2]~4_combout\ = (\bin2bcd_1|tens[2]~2_combout\ & ((!\bin2bcd_1|tens[1]~1_combout\) # (!\bin2bcd_1|bcd~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_1|bcd~6_combout\,
	datac => \bin2bcd_1|tens[1]~1_combout\,
	datad => \bin2bcd_1|tens[2]~2_combout\,
	combout => \bin2bcd_1|tens[2]~4_combout\);

-- Location: LCCOMB_X103_Y2_N12
\bin2bcd_1|tens[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_1|tens[1]~3_combout\ = (\bin2bcd_1|bcd~6_combout\ & ((!\bin2bcd_1|tens[2]~2_combout\) # (!\bin2bcd_1|tens[1]~1_combout\))) # (!\bin2bcd_1|bcd~6_combout\ & (\bin2bcd_1|tens[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_1|bcd~6_combout\,
	datac => \bin2bcd_1|tens[1]~1_combout\,
	datad => \bin2bcd_1|tens[2]~2_combout\,
	combout => \bin2bcd_1|tens[1]~3_combout\);

-- Location: LCCOMB_X103_Y2_N20
\bin2ssd_2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2ssd_2|Mux6~0_combout\ = (\bin2bcd_1|tens[3]~6_combout\) # ((\bin2bcd_1|tens[2]~4_combout\ & ((\bin2bcd_1|tens[0]~0_combout\) # (\bin2bcd_1|tens[1]~3_combout\))) # (!\bin2bcd_1|tens[2]~4_combout\ & ((!\bin2bcd_1|tens[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_1|tens[3]~6_combout\,
	datab => \bin2bcd_1|tens[0]~0_combout\,
	datac => \bin2bcd_1|tens[2]~4_combout\,
	datad => \bin2bcd_1|tens[1]~3_combout\,
	combout => \bin2ssd_2|Mux6~0_combout\);

-- Location: LCCOMB_X103_Y2_N6
\bin2ssd_2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2ssd_2|Mux5~0_combout\ = (!\bin2bcd_1|tens[3]~6_combout\ & ((\bin2bcd_1|tens[0]~0_combout\ & (!\bin2bcd_1|tens[2]~4_combout\ & !\bin2bcd_1|tens[1]~3_combout\)) # (!\bin2bcd_1|tens[0]~0_combout\ & ((!\bin2bcd_1|tens[1]~3_combout\) # 
-- (!\bin2bcd_1|tens[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_1|tens[3]~6_combout\,
	datab => \bin2bcd_1|tens[0]~0_combout\,
	datac => \bin2bcd_1|tens[2]~4_combout\,
	datad => \bin2bcd_1|tens[1]~3_combout\,
	combout => \bin2ssd_2|Mux5~0_combout\);

-- Location: LCCOMB_X103_Y2_N24
\bin2ssd_2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2ssd_2|Mux4~0_combout\ = ((\bin2bcd_1|tens[1]~3_combout\ & \bin2bcd_1|tens[2]~4_combout\)) # (!\bin2bcd_1|tens[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_1|tens[1]~3_combout\,
	datab => \bin2bcd_1|tens[0]~0_combout\,
	datac => \bin2bcd_1|tens[2]~4_combout\,
	combout => \bin2ssd_2|Mux4~0_combout\);

-- Location: LCCOMB_X103_Y2_N26
\bin2ssd_2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2ssd_2|Mux3~0_combout\ = (!\bin2bcd_1|tens[3]~6_combout\ & ((\bin2bcd_1|tens[0]~0_combout\ & (\bin2bcd_1|tens[2]~4_combout\ & \bin2bcd_1|tens[1]~3_combout\)) # (!\bin2bcd_1|tens[0]~0_combout\ & (\bin2bcd_1|tens[2]~4_combout\ $ 
-- (\bin2bcd_1|tens[1]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_1|tens[3]~6_combout\,
	datab => \bin2bcd_1|tens[0]~0_combout\,
	datac => \bin2bcd_1|tens[2]~4_combout\,
	datad => \bin2bcd_1|tens[1]~3_combout\,
	combout => \bin2ssd_2|Mux3~0_combout\);

-- Location: LCCOMB_X103_Y2_N28
\bin2ssd_2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2ssd_2|Mux2~0_combout\ = (!\bin2bcd_1|tens[1]~3_combout\ & (\bin2bcd_1|tens[0]~0_combout\ & !\bin2bcd_1|tens[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_1|tens[1]~3_combout\,
	datab => \bin2bcd_1|tens[0]~0_combout\,
	datac => \bin2bcd_1|tens[2]~4_combout\,
	combout => \bin2ssd_2|Mux2~0_combout\);

-- Location: LCCOMB_X103_Y2_N22
\bin2ssd_2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2ssd_2|Mux1~0_combout\ = (\bin2bcd_1|tens[2]~4_combout\ & (\bin2bcd_1|tens[1]~3_combout\ $ (\bin2bcd_1|tens[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_1|tens[1]~3_combout\,
	datab => \bin2bcd_1|tens[0]~0_combout\,
	datac => \bin2bcd_1|tens[2]~4_combout\,
	combout => \bin2ssd_2|Mux1~0_combout\);

-- Location: LCCOMB_X103_Y2_N0
\bin2ssd_2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2ssd_2|Mux0~0_combout\ = (!\bin2bcd_1|tens[3]~6_combout\ & (\bin2bcd_1|tens[1]~3_combout\ & (\bin2bcd_1|tens[0]~0_combout\ $ (!\bin2bcd_1|tens[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_1|tens[3]~6_combout\,
	datab => \bin2bcd_1|tens[0]~0_combout\,
	datac => \bin2bcd_1|tens[2]~4_combout\,
	datad => \bin2bcd_1|tens[1]~3_combout\,
	combout => \bin2ssd_2|Mux0~0_combout\);

-- Location: LCCOMB_X77_Y2_N14
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

-- Location: LCCOMB_X75_Y2_N6
\timer_1|s_en\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|s_en~combout\ = (\timer_1|Equal0~0_combout\ & (\timer_1|s_en~0_combout\ & (\timer_1|Equal0~5_combout\ & \timer_1|s_en~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|Equal0~0_combout\,
	datab => \timer_1|s_en~0_combout\,
	datac => \timer_1|Equal0~5_combout\,
	datad => \timer_1|s_en~1_combout\,
	combout => \timer_1|s_en~combout\);

-- Location: LCCOMB_X77_Y2_N8
\timer_1|s_reg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|s_reg[0]~0_combout\ = (\timer_1|s_en~combout\ & (!\timer_1|m_en~combout\ & (\timer_1|Add2~0_combout\))) # (!\timer_1|s_en~combout\ & (((\timer_1|s_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|m_en~combout\,
	datab => \timer_1|Add2~0_combout\,
	datac => \timer_1|s_reg\(0),
	datad => \timer_1|s_en~combout\,
	combout => \timer_1|s_reg[0]~0_combout\);

-- Location: FF_X77_Y2_N9
\timer_1|s_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|s_reg[0]~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|s_reg\(0));

-- Location: LCCOMB_X75_Y2_N0
\timer_1|s_en~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|s_en~2_combout\ = (\timer_1|c_reg\(0) & (\timer_1|c_reg\(1) & (\timer_1|s_en~0_combout\ & !\timer_1|c_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|c_reg\(0),
	datab => \timer_1|c_reg\(1),
	datac => \timer_1|s_en~0_combout\,
	datad => \timer_1|c_reg\(2),
	combout => \timer_1|s_en~2_combout\);

-- Location: LCCOMB_X77_Y2_N16
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

-- Location: LCCOMB_X77_Y2_N2
\timer_1|s_reg[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|s_reg[1]~5_combout\ = (\timer_1|s_en~combout\ & (!\timer_1|m_en~combout\ & (\timer_1|Add2~2_combout\))) # (!\timer_1|s_en~combout\ & (((\timer_1|s_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|m_en~combout\,
	datab => \timer_1|Add2~2_combout\,
	datac => \timer_1|s_reg\(1),
	datad => \timer_1|s_en~combout\,
	combout => \timer_1|s_reg[1]~5_combout\);

-- Location: FF_X77_Y2_N3
\timer_1|s_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|s_reg[1]~5_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|s_reg\(1));

-- Location: LCCOMB_X77_Y2_N18
\timer_1|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add2~4_combout\ = (\timer_1|s_reg\(2) & (\timer_1|Add2~3\ $ (GND))) # (!\timer_1|s_reg\(2) & (!\timer_1|Add2~3\ & VCC))
-- \timer_1|Add2~5\ = CARRY((\timer_1|s_reg\(2) & !\timer_1|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|s_reg\(2),
	datad => VCC,
	cin => \timer_1|Add2~3\,
	combout => \timer_1|Add2~4_combout\,
	cout => \timer_1|Add2~5\);

-- Location: LCCOMB_X77_Y2_N20
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

-- Location: LCCOMB_X77_Y2_N24
\timer_1|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|Add2~10_combout\ = \timer_1|s_reg\(5) $ (\timer_1|Add2~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|s_reg\(5),
	cin => \timer_1|Add2~9\,
	combout => \timer_1|Add2~10_combout\);

-- Location: LCCOMB_X77_Y2_N4
\timer_1|s_reg[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|s_reg[5]~2_combout\ = (\timer_1|s_en~combout\ & (!\timer_1|m_en~combout\ & (\timer_1|Add2~10_combout\))) # (!\timer_1|s_en~combout\ & (((\timer_1|s_reg\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|m_en~combout\,
	datab => \timer_1|Add2~10_combout\,
	datac => \timer_1|s_reg\(5),
	datad => \timer_1|s_en~combout\,
	combout => \timer_1|s_reg[5]~2_combout\);

-- Location: FF_X77_Y2_N5
\timer_1|s_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|s_reg[5]~2_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|s_reg\(5));

-- Location: LCCOMB_X77_Y2_N10
\timer_1|s_reg[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|s_reg[2]~1_combout\ = (\timer_1|s_en~combout\ & (!\timer_1|m_en~combout\ & (\timer_1|Add2~4_combout\))) # (!\timer_1|s_en~combout\ & (((\timer_1|s_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|m_en~combout\,
	datab => \timer_1|Add2~4_combout\,
	datac => \timer_1|s_reg\(2),
	datad => \timer_1|s_en~combout\,
	combout => \timer_1|s_reg[2]~1_combout\);

-- Location: FF_X77_Y2_N11
\timer_1|s_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|s_reg[2]~1_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|s_reg\(2));

-- Location: LCCOMB_X75_Y2_N26
\timer_1|m_en~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|m_en~0_combout\ = (\timer_1|s_reg\(3) & (\timer_1|s_reg\(5) & (\timer_1|s_reg\(4) & !\timer_1|s_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|s_reg\(3),
	datab => \timer_1|s_reg\(5),
	datac => \timer_1|s_reg\(4),
	datad => \timer_1|s_reg\(2),
	combout => \timer_1|m_en~0_combout\);

-- Location: LCCOMB_X75_Y2_N20
\timer_1|m_en~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|m_en~1_combout\ = (\timer_1|s_reg\(1) & (\timer_1|m_en~0_combout\ & \timer_1|s_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|s_reg\(1),
	datac => \timer_1|m_en~0_combout\,
	datad => \timer_1|s_reg\(0),
	combout => \timer_1|m_en~1_combout\);

-- Location: LCCOMB_X75_Y2_N14
\timer_1|m_en\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|m_en~combout\ = (\timer_1|Equal0~0_combout\ & (\timer_1|s_en~2_combout\ & (\timer_1|Equal0~5_combout\ & \timer_1|m_en~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|Equal0~0_combout\,
	datab => \timer_1|s_en~2_combout\,
	datac => \timer_1|Equal0~5_combout\,
	datad => \timer_1|m_en~1_combout\,
	combout => \timer_1|m_en~combout\);

-- Location: LCCOMB_X77_Y2_N0
\timer_1|s_reg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|s_reg[4]~4_combout\ = (\timer_1|s_en~combout\ & (\timer_1|Add2~8_combout\ & (!\timer_1|m_en~combout\))) # (!\timer_1|s_en~combout\ & (((\timer_1|s_reg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|Add2~8_combout\,
	datab => \timer_1|m_en~combout\,
	datac => \timer_1|s_reg\(4),
	datad => \timer_1|s_en~combout\,
	combout => \timer_1|s_reg[4]~4_combout\);

-- Location: FF_X77_Y2_N1
\timer_1|s_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|s_reg[4]~4_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|s_reg\(4));

-- Location: LCCOMB_X79_Y2_N18
\bin2bcd_2|bcd~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_2|bcd~1_combout\ = (\timer_1|s_reg\(4) & (!\timer_1|s_reg\(2) & (\timer_1|s_reg\(3) $ (!\timer_1|s_reg\(5))))) # (!\timer_1|s_reg\(4) & (!\timer_1|s_reg\(3) & (\timer_1|s_reg\(5) & \timer_1|s_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|s_reg\(3),
	datab => \timer_1|s_reg\(4),
	datac => \timer_1|s_reg\(5),
	datad => \timer_1|s_reg\(2),
	combout => \bin2bcd_2|bcd~1_combout\);

-- Location: LCCOMB_X79_Y2_N0
\bin2bcd_2|bcd~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_2|bcd~0_combout\ = (\timer_1|s_reg\(4) & ((\timer_1|s_reg\(3) & (!\timer_1|s_reg\(5) & !\timer_1|s_reg\(2))) # (!\timer_1|s_reg\(3) & (\timer_1|s_reg\(5) & \timer_1|s_reg\(2))))) # (!\timer_1|s_reg\(4) & (\timer_1|s_reg\(2) $ 
-- (((!\timer_1|s_reg\(3) & \timer_1|s_reg\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|s_reg\(3),
	datab => \timer_1|s_reg\(4),
	datac => \timer_1|s_reg\(5),
	datad => \timer_1|s_reg\(2),
	combout => \bin2bcd_2|bcd~0_combout\);

-- Location: LCCOMB_X79_Y2_N26
\bin2bcd_2|ones[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_2|ones[3]~2_combout\ = (\bin2bcd_2|bcd~2_combout\ & (((!\timer_1|s_reg\(1) & !\bin2bcd_2|bcd~0_combout\)))) # (!\bin2bcd_2|bcd~2_combout\ & (\bin2bcd_2|bcd~1_combout\ & ((\timer_1|s_reg\(1)) # (\bin2bcd_2|bcd~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_2|bcd~2_combout\,
	datab => \bin2bcd_2|bcd~1_combout\,
	datac => \timer_1|s_reg\(1),
	datad => \bin2bcd_2|bcd~0_combout\,
	combout => \bin2bcd_2|ones[3]~2_combout\);

-- Location: LCCOMB_X79_Y2_N30
\bin2bcd_2|ones[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_2|ones[1]~0_combout\ = (\bin2bcd_2|bcd~2_combout\ & (!\timer_1|s_reg\(1) & ((\bin2bcd_2|bcd~1_combout\) # (\bin2bcd_2|bcd~0_combout\)))) # (!\bin2bcd_2|bcd~2_combout\ & (\bin2bcd_2|bcd~1_combout\ $ ((\timer_1|s_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_2|bcd~2_combout\,
	datab => \bin2bcd_2|bcd~1_combout\,
	datac => \timer_1|s_reg\(1),
	datad => \bin2bcd_2|bcd~0_combout\,
	combout => \bin2bcd_2|ones[1]~0_combout\);

-- Location: LCCOMB_X79_Y2_N16
\bin2bcd_2|ones[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_2|ones[2]~1_combout\ = (\bin2bcd_2|bcd~1_combout\ & ((\timer_1|s_reg\(1) $ (!\bin2bcd_2|bcd~0_combout\)))) # (!\bin2bcd_2|bcd~1_combout\ & (\bin2bcd_2|bcd~0_combout\ & ((\timer_1|s_reg\(1)) # (!\bin2bcd_2|bcd~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_2|bcd~2_combout\,
	datab => \bin2bcd_2|bcd~1_combout\,
	datac => \timer_1|s_reg\(1),
	datad => \bin2bcd_2|bcd~0_combout\,
	combout => \bin2bcd_2|ones[2]~1_combout\);

-- Location: LCCOMB_X79_Y1_N24
\bin2ssd_3|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2ssd_3|Mux6~0_combout\ = (\bin2bcd_2|ones[3]~2_combout\) # ((\bin2bcd_2|ones[1]~0_combout\ & ((!\bin2bcd_2|ones[2]~1_combout\) # (!\timer_1|s_reg\(0)))) # (!\bin2bcd_2|ones[1]~0_combout\ & ((\bin2bcd_2|ones[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|s_reg\(0),
	datab => \bin2bcd_2|ones[3]~2_combout\,
	datac => \bin2bcd_2|ones[1]~0_combout\,
	datad => \bin2bcd_2|ones[2]~1_combout\,
	combout => \bin2ssd_3|Mux6~0_combout\);

-- Location: LCCOMB_X79_Y1_N10
\bin2ssd_3|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2ssd_3|Mux5~0_combout\ = (!\bin2bcd_2|ones[3]~2_combout\ & ((\timer_1|s_reg\(0) & ((\bin2bcd_2|ones[1]~0_combout\) # (!\bin2bcd_2|ones[2]~1_combout\))) # (!\timer_1|s_reg\(0) & (\bin2bcd_2|ones[1]~0_combout\ & !\bin2bcd_2|ones[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|s_reg\(0),
	datab => \bin2bcd_2|ones[3]~2_combout\,
	datac => \bin2bcd_2|ones[1]~0_combout\,
	datad => \bin2bcd_2|ones[2]~1_combout\,
	combout => \bin2ssd_3|Mux5~0_combout\);

-- Location: LCCOMB_X79_Y1_N28
\bin2ssd_3|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2ssd_3|Mux4~0_combout\ = (\bin2bcd_2|ones[1]~0_combout\ & (\timer_1|s_reg\(0) & (!\bin2bcd_2|ones[3]~2_combout\))) # (!\bin2bcd_2|ones[1]~0_combout\ & ((\bin2bcd_2|ones[2]~1_combout\ & ((!\bin2bcd_2|ones[3]~2_combout\))) # 
-- (!\bin2bcd_2|ones[2]~1_combout\ & (\timer_1|s_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|s_reg\(0),
	datab => \bin2bcd_2|ones[3]~2_combout\,
	datac => \bin2bcd_2|ones[1]~0_combout\,
	datad => \bin2bcd_2|ones[2]~1_combout\,
	combout => \bin2ssd_3|Mux4~0_combout\);

-- Location: LCCOMB_X79_Y1_N6
\bin2ssd_3|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2ssd_3|Mux3~0_combout\ = (!\bin2bcd_2|ones[3]~2_combout\ & ((\timer_1|s_reg\(0) & (\bin2bcd_2|ones[1]~0_combout\ $ (!\bin2bcd_2|ones[2]~1_combout\))) # (!\timer_1|s_reg\(0) & (!\bin2bcd_2|ones[1]~0_combout\ & \bin2bcd_2|ones[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|s_reg\(0),
	datab => \bin2bcd_2|ones[3]~2_combout\,
	datac => \bin2bcd_2|ones[1]~0_combout\,
	datad => \bin2bcd_2|ones[2]~1_combout\,
	combout => \bin2ssd_3|Mux3~0_combout\);

-- Location: LCCOMB_X79_Y1_N0
\bin2ssd_3|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2ssd_3|Mux2~0_combout\ = (\bin2bcd_2|ones[2]~1_combout\ & (((\bin2bcd_2|ones[3]~2_combout\)))) # (!\bin2bcd_2|ones[2]~1_combout\ & (\bin2bcd_2|ones[1]~0_combout\ & ((\bin2bcd_2|ones[3]~2_combout\) # (!\timer_1|s_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|s_reg\(0),
	datab => \bin2bcd_2|ones[3]~2_combout\,
	datac => \bin2bcd_2|ones[1]~0_combout\,
	datad => \bin2bcd_2|ones[2]~1_combout\,
	combout => \bin2ssd_3|Mux2~0_combout\);

-- Location: LCCOMB_X79_Y1_N26
\bin2ssd_3|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2ssd_3|Mux1~0_combout\ = (\bin2bcd_2|ones[3]~2_combout\ & (((\bin2bcd_2|ones[1]~0_combout\) # (\bin2bcd_2|ones[2]~1_combout\)))) # (!\bin2bcd_2|ones[3]~2_combout\ & (\bin2bcd_2|ones[2]~1_combout\ & (\timer_1|s_reg\(0) $ 
-- (\bin2bcd_2|ones[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|s_reg\(0),
	datab => \bin2bcd_2|ones[3]~2_combout\,
	datac => \bin2bcd_2|ones[1]~0_combout\,
	datad => \bin2bcd_2|ones[2]~1_combout\,
	combout => \bin2ssd_3|Mux1~0_combout\);

-- Location: LCCOMB_X79_Y1_N12
\bin2ssd_3|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2ssd_3|Mux0~0_combout\ = (!\bin2bcd_2|ones[3]~2_combout\ & (!\bin2bcd_2|ones[1]~0_combout\ & (\timer_1|s_reg\(0) $ (\bin2bcd_2|ones[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|s_reg\(0),
	datab => \bin2bcd_2|ones[3]~2_combout\,
	datac => \bin2bcd_2|ones[1]~0_combout\,
	datad => \bin2bcd_2|ones[2]~1_combout\,
	combout => \bin2ssd_3|Mux0~0_combout\);

-- Location: LCCOMB_X77_Y2_N30
\timer_1|s_reg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|s_reg[3]~3_combout\ = (\timer_1|s_en~combout\ & (!\timer_1|m_en~combout\ & (\timer_1|Add2~6_combout\))) # (!\timer_1|s_en~combout\ & (((\timer_1|s_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|m_en~combout\,
	datab => \timer_1|Add2~6_combout\,
	datac => \timer_1|s_reg\(3),
	datad => \timer_1|s_en~combout\,
	combout => \timer_1|s_reg[3]~3_combout\);

-- Location: FF_X77_Y2_N31
\timer_1|s_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|s_reg[3]~3_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|s_reg\(3));

-- Location: LCCOMB_X79_Y2_N12
\bin2ssd_4|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2ssd_4|Mux6~0_combout\ = (!\timer_1|s_reg\(5) & (((!\timer_1|s_reg\(3) & !\timer_1|s_reg\(2))) # (!\timer_1|s_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|s_reg\(3),
	datab => \timer_1|s_reg\(4),
	datac => \timer_1|s_reg\(5),
	datad => \timer_1|s_reg\(2),
	combout => \bin2ssd_4|Mux6~0_combout\);

-- Location: LCCOMB_X79_Y2_N10
\bin2bcd_2|tens[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_2|tens[0]~0_combout\ = \bin2bcd_2|bcd~1_combout\ $ ((((!\timer_1|s_reg\(1) & !\bin2bcd_2|bcd~0_combout\)) # (!\bin2bcd_2|bcd~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_2|bcd~2_combout\,
	datab => \bin2bcd_2|bcd~1_combout\,
	datac => \timer_1|s_reg\(1),
	datad => \bin2bcd_2|bcd~0_combout\,
	combout => \bin2bcd_2|tens[0]~0_combout\);

-- Location: LCCOMB_X79_Y2_N8
\bin2bcd_2|bcd~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_2|bcd~3_combout\ = (\timer_1|s_reg\(3) & (((\timer_1|s_reg\(5) & !\timer_1|s_reg\(2))) # (!\timer_1|s_reg\(4)))) # (!\timer_1|s_reg\(3) & ((\timer_1|s_reg\(4) & ((\timer_1|s_reg\(5)) # (!\timer_1|s_reg\(2)))) # (!\timer_1|s_reg\(4) & 
-- (!\timer_1|s_reg\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001111100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|s_reg\(3),
	datab => \timer_1|s_reg\(4),
	datac => \timer_1|s_reg\(5),
	datad => \timer_1|s_reg\(2),
	combout => \bin2bcd_2|bcd~3_combout\);

-- Location: LCCOMB_X79_Y2_N14
\bin2bcd_2|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_2|LessThan1~0_combout\ = (\timer_1|s_reg\(5) & ((\timer_1|s_reg\(3)) # (\timer_1|s_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|s_reg\(3),
	datab => \timer_1|s_reg\(4),
	datac => \timer_1|s_reg\(5),
	combout => \bin2bcd_2|LessThan1~0_combout\);

-- Location: LCCOMB_X79_Y2_N28
\bin2ssd_4|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2ssd_4|Mux5~0_combout\ = (\bin2bcd_2|tens[0]~0_combout\ & (!\bin2bcd_2|bcd~3_combout\ & !\bin2bcd_2|LessThan1~0_combout\)) # (!\bin2bcd_2|tens[0]~0_combout\ & ((!\bin2bcd_2|LessThan1~0_combout\) # (!\bin2bcd_2|bcd~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011100010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_2|tens[0]~0_combout\,
	datab => \bin2bcd_2|bcd~3_combout\,
	datac => \bin2bcd_2|LessThan1~0_combout\,
	combout => \bin2ssd_4|Mux5~0_combout\);

-- Location: LCCOMB_X79_Y2_N6
\bin2ssd_4|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2ssd_4|Mux4~0_combout\ = ((\bin2bcd_2|bcd~3_combout\ & \bin2bcd_2|LessThan1~0_combout\)) # (!\bin2bcd_2|tens[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_2|tens[0]~0_combout\,
	datab => \bin2bcd_2|bcd~3_combout\,
	datac => \bin2bcd_2|LessThan1~0_combout\,
	combout => \bin2ssd_4|Mux4~0_combout\);

-- Location: LCCOMB_X79_Y2_N24
\bin2ssd_4|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2ssd_4|Mux3~0_combout\ = (\bin2bcd_2|tens[0]~0_combout\ & (\bin2bcd_2|bcd~3_combout\ & \bin2bcd_2|LessThan1~0_combout\)) # (!\bin2bcd_2|tens[0]~0_combout\ & (\bin2bcd_2|bcd~3_combout\ $ (\bin2bcd_2|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_2|tens[0]~0_combout\,
	datab => \bin2bcd_2|bcd~3_combout\,
	datac => \bin2bcd_2|LessThan1~0_combout\,
	combout => \bin2ssd_4|Mux3~0_combout\);

-- Location: LCCOMB_X77_Y2_N28
\bin2ssd_4|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2ssd_4|Mux2~3_combout\ = (\timer_1|s_reg\(3) & ((!\timer_1|s_reg\(2)) # (!\timer_1|s_reg\(1)))) # (!\timer_1|s_reg\(3) & ((\timer_1|s_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|s_reg\(1),
	datac => \timer_1|s_reg\(3),
	datad => \timer_1|s_reg\(2),
	combout => \bin2ssd_4|Mux2~3_combout\);

-- Location: LCCOMB_X77_Y2_N26
\bin2ssd_4|Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2ssd_4|Mux2~6_combout\ = (\bin2ssd_4|Mux2~3_combout\ & (!\timer_1|s_reg\(5) & \timer_1|s_reg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2ssd_4|Mux2~3_combout\,
	datac => \timer_1|s_reg\(5),
	datad => \timer_1|s_reg\(4),
	combout => \bin2ssd_4|Mux2~6_combout\);

-- Location: LCCOMB_X77_Y2_N12
\bin2ssd_4|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2ssd_4|Mux1~3_combout\ = (!\timer_1|s_reg\(1) & !\timer_1|s_reg\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_1|s_reg\(1),
	datad => \timer_1|s_reg\(2),
	combout => \bin2ssd_4|Mux1~3_combout\);

-- Location: LCCOMB_X77_Y2_N6
\bin2ssd_4|Mux1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2ssd_4|Mux1~9_combout\ = (((\bin2ssd_4|Mux1~3_combout\ & !\timer_1|s_reg\(3))) # (!\timer_1|s_reg\(4))) # (!\timer_1|s_reg\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2ssd_4|Mux1~3_combout\,
	datab => \timer_1|s_reg\(5),
	datac => \timer_1|s_reg\(3),
	datad => \timer_1|s_reg\(4),
	combout => \bin2ssd_4|Mux1~9_combout\);

-- Location: LCCOMB_X79_Y2_N2
\bin2ssd_4|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2ssd_4|Mux0~0_combout\ = (\bin2bcd_2|bcd~3_combout\ & (\bin2bcd_2|tens[0]~0_combout\ $ (!\bin2bcd_2|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_2|tens[0]~0_combout\,
	datab => \bin2bcd_2|bcd~3_combout\,
	datac => \bin2bcd_2|LessThan1~0_combout\,
	combout => \bin2ssd_4|Mux0~0_combout\);

-- Location: LCCOMB_X74_Y2_N8
\timer_1|m_reg[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|m_reg[4]~5_combout\ = (\timer_1|Add3~8_combout\ & (((!\timer_1|m_en~combout\ & \timer_1|m_reg\(4))) # (!\timer_1|m_reg[4]~0_combout\))) # (!\timer_1|Add3~8_combout\ & (!\timer_1|m_en~combout\ & (\timer_1|m_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|Add3~8_combout\,
	datab => \timer_1|m_en~combout\,
	datac => \timer_1|m_reg\(4),
	datad => \timer_1|m_reg[4]~0_combout\,
	combout => \timer_1|m_reg[4]~5_combout\);

-- Location: FF_X74_Y2_N9
\timer_1|m_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|m_reg[4]~5_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|m_reg\(4));

-- Location: LCCOMB_X74_Y2_N28
\timer_1|m_reg[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|m_reg[5]~3_combout\ = (\timer_1|Add3~10_combout\ & (((!\timer_1|m_en~combout\ & \timer_1|m_reg\(5))) # (!\timer_1|m_reg[4]~0_combout\))) # (!\timer_1|Add3~10_combout\ & (!\timer_1|m_en~combout\ & (\timer_1|m_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|Add3~10_combout\,
	datab => \timer_1|m_en~combout\,
	datac => \timer_1|m_reg\(5),
	datad => \timer_1|m_reg[4]~0_combout\,
	combout => \timer_1|m_reg[5]~3_combout\);

-- Location: FF_X74_Y2_N29
\timer_1|m_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|m_reg[5]~3_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|m_reg\(5));

-- Location: LCCOMB_X74_Y2_N24
\timer_1|m_next~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|m_next~0_combout\ = (!\timer_1|m_reg\(2) & (\timer_1|m_reg\(4) & (\timer_1|m_reg\(3) & \timer_1|m_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|m_reg\(2),
	datab => \timer_1|m_reg\(4),
	datac => \timer_1|m_reg\(3),
	datad => \timer_1|m_reg\(5),
	combout => \timer_1|m_next~0_combout\);

-- Location: LCCOMB_X74_Y2_N0
\timer_1|m_reg[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|m_reg[0]~1_combout\ = (\timer_1|Add3~0_combout\ & (((!\timer_1|m_en~combout\ & \timer_1|m_reg\(0))) # (!\timer_1|m_reg[4]~0_combout\))) # (!\timer_1|Add3~0_combout\ & (!\timer_1|m_en~combout\ & (\timer_1|m_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|Add3~0_combout\,
	datab => \timer_1|m_en~combout\,
	datac => \timer_1|m_reg\(0),
	datad => \timer_1|m_reg[4]~0_combout\,
	combout => \timer_1|m_reg[0]~1_combout\);

-- Location: FF_X74_Y2_N1
\timer_1|m_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|m_reg[0]~1_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|m_reg\(0));

-- Location: LCCOMB_X74_Y2_N2
\timer_1|m_reg[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|m_reg[4]~0_combout\ = ((\timer_1|m_reg\(1) & (\timer_1|m_next~0_combout\ & \timer_1|m_reg\(0)))) # (!\timer_1|m_en~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|m_reg\(1),
	datab => \timer_1|m_next~0_combout\,
	datac => \timer_1|m_en~combout\,
	datad => \timer_1|m_reg\(0),
	combout => \timer_1|m_reg[4]~0_combout\);

-- Location: LCCOMB_X74_Y2_N22
\timer_1|m_reg[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|m_reg[3]~4_combout\ = (\timer_1|Add3~6_combout\ & (((!\timer_1|m_en~combout\ & \timer_1|m_reg\(3))) # (!\timer_1|m_reg[4]~0_combout\))) # (!\timer_1|Add3~6_combout\ & (!\timer_1|m_en~combout\ & (\timer_1|m_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|Add3~6_combout\,
	datab => \timer_1|m_en~combout\,
	datac => \timer_1|m_reg\(3),
	datad => \timer_1|m_reg[4]~0_combout\,
	combout => \timer_1|m_reg[3]~4_combout\);

-- Location: FF_X74_Y2_N23
\timer_1|m_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|m_reg[3]~4_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|m_reg\(3));

-- Location: LCCOMB_X74_Y2_N26
\timer_1|m_reg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|m_reg[2]~2_combout\ = (\timer_1|Add3~4_combout\ & (((!\timer_1|m_en~combout\ & \timer_1|m_reg\(2))) # (!\timer_1|m_reg[4]~0_combout\))) # (!\timer_1|Add3~4_combout\ & (!\timer_1|m_en~combout\ & (\timer_1|m_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|Add3~4_combout\,
	datab => \timer_1|m_en~combout\,
	datac => \timer_1|m_reg\(2),
	datad => \timer_1|m_reg[4]~0_combout\,
	combout => \timer_1|m_reg[2]~2_combout\);

-- Location: FF_X74_Y2_N27
\timer_1|m_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|m_reg[2]~2_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|m_reg\(2));

-- Location: LCCOMB_X70_Y2_N16
\bin2bcd_3|bcd~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_3|bcd~0_combout\ = (\timer_1|m_reg\(4) & ((\timer_1|m_reg\(5) & (!\timer_1|m_reg\(3) & \timer_1|m_reg\(2))) # (!\timer_1|m_reg\(5) & (\timer_1|m_reg\(3) & !\timer_1|m_reg\(2))))) # (!\timer_1|m_reg\(4) & (\timer_1|m_reg\(2) $ 
-- (((\timer_1|m_reg\(5) & !\timer_1|m_reg\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|m_reg\(5),
	datab => \timer_1|m_reg\(3),
	datac => \timer_1|m_reg\(4),
	datad => \timer_1|m_reg\(2),
	combout => \bin2bcd_3|bcd~0_combout\);

-- Location: LCCOMB_X70_Y2_N20
\bin2bcd_3|bcd~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_3|bcd~2_combout\ = (\timer_1|m_reg\(5) & (!\timer_1|m_reg\(3) & ((\timer_1|m_reg\(4)) # (!\timer_1|m_reg\(2))))) # (!\timer_1|m_reg\(5) & (\timer_1|m_reg\(3) & ((\timer_1|m_reg\(2)) # (!\timer_1|m_reg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|m_reg\(5),
	datab => \timer_1|m_reg\(3),
	datac => \timer_1|m_reg\(4),
	datad => \timer_1|m_reg\(2),
	combout => \bin2bcd_3|bcd~2_combout\);

-- Location: LCCOMB_X74_Y2_N6
\timer_1|m_reg[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_1|m_reg[1]~6_combout\ = (\timer_1|Add3~2_combout\ & (((!\timer_1|m_en~combout\ & \timer_1|m_reg\(1))) # (!\timer_1|m_reg[4]~0_combout\))) # (!\timer_1|Add3~2_combout\ & (!\timer_1|m_en~combout\ & (\timer_1|m_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|Add3~2_combout\,
	datab => \timer_1|m_en~combout\,
	datac => \timer_1|m_reg\(1),
	datad => \timer_1|m_reg[4]~0_combout\,
	combout => \timer_1|m_reg[1]~6_combout\);

-- Location: FF_X74_Y2_N7
\timer_1|m_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer_1|m_reg[1]~6_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_1|m_reg\(1));

-- Location: LCCOMB_X67_Y2_N12
\bin2bcd_3|ones[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_3|ones[3]~2_combout\ = (\bin2bcd_3|bcd~2_combout\ & (((!\bin2bcd_3|bcd~0_combout\ & !\timer_1|m_reg\(1))))) # (!\bin2bcd_3|bcd~2_combout\ & (\bin2bcd_3|bcd~1_combout\ & ((\bin2bcd_3|bcd~0_combout\) # (\timer_1|m_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_3|bcd~1_combout\,
	datab => \bin2bcd_3|bcd~0_combout\,
	datac => \bin2bcd_3|bcd~2_combout\,
	datad => \timer_1|m_reg\(1),
	combout => \bin2bcd_3|ones[3]~2_combout\);

-- Location: LCCOMB_X67_Y2_N18
\bin2bcd_3|ones[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_3|ones[2]~1_combout\ = (\bin2bcd_3|bcd~1_combout\ & (\bin2bcd_3|bcd~0_combout\ $ (((!\timer_1|m_reg\(1)))))) # (!\bin2bcd_3|bcd~1_combout\ & (\bin2bcd_3|bcd~0_combout\ & ((\timer_1|m_reg\(1)) # (!\bin2bcd_3|bcd~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_3|bcd~1_combout\,
	datab => \bin2bcd_3|bcd~0_combout\,
	datac => \bin2bcd_3|bcd~2_combout\,
	datad => \timer_1|m_reg\(1),
	combout => \bin2bcd_3|ones[2]~1_combout\);

-- Location: LCCOMB_X67_Y2_N8
\bin2bcd_3|ones[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_3|ones[1]~0_combout\ = (\bin2bcd_3|bcd~1_combout\ & (((!\timer_1|m_reg\(1))))) # (!\bin2bcd_3|bcd~1_combout\ & ((\bin2bcd_3|bcd~2_combout\ & (\bin2bcd_3|bcd~0_combout\ & !\timer_1|m_reg\(1))) # (!\bin2bcd_3|bcd~2_combout\ & 
-- ((\timer_1|m_reg\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_3|bcd~1_combout\,
	datab => \bin2bcd_3|bcd~0_combout\,
	datac => \bin2bcd_3|bcd~2_combout\,
	datad => \timer_1|m_reg\(1),
	combout => \bin2bcd_3|ones[1]~0_combout\);

-- Location: LCCOMB_X67_Y2_N22
\bin2ssd_5|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2ssd_5|Mux6~0_combout\ = (\bin2bcd_3|ones[3]~2_combout\) # ((\bin2bcd_3|ones[2]~1_combout\ & ((!\timer_1|m_reg\(0)) # (!\bin2bcd_3|ones[1]~0_combout\))) # (!\bin2bcd_3|ones[2]~1_combout\ & (\bin2bcd_3|ones[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_3|ones[3]~2_combout\,
	datab => \bin2bcd_3|ones[2]~1_combout\,
	datac => \bin2bcd_3|ones[1]~0_combout\,
	datad => \timer_1|m_reg\(0),
	combout => \bin2ssd_5|Mux6~0_combout\);

-- Location: LCCOMB_X67_Y2_N0
\bin2ssd_5|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2ssd_5|Mux5~0_combout\ = (!\bin2bcd_3|ones[3]~2_combout\ & ((\bin2bcd_3|ones[2]~1_combout\ & (\bin2bcd_3|ones[1]~0_combout\ & \timer_1|m_reg\(0))) # (!\bin2bcd_3|ones[2]~1_combout\ & ((\bin2bcd_3|ones[1]~0_combout\) # (\timer_1|m_reg\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_3|ones[3]~2_combout\,
	datab => \bin2bcd_3|ones[2]~1_combout\,
	datac => \bin2bcd_3|ones[1]~0_combout\,
	datad => \timer_1|m_reg\(0),
	combout => \bin2ssd_5|Mux5~0_combout\);

-- Location: LCCOMB_X67_Y2_N26
\bin2ssd_5|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2ssd_5|Mux4~0_combout\ = (\bin2bcd_3|ones[1]~0_combout\ & (!\bin2bcd_3|ones[3]~2_combout\ & ((\timer_1|m_reg\(0))))) # (!\bin2bcd_3|ones[1]~0_combout\ & ((\bin2bcd_3|ones[2]~1_combout\ & (!\bin2bcd_3|ones[3]~2_combout\)) # 
-- (!\bin2bcd_3|ones[2]~1_combout\ & ((\timer_1|m_reg\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_3|ones[3]~2_combout\,
	datab => \bin2bcd_3|ones[2]~1_combout\,
	datac => \bin2bcd_3|ones[1]~0_combout\,
	datad => \timer_1|m_reg\(0),
	combout => \bin2ssd_5|Mux4~0_combout\);

-- Location: LCCOMB_X67_Y2_N20
\bin2ssd_5|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2ssd_5|Mux3~0_combout\ = (!\bin2bcd_3|ones[3]~2_combout\ & ((\bin2bcd_3|ones[2]~1_combout\ & (\bin2bcd_3|ones[1]~0_combout\ $ (!\timer_1|m_reg\(0)))) # (!\bin2bcd_3|ones[2]~1_combout\ & (!\bin2bcd_3|ones[1]~0_combout\ & \timer_1|m_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_3|ones[3]~2_combout\,
	datab => \bin2bcd_3|ones[2]~1_combout\,
	datac => \bin2bcd_3|ones[1]~0_combout\,
	datad => \timer_1|m_reg\(0),
	combout => \bin2ssd_5|Mux3~0_combout\);

-- Location: LCCOMB_X67_Y2_N30
\bin2ssd_5|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2ssd_5|Mux2~0_combout\ = (\bin2bcd_3|ones[2]~1_combout\ & (\bin2bcd_3|ones[3]~2_combout\)) # (!\bin2bcd_3|ones[2]~1_combout\ & (\bin2bcd_3|ones[1]~0_combout\ & ((\bin2bcd_3|ones[3]~2_combout\) # (!\timer_1|m_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_3|ones[3]~2_combout\,
	datab => \bin2bcd_3|ones[2]~1_combout\,
	datac => \bin2bcd_3|ones[1]~0_combout\,
	datad => \timer_1|m_reg\(0),
	combout => \bin2ssd_5|Mux2~0_combout\);

-- Location: LCCOMB_X67_Y2_N24
\bin2ssd_5|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2ssd_5|Mux1~0_combout\ = (\bin2bcd_3|ones[3]~2_combout\ & ((\bin2bcd_3|ones[2]~1_combout\) # ((\bin2bcd_3|ones[1]~0_combout\)))) # (!\bin2bcd_3|ones[3]~2_combout\ & (\bin2bcd_3|ones[2]~1_combout\ & (\bin2bcd_3|ones[1]~0_combout\ $ 
-- (\timer_1|m_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_3|ones[3]~2_combout\,
	datab => \bin2bcd_3|ones[2]~1_combout\,
	datac => \bin2bcd_3|ones[1]~0_combout\,
	datad => \timer_1|m_reg\(0),
	combout => \bin2ssd_5|Mux1~0_combout\);

-- Location: LCCOMB_X67_Y2_N2
\bin2ssd_5|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2ssd_5|Mux0~0_combout\ = (!\bin2bcd_3|ones[3]~2_combout\ & (!\bin2bcd_3|ones[1]~0_combout\ & (\bin2bcd_3|ones[2]~1_combout\ $ (\timer_1|m_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_3|ones[3]~2_combout\,
	datab => \bin2bcd_3|ones[2]~1_combout\,
	datac => \bin2bcd_3|ones[1]~0_combout\,
	datad => \timer_1|m_reg\(0),
	combout => \bin2ssd_5|Mux0~0_combout\);

-- Location: LCCOMB_X70_Y2_N22
\bin2ssd_6|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2ssd_6|Mux6~0_combout\ = (!\timer_1|m_reg\(5) & (((!\timer_1|m_reg\(3) & !\timer_1|m_reg\(2))) # (!\timer_1|m_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|m_reg\(5),
	datab => \timer_1|m_reg\(3),
	datac => \timer_1|m_reg\(4),
	datad => \timer_1|m_reg\(2),
	combout => \bin2ssd_6|Mux6~0_combout\);

-- Location: LCCOMB_X70_Y2_N8
\bin2bcd_3|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_3|LessThan1~0_combout\ = (\timer_1|m_reg\(5) & ((\timer_1|m_reg\(3)) # (\timer_1|m_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|m_reg\(5),
	datab => \timer_1|m_reg\(3),
	datac => \timer_1|m_reg\(4),
	combout => \bin2bcd_3|LessThan1~0_combout\);

-- Location: LCCOMB_X70_Y2_N26
\bin2bcd_3|bcd~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_3|bcd~3_combout\ = (\timer_1|m_reg\(5) & ((\timer_1|m_reg\(3) & ((!\timer_1|m_reg\(2)) # (!\timer_1|m_reg\(4)))) # (!\timer_1|m_reg\(3) & (\timer_1|m_reg\(4))))) # (!\timer_1|m_reg\(5) & (((!\timer_1|m_reg\(3) & !\timer_1|m_reg\(2))) # 
-- (!\timer_1|m_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110110111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|m_reg\(5),
	datab => \timer_1|m_reg\(3),
	datac => \timer_1|m_reg\(4),
	datad => \timer_1|m_reg\(2),
	combout => \bin2bcd_3|bcd~3_combout\);

-- Location: LCCOMB_X70_Y2_N12
\bin2bcd_3|tens[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_3|tens[0]~0_combout\ = \bin2bcd_3|bcd~1_combout\ $ ((((!\bin2bcd_3|bcd~0_combout\ & !\timer_1|m_reg\(1))) # (!\bin2bcd_3|bcd~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_3|bcd~1_combout\,
	datab => \bin2bcd_3|bcd~2_combout\,
	datac => \bin2bcd_3|bcd~0_combout\,
	datad => \timer_1|m_reg\(1),
	combout => \bin2bcd_3|tens[0]~0_combout\);

-- Location: LCCOMB_X70_Y2_N14
\bin2ssd_6|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2ssd_6|Mux5~0_combout\ = (\bin2bcd_3|LessThan1~0_combout\ & (!\bin2bcd_3|bcd~3_combout\ & !\bin2bcd_3|tens[0]~0_combout\)) # (!\bin2bcd_3|LessThan1~0_combout\ & ((!\bin2bcd_3|tens[0]~0_combout\) # (!\bin2bcd_3|bcd~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2bcd_3|LessThan1~0_combout\,
	datac => \bin2bcd_3|bcd~3_combout\,
	datad => \bin2bcd_3|tens[0]~0_combout\,
	combout => \bin2ssd_6|Mux5~0_combout\);

-- Location: LCCOMB_X70_Y2_N0
\bin2ssd_6|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2ssd_6|Mux4~0_combout\ = ((\bin2bcd_3|LessThan1~0_combout\ & \bin2bcd_3|bcd~3_combout\)) # (!\bin2bcd_3|tens[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2bcd_3|LessThan1~0_combout\,
	datac => \bin2bcd_3|bcd~3_combout\,
	datad => \bin2bcd_3|tens[0]~0_combout\,
	combout => \bin2ssd_6|Mux4~0_combout\);

-- Location: LCCOMB_X70_Y2_N2
\bin2ssd_6|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2ssd_6|Mux3~0_combout\ = (\bin2bcd_3|LessThan1~0_combout\ & (\bin2bcd_3|bcd~3_combout\ $ (!\bin2bcd_3|tens[0]~0_combout\))) # (!\bin2bcd_3|LessThan1~0_combout\ & (\bin2bcd_3|bcd~3_combout\ & !\bin2bcd_3|tens[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2bcd_3|LessThan1~0_combout\,
	datac => \bin2bcd_3|bcd~3_combout\,
	datad => \bin2bcd_3|tens[0]~0_combout\,
	combout => \bin2ssd_6|Mux3~0_combout\);

-- Location: LCCOMB_X70_Y2_N6
\bin2ssd_6|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2ssd_6|Mux2~3_combout\ = (\timer_1|m_reg\(3) & ((!\timer_1|m_reg\(2)) # (!\timer_1|m_reg\(1)))) # (!\timer_1|m_reg\(3) & ((\timer_1|m_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|m_reg\(1),
	datab => \timer_1|m_reg\(3),
	datad => \timer_1|m_reg\(2),
	combout => \bin2ssd_6|Mux2~3_combout\);

-- Location: LCCOMB_X70_Y2_N24
\bin2ssd_6|Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2ssd_6|Mux2~6_combout\ = (\bin2ssd_6|Mux2~3_combout\ & (\timer_1|m_reg\(4) & !\timer_1|m_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2ssd_6|Mux2~3_combout\,
	datab => \timer_1|m_reg\(4),
	datac => \timer_1|m_reg\(5),
	combout => \bin2ssd_6|Mux2~6_combout\);

-- Location: LCCOMB_X70_Y2_N18
\bin2ssd_6|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2ssd_6|Mux1~3_combout\ = (!\timer_1|m_reg\(1) & !\timer_1|m_reg\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|m_reg\(1),
	datad => \timer_1|m_reg\(2),
	combout => \bin2ssd_6|Mux1~3_combout\);

-- Location: LCCOMB_X70_Y2_N4
\bin2ssd_6|Mux1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2ssd_6|Mux1~9_combout\ = (((!\timer_1|m_reg\(3) & \bin2ssd_6|Mux1~3_combout\)) # (!\timer_1|m_reg\(4))) # (!\timer_1|m_reg\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_1|m_reg\(5),
	datab => \timer_1|m_reg\(3),
	datac => \timer_1|m_reg\(4),
	datad => \bin2ssd_6|Mux1~3_combout\,
	combout => \bin2ssd_6|Mux1~9_combout\);

-- Location: LCCOMB_X70_Y2_N28
\bin2ssd_6|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2ssd_6|Mux0~0_combout\ = (\bin2bcd_3|bcd~3_combout\ & (\bin2bcd_3|LessThan1~0_combout\ $ (!\bin2bcd_3|tens[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2bcd_3|LessThan1~0_combout\,
	datac => \bin2bcd_3|bcd~3_combout\,
	datad => \bin2bcd_3|tens[0]~0_combout\,
	combout => \bin2ssd_6|Mux0~0_combout\);

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


