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

-- DATE "04/27/2019 17:57:12"

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
	a : IN std_logic_vector(63 DOWNTO 0);
	lar : IN std_logic_vector(1 DOWNTO 0);
	amt : IN std_logic_vector(5 DOWNTO 0);
	y : OUT std_logic_vector(63 DOWNTO 0)
	);
END shift3mode;

-- Design Ports Information
-- y[0]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[4]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[5]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[6]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[7]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[8]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[9]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[10]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[11]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[12]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[13]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[14]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[15]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[16]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[17]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[18]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[19]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[20]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[21]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[22]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[23]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[24]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[25]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[26]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[27]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[28]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[29]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[30]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[31]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[32]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[33]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[34]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[35]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[36]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[37]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[38]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[39]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[40]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[41]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[42]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[43]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[44]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[45]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[46]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[47]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[48]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[49]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[50]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[51]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[52]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[53]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[54]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[55]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[56]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[57]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[58]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[59]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[60]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[61]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[62]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[63]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- amt[1]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- amt[2]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[49]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[17]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- amt[5]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[33]	=>  Location: PIN_AE2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- amt[4]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- amt[3]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[57]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[25]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[41]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[9]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[39]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[55]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[23]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[47]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[15]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[63]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[31]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[37]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[53]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[21]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[61]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[29]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[45]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[13]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[51]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[19]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[35]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_AD8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[59]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[27]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[43]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[11]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[48]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[16]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[32]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_AC8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[56]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[24]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[40]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[8]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[54]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[22]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[38]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[62]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[30]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[46]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[14]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[52]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[20]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[36]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[60]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[28]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[44]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[12]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[34]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[50]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[18]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[58]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[26]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[42]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[10]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- amt[0]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lar[1]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lar[0]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_a : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_lar : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_amt : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mux126~58_combout\ : std_logic;
SIGNAL \Mux126~61_combout\ : std_logic;
SIGNAL \Mux126~65_combout\ : std_logic;
SIGNAL \Mux126~77_combout\ : std_logic;
SIGNAL \Mux126~82_combout\ : std_logic;
SIGNAL \Mux126~89_combout\ : std_logic;
SIGNAL \Mux126~91_combout\ : std_logic;
SIGNAL \Mux126~95_combout\ : std_logic;
SIGNAL \Mux126~105_combout\ : std_logic;
SIGNAL \Mux126~112_combout\ : std_logic;
SIGNAL \Mux126~113_combout\ : std_logic;
SIGNAL \Mux126~120_combout\ : std_logic;
SIGNAL \Mux126~124_combout\ : std_logic;
SIGNAL \Mux126~131_combout\ : std_logic;
SIGNAL \Mux126~137_combout\ : std_logic;
SIGNAL \Mux126~138_combout\ : std_logic;
SIGNAL \Mux126~146_combout\ : std_logic;
SIGNAL \Mux126~147_combout\ : std_logic;
SIGNAL \Mux126~150_combout\ : std_logic;
SIGNAL \Mux126~151_combout\ : std_logic;
SIGNAL \Mux126~152_combout\ : std_logic;
SIGNAL \Mux126~153_combout\ : std_logic;
SIGNAL \Mux126~155_combout\ : std_logic;
SIGNAL \Mux126~157_combout\ : std_logic;
SIGNAL \Mux126~165_combout\ : std_logic;
SIGNAL \Mux126~166_combout\ : std_logic;
SIGNAL \Mux126~175_combout\ : std_logic;
SIGNAL \Mux126~178_combout\ : std_logic;
SIGNAL \Mux126~181_combout\ : std_logic;
SIGNAL \Mux126~188_combout\ : std_logic;
SIGNAL \Mux126~196_combout\ : std_logic;
SIGNAL \Mux126~197_combout\ : std_logic;
SIGNAL \Mux126~207_combout\ : std_logic;
SIGNAL \Mux126~211_combout\ : std_logic;
SIGNAL \Mux126~212_combout\ : std_logic;
SIGNAL \Mux126~213_combout\ : std_logic;
SIGNAL \Mux126~219_combout\ : std_logic;
SIGNAL \Mux126~224_combout\ : std_logic;
SIGNAL \Mux126~230_combout\ : std_logic;
SIGNAL \Mux126~233_combout\ : std_logic;
SIGNAL \Mux126~236_combout\ : std_logic;
SIGNAL \Mux126~237_combout\ : std_logic;
SIGNAL \Mux126~239_combout\ : std_logic;
SIGNAL \Mux126~247_combout\ : std_logic;
SIGNAL \Mux41~0_combout\ : std_logic;
SIGNAL \Mux126~252_combout\ : std_logic;
SIGNAL \Mux126~256_combout\ : std_logic;
SIGNAL \Mux126~262_combout\ : std_logic;
SIGNAL \Mux126~265_combout\ : std_logic;
SIGNAL \Mux126~266_combout\ : std_logic;
SIGNAL \Mux126~269_combout\ : std_logic;
SIGNAL \Mux126~272_combout\ : std_logic;
SIGNAL \Mux126~277_combout\ : std_logic;
SIGNAL \Mux126~286_combout\ : std_logic;
SIGNAL \Mux126~289_combout\ : std_logic;
SIGNAL \Mux126~311_combout\ : std_logic;
SIGNAL \Mux126~318_combout\ : std_logic;
SIGNAL \Mux126~321_combout\ : std_logic;
SIGNAL \Mux126~327_combout\ : std_logic;
SIGNAL \Mux126~332_combout\ : std_logic;
SIGNAL \Mux126~333_combout\ : std_logic;
SIGNAL \Mux126~338_combout\ : std_logic;
SIGNAL \Mux126~344_combout\ : std_logic;
SIGNAL \Mux126~352_combout\ : std_logic;
SIGNAL \Mux126~373_combout\ : std_logic;
SIGNAL \Mux126~379_combout\ : std_logic;
SIGNAL \Mux126~384_combout\ : std_logic;
SIGNAL \Mux126~385_combout\ : std_logic;
SIGNAL \Mux126~388_combout\ : std_logic;
SIGNAL \Mux126~393_combout\ : std_logic;
SIGNAL \Mux126~394_combout\ : std_logic;
SIGNAL \Mux126~395_combout\ : std_logic;
SIGNAL \Mux126~406_combout\ : std_logic;
SIGNAL \Mux126~419_combout\ : std_logic;
SIGNAL \Mux126~421_combout\ : std_logic;
SIGNAL \Mux63~0_combout\ : std_logic;
SIGNAL \Mux126~449_combout\ : std_logic;
SIGNAL \Mux126~451_combout\ : std_logic;
SIGNAL \Mux126~458_combout\ : std_logic;
SIGNAL \Mux126~463_combout\ : std_logic;
SIGNAL \Mux126~465_combout\ : std_logic;
SIGNAL \a[25]~input_o\ : std_logic;
SIGNAL \a[21]~input_o\ : std_logic;
SIGNAL \a[45]~input_o\ : std_logic;
SIGNAL \a[51]~input_o\ : std_logic;
SIGNAL \a[35]~input_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \a[43]~input_o\ : std_logic;
SIGNAL \a[32]~input_o\ : std_logic;
SIGNAL \a[38]~input_o\ : std_logic;
SIGNAL \a[62]~input_o\ : std_logic;
SIGNAL \a[36]~input_o\ : std_logic;
SIGNAL \a[28]~input_o\ : std_logic;
SIGNAL \a[44]~input_o\ : std_logic;
SIGNAL \a[12]~input_o\ : std_logic;
SIGNAL \a[18]~input_o\ : std_logic;
SIGNAL \y[0]~output_o\ : std_logic;
SIGNAL \y[1]~output_o\ : std_logic;
SIGNAL \y[2]~output_o\ : std_logic;
SIGNAL \y[3]~output_o\ : std_logic;
SIGNAL \y[4]~output_o\ : std_logic;
SIGNAL \y[5]~output_o\ : std_logic;
SIGNAL \y[6]~output_o\ : std_logic;
SIGNAL \y[7]~output_o\ : std_logic;
SIGNAL \y[8]~output_o\ : std_logic;
SIGNAL \y[9]~output_o\ : std_logic;
SIGNAL \y[10]~output_o\ : std_logic;
SIGNAL \y[11]~output_o\ : std_logic;
SIGNAL \y[12]~output_o\ : std_logic;
SIGNAL \y[13]~output_o\ : std_logic;
SIGNAL \y[14]~output_o\ : std_logic;
SIGNAL \y[15]~output_o\ : std_logic;
SIGNAL \y[16]~output_o\ : std_logic;
SIGNAL \y[17]~output_o\ : std_logic;
SIGNAL \y[18]~output_o\ : std_logic;
SIGNAL \y[19]~output_o\ : std_logic;
SIGNAL \y[20]~output_o\ : std_logic;
SIGNAL \y[21]~output_o\ : std_logic;
SIGNAL \y[22]~output_o\ : std_logic;
SIGNAL \y[23]~output_o\ : std_logic;
SIGNAL \y[24]~output_o\ : std_logic;
SIGNAL \y[25]~output_o\ : std_logic;
SIGNAL \y[26]~output_o\ : std_logic;
SIGNAL \y[27]~output_o\ : std_logic;
SIGNAL \y[28]~output_o\ : std_logic;
SIGNAL \y[29]~output_o\ : std_logic;
SIGNAL \y[30]~output_o\ : std_logic;
SIGNAL \y[31]~output_o\ : std_logic;
SIGNAL \y[32]~output_o\ : std_logic;
SIGNAL \y[33]~output_o\ : std_logic;
SIGNAL \y[34]~output_o\ : std_logic;
SIGNAL \y[35]~output_o\ : std_logic;
SIGNAL \y[36]~output_o\ : std_logic;
SIGNAL \y[37]~output_o\ : std_logic;
SIGNAL \y[38]~output_o\ : std_logic;
SIGNAL \y[39]~output_o\ : std_logic;
SIGNAL \y[40]~output_o\ : std_logic;
SIGNAL \y[41]~output_o\ : std_logic;
SIGNAL \y[42]~output_o\ : std_logic;
SIGNAL \y[43]~output_o\ : std_logic;
SIGNAL \y[44]~output_o\ : std_logic;
SIGNAL \y[45]~output_o\ : std_logic;
SIGNAL \y[46]~output_o\ : std_logic;
SIGNAL \y[47]~output_o\ : std_logic;
SIGNAL \y[48]~output_o\ : std_logic;
SIGNAL \y[49]~output_o\ : std_logic;
SIGNAL \y[50]~output_o\ : std_logic;
SIGNAL \y[51]~output_o\ : std_logic;
SIGNAL \y[52]~output_o\ : std_logic;
SIGNAL \y[53]~output_o\ : std_logic;
SIGNAL \y[54]~output_o\ : std_logic;
SIGNAL \y[55]~output_o\ : std_logic;
SIGNAL \y[56]~output_o\ : std_logic;
SIGNAL \y[57]~output_o\ : std_logic;
SIGNAL \y[58]~output_o\ : std_logic;
SIGNAL \y[59]~output_o\ : std_logic;
SIGNAL \y[60]~output_o\ : std_logic;
SIGNAL \y[61]~output_o\ : std_logic;
SIGNAL \y[62]~output_o\ : std_logic;
SIGNAL \y[63]~output_o\ : std_logic;
SIGNAL \a[37]~input_o\ : std_logic;
SIGNAL \amt[3]~input_o\ : std_logic;
SIGNAL \amt[4]~input_o\ : std_logic;
SIGNAL \Mux126~66_combout\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \Mux126~68_combout\ : std_logic;
SIGNAL \amt[5]~input_o\ : std_logic;
SIGNAL \a[53]~input_o\ : std_logic;
SIGNAL \Mux126~74_combout\ : std_logic;
SIGNAL \Mux126~75_combout\ : std_logic;
SIGNAL \Mux126~79_combout\ : std_logic;
SIGNAL \amt[2]~input_o\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \a[23]~input_o\ : std_logic;
SIGNAL \a[55]~input_o\ : std_logic;
SIGNAL \Mux126~67_combout\ : std_logic;
SIGNAL \Mux126~69_combout\ : std_logic;
SIGNAL \a[47]~input_o\ : std_logic;
SIGNAL \Mux126~70_combout\ : std_logic;
SIGNAL \a[31]~input_o\ : std_logic;
SIGNAL \a[63]~input_o\ : std_logic;
SIGNAL \Mux126~71_combout\ : std_logic;
SIGNAL \Mux126~72_combout\ : std_logic;
SIGNAL \Mux126~73_combout\ : std_logic;
SIGNAL \Mux126~80_combout\ : std_logic;
SIGNAL \Mux126~87_combout\ : std_logic;
SIGNAL \a[11]~input_o\ : std_logic;
SIGNAL \Mux126~84_combout\ : std_logic;
SIGNAL \a[27]~input_o\ : std_logic;
SIGNAL \a[59]~input_o\ : std_logic;
SIGNAL \Mux126~83_combout\ : std_logic;
SIGNAL \Mux126~85_combout\ : std_logic;
SIGNAL \a[19]~input_o\ : std_logic;
SIGNAL \Mux126~81_combout\ : std_logic;
SIGNAL \Mux126~86_combout\ : std_logic;
SIGNAL \Mux126~88_combout\ : std_logic;
SIGNAL \amt[0]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \Mux126~110_combout\ : std_logic;
SIGNAL \a[34]~input_o\ : std_logic;
SIGNAL \Mux126~114_combout\ : std_logic;
SIGNAL \a[52]~input_o\ : std_logic;
SIGNAL \a[20]~input_o\ : std_logic;
SIGNAL \Mux126~102_combout\ : std_logic;
SIGNAL \a[60]~input_o\ : std_logic;
SIGNAL \Mux126~104_combout\ : std_logic;
SIGNAL \Mux126~106_combout\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \Mux126~103_combout\ : std_logic;
SIGNAL \Mux126~107_combout\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \Mux126~97_combout\ : std_logic;
SIGNAL \a[46]~input_o\ : std_logic;
SIGNAL \a[14]~input_o\ : std_logic;
SIGNAL \Mux126~99_combout\ : std_logic;
SIGNAL \a[30]~input_o\ : std_logic;
SIGNAL \Mux126~98_combout\ : std_logic;
SIGNAL \Mux126~100_combout\ : std_logic;
SIGNAL \a[22]~input_o\ : std_logic;
SIGNAL \a[54]~input_o\ : std_logic;
SIGNAL \Mux126~96_combout\ : std_logic;
SIGNAL \Mux126~101_combout\ : std_logic;
SIGNAL \Mux126~108_combout\ : std_logic;
SIGNAL \Mux126~115_combout\ : std_logic;
SIGNAL \Mux126~116_combout\ : std_logic;
SIGNAL \amt[1]~input_o\ : std_logic;
SIGNAL \Mux126~117_combout\ : std_logic;
SIGNAL \Mux126~123_combout\ : std_logic;
SIGNAL \Mux125~0_combout\ : std_logic;
SIGNAL \a[49]~input_o\ : std_logic;
SIGNAL \a[17]~input_o\ : std_logic;
SIGNAL \Mux126~59_combout\ : std_logic;
SIGNAL \a[33]~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \lar[1]~input_o\ : std_logic;
SIGNAL \Mux126~125_combout\ : std_logic;
SIGNAL \lar[0]~input_o\ : std_logic;
SIGNAL \Mux62~0_combout\ : std_logic;
SIGNAL \Mux126~126_combout\ : std_logic;
SIGNAL \Mux126~127_combout\ : std_logic;
SIGNAL \a[57]~input_o\ : std_logic;
SIGNAL \Mux126~62_combout\ : std_logic;
SIGNAL \a[9]~input_o\ : std_logic;
SIGNAL \a[41]~input_o\ : std_logic;
SIGNAL \Mux126~63_combout\ : std_logic;
SIGNAL \Mux126~64_combout\ : std_logic;
SIGNAL \Mux126~128_combout\ : std_logic;
SIGNAL \Mux126~129_combout\ : std_logic;
SIGNAL \Mux126~130_combout\ : std_logic;
SIGNAL \Mux124~0_combout\ : std_logic;
SIGNAL \a[24]~input_o\ : std_logic;
SIGNAL \Mux126~92_combout\ : std_logic;
SIGNAL \a[8]~input_o\ : std_logic;
SIGNAL \a[40]~input_o\ : std_logic;
SIGNAL \Mux126~93_combout\ : std_logic;
SIGNAL \Mux126~94_combout\ : std_logic;
SIGNAL \Mux126~121_combout\ : std_logic;
SIGNAL \Mux126~122_combout\ : std_logic;
SIGNAL \Mux126~132_combout\ : std_logic;
SIGNAL \a[50]~input_o\ : std_logic;
SIGNAL \Mux126~109_combout\ : std_logic;
SIGNAL \Mux126~133_combout\ : std_logic;
SIGNAL \Mux126~134_combout\ : std_logic;
SIGNAL \Mux126~135_combout\ : std_logic;
SIGNAL \Mux126~136_combout\ : std_logic;
SIGNAL \Mux123~0_combout\ : std_logic;
SIGNAL \Mux126~139_combout\ : std_logic;
SIGNAL \Mux126~140_combout\ : std_logic;
SIGNAL \Mux126~141_combout\ : std_logic;
SIGNAL \Mux126~142_combout\ : std_logic;
SIGNAL \Mux122~0_combout\ : std_logic;
SIGNAL \Mux126~143_combout\ : std_logic;
SIGNAL \Mux126~148_combout\ : std_logic;
SIGNAL \Mux126~149_combout\ : std_logic;
SIGNAL \Mux126~437_combout\ : std_logic;
SIGNAL \Mux121~0_combout\ : std_logic;
SIGNAL \Mux126~156_combout\ : std_logic;
SIGNAL \Mux126~438_combout\ : std_logic;
SIGNAL \Mux120~0_combout\ : std_logic;
SIGNAL \Mux126~158_combout\ : std_logic;
SIGNAL \Mux126~159_combout\ : std_logic;
SIGNAL \Mux126~160_combout\ : std_logic;
SIGNAL \Mux126~161_combout\ : std_logic;
SIGNAL \Mux126~162_combout\ : std_logic;
SIGNAL \Mux119~0_combout\ : std_logic;
SIGNAL \Mux126~167_combout\ : std_logic;
SIGNAL \Mux126~168_combout\ : std_logic;
SIGNAL \Mux118~0_combout\ : std_logic;
SIGNAL \Mux126~169_combout\ : std_logic;
SIGNAL \Mux126~170_combout\ : std_logic;
SIGNAL \Mux126~171_combout\ : std_logic;
SIGNAL \Mux126~172_combout\ : std_logic;
SIGNAL \Mux126~173_combout\ : std_logic;
SIGNAL \Mux126~174_combout\ : std_logic;
SIGNAL \Mux117~0_combout\ : std_logic;
SIGNAL \a[29]~input_o\ : std_logic;
SIGNAL \a[61]~input_o\ : std_logic;
SIGNAL \Mux126~76_combout\ : std_logic;
SIGNAL \Mux126~78_combout\ : std_logic;
SIGNAL \Mux126~154_combout\ : std_logic;
SIGNAL \Mux126~179_combout\ : std_logic;
SIGNAL \Mux126~180_combout\ : std_logic;
SIGNAL \Mux116~0_combout\ : std_logic;
SIGNAL \a[42]~input_o\ : std_logic;
SIGNAL \a[10]~input_o\ : std_logic;
SIGNAL \Mux126~182_combout\ : std_logic;
SIGNAL \Mux126~183_combout\ : std_logic;
SIGNAL \a[26]~input_o\ : std_logic;
SIGNAL \a[58]~input_o\ : std_logic;
SIGNAL \Mux126~111_combout\ : std_logic;
SIGNAL \Mux126~184_combout\ : std_logic;
SIGNAL \Mux126~185_combout\ : std_logic;
SIGNAL \Mux126~186_combout\ : std_logic;
SIGNAL \Mux126~439_combout\ : std_logic;
SIGNAL \Mux115~0_combout\ : std_logic;
SIGNAL \Mux126~187_combout\ : std_logic;
SIGNAL \Mux126~191_combout\ : std_logic;
SIGNAL \Mux126~192_combout\ : std_logic;
SIGNAL \Mux126~440_combout\ : std_logic;
SIGNAL \Mux114~0_combout\ : std_logic;
SIGNAL \Mux126~198_combout\ : std_logic;
SIGNAL \Mux126~144_combout\ : std_logic;
SIGNAL \Mux126~145_combout\ : std_logic;
SIGNAL \Mux126~195_combout\ : std_logic;
SIGNAL \Mux126~199_combout\ : std_logic;
SIGNAL \Mux126~194_combout\ : std_logic;
SIGNAL \Mux126~200_combout\ : std_logic;
SIGNAL \Mux126~193_combout\ : std_logic;
SIGNAL \Mux126~201_combout\ : std_logic;
SIGNAL \Mux113~0_combout\ : std_logic;
SIGNAL \Mux126~202_combout\ : std_logic;
SIGNAL \Mux126~204_combout\ : std_logic;
SIGNAL \Mux126~208_combout\ : std_logic;
SIGNAL \Mux126~176_combout\ : std_logic;
SIGNAL \Mux126~177_combout\ : std_logic;
SIGNAL \Mux126~203_combout\ : std_logic;
SIGNAL \Mux126~209_combout\ : std_logic;
SIGNAL \Mux126~210_combout\ : std_logic;
SIGNAL \Mux112~0_combout\ : std_logic;
SIGNAL \Mux126~214_combout\ : std_logic;
SIGNAL \Mux126~215_combout\ : std_logic;
SIGNAL \Mux126~216_combout\ : std_logic;
SIGNAL \Mux126~217_combout\ : std_logic;
SIGNAL \Mux111~0_combout\ : std_logic;
SIGNAL \Mux126~222_combout\ : std_logic;
SIGNAL \Mux126~223_combout\ : std_logic;
SIGNAL \Mux110~0_combout\ : std_logic;
SIGNAL \Mux126~227_combout\ : std_logic;
SIGNAL \Mux126~228_combout\ : std_logic;
SIGNAL \Mux126~229_combout\ : std_logic;
SIGNAL \Mux109~0_combout\ : std_logic;
SIGNAL \Mux126~234_combout\ : std_logic;
SIGNAL \Mux126~235_combout\ : std_logic;
SIGNAL \Mux108~0_combout\ : std_logic;
SIGNAL \Mux126~238_combout\ : std_logic;
SIGNAL \Mux107~0_combout\ : std_logic;
SIGNAL \Mux107~1_combout\ : std_logic;
SIGNAL \Mux106~1_combout\ : std_logic;
SIGNAL \Mux106~0_combout\ : std_logic;
SIGNAL \Mux43~0_combout\ : std_logic;
SIGNAL \Mux126~443_combout\ : std_logic;
SIGNAL \Mux126~189_combout\ : std_logic;
SIGNAL \Mux126~190_combout\ : std_logic;
SIGNAL \Mux126~240_combout\ : std_logic;
SIGNAL \a[39]~input_o\ : std_logic;
SIGNAL \Mux126~163_combout\ : std_logic;
SIGNAL \Mux126~164_combout\ : std_logic;
SIGNAL \Mux126~218_combout\ : std_logic;
SIGNAL \a[15]~input_o\ : std_logic;
SIGNAL \Mux47~0_combout\ : std_logic;
SIGNAL \Mux126~441_combout\ : std_logic;
SIGNAL \Mux126~221_combout\ : std_logic;
SIGNAL \Mux126~241_combout\ : std_logic;
SIGNAL \Mux106~2_combout\ : std_logic;
SIGNAL \Mux106~3_combout\ : std_logic;
SIGNAL \Mux106~4_combout\ : std_logic;
SIGNAL \Mux105~1_combout\ : std_logic;
SIGNAL \a[48]~input_o\ : std_logic;
SIGNAL \Mux126~225_combout\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \Mux126~118_combout\ : std_logic;
SIGNAL \Mux126~119_combout\ : std_logic;
SIGNAL \Mux126~226_combout\ : std_logic;
SIGNAL \Mux126~242_combout\ : std_logic;
SIGNAL \Mux126~243_combout\ : std_logic;
SIGNAL \Mux126~244_combout\ : std_logic;
SIGNAL \Mux126~246_combout\ : std_logic;
SIGNAL \Mux105~0_combout\ : std_logic;
SIGNAL \Mux105~2_combout\ : std_logic;
SIGNAL \Mux104~0_combout\ : std_logic;
SIGNAL \Mux104~1_combout\ : std_logic;
SIGNAL \Mux103~0_combout\ : std_logic;
SIGNAL \Mux126~248_combout\ : std_logic;
SIGNAL \Mux126~249_combout\ : std_logic;
SIGNAL \Mux126~445_combout\ : std_logic;
SIGNAL \Mux126~250_combout\ : std_logic;
SIGNAL \Mux103~1_combout\ : std_logic;
SIGNAL \Mux103~2_combout\ : std_logic;
SIGNAL \Mux126~253_combout\ : std_logic;
SIGNAL \Mux126~446_combout\ : std_logic;
SIGNAL \Mux44~0_combout\ : std_logic;
SIGNAL \Mux126~442_combout\ : std_logic;
SIGNAL \Mux126~251_combout\ : std_logic;
SIGNAL \Mux126~254_combout\ : std_logic;
SIGNAL \Mux126~257_combout\ : std_logic;
SIGNAL \Mux39~0_combout\ : std_logic;
SIGNAL \Mux126~447_combout\ : std_logic;
SIGNAL \Mux126~255_combout\ : std_logic;
SIGNAL \Mux126~258_combout\ : std_logic;
SIGNAL \Mux102~0_combout\ : std_logic;
SIGNAL \Mux102~1_combout\ : std_logic;
SIGNAL \Mux126~245_combout\ : std_logic;
SIGNAL \Mux42~0_combout\ : std_logic;
SIGNAL \Mux126~444_combout\ : std_logic;
SIGNAL \Mux126~259_combout\ : std_logic;
SIGNAL \Mux38~0_combout\ : std_logic;
SIGNAL \Mux126~448_combout\ : std_logic;
SIGNAL \Mux126~260_combout\ : std_logic;
SIGNAL \Mux126~263_combout\ : std_logic;
SIGNAL \Mux126~264_combout\ : std_logic;
SIGNAL \Mux101~1_combout\ : std_logic;
SIGNAL \Mux101~0_combout\ : std_logic;
SIGNAL \Mux101~2_combout\ : std_logic;
SIGNAL \Mux100~0_combout\ : std_logic;
SIGNAL \Mux126~231_combout\ : std_logic;
SIGNAL \Mux126~232_combout\ : std_logic;
SIGNAL \Mux126~267_combout\ : std_logic;
SIGNAL \Mux126~268_combout\ : std_logic;
SIGNAL \Mux100~1_combout\ : std_logic;
SIGNAL \Mux126~270_combout\ : std_logic;
SIGNAL \Mux36~0_combout\ : std_logic;
SIGNAL \Mux126~450_combout\ : std_logic;
SIGNAL \Mux126~271_combout\ : std_logic;
SIGNAL \Mux99~0_combout\ : std_logic;
SIGNAL \Mux99~1_combout\ : std_logic;
SIGNAL \Mux98~1_combout\ : std_logic;
SIGNAL \Mux98~0_combout\ : std_logic;
SIGNAL \Mux126~273_combout\ : std_logic;
SIGNAL \Mux126~220_combout\ : std_logic;
SIGNAL \Mux126~261_combout\ : std_logic;
SIGNAL \Mux126~274_combout\ : std_logic;
SIGNAL \Mux126~275_combout\ : std_logic;
SIGNAL \Mux98~2_combout\ : std_logic;
SIGNAL \Mux97~0_combout\ : std_logic;
SIGNAL \Mux126~276_combout\ : std_logic;
SIGNAL \Mux126~452_combout\ : std_logic;
SIGNAL \Mux126~278_combout\ : std_logic;
SIGNAL \Mux97~1_combout\ : std_logic;
SIGNAL \Mux96~0_combout\ : std_logic;
SIGNAL \Mux126~280_combout\ : std_logic;
SIGNAL \Mux126~281_combout\ : std_logic;
SIGNAL \a[13]~input_o\ : std_logic;
SIGNAL \Mux126~205_combout\ : std_logic;
SIGNAL \Mux126~206_combout\ : std_logic;
SIGNAL \Mux126~282_combout\ : std_logic;
SIGNAL \Mux126~283_combout\ : std_logic;
SIGNAL \Mux126~279_combout\ : std_logic;
SIGNAL \Mux126~284_combout\ : std_logic;
SIGNAL \Mux96~1_combout\ : std_logic;
SIGNAL \Mux95~0_combout\ : std_logic;
SIGNAL \Mux126~285_combout\ : std_logic;
SIGNAL \Mux126~290_combout\ : std_logic;
SIGNAL \Mux95~1_combout\ : std_logic;
SIGNAL \Mux126~295_combout\ : std_logic;
SIGNAL \Mux126~291_combout\ : std_logic;
SIGNAL \Mux126~292_combout\ : std_logic;
SIGNAL \Mux126~293_combout\ : std_logic;
SIGNAL \Mux126~294_combout\ : std_logic;
SIGNAL \Mux126~296_combout\ : std_logic;
SIGNAL \Mux94~0_combout\ : std_logic;
SIGNAL \Mux94~1_combout\ : std_logic;
SIGNAL \Mux93~0_combout\ : std_logic;
SIGNAL \Mux126~299_combout\ : std_logic;
SIGNAL \Mux126~300_combout\ : std_logic;
SIGNAL \Mux91~0_combout\ : std_logic;
SIGNAL \Mux93~1_combout\ : std_logic;
SIGNAL \Mux126~60_combout\ : std_logic;
SIGNAL \Mux126~454_combout\ : std_logic;
SIGNAL \Mux126~301_combout\ : std_logic;
SIGNAL \Mux45~0_combout\ : std_logic;
SIGNAL \Mux126~302_combout\ : std_logic;
SIGNAL \Mux126~303_combout\ : std_logic;
SIGNAL \Mux126~304_combout\ : std_logic;
SIGNAL \Mux92~0_combout\ : std_logic;
SIGNAL \Mux92~1_combout\ : std_logic;
SIGNAL \Mux126~305_combout\ : std_logic;
SIGNAL \Mux126~455_combout\ : std_logic;
SIGNAL \Mux126~306_combout\ : std_logic;
SIGNAL \Mux126~307_combout\ : std_logic;
SIGNAL \Mux126~308_combout\ : std_logic;
SIGNAL \Mux126~309_combout\ : std_logic;
SIGNAL \Mux91~1_combout\ : std_logic;
SIGNAL \Mux91~2_combout\ : std_logic;
SIGNAL \Mux126~456_combout\ : std_logic;
SIGNAL \Mux126~312_combout\ : std_logic;
SIGNAL \Mux126~313_combout\ : std_logic;
SIGNAL \Mux126~314_combout\ : std_logic;
SIGNAL \Mux90~1_combout\ : std_logic;
SIGNAL \Mux90~0_combout\ : std_logic;
SIGNAL \Mux90~2_combout\ : std_logic;
SIGNAL \Mux126~315_combout\ : std_logic;
SIGNAL \Mux126~457_combout\ : std_logic;
SIGNAL \Mux126~316_combout\ : std_logic;
SIGNAL \Mux126~317_combout\ : std_logic;
SIGNAL \a[16]~input_o\ : std_logic;
SIGNAL \Mux46~0_combout\ : std_logic;
SIGNAL \Mux126~90_combout\ : std_logic;
SIGNAL \Mux126~453_combout\ : std_logic;
SIGNAL \Mux126~297_combout\ : std_logic;
SIGNAL \Mux126~298_combout\ : std_logic;
SIGNAL \Mux126~319_combout\ : std_logic;
SIGNAL \Mux87~4_combout\ : std_logic;
SIGNAL \Mux89~0_combout\ : std_logic;
SIGNAL \Mux89~1_combout\ : std_logic;
SIGNAL \Mux126~310_combout\ : std_logic;
SIGNAL \Mux126~320_combout\ : std_logic;
SIGNAL \Mux88~0_combout\ : std_logic;
SIGNAL \Mux126~322_combout\ : std_logic;
SIGNAL \Mux126~323_combout\ : std_logic;
SIGNAL \Mux126~324_combout\ : std_logic;
SIGNAL \Mux126~325_combout\ : std_logic;
SIGNAL \Mux88~1_combout\ : std_logic;
SIGNAL \Mux40~0_combout\ : std_logic;
SIGNAL \Mux126~328_combout\ : std_logic;
SIGNAL \Mux126~287_combout\ : std_logic;
SIGNAL \Mux126~288_combout\ : std_logic;
SIGNAL \Mux126~329_combout\ : std_logic;
SIGNAL \Mux126~330_combout\ : std_logic;
SIGNAL \Mux87~2_combout\ : std_logic;
SIGNAL \Mux87~3_combout\ : std_logic;
SIGNAL \Mux86~0_combout\ : std_logic;
SIGNAL \Mux126~334_combout\ : std_logic;
SIGNAL \Mux126~335_combout\ : std_logic;
SIGNAL \Mux86~1_combout\ : std_logic;
SIGNAL \Mux85~0_combout\ : std_logic;
SIGNAL \Mux126~461_combout\ : std_logic;
SIGNAL \a[56]~input_o\ : std_logic;
SIGNAL \Mux126~336_combout\ : std_logic;
SIGNAL \Mux126~337_combout\ : std_logic;
SIGNAL \Mux126~339_combout\ : std_logic;
SIGNAL \Mux83~0_combout\ : std_logic;
SIGNAL \Mux85~1_combout\ : std_logic;
SIGNAL \Mux126~342_combout\ : std_logic;
SIGNAL \Mux126~343_combout\ : std_logic;
SIGNAL \Mux84~0_combout\ : std_logic;
SIGNAL \Mux84~1_combout\ : std_logic;
SIGNAL \Mux83~1_combout\ : std_logic;
SIGNAL \Mux83~2_combout\ : std_logic;
SIGNAL \Mux82~0_combout\ : std_logic;
SIGNAL \Mux126~345_combout\ : std_logic;
SIGNAL \Mux126~346_combout\ : std_logic;
SIGNAL \Mux126~347_combout\ : std_logic;
SIGNAL \Mux35~0_combout\ : std_logic;
SIGNAL \Mux126~464_combout\ : std_logic;
SIGNAL \Mux126~348_combout\ : std_logic;
SIGNAL \Mux126~349_combout\ : std_logic;
SIGNAL \Mux126~350_combout\ : std_logic;
SIGNAL \Mux126~351_combout\ : std_logic;
SIGNAL \Mux82~1_combout\ : std_logic;
SIGNAL \Mux81~0_combout\ : std_logic;
SIGNAL \Mux126~354_combout\ : std_logic;
SIGNAL \Mux126~355_combout\ : std_logic;
SIGNAL \Mux81~1_combout\ : std_logic;
SIGNAL \Mux126~357_combout\ : std_logic;
SIGNAL \Mux126~358_combout\ : std_logic;
SIGNAL \Mux126~359_combout\ : std_logic;
SIGNAL \Mux126~356_combout\ : std_logic;
SIGNAL \Mux126~360_combout\ : std_logic;
SIGNAL \Mux80~0_combout\ : std_logic;
SIGNAL \Mux80~1_combout\ : std_logic;
SIGNAL \Mux79~0_combout\ : std_logic;
SIGNAL \Mux126~363_combout\ : std_logic;
SIGNAL \Mux126~364_combout\ : std_logic;
SIGNAL \Mux79~1_combout\ : std_logic;
SIGNAL \Mux126~367_combout\ : std_logic;
SIGNAL \Mux126~366_combout\ : std_logic;
SIGNAL \Mux126~368_combout\ : std_logic;
SIGNAL \Mux126~369_combout\ : std_logic;
SIGNAL \Mux126~365_combout\ : std_logic;
SIGNAL \Mux126~370_combout\ : std_logic;
SIGNAL \Mux78~1_combout\ : std_logic;
SIGNAL \Mux78~0_combout\ : std_logic;
SIGNAL \Mux78~2_combout\ : std_logic;
SIGNAL \Mux77~0_combout\ : std_logic;
SIGNAL \Mux77~1_combout\ : std_logic;
SIGNAL \Mux34~0_combout\ : std_logic;
SIGNAL \Mux126~353_combout\ : std_logic;
SIGNAL \Mux126~371_combout\ : std_logic;
SIGNAL \Mux126~372_combout\ : std_logic;
SIGNAL \Mux126~374_combout\ : std_logic;
SIGNAL \Mux77~2_combout\ : std_logic;
SIGNAL \Mux76~0_combout\ : std_logic;
SIGNAL \Mux76~1_combout\ : std_logic;
SIGNAL \Mux126~462_combout\ : std_logic;
SIGNAL \Mux126~340_combout\ : std_logic;
SIGNAL \Mux126~341_combout\ : std_logic;
SIGNAL \Mux126~377_combout\ : std_logic;
SIGNAL \Mux126~375_combout\ : std_logic;
SIGNAL \Mux126~376_combout\ : std_logic;
SIGNAL \Mux126~378_combout\ : std_logic;
SIGNAL \Mux76~2_combout\ : std_logic;
SIGNAL \Mux126~380_combout\ : std_logic;
SIGNAL \Mux126~381_combout\ : std_logic;
SIGNAL \Mux126~382_combout\ : std_logic;
SIGNAL \Mux75~0_combout\ : std_logic;
SIGNAL \Mux75~1_combout\ : std_logic;
SIGNAL \Mux126~386_combout\ : std_logic;
SIGNAL \Mux126~383_combout\ : std_logic;
SIGNAL \Mux74~4_combout\ : std_logic;
SIGNAL \Mux74~2_combout\ : std_logic;
SIGNAL \Mux74~3_combout\ : std_logic;
SIGNAL \Mux126~392_combout\ : std_logic;
SIGNAL \Mux73~0_combout\ : std_logic;
SIGNAL \Mux126~387_combout\ : std_logic;
SIGNAL \Mux126~390_combout\ : std_logic;
SIGNAL \Mux126~391_combout\ : std_logic;
SIGNAL \Mux73~1_combout\ : std_logic;
SIGNAL \Mux126~396_combout\ : std_logic;
SIGNAL \Mux126~397_combout\ : std_logic;
SIGNAL \Mux72~0_combout\ : std_logic;
SIGNAL \Mux72~1_combout\ : std_logic;
SIGNAL \Mux71~1_combout\ : std_logic;
SIGNAL \Mux71~0_combout\ : std_logic;
SIGNAL \Mux126~326_combout\ : std_logic;
SIGNAL \Mux126~459_combout\ : std_logic;
SIGNAL \Mux126~399_combout\ : std_logic;
SIGNAL \Mux126~400_combout\ : std_logic;
SIGNAL \Mux126~401_combout\ : std_logic;
SIGNAL \Mux126~402_combout\ : std_logic;
SIGNAL \Mux71~2_combout\ : std_logic;
SIGNAL \Mux70~1_combout\ : std_logic;
SIGNAL \Mux70~0_combout\ : std_logic;
SIGNAL \Mux126~403_combout\ : std_logic;
SIGNAL \Mux126~407_combout\ : std_logic;
SIGNAL \Mux70~2_combout\ : std_logic;
SIGNAL \Mux126~409_combout\ : std_logic;
SIGNAL \Mux126~410_combout\ : std_logic;
SIGNAL \Mux126~411_combout\ : std_logic;
SIGNAL \Mux126~408_combout\ : std_logic;
SIGNAL \Mux126~412_combout\ : std_logic;
SIGNAL \Mux69~0_combout\ : std_logic;
SIGNAL \Mux69~1_combout\ : std_logic;
SIGNAL \Mux126~361_combout\ : std_logic;
SIGNAL \Mux62~1_combout\ : std_logic;
SIGNAL \Mux126~362_combout\ : std_logic;
SIGNAL \Mux126~398_combout\ : std_logic;
SIGNAL \Mux68~0_combout\ : std_logic;
SIGNAL \Mux68~1_combout\ : std_logic;
SIGNAL \Mux68~2_combout\ : std_logic;
SIGNAL \Mux126~418_combout\ : std_logic;
SIGNAL \Mux126~422_combout\ : std_logic;
SIGNAL \Mux126~414_combout\ : std_logic;
SIGNAL \Mux37~0_combout\ : std_logic;
SIGNAL \Mux126~415_combout\ : std_logic;
SIGNAL \Mux126~416_combout\ : std_logic;
SIGNAL \Mux126~413_combout\ : std_logic;
SIGNAL \Mux126~417_combout\ : std_logic;
SIGNAL \Mux67~0_combout\ : std_logic;
SIGNAL \Mux67~1_combout\ : std_logic;
SIGNAL \Mux66~0_combout\ : std_logic;
SIGNAL \Mux126~424_combout\ : std_logic;
SIGNAL \Mux126~425_combout\ : std_logic;
SIGNAL \Mux126~426_combout\ : std_logic;
SIGNAL \Mux126~331_combout\ : std_logic;
SIGNAL \Mux126~460_combout\ : std_logic;
SIGNAL \Mux126~404_combout\ : std_logic;
SIGNAL \Mux126~405_combout\ : std_logic;
SIGNAL \Mux126~423_combout\ : std_logic;
SIGNAL \Mux126~427_combout\ : std_logic;
SIGNAL \Mux66~1_combout\ : std_logic;
SIGNAL \Mux126~428_combout\ : std_logic;
SIGNAL \Mux126~389_combout\ : std_logic;
SIGNAL \Mux126~429_combout\ : std_logic;
SIGNAL \Mux126~430_combout\ : std_logic;
SIGNAL \Mux126~431_combout\ : std_logic;
SIGNAL \Mux126~432_combout\ : std_logic;
SIGNAL \Mux65~0_combout\ : std_logic;
SIGNAL \Mux65~1_combout\ : std_logic;
SIGNAL \Mux64~0_combout\ : std_logic;
SIGNAL \Mux126~433_combout\ : std_logic;
SIGNAL \Mux126~434_combout\ : std_logic;
SIGNAL \Mux126~435_combout\ : std_logic;
SIGNAL \Mux126~436_combout\ : std_logic;
SIGNAL \Mux64~1_combout\ : std_logic;
SIGNAL \Mux63~1_combout\ : std_logic;
SIGNAL \Mux126~420_combout\ : std_logic;
SIGNAL \Mux63~2_combout\ : std_logic;
SIGNAL \Mux63~3_combout\ : std_logic;
SIGNAL \Mux63~4_combout\ : std_logic;
SIGNAL \Mux63~5_combout\ : std_logic;

BEGIN

ww_a <= a;
ww_lar <= lar;
ww_amt <= amt;
y <= ww_y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X5_Y6_N16
\Mux126~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~58_combout\ = (!\amt[1]~input_o\ & !\amt[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \amt[1]~input_o\,
	datad => \amt[2]~input_o\,
	combout => \Mux126~58_combout\);

-- Location: LCCOMB_X5_Y6_N2
\Mux126~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~61_combout\ = (!\amt[3]~input_o\ & ((\amt[4]~input_o\ & (\Mux126~59_combout\)) # (!\amt[4]~input_o\ & ((\Mux126~60_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~59_combout\,
	datab => \amt[4]~input_o\,
	datac => \Mux126~60_combout\,
	datad => \amt[3]~input_o\,
	combout => \Mux126~61_combout\);

-- Location: LCCOMB_X5_Y6_N6
\Mux126~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~65_combout\ = (\Mux126~58_combout\ & ((\Mux126~61_combout\) # ((\amt[3]~input_o\ & \Mux126~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datab => \Mux126~58_combout\,
	datac => \Mux126~64_combout\,
	datad => \Mux126~61_combout\,
	combout => \Mux126~65_combout\);

-- Location: LCCOMB_X3_Y4_N8
\Mux126~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~77_combout\ = (\amt[5]~input_o\ & (\a[45]~input_o\)) # (!\amt[5]~input_o\ & ((\a[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[45]~input_o\,
	datac => \amt[5]~input_o\,
	datad => \a[13]~input_o\,
	combout => \Mux126~77_combout\);

-- Location: LCCOMB_X2_Y5_N6
\Mux126~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~82_combout\ = (\Mux126~68_combout\ & ((\Mux126~66_combout\ & ((\a[35]~input_o\))) # (!\Mux126~66_combout\ & (\a[3]~input_o\)))) # (!\Mux126~68_combout\ & (\Mux126~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~68_combout\,
	datab => \Mux126~66_combout\,
	datac => \a[3]~input_o\,
	datad => \a[35]~input_o\,
	combout => \Mux126~82_combout\);

-- Location: LCCOMB_X7_Y7_N8
\Mux126~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~89_combout\ = (\amt[5]~input_o\ & ((\a[48]~input_o\))) # (!\amt[5]~input_o\ & (\a[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \a[16]~input_o\,
	datad => \a[48]~input_o\,
	combout => \Mux126~89_combout\);

-- Location: LCCOMB_X7_Y7_N4
\Mux126~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~91_combout\ = (!\amt[3]~input_o\ & ((\amt[4]~input_o\ & (\Mux126~89_combout\)) # (!\amt[4]~input_o\ & ((\Mux126~90_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \amt[3]~input_o\,
	datac => \Mux126~89_combout\,
	datad => \Mux126~90_combout\,
	combout => \Mux126~91_combout\);

-- Location: LCCOMB_X5_Y6_N0
\Mux126~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~95_combout\ = (\Mux126~58_combout\ & ((\Mux126~91_combout\) # ((\amt[3]~input_o\ & \Mux126~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datab => \Mux126~58_combout\,
	datac => \Mux126~91_combout\,
	datad => \Mux126~94_combout\,
	combout => \Mux126~95_combout\);

-- Location: LCCOMB_X6_Y8_N10
\Mux126~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~105_combout\ = (\amt[5]~input_o\ & (\a[44]~input_o\)) # (!\amt[5]~input_o\ & ((\a[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[5]~input_o\,
	datac => \a[44]~input_o\,
	datad => \a[12]~input_o\,
	combout => \Mux126~105_combout\);

-- Location: LCCOMB_X1_Y4_N18
\Mux126~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~112_combout\ = (\amt[5]~input_o\ & (\a[42]~input_o\)) # (!\amt[5]~input_o\ & ((\a[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datac => \a[42]~input_o\,
	datad => \a[10]~input_o\,
	combout => \Mux126~112_combout\);

-- Location: LCCOMB_X1_Y4_N12
\Mux126~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~113_combout\ = (\amt[4]~input_o\ & (\Mux126~111_combout\)) # (!\amt[4]~input_o\ & ((\Mux126~112_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux126~111_combout\,
	datac => \amt[4]~input_o\,
	datad => \Mux126~112_combout\,
	combout => \Mux126~113_combout\);

-- Location: LCCOMB_X7_Y7_N20
\Mux126~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~120_combout\ = (\amt[4]~input_o\ & (\Mux126~119_combout\)) # (!\amt[4]~input_o\ & ((\Mux126~89_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~119_combout\,
	datab => \Mux126~89_combout\,
	datac => \amt[4]~input_o\,
	combout => \Mux126~120_combout\);

-- Location: LCCOMB_X2_Y6_N22
\Mux126~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~124_combout\ = (!\amt[1]~input_o\ & ((\amt[2]~input_o\ & ((\Mux126~73_combout\))) # (!\amt[2]~input_o\ & (\Mux126~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datab => \Mux126~86_combout\,
	datac => \amt[2]~input_o\,
	datad => \Mux126~73_combout\,
	combout => \Mux126~124_combout\);

-- Location: LCCOMB_X1_Y5_N26
\Mux126~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~131_combout\ = (\amt[5]~input_o\ & (\a[2]~input_o\ & (\lar[1]~input_o\))) # (!\amt[5]~input_o\ & (((\a[34]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \lar[1]~input_o\,
	datac => \a[34]~input_o\,
	datad => \amt[5]~input_o\,
	combout => \Mux126~131_combout\);

-- Location: LCCOMB_X3_Y5_N26
\Mux126~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~137_combout\ = (\amt[5]~input_o\ & (((\lar[1]~input_o\ & \a[3]~input_o\)))) # (!\amt[5]~input_o\ & (\a[35]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[35]~input_o\,
	datab => \lar[1]~input_o\,
	datac => \a[3]~input_o\,
	datad => \amt[5]~input_o\,
	combout => \Mux126~137_combout\);

-- Location: LCCOMB_X3_Y5_N12
\Mux126~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~138_combout\ = (\Mux126~137_combout\) # ((\amt[5]~input_o\ & (\Mux62~0_combout\ & !\lar[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~137_combout\,
	datab => \amt[5]~input_o\,
	datac => \Mux62~0_combout\,
	datad => \lar[1]~input_o\,
	combout => \Mux126~138_combout\);

-- Location: LCCOMB_X5_Y7_N8
\Mux126~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~146_combout\ = (\amt[3]~input_o\ & ((\amt[4]~input_o\ & ((\Mux126~145_combout\))) # (!\amt[4]~input_o\ & (\Mux126~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datab => \Mux126~102_combout\,
	datac => \amt[4]~input_o\,
	datad => \Mux126~145_combout\,
	combout => \Mux126~146_combout\);

-- Location: LCCOMB_X5_Y7_N2
\Mux126~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~147_combout\ = (\Mux126~146_combout\) # ((!\amt[3]~input_o\ & \Mux126~106_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datab => \Mux126~146_combout\,
	datac => \Mux126~106_combout\,
	combout => \Mux126~147_combout\);

-- Location: LCCOMB_X5_Y6_N22
\Mux126~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~150_combout\ = (!\amt[2]~input_o\ & ((\amt[3]~input_o\ & (\Mux126~127_combout\)) # (!\amt[3]~input_o\ & ((\Mux126~64_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datab => \amt[2]~input_o\,
	datac => \Mux126~127_combout\,
	datad => \Mux126~64_combout\,
	combout => \Mux126~150_combout\);

-- Location: LCCOMB_X2_Y6_N8
\Mux126~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~151_combout\ = (\amt[5]~input_o\ & (\lar[1]~input_o\ & ((\a[5]~input_o\)))) # (!\amt[5]~input_o\ & (((\a[37]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[1]~input_o\,
	datab => \amt[5]~input_o\,
	datac => \a[37]~input_o\,
	datad => \a[5]~input_o\,
	combout => \Mux126~151_combout\);

-- Location: LCCOMB_X3_Y6_N10
\Mux126~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~152_combout\ = (\Mux126~151_combout\) # ((!\lar[1]~input_o\ & (\Mux62~0_combout\ & \amt[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~151_combout\,
	datab => \lar[1]~input_o\,
	datac => \Mux62~0_combout\,
	datad => \amt[5]~input_o\,
	combout => \Mux126~152_combout\);

-- Location: LCCOMB_X3_Y6_N28
\Mux126~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~153_combout\ = (\amt[3]~input_o\ & ((\amt[4]~input_o\ & (\Mux126~152_combout\)) # (!\amt[4]~input_o\ & ((\Mux126~74_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~152_combout\,
	datab => \amt[4]~input_o\,
	datac => \amt[3]~input_o\,
	datad => \Mux126~74_combout\,
	combout => \Mux126~153_combout\);

-- Location: LCCOMB_X1_Y6_N6
\Mux126~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~155_combout\ = (\Mux126~150_combout\) # ((\amt[2]~input_o\ & \Mux126~154_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~150_combout\,
	datab => \amt[2]~input_o\,
	datad => \Mux126~154_combout\,
	combout => \Mux126~155_combout\);

-- Location: LCCOMB_X6_Y8_N30
\Mux126~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~157_combout\ = (\amt[5]~input_o\ & (((\a[6]~input_o\ & \lar[1]~input_o\)))) # (!\amt[5]~input_o\ & (\a[38]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[38]~input_o\,
	datab => \amt[5]~input_o\,
	datac => \a[6]~input_o\,
	datad => \lar[1]~input_o\,
	combout => \Mux126~157_combout\);

-- Location: LCCOMB_X3_Y9_N20
\Mux126~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~165_combout\ = (\amt[3]~input_o\ & ((\amt[4]~input_o\ & ((\Mux126~164_combout\))) # (!\amt[4]~input_o\ & (\Mux126~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \Mux126~67_combout\,
	datac => \amt[3]~input_o\,
	datad => \Mux126~164_combout\,
	combout => \Mux126~165_combout\);

-- Location: LCCOMB_X1_Y6_N10
\Mux126~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~166_combout\ = (\Mux126~165_combout\) # ((!\amt[3]~input_o\ & \Mux126~72_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux126~165_combout\,
	datac => \amt[3]~input_o\,
	datad => \Mux126~72_combout\,
	combout => \Mux126~166_combout\);

-- Location: LCCOMB_X3_Y9_N6
\Mux126~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~175_combout\ = (\amt[5]~input_o\ & (\a[9]~input_o\ & (\lar[1]~input_o\))) # (!\amt[5]~input_o\ & (((\a[41]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[9]~input_o\,
	datab => \lar[1]~input_o\,
	datac => \amt[5]~input_o\,
	datad => \a[41]~input_o\,
	combout => \Mux126~175_combout\);

-- Location: LCCOMB_X5_Y6_N18
\Mux126~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~178_combout\ = (\amt[2]~input_o\ & ((\amt[3]~input_o\ & ((\Mux126~177_combout\))) # (!\amt[3]~input_o\ & (\Mux126~127_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datab => \amt[2]~input_o\,
	datac => \Mux126~127_combout\,
	datad => \Mux126~177_combout\,
	combout => \Mux126~178_combout\);

-- Location: LCCOMB_X1_Y5_N18
\Mux126~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~181_combout\ = (!\amt[3]~input_o\ & ((\amt[4]~input_o\ & (\Mux126~132_combout\)) # (!\amt[4]~input_o\ & ((\Mux126~109_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datab => \Mux126~132_combout\,
	datac => \Mux126~109_combout\,
	datad => \amt[4]~input_o\,
	combout => \Mux126~181_combout\);

-- Location: LCCOMB_X1_Y9_N30
\Mux126~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~188_combout\ = (\amt[5]~input_o\ & (((\lar[1]~input_o\ & \a[11]~input_o\)))) # (!\amt[5]~input_o\ & (\a[43]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[43]~input_o\,
	datab => \lar[1]~input_o\,
	datac => \amt[5]~input_o\,
	datad => \a[11]~input_o\,
	combout => \Mux126~188_combout\);

-- Location: LCCOMB_X6_Y8_N26
\Mux126~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~196_combout\ = (\amt[5]~input_o\ & (\lar[1]~input_o\ & ((\a[12]~input_o\)))) # (!\amt[5]~input_o\ & (((\a[44]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[1]~input_o\,
	datab => \amt[5]~input_o\,
	datac => \a[44]~input_o\,
	datad => \a[12]~input_o\,
	combout => \Mux126~196_combout\);

-- Location: LCCOMB_X6_Y8_N12
\Mux126~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~197_combout\ = (\Mux126~196_combout\) # ((\amt[5]~input_o\ & (\Mux62~0_combout\ & !\lar[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~196_combout\,
	datab => \amt[5]~input_o\,
	datac => \Mux62~0_combout\,
	datad => \lar[1]~input_o\,
	combout => \Mux126~197_combout\);

-- Location: LCCOMB_X3_Y6_N2
\Mux126~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~207_combout\ = (\amt[4]~input_o\ & ((\Mux126~206_combout\))) # (!\amt[4]~input_o\ & (\Mux126~76_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~76_combout\,
	datab => \amt[4]~input_o\,
	datad => \Mux126~206_combout\,
	combout => \Mux126~207_combout\);

-- Location: LCCOMB_X2_Y5_N16
\Mux126~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~211_combout\ = (!\amt[3]~input_o\ & ((\amt[4]~input_o\ & ((\Mux126~158_combout\))) # (!\amt[4]~input_o\ & (\Mux126~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datab => \Mux126~96_combout\,
	datac => \Mux126~158_combout\,
	datad => \amt[4]~input_o\,
	combout => \Mux126~211_combout\);

-- Location: LCCOMB_X3_Y4_N18
\Mux126~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~212_combout\ = (\amt[5]~input_o\ & (((\lar[1]~input_o\ & \a[14]~input_o\)))) # (!\amt[5]~input_o\ & (\a[46]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[46]~input_o\,
	datab => \lar[1]~input_o\,
	datac => \amt[5]~input_o\,
	datad => \a[14]~input_o\,
	combout => \Mux126~212_combout\);

-- Location: LCCOMB_X3_Y4_N12
\Mux126~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~213_combout\ = (\Mux126~212_combout\) # ((\amt[5]~input_o\ & (!\lar[1]~input_o\ & \Mux62~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \lar[1]~input_o\,
	datac => \Mux62~0_combout\,
	datad => \Mux126~212_combout\,
	combout => \Mux126~213_combout\);

-- Location: LCCOMB_X4_Y9_N22
\Mux126~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~219_combout\ = (\amt[4]~input_o\ & (\a[47]~input_o\ & (!\amt[5]~input_o\))) # (!\amt[4]~input_o\ & (((\Mux126~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[47]~input_o\,
	datab => \amt[4]~input_o\,
	datac => \amt[5]~input_o\,
	datad => \Mux126~71_combout\,
	combout => \Mux126~219_combout\);

-- Location: LCCOMB_X7_Y7_N22
\Mux126~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~224_combout\ = (\Mux126~220_combout\ & ((\lar[1]~input_o\ & ((\a[16]~input_o\))) # (!\lar[1]~input_o\ & (\Mux62~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~220_combout\,
	datab => \lar[1]~input_o\,
	datac => \Mux62~0_combout\,
	datad => \a[16]~input_o\,
	combout => \Mux126~224_combout\);

-- Location: LCCOMB_X5_Y9_N26
\Mux126~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~230_combout\ = (\Mux126~220_combout\ & ((\lar[1]~input_o\ & (\a[17]~input_o\)) # (!\lar[1]~input_o\ & ((\Mux62~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[17]~input_o\,
	datab => \lar[1]~input_o\,
	datac => \Mux62~0_combout\,
	datad => \Mux126~220_combout\,
	combout => \Mux126~230_combout\);

-- Location: LCCOMB_X4_Y6_N12
\Mux126~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~233_combout\ = (\amt[2]~input_o\ & ((\amt[3]~input_o\ & ((\Mux126~232_combout\))) # (!\amt[3]~input_o\ & (\Mux126~177_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datab => \Mux126~177_combout\,
	datac => \amt[2]~input_o\,
	datad => \Mux126~232_combout\,
	combout => \Mux126~233_combout\);

-- Location: LCCOMB_X1_Y5_N20
\Mux126~236\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~236_combout\ = (\amt[4]~input_o\ & (\a[50]~input_o\ & ((!\amt[5]~input_o\)))) # (!\amt[4]~input_o\ & (((\Mux126~132_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[50]~input_o\,
	datab => \amt[4]~input_o\,
	datac => \Mux126~132_combout\,
	datad => \amt[5]~input_o\,
	combout => \Mux126~236_combout\);

-- Location: LCCOMB_X2_Y4_N30
\Mux126~237\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~237_combout\ = (\amt[2]~input_o\ & ((\amt[3]~input_o\ & ((\Mux126~442_combout\))) # (!\amt[3]~input_o\ & (\Mux126~184_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~184_combout\,
	datab => \amt[3]~input_o\,
	datac => \amt[2]~input_o\,
	datad => \Mux126~442_combout\,
	combout => \Mux126~237_combout\);

-- Location: LCCOMB_X3_Y5_N10
\Mux126~239\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~239_combout\ = (\amt[4]~input_o\ & (\a[51]~input_o\ & (!\amt[5]~input_o\))) # (!\amt[4]~input_o\ & (((\Mux126~138_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[51]~input_o\,
	datab => \amt[4]~input_o\,
	datac => \amt[5]~input_o\,
	datad => \Mux126~138_combout\,
	combout => \Mux126~239_combout\);

-- Location: LCCOMB_X4_Y6_N10
\Mux126~247\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~247_combout\ = (\amt[3]~input_o\ & (!\amt[2]~input_o\ & \Mux126~232_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datab => \amt[2]~input_o\,
	datad => \Mux126~232_combout\,
	combout => \Mux126~247_combout\);

-- Location: LCCOMB_X3_Y6_N22
\Mux41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux41~0_combout\ = (\lar[1]~input_o\ & (((\a[21]~input_o\)))) # (!\lar[1]~input_o\ & (\a[63]~input_o\ & (\lar[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[63]~input_o\,
	datab => \lar[1]~input_o\,
	datac => \lar[0]~input_o\,
	datad => \a[21]~input_o\,
	combout => \Mux41~0_combout\);

-- Location: LCCOMB_X2_Y4_N12
\Mux126~252\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~252_combout\ = (!\amt[3]~input_o\ & ((\amt[2]~input_o\ & ((\Mux126~214_combout\))) # (!\amt[2]~input_o\ & (\Mux126~184_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~184_combout\,
	datab => \amt[3]~input_o\,
	datac => \amt[2]~input_o\,
	datad => \Mux126~214_combout\,
	combout => \Mux126~252_combout\);

-- Location: LCCOMB_X2_Y9_N10
\Mux126~256\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~256_combout\ = (!\amt[3]~input_o\ & ((\amt[2]~input_o\ & ((\Mux126~441_combout\))) # (!\amt[2]~input_o\ & (\Mux126~190_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~190_combout\,
	datab => \amt[3]~input_o\,
	datac => \amt[2]~input_o\,
	datad => \Mux126~441_combout\,
	combout => \Mux126~256_combout\);

-- Location: LCCOMB_X5_Y8_N2
\Mux126~262\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~262_combout\ = (\Mux126~261_combout\ & ((\amt[4]~input_o\ & (\Mux126~197_combout\)) # (!\amt[4]~input_o\ & ((\Mux126~104_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~261_combout\,
	datab => \Mux126~197_combout\,
	datac => \Mux126~104_combout\,
	datad => \amt[4]~input_o\,
	combout => \Mux126~262_combout\);

-- Location: LCCOMB_X3_Y9_N0
\Mux126~265\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~265_combout\ = (\amt[4]~input_o\ & (\a[57]~input_o\ & ((!\amt[5]~input_o\)))) # (!\amt[4]~input_o\ & (((\Mux126~176_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \a[57]~input_o\,
	datac => \Mux126~176_combout\,
	datad => \amt[5]~input_o\,
	combout => \Mux126~265_combout\);

-- Location: LCCOMB_X4_Y5_N0
\Mux126~266\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~266_combout\ = (\amt[3]~input_o\ & ((\amt[2]~input_o\ & (\Mux126~449_combout\)) # (!\amt[2]~input_o\ & ((\Mux126~445_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~449_combout\,
	datab => \amt[2]~input_o\,
	datac => \amt[3]~input_o\,
	datad => \Mux126~445_combout\,
	combout => \Mux126~266_combout\);

-- Location: LCCOMB_X1_Y4_N22
\Mux126~269\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~269_combout\ = (\amt[4]~input_o\ & (!\amt[5]~input_o\ & ((\a[58]~input_o\)))) # (!\amt[4]~input_o\ & (((\Mux126~183_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \amt[4]~input_o\,
	datac => \Mux126~183_combout\,
	datad => \a[58]~input_o\,
	combout => \Mux126~269_combout\);

-- Location: LCCOMB_X1_Y9_N14
\Mux126~272\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~272_combout\ = (\amt[4]~input_o\ & (\a[59]~input_o\ & (!\amt[5]~input_o\))) # (!\amt[4]~input_o\ & (((\Mux126~189_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \a[59]~input_o\,
	datac => \amt[5]~input_o\,
	datad => \Mux126~189_combout\,
	combout => \Mux126~272_combout\);

-- Location: LCCOMB_X5_Y8_N6
\Mux126~277\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~277_combout\ = (\amt[2]~input_o\ & ((\Mux126~444_combout\) # ((\amt[3]~input_o\)))) # (!\amt[2]~input_o\ & (((!\amt[3]~input_o\ & \Mux126~226_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datab => \Mux126~444_combout\,
	datac => \amt[3]~input_o\,
	datad => \Mux126~226_combout\,
	combout => \Mux126~277_combout\);

-- Location: LCCOMB_X3_Y4_N26
\Mux126~286\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~286_combout\ = (\amt[5]~input_o\ & (((\lar[1]~input_o\ & \a[30]~input_o\)))) # (!\amt[5]~input_o\ & (\a[62]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[62]~input_o\,
	datab => \lar[1]~input_o\,
	datac => \amt[5]~input_o\,
	datad => \a[30]~input_o\,
	combout => \Mux126~286_combout\);

-- Location: LCCOMB_X2_Y4_N22
\Mux126~289\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~289_combout\ = (\amt[3]~input_o\ & (\Mux126~288_combout\)) # (!\amt[3]~input_o\ & ((\Mux126~446_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[3]~input_o\,
	datac => \Mux126~288_combout\,
	datad => \Mux126~446_combout\,
	combout => \Mux126~289_combout\);

-- Location: LCCOMB_X3_Y5_N30
\Mux126~311\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~311_combout\ = (\lar[1]~input_o\ & ((\amt[5]~input_o\ & (\a[35]~input_o\)) # (!\amt[5]~input_o\ & ((\a[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[35]~input_o\,
	datab => \lar[1]~input_o\,
	datac => \a[3]~input_o\,
	datad => \amt[5]~input_o\,
	combout => \Mux126~311_combout\);

-- Location: LCCOMB_X5_Y8_N22
\Mux126~318\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~318_combout\ = (\amt[2]~input_o\ & ((\Mux126~452_combout\) # ((\amt[3]~input_o\)))) # (!\amt[2]~input_o\ & (((\Mux126~448_combout\ & !\amt[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datab => \Mux126~452_combout\,
	datac => \Mux126~448_combout\,
	datad => \amt[3]~input_o\,
	combout => \Mux126~318_combout\);

-- Location: LCCOMB_X2_Y6_N20
\Mux126~321\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~321_combout\ = (\lar[1]~input_o\ & ((\amt[5]~input_o\ & (\a[37]~input_o\)) # (!\amt[5]~input_o\ & ((\a[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[1]~input_o\,
	datab => \amt[5]~input_o\,
	datac => \a[37]~input_o\,
	datad => \a[5]~input_o\,
	combout => \Mux126~321_combout\);

-- Location: LCCOMB_X1_Y5_N10
\Mux126~327\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~327_combout\ = (\amt[4]~input_o\ & (((\Mux126~459_combout\)))) # (!\amt[4]~input_o\ & (\a[54]~input_o\ & ((!\amt[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[54]~input_o\,
	datab => \amt[4]~input_o\,
	datac => \Mux126~459_combout\,
	datad => \amt[5]~input_o\,
	combout => \Mux126~327_combout\);

-- Location: LCCOMB_X3_Y9_N28
\Mux126~332\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~332_combout\ = (\amt[4]~input_o\ & (((\Mux126~460_combout\)))) # (!\amt[4]~input_o\ & (\a[55]~input_o\ & (!\amt[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \a[55]~input_o\,
	datac => \amt[5]~input_o\,
	datad => \Mux126~460_combout\,
	combout => \Mux126~332_combout\);

-- Location: LCCOMB_X3_Y9_N30
\Mux126~333\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~333_combout\ = (\Mux126~332_combout\) # ((!\amt[4]~input_o\ & (\amt[5]~input_o\ & \Mux39~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \amt[5]~input_o\,
	datac => \Mux39~0_combout\,
	datad => \Mux126~332_combout\,
	combout => \Mux126~333_combout\);

-- Location: LCCOMB_X5_Y8_N26
\Mux126~338\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~338_combout\ = (\amt[2]~input_o\ & (((\amt[3]~input_o\) # (\Mux126~298_combout\)))) # (!\amt[2]~input_o\ & (\Mux126~452_combout\ & (!\amt[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datab => \Mux126~452_combout\,
	datac => \amt[3]~input_o\,
	datad => \Mux126~298_combout\,
	combout => \Mux126~338_combout\);

-- Location: LCCOMB_X1_Y4_N10
\Mux126~344\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~344_combout\ = (\amt[4]~input_o\ & (\Mux126~463_combout\)) # (!\amt[4]~input_o\ & (((!\amt[5]~input_o\ & \a[58]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~463_combout\,
	datab => \amt[4]~input_o\,
	datac => \amt[5]~input_o\,
	datad => \a[58]~input_o\,
	combout => \Mux126~344_combout\);

-- Location: LCCOMB_X6_Y8_N22
\Mux126~352\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~352_combout\ = (\amt[4]~input_o\ & (\Mux126~465_combout\)) # (!\amt[4]~input_o\ & (((!\amt[5]~input_o\ & \a[60]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~465_combout\,
	datab => \amt[5]~input_o\,
	datac => \amt[4]~input_o\,
	datad => \a[60]~input_o\,
	combout => \Mux126~352_combout\);

-- Location: LCCOMB_X5_Y8_N10
\Mux126~373\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~373_combout\ = (\amt[2]~input_o\ & (((\amt[3]~input_o\) # (\Mux126~337_combout\)))) # (!\amt[2]~input_o\ & (\Mux126~317_combout\ & (!\amt[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datab => \Mux126~317_combout\,
	datac => \amt[3]~input_o\,
	datad => \Mux126~337_combout\,
	combout => \Mux126~373_combout\);

-- Location: LCCOMB_X1_Y5_N30
\Mux126~379\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~379_combout\ = (\Mux126~366_combout\ & ((\Mux126~220_combout\) # ((\Mux44~0_combout\)))) # (!\Mux126~366_combout\ & (!\Mux126~220_combout\ & ((\Mux126~455_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~366_combout\,
	datab => \Mux126~220_combout\,
	datac => \Mux44~0_combout\,
	datad => \Mux126~455_combout\,
	combout => \Mux126~379_combout\);

-- Location: LCCOMB_X3_Y5_N6
\Mux126~384\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~384_combout\ = (\Mux126~220_combout\ & ((\Mux126~366_combout\) # ((\Mux62~0_combout\)))) # (!\Mux126~220_combout\ & (!\Mux126~366_combout\ & ((\Mux126~456_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~220_combout\,
	datab => \Mux126~366_combout\,
	datac => \Mux62~0_combout\,
	datad => \Mux126~456_combout\,
	combout => \Mux126~384_combout\);

-- Location: LCCOMB_X3_Y5_N8
\Mux126~385\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~385_combout\ = (\Mux126~384_combout\ & (((\a[51]~input_o\)) # (!\Mux126~366_combout\))) # (!\Mux126~384_combout\ & (\Mux126~366_combout\ & ((\Mux43~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~384_combout\,
	datab => \Mux126~366_combout\,
	datac => \a[51]~input_o\,
	datad => \Mux43~0_combout\,
	combout => \Mux126~385_combout\);

-- Location: LCCOMB_X5_Y7_N16
\Mux126~388\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~388_combout\ = (\Mux126~220_combout\ & (((\Mux126~366_combout\)))) # (!\Mux126~220_combout\ & ((\Mux126~366_combout\ & (\Mux42~0_combout\)) # (!\Mux126~366_combout\ & ((\Mux126~457_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~220_combout\,
	datab => \Mux42~0_combout\,
	datac => \Mux126~457_combout\,
	datad => \Mux126~366_combout\,
	combout => \Mux126~388_combout\);

-- Location: LCCOMB_X4_Y5_N12
\Mux126~393\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~393_combout\ = (!\amt[3]~input_o\ & ((\amt[2]~input_o\ & ((\Mux126~358_combout\))) # (!\amt[2]~input_o\ & (\Mux126~341_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datab => \amt[2]~input_o\,
	datac => \Mux126~341_combout\,
	datad => \Mux126~358_combout\,
	combout => \Mux126~393_combout\);

-- Location: LCCOMB_X3_Y6_N16
\Mux126~394\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~394_combout\ = (\Mux126~220_combout\ & ((\Mux126~366_combout\) # ((\Mux62~0_combout\)))) # (!\Mux126~220_combout\ & (!\Mux126~366_combout\ & ((\Mux126~458_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~220_combout\,
	datab => \Mux126~366_combout\,
	datac => \Mux62~0_combout\,
	datad => \Mux126~458_combout\,
	combout => \Mux126~394_combout\);

-- Location: LCCOMB_X3_Y6_N26
\Mux126~395\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~395_combout\ = (\Mux126~394_combout\ & (((\a[53]~input_o\) # (!\Mux126~366_combout\)))) # (!\Mux126~394_combout\ & (\Mux41~0_combout\ & (\Mux126~366_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux41~0_combout\,
	datab => \Mux126~394_combout\,
	datac => \Mux126~366_combout\,
	datad => \a[53]~input_o\,
	combout => \Mux126~395_combout\);

-- Location: LCCOMB_X6_Y9_N6
\Mux126~406\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~406_combout\ = (\amt[3]~input_o\ & ((\amt[2]~input_o\ & ((\Mux126~405_combout\))) # (!\amt[2]~input_o\ & (\Mux126~385_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~385_combout\,
	datab => \amt[2]~input_o\,
	datac => \Mux126~405_combout\,
	datad => \amt[3]~input_o\,
	combout => \Mux126~406_combout\);

-- Location: LCCOMB_X1_Y4_N14
\Mux126~419\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~419_combout\ = (\Mux126~366_combout\ & (((\Mux126~220_combout\) # (\Mux36~0_combout\)))) # (!\Mux126~366_combout\ & (\Mux126~463_combout\ & (!\Mux126~220_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~463_combout\,
	datab => \Mux126~366_combout\,
	datac => \Mux126~220_combout\,
	datad => \Mux36~0_combout\,
	combout => \Mux126~419_combout\);

-- Location: LCCOMB_X4_Y4_N30
\Mux126~421\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~421_combout\ = (\amt[3]~input_o\ & ((\amt[2]~input_o\ & (\Mux126~420_combout\)) # (!\amt[2]~input_o\ & ((\Mux126~400_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datab => \amt[2]~input_o\,
	datac => \Mux126~420_combout\,
	datad => \Mux126~400_combout\,
	combout => \Mux126~421_combout\);

-- Location: LCCOMB_X4_Y4_N10
\Mux63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux63~0_combout\ = (!\amt[3]~input_o\ & ((\amt[2]~input_o\ & ((\Mux126~400_combout\))) # (!\amt[2]~input_o\ & (\Mux126~380_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datab => \Mux126~380_combout\,
	datac => \amt[3]~input_o\,
	datad => \Mux126~400_combout\,
	combout => \Mux63~0_combout\);

-- Location: LCCOMB_X3_Y9_N14
\Mux126~449\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~449_combout\ = (\Mux126~265_combout\) # ((\amt[4]~input_o\ & (\amt[5]~input_o\ & \Mux37~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \Mux126~265_combout\,
	datac => \amt[5]~input_o\,
	datad => \Mux37~0_combout\,
	combout => \Mux126~449_combout\);

-- Location: LCCOMB_X1_Y9_N20
\Mux126~451\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~451_combout\ = (\Mux126~272_combout\) # ((\amt[5]~input_o\ & (\Mux35~0_combout\ & \amt[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \Mux35~0_combout\,
	datac => \Mux126~272_combout\,
	datad => \amt[4]~input_o\,
	combout => \Mux126~451_combout\);

-- Location: LCCOMB_X3_Y6_N6
\Mux126~458\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~458_combout\ = (\Mux126~321_combout\) # ((\a[63]~input_o\ & (!\lar[1]~input_o\ & \lar[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[63]~input_o\,
	datab => \lar[1]~input_o\,
	datac => \lar[0]~input_o\,
	datad => \Mux126~321_combout\,
	combout => \Mux126~458_combout\);

-- Location: LCCOMB_X1_Y4_N30
\Mux126~463\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~463_combout\ = (\lar[1]~input_o\ & (\Mux126~112_combout\)) # (!\lar[1]~input_o\ & (((\lar[0]~input_o\ & \a[63]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[1]~input_o\,
	datab => \Mux126~112_combout\,
	datac => \lar[0]~input_o\,
	datad => \a[63]~input_o\,
	combout => \Mux126~463_combout\);

-- Location: LCCOMB_X6_Y8_N14
\Mux126~465\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~465_combout\ = (\lar[1]~input_o\ & (\Mux126~105_combout\)) # (!\lar[1]~input_o\ & (((\lar[0]~input_o\ & \a[63]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~105_combout\,
	datab => \lar[1]~input_o\,
	datac => \lar[0]~input_o\,
	datad => \a[63]~input_o\,
	combout => \Mux126~465_combout\);

-- Location: IOIBUF_X0_Y13_N8
\a[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(25),
	o => \a[25]~input_o\);

-- Location: IOIBUF_X7_Y0_N22
\a[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(21),
	o => \a[21]~input_o\);

-- Location: IOIBUF_X7_Y0_N8
\a[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(45),
	o => \a[45]~input_o\);

-- Location: IOIBUF_X0_Y21_N15
\a[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(51),
	o => \a[51]~input_o\);

-- Location: IOIBUF_X3_Y0_N22
\a[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(35),
	o => \a[35]~input_o\);

-- Location: IOIBUF_X9_Y0_N8
\a[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: IOIBUF_X0_Y20_N15
\a[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(43),
	o => \a[43]~input_o\);

-- Location: IOIBUF_X0_Y44_N1
\a[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(32),
	o => \a[32]~input_o\);

-- Location: IOIBUF_X0_Y28_N22
\a[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(38),
	o => \a[38]~input_o\);

-- Location: IOIBUF_X31_Y0_N1
\a[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(62),
	o => \a[62]~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\a[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(36),
	o => \a[36]~input_o\);

-- Location: IOIBUF_X0_Y24_N22
\a[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(28),
	o => \a[28]~input_o\);

-- Location: IOIBUF_X0_Y29_N15
\a[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(44),
	o => \a[44]~input_o\);

-- Location: IOIBUF_X40_Y0_N15
\a[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(12),
	o => \a[12]~input_o\);

-- Location: IOIBUF_X0_Y4_N22
\a[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(18),
	o => \a[18]~input_o\);

-- Location: IOOBUF_X0_Y19_N2
\y[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux126~116_combout\,
	devoe => ww_devoe,
	o => \y[0]~output_o\);

-- Location: IOOBUF_X0_Y47_N16
\y[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux125~0_combout\,
	devoe => ww_devoe,
	o => \y[1]~output_o\);

-- Location: IOOBUF_X0_Y42_N2
\y[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux124~0_combout\,
	devoe => ww_devoe,
	o => \y[2]~output_o\);

-- Location: IOOBUF_X0_Y42_N9
\y[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux123~0_combout\,
	devoe => ww_devoe,
	o => \y[3]~output_o\);

-- Location: IOOBUF_X0_Y30_N2
\y[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux122~0_combout\,
	devoe => ww_devoe,
	o => \y[4]~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\y[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux121~0_combout\,
	devoe => ww_devoe,
	o => \y[5]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\y[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux120~0_combout\,
	devoe => ww_devoe,
	o => \y[6]~output_o\);

-- Location: IOOBUF_X0_Y46_N16
\y[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux119~0_combout\,
	devoe => ww_devoe,
	o => \y[7]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\y[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux118~0_combout\,
	devoe => ww_devoe,
	o => \y[8]~output_o\);

-- Location: IOOBUF_X0_Y27_N23
\y[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux117~0_combout\,
	devoe => ww_devoe,
	o => \y[9]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\y[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux116~0_combout\,
	devoe => ww_devoe,
	o => \y[10]~output_o\);

-- Location: IOOBUF_X0_Y45_N23
\y[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux115~0_combout\,
	devoe => ww_devoe,
	o => \y[11]~output_o\);

-- Location: IOOBUF_X0_Y14_N2
\y[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux114~0_combout\,
	devoe => ww_devoe,
	o => \y[12]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\y[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux113~0_combout\,
	devoe => ww_devoe,
	o => \y[13]~output_o\);

-- Location: IOOBUF_X0_Y49_N9
\y[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux112~0_combout\,
	devoe => ww_devoe,
	o => \y[14]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\y[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux111~0_combout\,
	devoe => ww_devoe,
	o => \y[15]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\y[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux110~0_combout\,
	devoe => ww_devoe,
	o => \y[16]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\y[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux109~0_combout\,
	devoe => ww_devoe,
	o => \y[17]~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\y[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux108~0_combout\,
	devoe => ww_devoe,
	o => \y[18]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\y[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux107~1_combout\,
	devoe => ww_devoe,
	o => \y[19]~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\y[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux106~3_combout\,
	devoe => ww_devoe,
	o => \y[20]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\y[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux105~2_combout\,
	devoe => ww_devoe,
	o => \y[21]~output_o\);

-- Location: IOOBUF_X47_Y0_N9
\y[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux104~1_combout\,
	devoe => ww_devoe,
	o => \y[22]~output_o\);

-- Location: IOOBUF_X0_Y15_N23
\y[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux103~2_combout\,
	devoe => ww_devoe,
	o => \y[23]~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\y[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux102~1_combout\,
	devoe => ww_devoe,
	o => \y[24]~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\y[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux101~2_combout\,
	devoe => ww_devoe,
	o => \y[25]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\y[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux100~1_combout\,
	devoe => ww_devoe,
	o => \y[26]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\y[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux99~1_combout\,
	devoe => ww_devoe,
	o => \y[27]~output_o\);

-- Location: IOOBUF_X0_Y24_N9
\y[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux98~2_combout\,
	devoe => ww_devoe,
	o => \y[28]~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\y[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux97~1_combout\,
	devoe => ww_devoe,
	o => \y[29]~output_o\);

-- Location: IOOBUF_X0_Y46_N23
\y[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux96~1_combout\,
	devoe => ww_devoe,
	o => \y[30]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\y[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux95~1_combout\,
	devoe => ww_devoe,
	o => \y[31]~output_o\);

-- Location: IOOBUF_X0_Y48_N2
\y[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux94~1_combout\,
	devoe => ww_devoe,
	o => \y[32]~output_o\);

-- Location: IOOBUF_X0_Y16_N23
\y[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux93~1_combout\,
	devoe => ww_devoe,
	o => \y[33]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\y[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux92~1_combout\,
	devoe => ww_devoe,
	o => \y[34]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\y[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux91~2_combout\,
	devoe => ww_devoe,
	o => \y[35]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\y[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux90~2_combout\,
	devoe => ww_devoe,
	o => \y[36]~output_o\);

-- Location: IOOBUF_X0_Y19_N9
\y[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux89~1_combout\,
	devoe => ww_devoe,
	o => \y[37]~output_o\);

-- Location: IOOBUF_X0_Y15_N16
\y[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux88~1_combout\,
	devoe => ww_devoe,
	o => \y[38]~output_o\);

-- Location: IOOBUF_X0_Y24_N2
\y[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux87~3_combout\,
	devoe => ww_devoe,
	o => \y[39]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\y[40]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux86~1_combout\,
	devoe => ww_devoe,
	o => \y[40]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\y[41]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux85~1_combout\,
	devoe => ww_devoe,
	o => \y[41]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\y[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux84~1_combout\,
	devoe => ww_devoe,
	o => \y[42]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\y[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux83~2_combout\,
	devoe => ww_devoe,
	o => \y[43]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\y[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux82~1_combout\,
	devoe => ww_devoe,
	o => \y[44]~output_o\);

-- Location: IOOBUF_X33_Y0_N9
\y[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux81~1_combout\,
	devoe => ww_devoe,
	o => \y[45]~output_o\);

-- Location: IOOBUF_X35_Y0_N16
\y[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux80~1_combout\,
	devoe => ww_devoe,
	o => \y[46]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\y[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux79~1_combout\,
	devoe => ww_devoe,
	o => \y[47]~output_o\);

-- Location: IOOBUF_X20_Y0_N23
\y[48]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux78~2_combout\,
	devoe => ww_devoe,
	o => \y[48]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\y[49]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux77~2_combout\,
	devoe => ww_devoe,
	o => \y[49]~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\y[50]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux76~2_combout\,
	devoe => ww_devoe,
	o => \y[50]~output_o\);

-- Location: IOOBUF_X27_Y0_N23
\y[51]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux75~1_combout\,
	devoe => ww_devoe,
	o => \y[51]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\y[52]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux74~3_combout\,
	devoe => ww_devoe,
	o => \y[52]~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\y[53]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux73~1_combout\,
	devoe => ww_devoe,
	o => \y[53]~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\y[54]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux72~1_combout\,
	devoe => ww_devoe,
	o => \y[54]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\y[55]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux71~2_combout\,
	devoe => ww_devoe,
	o => \y[55]~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\y[56]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux70~2_combout\,
	devoe => ww_devoe,
	o => \y[56]~output_o\);

-- Location: IOOBUF_X13_Y0_N23
\y[57]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux69~1_combout\,
	devoe => ww_devoe,
	o => \y[57]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\y[58]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux68~2_combout\,
	devoe => ww_devoe,
	o => \y[58]~output_o\);

-- Location: IOOBUF_X42_Y0_N23
\y[59]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux67~1_combout\,
	devoe => ww_devoe,
	o => \y[59]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\y[60]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux66~1_combout\,
	devoe => ww_devoe,
	o => \y[60]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\y[61]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux65~1_combout\,
	devoe => ww_devoe,
	o => \y[61]~output_o\);

-- Location: IOOBUF_X42_Y0_N16
\y[62]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux64~1_combout\,
	devoe => ww_devoe,
	o => \y[62]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\y[63]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux63~5_combout\,
	devoe => ww_devoe,
	o => \y[63]~output_o\);

-- Location: IOIBUF_X0_Y22_N22
\a[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(37),
	o => \a[37]~input_o\);

-- Location: IOIBUF_X0_Y9_N15
\amt[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_amt(3),
	o => \amt[3]~input_o\);

-- Location: IOIBUF_X0_Y8_N22
\amt[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_amt(4),
	o => \amt[4]~input_o\);

-- Location: LCCOMB_X2_Y5_N24
\Mux126~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~66_combout\ = (\amt[3]~input_o\) # ((\amt[5]~input_o\ & !\amt[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datac => \amt[3]~input_o\,
	datad => \amt[4]~input_o\,
	combout => \Mux126~66_combout\);

-- Location: IOIBUF_X0_Y14_N8
\a[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: LCCOMB_X2_Y5_N26
\Mux126~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~68_combout\ = (!\amt[3]~input_o\ & !\amt[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \amt[3]~input_o\,
	datad => \amt[4]~input_o\,
	combout => \Mux126~68_combout\);

-- Location: IOIBUF_X0_Y6_N1
\amt[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_amt(5),
	o => \amt[5]~input_o\);

-- Location: IOIBUF_X11_Y0_N15
\a[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(53),
	o => \a[53]~input_o\);

-- Location: LCCOMB_X3_Y6_N24
\Mux126~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~74_combout\ = (\amt[5]~input_o\ & ((\a[53]~input_o\))) # (!\amt[5]~input_o\ & (\a[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[21]~input_o\,
	datab => \amt[5]~input_o\,
	datad => \a[53]~input_o\,
	combout => \Mux126~74_combout\);

-- Location: LCCOMB_X2_Y6_N28
\Mux126~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~75_combout\ = (\Mux126~66_combout\ & (((!\Mux126~68_combout\)))) # (!\Mux126~66_combout\ & ((\Mux126~68_combout\ & (\a[5]~input_o\)) # (!\Mux126~68_combout\ & ((\Mux126~74_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~66_combout\,
	datab => \a[5]~input_o\,
	datac => \Mux126~68_combout\,
	datad => \Mux126~74_combout\,
	combout => \Mux126~75_combout\);

-- Location: LCCOMB_X2_Y6_N14
\Mux126~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~79_combout\ = (\Mux126~66_combout\ & ((\Mux126~75_combout\ & (\Mux126~78_combout\)) # (!\Mux126~75_combout\ & ((\a[37]~input_o\))))) # (!\Mux126~66_combout\ & (((\Mux126~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~78_combout\,
	datab => \a[37]~input_o\,
	datac => \Mux126~66_combout\,
	datad => \Mux126~75_combout\,
	combout => \Mux126~79_combout\);

-- Location: IOIBUF_X0_Y36_N22
\amt[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_amt(2),
	o => \amt[2]~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\a[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

-- Location: IOIBUF_X0_Y32_N22
\a[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(23),
	o => \a[23]~input_o\);

-- Location: IOIBUF_X0_Y33_N15
\a[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(55),
	o => \a[55]~input_o\);

-- Location: LCCOMB_X3_Y9_N18
\Mux126~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~67_combout\ = (\amt[5]~input_o\ & ((\a[55]~input_o\))) # (!\amt[5]~input_o\ & (\a[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[5]~input_o\,
	datac => \a[23]~input_o\,
	datad => \a[55]~input_o\,
	combout => \Mux126~67_combout\);

-- Location: LCCOMB_X2_Y6_N16
\Mux126~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~69_combout\ = (\Mux126~66_combout\ & (!\Mux126~68_combout\)) # (!\Mux126~66_combout\ & ((\Mux126~68_combout\ & (\a[7]~input_o\)) # (!\Mux126~68_combout\ & ((\Mux126~67_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~66_combout\,
	datab => \Mux126~68_combout\,
	datac => \a[7]~input_o\,
	datad => \Mux126~67_combout\,
	combout => \Mux126~69_combout\);

-- Location: IOIBUF_X0_Y43_N15
\a[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(47),
	o => \a[47]~input_o\);

-- Location: LCCOMB_X4_Y9_N18
\Mux126~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~70_combout\ = (!\amt[4]~input_o\ & ((\amt[5]~input_o\ & ((\a[47]~input_o\))) # (!\amt[5]~input_o\ & (\a[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[15]~input_o\,
	datab => \amt[4]~input_o\,
	datac => \a[47]~input_o\,
	datad => \amt[5]~input_o\,
	combout => \Mux126~70_combout\);

-- Location: IOIBUF_X0_Y28_N15
\a[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(31),
	o => \a[31]~input_o\);

-- Location: IOIBUF_X0_Y10_N22
\a[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(63),
	o => \a[63]~input_o\);

-- Location: LCCOMB_X5_Y9_N4
\Mux126~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~71_combout\ = (\amt[5]~input_o\ & ((\a[63]~input_o\))) # (!\amt[5]~input_o\ & (\a[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datac => \a[31]~input_o\,
	datad => \a[63]~input_o\,
	combout => \Mux126~71_combout\);

-- Location: LCCOMB_X4_Y9_N28
\Mux126~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~72_combout\ = (\Mux126~70_combout\) # ((\amt[4]~input_o\ & \Mux126~71_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux126~70_combout\,
	datac => \amt[4]~input_o\,
	datad => \Mux126~71_combout\,
	combout => \Mux126~72_combout\);

-- Location: LCCOMB_X2_Y6_N10
\Mux126~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~73_combout\ = (\Mux126~69_combout\ & (((\Mux126~72_combout\) # (!\Mux126~66_combout\)))) # (!\Mux126~69_combout\ & (\a[39]~input_o\ & (\Mux126~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[39]~input_o\,
	datab => \Mux126~69_combout\,
	datac => \Mux126~66_combout\,
	datad => \Mux126~72_combout\,
	combout => \Mux126~73_combout\);

-- Location: LCCOMB_X2_Y6_N0
\Mux126~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~80_combout\ = (\amt[2]~input_o\ & ((\amt[1]~input_o\ & ((\Mux126~73_combout\))) # (!\amt[1]~input_o\ & (\Mux126~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datab => \Mux126~79_combout\,
	datac => \amt[2]~input_o\,
	datad => \Mux126~73_combout\,
	combout => \Mux126~80_combout\);

-- Location: LCCOMB_X2_Y6_N26
\Mux126~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~87_combout\ = (\amt[1]~input_o\ & !\amt[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \amt[2]~input_o\,
	combout => \Mux126~87_combout\);

-- Location: IOIBUF_X49_Y0_N1
\a[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(11),
	o => \a[11]~input_o\);

-- Location: LCCOMB_X1_Y9_N26
\Mux126~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~84_combout\ = (\amt[5]~input_o\ & (\a[43]~input_o\)) # (!\amt[5]~input_o\ & ((\a[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[43]~input_o\,
	datac => \amt[5]~input_o\,
	datad => \a[11]~input_o\,
	combout => \Mux126~84_combout\);

-- Location: IOIBUF_X0_Y16_N15
\a[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(27),
	o => \a[27]~input_o\);

-- Location: IOIBUF_X0_Y45_N15
\a[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(59),
	o => \a[59]~input_o\);

-- Location: LCCOMB_X1_Y9_N0
\Mux126~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~83_combout\ = (\amt[5]~input_o\ & ((\a[59]~input_o\))) # (!\amt[5]~input_o\ & (\a[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[27]~input_o\,
	datac => \amt[5]~input_o\,
	datad => \a[59]~input_o\,
	combout => \Mux126~83_combout\);

-- Location: LCCOMB_X1_Y9_N28
\Mux126~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~85_combout\ = (\amt[4]~input_o\ & ((\Mux126~83_combout\))) # (!\amt[4]~input_o\ & (\Mux126~84_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datac => \Mux126~84_combout\,
	datad => \Mux126~83_combout\,
	combout => \Mux126~85_combout\);

-- Location: IOIBUF_X23_Y0_N15
\a[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(19),
	o => \a[19]~input_o\);

-- Location: LCCOMB_X3_Y5_N24
\Mux126~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~81_combout\ = (\amt[5]~input_o\ & (\a[51]~input_o\)) # (!\amt[5]~input_o\ & ((\a[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[51]~input_o\,
	datab => \amt[5]~input_o\,
	datac => \a[19]~input_o\,
	combout => \Mux126~81_combout\);

-- Location: LCCOMB_X2_Y5_N0
\Mux126~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~86_combout\ = (\Mux126~82_combout\ & ((\Mux126~85_combout\) # ((\Mux126~68_combout\)))) # (!\Mux126~82_combout\ & (((!\Mux126~68_combout\ & \Mux126~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~82_combout\,
	datab => \Mux126~85_combout\,
	datac => \Mux126~68_combout\,
	datad => \Mux126~81_combout\,
	combout => \Mux126~86_combout\);

-- Location: LCCOMB_X2_Y6_N4
\Mux126~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~88_combout\ = (\Mux126~65_combout\) # ((\Mux126~80_combout\) # ((\Mux126~87_combout\ & \Mux126~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~65_combout\,
	datab => \Mux126~80_combout\,
	datac => \Mux126~87_combout\,
	datad => \Mux126~86_combout\,
	combout => \Mux126~88_combout\);

-- Location: IOIBUF_X0_Y4_N1
\amt[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_amt(0),
	o => \amt[0]~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\a[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: LCCOMB_X2_Y5_N8
\Mux126~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~110_combout\ = (\Mux126~68_combout\ & (((\a[2]~input_o\ & !\Mux126~66_combout\)))) # (!\Mux126~68_combout\ & ((\Mux126~109_combout\) # ((\Mux126~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~109_combout\,
	datab => \a[2]~input_o\,
	datac => \Mux126~68_combout\,
	datad => \Mux126~66_combout\,
	combout => \Mux126~110_combout\);

-- Location: IOIBUF_X1_Y0_N22
\a[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(34),
	o => \a[34]~input_o\);

-- Location: LCCOMB_X2_Y5_N10
\Mux126~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~114_combout\ = (\Mux126~110_combout\ & ((\Mux126~113_combout\) # ((!\Mux126~66_combout\)))) # (!\Mux126~110_combout\ & (((\a[34]~input_o\ & \Mux126~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~113_combout\,
	datab => \Mux126~110_combout\,
	datac => \a[34]~input_o\,
	datad => \Mux126~66_combout\,
	combout => \Mux126~114_combout\);

-- Location: IOIBUF_X0_Y11_N22
\a[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(52),
	o => \a[52]~input_o\);

-- Location: IOIBUF_X0_Y33_N22
\a[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(20),
	o => \a[20]~input_o\);

-- Location: LCCOMB_X7_Y7_N6
\Mux126~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~102_combout\ = (\amt[5]~input_o\ & (\a[52]~input_o\)) # (!\amt[5]~input_o\ & ((\a[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \a[52]~input_o\,
	datad => \a[20]~input_o\,
	combout => \Mux126~102_combout\);

-- Location: IOIBUF_X33_Y0_N1
\a[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(60),
	o => \a[60]~input_o\);

-- Location: LCCOMB_X6_Y8_N0
\Mux126~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~104_combout\ = (\amt[5]~input_o\ & ((\a[60]~input_o\))) # (!\amt[5]~input_o\ & (\a[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[28]~input_o\,
	datab => \amt[5]~input_o\,
	datad => \a[60]~input_o\,
	combout => \Mux126~104_combout\);

-- Location: LCCOMB_X6_Y8_N20
\Mux126~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~106_combout\ = (\amt[4]~input_o\ & ((\Mux126~104_combout\))) # (!\amt[4]~input_o\ & (\Mux126~105_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~105_combout\,
	datac => \amt[4]~input_o\,
	datad => \Mux126~104_combout\,
	combout => \Mux126~106_combout\);

-- Location: IOIBUF_X9_Y0_N1
\a[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: LCCOMB_X5_Y7_N0
\Mux126~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~103_combout\ = (\Mux126~68_combout\ & ((\Mux126~66_combout\ & (\a[36]~input_o\)) # (!\Mux126~66_combout\ & ((\a[4]~input_o\))))) # (!\Mux126~68_combout\ & (((\Mux126~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[36]~input_o\,
	datab => \a[4]~input_o\,
	datac => \Mux126~68_combout\,
	datad => \Mux126~66_combout\,
	combout => \Mux126~103_combout\);

-- Location: LCCOMB_X5_Y7_N18
\Mux126~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~107_combout\ = (\Mux126~68_combout\ & (((\Mux126~103_combout\)))) # (!\Mux126~68_combout\ & ((\Mux126~103_combout\ & ((\Mux126~106_combout\))) # (!\Mux126~103_combout\ & (\Mux126~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~68_combout\,
	datab => \Mux126~102_combout\,
	datac => \Mux126~106_combout\,
	datad => \Mux126~103_combout\,
	combout => \Mux126~107_combout\);

-- Location: IOIBUF_X0_Y21_N22
\a[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

-- Location: LCCOMB_X2_Y5_N28
\Mux126~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~97_combout\ = (\Mux126~68_combout\ & ((\Mux126~66_combout\ & (\a[38]~input_o\)) # (!\Mux126~66_combout\ & ((\a[6]~input_o\))))) # (!\Mux126~68_combout\ & (((\Mux126~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[38]~input_o\,
	datab => \a[6]~input_o\,
	datac => \Mux126~68_combout\,
	datad => \Mux126~66_combout\,
	combout => \Mux126~97_combout\);

-- Location: IOIBUF_X49_Y0_N8
\a[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(46),
	o => \a[46]~input_o\);

-- Location: IOIBUF_X27_Y0_N8
\a[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(14),
	o => \a[14]~input_o\);

-- Location: LCCOMB_X3_Y4_N28
\Mux126~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~99_combout\ = (\amt[5]~input_o\ & (\a[46]~input_o\)) # (!\amt[5]~input_o\ & ((\a[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datac => \a[46]~input_o\,
	datad => \a[14]~input_o\,
	combout => \Mux126~99_combout\);

-- Location: IOIBUF_X31_Y0_N8
\a[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(30),
	o => \a[30]~input_o\);

-- Location: LCCOMB_X3_Y4_N2
\Mux126~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~98_combout\ = (\amt[5]~input_o\ & (\a[62]~input_o\)) # (!\amt[5]~input_o\ & ((\a[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[62]~input_o\,
	datac => \amt[5]~input_o\,
	datad => \a[30]~input_o\,
	combout => \Mux126~98_combout\);

-- Location: LCCOMB_X3_Y4_N22
\Mux126~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~100_combout\ = (\amt[4]~input_o\ & ((\Mux126~98_combout\))) # (!\amt[4]~input_o\ & (\Mux126~99_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux126~99_combout\,
	datac => \amt[4]~input_o\,
	datad => \Mux126~98_combout\,
	combout => \Mux126~100_combout\);

-- Location: IOIBUF_X3_Y0_N15
\a[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(22),
	o => \a[22]~input_o\);

-- Location: IOIBUF_X5_Y0_N8
\a[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(54),
	o => \a[54]~input_o\);

-- Location: LCCOMB_X2_Y5_N18
\Mux126~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~96_combout\ = (\amt[5]~input_o\ & ((\a[54]~input_o\))) # (!\amt[5]~input_o\ & (\a[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[22]~input_o\,
	datac => \amt[5]~input_o\,
	datad => \a[54]~input_o\,
	combout => \Mux126~96_combout\);

-- Location: LCCOMB_X2_Y5_N30
\Mux126~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~101_combout\ = (\Mux126~68_combout\ & (\Mux126~97_combout\)) # (!\Mux126~68_combout\ & ((\Mux126~97_combout\ & (\Mux126~100_combout\)) # (!\Mux126~97_combout\ & ((\Mux126~96_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~68_combout\,
	datab => \Mux126~97_combout\,
	datac => \Mux126~100_combout\,
	datad => \Mux126~96_combout\,
	combout => \Mux126~101_combout\);

-- Location: LCCOMB_X2_Y7_N8
\Mux126~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~108_combout\ = (\amt[2]~input_o\ & ((\amt[1]~input_o\ & ((\Mux126~101_combout\))) # (!\amt[1]~input_o\ & (\Mux126~107_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datab => \Mux126~107_combout\,
	datac => \amt[2]~input_o\,
	datad => \Mux126~101_combout\,
	combout => \Mux126~108_combout\);

-- Location: LCCOMB_X2_Y7_N10
\Mux126~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~115_combout\ = (\Mux126~95_combout\) # ((\Mux126~108_combout\) # ((\Mux126~114_combout\ & \Mux126~87_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~95_combout\,
	datab => \Mux126~114_combout\,
	datac => \Mux126~108_combout\,
	datad => \Mux126~87_combout\,
	combout => \Mux126~115_combout\);

-- Location: LCCOMB_X3_Y7_N16
\Mux126~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~116_combout\ = (\amt[0]~input_o\ & (\Mux126~88_combout\)) # (!\amt[0]~input_o\ & ((\Mux126~115_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~88_combout\,
	datac => \amt[0]~input_o\,
	datad => \Mux126~115_combout\,
	combout => \Mux126~116_combout\);

-- Location: IOIBUF_X0_Y36_N15
\amt[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_amt(1),
	o => \amt[1]~input_o\);

-- Location: LCCOMB_X2_Y7_N20
\Mux126~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~117_combout\ = (!\amt[1]~input_o\ & ((\amt[2]~input_o\ & ((\Mux126~101_combout\))) # (!\amt[2]~input_o\ & (\Mux126~114_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datab => \Mux126~114_combout\,
	datac => \amt[2]~input_o\,
	datad => \Mux126~101_combout\,
	combout => \Mux126~117_combout\);

-- Location: LCCOMB_X2_Y7_N0
\Mux126~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~123_combout\ = (\Mux126~117_combout\) # ((\Mux126~122_combout\ & \amt[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~122_combout\,
	datac => \amt[1]~input_o\,
	datad => \Mux126~117_combout\,
	combout => \Mux126~123_combout\);

-- Location: LCCOMB_X3_Y7_N10
\Mux125~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux125~0_combout\ = (\amt[0]~input_o\ & ((\Mux126~123_combout\))) # (!\amt[0]~input_o\ & (\Mux126~88_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~88_combout\,
	datab => \Mux126~123_combout\,
	datac => \amt[0]~input_o\,
	combout => \Mux125~0_combout\);

-- Location: IOIBUF_X0_Y29_N22
\a[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(49),
	o => \a[49]~input_o\);

-- Location: IOIBUF_X0_Y44_N15
\a[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(17),
	o => \a[17]~input_o\);

-- Location: LCCOMB_X5_Y9_N24
\Mux126~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~59_combout\ = (\amt[5]~input_o\ & (\a[49]~input_o\)) # (!\amt[5]~input_o\ & ((\a[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \a[49]~input_o\,
	datad => \a[17]~input_o\,
	combout => \Mux126~59_combout\);

-- Location: IOIBUF_X0_Y17_N15
\a[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(33),
	o => \a[33]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\a[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: IOIBUF_X0_Y4_N8
\lar[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_lar(1),
	o => \lar[1]~input_o\);

-- Location: LCCOMB_X5_Y9_N14
\Mux126~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~125_combout\ = (\amt[5]~input_o\ & (((\a[1]~input_o\ & \lar[1]~input_o\)))) # (!\amt[5]~input_o\ & (\a[33]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \a[33]~input_o\,
	datac => \a[1]~input_o\,
	datad => \lar[1]~input_o\,
	combout => \Mux126~125_combout\);

-- Location: IOIBUF_X0_Y10_N15
\lar[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_lar(0),
	o => \lar[0]~input_o\);

-- Location: LCCOMB_X7_Y8_N6
\Mux62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux62~0_combout\ = (\a[63]~input_o\ & \lar[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a[63]~input_o\,
	datad => \lar[0]~input_o\,
	combout => \Mux62~0_combout\);

-- Location: LCCOMB_X5_Y9_N8
\Mux126~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~126_combout\ = (\Mux126~125_combout\) # ((\amt[5]~input_o\ & (\Mux62~0_combout\ & !\lar[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \Mux126~125_combout\,
	datac => \Mux62~0_combout\,
	datad => \lar[1]~input_o\,
	combout => \Mux126~126_combout\);

-- Location: LCCOMB_X5_Y6_N26
\Mux126~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~127_combout\ = (\amt[4]~input_o\ & ((\Mux126~126_combout\))) # (!\amt[4]~input_o\ & (\Mux126~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[4]~input_o\,
	datac => \Mux126~59_combout\,
	datad => \Mux126~126_combout\,
	combout => \Mux126~127_combout\);

-- Location: IOIBUF_X0_Y13_N1
\a[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(57),
	o => \a[57]~input_o\);

-- Location: LCCOMB_X3_Y9_N24
\Mux126~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~62_combout\ = (\amt[5]~input_o\ & ((\a[57]~input_o\))) # (!\amt[5]~input_o\ & (\a[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[25]~input_o\,
	datab => \amt[5]~input_o\,
	datac => \a[57]~input_o\,
	combout => \Mux126~62_combout\);

-- Location: IOIBUF_X29_Y0_N22
\a[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(9),
	o => \a[9]~input_o\);

-- Location: IOIBUF_X0_Y32_N15
\a[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(41),
	o => \a[41]~input_o\);

-- Location: LCCOMB_X4_Y9_N16
\Mux126~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~63_combout\ = (\amt[5]~input_o\ & ((\a[41]~input_o\))) # (!\amt[5]~input_o\ & (\a[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[5]~input_o\,
	datac => \a[9]~input_o\,
	datad => \a[41]~input_o\,
	combout => \Mux126~63_combout\);

-- Location: LCCOMB_X5_Y6_N20
\Mux126~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~64_combout\ = (\amt[4]~input_o\ & (\Mux126~62_combout\)) # (!\amt[4]~input_o\ & ((\Mux126~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[4]~input_o\,
	datac => \Mux126~62_combout\,
	datad => \Mux126~63_combout\,
	combout => \Mux126~64_combout\);

-- Location: LCCOMB_X5_Y6_N28
\Mux126~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~128_combout\ = (\amt[2]~input_o\ & ((\amt[3]~input_o\ & (\Mux126~127_combout\)) # (!\amt[3]~input_o\ & ((\Mux126~64_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datab => \amt[2]~input_o\,
	datac => \Mux126~127_combout\,
	datad => \Mux126~64_combout\,
	combout => \Mux126~128_combout\);

-- Location: LCCOMB_X2_Y6_N24
\Mux126~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~129_combout\ = (\Mux126~128_combout\) # ((\Mux126~79_combout\ & !\amt[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux126~79_combout\,
	datac => \amt[2]~input_o\,
	datad => \Mux126~128_combout\,
	combout => \Mux126~129_combout\);

-- Location: LCCOMB_X2_Y6_N18
\Mux126~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~130_combout\ = (\Mux126~124_combout\) # ((\Mux126~129_combout\ & \amt[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~124_combout\,
	datab => \Mux126~129_combout\,
	datac => \amt[1]~input_o\,
	combout => \Mux126~130_combout\);

-- Location: LCCOMB_X1_Y8_N16
\Mux124~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux124~0_combout\ = (\amt[0]~input_o\ & ((\Mux126~130_combout\))) # (!\amt[0]~input_o\ & (\Mux126~123_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~123_combout\,
	datab => \amt[0]~input_o\,
	datac => \Mux126~130_combout\,
	combout => \Mux124~0_combout\);

-- Location: IOIBUF_X18_Y0_N1
\a[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(24),
	o => \a[24]~input_o\);

-- Location: LCCOMB_X7_Y8_N16
\Mux126~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~92_combout\ = (\amt[5]~input_o\ & (\a[56]~input_o\)) # (!\amt[5]~input_o\ & ((\a[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[56]~input_o\,
	datab => \amt[5]~input_o\,
	datad => \a[24]~input_o\,
	combout => \Mux126~92_combout\);

-- Location: IOIBUF_X35_Y0_N22
\a[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(8),
	o => \a[8]~input_o\);

-- Location: IOIBUF_X18_Y0_N8
\a[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(40),
	o => \a[40]~input_o\);

-- Location: LCCOMB_X7_Y8_N10
\Mux126~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~93_combout\ = (\amt[5]~input_o\ & ((\a[40]~input_o\))) # (!\amt[5]~input_o\ & (\a[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[5]~input_o\,
	datac => \a[8]~input_o\,
	datad => \a[40]~input_o\,
	combout => \Mux126~93_combout\);

-- Location: LCCOMB_X7_Y8_N12
\Mux126~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~94_combout\ = (\amt[4]~input_o\ & (\Mux126~92_combout\)) # (!\amt[4]~input_o\ & ((\Mux126~93_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \Mux126~92_combout\,
	datad => \Mux126~93_combout\,
	combout => \Mux126~94_combout\);

-- Location: LCCOMB_X6_Y7_N24
\Mux126~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~121_combout\ = (\amt[2]~input_o\ & ((\amt[3]~input_o\ & (\Mux126~120_combout\)) # (!\amt[3]~input_o\ & ((\Mux126~94_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~120_combout\,
	datab => \amt[2]~input_o\,
	datac => \amt[3]~input_o\,
	datad => \Mux126~94_combout\,
	combout => \Mux126~121_combout\);

-- Location: LCCOMB_X2_Y7_N22
\Mux126~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~122_combout\ = (\Mux126~121_combout\) # ((!\amt[2]~input_o\ & \Mux126~107_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[2]~input_o\,
	datac => \Mux126~121_combout\,
	datad => \Mux126~107_combout\,
	combout => \Mux126~122_combout\);

-- Location: LCCOMB_X1_Y5_N4
\Mux126~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~132_combout\ = (\Mux126~131_combout\) # ((!\lar[1]~input_o\ & (\Mux62~0_combout\ & \amt[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~131_combout\,
	datab => \lar[1]~input_o\,
	datac => \Mux62~0_combout\,
	datad => \amt[5]~input_o\,
	combout => \Mux126~132_combout\);

-- Location: IOIBUF_X1_Y0_N8
\a[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(50),
	o => \a[50]~input_o\);

-- Location: LCCOMB_X1_Y5_N8
\Mux126~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~109_combout\ = (\amt[5]~input_o\ & ((\a[50]~input_o\))) # (!\amt[5]~input_o\ & (\a[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[18]~input_o\,
	datab => \amt[5]~input_o\,
	datad => \a[50]~input_o\,
	combout => \Mux126~109_combout\);

-- Location: LCCOMB_X1_Y5_N22
\Mux126~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~133_combout\ = (\amt[3]~input_o\ & ((\amt[4]~input_o\ & (\Mux126~132_combout\)) # (!\amt[4]~input_o\ & ((\Mux126~109_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datab => \Mux126~132_combout\,
	datac => \Mux126~109_combout\,
	datad => \amt[4]~input_o\,
	combout => \Mux126~133_combout\);

-- Location: LCCOMB_X1_Y5_N24
\Mux126~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~134_combout\ = (\Mux126~133_combout\) # ((\Mux126~113_combout\ & !\amt[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~113_combout\,
	datac => \Mux126~133_combout\,
	datad => \amt[3]~input_o\,
	combout => \Mux126~134_combout\);

-- Location: LCCOMB_X2_Y7_N2
\Mux126~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~135_combout\ = (\amt[1]~input_o\ & ((\amt[2]~input_o\ & (\Mux126~134_combout\)) # (!\amt[2]~input_o\ & ((\Mux126~101_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datab => \Mux126~134_combout\,
	datac => \amt[2]~input_o\,
	datad => \Mux126~101_combout\,
	combout => \Mux126~135_combout\);

-- Location: LCCOMB_X2_Y7_N4
\Mux126~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~136_combout\ = (\Mux126~135_combout\) # ((!\amt[1]~input_o\ & \Mux126~122_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \Mux126~122_combout\,
	datad => \Mux126~135_combout\,
	combout => \Mux126~136_combout\);

-- Location: LCCOMB_X1_Y8_N2
\Mux123~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux123~0_combout\ = (\amt[0]~input_o\ & ((\Mux126~136_combout\))) # (!\amt[0]~input_o\ & (\Mux126~130_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux126~130_combout\,
	datac => \amt[0]~input_o\,
	datad => \Mux126~136_combout\,
	combout => \Mux123~0_combout\);

-- Location: LCCOMB_X3_Y5_N14
\Mux126~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~139_combout\ = (\amt[3]~input_o\ & ((\amt[4]~input_o\ & (\Mux126~138_combout\)) # (!\amt[4]~input_o\ & ((\Mux126~81_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~138_combout\,
	datab => \amt[3]~input_o\,
	datac => \amt[4]~input_o\,
	datad => \Mux126~81_combout\,
	combout => \Mux126~139_combout\);

-- Location: LCCOMB_X1_Y6_N18
\Mux126~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~140_combout\ = (\Mux126~139_combout\) # ((\Mux126~85_combout\ & !\amt[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux126~85_combout\,
	datac => \amt[3]~input_o\,
	datad => \Mux126~139_combout\,
	combout => \Mux126~140_combout\);

-- Location: LCCOMB_X2_Y6_N12
\Mux126~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~141_combout\ = (\amt[1]~input_o\ & ((\amt[2]~input_o\ & (\Mux126~140_combout\)) # (!\amt[2]~input_o\ & ((\Mux126~73_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datab => \Mux126~140_combout\,
	datac => \amt[2]~input_o\,
	datad => \Mux126~73_combout\,
	combout => \Mux126~141_combout\);

-- Location: LCCOMB_X2_Y6_N6
\Mux126~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~142_combout\ = (\Mux126~141_combout\) # ((\Mux126~129_combout\ & !\amt[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux126~129_combout\,
	datac => \amt[1]~input_o\,
	datad => \Mux126~141_combout\,
	combout => \Mux126~142_combout\);

-- Location: LCCOMB_X1_Y8_N4
\Mux122~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux122~0_combout\ = (\amt[0]~input_o\ & (\Mux126~142_combout\)) # (!\amt[0]~input_o\ & ((\Mux126~136_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~142_combout\,
	datac => \amt[0]~input_o\,
	datad => \Mux126~136_combout\,
	combout => \Mux122~0_combout\);

-- Location: LCCOMB_X6_Y7_N18
\Mux126~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~143_combout\ = (!\amt[2]~input_o\ & ((\amt[3]~input_o\ & (\Mux126~120_combout\)) # (!\amt[3]~input_o\ & ((\Mux126~94_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~120_combout\,
	datab => \amt[2]~input_o\,
	datac => \amt[3]~input_o\,
	datad => \Mux126~94_combout\,
	combout => \Mux126~143_combout\);

-- Location: LCCOMB_X6_Y7_N12
\Mux126~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~148_combout\ = (\Mux126~143_combout\) # ((\Mux126~147_combout\ & \amt[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~147_combout\,
	datac => \amt[2]~input_o\,
	datad => \Mux126~143_combout\,
	combout => \Mux126~148_combout\);

-- Location: LCCOMB_X2_Y7_N14
\Mux126~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~149_combout\ = (\amt[1]~input_o\ & (((\Mux126~148_combout\)))) # (!\amt[1]~input_o\ & (\Mux126~134_combout\ & (\amt[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datab => \Mux126~134_combout\,
	datac => \amt[2]~input_o\,
	datad => \Mux126~148_combout\,
	combout => \Mux126~149_combout\);

-- Location: LCCOMB_X2_Y7_N18
\Mux126~437\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~437_combout\ = (\Mux126~149_combout\) # ((!\amt[1]~input_o\ & (!\amt[2]~input_o\ & \Mux126~101_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datab => \Mux126~149_combout\,
	datac => \amt[2]~input_o\,
	datad => \Mux126~101_combout\,
	combout => \Mux126~437_combout\);

-- Location: LCCOMB_X1_Y8_N6
\Mux121~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux121~0_combout\ = (\amt[0]~input_o\ & ((\Mux126~437_combout\))) # (!\amt[0]~input_o\ & (\Mux126~142_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~142_combout\,
	datab => \Mux126~437_combout\,
	datac => \amt[0]~input_o\,
	combout => \Mux121~0_combout\);

-- Location: LCCOMB_X1_Y6_N8
\Mux126~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~156_combout\ = (\amt[1]~input_o\ & (\Mux126~155_combout\)) # (!\amt[1]~input_o\ & (((\amt[2]~input_o\ & \Mux126~140_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~155_combout\,
	datab => \amt[2]~input_o\,
	datac => \amt[1]~input_o\,
	datad => \Mux126~140_combout\,
	combout => \Mux126~156_combout\);

-- Location: LCCOMB_X1_Y6_N4
\Mux126~438\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~438_combout\ = (\Mux126~156_combout\) # ((!\amt[1]~input_o\ & (\Mux126~73_combout\ & !\amt[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datab => \Mux126~156_combout\,
	datac => \Mux126~73_combout\,
	datad => \amt[2]~input_o\,
	combout => \Mux126~438_combout\);

-- Location: LCCOMB_X2_Y8_N8
\Mux120~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux120~0_combout\ = (\amt[0]~input_o\ & (\Mux126~438_combout\)) # (!\amt[0]~input_o\ & ((\Mux126~437_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux126~438_combout\,
	datac => \amt[0]~input_o\,
	datad => \Mux126~437_combout\,
	combout => \Mux120~0_combout\);

-- Location: LCCOMB_X6_Y8_N8
\Mux126~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~158_combout\ = (\Mux126~157_combout\) # ((\amt[5]~input_o\ & (\Mux62~0_combout\ & !\lar[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~157_combout\,
	datab => \amt[5]~input_o\,
	datac => \Mux62~0_combout\,
	datad => \lar[1]~input_o\,
	combout => \Mux126~158_combout\);

-- Location: LCCOMB_X2_Y5_N12
\Mux126~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~159_combout\ = (\amt[3]~input_o\ & ((\amt[4]~input_o\ & ((\Mux126~158_combout\))) # (!\amt[4]~input_o\ & (\Mux126~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datab => \Mux126~96_combout\,
	datac => \Mux126~158_combout\,
	datad => \amt[4]~input_o\,
	combout => \Mux126~159_combout\);

-- Location: LCCOMB_X2_Y5_N14
\Mux126~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~160_combout\ = (\Mux126~159_combout\) # ((!\amt[3]~input_o\ & \Mux126~100_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datac => \Mux126~100_combout\,
	datad => \Mux126~159_combout\,
	combout => \Mux126~160_combout\);

-- Location: LCCOMB_X2_Y7_N24
\Mux126~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~161_combout\ = (\amt[2]~input_o\ & (\Mux126~160_combout\)) # (!\amt[2]~input_o\ & ((\Mux126~134_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[2]~input_o\,
	datac => \Mux126~160_combout\,
	datad => \Mux126~134_combout\,
	combout => \Mux126~161_combout\);

-- Location: LCCOMB_X2_Y7_N26
\Mux126~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~162_combout\ = (\amt[1]~input_o\ & (\Mux126~161_combout\)) # (!\amt[1]~input_o\ & ((\Mux126~148_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux126~161_combout\,
	datac => \amt[1]~input_o\,
	datad => \Mux126~148_combout\,
	combout => \Mux126~162_combout\);

-- Location: LCCOMB_X1_Y7_N8
\Mux119~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux119~0_combout\ = (\amt[0]~input_o\ & ((\Mux126~162_combout\))) # (!\amt[0]~input_o\ & (\Mux126~438_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux126~438_combout\,
	datac => \amt[0]~input_o\,
	datad => \Mux126~162_combout\,
	combout => \Mux119~0_combout\);

-- Location: LCCOMB_X1_Y6_N12
\Mux126~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~167_combout\ = (\amt[2]~input_o\ & (\Mux126~166_combout\)) # (!\amt[2]~input_o\ & ((\Mux126~140_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~166_combout\,
	datab => \amt[2]~input_o\,
	datad => \Mux126~140_combout\,
	combout => \Mux126~167_combout\);

-- Location: LCCOMB_X1_Y6_N22
\Mux126~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~168_combout\ = (\amt[1]~input_o\ & ((\Mux126~167_combout\))) # (!\amt[1]~input_o\ & (\Mux126~155_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~155_combout\,
	datac => \amt[1]~input_o\,
	datad => \Mux126~167_combout\,
	combout => \Mux126~168_combout\);

-- Location: LCCOMB_X1_Y7_N2
\Mux118~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux118~0_combout\ = (\amt[0]~input_o\ & (\Mux126~168_combout\)) # (!\amt[0]~input_o\ & ((\Mux126~162_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~168_combout\,
	datac => \amt[0]~input_o\,
	datad => \Mux126~162_combout\,
	combout => \Mux118~0_combout\);

-- Location: LCCOMB_X7_Y8_N0
\Mux126~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~169_combout\ = (\amt[5]~input_o\ & (\a[8]~input_o\ & (\lar[1]~input_o\))) # (!\amt[5]~input_o\ & (((\a[40]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[8]~input_o\,
	datab => \amt[5]~input_o\,
	datac => \lar[1]~input_o\,
	datad => \a[40]~input_o\,
	combout => \Mux126~169_combout\);

-- Location: LCCOMB_X7_Y8_N2
\Mux126~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~170_combout\ = (\Mux126~169_combout\) # ((\Mux62~0_combout\ & (\amt[5]~input_o\ & !\lar[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux62~0_combout\,
	datab => \amt[5]~input_o\,
	datac => \lar[1]~input_o\,
	datad => \Mux126~169_combout\,
	combout => \Mux126~170_combout\);

-- Location: LCCOMB_X7_Y8_N28
\Mux126~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~171_combout\ = (\amt[4]~input_o\ & (\Mux126~170_combout\)) # (!\amt[4]~input_o\ & ((\Mux126~92_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \Mux126~170_combout\,
	datad => \Mux126~92_combout\,
	combout => \Mux126~171_combout\);

-- Location: LCCOMB_X6_Y7_N6
\Mux126~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~172_combout\ = (\amt[2]~input_o\ & ((\amt[3]~input_o\ & ((\Mux126~171_combout\))) # (!\amt[3]~input_o\ & (\Mux126~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~120_combout\,
	datab => \amt[2]~input_o\,
	datac => \amt[3]~input_o\,
	datad => \Mux126~171_combout\,
	combout => \Mux126~172_combout\);

-- Location: LCCOMB_X6_Y7_N8
\Mux126~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~173_combout\ = (\Mux126~172_combout\) # ((\Mux126~147_combout\ & !\amt[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~147_combout\,
	datac => \amt[2]~input_o\,
	datad => \Mux126~172_combout\,
	combout => \Mux126~173_combout\);

-- Location: LCCOMB_X2_Y7_N28
\Mux126~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~174_combout\ = (\amt[1]~input_o\ & (\Mux126~173_combout\)) # (!\amt[1]~input_o\ & ((\Mux126~161_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \Mux126~173_combout\,
	datad => \Mux126~161_combout\,
	combout => \Mux126~174_combout\);

-- Location: LCCOMB_X1_Y7_N12
\Mux117~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux117~0_combout\ = (\amt[0]~input_o\ & ((\Mux126~174_combout\))) # (!\amt[0]~input_o\ & (\Mux126~168_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~168_combout\,
	datac => \amt[0]~input_o\,
	datad => \Mux126~174_combout\,
	combout => \Mux117~0_combout\);

-- Location: IOIBUF_X3_Y0_N1
\a[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(29),
	o => \a[29]~input_o\);

-- Location: IOIBUF_X45_Y0_N22
\a[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(61),
	o => \a[61]~input_o\);

-- Location: LCCOMB_X2_Y5_N4
\Mux126~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~76_combout\ = (\amt[5]~input_o\ & ((\a[61]~input_o\))) # (!\amt[5]~input_o\ & (\a[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[29]~input_o\,
	datac => \amt[5]~input_o\,
	datad => \a[61]~input_o\,
	combout => \Mux126~76_combout\);

-- Location: LCCOMB_X1_Y6_N16
\Mux126~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~78_combout\ = (\amt[4]~input_o\ & ((\Mux126~76_combout\))) # (!\amt[4]~input_o\ & (\Mux126~77_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~77_combout\,
	datab => \amt[4]~input_o\,
	datac => \Mux126~76_combout\,
	combout => \Mux126~78_combout\);

-- Location: LCCOMB_X1_Y6_N20
\Mux126~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~154_combout\ = (\Mux126~153_combout\) # ((\Mux126~78_combout\ & !\amt[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~153_combout\,
	datab => \Mux126~78_combout\,
	datac => \amt[3]~input_o\,
	combout => \Mux126~154_combout\);

-- Location: LCCOMB_X1_Y6_N24
\Mux126~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~179_combout\ = (\Mux126~178_combout\) # ((!\amt[2]~input_o\ & \Mux126~154_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~178_combout\,
	datab => \amt[2]~input_o\,
	datad => \Mux126~154_combout\,
	combout => \Mux126~179_combout\);

-- Location: LCCOMB_X1_Y6_N26
\Mux126~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~180_combout\ = (\amt[1]~input_o\ & (\Mux126~179_combout\)) # (!\amt[1]~input_o\ & ((\Mux126~167_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux126~179_combout\,
	datac => \amt[1]~input_o\,
	datad => \Mux126~167_combout\,
	combout => \Mux126~180_combout\);

-- Location: LCCOMB_X1_Y7_N30
\Mux116~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux116~0_combout\ = (\amt[0]~input_o\ & (\Mux126~180_combout\)) # (!\amt[0]~input_o\ & ((\Mux126~174_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux126~180_combout\,
	datac => \amt[0]~input_o\,
	datad => \Mux126~174_combout\,
	combout => \Mux116~0_combout\);

-- Location: IOIBUF_X0_Y35_N1
\a[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(42),
	o => \a[42]~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\a[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(10),
	o => \a[10]~input_o\);

-- Location: LCCOMB_X1_Y4_N6
\Mux126~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~182_combout\ = (\amt[5]~input_o\ & (\lar[1]~input_o\ & ((\a[10]~input_o\)))) # (!\amt[5]~input_o\ & (((\a[42]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[1]~input_o\,
	datab => \a[42]~input_o\,
	datac => \amt[5]~input_o\,
	datad => \a[10]~input_o\,
	combout => \Mux126~182_combout\);

-- Location: LCCOMB_X1_Y4_N8
\Mux126~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~183_combout\ = (\Mux126~182_combout\) # ((!\lar[1]~input_o\ & (\Mux62~0_combout\ & \amt[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[1]~input_o\,
	datab => \Mux62~0_combout\,
	datac => \amt[5]~input_o\,
	datad => \Mux126~182_combout\,
	combout => \Mux126~183_combout\);

-- Location: IOIBUF_X0_Y23_N22
\a[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(26),
	o => \a[26]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\a[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(58),
	o => \a[58]~input_o\);

-- Location: LCCOMB_X1_Y4_N16
\Mux126~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~111_combout\ = (\amt[5]~input_o\ & ((\a[58]~input_o\))) # (!\amt[5]~input_o\ & (\a[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datac => \a[26]~input_o\,
	datad => \a[58]~input_o\,
	combout => \Mux126~111_combout\);

-- Location: LCCOMB_X1_Y4_N26
\Mux126~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~184_combout\ = (\amt[4]~input_o\ & (\Mux126~183_combout\)) # (!\amt[4]~input_o\ & ((\Mux126~111_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[4]~input_o\,
	datac => \Mux126~183_combout\,
	datad => \Mux126~111_combout\,
	combout => \Mux126~184_combout\);

-- Location: LCCOMB_X2_Y4_N16
\Mux126~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~185_combout\ = (\Mux126~181_combout\) # ((\amt[3]~input_o\ & \Mux126~184_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~181_combout\,
	datab => \amt[3]~input_o\,
	datac => \Mux126~184_combout\,
	combout => \Mux126~185_combout\);

-- Location: LCCOMB_X2_Y7_N6
\Mux126~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~186_combout\ = (\amt[1]~input_o\ & (\amt[2]~input_o\ & ((\Mux126~185_combout\)))) # (!\amt[1]~input_o\ & (((\Mux126~173_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datab => \amt[2]~input_o\,
	datac => \Mux126~173_combout\,
	datad => \Mux126~185_combout\,
	combout => \Mux126~186_combout\);

-- Location: LCCOMB_X2_Y7_N12
\Mux126~439\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~439_combout\ = (\Mux126~186_combout\) # ((\amt[1]~input_o\ & (\Mux126~160_combout\ & !\amt[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datab => \Mux126~160_combout\,
	datac => \amt[2]~input_o\,
	datad => \Mux126~186_combout\,
	combout => \Mux126~439_combout\);

-- Location: LCCOMB_X1_Y7_N16
\Mux115~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux115~0_combout\ = (\amt[0]~input_o\ & ((\Mux126~439_combout\))) # (!\amt[0]~input_o\ & (\Mux126~180_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \Mux126~180_combout\,
	datac => \Mux126~439_combout\,
	combout => \Mux115~0_combout\);

-- Location: LCCOMB_X3_Y5_N0
\Mux126~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~187_combout\ = (!\amt[3]~input_o\ & ((\amt[4]~input_o\ & (\Mux126~138_combout\)) # (!\amt[4]~input_o\ & ((\Mux126~81_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~138_combout\,
	datab => \amt[3]~input_o\,
	datac => \amt[4]~input_o\,
	datad => \Mux126~81_combout\,
	combout => \Mux126~187_combout\);

-- Location: LCCOMB_X2_Y9_N16
\Mux126~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~191_combout\ = (\Mux126~187_combout\) # ((\Mux126~190_combout\ & \amt[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~190_combout\,
	datac => \Mux126~187_combout\,
	datad => \amt[3]~input_o\,
	combout => \Mux126~191_combout\);

-- Location: LCCOMB_X1_Y6_N28
\Mux126~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~192_combout\ = (\amt[1]~input_o\ & (\amt[2]~input_o\ & ((\Mux126~191_combout\)))) # (!\amt[1]~input_o\ & (((\Mux126~179_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datab => \Mux126~179_combout\,
	datac => \amt[1]~input_o\,
	datad => \Mux126~191_combout\,
	combout => \Mux126~192_combout\);

-- Location: LCCOMB_X1_Y6_N14
\Mux126~440\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~440_combout\ = (\Mux126~192_combout\) # ((\Mux126~166_combout\ & (!\amt[2]~input_o\ & \amt[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~166_combout\,
	datab => \amt[2]~input_o\,
	datac => \amt[1]~input_o\,
	datad => \Mux126~192_combout\,
	combout => \Mux126~440_combout\);

-- Location: LCCOMB_X1_Y7_N10
\Mux114~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux114~0_combout\ = (\amt[0]~input_o\ & (\Mux126~440_combout\)) # (!\amt[0]~input_o\ & ((\Mux126~439_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~440_combout\,
	datab => \Mux126~439_combout\,
	datac => \amt[0]~input_o\,
	combout => \Mux114~0_combout\);

-- Location: LCCOMB_X6_Y8_N6
\Mux126~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~198_combout\ = (\amt[4]~input_o\ & (\Mux126~197_combout\)) # (!\amt[4]~input_o\ & ((\Mux126~104_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~197_combout\,
	datac => \amt[4]~input_o\,
	datad => \Mux126~104_combout\,
	combout => \Mux126~198_combout\);

-- Location: LCCOMB_X5_Y7_N12
\Mux126~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~144_combout\ = (\amt[5]~input_o\ & (((\lar[1]~input_o\ & \a[4]~input_o\)))) # (!\amt[5]~input_o\ & (\a[36]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[36]~input_o\,
	datab => \lar[1]~input_o\,
	datac => \a[4]~input_o\,
	datad => \amt[5]~input_o\,
	combout => \Mux126~144_combout\);

-- Location: LCCOMB_X5_Y7_N6
\Mux126~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~145_combout\ = (\Mux126~144_combout\) # ((\amt[5]~input_o\ & (!\lar[1]~input_o\ & \Mux62~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \lar[1]~input_o\,
	datac => \Mux62~0_combout\,
	datad => \Mux126~144_combout\,
	combout => \Mux126~145_combout\);

-- Location: LCCOMB_X5_Y7_N20
\Mux126~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~195_combout\ = (!\amt[3]~input_o\ & ((\amt[4]~input_o\ & ((\Mux126~145_combout\))) # (!\amt[4]~input_o\ & (\Mux126~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datab => \Mux126~102_combout\,
	datac => \amt[4]~input_o\,
	datad => \Mux126~145_combout\,
	combout => \Mux126~195_combout\);

-- Location: LCCOMB_X6_Y7_N20
\Mux126~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~199_combout\ = (\Mux126~195_combout\) # ((\amt[3]~input_o\ & \Mux126~198_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datab => \Mux126~198_combout\,
	datad => \Mux126~195_combout\,
	combout => \Mux126~199_combout\);

-- Location: LCCOMB_X6_Y7_N10
\Mux126~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~194_combout\ = (!\amt[2]~input_o\ & ((\amt[3]~input_o\ & ((\Mux126~171_combout\))) # (!\amt[3]~input_o\ & (\Mux126~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~120_combout\,
	datab => \amt[2]~input_o\,
	datac => \amt[3]~input_o\,
	datad => \Mux126~171_combout\,
	combout => \Mux126~194_combout\);

-- Location: LCCOMB_X6_Y7_N22
\Mux126~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~200_combout\ = (\Mux126~194_combout\) # ((\Mux126~199_combout\ & \amt[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux126~199_combout\,
	datac => \amt[2]~input_o\,
	datad => \Mux126~194_combout\,
	combout => \Mux126~200_combout\);

-- Location: LCCOMB_X2_Y7_N16
\Mux126~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~193_combout\ = (!\amt[1]~input_o\ & ((\amt[2]~input_o\ & ((\Mux126~185_combout\))) # (!\amt[2]~input_o\ & (\Mux126~160_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datab => \amt[2]~input_o\,
	datac => \Mux126~160_combout\,
	datad => \Mux126~185_combout\,
	combout => \Mux126~193_combout\);

-- Location: LCCOMB_X1_Y7_N28
\Mux126~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~201_combout\ = (\Mux126~193_combout\) # ((\amt[1]~input_o\ & \Mux126~200_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \Mux126~200_combout\,
	datad => \Mux126~193_combout\,
	combout => \Mux126~201_combout\);

-- Location: LCCOMB_X1_Y7_N6
\Mux113~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux113~0_combout\ = (\amt[0]~input_o\ & ((\Mux126~201_combout\))) # (!\amt[0]~input_o\ & (\Mux126~440_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~440_combout\,
	datac => \amt[0]~input_o\,
	datad => \Mux126~201_combout\,
	combout => \Mux113~0_combout\);

-- Location: LCCOMB_X1_Y6_N30
\Mux126~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~202_combout\ = (!\amt[1]~input_o\ & ((\amt[2]~input_o\ & ((\Mux126~191_combout\))) # (!\amt[2]~input_o\ & (\Mux126~166_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~166_combout\,
	datab => \amt[2]~input_o\,
	datac => \amt[1]~input_o\,
	datad => \Mux126~191_combout\,
	combout => \Mux126~202_combout\);

-- Location: LCCOMB_X3_Y6_N14
\Mux126~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~204_combout\ = (!\amt[3]~input_o\ & ((\amt[4]~input_o\ & (\Mux126~152_combout\)) # (!\amt[4]~input_o\ & ((\Mux126~74_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~152_combout\,
	datab => \amt[4]~input_o\,
	datac => \amt[3]~input_o\,
	datad => \Mux126~74_combout\,
	combout => \Mux126~204_combout\);

-- Location: LCCOMB_X4_Y6_N26
\Mux126~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~208_combout\ = (\Mux126~204_combout\) # ((\Mux126~207_combout\ & \amt[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~207_combout\,
	datac => \amt[3]~input_o\,
	datad => \Mux126~204_combout\,
	combout => \Mux126~208_combout\);

-- Location: LCCOMB_X3_Y9_N8
\Mux126~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~176_combout\ = (\Mux126~175_combout\) # ((!\lar[1]~input_o\ & (\amt[5]~input_o\ & \Mux62~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~175_combout\,
	datab => \lar[1]~input_o\,
	datac => \amt[5]~input_o\,
	datad => \Mux62~0_combout\,
	combout => \Mux126~176_combout\);

-- Location: LCCOMB_X5_Y6_N24
\Mux126~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~177_combout\ = (\amt[4]~input_o\ & ((\Mux126~176_combout\))) # (!\amt[4]~input_o\ & (\Mux126~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~62_combout\,
	datab => \amt[4]~input_o\,
	datac => \Mux126~176_combout\,
	combout => \Mux126~177_combout\);

-- Location: LCCOMB_X5_Y6_N12
\Mux126~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~203_combout\ = (!\amt[2]~input_o\ & ((\amt[3]~input_o\ & ((\Mux126~177_combout\))) # (!\amt[3]~input_o\ & (\Mux126~127_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datab => \amt[2]~input_o\,
	datac => \Mux126~127_combout\,
	datad => \Mux126~177_combout\,
	combout => \Mux126~203_combout\);

-- Location: LCCOMB_X5_Y6_N14
\Mux126~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~209_combout\ = (\Mux126~203_combout\) # ((\amt[2]~input_o\ & \Mux126~208_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[2]~input_o\,
	datac => \Mux126~208_combout\,
	datad => \Mux126~203_combout\,
	combout => \Mux126~209_combout\);

-- Location: LCCOMB_X1_Y7_N24
\Mux126~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~210_combout\ = (\Mux126~202_combout\) # ((\amt[1]~input_o\ & \Mux126~209_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datab => \Mux126~202_combout\,
	datad => \Mux126~209_combout\,
	combout => \Mux126~210_combout\);

-- Location: LCCOMB_X1_Y7_N26
\Mux112~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux112~0_combout\ = (\amt[0]~input_o\ & (\Mux126~210_combout\)) # (!\amt[0]~input_o\ & ((\Mux126~201_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux126~210_combout\,
	datac => \amt[0]~input_o\,
	datad => \Mux126~201_combout\,
	combout => \Mux112~0_combout\);

-- Location: LCCOMB_X3_Y4_N6
\Mux126~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~214_combout\ = (\amt[4]~input_o\ & (\Mux126~213_combout\)) # (!\amt[4]~input_o\ & ((\Mux126~98_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~213_combout\,
	datac => \amt[4]~input_o\,
	datad => \Mux126~98_combout\,
	combout => \Mux126~214_combout\);

-- Location: LCCOMB_X2_Y4_N18
\Mux126~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~215_combout\ = (\Mux126~211_combout\) # ((\amt[3]~input_o\ & \Mux126~214_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~211_combout\,
	datab => \amt[3]~input_o\,
	datad => \Mux126~214_combout\,
	combout => \Mux126~215_combout\);

-- Location: LCCOMB_X2_Y4_N20
\Mux126~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~216_combout\ = (\amt[2]~input_o\ & (\Mux126~215_combout\)) # (!\amt[2]~input_o\ & ((\Mux126~185_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux126~215_combout\,
	datac => \amt[2]~input_o\,
	datad => \Mux126~185_combout\,
	combout => \Mux126~216_combout\);

-- Location: LCCOMB_X1_Y7_N4
\Mux126~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~217_combout\ = (\amt[1]~input_o\ & ((\Mux126~216_combout\))) # (!\amt[1]~input_o\ & (\Mux126~200_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \Mux126~200_combout\,
	datad => \Mux126~216_combout\,
	combout => \Mux126~217_combout\);

-- Location: LCCOMB_X1_Y7_N22
\Mux111~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux111~0_combout\ = (\amt[0]~input_o\ & (\Mux126~217_combout\)) # (!\amt[0]~input_o\ & ((\Mux126~210_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[0]~input_o\,
	datac => \Mux126~217_combout\,
	datad => \Mux126~210_combout\,
	combout => \Mux111~0_combout\);

-- Location: LCCOMB_X1_Y6_N0
\Mux126~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~222_combout\ = (\amt[2]~input_o\ & (\Mux126~221_combout\)) # (!\amt[2]~input_o\ & ((\Mux126~191_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~221_combout\,
	datab => \amt[2]~input_o\,
	datad => \Mux126~191_combout\,
	combout => \Mux126~222_combout\);

-- Location: LCCOMB_X1_Y7_N0
\Mux126~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~223_combout\ = (\amt[1]~input_o\ & (\Mux126~222_combout\)) # (!\amt[1]~input_o\ & ((\Mux126~209_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datab => \Mux126~222_combout\,
	datad => \Mux126~209_combout\,
	combout => \Mux126~223_combout\);

-- Location: LCCOMB_X1_Y7_N18
\Mux110~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux110~0_combout\ = (\amt[0]~input_o\ & ((\Mux126~223_combout\))) # (!\amt[0]~input_o\ & (\Mux126~217_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux126~217_combout\,
	datac => \amt[0]~input_o\,
	datad => \Mux126~223_combout\,
	combout => \Mux110~0_combout\);

-- Location: LCCOMB_X6_Y7_N16
\Mux126~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~227_combout\ = (\amt[2]~input_o\ & ((\amt[3]~input_o\ & (\Mux126~226_combout\)) # (!\amt[3]~input_o\ & ((\Mux126~171_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~226_combout\,
	datab => \amt[2]~input_o\,
	datac => \amt[3]~input_o\,
	datad => \Mux126~171_combout\,
	combout => \Mux126~227_combout\);

-- Location: LCCOMB_X6_Y7_N2
\Mux126~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~228_combout\ = (\Mux126~227_combout\) # ((\Mux126~199_combout\ & !\amt[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux126~199_combout\,
	datac => \amt[2]~input_o\,
	datad => \Mux126~227_combout\,
	combout => \Mux126~228_combout\);

-- Location: LCCOMB_X1_Y7_N20
\Mux126~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~229_combout\ = (\amt[1]~input_o\ & (\Mux126~228_combout\)) # (!\amt[1]~input_o\ & ((\Mux126~216_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \Mux126~228_combout\,
	datad => \Mux126~216_combout\,
	combout => \Mux126~229_combout\);

-- Location: LCCOMB_X1_Y7_N14
\Mux109~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux109~0_combout\ = (\amt[0]~input_o\ & ((\Mux126~229_combout\))) # (!\amt[0]~input_o\ & (\Mux126~223_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux126~223_combout\,
	datac => \amt[0]~input_o\,
	datad => \Mux126~229_combout\,
	combout => \Mux109~0_combout\);

-- Location: LCCOMB_X4_Y6_N14
\Mux126~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~234_combout\ = (\Mux126~233_combout\) # ((!\amt[2]~input_o\ & \Mux126~208_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~233_combout\,
	datab => \amt[2]~input_o\,
	datac => \Mux126~208_combout\,
	combout => \Mux126~234_combout\);

-- Location: LCCOMB_X3_Y7_N12
\Mux126~235\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~235_combout\ = (\amt[1]~input_o\ & ((\Mux126~234_combout\))) # (!\amt[1]~input_o\ & (\Mux126~222_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux126~222_combout\,
	datac => \amt[1]~input_o\,
	datad => \Mux126~234_combout\,
	combout => \Mux126~235_combout\);

-- Location: LCCOMB_X3_Y7_N6
\Mux108~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux108~0_combout\ = (\amt[0]~input_o\ & ((\Mux126~235_combout\))) # (!\amt[0]~input_o\ & (\Mux126~229_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux126~229_combout\,
	datac => \amt[0]~input_o\,
	datad => \Mux126~235_combout\,
	combout => \Mux108~0_combout\);

-- Location: LCCOMB_X2_Y4_N8
\Mux126~238\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~238_combout\ = (\Mux126~237_combout\) # ((!\amt[2]~input_o\ & \Mux126~215_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~237_combout\,
	datac => \amt[2]~input_o\,
	datad => \Mux126~215_combout\,
	combout => \Mux126~238_combout\);

-- Location: LCCOMB_X3_Y7_N0
\Mux107~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux107~0_combout\ = (\amt[0]~input_o\ & ((\amt[1]~input_o\ & (\Mux126~238_combout\)) # (!\amt[1]~input_o\ & ((\Mux126~228_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datab => \Mux126~238_combout\,
	datac => \Mux126~228_combout\,
	datad => \amt[0]~input_o\,
	combout => \Mux107~0_combout\);

-- Location: LCCOMB_X3_Y7_N26
\Mux107~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux107~1_combout\ = (\Mux107~0_combout\) # ((!\amt[0]~input_o\ & \Mux126~235_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux107~0_combout\,
	datac => \amt[0]~input_o\,
	datad => \Mux126~235_combout\,
	combout => \Mux107~1_combout\);

-- Location: LCCOMB_X3_Y7_N30
\Mux106~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux106~1_combout\ = (!\amt[0]~input_o\ & ((\amt[1]~input_o\ & (\Mux126~238_combout\)) # (!\amt[1]~input_o\ & ((\Mux126~228_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datab => \Mux126~238_combout\,
	datac => \Mux126~228_combout\,
	datad => \amt[0]~input_o\,
	combout => \Mux106~1_combout\);

-- Location: LCCOMB_X3_Y7_N4
\Mux106~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux106~0_combout\ = (!\amt[1]~input_o\ & (\amt[0]~input_o\ & \Mux126~234_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \amt[0]~input_o\,
	datad => \Mux126~234_combout\,
	combout => \Mux106~0_combout\);

-- Location: LCCOMB_X3_Y5_N28
\Mux43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~0_combout\ = (\lar[1]~input_o\ & (((\a[19]~input_o\)))) # (!\lar[1]~input_o\ & (\a[63]~input_o\ & (\lar[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[63]~input_o\,
	datab => \lar[0]~input_o\,
	datac => \a[19]~input_o\,
	datad => \lar[1]~input_o\,
	combout => \Mux43~0_combout\);

-- Location: LCCOMB_X3_Y5_N18
\Mux126~443\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~443_combout\ = (\Mux126~239_combout\) # ((\amt[5]~input_o\ & (\amt[4]~input_o\ & \Mux43~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~239_combout\,
	datab => \amt[5]~input_o\,
	datac => \amt[4]~input_o\,
	datad => \Mux43~0_combout\,
	combout => \Mux126~443_combout\);

-- Location: LCCOMB_X1_Y9_N24
\Mux126~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~189_combout\ = (\Mux126~188_combout\) # ((!\lar[1]~input_o\ & (\amt[5]~input_o\ & \Mux62~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~188_combout\,
	datab => \lar[1]~input_o\,
	datac => \amt[5]~input_o\,
	datad => \Mux62~0_combout\,
	combout => \Mux126~189_combout\);

-- Location: LCCOMB_X1_Y9_N2
\Mux126~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~190_combout\ = (\amt[4]~input_o\ & (\Mux126~189_combout\)) # (!\amt[4]~input_o\ & ((\Mux126~83_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \Mux126~189_combout\,
	datad => \Mux126~83_combout\,
	combout => \Mux126~190_combout\);

-- Location: LCCOMB_X2_Y9_N28
\Mux126~240\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~240_combout\ = (\amt[2]~input_o\ & ((\amt[3]~input_o\ & (\Mux126~443_combout\)) # (!\amt[3]~input_o\ & ((\Mux126~190_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datab => \amt[3]~input_o\,
	datac => \Mux126~443_combout\,
	datad => \Mux126~190_combout\,
	combout => \Mux126~240_combout\);

-- Location: IOIBUF_X0_Y26_N15
\a[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(39),
	o => \a[39]~input_o\);

-- Location: LCCOMB_X2_Y6_N2
\Mux126~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~163_combout\ = (\amt[5]~input_o\ & (\lar[1]~input_o\ & (\a[7]~input_o\))) # (!\amt[5]~input_o\ & (((\a[39]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[1]~input_o\,
	datab => \amt[5]~input_o\,
	datac => \a[7]~input_o\,
	datad => \a[39]~input_o\,
	combout => \Mux126~163_combout\);

-- Location: LCCOMB_X4_Y6_N16
\Mux126~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~164_combout\ = (\Mux126~163_combout\) # ((\amt[5]~input_o\ & (!\lar[1]~input_o\ & \Mux62~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \Mux126~163_combout\,
	datac => \lar[1]~input_o\,
	datad => \Mux62~0_combout\,
	combout => \Mux126~164_combout\);

-- Location: LCCOMB_X3_Y9_N10
\Mux126~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~218_combout\ = (!\amt[3]~input_o\ & ((\amt[4]~input_o\ & ((\Mux126~164_combout\))) # (!\amt[4]~input_o\ & (\Mux126~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \Mux126~67_combout\,
	datac => \amt[3]~input_o\,
	datad => \Mux126~164_combout\,
	combout => \Mux126~218_combout\);

-- Location: IOIBUF_X0_Y25_N15
\a[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(15),
	o => \a[15]~input_o\);

-- Location: LCCOMB_X4_Y9_N8
\Mux47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux47~0_combout\ = (\lar[1]~input_o\ & (((\a[15]~input_o\)))) # (!\lar[1]~input_o\ & (\lar[0]~input_o\ & ((\a[63]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[0]~input_o\,
	datab => \lar[1]~input_o\,
	datac => \a[15]~input_o\,
	datad => \a[63]~input_o\,
	combout => \Mux47~0_combout\);

-- Location: LCCOMB_X4_Y9_N12
\Mux126~441\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~441_combout\ = (\Mux126~219_combout\) # ((\amt[4]~input_o\ & (\Mux47~0_combout\ & \amt[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~219_combout\,
	datab => \amt[4]~input_o\,
	datac => \Mux47~0_combout\,
	datad => \amt[5]~input_o\,
	combout => \Mux126~441_combout\);

-- Location: LCCOMB_X2_Y9_N2
\Mux126~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~221_combout\ = (\Mux126~218_combout\) # ((\amt[3]~input_o\ & \Mux126~441_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[3]~input_o\,
	datac => \Mux126~218_combout\,
	datad => \Mux126~441_combout\,
	combout => \Mux126~221_combout\);

-- Location: LCCOMB_X2_Y9_N22
\Mux126~241\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~241_combout\ = (\Mux126~240_combout\) # ((!\amt[2]~input_o\ & \Mux126~221_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux126~240_combout\,
	datac => \amt[2]~input_o\,
	datad => \Mux126~221_combout\,
	combout => \Mux126~241_combout\);

-- Location: LCCOMB_X4_Y7_N8
\Mux106~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux106~2_combout\ = (\amt[0]~input_o\ & \amt[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datac => \amt[1]~input_o\,
	combout => \Mux106~2_combout\);

-- Location: LCCOMB_X3_Y7_N8
\Mux106~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux106~3_combout\ = (\Mux106~1_combout\) # ((\Mux106~0_combout\) # ((\Mux126~241_combout\ & \Mux106~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux106~1_combout\,
	datab => \Mux106~0_combout\,
	datac => \Mux126~241_combout\,
	datad => \Mux106~2_combout\,
	combout => \Mux106~3_combout\);

-- Location: LCCOMB_X3_Y7_N14
\Mux106~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux106~4_combout\ = (!\amt[1]~input_o\ & \amt[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \amt[0]~input_o\,
	combout => \Mux106~4_combout\);

-- Location: LCCOMB_X3_Y7_N28
\Mux105~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux105~1_combout\ = (!\amt[1]~input_o\ & (!\amt[0]~input_o\ & \Mux126~234_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \amt[0]~input_o\,
	datad => \Mux126~234_combout\,
	combout => \Mux105~1_combout\);

-- Location: IOIBUF_X38_Y0_N8
\a[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(48),
	o => \a[48]~input_o\);

-- Location: LCCOMB_X7_Y7_N24
\Mux126~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~225_combout\ = (!\amt[5]~input_o\ & (\amt[4]~input_o\ & \a[48]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datac => \amt[4]~input_o\,
	datad => \a[48]~input_o\,
	combout => \Mux126~225_combout\);

-- Location: IOIBUF_X18_Y0_N22
\a[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: LCCOMB_X7_Y7_N16
\Mux126~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~118_combout\ = (\amt[5]~input_o\ & (((\lar[1]~input_o\ & \a[0]~input_o\)))) # (!\amt[5]~input_o\ & (\a[32]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[32]~input_o\,
	datab => \lar[1]~input_o\,
	datac => \a[0]~input_o\,
	datad => \amt[5]~input_o\,
	combout => \Mux126~118_combout\);

-- Location: LCCOMB_X7_Y7_N26
\Mux126~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~119_combout\ = (\Mux126~118_combout\) # ((\amt[5]~input_o\ & (!\lar[1]~input_o\ & \Mux62~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \lar[1]~input_o\,
	datac => \Mux62~0_combout\,
	datad => \Mux126~118_combout\,
	combout => \Mux126~119_combout\);

-- Location: LCCOMB_X7_Y7_N2
\Mux126~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~226_combout\ = (\Mux126~224_combout\) # ((\Mux126~225_combout\) # ((\Mux126~119_combout\ & !\amt[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~224_combout\,
	datab => \Mux126~225_combout\,
	datac => \Mux126~119_combout\,
	datad => \amt[4]~input_o\,
	combout => \Mux126~226_combout\);

-- Location: LCCOMB_X6_Y7_N28
\Mux126~242\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~242_combout\ = (!\amt[2]~input_o\ & (\amt[3]~input_o\ & \Mux126~226_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[2]~input_o\,
	datac => \amt[3]~input_o\,
	datad => \Mux126~226_combout\,
	combout => \Mux126~242_combout\);

-- Location: LCCOMB_X6_Y7_N30
\Mux126~243\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~243_combout\ = (!\amt[3]~input_o\ & ((\amt[2]~input_o\ & (\Mux126~198_combout\)) # (!\amt[2]~input_o\ & ((\Mux126~171_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datab => \Mux126~198_combout\,
	datac => \amt[2]~input_o\,
	datad => \Mux126~171_combout\,
	combout => \Mux126~243_combout\);

-- Location: LCCOMB_X4_Y6_N0
\Mux126~244\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~244_combout\ = (\amt[3]~input_o\ & \amt[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datad => \amt[2]~input_o\,
	combout => \Mux126~244_combout\);

-- Location: LCCOMB_X6_Y7_N0
\Mux126~246\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~246_combout\ = (\Mux126~242_combout\) # ((\Mux126~243_combout\) # ((\Mux126~444_combout\ & \Mux126~244_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~444_combout\,
	datab => \Mux126~242_combout\,
	datac => \Mux126~243_combout\,
	datad => \Mux126~244_combout\,
	combout => \Mux126~246_combout\);

-- Location: LCCOMB_X3_Y7_N2
\Mux105~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux105~0_combout\ = (\amt[1]~input_o\ & ((\amt[0]~input_o\ & ((\Mux126~246_combout\))) # (!\amt[0]~input_o\ & (\Mux126~241_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datab => \amt[0]~input_o\,
	datac => \Mux126~241_combout\,
	datad => \Mux126~246_combout\,
	combout => \Mux105~0_combout\);

-- Location: LCCOMB_X3_Y7_N24
\Mux105~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux105~2_combout\ = (\Mux105~1_combout\) # ((\Mux105~0_combout\) # ((\Mux106~4_combout\ & \Mux126~238_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux106~4_combout\,
	datab => \Mux105~1_combout\,
	datac => \Mux126~238_combout\,
	datad => \Mux105~0_combout\,
	combout => \Mux105~2_combout\);

-- Location: LCCOMB_X3_Y8_N0
\Mux104~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux104~0_combout\ = (\amt[0]~input_o\ & ((\Mux126~250_combout\) # ((!\amt[1]~input_o\)))) # (!\amt[0]~input_o\ & (((\Mux126~246_combout\ & \amt[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~250_combout\,
	datab => \Mux126~246_combout\,
	datac => \amt[0]~input_o\,
	datad => \amt[1]~input_o\,
	combout => \Mux104~0_combout\);

-- Location: LCCOMB_X3_Y7_N18
\Mux104~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux104~1_combout\ = (\Mux104~0_combout\ & ((\Mux126~241_combout\) # ((\amt[1]~input_o\)))) # (!\Mux104~0_combout\ & (((\Mux126~238_combout\ & !\amt[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~241_combout\,
	datab => \Mux126~238_combout\,
	datac => \Mux104~0_combout\,
	datad => \amt[1]~input_o\,
	combout => \Mux104~1_combout\);

-- Location: LCCOMB_X3_Y7_N20
\Mux103~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux103~0_combout\ = (!\amt[1]~input_o\ & (!\amt[0]~input_o\ & \Mux126~241_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datab => \amt[0]~input_o\,
	datac => \Mux126~241_combout\,
	combout => \Mux103~0_combout\);

-- Location: LCCOMB_X4_Y6_N28
\Mux126~248\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~248_combout\ = (!\amt[3]~input_o\ & ((\amt[2]~input_o\ & (\Mux126~207_combout\)) # (!\amt[2]~input_o\ & ((\Mux126~177_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~207_combout\,
	datab => \amt[2]~input_o\,
	datac => \amt[3]~input_o\,
	datad => \Mux126~177_combout\,
	combout => \Mux126~248_combout\);

-- Location: LCCOMB_X3_Y6_N12
\Mux126~249\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~249_combout\ = (\amt[4]~input_o\ & (((!\amt[5]~input_o\ & \a[53]~input_o\)))) # (!\amt[4]~input_o\ & (\Mux126~152_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~152_combout\,
	datab => \amt[4]~input_o\,
	datac => \amt[5]~input_o\,
	datad => \a[53]~input_o\,
	combout => \Mux126~249_combout\);

-- Location: LCCOMB_X3_Y6_N4
\Mux126~445\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~445_combout\ = (\Mux126~249_combout\) # ((\Mux41~0_combout\ & (\amt[4]~input_o\ & \amt[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux41~0_combout\,
	datab => \amt[4]~input_o\,
	datac => \amt[5]~input_o\,
	datad => \Mux126~249_combout\,
	combout => \Mux126~445_combout\);

-- Location: LCCOMB_X4_Y6_N6
\Mux126~250\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~250_combout\ = (\Mux126~247_combout\) # ((\Mux126~248_combout\) # ((\Mux126~445_combout\ & \Mux126~244_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~247_combout\,
	datab => \Mux126~248_combout\,
	datac => \Mux126~445_combout\,
	datad => \Mux126~244_combout\,
	combout => \Mux126~250_combout\);

-- Location: LCCOMB_X3_Y8_N2
\Mux103~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux103~1_combout\ = (\amt[1]~input_o\ & ((\amt[0]~input_o\ & (\Mux126~254_combout\)) # (!\amt[0]~input_o\ & ((\Mux126~250_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~254_combout\,
	datab => \amt[1]~input_o\,
	datac => \amt[0]~input_o\,
	datad => \Mux126~250_combout\,
	combout => \Mux103~1_combout\);

-- Location: LCCOMB_X3_Y7_N22
\Mux103~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux103~2_combout\ = (\Mux103~0_combout\) # ((\Mux103~1_combout\) # ((\Mux106~4_combout\ & \Mux126~246_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux106~4_combout\,
	datab => \Mux103~0_combout\,
	datac => \Mux103~1_combout\,
	datad => \Mux126~246_combout\,
	combout => \Mux103~2_combout\);

-- Location: LCCOMB_X2_Y5_N2
\Mux126~253\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~253_combout\ = (\amt[4]~input_o\ & (!\amt[5]~input_o\ & (\a[54]~input_o\))) # (!\amt[4]~input_o\ & (((\Mux126~158_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \a[54]~input_o\,
	datac => \Mux126~158_combout\,
	datad => \amt[4]~input_o\,
	combout => \Mux126~253_combout\);

-- Location: LCCOMB_X4_Y6_N4
\Mux126~446\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~446_combout\ = (\Mux126~253_combout\) # ((\Mux40~0_combout\ & (\amt[4]~input_o\ & \amt[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux40~0_combout\,
	datab => \amt[4]~input_o\,
	datac => \amt[5]~input_o\,
	datad => \Mux126~253_combout\,
	combout => \Mux126~446_combout\);

-- Location: LCCOMB_X1_Y4_N28
\Mux44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux44~0_combout\ = (\lar[1]~input_o\ & (\a[18]~input_o\)) # (!\lar[1]~input_o\ & (((\lar[0]~input_o\ & \a[63]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[18]~input_o\,
	datab => \lar[1]~input_o\,
	datac => \lar[0]~input_o\,
	datad => \a[63]~input_o\,
	combout => \Mux44~0_combout\);

-- Location: LCCOMB_X1_Y4_N2
\Mux126~442\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~442_combout\ = (\Mux126~236_combout\) # ((\amt[4]~input_o\ & (\amt[5]~input_o\ & \Mux44~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~236_combout\,
	datab => \amt[4]~input_o\,
	datac => \amt[5]~input_o\,
	datad => \Mux44~0_combout\,
	combout => \Mux126~442_combout\);

-- Location: LCCOMB_X2_Y4_N26
\Mux126~251\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~251_combout\ = (\amt[3]~input_o\ & (!\amt[2]~input_o\ & \Mux126~442_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[3]~input_o\,
	datac => \amt[2]~input_o\,
	datad => \Mux126~442_combout\,
	combout => \Mux126~251_combout\);

-- Location: LCCOMB_X2_Y4_N14
\Mux126~254\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~254_combout\ = (\Mux126~252_combout\) # ((\Mux126~251_combout\) # ((\Mux126~446_combout\ & \Mux126~244_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~252_combout\,
	datab => \Mux126~446_combout\,
	datac => \Mux126~251_combout\,
	datad => \Mux126~244_combout\,
	combout => \Mux126~254_combout\);

-- Location: LCCOMB_X3_Y9_N4
\Mux126~257\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~257_combout\ = (\amt[4]~input_o\ & (\a[55]~input_o\ & (!\amt[5]~input_o\))) # (!\amt[4]~input_o\ & (((\Mux126~164_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \a[55]~input_o\,
	datac => \amt[5]~input_o\,
	datad => \Mux126~164_combout\,
	combout => \Mux126~257_combout\);

-- Location: LCCOMB_X3_Y9_N22
\Mux39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux39~0_combout\ = (\lar[1]~input_o\ & (((\a[23]~input_o\)))) # (!\lar[1]~input_o\ & (\lar[0]~input_o\ & ((\a[63]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[1]~input_o\,
	datab => \lar[0]~input_o\,
	datac => \a[23]~input_o\,
	datad => \a[63]~input_o\,
	combout => \Mux39~0_combout\);

-- Location: LCCOMB_X3_Y9_N12
\Mux126~447\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~447_combout\ = (\Mux126~257_combout\) # ((\amt[4]~input_o\ & (\Mux39~0_combout\ & \amt[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \Mux126~257_combout\,
	datac => \Mux39~0_combout\,
	datad => \amt[5]~input_o\,
	combout => \Mux126~447_combout\);

-- Location: LCCOMB_X2_Y9_N0
\Mux126~255\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~255_combout\ = (\Mux126~443_combout\ & (!\amt[2]~input_o\ & \amt[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~443_combout\,
	datac => \amt[2]~input_o\,
	datad => \amt[3]~input_o\,
	combout => \Mux126~255_combout\);

-- Location: LCCOMB_X2_Y9_N12
\Mux126~258\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~258_combout\ = (\Mux126~256_combout\) # ((\Mux126~255_combout\) # ((\Mux126~447_combout\ & \Mux126~244_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~256_combout\,
	datab => \Mux126~447_combout\,
	datac => \Mux126~244_combout\,
	datad => \Mux126~255_combout\,
	combout => \Mux126~258_combout\);

-- Location: LCCOMB_X3_Y8_N20
\Mux102~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux102~0_combout\ = (\amt[0]~input_o\ & ((\Mux126~250_combout\) # ((\amt[1]~input_o\)))) # (!\amt[0]~input_o\ & (((\Mux126~246_combout\ & !\amt[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~250_combout\,
	datab => \Mux126~246_combout\,
	datac => \amt[0]~input_o\,
	datad => \amt[1]~input_o\,
	combout => \Mux102~0_combout\);

-- Location: LCCOMB_X3_Y8_N6
\Mux102~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux102~1_combout\ = (\amt[1]~input_o\ & ((\Mux102~0_combout\ & ((\Mux126~258_combout\))) # (!\Mux102~0_combout\ & (\Mux126~254_combout\)))) # (!\amt[1]~input_o\ & (((\Mux102~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~254_combout\,
	datab => \Mux126~258_combout\,
	datac => \amt[1]~input_o\,
	datad => \Mux102~0_combout\,
	combout => \Mux102~1_combout\);

-- Location: LCCOMB_X5_Y7_N14
\Mux126~245\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~245_combout\ = (\amt[4]~input_o\ & (!\amt[5]~input_o\ & (\a[52]~input_o\))) # (!\amt[4]~input_o\ & (((\Mux126~145_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \a[52]~input_o\,
	datac => \amt[4]~input_o\,
	datad => \Mux126~145_combout\,
	combout => \Mux126~245_combout\);

-- Location: LCCOMB_X5_Y7_N24
\Mux42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux42~0_combout\ = (\lar[1]~input_o\ & (((\a[20]~input_o\)))) # (!\lar[1]~input_o\ & (\lar[0]~input_o\ & (\a[63]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[0]~input_o\,
	datab => \lar[1]~input_o\,
	datac => \a[63]~input_o\,
	datad => \a[20]~input_o\,
	combout => \Mux42~0_combout\);

-- Location: LCCOMB_X5_Y7_N26
\Mux126~444\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~444_combout\ = (\Mux126~245_combout\) # ((\amt[5]~input_o\ & (\amt[4]~input_o\ & \Mux42~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \Mux126~245_combout\,
	datac => \amt[4]~input_o\,
	datad => \Mux42~0_combout\,
	combout => \Mux126~444_combout\);

-- Location: LCCOMB_X7_Y8_N22
\Mux126~259\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~259_combout\ = (\amt[4]~input_o\ & (\a[56]~input_o\ & ((!\amt[5]~input_o\)))) # (!\amt[4]~input_o\ & (((\Mux126~170_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[56]~input_o\,
	datab => \Mux126~170_combout\,
	datac => \amt[4]~input_o\,
	datad => \amt[5]~input_o\,
	combout => \Mux126~259_combout\);

-- Location: LCCOMB_X7_Y8_N24
\Mux38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux38~0_combout\ = (\lar[1]~input_o\ & (((\a[24]~input_o\)))) # (!\lar[1]~input_o\ & (\a[63]~input_o\ & (\lar[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[63]~input_o\,
	datab => \lar[0]~input_o\,
	datac => \lar[1]~input_o\,
	datad => \a[24]~input_o\,
	combout => \Mux38~0_combout\);

-- Location: LCCOMB_X7_Y8_N20
\Mux126~448\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~448_combout\ = (\Mux126~259_combout\) # ((\amt[4]~input_o\ & (\amt[5]~input_o\ & \Mux38~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \amt[5]~input_o\,
	datac => \Mux126~259_combout\,
	datad => \Mux38~0_combout\,
	combout => \Mux126~448_combout\);

-- Location: LCCOMB_X5_Y8_N0
\Mux126~260\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~260_combout\ = (\amt[3]~input_o\ & ((\amt[2]~input_o\ & ((\Mux126~448_combout\))) # (!\amt[2]~input_o\ & (\Mux126~444_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datab => \Mux126~444_combout\,
	datac => \Mux126~448_combout\,
	datad => \amt[3]~input_o\,
	combout => \Mux126~260_combout\);

-- Location: LCCOMB_X2_Y9_N14
\Mux126~263\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~263_combout\ = (\amt[2]~input_o\ & !\amt[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \amt[2]~input_o\,
	datad => \amt[3]~input_o\,
	combout => \Mux126~263_combout\);

-- Location: LCCOMB_X5_Y8_N4
\Mux126~264\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~264_combout\ = (\Mux126~262_combout\) # ((\Mux126~260_combout\) # ((\Mux126~263_combout\ & \Mux126~226_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~262_combout\,
	datab => \Mux126~260_combout\,
	datac => \Mux126~263_combout\,
	datad => \Mux126~226_combout\,
	combout => \Mux126~264_combout\);

-- Location: LCCOMB_X3_Y8_N18
\Mux101~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux101~1_combout\ = (!\amt[0]~input_o\ & ((\amt[1]~input_o\ & ((\Mux126~258_combout\))) # (!\amt[1]~input_o\ & (\Mux126~250_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~250_combout\,
	datab => \Mux126~258_combout\,
	datac => \amt[0]~input_o\,
	datad => \amt[1]~input_o\,
	combout => \Mux101~1_combout\);

-- Location: LCCOMB_X3_Y8_N24
\Mux101~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux101~0_combout\ = (!\amt[1]~input_o\ & (\amt[0]~input_o\ & \Mux126~254_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[1]~input_o\,
	datac => \amt[0]~input_o\,
	datad => \Mux126~254_combout\,
	combout => \Mux101~0_combout\);

-- Location: LCCOMB_X3_Y8_N4
\Mux101~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux101~2_combout\ = (\Mux101~1_combout\) # ((\Mux101~0_combout\) # ((\Mux126~264_combout\ & \Mux106~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~264_combout\,
	datab => \Mux101~1_combout\,
	datac => \Mux106~2_combout\,
	datad => \Mux101~0_combout\,
	combout => \Mux101~2_combout\);

-- Location: LCCOMB_X3_Y8_N8
\Mux100~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux100~0_combout\ = (\amt[0]~input_o\ & (((\Mux126~258_combout\) # (\amt[1]~input_o\)))) # (!\amt[0]~input_o\ & (\Mux126~254_combout\ & ((!\amt[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~254_combout\,
	datab => \Mux126~258_combout\,
	datac => \amt[0]~input_o\,
	datad => \amt[1]~input_o\,
	combout => \Mux100~0_combout\);

-- Location: LCCOMB_X5_Y9_N20
\Mux126~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~231_combout\ = (!\amt[5]~input_o\ & (\a[49]~input_o\ & \amt[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \a[49]~input_o\,
	datad => \amt[4]~input_o\,
	combout => \Mux126~231_combout\);

-- Location: LCCOMB_X5_Y9_N30
\Mux126~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~232_combout\ = (\Mux126~230_combout\) # ((\Mux126~231_combout\) # ((\Mux126~126_combout\ & !\amt[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~230_combout\,
	datab => \Mux126~231_combout\,
	datac => \Mux126~126_combout\,
	datad => \amt[4]~input_o\,
	combout => \Mux126~232_combout\);

-- Location: LCCOMB_X4_Y6_N24
\Mux126~267\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~267_combout\ = (!\amt[3]~input_o\ & ((\amt[2]~input_o\ & ((\Mux126~232_combout\))) # (!\amt[2]~input_o\ & (\Mux126~207_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~207_combout\,
	datab => \amt[2]~input_o\,
	datac => \amt[3]~input_o\,
	datad => \Mux126~232_combout\,
	combout => \Mux126~267_combout\);

-- Location: LCCOMB_X3_Y8_N30
\Mux126~268\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~268_combout\ = (\Mux126~266_combout\) # (\Mux126~267_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~266_combout\,
	datac => \Mux126~267_combout\,
	combout => \Mux126~268_combout\);

-- Location: LCCOMB_X3_Y8_N26
\Mux100~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux100~1_combout\ = (\amt[1]~input_o\ & ((\Mux100~0_combout\ & (\Mux126~268_combout\)) # (!\Mux100~0_combout\ & ((\Mux126~264_combout\))))) # (!\amt[1]~input_o\ & (\Mux100~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datab => \Mux100~0_combout\,
	datac => \Mux126~268_combout\,
	datad => \Mux126~264_combout\,
	combout => \Mux100~1_combout\);

-- Location: LCCOMB_X2_Y4_N24
\Mux126~270\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~270_combout\ = (\amt[3]~input_o\ & (((\amt[2]~input_o\)))) # (!\amt[3]~input_o\ & ((\amt[2]~input_o\ & (\Mux126~442_combout\)) # (!\amt[2]~input_o\ & ((\Mux126~214_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~442_combout\,
	datab => \amt[3]~input_o\,
	datac => \amt[2]~input_o\,
	datad => \Mux126~214_combout\,
	combout => \Mux126~270_combout\);

-- Location: LCCOMB_X1_Y4_N0
\Mux36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux36~0_combout\ = (\lar[1]~input_o\ & (\a[26]~input_o\)) # (!\lar[1]~input_o\ & (((\lar[0]~input_o\ & \a[63]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[1]~input_o\,
	datab => \a[26]~input_o\,
	datac => \lar[0]~input_o\,
	datad => \a[63]~input_o\,
	combout => \Mux36~0_combout\);

-- Location: LCCOMB_X1_Y4_N4
\Mux126~450\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~450_combout\ = (\Mux126~269_combout\) # ((\amt[4]~input_o\ & (\amt[5]~input_o\ & \Mux36~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~269_combout\,
	datab => \amt[4]~input_o\,
	datac => \amt[5]~input_o\,
	datad => \Mux36~0_combout\,
	combout => \Mux126~450_combout\);

-- Location: LCCOMB_X2_Y4_N2
\Mux126~271\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~271_combout\ = (\amt[3]~input_o\ & ((\Mux126~270_combout\ & (\Mux126~450_combout\)) # (!\Mux126~270_combout\ & ((\Mux126~446_combout\))))) # (!\amt[3]~input_o\ & (\Mux126~270_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datab => \Mux126~270_combout\,
	datac => \Mux126~450_combout\,
	datad => \Mux126~446_combout\,
	combout => \Mux126~271_combout\);

-- Location: LCCOMB_X3_Y8_N28
\Mux99~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux99~0_combout\ = (\amt[0]~input_o\ & ((\Mux126~264_combout\) # ((\amt[1]~input_o\)))) # (!\amt[0]~input_o\ & (((\Mux126~258_combout\ & !\amt[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~264_combout\,
	datab => \Mux126~258_combout\,
	datac => \amt[0]~input_o\,
	datad => \amt[1]~input_o\,
	combout => \Mux99~0_combout\);

-- Location: LCCOMB_X3_Y8_N22
\Mux99~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux99~1_combout\ = (\Mux99~0_combout\ & ((\Mux126~271_combout\) # ((!\amt[1]~input_o\)))) # (!\Mux99~0_combout\ & (((\Mux126~268_combout\ & \amt[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~271_combout\,
	datab => \Mux99~0_combout\,
	datac => \Mux126~268_combout\,
	datad => \amt[1]~input_o\,
	combout => \Mux99~1_combout\);

-- Location: LCCOMB_X3_Y8_N10
\Mux98~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux98~1_combout\ = (\amt[0]~input_o\ & (!\amt[1]~input_o\ & ((\Mux126~266_combout\) # (\Mux126~267_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~266_combout\,
	datab => \amt[0]~input_o\,
	datac => \Mux126~267_combout\,
	datad => \amt[1]~input_o\,
	combout => \Mux98~1_combout\);

-- Location: LCCOMB_X3_Y8_N16
\Mux98~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux98~0_combout\ = (!\amt[0]~input_o\ & ((\amt[1]~input_o\ & (\Mux126~271_combout\)) # (!\amt[1]~input_o\ & ((\Mux126~264_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datab => \amt[0]~input_o\,
	datac => \Mux126~271_combout\,
	datad => \Mux126~264_combout\,
	combout => \Mux98~0_combout\);

-- Location: LCCOMB_X2_Y9_N24
\Mux126~273\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~273_combout\ = (\amt[3]~input_o\ & ((\amt[2]~input_o\ & (\Mux126~451_combout\)) # (!\amt[2]~input_o\ & ((\Mux126~447_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~451_combout\,
	datab => \amt[3]~input_o\,
	datac => \Mux126~447_combout\,
	datad => \amt[2]~input_o\,
	combout => \Mux126~273_combout\);

-- Location: LCCOMB_X1_Y9_N4
\Mux126~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~220_combout\ = (\amt[5]~input_o\ & \amt[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \amt[5]~input_o\,
	datad => \amt[4]~input_o\,
	combout => \Mux126~220_combout\);

-- Location: LCCOMB_X4_Y8_N16
\Mux126~261\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~261_combout\ = (!\amt[2]~input_o\ & !\amt[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[2]~input_o\,
	datac => \amt[3]~input_o\,
	combout => \Mux126~261_combout\);

-- Location: LCCOMB_X4_Y9_N10
\Mux126~274\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~274_combout\ = (\Mux126~261_combout\ & ((\Mux126~219_combout\) # ((\Mux47~0_combout\ & \Mux126~220_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~219_combout\,
	datab => \Mux47~0_combout\,
	datac => \Mux126~220_combout\,
	datad => \Mux126~261_combout\,
	combout => \Mux126~274_combout\);

-- Location: LCCOMB_X2_Y9_N18
\Mux126~275\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~275_combout\ = (\Mux126~273_combout\) # ((\Mux126~274_combout\) # ((\Mux126~443_combout\ & \Mux126~263_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~443_combout\,
	datab => \Mux126~273_combout\,
	datac => \Mux126~263_combout\,
	datad => \Mux126~274_combout\,
	combout => \Mux126~275_combout\);

-- Location: LCCOMB_X3_Y8_N12
\Mux98~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux98~2_combout\ = (\Mux98~1_combout\) # ((\Mux98~0_combout\) # ((\Mux106~2_combout\ & \Mux126~275_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux98~1_combout\,
	datab => \Mux98~0_combout\,
	datac => \Mux106~2_combout\,
	datad => \Mux126~275_combout\,
	combout => \Mux98~2_combout\);

-- Location: LCCOMB_X3_Y8_N14
\Mux97~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux97~0_combout\ = (\amt[0]~input_o\ & ((\Mux126~271_combout\) # ((\amt[1]~input_o\)))) # (!\amt[0]~input_o\ & (((\Mux126~268_combout\ & !\amt[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~271_combout\,
	datab => \amt[0]~input_o\,
	datac => \Mux126~268_combout\,
	datad => \amt[1]~input_o\,
	combout => \Mux97~0_combout\);

-- Location: LCCOMB_X6_Y8_N16
\Mux126~276\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~276_combout\ = (\amt[4]~input_o\ & (((!\amt[5]~input_o\ & \a[60]~input_o\)))) # (!\amt[4]~input_o\ & (\Mux126~197_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~197_combout\,
	datab => \amt[5]~input_o\,
	datac => \amt[4]~input_o\,
	datad => \a[60]~input_o\,
	combout => \Mux126~276_combout\);

-- Location: LCCOMB_X6_Y8_N18
\Mux126~452\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~452_combout\ = (\Mux126~276_combout\) # ((\Mux34~0_combout\ & (\amt[4]~input_o\ & \amt[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux34~0_combout\,
	datab => \Mux126~276_combout\,
	datac => \amt[4]~input_o\,
	datad => \amt[5]~input_o\,
	combout => \Mux126~452_combout\);

-- Location: LCCOMB_X5_Y8_N8
\Mux126~278\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~278_combout\ = (\Mux126~277_combout\ & ((\Mux126~452_combout\) # ((!\amt[3]~input_o\)))) # (!\Mux126~277_combout\ & (((\Mux126~448_combout\ & \amt[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~277_combout\,
	datab => \Mux126~452_combout\,
	datac => \Mux126~448_combout\,
	datad => \amt[3]~input_o\,
	combout => \Mux126~278_combout\);

-- Location: LCCOMB_X1_Y8_N0
\Mux97~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux97~1_combout\ = (\Mux97~0_combout\ & (((\Mux126~278_combout\) # (!\amt[1]~input_o\)))) # (!\Mux97~0_combout\ & (\Mux126~275_combout\ & (\amt[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux97~0_combout\,
	datab => \Mux126~275_combout\,
	datac => \amt[1]~input_o\,
	datad => \Mux126~278_combout\,
	combout => \Mux97~1_combout\);

-- Location: LCCOMB_X1_Y8_N18
\Mux96~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux96~0_combout\ = (\amt[0]~input_o\ & (((\amt[1]~input_o\) # (\Mux126~275_combout\)))) # (!\amt[0]~input_o\ & (\Mux126~271_combout\ & (!\amt[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~271_combout\,
	datab => \amt[0]~input_o\,
	datac => \amt[1]~input_o\,
	datad => \Mux126~275_combout\,
	combout => \Mux96~0_combout\);

-- Location: LCCOMB_X2_Y5_N20
\Mux126~280\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~280_combout\ = (\amt[5]~input_o\ & (\lar[1]~input_o\ & (\a[29]~input_o\))) # (!\amt[5]~input_o\ & (((\a[61]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[1]~input_o\,
	datab => \a[29]~input_o\,
	datac => \amt[5]~input_o\,
	datad => \a[61]~input_o\,
	combout => \Mux126~280_combout\);

-- Location: LCCOMB_X3_Y4_N24
\Mux126~281\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~281_combout\ = (\Mux126~280_combout\) # ((\amt[5]~input_o\ & (!\lar[1]~input_o\ & \Mux62~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \lar[1]~input_o\,
	datac => \Mux62~0_combout\,
	datad => \Mux126~280_combout\,
	combout => \Mux126~281_combout\);

-- Location: IOIBUF_X11_Y0_N1
\a[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(13),
	o => \a[13]~input_o\);

-- Location: LCCOMB_X3_Y4_N0
\Mux126~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~205_combout\ = (\amt[5]~input_o\ & (((\lar[1]~input_o\ & \a[13]~input_o\)))) # (!\amt[5]~input_o\ & (\a[45]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[45]~input_o\,
	datab => \lar[1]~input_o\,
	datac => \amt[5]~input_o\,
	datad => \a[13]~input_o\,
	combout => \Mux126~205_combout\);

-- Location: LCCOMB_X3_Y6_N0
\Mux126~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~206_combout\ = (\Mux126~205_combout\) # ((\Mux62~0_combout\ & (\amt[5]~input_o\ & !\lar[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux62~0_combout\,
	datab => \amt[5]~input_o\,
	datac => \lar[1]~input_o\,
	datad => \Mux126~205_combout\,
	combout => \Mux126~206_combout\);

-- Location: LCCOMB_X3_Y6_N18
\Mux126~282\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~282_combout\ = (\amt[4]~input_o\ & (\Mux126~281_combout\)) # (!\amt[4]~input_o\ & ((\Mux126~206_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[4]~input_o\,
	datac => \Mux126~281_combout\,
	datad => \Mux126~206_combout\,
	combout => \Mux126~282_combout\);

-- Location: LCCOMB_X4_Y5_N28
\Mux126~283\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~283_combout\ = (\amt[3]~input_o\ & ((\Mux126~282_combout\))) # (!\amt[3]~input_o\ & (\Mux126~445_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datab => \Mux126~445_combout\,
	datac => \Mux126~282_combout\,
	combout => \Mux126~283_combout\);

-- Location: LCCOMB_X4_Y5_N18
\Mux126~279\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~279_combout\ = (!\amt[2]~input_o\ & ((\amt[3]~input_o\ & (\Mux126~449_combout\)) # (!\amt[3]~input_o\ & ((\Mux126~232_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~449_combout\,
	datab => \amt[2]~input_o\,
	datac => \amt[3]~input_o\,
	datad => \Mux126~232_combout\,
	combout => \Mux126~279_combout\);

-- Location: LCCOMB_X4_Y5_N30
\Mux126~284\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~284_combout\ = (\Mux126~279_combout\) # ((\Mux126~283_combout\ & \amt[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux126~283_combout\,
	datac => \amt[2]~input_o\,
	datad => \Mux126~279_combout\,
	combout => \Mux126~284_combout\);

-- Location: LCCOMB_X1_Y8_N20
\Mux96~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux96~1_combout\ = (\amt[1]~input_o\ & ((\Mux96~0_combout\ & (\Mux126~284_combout\)) # (!\Mux96~0_combout\ & ((\Mux126~278_combout\))))) # (!\amt[1]~input_o\ & (\Mux96~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datab => \Mux96~0_combout\,
	datac => \Mux126~284_combout\,
	datad => \Mux126~278_combout\,
	combout => \Mux96~1_combout\);

-- Location: LCCOMB_X1_Y8_N14
\Mux95~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux95~0_combout\ = (\amt[1]~input_o\ & ((\amt[0]~input_o\) # ((\Mux126~284_combout\)))) # (!\amt[1]~input_o\ & (!\amt[0]~input_o\ & ((\Mux126~275_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datab => \amt[0]~input_o\,
	datac => \Mux126~284_combout\,
	datad => \Mux126~275_combout\,
	combout => \Mux95~0_combout\);

-- Location: LCCOMB_X2_Y4_N28
\Mux126~285\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~285_combout\ = (!\amt[2]~input_o\ & ((\amt[3]~input_o\ & ((\Mux126~450_combout\))) # (!\amt[3]~input_o\ & (\Mux126~442_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~442_combout\,
	datab => \amt[2]~input_o\,
	datac => \Mux126~450_combout\,
	datad => \amt[3]~input_o\,
	combout => \Mux126~285_combout\);

-- Location: LCCOMB_X2_Y4_N0
\Mux126~290\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~290_combout\ = (\Mux126~285_combout\) # ((\Mux126~289_combout\ & \amt[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~289_combout\,
	datab => \Mux126~285_combout\,
	datac => \amt[2]~input_o\,
	combout => \Mux126~290_combout\);

-- Location: LCCOMB_X1_Y8_N24
\Mux95~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux95~1_combout\ = (\amt[0]~input_o\ & ((\Mux95~0_combout\ & (\Mux126~290_combout\)) # (!\Mux95~0_combout\ & ((\Mux126~278_combout\))))) # (!\amt[0]~input_o\ & (\Mux95~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \Mux95~0_combout\,
	datac => \Mux126~290_combout\,
	datad => \Mux126~278_combout\,
	combout => \Mux95~1_combout\);

-- Location: LCCOMB_X2_Y9_N4
\Mux126~295\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~295_combout\ = (\amt[3]~input_o\ & (((\amt[2]~input_o\)))) # (!\amt[3]~input_o\ & ((\amt[2]~input_o\ & ((\Mux126~447_combout\))) # (!\amt[2]~input_o\ & (\Mux126~443_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~443_combout\,
	datab => \amt[3]~input_o\,
	datac => \Mux126~447_combout\,
	datad => \amt[2]~input_o\,
	combout => \Mux126~295_combout\);

-- Location: LCCOMB_X5_Y9_N0
\Mux126~291\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~291_combout\ = (\a[63]~input_o\ & (((!\lar[1]~input_o\ & \lar[0]~input_o\)) # (!\amt[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \lar[1]~input_o\,
	datac => \lar[0]~input_o\,
	datad => \a[63]~input_o\,
	combout => \Mux126~291_combout\);

-- Location: LCCOMB_X5_Y9_N18
\Mux126~292\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~292_combout\ = (\Mux126~291_combout\) # ((\amt[5]~input_o\ & (\lar[1]~input_o\ & \a[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \lar[1]~input_o\,
	datac => \a[31]~input_o\,
	datad => \Mux126~291_combout\,
	combout => \Mux126~292_combout\);

-- Location: LCCOMB_X4_Y9_N20
\Mux126~293\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~293_combout\ = (\amt[4]~input_o\ & (((\Mux126~292_combout\)))) # (!\amt[4]~input_o\ & (\a[47]~input_o\ & (!\amt[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[47]~input_o\,
	datab => \amt[4]~input_o\,
	datac => \amt[5]~input_o\,
	datad => \Mux126~292_combout\,
	combout => \Mux126~293_combout\);

-- Location: LCCOMB_X4_Y9_N30
\Mux126~294\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~294_combout\ = (\Mux126~293_combout\) # ((\amt[5]~input_o\ & (!\amt[4]~input_o\ & \Mux47~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \amt[4]~input_o\,
	datac => \Mux47~0_combout\,
	datad => \Mux126~293_combout\,
	combout => \Mux126~294_combout\);

-- Location: LCCOMB_X2_Y9_N30
\Mux126~296\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~296_combout\ = (\amt[3]~input_o\ & ((\Mux126~295_combout\ & ((\Mux126~294_combout\))) # (!\Mux126~295_combout\ & (\Mux126~451_combout\)))) # (!\amt[3]~input_o\ & (((\Mux126~295_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~451_combout\,
	datab => \amt[3]~input_o\,
	datac => \Mux126~295_combout\,
	datad => \Mux126~294_combout\,
	combout => \Mux126~296_combout\);

-- Location: LCCOMB_X1_Y8_N10
\Mux94~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux94~0_combout\ = (\amt[1]~input_o\ & (\amt[0]~input_o\)) # (!\amt[1]~input_o\ & ((\amt[0]~input_o\ & (\Mux126~284_combout\)) # (!\amt[0]~input_o\ & ((\Mux126~278_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datab => \amt[0]~input_o\,
	datac => \Mux126~284_combout\,
	datad => \Mux126~278_combout\,
	combout => \Mux94~0_combout\);

-- Location: LCCOMB_X1_Y8_N12
\Mux94~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux94~1_combout\ = (\amt[1]~input_o\ & ((\Mux94~0_combout\ & ((\Mux126~296_combout\))) # (!\Mux94~0_combout\ & (\Mux126~290_combout\)))) # (!\amt[1]~input_o\ & (((\Mux94~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datab => \Mux126~290_combout\,
	datac => \Mux126~296_combout\,
	datad => \Mux94~0_combout\,
	combout => \Mux94~1_combout\);

-- Location: LCCOMB_X1_Y8_N30
\Mux93~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux93~0_combout\ = (!\amt[1]~input_o\ & ((\amt[0]~input_o\ & (\Mux126~290_combout\)) # (!\amt[0]~input_o\ & ((\Mux126~284_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datab => \Mux126~290_combout\,
	datac => \Mux126~284_combout\,
	datad => \amt[0]~input_o\,
	combout => \Mux93~0_combout\);

-- Location: LCCOMB_X5_Y8_N18
\Mux126~299\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~299_combout\ = (\amt[2]~input_o\ & (((\Mux126~448_combout\) # (\amt[3]~input_o\)))) # (!\amt[2]~input_o\ & (\Mux126~444_combout\ & ((!\amt[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datab => \Mux126~444_combout\,
	datac => \Mux126~448_combout\,
	datad => \amt[3]~input_o\,
	combout => \Mux126~299_combout\);

-- Location: LCCOMB_X5_Y8_N28
\Mux126~300\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~300_combout\ = (\Mux126~299_combout\ & ((\Mux126~298_combout\) # ((!\amt[3]~input_o\)))) # (!\Mux126~299_combout\ & (((\amt[3]~input_o\ & \Mux126~452_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~298_combout\,
	datab => \Mux126~299_combout\,
	datac => \amt[3]~input_o\,
	datad => \Mux126~452_combout\,
	combout => \Mux126~300_combout\);

-- Location: LCCOMB_X1_Y8_N8
\Mux91~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux91~0_combout\ = (\amt[0]~input_o\ & ((\Mux126~300_combout\))) # (!\amt[0]~input_o\ & (\Mux126~296_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[0]~input_o\,
	datac => \Mux126~296_combout\,
	datad => \Mux126~300_combout\,
	combout => \Mux91~0_combout\);

-- Location: LCCOMB_X1_Y8_N26
\Mux93~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux93~1_combout\ = (\Mux93~0_combout\) # ((\Mux91~0_combout\ & \amt[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux93~0_combout\,
	datab => \Mux91~0_combout\,
	datac => \amt[1]~input_o\,
	combout => \Mux93~1_combout\);

-- Location: LCCOMB_X5_Y9_N2
\Mux126~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~60_combout\ = (\amt[5]~input_o\ & ((\a[33]~input_o\))) # (!\amt[5]~input_o\ & (\a[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \a[1]~input_o\,
	datac => \a[33]~input_o\,
	combout => \Mux126~60_combout\);

-- Location: LCCOMB_X5_Y9_N6
\Mux126~454\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~454_combout\ = (\lar[1]~input_o\ & (((\Mux126~60_combout\)))) # (!\lar[1]~input_o\ & (\a[63]~input_o\ & (\lar[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[63]~input_o\,
	datab => \lar[1]~input_o\,
	datac => \lar[0]~input_o\,
	datad => \Mux126~60_combout\,
	combout => \Mux126~454_combout\);

-- Location: LCCOMB_X5_Y9_N28
\Mux126~301\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~301_combout\ = (\amt[4]~input_o\ & (((\Mux126~454_combout\)))) # (!\amt[4]~input_o\ & (\a[49]~input_o\ & (!\amt[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \a[49]~input_o\,
	datac => \amt[5]~input_o\,
	datad => \Mux126~454_combout\,
	combout => \Mux126~301_combout\);

-- Location: LCCOMB_X5_Y9_N22
\Mux45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~0_combout\ = (\lar[1]~input_o\ & (((\a[17]~input_o\)))) # (!\lar[1]~input_o\ & (\a[63]~input_o\ & (\lar[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[63]~input_o\,
	datab => \lar[1]~input_o\,
	datac => \lar[0]~input_o\,
	datad => \a[17]~input_o\,
	combout => \Mux45~0_combout\);

-- Location: LCCOMB_X5_Y9_N16
\Mux126~302\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~302_combout\ = (\Mux126~301_combout\) # ((!\amt[4]~input_o\ & (\Mux45~0_combout\ & \amt[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \Mux126~301_combout\,
	datac => \Mux45~0_combout\,
	datad => \amt[5]~input_o\,
	combout => \Mux126~302_combout\);

-- Location: LCCOMB_X4_Y5_N8
\Mux126~303\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~303_combout\ = (\amt[3]~input_o\ & ((\Mux126~302_combout\))) # (!\amt[3]~input_o\ & (\Mux126~449_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~449_combout\,
	datac => \amt[3]~input_o\,
	datad => \Mux126~302_combout\,
	combout => \Mux126~303_combout\);

-- Location: LCCOMB_X4_Y5_N10
\Mux126~304\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~304_combout\ = (\amt[2]~input_o\ & (\Mux126~303_combout\)) # (!\amt[2]~input_o\ & ((\Mux126~283_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[2]~input_o\,
	datac => \Mux126~303_combout\,
	datad => \Mux126~283_combout\,
	combout => \Mux126~304_combout\);

-- Location: LCCOMB_X1_Y8_N28
\Mux92~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux92~0_combout\ = (\amt[1]~input_o\ & (((\amt[0]~input_o\)))) # (!\amt[1]~input_o\ & ((\amt[0]~input_o\ & ((\Mux126~296_combout\))) # (!\amt[0]~input_o\ & (\Mux126~290_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datab => \Mux126~290_combout\,
	datac => \Mux126~296_combout\,
	datad => \amt[0]~input_o\,
	combout => \Mux92~0_combout\);

-- Location: LCCOMB_X1_Y8_N22
\Mux92~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux92~1_combout\ = (\Mux92~0_combout\ & ((\Mux126~304_combout\) # ((!\amt[1]~input_o\)))) # (!\Mux92~0_combout\ & (((\amt[1]~input_o\ & \Mux126~300_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~304_combout\,
	datab => \Mux92~0_combout\,
	datac => \amt[1]~input_o\,
	datad => \Mux126~300_combout\,
	combout => \Mux92~1_combout\);

-- Location: LCCOMB_X1_Y5_N14
\Mux126~305\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~305_combout\ = (\lar[1]~input_o\ & ((\amt[5]~input_o\ & ((\a[34]~input_o\))) # (!\amt[5]~input_o\ & (\a[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \lar[1]~input_o\,
	datac => \a[34]~input_o\,
	datad => \amt[5]~input_o\,
	combout => \Mux126~305_combout\);

-- Location: LCCOMB_X1_Y5_N6
\Mux126~455\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~455_combout\ = (\Mux126~305_combout\) # ((\lar[0]~input_o\ & (\a[63]~input_o\ & !\lar[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[0]~input_o\,
	datab => \a[63]~input_o\,
	datac => \Mux126~305_combout\,
	datad => \lar[1]~input_o\,
	combout => \Mux126~455_combout\);

-- Location: LCCOMB_X1_Y5_N0
\Mux126~306\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~306_combout\ = (\amt[4]~input_o\ & (((\Mux126~455_combout\)))) # (!\amt[4]~input_o\ & (\a[50]~input_o\ & (!\amt[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[50]~input_o\,
	datab => \amt[5]~input_o\,
	datac => \amt[4]~input_o\,
	datad => \Mux126~455_combout\,
	combout => \Mux126~306_combout\);

-- Location: LCCOMB_X1_Y6_N2
\Mux126~307\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~307_combout\ = (\Mux126~306_combout\) # ((\amt[5]~input_o\ & (!\amt[4]~input_o\ & \Mux44~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \amt[4]~input_o\,
	datac => \Mux44~0_combout\,
	datad => \Mux126~306_combout\,
	combout => \Mux126~307_combout\);

-- Location: LCCOMB_X2_Y4_N10
\Mux126~308\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~308_combout\ = (\amt[3]~input_o\ & ((\Mux126~307_combout\))) # (!\amt[3]~input_o\ & (\Mux126~450_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[3]~input_o\,
	datac => \Mux126~450_combout\,
	datad => \Mux126~307_combout\,
	combout => \Mux126~308_combout\);

-- Location: LCCOMB_X2_Y4_N4
\Mux126~309\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~309_combout\ = (\amt[2]~input_o\ & ((\Mux126~308_combout\))) # (!\amt[2]~input_o\ & (\Mux126~289_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~289_combout\,
	datac => \amt[2]~input_o\,
	datad => \Mux126~308_combout\,
	combout => \Mux126~309_combout\);

-- Location: LCCOMB_X2_Y8_N18
\Mux91~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux91~1_combout\ = (\amt[1]~input_o\ & ((\amt[0]~input_o\ & ((\Mux126~309_combout\))) # (!\amt[0]~input_o\ & (\Mux126~304_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~304_combout\,
	datab => \amt[0]~input_o\,
	datac => \amt[1]~input_o\,
	datad => \Mux126~309_combout\,
	combout => \Mux91~1_combout\);

-- Location: LCCOMB_X2_Y8_N4
\Mux91~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux91~2_combout\ = (\Mux91~1_combout\) # ((\Mux91~0_combout\ & !\amt[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux91~0_combout\,
	datac => \amt[1]~input_o\,
	datad => \Mux91~1_combout\,
	combout => \Mux91~2_combout\);

-- Location: LCCOMB_X3_Y5_N20
\Mux126~456\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~456_combout\ = (\Mux126~311_combout\) # ((\lar[0]~input_o\ & (\a[63]~input_o\ & !\lar[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~311_combout\,
	datab => \lar[0]~input_o\,
	datac => \a[63]~input_o\,
	datad => \lar[1]~input_o\,
	combout => \Mux126~456_combout\);

-- Location: LCCOMB_X3_Y5_N16
\Mux126~312\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~312_combout\ = (\amt[4]~input_o\ & (((\Mux126~456_combout\)))) # (!\amt[4]~input_o\ & (\a[51]~input_o\ & (!\amt[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[51]~input_o\,
	datab => \amt[4]~input_o\,
	datac => \amt[5]~input_o\,
	datad => \Mux126~456_combout\,
	combout => \Mux126~312_combout\);

-- Location: LCCOMB_X3_Y5_N2
\Mux126~313\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~313_combout\ = (\Mux126~312_combout\) # ((\amt[5]~input_o\ & (\Mux43~0_combout\ & !\amt[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \Mux43~0_combout\,
	datac => \amt[4]~input_o\,
	datad => \Mux126~312_combout\,
	combout => \Mux126~313_combout\);

-- Location: LCCOMB_X2_Y9_N26
\Mux126~314\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~314_combout\ = (\amt[2]~input_o\ & ((\amt[3]~input_o\ & ((\Mux126~313_combout\))) # (!\amt[3]~input_o\ & (\Mux126~451_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~451_combout\,
	datab => \amt[3]~input_o\,
	datac => \amt[2]~input_o\,
	datad => \Mux126~313_combout\,
	combout => \Mux126~314_combout\);

-- Location: LCCOMB_X2_Y8_N24
\Mux90~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux90~1_combout\ = (\amt[1]~input_o\ & (\amt[0]~input_o\ & ((\Mux126~310_combout\) # (\Mux126~314_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~310_combout\,
	datab => \amt[1]~input_o\,
	datac => \amt[0]~input_o\,
	datad => \Mux126~314_combout\,
	combout => \Mux90~1_combout\);

-- Location: LCCOMB_X2_Y8_N22
\Mux90~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux90~0_combout\ = (!\amt[0]~input_o\ & ((\amt[1]~input_o\ & (\Mux126~309_combout\)) # (!\amt[1]~input_o\ & ((\Mux126~300_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~309_combout\,
	datab => \amt[1]~input_o\,
	datac => \amt[0]~input_o\,
	datad => \Mux126~300_combout\,
	combout => \Mux90~0_combout\);

-- Location: LCCOMB_X2_Y8_N2
\Mux90~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux90~2_combout\ = (\Mux90~1_combout\) # ((\Mux90~0_combout\) # ((\Mux106~4_combout\ & \Mux126~304_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux106~4_combout\,
	datab => \Mux90~1_combout\,
	datac => \Mux90~0_combout\,
	datad => \Mux126~304_combout\,
	combout => \Mux90~2_combout\);

-- Location: LCCOMB_X5_Y7_N10
\Mux126~315\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~315_combout\ = (\lar[1]~input_o\ & ((\amt[5]~input_o\ & (\a[36]~input_o\)) # (!\amt[5]~input_o\ & ((\a[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[36]~input_o\,
	datab => \lar[1]~input_o\,
	datac => \a[4]~input_o\,
	datad => \amt[5]~input_o\,
	combout => \Mux126~315_combout\);

-- Location: LCCOMB_X5_Y7_N4
\Mux126~457\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~457_combout\ = (\Mux126~315_combout\) # ((\lar[0]~input_o\ & (\a[63]~input_o\ & !\lar[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[0]~input_o\,
	datab => \a[63]~input_o\,
	datac => \lar[1]~input_o\,
	datad => \Mux126~315_combout\,
	combout => \Mux126~457_combout\);

-- Location: LCCOMB_X5_Y7_N28
\Mux126~316\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~316_combout\ = (\amt[4]~input_o\ & (((\Mux126~457_combout\)))) # (!\amt[4]~input_o\ & (!\amt[5]~input_o\ & (\a[52]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \a[52]~input_o\,
	datac => \Mux126~457_combout\,
	datad => \amt[4]~input_o\,
	combout => \Mux126~316_combout\);

-- Location: LCCOMB_X5_Y7_N22
\Mux126~317\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~317_combout\ = (\Mux126~316_combout\) # ((\amt[5]~input_o\ & (\Mux42~0_combout\ & !\amt[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \Mux42~0_combout\,
	datac => \amt[4]~input_o\,
	datad => \Mux126~316_combout\,
	combout => \Mux126~317_combout\);

-- Location: IOIBUF_X38_Y0_N1
\a[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(16),
	o => \a[16]~input_o\);

-- Location: LCCOMB_X7_Y7_N14
\Mux46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux46~0_combout\ = (\lar[1]~input_o\ & (((\a[16]~input_o\)))) # (!\lar[1]~input_o\ & (\a[63]~input_o\ & (\lar[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[63]~input_o\,
	datab => \lar[0]~input_o\,
	datac => \lar[1]~input_o\,
	datad => \a[16]~input_o\,
	combout => \Mux46~0_combout\);

-- Location: LCCOMB_X7_Y7_N10
\Mux126~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~90_combout\ = (\amt[5]~input_o\ & (\a[32]~input_o\)) # (!\amt[5]~input_o\ & ((\a[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[32]~input_o\,
	datac => \a[0]~input_o\,
	datad => \amt[5]~input_o\,
	combout => \Mux126~90_combout\);

-- Location: LCCOMB_X7_Y7_N30
\Mux126~453\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~453_combout\ = (\lar[1]~input_o\ & (((\Mux126~90_combout\)))) # (!\lar[1]~input_o\ & (\a[63]~input_o\ & (\lar[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[63]~input_o\,
	datab => \lar[0]~input_o\,
	datac => \lar[1]~input_o\,
	datad => \Mux126~90_combout\,
	combout => \Mux126~453_combout\);

-- Location: LCCOMB_X7_Y7_N28
\Mux126~297\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~297_combout\ = (\amt[4]~input_o\ & (((\Mux126~453_combout\)))) # (!\amt[4]~input_o\ & (\a[48]~input_o\ & ((!\amt[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \a[48]~input_o\,
	datac => \Mux126~453_combout\,
	datad => \amt[5]~input_o\,
	combout => \Mux126~297_combout\);

-- Location: LCCOMB_X7_Y7_N0
\Mux126~298\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~298_combout\ = (\Mux126~297_combout\) # ((\amt[5]~input_o\ & (\Mux46~0_combout\ & !\amt[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \Mux46~0_combout\,
	datac => \amt[4]~input_o\,
	datad => \Mux126~297_combout\,
	combout => \Mux126~298_combout\);

-- Location: LCCOMB_X5_Y8_N24
\Mux126~319\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~319_combout\ = (\Mux126~318_combout\ & ((\Mux126~317_combout\) # ((!\amt[3]~input_o\)))) # (!\Mux126~318_combout\ & (((\amt[3]~input_o\ & \Mux126~298_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~318_combout\,
	datab => \Mux126~317_combout\,
	datac => \amt[3]~input_o\,
	datad => \Mux126~298_combout\,
	combout => \Mux126~319_combout\);

-- Location: LCCOMB_X2_Y8_N28
\Mux87~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux87~4_combout\ = (\amt[0]~input_o\ & (((\Mux126~319_combout\)))) # (!\amt[0]~input_o\ & ((\Mux126~310_combout\) # ((\Mux126~314_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~310_combout\,
	datab => \Mux126~319_combout\,
	datac => \amt[0]~input_o\,
	datad => \Mux126~314_combout\,
	combout => \Mux87~4_combout\);

-- Location: LCCOMB_X2_Y8_N20
\Mux89~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux89~0_combout\ = (!\amt[1]~input_o\ & ((\amt[0]~input_o\ & ((\Mux126~309_combout\))) # (!\amt[0]~input_o\ & (\Mux126~304_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~304_combout\,
	datab => \amt[0]~input_o\,
	datac => \amt[1]~input_o\,
	datad => \Mux126~309_combout\,
	combout => \Mux89~0_combout\);

-- Location: LCCOMB_X2_Y8_N16
\Mux89~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux89~1_combout\ = (\Mux89~0_combout\) # ((\Mux87~4_combout\ & \amt[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux87~4_combout\,
	datac => \amt[1]~input_o\,
	datad => \Mux89~0_combout\,
	combout => \Mux89~1_combout\);

-- Location: LCCOMB_X2_Y9_N8
\Mux126~310\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~310_combout\ = (!\amt[2]~input_o\ & ((\amt[3]~input_o\ & ((\Mux126~294_combout\))) # (!\amt[3]~input_o\ & (\Mux126~447_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datab => \amt[3]~input_o\,
	datac => \Mux126~447_combout\,
	datad => \Mux126~294_combout\,
	combout => \Mux126~310_combout\);

-- Location: LCCOMB_X2_Y8_N14
\Mux126~320\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~320_combout\ = (\Mux126~310_combout\) # (\Mux126~314_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux126~310_combout\,
	datad => \Mux126~314_combout\,
	combout => \Mux126~320_combout\);

-- Location: LCCOMB_X2_Y8_N10
\Mux88~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux88~0_combout\ = (\amt[1]~input_o\ & (((\amt[0]~input_o\)))) # (!\amt[1]~input_o\ & ((\amt[0]~input_o\ & ((\Mux126~320_combout\))) # (!\amt[0]~input_o\ & (\Mux126~309_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~309_combout\,
	datab => \amt[1]~input_o\,
	datac => \amt[0]~input_o\,
	datad => \Mux126~320_combout\,
	combout => \Mux88~0_combout\);

-- Location: LCCOMB_X3_Y6_N20
\Mux126~322\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~322_combout\ = (\amt[4]~input_o\ & (\Mux126~458_combout\)) # (!\amt[4]~input_o\ & (((!\amt[5]~input_o\ & \a[53]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~458_combout\,
	datab => \amt[4]~input_o\,
	datac => \amt[5]~input_o\,
	datad => \a[53]~input_o\,
	combout => \Mux126~322_combout\);

-- Location: LCCOMB_X3_Y6_N30
\Mux126~323\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~323_combout\ = (\Mux126~322_combout\) # ((\Mux41~0_combout\ & (!\amt[4]~input_o\ & \amt[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux41~0_combout\,
	datab => \amt[4]~input_o\,
	datac => \amt[5]~input_o\,
	datad => \Mux126~322_combout\,
	combout => \Mux126~323_combout\);

-- Location: LCCOMB_X4_Y5_N4
\Mux126~324\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~324_combout\ = (\amt[3]~input_o\ & ((\Mux126~323_combout\))) # (!\amt[3]~input_o\ & (\Mux126~282_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datab => \Mux126~282_combout\,
	datac => \Mux126~323_combout\,
	combout => \Mux126~324_combout\);

-- Location: LCCOMB_X4_Y5_N22
\Mux126~325\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~325_combout\ = (\amt[2]~input_o\ & (\Mux126~324_combout\)) # (!\amt[2]~input_o\ & ((\Mux126~303_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux126~324_combout\,
	datac => \Mux126~303_combout\,
	datad => \amt[2]~input_o\,
	combout => \Mux126~325_combout\);

-- Location: LCCOMB_X2_Y8_N12
\Mux88~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux88~1_combout\ = (\Mux88~0_combout\ & (((\Mux126~325_combout\)) # (!\amt[1]~input_o\))) # (!\Mux88~0_combout\ & (\amt[1]~input_o\ & ((\Mux126~319_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux88~0_combout\,
	datab => \amt[1]~input_o\,
	datac => \Mux126~325_combout\,
	datad => \Mux126~319_combout\,
	combout => \Mux88~1_combout\);

-- Location: LCCOMB_X3_Y6_N8
\Mux40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux40~0_combout\ = (\lar[1]~input_o\ & (((\a[22]~input_o\)))) # (!\lar[1]~input_o\ & (\a[63]~input_o\ & (\lar[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[63]~input_o\,
	datab => \lar[1]~input_o\,
	datac => \lar[0]~input_o\,
	datad => \a[22]~input_o\,
	combout => \Mux40~0_combout\);

-- Location: LCCOMB_X1_Y5_N28
\Mux126~328\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~328_combout\ = (\Mux126~327_combout\) # ((!\amt[4]~input_o\ & (\Mux40~0_combout\ & \amt[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~327_combout\,
	datab => \amt[4]~input_o\,
	datac => \Mux40~0_combout\,
	datad => \amt[5]~input_o\,
	combout => \Mux126~328_combout\);

-- Location: LCCOMB_X3_Y4_N20
\Mux126~287\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~287_combout\ = (\Mux126~286_combout\) # ((!\lar[1]~input_o\ & (\Mux62~0_combout\ & \amt[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~286_combout\,
	datab => \lar[1]~input_o\,
	datac => \Mux62~0_combout\,
	datad => \amt[5]~input_o\,
	combout => \Mux126~287_combout\);

-- Location: LCCOMB_X3_Y4_N14
\Mux126~288\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~288_combout\ = (\amt[4]~input_o\ & ((\Mux126~287_combout\))) # (!\amt[4]~input_o\ & (\Mux126~213_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~213_combout\,
	datac => \amt[4]~input_o\,
	datad => \Mux126~287_combout\,
	combout => \Mux126~288_combout\);

-- Location: LCCOMB_X4_Y4_N0
\Mux126~329\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~329_combout\ = (\amt[3]~input_o\ & (\Mux126~328_combout\)) # (!\amt[3]~input_o\ & ((\Mux126~288_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datac => \Mux126~328_combout\,
	datad => \Mux126~288_combout\,
	combout => \Mux126~329_combout\);

-- Location: LCCOMB_X2_Y4_N6
\Mux126~330\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~330_combout\ = (\amt[2]~input_o\ & ((\Mux126~329_combout\))) # (!\amt[2]~input_o\ & (\Mux126~308_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~308_combout\,
	datab => \Mux126~329_combout\,
	datac => \amt[2]~input_o\,
	combout => \Mux126~330_combout\);

-- Location: LCCOMB_X2_Y8_N6
\Mux87~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux87~2_combout\ = (\amt[1]~input_o\ & ((\amt[0]~input_o\ & ((\Mux126~330_combout\))) # (!\amt[0]~input_o\ & (\Mux126~325_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~325_combout\,
	datab => \amt[1]~input_o\,
	datac => \amt[0]~input_o\,
	datad => \Mux126~330_combout\,
	combout => \Mux87~2_combout\);

-- Location: LCCOMB_X2_Y8_N0
\Mux87~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux87~3_combout\ = (\Mux87~2_combout\) # ((\Mux87~4_combout\ & !\amt[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux87~4_combout\,
	datac => \amt[1]~input_o\,
	datad => \Mux87~2_combout\,
	combout => \Mux87~3_combout\);

-- Location: LCCOMB_X2_Y8_N26
\Mux86~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux86~0_combout\ = (\amt[1]~input_o\ & (((\amt[0]~input_o\)))) # (!\amt[1]~input_o\ & ((\amt[0]~input_o\ & (\Mux126~325_combout\)) # (!\amt[0]~input_o\ & ((\Mux126~319_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~325_combout\,
	datab => \amt[1]~input_o\,
	datac => \amt[0]~input_o\,
	datad => \Mux126~319_combout\,
	combout => \Mux86~0_combout\);

-- Location: LCCOMB_X2_Y9_N20
\Mux126~334\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~334_combout\ = (\amt[3]~input_o\ & (((\amt[2]~input_o\)))) # (!\amt[3]~input_o\ & ((\amt[2]~input_o\ & ((\Mux126~294_combout\))) # (!\amt[2]~input_o\ & (\Mux126~451_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~451_combout\,
	datab => \amt[3]~input_o\,
	datac => \amt[2]~input_o\,
	datad => \Mux126~294_combout\,
	combout => \Mux126~334_combout\);

-- Location: LCCOMB_X2_Y9_N6
\Mux126~335\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~335_combout\ = (\Mux126~334_combout\ & ((\Mux126~333_combout\) # ((!\amt[3]~input_o\)))) # (!\Mux126~334_combout\ & (((\amt[3]~input_o\ & \Mux126~313_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~333_combout\,
	datab => \Mux126~334_combout\,
	datac => \amt[3]~input_o\,
	datad => \Mux126~313_combout\,
	combout => \Mux126~335_combout\);

-- Location: LCCOMB_X6_Y5_N16
\Mux86~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux86~1_combout\ = (\Mux86~0_combout\ & (((\Mux126~335_combout\) # (!\amt[1]~input_o\)))) # (!\Mux86~0_combout\ & (\Mux126~330_combout\ & ((\amt[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux86~0_combout\,
	datab => \Mux126~330_combout\,
	datac => \Mux126~335_combout\,
	datad => \amt[1]~input_o\,
	combout => \Mux86~1_combout\);

-- Location: LCCOMB_X6_Y5_N10
\Mux85~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux85~0_combout\ = (!\amt[1]~input_o\ & ((\amt[0]~input_o\ & (\Mux126~330_combout\)) # (!\amt[0]~input_o\ & ((\Mux126~325_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \amt[1]~input_o\,
	datac => \Mux126~330_combout\,
	datad => \Mux126~325_combout\,
	combout => \Mux85~0_combout\);

-- Location: LCCOMB_X7_Y8_N14
\Mux126~461\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~461_combout\ = (\lar[1]~input_o\ & (\Mux126~93_combout\)) # (!\lar[1]~input_o\ & (((\a[63]~input_o\ & \lar[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~93_combout\,
	datab => \lar[1]~input_o\,
	datac => \a[63]~input_o\,
	datad => \lar[0]~input_o\,
	combout => \Mux126~461_combout\);

-- Location: IOIBUF_X11_Y0_N8
\a[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(56),
	o => \a[56]~input_o\);

-- Location: LCCOMB_X7_Y8_N26
\Mux126~336\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~336_combout\ = (\amt[4]~input_o\ & (((\Mux126~461_combout\)))) # (!\amt[4]~input_o\ & (!\amt[5]~input_o\ & ((\a[56]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \amt[5]~input_o\,
	datac => \Mux126~461_combout\,
	datad => \a[56]~input_o\,
	combout => \Mux126~336_combout\);

-- Location: LCCOMB_X7_Y8_N4
\Mux126~337\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~337_combout\ = (\Mux126~336_combout\) # ((!\amt[4]~input_o\ & (\amt[5]~input_o\ & \Mux38~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \amt[5]~input_o\,
	datac => \Mux126~336_combout\,
	datad => \Mux38~0_combout\,
	combout => \Mux126~337_combout\);

-- Location: LCCOMB_X5_Y8_N12
\Mux126~339\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~339_combout\ = (\Mux126~338_combout\ & (((\Mux126~337_combout\) # (!\amt[3]~input_o\)))) # (!\Mux126~338_combout\ & (\Mux126~317_combout\ & (\amt[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~338_combout\,
	datab => \Mux126~317_combout\,
	datac => \amt[3]~input_o\,
	datad => \Mux126~337_combout\,
	combout => \Mux126~339_combout\);

-- Location: LCCOMB_X6_Y5_N20
\Mux83~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux83~0_combout\ = (\amt[0]~input_o\ & ((\Mux126~339_combout\))) # (!\amt[0]~input_o\ & (\Mux126~335_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datac => \Mux126~335_combout\,
	datad => \Mux126~339_combout\,
	combout => \Mux83~0_combout\);

-- Location: LCCOMB_X6_Y5_N22
\Mux85~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux85~1_combout\ = (\Mux85~0_combout\) # ((\amt[1]~input_o\ & \Mux83~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux85~0_combout\,
	datab => \amt[1]~input_o\,
	datad => \Mux83~0_combout\,
	combout => \Mux85~1_combout\);

-- Location: LCCOMB_X4_Y5_N16
\Mux126~342\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~342_combout\ = (\amt[2]~input_o\ & ((\amt[3]~input_o\ & (\Mux126~341_combout\)) # (!\amt[3]~input_o\ & ((\Mux126~302_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~341_combout\,
	datab => \amt[2]~input_o\,
	datac => \amt[3]~input_o\,
	datad => \Mux126~302_combout\,
	combout => \Mux126~342_combout\);

-- Location: LCCOMB_X4_Y5_N26
\Mux126~343\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~343_combout\ = (\Mux126~342_combout\) # ((!\amt[2]~input_o\ & \Mux126~324_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[2]~input_o\,
	datac => \Mux126~324_combout\,
	datad => \Mux126~342_combout\,
	combout => \Mux126~343_combout\);

-- Location: LCCOMB_X6_Y5_N0
\Mux84~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux84~0_combout\ = (\amt[0]~input_o\ & (((\Mux126~335_combout\) # (\amt[1]~input_o\)))) # (!\amt[0]~input_o\ & (\Mux126~330_combout\ & ((!\amt[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \Mux126~330_combout\,
	datac => \Mux126~335_combout\,
	datad => \amt[1]~input_o\,
	combout => \Mux84~0_combout\);

-- Location: LCCOMB_X6_Y5_N2
\Mux84~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux84~1_combout\ = (\amt[1]~input_o\ & ((\Mux84~0_combout\ & ((\Mux126~343_combout\))) # (!\Mux84~0_combout\ & (\Mux126~339_combout\)))) # (!\amt[1]~input_o\ & (((\Mux84~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~339_combout\,
	datab => \amt[1]~input_o\,
	datac => \Mux126~343_combout\,
	datad => \Mux84~0_combout\,
	combout => \Mux84~1_combout\);

-- Location: LCCOMB_X6_Y5_N12
\Mux83~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux83~1_combout\ = (\amt[1]~input_o\ & ((\amt[0]~input_o\ & (\Mux126~347_combout\)) # (!\amt[0]~input_o\ & ((\Mux126~343_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~347_combout\,
	datab => \amt[1]~input_o\,
	datac => \Mux126~343_combout\,
	datad => \amt[0]~input_o\,
	combout => \Mux83~1_combout\);

-- Location: LCCOMB_X6_Y5_N14
\Mux83~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux83~2_combout\ = (\Mux83~1_combout\) # ((!\amt[1]~input_o\ & \Mux83~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux83~1_combout\,
	datab => \amt[1]~input_o\,
	datad => \Mux83~0_combout\,
	combout => \Mux83~2_combout\);

-- Location: LCCOMB_X6_Y5_N24
\Mux82~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux82~0_combout\ = (\amt[0]~input_o\ & ((\amt[1]~input_o\) # ((\Mux126~343_combout\)))) # (!\amt[0]~input_o\ & (!\amt[1]~input_o\ & ((\Mux126~339_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \amt[1]~input_o\,
	datac => \Mux126~343_combout\,
	datad => \Mux126~339_combout\,
	combout => \Mux82~0_combout\);

-- Location: LCCOMB_X1_Y4_N20
\Mux126~345\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~345_combout\ = (\Mux126~344_combout\) # ((!\amt[4]~input_o\ & (\amt[5]~input_o\ & \Mux36~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~344_combout\,
	datab => \amt[4]~input_o\,
	datac => \amt[5]~input_o\,
	datad => \Mux36~0_combout\,
	combout => \Mux126~345_combout\);

-- Location: LCCOMB_X4_Y4_N18
\Mux126~346\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~346_combout\ = (\amt[2]~input_o\ & ((\amt[3]~input_o\ & (\Mux126~345_combout\)) # (!\amt[3]~input_o\ & ((\Mux126~307_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datab => \Mux126~345_combout\,
	datac => \amt[3]~input_o\,
	datad => \Mux126~307_combout\,
	combout => \Mux126~346_combout\);

-- Location: LCCOMB_X4_Y4_N28
\Mux126~347\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~347_combout\ = (\Mux126~346_combout\) # ((!\amt[2]~input_o\ & \Mux126~329_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datab => \Mux126~346_combout\,
	datad => \Mux126~329_combout\,
	combout => \Mux126~347_combout\);

-- Location: LCCOMB_X1_Y9_N16
\Mux35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux35~0_combout\ = (\lar[1]~input_o\ & (((\a[27]~input_o\)))) # (!\lar[1]~input_o\ & (\a[63]~input_o\ & (\lar[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[1]~input_o\,
	datab => \a[63]~input_o\,
	datac => \lar[0]~input_o\,
	datad => \a[27]~input_o\,
	combout => \Mux35~0_combout\);

-- Location: LCCOMB_X1_Y9_N22
\Mux126~464\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~464_combout\ = (\lar[1]~input_o\ & (\Mux126~84_combout\)) # (!\lar[1]~input_o\ & (((\lar[0]~input_o\ & \a[63]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~84_combout\,
	datab => \lar[1]~input_o\,
	datac => \lar[0]~input_o\,
	datad => \a[63]~input_o\,
	combout => \Mux126~464_combout\);

-- Location: LCCOMB_X1_Y9_N18
\Mux126~348\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~348_combout\ = (\amt[4]~input_o\ & (((\Mux126~464_combout\)))) # (!\amt[4]~input_o\ & (!\amt[5]~input_o\ & (\a[59]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \a[59]~input_o\,
	datac => \Mux126~464_combout\,
	datad => \amt[4]~input_o\,
	combout => \Mux126~348_combout\);

-- Location: LCCOMB_X1_Y9_N12
\Mux126~349\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~349_combout\ = (\Mux126~348_combout\) # ((!\amt[4]~input_o\ & (\Mux35~0_combout\ & \amt[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \Mux35~0_combout\,
	datac => \amt[5]~input_o\,
	datad => \Mux126~348_combout\,
	combout => \Mux126~349_combout\);

-- Location: LCCOMB_X6_Y9_N0
\Mux126~350\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~350_combout\ = (\amt[2]~input_o\ & ((\Mux126~313_combout\) # ((\amt[3]~input_o\)))) # (!\amt[2]~input_o\ & (((\Mux126~294_combout\ & !\amt[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~313_combout\,
	datab => \amt[2]~input_o\,
	datac => \Mux126~294_combout\,
	datad => \amt[3]~input_o\,
	combout => \Mux126~350_combout\);

-- Location: LCCOMB_X6_Y9_N26
\Mux126~351\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~351_combout\ = (\amt[3]~input_o\ & ((\Mux126~350_combout\ & ((\Mux126~349_combout\))) # (!\Mux126~350_combout\ & (\Mux126~333_combout\)))) # (!\amt[3]~input_o\ & (((\Mux126~350_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~333_combout\,
	datab => \amt[3]~input_o\,
	datac => \Mux126~349_combout\,
	datad => \Mux126~350_combout\,
	combout => \Mux126~351_combout\);

-- Location: LCCOMB_X6_Y5_N26
\Mux82~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux82~1_combout\ = (\amt[1]~input_o\ & ((\Mux82~0_combout\ & ((\Mux126~351_combout\))) # (!\Mux82~0_combout\ & (\Mux126~347_combout\)))) # (!\amt[1]~input_o\ & (\Mux82~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datab => \Mux82~0_combout\,
	datac => \Mux126~347_combout\,
	datad => \Mux126~351_combout\,
	combout => \Mux82~1_combout\);

-- Location: LCCOMB_X6_Y5_N28
\Mux81~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux81~0_combout\ = (\amt[1]~input_o\ & (((\amt[0]~input_o\)))) # (!\amt[1]~input_o\ & ((\amt[0]~input_o\ & (\Mux126~347_combout\)) # (!\amt[0]~input_o\ & ((\Mux126~343_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~347_combout\,
	datab => \amt[1]~input_o\,
	datac => \Mux126~343_combout\,
	datad => \amt[0]~input_o\,
	combout => \Mux81~0_combout\);

-- Location: LCCOMB_X5_Y8_N14
\Mux126~354\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~354_combout\ = (\amt[2]~input_o\ & ((\Mux126~317_combout\) # ((\amt[3]~input_o\)))) # (!\amt[2]~input_o\ & (((!\amt[3]~input_o\ & \Mux126~298_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datab => \Mux126~317_combout\,
	datac => \amt[3]~input_o\,
	datad => \Mux126~298_combout\,
	combout => \Mux126~354_combout\);

-- Location: LCCOMB_X5_Y8_N16
\Mux126~355\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~355_combout\ = (\Mux126~354_combout\ & ((\Mux126~353_combout\) # ((!\amt[3]~input_o\)))) # (!\Mux126~354_combout\ & (((\amt[3]~input_o\ & \Mux126~337_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~353_combout\,
	datab => \Mux126~354_combout\,
	datac => \amt[3]~input_o\,
	datad => \Mux126~337_combout\,
	combout => \Mux126~355_combout\);

-- Location: LCCOMB_X6_Y5_N30
\Mux81~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux81~1_combout\ = (\amt[1]~input_o\ & ((\Mux81~0_combout\ & (\Mux126~355_combout\)) # (!\Mux81~0_combout\ & ((\Mux126~351_combout\))))) # (!\amt[1]~input_o\ & (\Mux81~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datab => \Mux81~0_combout\,
	datac => \Mux126~355_combout\,
	datad => \Mux126~351_combout\,
	combout => \Mux81~1_combout\);

-- Location: LCCOMB_X3_Y4_N16
\Mux126~357\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~357_combout\ = (\lar[1]~input_o\ & ((\amt[5]~input_o\ & (\a[45]~input_o\)) # (!\amt[5]~input_o\ & ((\a[13]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[45]~input_o\,
	datab => \lar[1]~input_o\,
	datac => \amt[5]~input_o\,
	datad => \a[13]~input_o\,
	combout => \Mux126~357_combout\);

-- Location: LCCOMB_X3_Y4_N10
\Mux126~358\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~358_combout\ = (\amt[4]~input_o\ & ((\Mux62~1_combout\) # ((\Mux126~357_combout\)))) # (!\amt[4]~input_o\ & (((\Mux126~281_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux62~1_combout\,
	datab => \Mux126~357_combout\,
	datac => \amt[4]~input_o\,
	datad => \Mux126~281_combout\,
	combout => \Mux126~358_combout\);

-- Location: LCCOMB_X4_Y5_N6
\Mux126~359\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~359_combout\ = (\amt[2]~input_o\ & ((\amt[3]~input_o\ & ((\Mux126~358_combout\))) # (!\amt[3]~input_o\ & (\Mux126~323_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datab => \amt[2]~input_o\,
	datac => \Mux126~323_combout\,
	datad => \Mux126~358_combout\,
	combout => \Mux126~359_combout\);

-- Location: LCCOMB_X4_Y5_N20
\Mux126~356\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~356_combout\ = (!\amt[2]~input_o\ & ((\amt[3]~input_o\ & (\Mux126~341_combout\)) # (!\amt[3]~input_o\ & ((\Mux126~302_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~341_combout\,
	datab => \amt[2]~input_o\,
	datac => \amt[3]~input_o\,
	datad => \Mux126~302_combout\,
	combout => \Mux126~356_combout\);

-- Location: LCCOMB_X5_Y5_N16
\Mux126~360\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~360_combout\ = (\Mux126~359_combout\) # (\Mux126~356_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux126~359_combout\,
	datad => \Mux126~356_combout\,
	combout => \Mux126~360_combout\);

-- Location: LCCOMB_X6_Y5_N8
\Mux80~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux80~0_combout\ = (\amt[0]~input_o\ & ((\amt[1]~input_o\) # ((\Mux126~351_combout\)))) # (!\amt[0]~input_o\ & (!\amt[1]~input_o\ & (\Mux126~347_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \amt[1]~input_o\,
	datac => \Mux126~347_combout\,
	datad => \Mux126~351_combout\,
	combout => \Mux80~0_combout\);

-- Location: LCCOMB_X6_Y5_N18
\Mux80~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux80~1_combout\ = (\Mux80~0_combout\ & (((\Mux126~360_combout\) # (!\amt[1]~input_o\)))) # (!\Mux80~0_combout\ & (\Mux126~355_combout\ & ((\amt[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~355_combout\,
	datab => \Mux126~360_combout\,
	datac => \Mux80~0_combout\,
	datad => \amt[1]~input_o\,
	combout => \Mux80~1_combout\);

-- Location: LCCOMB_X6_Y5_N4
\Mux79~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux79~0_combout\ = (\amt[0]~input_o\ & ((\amt[1]~input_o\) # ((\Mux126~355_combout\)))) # (!\amt[0]~input_o\ & (!\amt[1]~input_o\ & ((\Mux126~351_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \amt[1]~input_o\,
	datac => \Mux126~355_combout\,
	datad => \Mux126~351_combout\,
	combout => \Mux79~0_combout\);

-- Location: LCCOMB_X4_Y4_N24
\Mux126~363\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~363_combout\ = (\amt[2]~input_o\ & ((\Mux126~328_combout\) # ((\amt[3]~input_o\)))) # (!\amt[2]~input_o\ & (((!\amt[3]~input_o\ & \Mux126~307_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datab => \Mux126~328_combout\,
	datac => \amt[3]~input_o\,
	datad => \Mux126~307_combout\,
	combout => \Mux126~363_combout\);

-- Location: LCCOMB_X4_Y4_N2
\Mux126~364\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~364_combout\ = (\amt[3]~input_o\ & ((\Mux126~363_combout\ & (\Mux126~362_combout\)) # (!\Mux126~363_combout\ & ((\Mux126~345_combout\))))) # (!\amt[3]~input_o\ & (((\Mux126~363_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~362_combout\,
	datab => \Mux126~345_combout\,
	datac => \amt[3]~input_o\,
	datad => \Mux126~363_combout\,
	combout => \Mux126~364_combout\);

-- Location: LCCOMB_X5_Y5_N2
\Mux79~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux79~1_combout\ = (\Mux79~0_combout\ & ((\Mux126~364_combout\) # ((!\amt[1]~input_o\)))) # (!\Mux79~0_combout\ & (((\amt[1]~input_o\ & \Mux126~360_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux79~0_combout\,
	datab => \Mux126~364_combout\,
	datac => \amt[1]~input_o\,
	datad => \Mux126~360_combout\,
	combout => \Mux79~1_combout\);

-- Location: LCCOMB_X4_Y9_N4
\Mux126~367\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~367_combout\ = (\Mux126~366_combout\ & (((\Mux126~220_combout\)))) # (!\Mux126~366_combout\ & ((\Mux126~220_combout\ & ((\Mux62~0_combout\))) # (!\Mux126~220_combout\ & (\Mux126~292_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~366_combout\,
	datab => \Mux126~292_combout\,
	datac => \Mux126~220_combout\,
	datad => \Mux62~0_combout\,
	combout => \Mux126~367_combout\);

-- Location: LCCOMB_X1_Y9_N6
\Mux126~366\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~366_combout\ = (\amt[4]~input_o\ & ((\lar[1]~input_o\) # (!\amt[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lar[1]~input_o\,
	datac => \amt[5]~input_o\,
	datad => \amt[4]~input_o\,
	combout => \Mux126~366_combout\);

-- Location: LCCOMB_X4_Y9_N6
\Mux126~368\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~368_combout\ = (\Mux126~367_combout\ & ((\a[47]~input_o\) # ((!\Mux126~366_combout\)))) # (!\Mux126~367_combout\ & (((\Mux47~0_combout\ & \Mux126~366_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[47]~input_o\,
	datab => \Mux126~367_combout\,
	datac => \Mux47~0_combout\,
	datad => \Mux126~366_combout\,
	combout => \Mux126~368_combout\);

-- Location: LCCOMB_X6_Y9_N30
\Mux126~369\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~369_combout\ = (\amt[2]~input_o\ & ((\amt[3]~input_o\ & ((\Mux126~368_combout\))) # (!\amt[3]~input_o\ & (\Mux126~333_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~333_combout\,
	datab => \amt[2]~input_o\,
	datac => \amt[3]~input_o\,
	datad => \Mux126~368_combout\,
	combout => \Mux126~369_combout\);

-- Location: LCCOMB_X6_Y9_N4
\Mux126~365\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~365_combout\ = (!\amt[2]~input_o\ & ((\amt[3]~input_o\ & ((\Mux126~349_combout\))) # (!\amt[3]~input_o\ & (\Mux126~313_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~313_combout\,
	datab => \amt[2]~input_o\,
	datac => \Mux126~349_combout\,
	datad => \amt[3]~input_o\,
	combout => \Mux126~365_combout\);

-- Location: LCCOMB_X5_Y5_N8
\Mux126~370\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~370_combout\ = (\Mux126~369_combout\) # (\Mux126~365_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux126~369_combout\,
	datad => \Mux126~365_combout\,
	combout => \Mux126~370_combout\);

-- Location: LCCOMB_X5_Y5_N22
\Mux78~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux78~1_combout\ = (!\amt[1]~input_o\ & (\amt[0]~input_o\ & ((\Mux126~359_combout\) # (\Mux126~356_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datab => \amt[0]~input_o\,
	datac => \Mux126~359_combout\,
	datad => \Mux126~356_combout\,
	combout => \Mux78~1_combout\);

-- Location: LCCOMB_X5_Y5_N28
\Mux78~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux78~0_combout\ = (!\amt[0]~input_o\ & ((\amt[1]~input_o\ & ((\Mux126~364_combout\))) # (!\amt[1]~input_o\ & (\Mux126~355_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~355_combout\,
	datab => \amt[0]~input_o\,
	datac => \amt[1]~input_o\,
	datad => \Mux126~364_combout\,
	combout => \Mux78~0_combout\);

-- Location: LCCOMB_X5_Y5_N26
\Mux78~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux78~2_combout\ = (\Mux78~1_combout\) # ((\Mux78~0_combout\) # ((\Mux106~2_combout\ & \Mux126~370_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux106~2_combout\,
	datab => \Mux126~370_combout\,
	datac => \Mux78~1_combout\,
	datad => \Mux78~0_combout\,
	combout => \Mux78~2_combout\);

-- Location: LCCOMB_X5_Y5_N20
\Mux77~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux77~0_combout\ = (!\amt[1]~input_o\ & ((\amt[0]~input_o\ & ((\Mux126~364_combout\))) # (!\amt[0]~input_o\ & (\Mux126~360_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~360_combout\,
	datab => \Mux126~364_combout\,
	datac => \amt[1]~input_o\,
	datad => \amt[0]~input_o\,
	combout => \Mux77~0_combout\);

-- Location: LCCOMB_X5_Y5_N14
\Mux77~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux77~1_combout\ = (!\amt[0]~input_o\ & (\amt[1]~input_o\ & ((\Mux126~369_combout\) # (\Mux126~365_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~369_combout\,
	datab => \amt[0]~input_o\,
	datac => \amt[1]~input_o\,
	datad => \Mux126~365_combout\,
	combout => \Mux77~1_combout\);

-- Location: LCCOMB_X6_Y8_N2
\Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~0_combout\ = (\lar[1]~input_o\ & (\a[28]~input_o\)) # (!\lar[1]~input_o\ & (((\lar[0]~input_o\ & \a[63]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[28]~input_o\,
	datab => \lar[1]~input_o\,
	datac => \lar[0]~input_o\,
	datad => \a[63]~input_o\,
	combout => \Mux34~0_combout\);

-- Location: LCCOMB_X6_Y8_N24
\Mux126~353\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~353_combout\ = (\Mux126~352_combout\) # ((\amt[5]~input_o\ & (!\amt[4]~input_o\ & \Mux34~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~352_combout\,
	datab => \amt[5]~input_o\,
	datac => \amt[4]~input_o\,
	datad => \Mux34~0_combout\,
	combout => \Mux126~353_combout\);

-- Location: LCCOMB_X7_Y7_N18
\Mux126~371\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~371_combout\ = (\Mux126~220_combout\ & (((\Mux126~366_combout\)))) # (!\Mux126~220_combout\ & ((\Mux126~366_combout\ & (\Mux46~0_combout\)) # (!\Mux126~366_combout\ & ((\Mux126~453_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~220_combout\,
	datab => \Mux46~0_combout\,
	datac => \Mux126~453_combout\,
	datad => \Mux126~366_combout\,
	combout => \Mux126~371_combout\);

-- Location: LCCOMB_X7_Y7_N12
\Mux126~372\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~372_combout\ = (\Mux126~220_combout\ & ((\Mux126~371_combout\ & ((\a[48]~input_o\))) # (!\Mux126~371_combout\ & (\Mux62~0_combout\)))) # (!\Mux126~220_combout\ & (\Mux126~371_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~220_combout\,
	datab => \Mux126~371_combout\,
	datac => \Mux62~0_combout\,
	datad => \a[48]~input_o\,
	combout => \Mux126~372_combout\);

-- Location: LCCOMB_X5_Y8_N20
\Mux126~374\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~374_combout\ = (\Mux126~373_combout\ & (((\Mux126~372_combout\)) # (!\amt[3]~input_o\))) # (!\Mux126~373_combout\ & (\amt[3]~input_o\ & (\Mux126~353_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~373_combout\,
	datab => \amt[3]~input_o\,
	datac => \Mux126~353_combout\,
	datad => \Mux126~372_combout\,
	combout => \Mux126~374_combout\);

-- Location: LCCOMB_X5_Y5_N24
\Mux77~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux77~2_combout\ = (\Mux77~0_combout\) # ((\Mux77~1_combout\) # ((\Mux106~2_combout\ & \Mux126~374_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux106~2_combout\,
	datab => \Mux77~0_combout\,
	datac => \Mux77~1_combout\,
	datad => \Mux126~374_combout\,
	combout => \Mux77~2_combout\);

-- Location: LCCOMB_X5_Y5_N18
\Mux76~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux76~0_combout\ = (!\amt[0]~input_o\ & ((\amt[1]~input_o\ & ((\Mux126~374_combout\))) # (!\amt[1]~input_o\ & (\Mux126~364_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \Mux126~364_combout\,
	datac => \amt[1]~input_o\,
	datad => \Mux126~374_combout\,
	combout => \Mux76~0_combout\);

-- Location: LCCOMB_X5_Y5_N4
\Mux76~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux76~1_combout\ = (\amt[0]~input_o\ & (!\amt[1]~input_o\ & ((\Mux126~369_combout\) # (\Mux126~365_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~369_combout\,
	datab => \amt[0]~input_o\,
	datac => \amt[1]~input_o\,
	datad => \Mux126~365_combout\,
	combout => \Mux76~1_combout\);

-- Location: LCCOMB_X4_Y9_N14
\Mux126~462\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~462_combout\ = (\lar[1]~input_o\ & (((\Mux126~63_combout\)))) # (!\lar[1]~input_o\ & (\lar[0]~input_o\ & (\a[63]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[0]~input_o\,
	datab => \lar[1]~input_o\,
	datac => \a[63]~input_o\,
	datad => \Mux126~63_combout\,
	combout => \Mux126~462_combout\);

-- Location: LCCOMB_X4_Y9_N0
\Mux126~340\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~340_combout\ = (\amt[4]~input_o\ & (((\Mux126~462_combout\)))) # (!\amt[4]~input_o\ & (\a[57]~input_o\ & ((!\amt[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[57]~input_o\,
	datab => \amt[4]~input_o\,
	datac => \Mux126~462_combout\,
	datad => \amt[5]~input_o\,
	combout => \Mux126~340_combout\);

-- Location: LCCOMB_X4_Y9_N26
\Mux126~341\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~341_combout\ = (\Mux126~340_combout\) # ((\Mux37~0_combout\ & (!\amt[4]~input_o\ & \amt[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~0_combout\,
	datab => \amt[4]~input_o\,
	datac => \amt[5]~input_o\,
	datad => \Mux126~340_combout\,
	combout => \Mux126~341_combout\);

-- Location: LCCOMB_X4_Y5_N24
\Mux126~377\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~377_combout\ = (\amt[3]~input_o\ & (((\amt[2]~input_o\)))) # (!\amt[3]~input_o\ & ((\amt[2]~input_o\ & ((\Mux126~341_combout\))) # (!\amt[2]~input_o\ & (\Mux126~323_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datab => \Mux126~323_combout\,
	datac => \Mux126~341_combout\,
	datad => \amt[2]~input_o\,
	combout => \Mux126~377_combout\);

-- Location: LCCOMB_X5_Y9_N10
\Mux126~375\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~375_combout\ = (\Mux126~220_combout\ & ((\Mux126~366_combout\) # ((\Mux62~0_combout\)))) # (!\Mux126~220_combout\ & (!\Mux126~366_combout\ & ((\Mux126~454_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~220_combout\,
	datab => \Mux126~366_combout\,
	datac => \Mux62~0_combout\,
	datad => \Mux126~454_combout\,
	combout => \Mux126~375_combout\);

-- Location: LCCOMB_X5_Y9_N12
\Mux126~376\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~376_combout\ = (\Mux126~366_combout\ & ((\Mux126~375_combout\ & (\a[49]~input_o\)) # (!\Mux126~375_combout\ & ((\Mux45~0_combout\))))) # (!\Mux126~366_combout\ & (((\Mux126~375_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~366_combout\,
	datab => \a[49]~input_o\,
	datac => \Mux45~0_combout\,
	datad => \Mux126~375_combout\,
	combout => \Mux126~376_combout\);

-- Location: LCCOMB_X4_Y5_N2
\Mux126~378\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~378_combout\ = (\Mux126~377_combout\ & (((\Mux126~376_combout\) # (!\amt[3]~input_o\)))) # (!\Mux126~377_combout\ & (\Mux126~358_combout\ & (\amt[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~358_combout\,
	datab => \Mux126~377_combout\,
	datac => \amt[3]~input_o\,
	datad => \Mux126~376_combout\,
	combout => \Mux126~378_combout\);

-- Location: LCCOMB_X5_Y5_N6
\Mux76~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux76~2_combout\ = (\Mux76~0_combout\) # ((\Mux76~1_combout\) # ((\Mux106~2_combout\ & \Mux126~378_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux106~2_combout\,
	datab => \Mux76~0_combout\,
	datac => \Mux76~1_combout\,
	datad => \Mux126~378_combout\,
	combout => \Mux76~2_combout\);

-- Location: LCCOMB_X1_Y5_N16
\Mux126~380\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~380_combout\ = (\Mux126~379_combout\ & (((\a[50]~input_o\)) # (!\Mux126~220_combout\))) # (!\Mux126~379_combout\ & (\Mux126~220_combout\ & (\Mux62~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~379_combout\,
	datab => \Mux126~220_combout\,
	datac => \Mux62~0_combout\,
	datad => \a[50]~input_o\,
	combout => \Mux126~380_combout\);

-- Location: LCCOMB_X4_Y4_N20
\Mux126~381\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~381_combout\ = (\amt[3]~input_o\ & (((\amt[2]~input_o\)))) # (!\amt[3]~input_o\ & ((\amt[2]~input_o\ & (\Mux126~345_combout\)) # (!\amt[2]~input_o\ & ((\Mux126~328_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datab => \Mux126~345_combout\,
	datac => \Mux126~328_combout\,
	datad => \amt[2]~input_o\,
	combout => \Mux126~381_combout\);

-- Location: LCCOMB_X4_Y4_N6
\Mux126~382\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~382_combout\ = (\amt[3]~input_o\ & ((\Mux126~381_combout\ & ((\Mux126~380_combout\))) # (!\Mux126~381_combout\ & (\Mux126~362_combout\)))) # (!\amt[3]~input_o\ & (((\Mux126~381_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~362_combout\,
	datab => \Mux126~380_combout\,
	datac => \amt[3]~input_o\,
	datad => \Mux126~381_combout\,
	combout => \Mux126~382_combout\);

-- Location: LCCOMB_X5_Y5_N0
\Mux75~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux75~0_combout\ = (\amt[1]~input_o\ & (\amt[0]~input_o\)) # (!\amt[1]~input_o\ & ((\amt[0]~input_o\ & ((\Mux126~374_combout\))) # (!\amt[0]~input_o\ & (\Mux126~370_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datab => \amt[0]~input_o\,
	datac => \Mux126~370_combout\,
	datad => \Mux126~374_combout\,
	combout => \Mux75~0_combout\);

-- Location: LCCOMB_X4_Y7_N26
\Mux75~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux75~1_combout\ = (\amt[1]~input_o\ & ((\Mux75~0_combout\ & (\Mux126~382_combout\)) # (!\Mux75~0_combout\ & ((\Mux126~378_combout\))))) # (!\amt[1]~input_o\ & (((\Mux75~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~382_combout\,
	datab => \Mux126~378_combout\,
	datac => \amt[1]~input_o\,
	datad => \Mux75~0_combout\,
	combout => \Mux75~1_combout\);

-- Location: LCCOMB_X6_Y9_N10
\Mux126~386\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~386_combout\ = (\amt[3]~input_o\ & ((\amt[2]~input_o\ & (\Mux126~385_combout\)) # (!\amt[2]~input_o\ & ((\Mux126~368_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~385_combout\,
	datab => \amt[2]~input_o\,
	datac => \amt[3]~input_o\,
	datad => \Mux126~368_combout\,
	combout => \Mux126~386_combout\);

-- Location: LCCOMB_X6_Y9_N8
\Mux126~383\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~383_combout\ = (!\amt[3]~input_o\ & ((\amt[2]~input_o\ & ((\Mux126~349_combout\))) # (!\amt[2]~input_o\ & (\Mux126~333_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~333_combout\,
	datab => \amt[2]~input_o\,
	datac => \Mux126~349_combout\,
	datad => \amt[3]~input_o\,
	combout => \Mux126~383_combout\);

-- Location: LCCOMB_X4_Y7_N14
\Mux74~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux74~4_combout\ = (\amt[0]~input_o\ & (\amt[1]~input_o\ & ((\Mux126~386_combout\) # (\Mux126~383_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \amt[1]~input_o\,
	datac => \Mux126~386_combout\,
	datad => \Mux126~383_combout\,
	combout => \Mux74~4_combout\);

-- Location: LCCOMB_X4_Y7_N12
\Mux74~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux74~2_combout\ = (!\amt[0]~input_o\ & ((\amt[1]~input_o\ & ((\Mux126~382_combout\))) # (!\amt[1]~input_o\ & (\Mux126~374_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \amt[1]~input_o\,
	datac => \Mux126~374_combout\,
	datad => \Mux126~382_combout\,
	combout => \Mux74~2_combout\);

-- Location: LCCOMB_X4_Y7_N30
\Mux74~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux74~3_combout\ = (\Mux74~4_combout\) # ((\Mux74~2_combout\) # ((\Mux106~4_combout\ & \Mux126~378_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux106~4_combout\,
	datab => \Mux126~378_combout\,
	datac => \Mux74~4_combout\,
	datad => \Mux74~2_combout\,
	combout => \Mux74~3_combout\);

-- Location: LCCOMB_X4_Y7_N10
\Mux126~392\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~392_combout\ = (\Mux126~386_combout\) # (\Mux126~383_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux126~386_combout\,
	datad => \Mux126~383_combout\,
	combout => \Mux126~392_combout\);

-- Location: LCCOMB_X4_Y7_N20
\Mux73~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux73~0_combout\ = (\amt[0]~input_o\ & (((\amt[1]~input_o\)))) # (!\amt[0]~input_o\ & ((\amt[1]~input_o\ & ((\Mux126~392_combout\))) # (!\amt[1]~input_o\ & (\Mux126~378_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \Mux126~378_combout\,
	datac => \amt[1]~input_o\,
	datad => \Mux126~392_combout\,
	combout => \Mux73~0_combout\);

-- Location: LCCOMB_X5_Y8_N30
\Mux126~387\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~387_combout\ = (!\amt[3]~input_o\ & ((\amt[2]~input_o\ & (\Mux126~353_combout\)) # (!\amt[2]~input_o\ & ((\Mux126~337_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datab => \amt[3]~input_o\,
	datac => \Mux126~353_combout\,
	datad => \Mux126~337_combout\,
	combout => \Mux126~387_combout\);

-- Location: LCCOMB_X4_Y8_N20
\Mux126~390\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~390_combout\ = (\amt[3]~input_o\ & ((\amt[2]~input_o\ & (\Mux126~389_combout\)) # (!\amt[2]~input_o\ & ((\Mux126~372_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~389_combout\,
	datab => \amt[2]~input_o\,
	datac => \amt[3]~input_o\,
	datad => \Mux126~372_combout\,
	combout => \Mux126~390_combout\);

-- Location: LCCOMB_X4_Y7_N0
\Mux126~391\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~391_combout\ = (\Mux126~387_combout\) # (\Mux126~390_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux126~387_combout\,
	datad => \Mux126~390_combout\,
	combout => \Mux126~391_combout\);

-- Location: LCCOMB_X4_Y7_N22
\Mux73~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux73~1_combout\ = (\Mux73~0_combout\ & (((\Mux126~391_combout\) # (!\amt[0]~input_o\)))) # (!\Mux73~0_combout\ & (\Mux126~382_combout\ & (\amt[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~382_combout\,
	datab => \Mux73~0_combout\,
	datac => \amt[0]~input_o\,
	datad => \Mux126~391_combout\,
	combout => \Mux73~1_combout\);

-- Location: LCCOMB_X4_Y8_N14
\Mux126~396\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~396_combout\ = (\amt[3]~input_o\ & ((\amt[2]~input_o\ & (\Mux126~395_combout\)) # (!\amt[2]~input_o\ & ((\Mux126~376_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~395_combout\,
	datab => \amt[2]~input_o\,
	datac => \amt[3]~input_o\,
	datad => \Mux126~376_combout\,
	combout => \Mux126~396_combout\);

-- Location: LCCOMB_X5_Y5_N10
\Mux126~397\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~397_combout\ = (\Mux126~393_combout\) # (\Mux126~396_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~393_combout\,
	datad => \Mux126~396_combout\,
	combout => \Mux126~397_combout\);

-- Location: LCCOMB_X4_Y7_N16
\Mux72~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux72~0_combout\ = (\amt[0]~input_o\ & (((\amt[1]~input_o\) # (\Mux126~392_combout\)))) # (!\amt[0]~input_o\ & (\Mux126~382_combout\ & (!\amt[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~382_combout\,
	datab => \amt[0]~input_o\,
	datac => \amt[1]~input_o\,
	datad => \Mux126~392_combout\,
	combout => \Mux72~0_combout\);

-- Location: LCCOMB_X4_Y7_N2
\Mux72~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux72~1_combout\ = (\amt[1]~input_o\ & ((\Mux72~0_combout\ & ((\Mux126~397_combout\))) # (!\Mux72~0_combout\ & (\Mux126~391_combout\)))) # (!\amt[1]~input_o\ & (((\Mux72~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datab => \Mux126~391_combout\,
	datac => \Mux126~397_combout\,
	datad => \Mux72~0_combout\,
	combout => \Mux72~1_combout\);

-- Location: LCCOMB_X4_Y7_N6
\Mux71~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux71~1_combout\ = (\amt[0]~input_o\ & (!\amt[1]~input_o\ & ((\Mux126~387_combout\) # (\Mux126~390_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \amt[1]~input_o\,
	datac => \Mux126~387_combout\,
	datad => \Mux126~390_combout\,
	combout => \Mux71~1_combout\);

-- Location: LCCOMB_X4_Y7_N4
\Mux71~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux71~0_combout\ = (!\amt[0]~input_o\ & ((\amt[1]~input_o\ & (\Mux126~397_combout\)) # (!\amt[1]~input_o\ & ((\Mux126~392_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \Mux126~397_combout\,
	datac => \amt[1]~input_o\,
	datad => \Mux126~392_combout\,
	combout => \Mux71~0_combout\);

-- Location: LCCOMB_X6_Y8_N4
\Mux126~326\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~326_combout\ = (\lar[1]~input_o\ & ((\amt[5]~input_o\ & (\a[38]~input_o\)) # (!\amt[5]~input_o\ & ((\a[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[38]~input_o\,
	datab => \amt[5]~input_o\,
	datac => \a[6]~input_o\,
	datad => \lar[1]~input_o\,
	combout => \Mux126~326_combout\);

-- Location: LCCOMB_X6_Y8_N28
\Mux126~459\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~459_combout\ = (\Mux126~326_combout\) # ((\lar[0]~input_o\ & (!\lar[1]~input_o\ & \a[63]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[0]~input_o\,
	datab => \lar[1]~input_o\,
	datac => \Mux126~326_combout\,
	datad => \a[63]~input_o\,
	combout => \Mux126~459_combout\);

-- Location: LCCOMB_X1_Y5_N2
\Mux126~399\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~399_combout\ = (\Mux126~366_combout\ & ((\Mux40~0_combout\) # ((\Mux126~220_combout\)))) # (!\Mux126~366_combout\ & (((\Mux126~459_combout\ & !\Mux126~220_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~366_combout\,
	datab => \Mux40~0_combout\,
	datac => \Mux126~459_combout\,
	datad => \Mux126~220_combout\,
	combout => \Mux126~399_combout\);

-- Location: LCCOMB_X1_Y5_N12
\Mux126~400\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~400_combout\ = (\Mux126~399_combout\ & ((\a[54]~input_o\) # ((!\Mux126~220_combout\)))) # (!\Mux126~399_combout\ & (((\Mux62~0_combout\ & \Mux126~220_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[54]~input_o\,
	datab => \Mux126~399_combout\,
	datac => \Mux62~0_combout\,
	datad => \Mux126~220_combout\,
	combout => \Mux126~400_combout\);

-- Location: LCCOMB_X4_Y4_N26
\Mux126~401\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~401_combout\ = (\amt[3]~input_o\ & ((\amt[2]~input_o\ & ((\Mux126~400_combout\))) # (!\amt[2]~input_o\ & (\Mux126~380_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datab => \Mux126~380_combout\,
	datac => \amt[3]~input_o\,
	datad => \Mux126~400_combout\,
	combout => \Mux126~401_combout\);

-- Location: LCCOMB_X5_Y4_N16
\Mux126~402\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~402_combout\ = (\Mux126~398_combout\) # (\Mux126~401_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~398_combout\,
	datac => \Mux126~401_combout\,
	combout => \Mux126~402_combout\);

-- Location: LCCOMB_X4_Y7_N24
\Mux71~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux71~2_combout\ = (\Mux71~1_combout\) # ((\Mux71~0_combout\) # ((\Mux106~2_combout\ & \Mux126~402_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux71~1_combout\,
	datab => \Mux106~2_combout\,
	datac => \Mux71~0_combout\,
	datad => \Mux126~402_combout\,
	combout => \Mux71~2_combout\);

-- Location: LCCOMB_X5_Y5_N12
\Mux70~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux70~1_combout\ = (\amt[0]~input_o\ & (!\amt[1]~input_o\ & ((\Mux126~393_combout\) # (\Mux126~396_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~393_combout\,
	datab => \amt[0]~input_o\,
	datac => \amt[1]~input_o\,
	datad => \Mux126~396_combout\,
	combout => \Mux70~1_combout\);

-- Location: LCCOMB_X4_Y7_N18
\Mux70~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux70~0_combout\ = (!\amt[0]~input_o\ & ((\amt[1]~input_o\ & ((\Mux126~402_combout\))) # (!\amt[1]~input_o\ & (\Mux126~391_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \Mux126~391_combout\,
	datac => \amt[1]~input_o\,
	datad => \Mux126~402_combout\,
	combout => \Mux70~0_combout\);

-- Location: LCCOMB_X6_Y9_N12
\Mux126~403\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~403_combout\ = (\Mux126~368_combout\ & (\amt[2]~input_o\ & !\amt[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~368_combout\,
	datab => \amt[2]~input_o\,
	datad => \amt[3]~input_o\,
	combout => \Mux126~403_combout\);

-- Location: LCCOMB_X6_Y9_N16
\Mux126~407\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~407_combout\ = (\Mux126~406_combout\) # ((\Mux126~403_combout\) # ((\Mux126~261_combout\ & \Mux126~349_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~406_combout\,
	datab => \Mux126~261_combout\,
	datac => \Mux126~349_combout\,
	datad => \Mux126~403_combout\,
	combout => \Mux126~407_combout\);

-- Location: LCCOMB_X5_Y5_N30
\Mux70~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux70~2_combout\ = (\Mux70~1_combout\) # ((\Mux70~0_combout\) # ((\Mux106~2_combout\ & \Mux126~407_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux70~1_combout\,
	datab => \Mux70~0_combout\,
	datac => \Mux106~2_combout\,
	datad => \Mux126~407_combout\,
	combout => \Mux70~2_combout\);

-- Location: LCCOMB_X7_Y8_N30
\Mux126~409\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~409_combout\ = (\Mux126~220_combout\ & (\Mux126~366_combout\)) # (!\Mux126~220_combout\ & ((\Mux126~366_combout\ & ((\Mux38~0_combout\))) # (!\Mux126~366_combout\ & (\Mux126~461_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~220_combout\,
	datab => \Mux126~366_combout\,
	datac => \Mux126~461_combout\,
	datad => \Mux38~0_combout\,
	combout => \Mux126~409_combout\);

-- Location: LCCOMB_X7_Y8_N8
\Mux126~410\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~410_combout\ = (\Mux126~409_combout\ & (((\a[56]~input_o\) # (!\Mux126~220_combout\)))) # (!\Mux126~409_combout\ & (\Mux62~0_combout\ & (\Mux126~220_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux62~0_combout\,
	datab => \Mux126~409_combout\,
	datac => \Mux126~220_combout\,
	datad => \a[56]~input_o\,
	combout => \Mux126~410_combout\);

-- Location: LCCOMB_X4_Y8_N2
\Mux126~411\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~411_combout\ = (\amt[3]~input_o\ & ((\amt[2]~input_o\ & ((\Mux126~410_combout\))) # (!\amt[2]~input_o\ & (\Mux126~389_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~389_combout\,
	datab => \amt[2]~input_o\,
	datac => \amt[3]~input_o\,
	datad => \Mux126~410_combout\,
	combout => \Mux126~411_combout\);

-- Location: LCCOMB_X4_Y8_N8
\Mux126~408\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~408_combout\ = (\amt[2]~input_o\ & (!\amt[3]~input_o\ & \Mux126~372_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[2]~input_o\,
	datac => \amt[3]~input_o\,
	datad => \Mux126~372_combout\,
	combout => \Mux126~408_combout\);

-- Location: LCCOMB_X4_Y8_N4
\Mux126~412\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~412_combout\ = (\Mux126~411_combout\) # ((\Mux126~408_combout\) # ((\Mux126~353_combout\ & \Mux126~261_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~353_combout\,
	datab => \Mux126~411_combout\,
	datac => \Mux126~408_combout\,
	datad => \Mux126~261_combout\,
	combout => \Mux126~412_combout\);

-- Location: LCCOMB_X4_Y7_N28
\Mux69~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux69~0_combout\ = (\amt[0]~input_o\ & ((\amt[1]~input_o\) # ((\Mux126~402_combout\)))) # (!\amt[0]~input_o\ & (!\amt[1]~input_o\ & (\Mux126~397_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \amt[1]~input_o\,
	datac => \Mux126~397_combout\,
	datad => \Mux126~402_combout\,
	combout => \Mux69~0_combout\);

-- Location: LCCOMB_X5_Y4_N26
\Mux69~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux69~1_combout\ = (\Mux69~0_combout\ & ((\Mux126~412_combout\) # ((!\amt[1]~input_o\)))) # (!\Mux69~0_combout\ & (((\amt[1]~input_o\ & \Mux126~407_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~412_combout\,
	datab => \Mux69~0_combout\,
	datac => \amt[1]~input_o\,
	datad => \Mux126~407_combout\,
	combout => \Mux69~1_combout\);

-- Location: LCCOMB_X3_Y4_N4
\Mux126~361\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~361_combout\ = (\lar[1]~input_o\ & ((\amt[5]~input_o\ & (\a[46]~input_o\)) # (!\amt[5]~input_o\ & ((\a[14]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[46]~input_o\,
	datab => \lar[1]~input_o\,
	datac => \amt[5]~input_o\,
	datad => \a[14]~input_o\,
	combout => \Mux126~361_combout\);

-- Location: LCCOMB_X3_Y5_N4
\Mux62~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux62~1_combout\ = (!\lar[1]~input_o\ & (\lar[0]~input_o\ & \a[63]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[1]~input_o\,
	datab => \lar[0]~input_o\,
	datac => \a[63]~input_o\,
	combout => \Mux62~1_combout\);

-- Location: LCCOMB_X4_Y4_N22
\Mux126~362\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~362_combout\ = (\amt[4]~input_o\ & (((\Mux126~361_combout\) # (\Mux62~1_combout\)))) # (!\amt[4]~input_o\ & (\Mux126~287_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \Mux126~287_combout\,
	datac => \Mux126~361_combout\,
	datad => \Mux62~1_combout\,
	combout => \Mux126~362_combout\);

-- Location: LCCOMB_X4_Y4_N8
\Mux126~398\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~398_combout\ = (!\amt[3]~input_o\ & ((\amt[2]~input_o\ & ((\Mux126~362_combout\))) # (!\amt[2]~input_o\ & (\Mux126~345_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datab => \Mux126~345_combout\,
	datac => \Mux126~362_combout\,
	datad => \amt[2]~input_o\,
	combout => \Mux126~398_combout\);

-- Location: LCCOMB_X5_Y4_N12
\Mux68~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux68~0_combout\ = (!\amt[1]~input_o\ & (!\amt[0]~input_o\ & ((\Mux126~401_combout\) # (\Mux126~398_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datab => \amt[0]~input_o\,
	datac => \Mux126~401_combout\,
	datad => \Mux126~398_combout\,
	combout => \Mux68~0_combout\);

-- Location: LCCOMB_X5_Y4_N22
\Mux68~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux68~1_combout\ = (\amt[1]~input_o\ & ((\amt[0]~input_o\ & (\Mux126~417_combout\)) # (!\amt[0]~input_o\ & ((\Mux126~412_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~417_combout\,
	datab => \amt[0]~input_o\,
	datac => \amt[1]~input_o\,
	datad => \Mux126~412_combout\,
	combout => \Mux68~1_combout\);

-- Location: LCCOMB_X5_Y4_N0
\Mux68~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux68~2_combout\ = (\Mux68~0_combout\) # ((\Mux68~1_combout\) # ((\Mux106~4_combout\ & \Mux126~407_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux68~0_combout\,
	datab => \Mux106~4_combout\,
	datac => \Mux68~1_combout\,
	datad => \Mux126~407_combout\,
	combout => \Mux68~2_combout\);

-- Location: LCCOMB_X4_Y4_N12
\Mux126~418\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~418_combout\ = (\amt[2]~input_o\ & (!\amt[3]~input_o\ & \Mux126~380_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datac => \amt[3]~input_o\,
	datad => \Mux126~380_combout\,
	combout => \Mux126~418_combout\);

-- Location: LCCOMB_X4_Y4_N16
\Mux126~422\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~422_combout\ = (\Mux126~421_combout\) # ((\Mux126~418_combout\) # ((\Mux126~261_combout\ & \Mux126~362_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~421_combout\,
	datab => \Mux126~261_combout\,
	datac => \Mux126~362_combout\,
	datad => \Mux126~418_combout\,
	combout => \Mux126~422_combout\);

-- Location: LCCOMB_X4_Y9_N24
\Mux126~414\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~414_combout\ = (\Mux126~366_combout\ & (((\Mux126~220_combout\)))) # (!\Mux126~366_combout\ & ((\Mux126~220_combout\ & ((\Mux62~0_combout\))) # (!\Mux126~220_combout\ & (\Mux126~462_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~366_combout\,
	datab => \Mux126~462_combout\,
	datac => \Mux126~220_combout\,
	datad => \Mux62~0_combout\,
	combout => \Mux126~414_combout\);

-- Location: LCCOMB_X3_Y9_N2
\Mux37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux37~0_combout\ = (\lar[1]~input_o\ & (\a[25]~input_o\)) # (!\lar[1]~input_o\ & (((\lar[0]~input_o\ & \a[63]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[25]~input_o\,
	datab => \lar[1]~input_o\,
	datac => \lar[0]~input_o\,
	datad => \a[63]~input_o\,
	combout => \Mux37~0_combout\);

-- Location: LCCOMB_X4_Y9_N2
\Mux126~415\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~415_combout\ = (\Mux126~366_combout\ & ((\Mux126~414_combout\ & (\a[57]~input_o\)) # (!\Mux126~414_combout\ & ((\Mux37~0_combout\))))) # (!\Mux126~366_combout\ & (\Mux126~414_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~366_combout\,
	datab => \Mux126~414_combout\,
	datac => \a[57]~input_o\,
	datad => \Mux37~0_combout\,
	combout => \Mux126~415_combout\);

-- Location: LCCOMB_X4_Y8_N0
\Mux126~416\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~416_combout\ = (\amt[3]~input_o\ & ((\amt[2]~input_o\ & ((\Mux126~415_combout\))) # (!\amt[2]~input_o\ & (\Mux126~395_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~395_combout\,
	datab => \amt[2]~input_o\,
	datac => \amt[3]~input_o\,
	datad => \Mux126~415_combout\,
	combout => \Mux126~416_combout\);

-- Location: LCCOMB_X4_Y8_N22
\Mux126~413\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~413_combout\ = (!\amt[3]~input_o\ & (\amt[2]~input_o\ & \Mux126~376_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datab => \amt[2]~input_o\,
	datad => \Mux126~376_combout\,
	combout => \Mux126~413_combout\);

-- Location: LCCOMB_X4_Y8_N18
\Mux126~417\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~417_combout\ = (\Mux126~416_combout\) # ((\Mux126~413_combout\) # ((\Mux126~358_combout\ & \Mux126~261_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~358_combout\,
	datab => \Mux126~416_combout\,
	datac => \Mux126~413_combout\,
	datad => \Mux126~261_combout\,
	combout => \Mux126~417_combout\);

-- Location: LCCOMB_X5_Y4_N10
\Mux67~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux67~0_combout\ = (\amt[0]~input_o\ & ((\Mux126~412_combout\) # ((\amt[1]~input_o\)))) # (!\amt[0]~input_o\ & (((!\amt[1]~input_o\ & \Mux126~407_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~412_combout\,
	datab => \amt[0]~input_o\,
	datac => \amt[1]~input_o\,
	datad => \Mux126~407_combout\,
	combout => \Mux67~0_combout\);

-- Location: LCCOMB_X5_Y4_N28
\Mux67~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux67~1_combout\ = (\amt[1]~input_o\ & ((\Mux67~0_combout\ & (\Mux126~422_combout\)) # (!\Mux67~0_combout\ & ((\Mux126~417_combout\))))) # (!\amt[1]~input_o\ & (((\Mux67~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~422_combout\,
	datab => \amt[1]~input_o\,
	datac => \Mux126~417_combout\,
	datad => \Mux67~0_combout\,
	combout => \Mux67~1_combout\);

-- Location: LCCOMB_X5_Y4_N14
\Mux66~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux66~0_combout\ = (\amt[0]~input_o\ & ((\Mux126~417_combout\) # ((\amt[1]~input_o\)))) # (!\amt[0]~input_o\ & (((!\amt[1]~input_o\ & \Mux126~412_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~417_combout\,
	datab => \amt[0]~input_o\,
	datac => \amt[1]~input_o\,
	datad => \Mux126~412_combout\,
	combout => \Mux66~0_combout\);

-- Location: LCCOMB_X6_Y9_N28
\Mux126~424\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~424_combout\ = (\Mux126~385_combout\ & (\amt[2]~input_o\ & !\amt[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~385_combout\,
	datab => \amt[2]~input_o\,
	datad => \amt[3]~input_o\,
	combout => \Mux126~424_combout\);

-- Location: LCCOMB_X1_Y9_N8
\Mux126~425\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~425_combout\ = (\Mux126~366_combout\ & (\Mux126~220_combout\)) # (!\Mux126~366_combout\ & ((\Mux126~220_combout\ & ((\Mux62~0_combout\))) # (!\Mux126~220_combout\ & (\Mux126~464_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~366_combout\,
	datab => \Mux126~220_combout\,
	datac => \Mux126~464_combout\,
	datad => \Mux62~0_combout\,
	combout => \Mux126~425_combout\);

-- Location: LCCOMB_X1_Y9_N10
\Mux126~426\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~426_combout\ = (\Mux126~366_combout\ & ((\Mux126~425_combout\ & (\a[59]~input_o\)) # (!\Mux126~425_combout\ & ((\Mux35~0_combout\))))) # (!\Mux126~366_combout\ & (((\Mux126~425_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~366_combout\,
	datab => \a[59]~input_o\,
	datac => \Mux126~425_combout\,
	datad => \Mux35~0_combout\,
	combout => \Mux126~426_combout\);

-- Location: LCCOMB_X2_Y6_N30
\Mux126~331\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~331_combout\ = (\lar[1]~input_o\ & ((\amt[5]~input_o\ & ((\a[39]~input_o\))) # (!\amt[5]~input_o\ & (\a[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[1]~input_o\,
	datab => \amt[5]~input_o\,
	datac => \a[7]~input_o\,
	datad => \a[39]~input_o\,
	combout => \Mux126~331_combout\);

-- Location: LCCOMB_X3_Y5_N22
\Mux126~460\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~460_combout\ = (\Mux126~331_combout\) # ((!\lar[1]~input_o\ & (\lar[0]~input_o\ & \a[63]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[1]~input_o\,
	datab => \lar[0]~input_o\,
	datac => \a[63]~input_o\,
	datad => \Mux126~331_combout\,
	combout => \Mux126~460_combout\);

-- Location: LCCOMB_X3_Y9_N16
\Mux126~404\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~404_combout\ = (\Mux126~366_combout\ & (((\Mux126~220_combout\)))) # (!\Mux126~366_combout\ & ((\Mux126~220_combout\ & ((\Mux62~0_combout\))) # (!\Mux126~220_combout\ & (\Mux126~460_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~366_combout\,
	datab => \Mux126~460_combout\,
	datac => \Mux126~220_combout\,
	datad => \Mux62~0_combout\,
	combout => \Mux126~404_combout\);

-- Location: LCCOMB_X3_Y9_N26
\Mux126~405\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~405_combout\ = (\Mux126~366_combout\ & ((\Mux126~404_combout\ & (\a[55]~input_o\)) # (!\Mux126~404_combout\ & ((\Mux39~0_combout\))))) # (!\Mux126~366_combout\ & (((\Mux126~404_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~366_combout\,
	datab => \a[55]~input_o\,
	datac => \Mux39~0_combout\,
	datad => \Mux126~404_combout\,
	combout => \Mux126~405_combout\);

-- Location: LCCOMB_X6_Y9_N2
\Mux126~423\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~423_combout\ = (!\amt[2]~input_o\ & ((\amt[3]~input_o\ & ((\Mux126~405_combout\))) # (!\amt[3]~input_o\ & (\Mux126~368_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~368_combout\,
	datab => \amt[2]~input_o\,
	datac => \Mux126~405_combout\,
	datad => \amt[3]~input_o\,
	combout => \Mux126~423_combout\);

-- Location: LCCOMB_X6_Y9_N14
\Mux126~427\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~427_combout\ = (\Mux126~424_combout\) # ((\Mux126~423_combout\) # ((\Mux126~244_combout\ & \Mux126~426_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~244_combout\,
	datab => \Mux126~424_combout\,
	datac => \Mux126~426_combout\,
	datad => \Mux126~423_combout\,
	combout => \Mux126~427_combout\);

-- Location: LCCOMB_X5_Y4_N24
\Mux66~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux66~1_combout\ = (\Mux66~0_combout\ & (((\Mux126~427_combout\) # (!\amt[1]~input_o\)))) # (!\Mux66~0_combout\ & (\Mux126~422_combout\ & (\amt[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~422_combout\,
	datab => \Mux66~0_combout\,
	datac => \amt[1]~input_o\,
	datad => \Mux126~427_combout\,
	combout => \Mux66~1_combout\);

-- Location: LCCOMB_X4_Y8_N28
\Mux126~428\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~428_combout\ = (!\amt[2]~input_o\ & ((\amt[3]~input_o\ & ((\Mux126~410_combout\))) # (!\amt[3]~input_o\ & (\Mux126~372_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~372_combout\,
	datab => \amt[2]~input_o\,
	datac => \amt[3]~input_o\,
	datad => \Mux126~410_combout\,
	combout => \Mux126~428_combout\);

-- Location: LCCOMB_X4_Y8_N10
\Mux126~389\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~389_combout\ = (\Mux126~388_combout\ & ((\a[52]~input_o\) # ((!\Mux126~220_combout\)))) # (!\Mux126~388_combout\ & (((\Mux126~220_combout\ & \Mux62~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~388_combout\,
	datab => \a[52]~input_o\,
	datac => \Mux126~220_combout\,
	datad => \Mux62~0_combout\,
	combout => \Mux126~389_combout\);

-- Location: LCCOMB_X4_Y8_N30
\Mux126~429\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~429_combout\ = (\amt[2]~input_o\ & (!\amt[3]~input_o\ & \Mux126~389_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[2]~input_o\,
	datac => \amt[3]~input_o\,
	datad => \Mux126~389_combout\,
	combout => \Mux126~429_combout\);

-- Location: LCCOMB_X7_Y8_N18
\Mux126~430\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~430_combout\ = (\Mux126~366_combout\ & (((\Mux126~220_combout\) # (\Mux34~0_combout\)))) # (!\Mux126~366_combout\ & (\Mux126~465_combout\ & (!\Mux126~220_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~465_combout\,
	datab => \Mux126~366_combout\,
	datac => \Mux126~220_combout\,
	datad => \Mux34~0_combout\,
	combout => \Mux126~430_combout\);

-- Location: LCCOMB_X4_Y8_N24
\Mux126~431\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~431_combout\ = (\Mux126~220_combout\ & ((\Mux126~430_combout\ & ((\a[60]~input_o\))) # (!\Mux126~430_combout\ & (\Mux62~0_combout\)))) # (!\Mux126~220_combout\ & (((\Mux126~430_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~220_combout\,
	datab => \Mux62~0_combout\,
	datac => \a[60]~input_o\,
	datad => \Mux126~430_combout\,
	combout => \Mux126~431_combout\);

-- Location: LCCOMB_X4_Y8_N26
\Mux126~432\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~432_combout\ = (\Mux126~428_combout\) # ((\Mux126~429_combout\) # ((\Mux126~244_combout\ & \Mux126~431_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~244_combout\,
	datab => \Mux126~428_combout\,
	datac => \Mux126~429_combout\,
	datad => \Mux126~431_combout\,
	combout => \Mux126~432_combout\);

-- Location: LCCOMB_X5_Y4_N18
\Mux65~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux65~0_combout\ = (\amt[1]~input_o\ & (((\amt[0]~input_o\)))) # (!\amt[1]~input_o\ & ((\amt[0]~input_o\ & (\Mux126~422_combout\)) # (!\amt[0]~input_o\ & ((\Mux126~417_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~422_combout\,
	datab => \amt[1]~input_o\,
	datac => \Mux126~417_combout\,
	datad => \amt[0]~input_o\,
	combout => \Mux65~0_combout\);

-- Location: LCCOMB_X5_Y4_N4
\Mux65~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux65~1_combout\ = (\Mux65~0_combout\ & ((\Mux126~432_combout\) # ((!\amt[1]~input_o\)))) # (!\Mux65~0_combout\ & (((\amt[1]~input_o\ & \Mux126~427_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~432_combout\,
	datab => \Mux65~0_combout\,
	datac => \amt[1]~input_o\,
	datad => \Mux126~427_combout\,
	combout => \Mux65~1_combout\);

-- Location: LCCOMB_X5_Y4_N30
\Mux64~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux64~0_combout\ = (!\amt[0]~input_o\ & ((\amt[1]~input_o\ & ((\Mux126~432_combout\))) # (!\amt[1]~input_o\ & (\Mux126~422_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~422_combout\,
	datab => \amt[1]~input_o\,
	datac => \Mux126~432_combout\,
	datad => \amt[0]~input_o\,
	combout => \Mux64~0_combout\);

-- Location: LCCOMB_X4_Y6_N2
\Mux126~433\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~433_combout\ = (\Mux126~244_combout\ & ((\lar[1]~input_o\ & (\Mux126~78_combout\)) # (!\lar[1]~input_o\ & ((\Mux62~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~78_combout\,
	datab => \Mux126~244_combout\,
	datac => \lar[1]~input_o\,
	datad => \Mux62~0_combout\,
	combout => \Mux126~433_combout\);

-- Location: LCCOMB_X4_Y8_N12
\Mux126~434\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~434_combout\ = (!\amt[2]~input_o\ & ((\amt[3]~input_o\ & (\Mux126~415_combout\)) # (!\amt[3]~input_o\ & ((\Mux126~376_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datab => \Mux126~415_combout\,
	datac => \amt[2]~input_o\,
	datad => \Mux126~376_combout\,
	combout => \Mux126~434_combout\);

-- Location: LCCOMB_X4_Y8_N6
\Mux126~435\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~435_combout\ = (\Mux126~434_combout\) # ((\Mux126~395_combout\ & (\amt[2]~input_o\ & !\amt[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~395_combout\,
	datab => \amt[2]~input_o\,
	datac => \amt[3]~input_o\,
	datad => \Mux126~434_combout\,
	combout => \Mux126~435_combout\);

-- Location: LCCOMB_X5_Y4_N8
\Mux126~436\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~436_combout\ = (\amt[1]~input_o\ & ((\Mux126~433_combout\) # ((\Mux126~435_combout\)))) # (!\amt[1]~input_o\ & (((\Mux126~427_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datab => \Mux126~433_combout\,
	datac => \Mux126~435_combout\,
	datad => \Mux126~427_combout\,
	combout => \Mux126~436_combout\);

-- Location: LCCOMB_X5_Y4_N2
\Mux64~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux64~1_combout\ = (\Mux64~0_combout\) # ((\amt[0]~input_o\ & \Mux126~436_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux64~0_combout\,
	datab => \amt[0]~input_o\,
	datac => \Mux126~436_combout\,
	combout => \Mux64~1_combout\);

-- Location: LCCOMB_X3_Y4_N30
\Mux63~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux63~1_combout\ = (\lar[1]~input_o\ & ((\amt[4]~input_o\ & ((\Mux126~98_combout\))) # (!\amt[4]~input_o\ & (\Mux126~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[1]~input_o\,
	datab => \Mux126~99_combout\,
	datac => \amt[4]~input_o\,
	datad => \Mux126~98_combout\,
	combout => \Mux63~1_combout\);

-- Location: LCCOMB_X1_Y4_N24
\Mux126~420\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~420_combout\ = (\Mux126~419_combout\ & (((\a[58]~input_o\)) # (!\Mux126~220_combout\))) # (!\Mux126~419_combout\ & (\Mux126~220_combout\ & (\Mux62~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~419_combout\,
	datab => \Mux126~220_combout\,
	datac => \Mux62~0_combout\,
	datad => \a[58]~input_o\,
	combout => \Mux126~420_combout\);

-- Location: LCCOMB_X4_Y4_N4
\Mux63~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux63~2_combout\ = (\amt[2]~input_o\ & ((\Mux63~1_combout\) # ((\Mux62~1_combout\)))) # (!\amt[2]~input_o\ & (((\Mux126~420_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datab => \Mux63~1_combout\,
	datac => \Mux126~420_combout\,
	datad => \Mux62~1_combout\,
	combout => \Mux63~2_combout\);

-- Location: LCCOMB_X4_Y4_N14
\Mux63~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux63~3_combout\ = (\Mux106~2_combout\ & ((\Mux63~0_combout\) # ((\Mux63~2_combout\ & \amt[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux63~0_combout\,
	datab => \Mux63~2_combout\,
	datac => \amt[3]~input_o\,
	datad => \Mux106~2_combout\,
	combout => \Mux63~3_combout\);

-- Location: LCCOMB_X5_Y4_N20
\Mux63~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux63~4_combout\ = (\Mux126~432_combout\ & (\amt[0]~input_o\ & !\amt[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~432_combout\,
	datab => \amt[0]~input_o\,
	datac => \amt[1]~input_o\,
	combout => \Mux63~4_combout\);

-- Location: LCCOMB_X5_Y4_N6
\Mux63~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux63~5_combout\ = (\Mux63~3_combout\) # ((\Mux63~4_combout\) # ((!\amt[0]~input_o\ & \Mux126~436_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux63~3_combout\,
	datab => \amt[0]~input_o\,
	datac => \Mux126~436_combout\,
	datad => \Mux63~4_combout\,
	combout => \Mux63~5_combout\);

ww_y(0) <= \y[0]~output_o\;

ww_y(1) <= \y[1]~output_o\;

ww_y(2) <= \y[2]~output_o\;

ww_y(3) <= \y[3]~output_o\;

ww_y(4) <= \y[4]~output_o\;

ww_y(5) <= \y[5]~output_o\;

ww_y(6) <= \y[6]~output_o\;

ww_y(7) <= \y[7]~output_o\;

ww_y(8) <= \y[8]~output_o\;

ww_y(9) <= \y[9]~output_o\;

ww_y(10) <= \y[10]~output_o\;

ww_y(11) <= \y[11]~output_o\;

ww_y(12) <= \y[12]~output_o\;

ww_y(13) <= \y[13]~output_o\;

ww_y(14) <= \y[14]~output_o\;

ww_y(15) <= \y[15]~output_o\;

ww_y(16) <= \y[16]~output_o\;

ww_y(17) <= \y[17]~output_o\;

ww_y(18) <= \y[18]~output_o\;

ww_y(19) <= \y[19]~output_o\;

ww_y(20) <= \y[20]~output_o\;

ww_y(21) <= \y[21]~output_o\;

ww_y(22) <= \y[22]~output_o\;

ww_y(23) <= \y[23]~output_o\;

ww_y(24) <= \y[24]~output_o\;

ww_y(25) <= \y[25]~output_o\;

ww_y(26) <= \y[26]~output_o\;

ww_y(27) <= \y[27]~output_o\;

ww_y(28) <= \y[28]~output_o\;

ww_y(29) <= \y[29]~output_o\;

ww_y(30) <= \y[30]~output_o\;

ww_y(31) <= \y[31]~output_o\;

ww_y(32) <= \y[32]~output_o\;

ww_y(33) <= \y[33]~output_o\;

ww_y(34) <= \y[34]~output_o\;

ww_y(35) <= \y[35]~output_o\;

ww_y(36) <= \y[36]~output_o\;

ww_y(37) <= \y[37]~output_o\;

ww_y(38) <= \y[38]~output_o\;

ww_y(39) <= \y[39]~output_o\;

ww_y(40) <= \y[40]~output_o\;

ww_y(41) <= \y[41]~output_o\;

ww_y(42) <= \y[42]~output_o\;

ww_y(43) <= \y[43]~output_o\;

ww_y(44) <= \y[44]~output_o\;

ww_y(45) <= \y[45]~output_o\;

ww_y(46) <= \y[46]~output_o\;

ww_y(47) <= \y[47]~output_o\;

ww_y(48) <= \y[48]~output_o\;

ww_y(49) <= \y[49]~output_o\;

ww_y(50) <= \y[50]~output_o\;

ww_y(51) <= \y[51]~output_o\;

ww_y(52) <= \y[52]~output_o\;

ww_y(53) <= \y[53]~output_o\;

ww_y(54) <= \y[54]~output_o\;

ww_y(55) <= \y[55]~output_o\;

ww_y(56) <= \y[56]~output_o\;

ww_y(57) <= \y[57]~output_o\;

ww_y(58) <= \y[58]~output_o\;

ww_y(59) <= \y[59]~output_o\;

ww_y(60) <= \y[60]~output_o\;

ww_y(61) <= \y[61]~output_o\;

ww_y(62) <= \y[62]~output_o\;

ww_y(63) <= \y[63]~output_o\;
END structure;


