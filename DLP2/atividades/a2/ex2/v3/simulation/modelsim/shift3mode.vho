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

-- DATE "04/30/2019 00:40:41"

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
	a : IN std_logic_vector(31 DOWNTO 0);
	lar : IN std_logic_vector(1 DOWNTO 0);
	amt : IN std_logic_vector(4 DOWNTO 0);
	y : OUT std_logic_vector(31 DOWNTO 0)
	);
END shift3mode;

-- Design Ports Information
-- y[0]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[4]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[5]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[6]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[7]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[8]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[9]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[10]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[11]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[12]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[13]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[14]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[15]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[16]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[17]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[18]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[19]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[20]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[21]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[22]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[23]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[24]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[25]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[26]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[27]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[28]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[29]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[30]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[31]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[23]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[21]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- amt[1]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[22]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[20]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- amt[0]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[19]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[17]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[18]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[16]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- amt[2]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- amt[3]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[31]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[29]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[30]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[28]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[27]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[25]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[26]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[24]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[11]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[9]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[10]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[8]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[15]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[13]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[14]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[12]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- amt[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lar[0]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lar[1]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_a : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_lar : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_amt : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(31 DOWNTO 0);
SIGNAL \le_out[1][4]~46_combout\ : std_logic;
SIGNAL \le_out[1][0]~55_combout\ : std_logic;
SIGNAL \le_out[1][1]~56_combout\ : std_logic;
SIGNAL \le_out[1][0]~57_combout\ : std_logic;
SIGNAL \le_out[1][22]~63_combout\ : std_logic;
SIGNAL \le_out[3][18]~81_combout\ : std_logic;
SIGNAL \le_out[3][2]~94_combout\ : std_logic;
SIGNAL \le_out[3][19]~107_combout\ : std_logic;
SIGNAL \le_out[3][3]~114_combout\ : std_logic;
SIGNAL \le_out[2][28]~121_combout\ : std_logic;
SIGNAL \le_out[2][28]~122_combout\ : std_logic;
SIGNAL \le_out[1][4]~124_combout\ : std_logic;
SIGNAL \le_out[2][31]~148_combout\ : std_logic;
SIGNAL \le_out[3][24]~159_combout\ : std_logic;
SIGNAL \le_out[3][27]~178_combout\ : std_logic;
SIGNAL \le_out[3][11]~181_combout\ : std_logic;
SIGNAL \le_out[3][28]~185_combout\ : std_logic;
SIGNAL \a[28]~input_o\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \a[12]~input_o\ : std_logic;
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
SIGNAL \amt[3]~input_o\ : std_logic;
SIGNAL \amt[2]~input_o\ : std_logic;
SIGNAL \le_out[3][0]~42_combout\ : std_logic;
SIGNAL \amt[0]~input_o\ : std_logic;
SIGNAL \amt[1]~input_o\ : std_logic;
SIGNAL \a[25]~input_o\ : std_logic;
SIGNAL \a[27]~input_o\ : std_logic;
SIGNAL \le_out[1][25]~38_combout\ : std_logic;
SIGNAL \le_out[1][24]~40_combout\ : std_logic;
SIGNAL \a[29]~input_o\ : std_logic;
SIGNAL \a[31]~input_o\ : std_logic;
SIGNAL \le_out[1][28]~35_combout\ : std_logic;
SIGNAL \le_out[1][28]~37_combout\ : std_logic;
SIGNAL \le_out[3][16]~43_combout\ : std_logic;
SIGNAL \a[19]~input_o\ : std_logic;
SIGNAL \le_out[1][17]~29_combout\ : std_logic;
SIGNAL \le_out[1][16]~31_combout\ : std_logic;
SIGNAL \a[20]~input_o\ : std_logic;
SIGNAL \a[22]~input_o\ : std_logic;
SIGNAL \le_out[1][20]~27_combout\ : std_logic;
SIGNAL \a[21]~input_o\ : std_logic;
SIGNAL \a[23]~input_o\ : std_logic;
SIGNAL \le_out[1][21]~26_combout\ : std_logic;
SIGNAL \le_out[1][20]~28_combout\ : std_logic;
SIGNAL \le_out[3][0]~33_combout\ : std_logic;
SIGNAL \le_out[3][16]~34_combout\ : std_logic;
SIGNAL \amt[4]~input_o\ : std_logic;
SIGNAL \a[9]~input_o\ : std_logic;
SIGNAL \a[11]~input_o\ : std_logic;
SIGNAL \le_out[1][9]~48_combout\ : std_logic;
SIGNAL \le_out[1][8]~50_combout\ : std_logic;
SIGNAL \a[13]~input_o\ : std_logic;
SIGNAL \a[15]~input_o\ : std_logic;
SIGNAL \le_out[1][13]~51_combout\ : std_logic;
SIGNAL \a[14]~input_o\ : std_logic;
SIGNAL \le_out[1][12]~52_combout\ : std_logic;
SIGNAL \le_out[1][12]~53_combout\ : std_logic;
SIGNAL \le_out[3][0]~54_combout\ : std_logic;
SIGNAL \le_out[3][0]~32_combout\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \le_out[1][5]~45_combout\ : std_logic;
SIGNAL \le_out[3][0]~47_combout\ : std_logic;
SIGNAL \le_out[3][0]~58_combout\ : std_logic;
SIGNAL \le_out~235_combout\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \a[8]~input_o\ : std_logic;
SIGNAL \le_out[1][6]~71_combout\ : std_logic;
SIGNAL \le_out[1][5]~72_combout\ : std_logic;
SIGNAL \le_out[3][1]~73_combout\ : std_logic;
SIGNAL \a[16]~input_o\ : std_logic;
SIGNAL \le_out[1][14]~76_combout\ : std_logic;
SIGNAL \le_out[1][13]~77_combout\ : std_logic;
SIGNAL \a[10]~input_o\ : std_logic;
SIGNAL \le_out[1][10]~74_combout\ : std_logic;
SIGNAL \le_out[1][9]~75_combout\ : std_logic;
SIGNAL \le_out[3][1]~78_combout\ : std_logic;
SIGNAL \a[26]~input_o\ : std_logic;
SIGNAL \le_out[1][26]~59_combout\ : std_logic;
SIGNAL \le_out[3][17]~60_combout\ : std_logic;
SIGNAL \lar[0]~input_o\ : std_logic;
SIGNAL \lar[1]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \a[30]~input_o\ : std_logic;
SIGNAL \le_out[1][29]~66_combout\ : std_logic;
SIGNAL \le_out[1][29]~67_combout\ : std_logic;
SIGNAL \le_out[1][21]~64_combout\ : std_logic;
SIGNAL \le_out[3][17]~65_combout\ : std_logic;
SIGNAL \le_out[3][17]~68_combout\ : std_logic;
SIGNAL \le_out~79_combout\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \le_out[1][3]~100_combout\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \le_out[1][2]~69_combout\ : std_logic;
SIGNAL \le_out[1][2]~101_combout\ : std_logic;
SIGNAL \le_out[1][11]~95_combout\ : std_logic;
SIGNAL \le_out[1][10]~96_combout\ : std_logic;
SIGNAL \a[17]~input_o\ : std_logic;
SIGNAL \le_out[1][15]~97_combout\ : std_logic;
SIGNAL \le_out[1][14]~98_combout\ : std_logic;
SIGNAL \le_out[3][2]~99_combout\ : std_logic;
SIGNAL \le_out[3][2]~102_combout\ : std_logic;
SIGNAL \le_out[1][19]~84_combout\ : std_logic;
SIGNAL \le_out[1][18]~85_combout\ : std_logic;
SIGNAL \le_out[1][23]~82_combout\ : std_logic;
SIGNAL \le_out[1][22]~83_combout\ : std_logic;
SIGNAL \le_out[3][18]~86_combout\ : std_logic;
SIGNAL \le_out[1][30]~90_combout\ : std_logic;
SIGNAL \le_out[1][30]~89_combout\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \le_out[1][30]~87_combout\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \le_out[1][30]~88_combout\ : std_logic;
SIGNAL \le_out[1][30]~91_combout\ : std_logic;
SIGNAL \le_out[3][18]~92_combout\ : std_logic;
SIGNAL \le_out~103_combout\ : std_logic;
SIGNAL \a[18]~input_o\ : std_logic;
SIGNAL \le_out[1][16]~30_combout\ : std_logic;
SIGNAL \le_out[1][15]~116_combout\ : std_logic;
SIGNAL \le_out[3][0]~41_combout\ : std_logic;
SIGNAL \le_out[3][3]~115_combout\ : std_logic;
SIGNAL \le_out[3][3]~117_combout\ : std_logic;
SIGNAL \le_out[3][19]~104_combout\ : std_logic;
SIGNAL \le_out[1][31]~108_combout\ : std_logic;
SIGNAL \le_out[1][31]~109_combout\ : std_logic;
SIGNAL \le_out[1][31]~110_combout\ : std_logic;
SIGNAL \le_out[3][19]~111_combout\ : std_logic;
SIGNAL \le_out~118_combout\ : std_logic;
SIGNAL \le_out[3][4]~125_combout\ : std_logic;
SIGNAL \le_out[3][4]~126_combout\ : std_logic;
SIGNAL \le_out[3][20]~119_combout\ : std_logic;
SIGNAL \le_out[3][20]~123_combout\ : std_logic;
SIGNAL \le_out~127_combout\ : std_logic;
SIGNAL \le_out[1][25]~128_combout\ : std_logic;
SIGNAL \le_out[3][21]~129_combout\ : std_logic;
SIGNAL \le_out[2][29]~130_combout\ : std_logic;
SIGNAL \le_out[2][29]~131_combout\ : std_logic;
SIGNAL \le_out~132_combout\ : std_logic;
SIGNAL \le_out[3][5]~133_combout\ : std_logic;
SIGNAL \le_out[1][17]~62_combout\ : std_logic;
SIGNAL \le_out[3][5]~134_combout\ : std_logic;
SIGNAL \le_out~236_combout\ : std_logic;
SIGNAL \le_out[2][28]~120_combout\ : std_logic;
SIGNAL \le_out[2][30]~138_combout\ : std_logic;
SIGNAL \le_out[2][30]~139_combout\ : std_logic;
SIGNAL \le_out[1][27]~80_combout\ : std_logic;
SIGNAL \le_out[1][26]~136_combout\ : std_logic;
SIGNAL \le_out[3][22]~137_combout\ : std_logic;
SIGNAL \le_out~140_combout\ : std_logic;
SIGNAL \le_out[1][7]~93_combout\ : std_logic;
SIGNAL \le_out[1][6]~141_combout\ : std_logic;
SIGNAL \le_out[3][6]~142_combout\ : std_logic;
SIGNAL \le_out[3][6]~143_combout\ : std_logic;
SIGNAL \le_out~237_combout\ : std_logic;
SIGNAL \le_out[3][23]~145_combout\ : std_logic;
SIGNAL \le_out[1][28]~36_combout\ : std_logic;
SIGNAL \le_out[1][27]~105_combout\ : std_logic;
SIGNAL \le_out[3][23]~146_combout\ : std_logic;
SIGNAL \le_out[2][31]~147_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \le_out[1][31]~149_combout\ : std_logic;
SIGNAL \le_out[2][31]~150_combout\ : std_logic;
SIGNAL \le_out~151_combout\ : std_logic;
SIGNAL \le_out[1][11]~152_combout\ : std_logic;
SIGNAL \le_out[1][8]~49_combout\ : std_logic;
SIGNAL \le_out[1][7]~113_combout\ : std_logic;
SIGNAL \le_out[3][7]~153_combout\ : std_logic;
SIGNAL \le_out[1][19]~106_combout\ : std_logic;
SIGNAL \le_out[3][7]~154_combout\ : std_logic;
SIGNAL \le_out~238_combout\ : std_logic;
SIGNAL \le_out[3][8]~161_combout\ : std_logic;
SIGNAL \le_out[3][24]~157_combout\ : std_logic;
SIGNAL \le_out[3][24]~156_combout\ : std_logic;
SIGNAL \le_out~160_combout\ : std_logic;
SIGNAL \le_out[3][8]~162_combout\ : std_logic;
SIGNAL \le_out~239_combout\ : std_logic;
SIGNAL \le_out[3][9]~167_combout\ : std_logic;
SIGNAL \le_out[1][18]~61_combout\ : std_logic;
SIGNAL \le_out[3][9]~168_combout\ : std_logic;
SIGNAL \le_out[3][9]~169_combout\ : std_logic;
SIGNAL \le_out[1][1]~70_combout\ : std_logic;
SIGNAL \le_out[3][25]~165_combout\ : std_logic;
SIGNAL \le_out[3][25]~164_combout\ : std_logic;
SIGNAL \le_out[3][25]~166_combout\ : std_logic;
SIGNAL \le_out~170_combout\ : std_logic;
SIGNAL \le_out[3][26]~174_combout\ : std_logic;
SIGNAL \le_out[3][24]~158_combout\ : std_logic;
SIGNAL \le_out[3][26]~175_combout\ : std_logic;
SIGNAL \le_out[3][26]~176_combout\ : std_logic;
SIGNAL \le_out[3][10]~171_combout\ : std_logic;
SIGNAL \le_out[3][10]~172_combout\ : std_logic;
SIGNAL \le_out[3][10]~173_combout\ : std_logic;
SIGNAL \le_out~177_combout\ : std_logic;
SIGNAL \le_out[1][3]~112_combout\ : std_logic;
SIGNAL \le_out[3][27]~179_combout\ : std_logic;
SIGNAL \le_out[3][27]~180_combout\ : std_logic;
SIGNAL \a[24]~input_o\ : std_logic;
SIGNAL \le_out[1][24]~39_combout\ : std_logic;
SIGNAL \le_out[3][11]~182_combout\ : std_logic;
SIGNAL \le_out[3][11]~183_combout\ : std_logic;
SIGNAL \le_out~184_combout\ : std_logic;
SIGNAL \le_out[3][12]~189_combout\ : std_logic;
SIGNAL \le_out[3][12]~188_combout\ : std_logic;
SIGNAL \le_out[3][28]~186_combout\ : std_logic;
SIGNAL \le_out[3][28]~187_combout\ : std_logic;
SIGNAL \le_out~190_combout\ : std_logic;
SIGNAL \le_out[3][29]~191_combout\ : std_logic;
SIGNAL \le_out[3][29]~192_combout\ : std_logic;
SIGNAL \le_out[3][13]~194_combout\ : std_logic;
SIGNAL \le_out[3][13]~193_combout\ : std_logic;
SIGNAL \le_out[3][13]~195_combout\ : std_logic;
SIGNAL \le_out~196_combout\ : std_logic;
SIGNAL \le_out[3][30]~247_combout\ : std_logic;
SIGNAL \le_out[3][30]~248_combout\ : std_logic;
SIGNAL \le_out[3][14]~197_combout\ : std_logic;
SIGNAL \le_out[3][14]~198_combout\ : std_logic;
SIGNAL \le_out~199_combout\ : std_logic;
SIGNAL \le_out[3][31]~200_combout\ : std_logic;
SIGNAL \le_out[3][31]~201_combout\ : std_logic;
SIGNAL \le_out[3][15]~203_combout\ : std_logic;
SIGNAL \le_out[3][15]~202_combout\ : std_logic;
SIGNAL \le_out[3][15]~204_combout\ : std_logic;
SIGNAL \le_out~205_combout\ : std_logic;
SIGNAL \le_out[3][16]~44_combout\ : std_logic;
SIGNAL \le_out~240_combout\ : std_logic;
SIGNAL \le_out~206_combout\ : std_logic;
SIGNAL \le_out~208_combout\ : std_logic;
SIGNAL \le_out~241_combout\ : std_logic;
SIGNAL \le_out~209_combout\ : std_logic;
SIGNAL \le_out~210_combout\ : std_logic;
SIGNAL \le_out~207_combout\ : std_logic;
SIGNAL \le_out~211_combout\ : std_logic;
SIGNAL \le_out~242_combout\ : std_logic;
SIGNAL \le_out~212_combout\ : std_logic;
SIGNAL \le_out~243_combout\ : std_logic;
SIGNAL \le_out~213_combout\ : std_logic;
SIGNAL \le_out[3][5]~135_combout\ : std_logic;
SIGNAL \le_out~214_combout\ : std_logic;
SIGNAL \le_out~215_combout\ : std_logic;
SIGNAL \le_out[3][6]~144_combout\ : std_logic;
SIGNAL \le_out~216_combout\ : std_logic;
SIGNAL \le_out~217_combout\ : std_logic;
SIGNAL \le_out[3][7]~155_combout\ : std_logic;
SIGNAL \le_out~218_combout\ : std_logic;
SIGNAL \le_out~219_combout\ : std_logic;
SIGNAL \le_out[3][8]~163_combout\ : std_logic;
SIGNAL \le_out~220_combout\ : std_logic;
SIGNAL \le_out~221_combout\ : std_logic;
SIGNAL \le_out~244_combout\ : std_logic;
SIGNAL \le_out~222_combout\ : std_logic;
SIGNAL \le_out~223_combout\ : std_logic;
SIGNAL \le_out~224_combout\ : std_logic;
SIGNAL \le_out[3][27]~225_combout\ : std_logic;
SIGNAL \le_out~226_combout\ : std_logic;
SIGNAL \le_out~227_combout\ : std_logic;
SIGNAL \le_out~245_combout\ : std_logic;
SIGNAL \le_out~228_combout\ : std_logic;
SIGNAL \le_out~229_combout\ : std_logic;
SIGNAL \le_out~230_combout\ : std_logic;
SIGNAL \le_out~231_combout\ : std_logic;
SIGNAL \le_out~232_combout\ : std_logic;
SIGNAL \le_out~233_combout\ : std_logic;
SIGNAL \le_out~246_combout\ : std_logic;
SIGNAL \le_out~234_combout\ : std_logic;

BEGIN

ww_a <= a;
ww_lar <= lar;
ww_amt <= amt;
y <= ww_y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X2_Y67_N8
\le_out[1][4]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][4]~46_combout\ = (\amt[1]~input_o\ & ((\a[6]~input_o\))) # (!\amt[1]~input_o\ & (\a[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datab => \a[4]~input_o\,
	datac => \a[6]~input_o\,
	combout => \le_out[1][4]~46_combout\);

-- Location: LCCOMB_X3_Y66_N10
\le_out[1][0]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][0]~55_combout\ = (!\amt[0]~input_o\ & ((\amt[1]~input_o\ & ((\a[2]~input_o\))) # (!\amt[1]~input_o\ & (\a[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datab => \a[0]~input_o\,
	datac => \amt[0]~input_o\,
	datad => \a[2]~input_o\,
	combout => \le_out[1][0]~55_combout\);

-- Location: LCCOMB_X3_Y66_N12
\le_out[1][1]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][1]~56_combout\ = (\amt[1]~input_o\ & ((\a[3]~input_o\))) # (!\amt[1]~input_o\ & (\a[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[1]~input_o\,
	datac => \a[3]~input_o\,
	datad => \amt[1]~input_o\,
	combout => \le_out[1][1]~56_combout\);

-- Location: LCCOMB_X3_Y66_N30
\le_out[1][0]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][0]~57_combout\ = (\le_out[1][0]~55_combout\) # ((\amt[0]~input_o\ & \le_out[1][1]~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[1][0]~55_combout\,
	datac => \amt[0]~input_o\,
	datad => \le_out[1][1]~56_combout\,
	combout => \le_out[1][0]~57_combout\);

-- Location: LCCOMB_X4_Y65_N6
\le_out[1][22]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][22]~63_combout\ = (\amt[1]~input_o\ & (\a[24]~input_o\)) # (!\amt[1]~input_o\ & ((\a[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \a[24]~input_o\,
	datad => \a[22]~input_o\,
	combout => \le_out[1][22]~63_combout\);

-- Location: LCCOMB_X5_Y65_N12
\le_out[3][18]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][18]~81_combout\ = (\le_out[3][0]~41_combout\ & ((\amt[0]~input_o\ & ((\le_out[1][27]~80_combout\))) # (!\amt[0]~input_o\ & (\le_out[1][26]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[3][0]~41_combout\,
	datab => \amt[0]~input_o\,
	datac => \le_out[1][26]~59_combout\,
	datad => \le_out[1][27]~80_combout\,
	combout => \le_out[3][18]~81_combout\);

-- Location: LCCOMB_X3_Y67_N12
\le_out[3][2]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][2]~94_combout\ = (\le_out[3][0]~33_combout\ & ((\amt[0]~input_o\ & (\le_out[1][7]~93_combout\)) # (!\amt[0]~input_o\ & ((\le_out[1][6]~71_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[1][7]~93_combout\,
	datab => \amt[0]~input_o\,
	datac => \le_out[3][0]~33_combout\,
	datad => \le_out[1][6]~71_combout\,
	combout => \le_out[3][2]~94_combout\);

-- Location: LCCOMB_X4_Y67_N12
\le_out[3][19]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][19]~107_combout\ = (\le_out[1][27]~105_combout\ & ((\le_out[3][0]~41_combout\) # ((\le_out[1][19]~106_combout\ & \le_out[3][0]~32_combout\)))) # (!\le_out[1][27]~105_combout\ & (((\le_out[1][19]~106_combout\ & \le_out[3][0]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[1][27]~105_combout\,
	datab => \le_out[3][0]~41_combout\,
	datac => \le_out[1][19]~106_combout\,
	datad => \le_out[3][0]~32_combout\,
	combout => \le_out[3][19]~107_combout\);

-- Location: LCCOMB_X3_Y67_N14
\le_out[3][3]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][3]~114_combout\ = (\le_out[1][3]~112_combout\ & ((\le_out[3][0]~32_combout\) # ((\le_out[1][7]~113_combout\ & \le_out[3][0]~33_combout\)))) # (!\le_out[1][3]~112_combout\ & (\le_out[1][7]~113_combout\ & (\le_out[3][0]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[1][3]~112_combout\,
	datab => \le_out[1][7]~113_combout\,
	datac => \le_out[3][0]~33_combout\,
	datad => \le_out[3][0]~32_combout\,
	combout => \le_out[3][3]~114_combout\);

-- Location: LCCOMB_X3_Y66_N22
\le_out[2][28]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[2][28]~121_combout\ = (\le_out[2][28]~120_combout\ & ((\le_out[1][0]~55_combout\) # ((\amt[0]~input_o\ & \le_out[1][1]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[1][0]~55_combout\,
	datab => \le_out[2][28]~120_combout\,
	datac => \amt[0]~input_o\,
	datad => \le_out[1][1]~56_combout\,
	combout => \le_out[2][28]~121_combout\);

-- Location: LCCOMB_X3_Y68_N30
\le_out[2][28]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[2][28]~122_combout\ = (\le_out[2][28]~121_combout\) # ((\amt[2]~input_o\ & (\le_out[1][30]~90_combout\)) # (!\amt[2]~input_o\ & ((\le_out[1][28]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datab => \le_out[2][28]~121_combout\,
	datac => \le_out[1][30]~90_combout\,
	datad => \le_out[1][28]~37_combout\,
	combout => \le_out[2][28]~122_combout\);

-- Location: LCCOMB_X3_Y65_N12
\le_out[1][4]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][4]~124_combout\ = (\amt[0]~input_o\ & ((\le_out[1][5]~45_combout\))) # (!\amt[0]~input_o\ & (\le_out[1][4]~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[1][4]~46_combout\,
	datab => \amt[0]~input_o\,
	datad => \le_out[1][5]~45_combout\,
	combout => \le_out[1][4]~124_combout\);

-- Location: LCCOMB_X4_Y66_N4
\le_out[2][31]~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[2][31]~148_combout\ = ((!\lar[1]~input_o\ & \lar[0]~input_o\)) # (!\amt[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[1]~input_o\,
	datab => \lar[0]~input_o\,
	datac => \amt[2]~input_o\,
	combout => \le_out[2][31]~148_combout\);

-- Location: LCCOMB_X3_Y65_N20
\le_out[3][24]~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][24]~159_combout\ = (\le_out[3][24]~158_combout\ & ((\amt[2]~input_o\ & (\le_out[1][4]~124_combout\)) # (!\amt[2]~input_o\ & ((\le_out[1][0]~57_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[1][4]~124_combout\,
	datab => \amt[2]~input_o\,
	datac => \le_out[1][0]~57_combout\,
	datad => \le_out[3][24]~158_combout\,
	combout => \le_out[3][24]~159_combout\);

-- Location: LCCOMB_X4_Y66_N12
\le_out[3][27]~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][27]~178_combout\ = (!\amt[3]~input_o\ & ((\amt[2]~input_o\ & (\le_out[1][31]~110_combout\)) # (!\amt[2]~input_o\ & ((\le_out[1][27]~105_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datab => \le_out[1][31]~110_combout\,
	datac => \amt[2]~input_o\,
	datad => \le_out[1][27]~105_combout\,
	combout => \le_out[3][27]~178_combout\);

-- Location: LCCOMB_X4_Y67_N26
\le_out[3][11]~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][11]~181_combout\ = (\le_out[1][11]~152_combout\ & ((\le_out[3][0]~32_combout\) # ((\le_out[1][15]~116_combout\ & \le_out[3][0]~33_combout\)))) # (!\le_out[1][11]~152_combout\ & (\le_out[1][15]~116_combout\ & (\le_out[3][0]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[1][11]~152_combout\,
	datab => \le_out[1][15]~116_combout\,
	datac => \le_out[3][0]~33_combout\,
	datad => \le_out[3][0]~32_combout\,
	combout => \le_out[3][11]~181_combout\);

-- Location: LCCOMB_X3_Y68_N6
\le_out[3][28]~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][28]~185_combout\ = (!\amt[2]~input_o\ & (\lar[1]~input_o\ & \le_out[1][4]~124_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datab => \lar[1]~input_o\,
	datac => \le_out[1][4]~124_combout\,
	combout => \le_out[3][28]~185_combout\);

-- Location: IOIBUF_X0_Y50_N22
\a[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(28),
	o => \a[28]~input_o\);

-- Location: IOIBUF_X0_Y62_N22
\a[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: IOIBUF_X0_Y59_N22
\a[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(12),
	o => \a[12]~input_o\);

-- Location: IOOBUF_X7_Y73_N16
\y[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le_out~235_combout\,
	devoe => ww_devoe,
	o => \y[0]~output_o\);

-- Location: IOOBUF_X13_Y73_N23
\y[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le_out~79_combout\,
	devoe => ww_devoe,
	o => \y[1]~output_o\);

-- Location: IOOBUF_X0_Y54_N9
\y[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le_out~103_combout\,
	devoe => ww_devoe,
	o => \y[2]~output_o\);

-- Location: IOOBUF_X0_Y47_N16
\y[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le_out~118_combout\,
	devoe => ww_devoe,
	o => \y[3]~output_o\);

-- Location: IOOBUF_X0_Y57_N16
\y[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le_out~127_combout\,
	devoe => ww_devoe,
	o => \y[4]~output_o\);

-- Location: IOOBUF_X0_Y68_N9
\y[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le_out~236_combout\,
	devoe => ww_devoe,
	o => \y[5]~output_o\);

-- Location: IOOBUF_X0_Y55_N16
\y[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le_out~237_combout\,
	devoe => ww_devoe,
	o => \y[6]~output_o\);

-- Location: IOOBUF_X7_Y73_N23
\y[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le_out~238_combout\,
	devoe => ww_devoe,
	o => \y[7]~output_o\);

-- Location: IOOBUF_X0_Y49_N2
\y[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le_out~239_combout\,
	devoe => ww_devoe,
	o => \y[8]~output_o\);

-- Location: IOOBUF_X0_Y48_N2
\y[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le_out~170_combout\,
	devoe => ww_devoe,
	o => \y[9]~output_o\);

-- Location: IOOBUF_X0_Y57_N23
\y[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le_out~177_combout\,
	devoe => ww_devoe,
	o => \y[10]~output_o\);

-- Location: IOOBUF_X0_Y55_N9
\y[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le_out~184_combout\,
	devoe => ww_devoe,
	o => \y[11]~output_o\);

-- Location: IOOBUF_X3_Y73_N9
\y[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le_out~190_combout\,
	devoe => ww_devoe,
	o => \y[12]~output_o\);

-- Location: IOOBUF_X16_Y73_N9
\y[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le_out~196_combout\,
	devoe => ww_devoe,
	o => \y[13]~output_o\);

-- Location: IOOBUF_X1_Y73_N2
\y[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le_out~199_combout\,
	devoe => ww_devoe,
	o => \y[14]~output_o\);

-- Location: IOOBUF_X13_Y73_N9
\y[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le_out~205_combout\,
	devoe => ww_devoe,
	o => \y[15]~output_o\);

-- Location: IOOBUF_X11_Y73_N9
\y[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le_out~208_combout\,
	devoe => ww_devoe,
	o => \y[16]~output_o\);

-- Location: IOOBUF_X11_Y73_N2
\y[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le_out~209_combout\,
	devoe => ww_devoe,
	o => \y[17]~output_o\);

-- Location: IOOBUF_X0_Y58_N16
\y[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le_out~211_combout\,
	devoe => ww_devoe,
	o => \y[18]~output_o\);

-- Location: IOOBUF_X16_Y73_N23
\y[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le_out~212_combout\,
	devoe => ww_devoe,
	o => \y[19]~output_o\);

-- Location: IOOBUF_X0_Y49_N9
\y[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le_out~213_combout\,
	devoe => ww_devoe,
	o => \y[20]~output_o\);

-- Location: IOOBUF_X11_Y73_N16
\y[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le_out~215_combout\,
	devoe => ww_devoe,
	o => \y[21]~output_o\);

-- Location: IOOBUF_X0_Y52_N16
\y[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le_out~217_combout\,
	devoe => ww_devoe,
	o => \y[22]~output_o\);

-- Location: IOOBUF_X0_Y50_N16
\y[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le_out~219_combout\,
	devoe => ww_devoe,
	o => \y[23]~output_o\);

-- Location: IOOBUF_X0_Y61_N23
\y[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le_out~221_combout\,
	devoe => ww_devoe,
	o => \y[24]~output_o\);

-- Location: IOOBUF_X16_Y73_N16
\y[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le_out~222_combout\,
	devoe => ww_devoe,
	o => \y[25]~output_o\);

-- Location: IOOBUF_X0_Y59_N16
\y[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le_out~224_combout\,
	devoe => ww_devoe,
	o => \y[26]~output_o\);

-- Location: IOOBUF_X5_Y73_N23
\y[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le_out~227_combout\,
	devoe => ww_devoe,
	o => \y[27]~output_o\);

-- Location: IOOBUF_X0_Y52_N2
\y[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le_out~228_combout\,
	devoe => ww_devoe,
	o => \y[28]~output_o\);

-- Location: IOOBUF_X13_Y73_N16
\y[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le_out~230_combout\,
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
	i => \le_out~233_combout\,
	devoe => ww_devoe,
	o => \y[30]~output_o\);

-- Location: IOOBUF_X11_Y73_N23
\y[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le_out~234_combout\,
	devoe => ww_devoe,
	o => \y[31]~output_o\);

-- Location: IOIBUF_X0_Y63_N22
\amt[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_amt(3),
	o => \amt[3]~input_o\);

-- Location: IOIBUF_X0_Y68_N1
\amt[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_amt(2),
	o => \amt[2]~input_o\);

-- Location: LCCOMB_X5_Y65_N6
\le_out[3][0]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][0]~42_combout\ = (\amt[3]~input_o\ & \amt[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[3]~input_o\,
	datad => \amt[2]~input_o\,
	combout => \le_out[3][0]~42_combout\);

-- Location: IOIBUF_X0_Y64_N1
\amt[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_amt(0),
	o => \amt[0]~input_o\);

-- Location: IOIBUF_X0_Y65_N15
\amt[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_amt(1),
	o => \amt[1]~input_o\);

-- Location: IOIBUF_X18_Y73_N15
\a[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(25),
	o => \a[25]~input_o\);

-- Location: IOIBUF_X13_Y73_N1
\a[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(27),
	o => \a[27]~input_o\);

-- Location: LCCOMB_X5_Y65_N0
\le_out[1][25]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][25]~38_combout\ = (\amt[1]~input_o\ & ((\a[27]~input_o\))) # (!\amt[1]~input_o\ & (\a[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[1]~input_o\,
	datac => \a[25]~input_o\,
	datad => \a[27]~input_o\,
	combout => \le_out[1][25]~38_combout\);

-- Location: LCCOMB_X5_Y65_N26
\le_out[1][24]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][24]~40_combout\ = (\amt[0]~input_o\ & ((\le_out[1][25]~38_combout\))) # (!\amt[0]~input_o\ & (\le_out[1][24]~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[1][24]~39_combout\,
	datab => \amt[0]~input_o\,
	datad => \le_out[1][25]~38_combout\,
	combout => \le_out[1][24]~40_combout\);

-- Location: IOIBUF_X9_Y73_N1
\a[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(29),
	o => \a[29]~input_o\);

-- Location: IOIBUF_X0_Y66_N22
\a[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(31),
	o => \a[31]~input_o\);

-- Location: LCCOMB_X5_Y66_N0
\le_out[1][28]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][28]~35_combout\ = (\amt[0]~input_o\ & ((\amt[1]~input_o\ & ((\a[31]~input_o\))) # (!\amt[1]~input_o\ & (\a[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datab => \a[29]~input_o\,
	datac => \amt[0]~input_o\,
	datad => \a[31]~input_o\,
	combout => \le_out[1][28]~35_combout\);

-- Location: LCCOMB_X5_Y66_N12
\le_out[1][28]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][28]~37_combout\ = (\le_out[1][28]~35_combout\) # ((\le_out[1][28]~36_combout\ & !\amt[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[1][28]~36_combout\,
	datac => \amt[0]~input_o\,
	datad => \le_out[1][28]~35_combout\,
	combout => \le_out[1][28]~37_combout\);

-- Location: LCCOMB_X3_Y68_N8
\le_out[3][16]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][16]~43_combout\ = (\le_out[3][0]~41_combout\ & ((\le_out[1][24]~40_combout\) # ((\le_out[3][0]~42_combout\ & \le_out[1][28]~37_combout\)))) # (!\le_out[3][0]~41_combout\ & (\le_out[3][0]~42_combout\ & ((\le_out[1][28]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[3][0]~41_combout\,
	datab => \le_out[3][0]~42_combout\,
	datac => \le_out[1][24]~40_combout\,
	datad => \le_out[1][28]~37_combout\,
	combout => \le_out[3][16]~43_combout\);

-- Location: IOIBUF_X0_Y44_N1
\a[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(19),
	o => \a[19]~input_o\);

-- Location: LCCOMB_X4_Y65_N22
\le_out[1][17]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][17]~29_combout\ = (\amt[1]~input_o\ & ((\a[19]~input_o\))) # (!\amt[1]~input_o\ & (\a[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[17]~input_o\,
	datac => \amt[1]~input_o\,
	datad => \a[19]~input_o\,
	combout => \le_out[1][17]~29_combout\);

-- Location: LCCOMB_X4_Y65_N24
\le_out[1][16]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][16]~31_combout\ = (\amt[0]~input_o\ & ((\le_out[1][17]~29_combout\))) # (!\amt[0]~input_o\ & (\le_out[1][16]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[1][16]~30_combout\,
	datab => \amt[0]~input_o\,
	datac => \le_out[1][17]~29_combout\,
	combout => \le_out[1][16]~31_combout\);

-- Location: IOIBUF_X0_Y45_N22
\a[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(20),
	o => \a[20]~input_o\);

-- Location: IOIBUF_X9_Y73_N8
\a[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(22),
	o => \a[22]~input_o\);

-- Location: LCCOMB_X4_Y65_N26
\le_out[1][20]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][20]~27_combout\ = (\amt[1]~input_o\ & ((\a[22]~input_o\))) # (!\amt[1]~input_o\ & (\a[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[20]~input_o\,
	datac => \amt[1]~input_o\,
	datad => \a[22]~input_o\,
	combout => \le_out[1][20]~27_combout\);

-- Location: IOIBUF_X0_Y47_N1
\a[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(21),
	o => \a[21]~input_o\);

-- Location: IOIBUF_X0_Y48_N8
\a[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(23),
	o => \a[23]~input_o\);

-- Location: LCCOMB_X4_Y65_N16
\le_out[1][21]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][21]~26_combout\ = (\amt[1]~input_o\ & ((\a[23]~input_o\))) # (!\amt[1]~input_o\ & (\a[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datab => \a[21]~input_o\,
	datac => \a[23]~input_o\,
	combout => \le_out[1][21]~26_combout\);

-- Location: LCCOMB_X4_Y65_N4
\le_out[1][20]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][20]~28_combout\ = (\amt[0]~input_o\ & ((\le_out[1][21]~26_combout\))) # (!\amt[0]~input_o\ & (\le_out[1][20]~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[0]~input_o\,
	datac => \le_out[1][20]~27_combout\,
	datad => \le_out[1][21]~26_combout\,
	combout => \le_out[1][20]~28_combout\);

-- Location: LCCOMB_X5_Y68_N10
\le_out[3][0]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][0]~33_combout\ = (!\amt[3]~input_o\ & \amt[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[3]~input_o\,
	datad => \amt[2]~input_o\,
	combout => \le_out[3][0]~33_combout\);

-- Location: LCCOMB_X3_Y65_N8
\le_out[3][16]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][16]~34_combout\ = (\le_out[3][0]~32_combout\ & ((\le_out[1][16]~31_combout\) # ((\le_out[1][20]~28_combout\ & \le_out[3][0]~33_combout\)))) # (!\le_out[3][0]~32_combout\ & (((\le_out[1][20]~28_combout\ & \le_out[3][0]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[3][0]~32_combout\,
	datab => \le_out[1][16]~31_combout\,
	datac => \le_out[1][20]~28_combout\,
	datad => \le_out[3][0]~33_combout\,
	combout => \le_out[3][16]~34_combout\);

-- Location: IOIBUF_X0_Y67_N22
\amt[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_amt(4),
	o => \amt[4]~input_o\);

-- Location: IOIBUF_X0_Y60_N15
\a[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(9),
	o => \a[9]~input_o\);

-- Location: IOIBUF_X1_Y73_N8
\a[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(11),
	o => \a[11]~input_o\);

-- Location: LCCOMB_X2_Y67_N2
\le_out[1][9]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][9]~48_combout\ = (\amt[1]~input_o\ & ((\a[11]~input_o\))) # (!\amt[1]~input_o\ & (\a[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[9]~input_o\,
	datac => \amt[1]~input_o\,
	datad => \a[11]~input_o\,
	combout => \le_out[1][9]~48_combout\);

-- Location: LCCOMB_X3_Y67_N8
\le_out[1][8]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][8]~50_combout\ = (\amt[0]~input_o\ & ((\le_out[1][9]~48_combout\))) # (!\amt[0]~input_o\ & (\le_out[1][8]~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[1][8]~49_combout\,
	datac => \amt[0]~input_o\,
	datad => \le_out[1][9]~48_combout\,
	combout => \le_out[1][8]~50_combout\);

-- Location: IOIBUF_X0_Y51_N15
\a[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(13),
	o => \a[13]~input_o\);

-- Location: IOIBUF_X1_Y73_N22
\a[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(15),
	o => \a[15]~input_o\);

-- Location: LCCOMB_X2_Y67_N30
\le_out[1][13]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][13]~51_combout\ = (\amt[1]~input_o\ & ((\a[15]~input_o\))) # (!\amt[1]~input_o\ & (\a[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[13]~input_o\,
	datac => \amt[1]~input_o\,
	datad => \a[15]~input_o\,
	combout => \le_out[1][13]~51_combout\);

-- Location: IOIBUF_X0_Y53_N1
\a[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(14),
	o => \a[14]~input_o\);

-- Location: LCCOMB_X2_Y67_N0
\le_out[1][12]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][12]~52_combout\ = (\amt[1]~input_o\ & ((\a[14]~input_o\))) # (!\amt[1]~input_o\ & (\a[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[12]~input_o\,
	datab => \a[14]~input_o\,
	datac => \amt[1]~input_o\,
	combout => \le_out[1][12]~52_combout\);

-- Location: LCCOMB_X2_Y67_N10
\le_out[1][12]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][12]~53_combout\ = (\amt[0]~input_o\ & (\le_out[1][13]~51_combout\)) # (!\amt[0]~input_o\ & ((\le_out[1][12]~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datac => \le_out[1][13]~51_combout\,
	datad => \le_out[1][12]~52_combout\,
	combout => \le_out[1][12]~53_combout\);

-- Location: LCCOMB_X3_Y65_N4
\le_out[3][0]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][0]~54_combout\ = (\le_out[3][0]~41_combout\ & ((\le_out[1][8]~50_combout\) # ((\le_out[1][12]~53_combout\ & \le_out[3][0]~42_combout\)))) # (!\le_out[3][0]~41_combout\ & (((\le_out[1][12]~53_combout\ & \le_out[3][0]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[3][0]~41_combout\,
	datab => \le_out[1][8]~50_combout\,
	datac => \le_out[1][12]~53_combout\,
	datad => \le_out[3][0]~42_combout\,
	combout => \le_out[3][0]~54_combout\);

-- Location: LCCOMB_X5_Y68_N24
\le_out[3][0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][0]~32_combout\ = (!\amt[3]~input_o\ & !\amt[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[3]~input_o\,
	datad => \amt[2]~input_o\,
	combout => \le_out[3][0]~32_combout\);

-- Location: IOIBUF_X0_Y69_N8
\a[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

-- Location: LCCOMB_X3_Y66_N8
\le_out[1][5]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][5]~45_combout\ = (\amt[1]~input_o\ & ((\a[7]~input_o\))) # (!\amt[1]~input_o\ & (\a[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[5]~input_o\,
	datac => \a[7]~input_o\,
	datad => \amt[1]~input_o\,
	combout => \le_out[1][5]~45_combout\);

-- Location: LCCOMB_X3_Y65_N10
\le_out[3][0]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][0]~47_combout\ = (\le_out[3][0]~33_combout\ & ((\amt[0]~input_o\ & ((\le_out[1][5]~45_combout\))) # (!\amt[0]~input_o\ & (\le_out[1][4]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[1][4]~46_combout\,
	datab => \le_out[1][5]~45_combout\,
	datac => \le_out[3][0]~33_combout\,
	datad => \amt[0]~input_o\,
	combout => \le_out[3][0]~47_combout\);

-- Location: LCCOMB_X3_Y65_N22
\le_out[3][0]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][0]~58_combout\ = (\le_out[3][0]~54_combout\) # ((\le_out[3][0]~47_combout\) # ((\le_out[1][0]~57_combout\ & \le_out[3][0]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[1][0]~57_combout\,
	datab => \le_out[3][0]~54_combout\,
	datac => \le_out[3][0]~32_combout\,
	datad => \le_out[3][0]~47_combout\,
	combout => \le_out[3][0]~58_combout\);

-- Location: LCCOMB_X5_Y67_N6
\le_out~235\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out~235_combout\ = (\amt[4]~input_o\ & ((\le_out[3][16]~43_combout\) # ((\le_out[3][16]~34_combout\)))) # (!\amt[4]~input_o\ & (((\le_out[3][0]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[3][16]~43_combout\,
	datab => \le_out[3][16]~34_combout\,
	datac => \amt[4]~input_o\,
	datad => \le_out[3][0]~58_combout\,
	combout => \le_out~235_combout\);

-- Location: IOIBUF_X0_Y53_N8
\a[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

-- Location: IOIBUF_X1_Y73_N15
\a[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(8),
	o => \a[8]~input_o\);

-- Location: LCCOMB_X2_Y67_N20
\le_out[1][6]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][6]~71_combout\ = (\amt[1]~input_o\ & ((\a[8]~input_o\))) # (!\amt[1]~input_o\ & (\a[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \a[6]~input_o\,
	datad => \a[8]~input_o\,
	combout => \le_out[1][6]~71_combout\);

-- Location: LCCOMB_X3_Y65_N16
\le_out[1][5]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][5]~72_combout\ = (\amt[0]~input_o\ & (\le_out[1][6]~71_combout\)) # (!\amt[0]~input_o\ & ((\le_out[1][5]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[0]~input_o\,
	datac => \le_out[1][6]~71_combout\,
	datad => \le_out[1][5]~45_combout\,
	combout => \le_out[1][5]~72_combout\);

-- Location: LCCOMB_X4_Y68_N8
\le_out[3][1]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][1]~73_combout\ = (\le_out[1][1]~70_combout\ & ((\le_out[3][0]~32_combout\) # ((\le_out[1][5]~72_combout\ & \le_out[3][0]~33_combout\)))) # (!\le_out[1][1]~70_combout\ & (((\le_out[1][5]~72_combout\ & \le_out[3][0]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[1][1]~70_combout\,
	datab => \le_out[3][0]~32_combout\,
	datac => \le_out[1][5]~72_combout\,
	datad => \le_out[3][0]~33_combout\,
	combout => \le_out[3][1]~73_combout\);

-- Location: IOIBUF_X0_Y67_N15
\a[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(16),
	o => \a[16]~input_o\);

-- Location: LCCOMB_X2_Y67_N16
\le_out[1][14]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][14]~76_combout\ = (\amt[1]~input_o\ & ((\a[16]~input_o\))) # (!\amt[1]~input_o\ & (\a[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datab => \a[14]~input_o\,
	datac => \a[16]~input_o\,
	combout => \le_out[1][14]~76_combout\);

-- Location: LCCOMB_X2_Y67_N26
\le_out[1][13]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][13]~77_combout\ = (\amt[0]~input_o\ & ((\le_out[1][14]~76_combout\))) # (!\amt[0]~input_o\ & (\le_out[1][13]~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datac => \le_out[1][13]~51_combout\,
	datad => \le_out[1][14]~76_combout\,
	combout => \le_out[1][13]~77_combout\);

-- Location: IOIBUF_X0_Y47_N22
\a[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(10),
	o => \a[10]~input_o\);

-- Location: LCCOMB_X2_Y67_N22
\le_out[1][10]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][10]~74_combout\ = (\amt[1]~input_o\ & (\a[12]~input_o\)) # (!\amt[1]~input_o\ & ((\a[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[12]~input_o\,
	datac => \amt[1]~input_o\,
	datad => \a[10]~input_o\,
	combout => \le_out[1][10]~74_combout\);

-- Location: LCCOMB_X3_Y67_N10
\le_out[1][9]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][9]~75_combout\ = (\amt[0]~input_o\ & (\le_out[1][10]~74_combout\)) # (!\amt[0]~input_o\ & ((\le_out[1][9]~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \le_out[1][10]~74_combout\,
	datad => \le_out[1][9]~48_combout\,
	combout => \le_out[1][9]~75_combout\);

-- Location: LCCOMB_X5_Y68_N16
\le_out[3][1]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][1]~78_combout\ = (\le_out[3][0]~41_combout\ & ((\le_out[1][9]~75_combout\) # ((\le_out[1][13]~77_combout\ & \le_out[3][0]~42_combout\)))) # (!\le_out[3][0]~41_combout\ & (\le_out[1][13]~77_combout\ & ((\le_out[3][0]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[3][0]~41_combout\,
	datab => \le_out[1][13]~77_combout\,
	datac => \le_out[1][9]~75_combout\,
	datad => \le_out[3][0]~42_combout\,
	combout => \le_out[3][1]~78_combout\);

-- Location: IOIBUF_X0_Y52_N22
\a[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(26),
	o => \a[26]~input_o\);

-- Location: LCCOMB_X5_Y66_N8
\le_out[1][26]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][26]~59_combout\ = (\amt[1]~input_o\ & (\a[28]~input_o\)) # (!\amt[1]~input_o\ & ((\a[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[28]~input_o\,
	datab => \a[26]~input_o\,
	datac => \amt[1]~input_o\,
	combout => \le_out[1][26]~59_combout\);

-- Location: LCCOMB_X5_Y65_N24
\le_out[3][17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][17]~60_combout\ = (\le_out[3][0]~41_combout\ & ((\amt[0]~input_o\ & (\le_out[1][26]~59_combout\)) # (!\amt[0]~input_o\ & ((\le_out[1][25]~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[3][0]~41_combout\,
	datab => \amt[0]~input_o\,
	datac => \le_out[1][26]~59_combout\,
	datad => \le_out[1][25]~38_combout\,
	combout => \le_out[3][17]~60_combout\);

-- Location: IOIBUF_X5_Y73_N8
\lar[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_lar(0),
	o => \lar[0]~input_o\);

-- Location: IOIBUF_X0_Y68_N15
\lar[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_lar(1),
	o => \lar[1]~input_o\);

-- Location: LCCOMB_X5_Y66_N28
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\a[31]~input_o\ & (((\lar[0]~input_o\ & !\lar[1]~input_o\)) # (!\amt[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[31]~input_o\,
	datab => \amt[0]~input_o\,
	datac => \lar[0]~input_o\,
	datad => \lar[1]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: IOIBUF_X16_Y73_N1
\a[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(30),
	o => \a[30]~input_o\);

-- Location: LCCOMB_X5_Y66_N2
\le_out[1][29]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][29]~66_combout\ = (!\amt[1]~input_o\ & ((\amt[0]~input_o\ & ((\a[30]~input_o\))) # (!\amt[0]~input_o\ & (\a[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datab => \a[29]~input_o\,
	datac => \amt[0]~input_o\,
	datad => \a[30]~input_o\,
	combout => \le_out[1][29]~66_combout\);

-- Location: LCCOMB_X5_Y66_N16
\le_out[1][29]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][29]~67_combout\ = (\le_out[1][29]~66_combout\) # ((\amt[1]~input_o\ & ((\Mux0~1_combout\) # (\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => \Mux0~0_combout\,
	datac => \amt[1]~input_o\,
	datad => \le_out[1][29]~66_combout\,
	combout => \le_out[1][29]~67_combout\);

-- Location: LCCOMB_X4_Y65_N0
\le_out[1][21]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][21]~64_combout\ = (\amt[0]~input_o\ & (\le_out[1][22]~63_combout\)) # (!\amt[0]~input_o\ & ((\le_out[1][21]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[1][22]~63_combout\,
	datab => \amt[0]~input_o\,
	datad => \le_out[1][21]~26_combout\,
	combout => \le_out[1][21]~64_combout\);

-- Location: LCCOMB_X5_Y68_N12
\le_out[3][17]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][17]~65_combout\ = (\le_out[1][17]~62_combout\ & ((\le_out[3][0]~32_combout\) # ((\le_out[1][21]~64_combout\ & \le_out[3][0]~33_combout\)))) # (!\le_out[1][17]~62_combout\ & (((\le_out[1][21]~64_combout\ & \le_out[3][0]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[1][17]~62_combout\,
	datab => \le_out[3][0]~32_combout\,
	datac => \le_out[1][21]~64_combout\,
	datad => \le_out[3][0]~33_combout\,
	combout => \le_out[3][17]~65_combout\);

-- Location: LCCOMB_X5_Y68_N22
\le_out[3][17]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][17]~68_combout\ = (\le_out[3][17]~60_combout\) # ((\le_out[3][17]~65_combout\) # ((\le_out[3][0]~42_combout\ & \le_out[1][29]~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[3][0]~42_combout\,
	datab => \le_out[3][17]~60_combout\,
	datac => \le_out[1][29]~67_combout\,
	datad => \le_out[3][17]~65_combout\,
	combout => \le_out[3][17]~68_combout\);

-- Location: LCCOMB_X5_Y68_N18
\le_out~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out~79_combout\ = (\amt[4]~input_o\ & (((\le_out[3][17]~68_combout\)))) # (!\amt[4]~input_o\ & ((\le_out[3][1]~73_combout\) # ((\le_out[3][1]~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[3][1]~73_combout\,
	datab => \le_out[3][1]~78_combout\,
	datac => \le_out[3][17]~68_combout\,
	datad => \amt[4]~input_o\,
	combout => \le_out~79_combout\);

-- Location: IOIBUF_X0_Y55_N22
\a[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: LCCOMB_X3_Y66_N24
\le_out[1][3]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][3]~100_combout\ = (\amt[1]~input_o\ & (\a[5]~input_o\)) # (!\amt[1]~input_o\ & ((\a[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[5]~input_o\,
	datac => \a[3]~input_o\,
	datad => \amt[1]~input_o\,
	combout => \le_out[1][3]~100_combout\);

-- Location: IOIBUF_X3_Y73_N1
\a[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: IOIBUF_X3_Y73_N22
\a[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: LCCOMB_X3_Y66_N0
\le_out[1][2]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][2]~69_combout\ = (\amt[1]~input_o\ & (\a[4]~input_o\)) # (!\amt[1]~input_o\ & ((\a[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[4]~input_o\,
	datac => \amt[1]~input_o\,
	datad => \a[2]~input_o\,
	combout => \le_out[1][2]~69_combout\);

-- Location: LCCOMB_X3_Y67_N24
\le_out[1][2]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][2]~101_combout\ = (\amt[0]~input_o\ & (\le_out[1][3]~100_combout\)) # (!\amt[0]~input_o\ & ((\le_out[1][2]~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datac => \le_out[1][3]~100_combout\,
	datad => \le_out[1][2]~69_combout\,
	combout => \le_out[1][2]~101_combout\);

-- Location: LCCOMB_X2_Y67_N6
\le_out[1][11]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][11]~95_combout\ = (\amt[1]~input_o\ & (\a[13]~input_o\)) # (!\amt[1]~input_o\ & ((\a[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[13]~input_o\,
	datac => \amt[1]~input_o\,
	datad => \a[11]~input_o\,
	combout => \le_out[1][11]~95_combout\);

-- Location: LCCOMB_X3_Y67_N6
\le_out[1][10]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][10]~96_combout\ = (\amt[0]~input_o\ & ((\le_out[1][11]~95_combout\))) # (!\amt[0]~input_o\ & (\le_out[1][10]~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \le_out[1][10]~74_combout\,
	datac => \le_out[1][11]~95_combout\,
	combout => \le_out[1][10]~96_combout\);

-- Location: IOIBUF_X0_Y63_N15
\a[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(17),
	o => \a[17]~input_o\);

-- Location: LCCOMB_X2_Y67_N24
\le_out[1][15]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][15]~97_combout\ = (\amt[1]~input_o\ & (\a[17]~input_o\)) # (!\amt[1]~input_o\ & ((\a[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[17]~input_o\,
	datac => \amt[1]~input_o\,
	datad => \a[15]~input_o\,
	combout => \le_out[1][15]~97_combout\);

-- Location: LCCOMB_X2_Y67_N18
\le_out[1][14]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][14]~98_combout\ = (\amt[0]~input_o\ & ((\le_out[1][15]~97_combout\))) # (!\amt[0]~input_o\ & (\le_out[1][14]~76_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \le_out[1][14]~76_combout\,
	datad => \le_out[1][15]~97_combout\,
	combout => \le_out[1][14]~98_combout\);

-- Location: LCCOMB_X3_Y65_N18
\le_out[3][2]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][2]~99_combout\ = (\le_out[3][0]~41_combout\ & ((\le_out[1][10]~96_combout\) # ((\le_out[1][14]~98_combout\ & \le_out[3][0]~42_combout\)))) # (!\le_out[3][0]~41_combout\ & (((\le_out[1][14]~98_combout\ & \le_out[3][0]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[3][0]~41_combout\,
	datab => \le_out[1][10]~96_combout\,
	datac => \le_out[1][14]~98_combout\,
	datad => \le_out[3][0]~42_combout\,
	combout => \le_out[3][2]~99_combout\);

-- Location: LCCOMB_X3_Y67_N18
\le_out[3][2]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][2]~102_combout\ = (\le_out[3][2]~94_combout\) # ((\le_out[3][2]~99_combout\) # ((\le_out[1][2]~101_combout\ & \le_out[3][0]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[3][2]~94_combout\,
	datab => \le_out[1][2]~101_combout\,
	datac => \le_out[3][2]~99_combout\,
	datad => \le_out[3][0]~32_combout\,
	combout => \le_out[3][2]~102_combout\);

-- Location: LCCOMB_X4_Y65_N30
\le_out[1][19]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][19]~84_combout\ = (\amt[1]~input_o\ & (\a[21]~input_o\)) # (!\amt[1]~input_o\ & ((\a[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datab => \a[21]~input_o\,
	datad => \a[19]~input_o\,
	combout => \le_out[1][19]~84_combout\);

-- Location: LCCOMB_X4_Y65_N8
\le_out[1][18]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][18]~85_combout\ = (\amt[0]~input_o\ & ((\le_out[1][19]~84_combout\))) # (!\amt[0]~input_o\ & (\le_out[1][18]~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[1][18]~61_combout\,
	datab => \amt[0]~input_o\,
	datac => \le_out[1][19]~84_combout\,
	combout => \le_out[1][18]~85_combout\);

-- Location: LCCOMB_X4_Y65_N2
\le_out[1][23]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][23]~82_combout\ = (\amt[1]~input_o\ & (\a[25]~input_o\)) # (!\amt[1]~input_o\ & ((\a[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datab => \a[25]~input_o\,
	datac => \a[23]~input_o\,
	combout => \le_out[1][23]~82_combout\);

-- Location: LCCOMB_X4_Y65_N12
\le_out[1][22]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][22]~83_combout\ = (\amt[0]~input_o\ & ((\le_out[1][23]~82_combout\))) # (!\amt[0]~input_o\ & (\le_out[1][22]~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[1][22]~63_combout\,
	datab => \amt[0]~input_o\,
	datad => \le_out[1][23]~82_combout\,
	combout => \le_out[1][22]~83_combout\);

-- Location: LCCOMB_X5_Y65_N14
\le_out[3][18]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][18]~86_combout\ = (!\amt[3]~input_o\ & ((\amt[2]~input_o\ & ((\le_out[1][22]~83_combout\))) # (!\amt[2]~input_o\ & (\le_out[1][18]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datab => \amt[3]~input_o\,
	datac => \le_out[1][18]~85_combout\,
	datad => \le_out[1][22]~83_combout\,
	combout => \le_out[3][18]~86_combout\);

-- Location: LCCOMB_X4_Y66_N24
\le_out[1][30]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][30]~90_combout\ = (\a[31]~input_o\ & (\lar[0]~input_o\ & !\lar[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[31]~input_o\,
	datab => \lar[0]~input_o\,
	datac => \lar[1]~input_o\,
	combout => \le_out[1][30]~90_combout\);

-- Location: LCCOMB_X5_Y66_N26
\le_out[1][30]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][30]~89_combout\ = (!\amt[1]~input_o\ & ((\amt[0]~input_o\ & ((\a[31]~input_o\))) # (!\amt[0]~input_o\ & (\a[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datab => \a[30]~input_o\,
	datac => \amt[0]~input_o\,
	datad => \a[31]~input_o\,
	combout => \le_out[1][30]~89_combout\);

-- Location: IOIBUF_X0_Y46_N15
\a[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: LCCOMB_X3_Y66_N4
\le_out[1][30]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][30]~87_combout\ = (\amt[1]~input_o\ & \lar[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[1]~input_o\,
	datad => \lar[1]~input_o\,
	combout => \le_out[1][30]~87_combout\);

-- Location: IOIBUF_X0_Y66_N15
\a[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: LCCOMB_X3_Y66_N6
\le_out[1][30]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][30]~88_combout\ = (\le_out[1][30]~87_combout\ & ((\amt[0]~input_o\ & (\a[1]~input_o\)) # (!\amt[0]~input_o\ & ((\a[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \a[1]~input_o\,
	datac => \le_out[1][30]~87_combout\,
	datad => \a[0]~input_o\,
	combout => \le_out[1][30]~88_combout\);

-- Location: LCCOMB_X5_Y66_N4
\le_out[1][30]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][30]~91_combout\ = (\le_out[1][30]~89_combout\) # ((\le_out[1][30]~88_combout\) # ((\amt[1]~input_o\ & \le_out[1][30]~90_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datab => \le_out[1][30]~90_combout\,
	datac => \le_out[1][30]~89_combout\,
	datad => \le_out[1][30]~88_combout\,
	combout => \le_out[1][30]~91_combout\);

-- Location: LCCOMB_X5_Y65_N16
\le_out[3][18]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][18]~92_combout\ = (\le_out[3][18]~81_combout\) # ((\le_out[3][18]~86_combout\) # ((\le_out[3][0]~42_combout\ & \le_out[1][30]~91_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[3][18]~81_combout\,
	datab => \le_out[3][0]~42_combout\,
	datac => \le_out[3][18]~86_combout\,
	datad => \le_out[1][30]~91_combout\,
	combout => \le_out[3][18]~92_combout\);

-- Location: LCCOMB_X2_Y65_N8
\le_out~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out~103_combout\ = (\amt[4]~input_o\ & ((\le_out[3][18]~92_combout\))) # (!\amt[4]~input_o\ & (\le_out[3][2]~102_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[3][2]~102_combout\,
	datac => \amt[4]~input_o\,
	datad => \le_out[3][18]~92_combout\,
	combout => \le_out~103_combout\);

-- Location: IOIBUF_X5_Y73_N1
\a[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(18),
	o => \a[18]~input_o\);

-- Location: LCCOMB_X4_Y67_N0
\le_out[1][16]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][16]~30_combout\ = (\amt[1]~input_o\ & ((\a[18]~input_o\))) # (!\amt[1]~input_o\ & (\a[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[16]~input_o\,
	datac => \amt[1]~input_o\,
	datad => \a[18]~input_o\,
	combout => \le_out[1][16]~30_combout\);

-- Location: LCCOMB_X4_Y67_N18
\le_out[1][15]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][15]~116_combout\ = (\amt[0]~input_o\ & ((\le_out[1][16]~30_combout\))) # (!\amt[0]~input_o\ & (\le_out[1][15]~97_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \le_out[1][15]~97_combout\,
	datac => \amt[0]~input_o\,
	datad => \le_out[1][16]~30_combout\,
	combout => \le_out[1][15]~116_combout\);

-- Location: LCCOMB_X5_Y65_N20
\le_out[3][0]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][0]~41_combout\ = (\amt[3]~input_o\ & !\amt[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[3]~input_o\,
	datad => \amt[2]~input_o\,
	combout => \le_out[3][0]~41_combout\);

-- Location: LCCOMB_X4_Y67_N24
\le_out[3][3]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][3]~115_combout\ = (\le_out[3][0]~41_combout\ & ((\amt[0]~input_o\ & ((\le_out[1][12]~52_combout\))) # (!\amt[0]~input_o\ & (\le_out[1][11]~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[1][11]~95_combout\,
	datab => \le_out[1][12]~52_combout\,
	datac => \le_out[3][0]~41_combout\,
	datad => \amt[0]~input_o\,
	combout => \le_out[3][3]~115_combout\);

-- Location: LCCOMB_X4_Y67_N4
\le_out[3][3]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][3]~117_combout\ = (\le_out[3][3]~114_combout\) # ((\le_out[3][3]~115_combout\) # ((\le_out[1][15]~116_combout\ & \le_out[3][0]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[3][3]~114_combout\,
	datab => \le_out[1][15]~116_combout\,
	datac => \le_out[3][0]~42_combout\,
	datad => \le_out[3][3]~115_combout\,
	combout => \le_out[3][3]~117_combout\);

-- Location: LCCOMB_X4_Y67_N2
\le_out[3][19]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][19]~104_combout\ = (\le_out[3][0]~33_combout\ & ((\amt[0]~input_o\ & (\le_out[1][24]~39_combout\)) # (!\amt[0]~input_o\ & ((\le_out[1][23]~82_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[1][24]~39_combout\,
	datab => \amt[0]~input_o\,
	datac => \le_out[3][0]~33_combout\,
	datad => \le_out[1][23]~82_combout\,
	combout => \le_out[3][19]~104_combout\);

-- Location: LCCOMB_X3_Y66_N2
\le_out[1][31]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][31]~108_combout\ = (\le_out[1][30]~87_combout\ & ((\amt[0]~input_o\ & ((\a[2]~input_o\))) # (!\amt[0]~input_o\ & (\a[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \a[1]~input_o\,
	datac => \le_out[1][30]~87_combout\,
	datad => \a[2]~input_o\,
	combout => \le_out[1][31]~108_combout\);

-- Location: LCCOMB_X5_Y66_N24
\le_out[1][31]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][31]~109_combout\ = ((\lar[0]~input_o\ & !\lar[1]~input_o\)) # (!\amt[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \lar[0]~input_o\,
	datad => \lar[1]~input_o\,
	combout => \le_out[1][31]~109_combout\);

-- Location: LCCOMB_X5_Y66_N18
\le_out[1][31]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][31]~110_combout\ = (\le_out[1][31]~108_combout\) # ((\le_out[1][31]~109_combout\ & ((\Mux0~1_combout\) # (\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => \Mux0~0_combout\,
	datac => \le_out[1][31]~108_combout\,
	datad => \le_out[1][31]~109_combout\,
	combout => \le_out[1][31]~110_combout\);

-- Location: LCCOMB_X4_Y67_N14
\le_out[3][19]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][19]~111_combout\ = (\le_out[3][19]~107_combout\) # ((\le_out[3][19]~104_combout\) # ((\le_out[3][0]~42_combout\ & \le_out[1][31]~110_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[3][19]~107_combout\,
	datab => \le_out[3][19]~104_combout\,
	datac => \le_out[3][0]~42_combout\,
	datad => \le_out[1][31]~110_combout\,
	combout => \le_out[3][19]~111_combout\);

-- Location: LCCOMB_X5_Y67_N2
\le_out~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out~118_combout\ = (\amt[4]~input_o\ & ((\le_out[3][19]~111_combout\))) # (!\amt[4]~input_o\ & (\le_out[3][3]~117_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \le_out[3][3]~117_combout\,
	datac => \amt[4]~input_o\,
	datad => \le_out[3][19]~111_combout\,
	combout => \le_out~118_combout\);

-- Location: LCCOMB_X3_Y65_N30
\le_out[3][4]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][4]~125_combout\ = (\le_out[1][4]~124_combout\ & ((\le_out[3][0]~32_combout\) # ((\le_out[1][8]~50_combout\ & \le_out[3][0]~33_combout\)))) # (!\le_out[1][4]~124_combout\ & (\le_out[1][8]~50_combout\ & ((\le_out[3][0]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[1][4]~124_combout\,
	datab => \le_out[1][8]~50_combout\,
	datac => \le_out[3][0]~32_combout\,
	datad => \le_out[3][0]~33_combout\,
	combout => \le_out[3][4]~125_combout\);

-- Location: LCCOMB_X3_Y65_N0
\le_out[3][4]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][4]~126_combout\ = (\le_out[3][0]~41_combout\ & ((\le_out[1][12]~53_combout\) # ((\le_out[1][16]~31_combout\ & \le_out[3][0]~42_combout\)))) # (!\le_out[3][0]~41_combout\ & (\le_out[1][16]~31_combout\ & ((\le_out[3][0]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[3][0]~41_combout\,
	datab => \le_out[1][16]~31_combout\,
	datac => \le_out[1][12]~53_combout\,
	datad => \le_out[3][0]~42_combout\,
	combout => \le_out[3][4]~126_combout\);

-- Location: LCCOMB_X3_Y68_N18
\le_out[3][20]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][20]~119_combout\ = (!\amt[3]~input_o\ & ((\amt[2]~input_o\ & (\le_out[1][24]~40_combout\)) # (!\amt[2]~input_o\ & ((\le_out[1][20]~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datab => \amt[3]~input_o\,
	datac => \le_out[1][24]~40_combout\,
	datad => \le_out[1][20]~28_combout\,
	combout => \le_out[3][20]~119_combout\);

-- Location: LCCOMB_X3_Y68_N16
\le_out[3][20]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][20]~123_combout\ = (\le_out[3][20]~119_combout\) # ((\le_out[2][28]~122_combout\ & \amt[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[2][28]~122_combout\,
	datac => \amt[3]~input_o\,
	datad => \le_out[3][20]~119_combout\,
	combout => \le_out[3][20]~123_combout\);

-- Location: LCCOMB_X2_Y65_N26
\le_out~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out~127_combout\ = (\amt[4]~input_o\ & (((\le_out[3][20]~123_combout\)))) # (!\amt[4]~input_o\ & ((\le_out[3][4]~125_combout\) # ((\le_out[3][4]~126_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[3][4]~125_combout\,
	datab => \le_out[3][4]~126_combout\,
	datac => \amt[4]~input_o\,
	datad => \le_out[3][20]~123_combout\,
	combout => \le_out~127_combout\);

-- Location: LCCOMB_X5_Y65_N2
\le_out[1][25]~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][25]~128_combout\ = (\amt[0]~input_o\ & (\le_out[1][26]~59_combout\)) # (!\amt[0]~input_o\ & ((\le_out[1][25]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[1][26]~59_combout\,
	datab => \le_out[1][25]~38_combout\,
	datac => \amt[0]~input_o\,
	combout => \le_out[1][25]~128_combout\);

-- Location: LCCOMB_X4_Y68_N26
\le_out[3][21]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][21]~129_combout\ = (!\amt[3]~input_o\ & ((\amt[2]~input_o\ & ((\le_out[1][25]~128_combout\))) # (!\amt[2]~input_o\ & (\le_out[1][21]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datab => \le_out[1][21]~64_combout\,
	datac => \amt[3]~input_o\,
	datad => \le_out[1][25]~128_combout\,
	combout => \le_out[3][21]~129_combout\);

-- Location: LCCOMB_X3_Y66_N16
\le_out[2][29]~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[2][29]~130_combout\ = (\lar[1]~input_o\ & ((\amt[0]~input_o\ & ((\le_out[1][2]~69_combout\))) # (!\amt[0]~input_o\ & (\le_out[1][1]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[1][1]~56_combout\,
	datab => \lar[1]~input_o\,
	datac => \amt[0]~input_o\,
	datad => \le_out[1][2]~69_combout\,
	combout => \le_out[2][29]~130_combout\);

-- Location: LCCOMB_X4_Y68_N28
\le_out[2][29]~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[2][29]~131_combout\ = (\amt[2]~input_o\ & ((\le_out[1][30]~90_combout\) # ((\le_out[2][29]~130_combout\)))) # (!\amt[2]~input_o\ & (((\le_out[1][29]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[1][30]~90_combout\,
	datab => \le_out[2][29]~130_combout\,
	datac => \le_out[1][29]~67_combout\,
	datad => \amt[2]~input_o\,
	combout => \le_out[2][29]~131_combout\);

-- Location: LCCOMB_X4_Y68_N6
\le_out~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out~132_combout\ = (\amt[4]~input_o\ & ((\le_out[3][21]~129_combout\) # ((\amt[3]~input_o\ & \le_out[2][29]~131_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datab => \amt[4]~input_o\,
	datac => \le_out[3][21]~129_combout\,
	datad => \le_out[2][29]~131_combout\,
	combout => \le_out~132_combout\);

-- Location: LCCOMB_X4_Y68_N0
\le_out[3][5]~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][5]~133_combout\ = (\le_out[3][0]~32_combout\ & ((\le_out[1][5]~72_combout\) # ((\le_out[1][9]~75_combout\ & \le_out[3][0]~33_combout\)))) # (!\le_out[3][0]~32_combout\ & (\le_out[1][9]~75_combout\ & ((\le_out[3][0]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[3][0]~32_combout\,
	datab => \le_out[1][9]~75_combout\,
	datac => \le_out[1][5]~72_combout\,
	datad => \le_out[3][0]~33_combout\,
	combout => \le_out[3][5]~133_combout\);

-- Location: LCCOMB_X4_Y65_N20
\le_out[1][17]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][17]~62_combout\ = (\amt[0]~input_o\ & (\le_out[1][18]~61_combout\)) # (!\amt[0]~input_o\ & ((\le_out[1][17]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[1][18]~61_combout\,
	datab => \amt[0]~input_o\,
	datac => \le_out[1][17]~29_combout\,
	combout => \le_out[1][17]~62_combout\);

-- Location: LCCOMB_X5_Y68_N4
\le_out[3][5]~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][5]~134_combout\ = (\le_out[3][0]~41_combout\ & ((\le_out[1][13]~77_combout\) # ((\le_out[1][17]~62_combout\ & \le_out[3][0]~42_combout\)))) # (!\le_out[3][0]~41_combout\ & (((\le_out[1][17]~62_combout\ & \le_out[3][0]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[3][0]~41_combout\,
	datab => \le_out[1][13]~77_combout\,
	datac => \le_out[1][17]~62_combout\,
	datad => \le_out[3][0]~42_combout\,
	combout => \le_out[3][5]~134_combout\);

-- Location: LCCOMB_X4_Y68_N20
\le_out~236\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out~236_combout\ = (\le_out~132_combout\) # ((!\amt[4]~input_o\ & ((\le_out[3][5]~133_combout\) # (\le_out[3][5]~134_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out~132_combout\,
	datab => \le_out[3][5]~133_combout\,
	datac => \amt[4]~input_o\,
	datad => \le_out[3][5]~134_combout\,
	combout => \le_out~236_combout\);

-- Location: LCCOMB_X3_Y68_N28
\le_out[2][28]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[2][28]~120_combout\ = (\amt[2]~input_o\ & \lar[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datad => \lar[1]~input_o\,
	combout => \le_out[2][28]~120_combout\);

-- Location: LCCOMB_X3_Y66_N26
\le_out[2][30]~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[2][30]~138_combout\ = (\le_out[2][28]~120_combout\ & ((\amt[0]~input_o\ & ((\le_out[1][3]~100_combout\))) # (!\amt[0]~input_o\ & (\le_out[1][2]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[1][2]~69_combout\,
	datab => \le_out[1][3]~100_combout\,
	datac => \amt[0]~input_o\,
	datad => \le_out[2][28]~120_combout\,
	combout => \le_out[2][30]~138_combout\);

-- Location: LCCOMB_X2_Y66_N24
\le_out[2][30]~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[2][30]~139_combout\ = (\le_out[2][30]~138_combout\) # ((\amt[2]~input_o\ & ((\le_out[1][30]~90_combout\))) # (!\amt[2]~input_o\ & (\le_out[1][30]~91_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datab => \le_out[2][30]~138_combout\,
	datac => \le_out[1][30]~91_combout\,
	datad => \le_out[1][30]~90_combout\,
	combout => \le_out[2][30]~139_combout\);

-- Location: LCCOMB_X5_Y65_N18
\le_out[1][27]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][27]~80_combout\ = (\amt[1]~input_o\ & (\a[29]~input_o\)) # (!\amt[1]~input_o\ & ((\a[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[1]~input_o\,
	datac => \a[29]~input_o\,
	datad => \a[27]~input_o\,
	combout => \le_out[1][27]~80_combout\);

-- Location: LCCOMB_X5_Y65_N28
\le_out[1][26]~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][26]~136_combout\ = (\amt[0]~input_o\ & ((\le_out[1][27]~80_combout\))) # (!\amt[0]~input_o\ & (\le_out[1][26]~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[1][26]~59_combout\,
	datab => \le_out[1][27]~80_combout\,
	datac => \amt[0]~input_o\,
	combout => \le_out[1][26]~136_combout\);

-- Location: LCCOMB_X5_Y65_N30
\le_out[3][22]~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][22]~137_combout\ = (!\amt[3]~input_o\ & ((\amt[2]~input_o\ & ((\le_out[1][26]~136_combout\))) # (!\amt[2]~input_o\ & (\le_out[1][22]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[1][22]~83_combout\,
	datab => \amt[3]~input_o\,
	datac => \amt[2]~input_o\,
	datad => \le_out[1][26]~136_combout\,
	combout => \le_out[3][22]~137_combout\);

-- Location: LCCOMB_X2_Y66_N2
\le_out~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out~140_combout\ = (\amt[4]~input_o\ & ((\le_out[3][22]~137_combout\) # ((\amt[3]~input_o\ & \le_out[2][30]~139_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datab => \le_out[2][30]~139_combout\,
	datac => \amt[4]~input_o\,
	datad => \le_out[3][22]~137_combout\,
	combout => \le_out~140_combout\);

-- Location: LCCOMB_X2_Y67_N28
\le_out[1][7]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][7]~93_combout\ = (\amt[1]~input_o\ & (\a[9]~input_o\)) # (!\amt[1]~input_o\ & ((\a[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[9]~input_o\,
	datac => \amt[1]~input_o\,
	datad => \a[7]~input_o\,
	combout => \le_out[1][7]~93_combout\);

-- Location: LCCOMB_X3_Y67_N0
\le_out[1][6]~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][6]~141_combout\ = (\amt[0]~input_o\ & (\le_out[1][7]~93_combout\)) # (!\amt[0]~input_o\ & ((\le_out[1][6]~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datac => \le_out[1][7]~93_combout\,
	datad => \le_out[1][6]~71_combout\,
	combout => \le_out[1][6]~141_combout\);

-- Location: LCCOMB_X3_Y67_N26
\le_out[3][6]~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][6]~142_combout\ = (\le_out[1][10]~96_combout\ & ((\le_out[3][0]~33_combout\) # ((\le_out[3][0]~32_combout\ & \le_out[1][6]~141_combout\)))) # (!\le_out[1][10]~96_combout\ & (\le_out[3][0]~32_combout\ & ((\le_out[1][6]~141_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[1][10]~96_combout\,
	datab => \le_out[3][0]~32_combout\,
	datac => \le_out[3][0]~33_combout\,
	datad => \le_out[1][6]~141_combout\,
	combout => \le_out[3][6]~142_combout\);

-- Location: LCCOMB_X3_Y65_N2
\le_out[3][6]~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][6]~143_combout\ = (\le_out[3][0]~41_combout\ & ((\le_out[1][14]~98_combout\) # ((\le_out[1][18]~85_combout\ & \le_out[3][0]~42_combout\)))) # (!\le_out[3][0]~41_combout\ & (\le_out[1][18]~85_combout\ & ((\le_out[3][0]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[3][0]~41_combout\,
	datab => \le_out[1][18]~85_combout\,
	datac => \le_out[1][14]~98_combout\,
	datad => \le_out[3][0]~42_combout\,
	combout => \le_out[3][6]~143_combout\);

-- Location: LCCOMB_X2_Y66_N16
\le_out~237\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out~237_combout\ = (\le_out~140_combout\) # ((!\amt[4]~input_o\ & ((\le_out[3][6]~142_combout\) # (\le_out[3][6]~143_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \le_out~140_combout\,
	datac => \le_out[3][6]~142_combout\,
	datad => \le_out[3][6]~143_combout\,
	combout => \le_out~237_combout\);

-- Location: LCCOMB_X4_Y67_N30
\le_out[3][23]~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][23]~145_combout\ = (!\amt[2]~input_o\ & ((\amt[0]~input_o\ & (\le_out[1][24]~39_combout\)) # (!\amt[0]~input_o\ & ((\le_out[1][23]~82_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[1][24]~39_combout\,
	datab => \amt[0]~input_o\,
	datac => \amt[2]~input_o\,
	datad => \le_out[1][23]~82_combout\,
	combout => \le_out[3][23]~145_combout\);

-- Location: LCCOMB_X5_Y66_N10
\le_out[1][28]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][28]~36_combout\ = (\amt[1]~input_o\ & ((\a[30]~input_o\))) # (!\amt[1]~input_o\ & (\a[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[28]~input_o\,
	datac => \amt[1]~input_o\,
	datad => \a[30]~input_o\,
	combout => \le_out[1][28]~36_combout\);

-- Location: LCCOMB_X5_Y66_N22
\le_out[1][27]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][27]~105_combout\ = (\amt[0]~input_o\ & ((\le_out[1][28]~36_combout\))) # (!\amt[0]~input_o\ & (\le_out[1][27]~80_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \le_out[1][27]~80_combout\,
	datac => \amt[0]~input_o\,
	datad => \le_out[1][28]~36_combout\,
	combout => \le_out[1][27]~105_combout\);

-- Location: LCCOMB_X4_Y66_N26
\le_out[3][23]~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][23]~146_combout\ = (!\amt[3]~input_o\ & ((\le_out[3][23]~145_combout\) # ((\amt[2]~input_o\ & \le_out[1][27]~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datab => \amt[3]~input_o\,
	datac => \le_out[3][23]~145_combout\,
	datad => \le_out[1][27]~105_combout\,
	combout => \le_out[3][23]~146_combout\);

-- Location: LCCOMB_X3_Y66_N28
\le_out[2][31]~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[2][31]~147_combout\ = (\le_out[2][28]~120_combout\ & ((\amt[0]~input_o\ & (\le_out[1][4]~46_combout\)) # (!\amt[0]~input_o\ & ((\le_out[1][3]~100_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[1][4]~46_combout\,
	datab => \le_out[1][3]~100_combout\,
	datac => \amt[0]~input_o\,
	datad => \le_out[2][28]~120_combout\,
	combout => \le_out[2][31]~147_combout\);

-- Location: LCCOMB_X5_Y66_N30
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\a[0]~input_o\ & (\amt[0]~input_o\ & \lar[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datac => \amt[0]~input_o\,
	datad => \lar[1]~input_o\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X5_Y66_N20
\le_out[1][31]~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][31]~149_combout\ = (\le_out[1][31]~109_combout\ & ((\Mux0~0_combout\) # (\Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux0~0_combout\,
	datac => \Mux0~1_combout\,
	datad => \le_out[1][31]~109_combout\,
	combout => \le_out[1][31]~149_combout\);

-- Location: LCCOMB_X3_Y66_N14
\le_out[2][31]~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[2][31]~150_combout\ = (\le_out[2][31]~147_combout\) # ((\le_out[2][31]~148_combout\ & ((\le_out[1][31]~108_combout\) # (\le_out[1][31]~149_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[2][31]~148_combout\,
	datab => \le_out[1][31]~108_combout\,
	datac => \le_out[2][31]~147_combout\,
	datad => \le_out[1][31]~149_combout\,
	combout => \le_out[2][31]~150_combout\);

-- Location: LCCOMB_X4_Y66_N30
\le_out~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out~151_combout\ = (\amt[4]~input_o\ & ((\le_out[3][23]~146_combout\) # ((\amt[3]~input_o\ & \le_out[2][31]~150_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \amt[3]~input_o\,
	datac => \le_out[3][23]~146_combout\,
	datad => \le_out[2][31]~150_combout\,
	combout => \le_out~151_combout\);

-- Location: LCCOMB_X3_Y67_N20
\le_out[1][11]~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][11]~152_combout\ = (\amt[0]~input_o\ & (\le_out[1][12]~52_combout\)) # (!\amt[0]~input_o\ & ((\le_out[1][11]~95_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \le_out[1][12]~52_combout\,
	datac => \le_out[1][11]~95_combout\,
	combout => \le_out[1][11]~152_combout\);

-- Location: LCCOMB_X2_Y67_N12
\le_out[1][8]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][8]~49_combout\ = (\amt[1]~input_o\ & (\a[10]~input_o\)) # (!\amt[1]~input_o\ & ((\a[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \a[10]~input_o\,
	datad => \a[8]~input_o\,
	combout => \le_out[1][8]~49_combout\);

-- Location: LCCOMB_X3_Y67_N4
\le_out[1][7]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][7]~113_combout\ = (\amt[0]~input_o\ & ((\le_out[1][8]~49_combout\))) # (!\amt[0]~input_o\ & (\le_out[1][7]~93_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datac => \le_out[1][7]~93_combout\,
	datad => \le_out[1][8]~49_combout\,
	combout => \le_out[1][7]~113_combout\);

-- Location: LCCOMB_X3_Y67_N22
\le_out[3][7]~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][7]~153_combout\ = (\le_out[3][0]~33_combout\ & ((\le_out[1][11]~152_combout\) # ((\le_out[1][7]~113_combout\ & \le_out[3][0]~32_combout\)))) # (!\le_out[3][0]~33_combout\ & (((\le_out[1][7]~113_combout\ & \le_out[3][0]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[3][0]~33_combout\,
	datab => \le_out[1][11]~152_combout\,
	datac => \le_out[1][7]~113_combout\,
	datad => \le_out[3][0]~32_combout\,
	combout => \le_out[3][7]~153_combout\);

-- Location: LCCOMB_X4_Y65_N18
\le_out[1][19]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][19]~106_combout\ = (\amt[0]~input_o\ & (\le_out[1][20]~27_combout\)) # (!\amt[0]~input_o\ & ((\le_out[1][19]~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[1][20]~27_combout\,
	datab => \amt[0]~input_o\,
	datac => \le_out[1][19]~84_combout\,
	combout => \le_out[1][19]~106_combout\);

-- Location: LCCOMB_X4_Y67_N8
\le_out[3][7]~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][7]~154_combout\ = (\le_out[3][0]~42_combout\ & ((\le_out[1][19]~106_combout\) # ((\le_out[3][0]~41_combout\ & \le_out[1][15]~116_combout\)))) # (!\le_out[3][0]~42_combout\ & (((\le_out[3][0]~41_combout\ & \le_out[1][15]~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[3][0]~42_combout\,
	datab => \le_out[1][19]~106_combout\,
	datac => \le_out[3][0]~41_combout\,
	datad => \le_out[1][15]~116_combout\,
	combout => \le_out[3][7]~154_combout\);

-- Location: LCCOMB_X4_Y66_N6
\le_out~238\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out~238_combout\ = (\le_out~151_combout\) # ((!\amt[4]~input_o\ & ((\le_out[3][7]~153_combout\) # (\le_out[3][7]~154_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out~151_combout\,
	datab => \le_out[3][7]~153_combout\,
	datac => \amt[4]~input_o\,
	datad => \le_out[3][7]~154_combout\,
	combout => \le_out~238_combout\);

-- Location: LCCOMB_X3_Y65_N6
\le_out[3][8]~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][8]~161_combout\ = (\le_out[3][0]~32_combout\ & ((\le_out[1][8]~50_combout\) # ((\le_out[1][12]~53_combout\ & \le_out[3][0]~33_combout\)))) # (!\le_out[3][0]~32_combout\ & (((\le_out[1][12]~53_combout\ & \le_out[3][0]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[3][0]~32_combout\,
	datab => \le_out[1][8]~50_combout\,
	datac => \le_out[1][12]~53_combout\,
	datad => \le_out[3][0]~33_combout\,
	combout => \le_out[3][8]~161_combout\);

-- Location: LCCOMB_X4_Y66_N10
\le_out[3][24]~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][24]~157_combout\ = (\a[31]~input_o\ & (\lar[0]~input_o\ & (!\lar[1]~input_o\ & \amt[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[31]~input_o\,
	datab => \lar[0]~input_o\,
	datac => \lar[1]~input_o\,
	datad => \amt[3]~input_o\,
	combout => \le_out[3][24]~157_combout\);

-- Location: LCCOMB_X3_Y68_N2
\le_out[3][24]~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][24]~156_combout\ = (!\amt[3]~input_o\ & ((\amt[2]~input_o\ & (\le_out[1][28]~37_combout\)) # (!\amt[2]~input_o\ & ((\le_out[1][24]~40_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datab => \le_out[1][28]~37_combout\,
	datac => \le_out[1][24]~40_combout\,
	datad => \amt[2]~input_o\,
	combout => \le_out[3][24]~156_combout\);

-- Location: LCCOMB_X2_Y65_N20
\le_out~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out~160_combout\ = (\amt[4]~input_o\ & ((\le_out[3][24]~159_combout\) # ((\le_out[3][24]~157_combout\) # (\le_out[3][24]~156_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[3][24]~159_combout\,
	datab => \amt[4]~input_o\,
	datac => \le_out[3][24]~157_combout\,
	datad => \le_out[3][24]~156_combout\,
	combout => \le_out~160_combout\);

-- Location: LCCOMB_X3_Y65_N24
\le_out[3][8]~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][8]~162_combout\ = (\le_out[3][0]~41_combout\ & ((\le_out[1][16]~31_combout\) # ((\le_out[1][20]~28_combout\ & \le_out[3][0]~42_combout\)))) # (!\le_out[3][0]~41_combout\ & (((\le_out[1][20]~28_combout\ & \le_out[3][0]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[3][0]~41_combout\,
	datab => \le_out[1][16]~31_combout\,
	datac => \le_out[1][20]~28_combout\,
	datad => \le_out[3][0]~42_combout\,
	combout => \le_out[3][8]~162_combout\);

-- Location: LCCOMB_X2_Y65_N10
\le_out~239\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out~239_combout\ = (\le_out~160_combout\) # ((!\amt[4]~input_o\ & ((\le_out[3][8]~161_combout\) # (\le_out[3][8]~162_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[3][8]~161_combout\,
	datab => \le_out~160_combout\,
	datac => \amt[4]~input_o\,
	datad => \le_out[3][8]~162_combout\,
	combout => \le_out~239_combout\);

-- Location: LCCOMB_X5_Y68_N14
\le_out[3][9]~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][9]~167_combout\ = (\le_out[3][0]~32_combout\ & ((\le_out[1][9]~75_combout\) # ((\le_out[1][13]~77_combout\ & \le_out[3][0]~33_combout\)))) # (!\le_out[3][0]~32_combout\ & (\le_out[1][13]~77_combout\ & ((\le_out[3][0]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[3][0]~32_combout\,
	datab => \le_out[1][13]~77_combout\,
	datac => \le_out[1][9]~75_combout\,
	datad => \le_out[3][0]~33_combout\,
	combout => \le_out[3][9]~167_combout\);

-- Location: LCCOMB_X4_Y65_N10
\le_out[1][18]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][18]~61_combout\ = (\amt[1]~input_o\ & (\a[20]~input_o\)) # (!\amt[1]~input_o\ & ((\a[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[20]~input_o\,
	datac => \amt[1]~input_o\,
	datad => \a[18]~input_o\,
	combout => \le_out[1][18]~61_combout\);

-- Location: LCCOMB_X4_Y65_N28
\le_out[3][9]~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][9]~168_combout\ = (\le_out[3][0]~41_combout\ & ((\amt[0]~input_o\ & ((\le_out[1][18]~61_combout\))) # (!\amt[0]~input_o\ & (\le_out[1][17]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[1][17]~29_combout\,
	datab => \amt[0]~input_o\,
	datac => \le_out[3][0]~41_combout\,
	datad => \le_out[1][18]~61_combout\,
	combout => \le_out[3][9]~168_combout\);

-- Location: LCCOMB_X5_Y68_N8
\le_out[3][9]~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][9]~169_combout\ = (\le_out[3][9]~167_combout\) # ((\le_out[3][9]~168_combout\) # ((\le_out[1][21]~64_combout\ & \le_out[3][0]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[1][21]~64_combout\,
	datab => \le_out[3][9]~167_combout\,
	datac => \le_out[3][9]~168_combout\,
	datad => \le_out[3][0]~42_combout\,
	combout => \le_out[3][9]~169_combout\);

-- Location: LCCOMB_X3_Y66_N18
\le_out[1][1]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][1]~70_combout\ = (\amt[0]~input_o\ & ((\le_out[1][2]~69_combout\))) # (!\amt[0]~input_o\ & (\le_out[1][1]~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[1][1]~56_combout\,
	datac => \amt[0]~input_o\,
	datad => \le_out[1][2]~69_combout\,
	combout => \le_out[1][1]~70_combout\);

-- Location: LCCOMB_X4_Y68_N30
\le_out[3][25]~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][25]~165_combout\ = (\lar[1]~input_o\ & ((\amt[2]~input_o\ & (\le_out[1][5]~72_combout\)) # (!\amt[2]~input_o\ & ((\le_out[1][1]~70_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[1]~input_o\,
	datab => \amt[2]~input_o\,
	datac => \le_out[1][5]~72_combout\,
	datad => \le_out[1][1]~70_combout\,
	combout => \le_out[3][25]~165_combout\);

-- Location: LCCOMB_X4_Y68_N12
\le_out[3][25]~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][25]~164_combout\ = (!\amt[3]~input_o\ & ((\amt[2]~input_o\ & (\le_out[1][29]~67_combout\)) # (!\amt[2]~input_o\ & ((\le_out[1][25]~128_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datab => \le_out[1][29]~67_combout\,
	datac => \amt[3]~input_o\,
	datad => \le_out[1][25]~128_combout\,
	combout => \le_out[3][25]~164_combout\);

-- Location: LCCOMB_X4_Y68_N16
\le_out[3][25]~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][25]~166_combout\ = (\le_out[3][25]~164_combout\) # ((\amt[3]~input_o\ & ((\le_out[1][30]~90_combout\) # (\le_out[3][25]~165_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[1][30]~90_combout\,
	datab => \amt[3]~input_o\,
	datac => \le_out[3][25]~165_combout\,
	datad => \le_out[3][25]~164_combout\,
	combout => \le_out[3][25]~166_combout\);

-- Location: LCCOMB_X5_Y68_N2
\le_out~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out~170_combout\ = (\amt[4]~input_o\ & ((\le_out[3][25]~166_combout\))) # (!\amt[4]~input_o\ & (\le_out[3][9]~169_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \le_out[3][9]~169_combout\,
	datac => \le_out[3][25]~166_combout\,
	combout => \le_out~170_combout\);

-- Location: LCCOMB_X5_Y65_N10
\le_out[3][26]~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][26]~174_combout\ = (!\amt[3]~input_o\ & ((\amt[2]~input_o\ & ((\le_out[1][30]~91_combout\))) # (!\amt[2]~input_o\ & (\le_out[1][26]~136_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datab => \le_out[1][26]~136_combout\,
	datac => \amt[3]~input_o\,
	datad => \le_out[1][30]~91_combout\,
	combout => \le_out[3][26]~174_combout\);

-- Location: LCCOMB_X3_Y68_N4
\le_out[3][24]~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][24]~158_combout\ = (\amt[3]~input_o\ & \lar[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \amt[3]~input_o\,
	datad => \lar[1]~input_o\,
	combout => \le_out[3][24]~158_combout\);

-- Location: LCCOMB_X3_Y67_N16
\le_out[3][26]~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][26]~175_combout\ = (\le_out[3][24]~158_combout\ & ((\amt[2]~input_o\ & (\le_out[1][6]~141_combout\)) # (!\amt[2]~input_o\ & ((\le_out[1][2]~101_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datab => \le_out[1][6]~141_combout\,
	datac => \le_out[3][24]~158_combout\,
	datad => \le_out[1][2]~101_combout\,
	combout => \le_out[3][26]~175_combout\);

-- Location: LCCOMB_X2_Y65_N16
\le_out[3][26]~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][26]~176_combout\ = (\le_out[3][24]~157_combout\) # (\le_out[3][26]~175_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \le_out[3][24]~157_combout\,
	datad => \le_out[3][26]~175_combout\,
	combout => \le_out[3][26]~176_combout\);

-- Location: LCCOMB_X3_Y65_N26
\le_out[3][10]~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][10]~171_combout\ = (\le_out[3][0]~32_combout\ & ((\le_out[1][10]~96_combout\) # ((\le_out[1][14]~98_combout\ & \le_out[3][0]~33_combout\)))) # (!\le_out[3][0]~32_combout\ & (((\le_out[1][14]~98_combout\ & \le_out[3][0]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[3][0]~32_combout\,
	datab => \le_out[1][10]~96_combout\,
	datac => \le_out[1][14]~98_combout\,
	datad => \le_out[3][0]~33_combout\,
	combout => \le_out[3][10]~171_combout\);

-- Location: LCCOMB_X4_Y65_N14
\le_out[3][10]~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][10]~172_combout\ = (\le_out[3][0]~41_combout\ & ((\amt[0]~input_o\ & (\le_out[1][19]~84_combout\)) # (!\amt[0]~input_o\ & ((\le_out[1][18]~61_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[1][19]~84_combout\,
	datab => \amt[0]~input_o\,
	datac => \le_out[3][0]~41_combout\,
	datad => \le_out[1][18]~61_combout\,
	combout => \le_out[3][10]~172_combout\);

-- Location: LCCOMB_X5_Y65_N8
\le_out[3][10]~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][10]~173_combout\ = (\le_out[3][10]~171_combout\) # ((\le_out[3][10]~172_combout\) # ((\le_out[1][22]~83_combout\ & \le_out[3][0]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[1][22]~83_combout\,
	datab => \le_out[3][10]~171_combout\,
	datac => \le_out[3][0]~42_combout\,
	datad => \le_out[3][10]~172_combout\,
	combout => \le_out[3][10]~173_combout\);

-- Location: LCCOMB_X2_Y65_N2
\le_out~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out~177_combout\ = (\amt[4]~input_o\ & ((\le_out[3][26]~174_combout\) # ((\le_out[3][26]~176_combout\)))) # (!\amt[4]~input_o\ & (((\le_out[3][10]~173_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[3][26]~174_combout\,
	datab => \le_out[3][26]~176_combout\,
	datac => \amt[4]~input_o\,
	datad => \le_out[3][10]~173_combout\,
	combout => \le_out~177_combout\);

-- Location: LCCOMB_X3_Y66_N20
\le_out[1][3]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][3]~112_combout\ = (\amt[0]~input_o\ & (\le_out[1][4]~46_combout\)) # (!\amt[0]~input_o\ & ((\le_out[1][3]~100_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[1][4]~46_combout\,
	datac => \amt[0]~input_o\,
	datad => \le_out[1][3]~100_combout\,
	combout => \le_out[1][3]~112_combout\);

-- Location: LCCOMB_X3_Y67_N2
\le_out[3][27]~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][27]~179_combout\ = (\lar[1]~input_o\ & ((\amt[2]~input_o\ & (\le_out[1][7]~113_combout\)) # (!\amt[2]~input_o\ & ((\le_out[1][3]~112_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datab => \lar[1]~input_o\,
	datac => \le_out[1][7]~113_combout\,
	datad => \le_out[1][3]~112_combout\,
	combout => \le_out[3][27]~179_combout\);

-- Location: LCCOMB_X4_Y66_N22
\le_out[3][27]~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][27]~180_combout\ = (\le_out[3][27]~178_combout\) # ((\amt[3]~input_o\ & ((\le_out[3][27]~179_combout\) # (\le_out[1][30]~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[3][27]~178_combout\,
	datab => \le_out[3][27]~179_combout\,
	datac => \le_out[1][30]~90_combout\,
	datad => \amt[3]~input_o\,
	combout => \le_out[3][27]~180_combout\);

-- Location: IOIBUF_X0_Y62_N15
\a[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(24),
	o => \a[24]~input_o\);

-- Location: LCCOMB_X5_Y66_N14
\le_out[1][24]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[1][24]~39_combout\ = (\amt[1]~input_o\ & ((\a[26]~input_o\))) # (!\amt[1]~input_o\ & (\a[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datab => \a[24]~input_o\,
	datac => \a[26]~input_o\,
	combout => \le_out[1][24]~39_combout\);

-- Location: LCCOMB_X4_Y67_N28
\le_out[3][11]~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][11]~182_combout\ = (\le_out[3][0]~42_combout\ & ((\amt[0]~input_o\ & ((\le_out[1][24]~39_combout\))) # (!\amt[0]~input_o\ & (\le_out[1][23]~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[3][0]~42_combout\,
	datab => \le_out[1][23]~82_combout\,
	datac => \amt[0]~input_o\,
	datad => \le_out[1][24]~39_combout\,
	combout => \le_out[3][11]~182_combout\);

-- Location: LCCOMB_X4_Y67_N22
\le_out[3][11]~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][11]~183_combout\ = (\le_out[3][11]~181_combout\) # ((\le_out[3][11]~182_combout\) # ((\le_out[1][19]~106_combout\ & \le_out[3][0]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[3][11]~181_combout\,
	datab => \le_out[1][19]~106_combout\,
	datac => \le_out[3][0]~41_combout\,
	datad => \le_out[3][11]~182_combout\,
	combout => \le_out[3][11]~183_combout\);

-- Location: LCCOMB_X4_Y66_N8
\le_out~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out~184_combout\ = (\amt[4]~input_o\ & (\le_out[3][27]~180_combout\)) # (!\amt[4]~input_o\ & ((\le_out[3][11]~183_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[3][27]~180_combout\,
	datac => \amt[4]~input_o\,
	datad => \le_out[3][11]~183_combout\,
	combout => \le_out~184_combout\);

-- Location: LCCOMB_X3_Y68_N20
\le_out[3][12]~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][12]~189_combout\ = (\le_out[1][20]~28_combout\ & ((\le_out[3][0]~41_combout\) # ((\le_out[3][0]~42_combout\ & \le_out[1][24]~40_combout\)))) # (!\le_out[1][20]~28_combout\ & (\le_out[3][0]~42_combout\ & (\le_out[1][24]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[1][20]~28_combout\,
	datab => \le_out[3][0]~42_combout\,
	datac => \le_out[1][24]~40_combout\,
	datad => \le_out[3][0]~41_combout\,
	combout => \le_out[3][12]~189_combout\);

-- Location: LCCOMB_X3_Y65_N28
\le_out[3][12]~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][12]~188_combout\ = (\le_out[3][0]~32_combout\ & ((\le_out[1][12]~53_combout\) # ((\le_out[1][16]~31_combout\ & \le_out[3][0]~33_combout\)))) # (!\le_out[3][0]~32_combout\ & (\le_out[1][16]~31_combout\ & ((\le_out[3][0]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[3][0]~32_combout\,
	datab => \le_out[1][16]~31_combout\,
	datac => \le_out[1][12]~53_combout\,
	datad => \le_out[3][0]~33_combout\,
	combout => \le_out[3][12]~188_combout\);

-- Location: LCCOMB_X3_Y68_N0
\le_out[3][28]~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][28]~186_combout\ = (\le_out[3][28]~185_combout\) # ((\le_out[1][30]~90_combout\) # ((\le_out[1][8]~50_combout\ & \le_out[2][28]~120_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[3][28]~185_combout\,
	datab => \le_out[1][8]~50_combout\,
	datac => \le_out[1][30]~90_combout\,
	datad => \le_out[2][28]~120_combout\,
	combout => \le_out[3][28]~186_combout\);

-- Location: LCCOMB_X3_Y68_N10
\le_out[3][28]~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][28]~187_combout\ = (\amt[3]~input_o\ & ((\le_out[3][28]~186_combout\))) # (!\amt[3]~input_o\ & (\le_out[2][28]~122_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[2][28]~122_combout\,
	datac => \amt[3]~input_o\,
	datad => \le_out[3][28]~186_combout\,
	combout => \le_out[3][28]~187_combout\);

-- Location: LCCOMB_X3_Y68_N22
\le_out~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out~190_combout\ = (\amt[4]~input_o\ & (((\le_out[3][28]~187_combout\)))) # (!\amt[4]~input_o\ & ((\le_out[3][12]~189_combout\) # ((\le_out[3][12]~188_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \le_out[3][12]~189_combout\,
	datac => \le_out[3][12]~188_combout\,
	datad => \le_out[3][28]~187_combout\,
	combout => \le_out~190_combout\);

-- Location: LCCOMB_X4_Y68_N18
\le_out[3][29]~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][29]~191_combout\ = (\lar[1]~input_o\ & ((\amt[2]~input_o\ & (\le_out[1][9]~75_combout\)) # (!\amt[2]~input_o\ & ((\le_out[1][5]~72_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[1]~input_o\,
	datab => \le_out[1][9]~75_combout\,
	datac => \le_out[1][5]~72_combout\,
	datad => \amt[2]~input_o\,
	combout => \le_out[3][29]~191_combout\);

-- Location: LCCOMB_X4_Y68_N4
\le_out[3][29]~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][29]~192_combout\ = (\amt[3]~input_o\ & ((\le_out[1][30]~90_combout\) # ((\le_out[3][29]~191_combout\)))) # (!\amt[3]~input_o\ & (((\le_out[2][29]~131_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[1][30]~90_combout\,
	datab => \le_out[3][29]~191_combout\,
	datac => \amt[3]~input_o\,
	datad => \le_out[2][29]~131_combout\,
	combout => \le_out[3][29]~192_combout\);

-- Location: LCCOMB_X5_Y65_N4
\le_out[3][13]~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][13]~194_combout\ = (\le_out[3][0]~42_combout\ & ((\amt[0]~input_o\ & (\le_out[1][26]~59_combout\)) # (!\amt[0]~input_o\ & ((\le_out[1][25]~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[3][0]~42_combout\,
	datab => \amt[0]~input_o\,
	datac => \le_out[1][26]~59_combout\,
	datad => \le_out[1][25]~38_combout\,
	combout => \le_out[3][13]~194_combout\);

-- Location: LCCOMB_X5_Y68_N28
\le_out[3][13]~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][13]~193_combout\ = (\le_out[3][0]~32_combout\ & ((\le_out[1][13]~77_combout\) # ((\le_out[1][17]~62_combout\ & \le_out[3][0]~33_combout\)))) # (!\le_out[3][0]~32_combout\ & (((\le_out[1][17]~62_combout\ & \le_out[3][0]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[3][0]~32_combout\,
	datab => \le_out[1][13]~77_combout\,
	datac => \le_out[1][17]~62_combout\,
	datad => \le_out[3][0]~33_combout\,
	combout => \le_out[3][13]~193_combout\);

-- Location: LCCOMB_X5_Y68_N30
\le_out[3][13]~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][13]~195_combout\ = (\le_out[3][13]~194_combout\) # ((\le_out[3][13]~193_combout\) # ((\le_out[3][0]~41_combout\ & \le_out[1][21]~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[3][0]~41_combout\,
	datab => \le_out[3][13]~194_combout\,
	datac => \le_out[1][21]~64_combout\,
	datad => \le_out[3][13]~193_combout\,
	combout => \le_out[3][13]~195_combout\);

-- Location: LCCOMB_X5_Y67_N12
\le_out~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out~196_combout\ = (\amt[4]~input_o\ & (\le_out[3][29]~192_combout\)) # (!\amt[4]~input_o\ & ((\le_out[3][13]~195_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \le_out[3][29]~192_combout\,
	datac => \le_out[3][13]~195_combout\,
	combout => \le_out~196_combout\);

-- Location: LCCOMB_X3_Y67_N30
\le_out[3][30]~247\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][30]~247_combout\ = (\lar[1]~input_o\ & ((\amt[2]~input_o\ & ((\le_out[1][10]~96_combout\))) # (!\amt[2]~input_o\ & (\le_out[1][6]~141_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datab => \le_out[1][6]~141_combout\,
	datac => \lar[1]~input_o\,
	datad => \le_out[1][10]~96_combout\,
	combout => \le_out[3][30]~247_combout\);

-- Location: LCCOMB_X2_Y66_N10
\le_out[3][30]~248\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][30]~248_combout\ = (\amt[3]~input_o\ & (((\le_out[3][30]~247_combout\) # (\le_out[1][30]~90_combout\)))) # (!\amt[3]~input_o\ & (\le_out[2][30]~139_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datab => \le_out[2][30]~139_combout\,
	datac => \le_out[3][30]~247_combout\,
	datad => \le_out[1][30]~90_combout\,
	combout => \le_out[3][30]~248_combout\);

-- Location: LCCOMB_X3_Y65_N14
\le_out[3][14]~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][14]~197_combout\ = (\le_out[3][0]~32_combout\ & ((\le_out[1][14]~98_combout\) # ((\le_out[1][18]~85_combout\ & \le_out[3][0]~33_combout\)))) # (!\le_out[3][0]~32_combout\ & (\le_out[1][18]~85_combout\ & ((\le_out[3][0]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[3][0]~32_combout\,
	datab => \le_out[1][18]~85_combout\,
	datac => \le_out[1][14]~98_combout\,
	datad => \le_out[3][0]~33_combout\,
	combout => \le_out[3][14]~197_combout\);

-- Location: LCCOMB_X5_Y65_N22
\le_out[3][14]~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][14]~198_combout\ = (\amt[3]~input_o\ & ((\amt[2]~input_o\ & ((\le_out[1][26]~136_combout\))) # (!\amt[2]~input_o\ & (\le_out[1][22]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[1][22]~83_combout\,
	datab => \amt[3]~input_o\,
	datac => \amt[2]~input_o\,
	datad => \le_out[1][26]~136_combout\,
	combout => \le_out[3][14]~198_combout\);

-- Location: LCCOMB_X2_Y66_N14
\le_out~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out~199_combout\ = (\amt[4]~input_o\ & (\le_out[3][30]~248_combout\)) # (!\amt[4]~input_o\ & (((\le_out[3][14]~197_combout\) # (\le_out[3][14]~198_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[3][30]~248_combout\,
	datab => \le_out[3][14]~197_combout\,
	datac => \amt[4]~input_o\,
	datad => \le_out[3][14]~198_combout\,
	combout => \le_out~199_combout\);

-- Location: LCCOMB_X3_Y67_N28
\le_out[3][31]~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][31]~200_combout\ = (\lar[1]~input_o\ & ((\amt[2]~input_o\ & ((\le_out[1][11]~152_combout\))) # (!\amt[2]~input_o\ & (\le_out[1][7]~113_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datab => \lar[1]~input_o\,
	datac => \le_out[1][7]~113_combout\,
	datad => \le_out[1][11]~152_combout\,
	combout => \le_out[3][31]~200_combout\);

-- Location: LCCOMB_X4_Y66_N18
\le_out[3][31]~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][31]~201_combout\ = (\amt[3]~input_o\ & (((\le_out[3][31]~200_combout\) # (\le_out[1][30]~90_combout\)))) # (!\amt[3]~input_o\ & (\le_out[2][31]~150_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[2][31]~150_combout\,
	datab => \le_out[3][31]~200_combout\,
	datac => \le_out[1][30]~90_combout\,
	datad => \amt[3]~input_o\,
	combout => \le_out[3][31]~201_combout\);

-- Location: LCCOMB_X4_Y67_N10
\le_out[3][15]~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][15]~203_combout\ = (\le_out[3][0]~41_combout\ & ((\amt[0]~input_o\ & (\le_out[1][24]~39_combout\)) # (!\amt[0]~input_o\ & ((\le_out[1][23]~82_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[1][24]~39_combout\,
	datab => \amt[0]~input_o\,
	datac => \le_out[3][0]~41_combout\,
	datad => \le_out[1][23]~82_combout\,
	combout => \le_out[3][15]~203_combout\);

-- Location: LCCOMB_X4_Y67_N16
\le_out[3][15]~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][15]~202_combout\ = (\le_out[3][0]~33_combout\ & ((\le_out[1][19]~106_combout\) # ((\le_out[1][15]~116_combout\ & \le_out[3][0]~32_combout\)))) # (!\le_out[3][0]~33_combout\ & (\le_out[1][15]~116_combout\ & ((\le_out[3][0]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[3][0]~33_combout\,
	datab => \le_out[1][15]~116_combout\,
	datac => \le_out[1][19]~106_combout\,
	datad => \le_out[3][0]~32_combout\,
	combout => \le_out[3][15]~202_combout\);

-- Location: LCCOMB_X4_Y67_N20
\le_out[3][15]~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][15]~204_combout\ = (\le_out[3][15]~203_combout\) # ((\le_out[3][15]~202_combout\) # ((\le_out[3][0]~42_combout\ & \le_out[1][27]~105_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[3][0]~42_combout\,
	datab => \le_out[3][15]~203_combout\,
	datac => \le_out[1][27]~105_combout\,
	datad => \le_out[3][15]~202_combout\,
	combout => \le_out[3][15]~204_combout\);

-- Location: LCCOMB_X5_Y67_N14
\le_out~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out~205_combout\ = (\amt[4]~input_o\ & (\le_out[3][31]~201_combout\)) # (!\amt[4]~input_o\ & ((\le_out[3][15]~204_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \le_out[3][31]~201_combout\,
	datac => \amt[4]~input_o\,
	datad => \le_out[3][15]~204_combout\,
	combout => \le_out~205_combout\);

-- Location: LCCOMB_X5_Y67_N16
\le_out[3][16]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][16]~44_combout\ = (\le_out[3][16]~34_combout\) # (\le_out[3][16]~43_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \le_out[3][16]~34_combout\,
	datad => \le_out[3][16]~43_combout\,
	combout => \le_out[3][16]~44_combout\);

-- Location: LCCOMB_X5_Y67_N24
\le_out~240\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out~240_combout\ = (\lar[1]~input_o\ & (\amt[4]~input_o\ & \le_out[3][0]~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[1]~input_o\,
	datac => \amt[4]~input_o\,
	datad => \le_out[3][0]~58_combout\,
	combout => \le_out~240_combout\);

-- Location: LCCOMB_X5_Y67_N0
\le_out~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out~206_combout\ = (!\lar[1]~input_o\ & (\le_out[3][31]~201_combout\ & (\amt[4]~input_o\ & \lar[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[1]~input_o\,
	datab => \le_out[3][31]~201_combout\,
	datac => \amt[4]~input_o\,
	datad => \lar[0]~input_o\,
	combout => \le_out~206_combout\);

-- Location: LCCOMB_X5_Y67_N10
\le_out~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out~208_combout\ = (\le_out~240_combout\) # ((\le_out~206_combout\) # ((\le_out[3][16]~44_combout\ & !\amt[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[3][16]~44_combout\,
	datab => \le_out~240_combout\,
	datac => \amt[4]~input_o\,
	datad => \le_out~206_combout\,
	combout => \le_out~208_combout\);

-- Location: LCCOMB_X5_Y68_N20
\le_out~241\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out~241_combout\ = (\amt[4]~input_o\ & (\lar[1]~input_o\ & ((\le_out[3][1]~78_combout\) # (\le_out[3][1]~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \le_out[3][1]~78_combout\,
	datac => \lar[1]~input_o\,
	datad => \le_out[3][1]~73_combout\,
	combout => \le_out~241_combout\);

-- Location: LCCOMB_X5_Y68_N0
\le_out~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out~209_combout\ = (\le_out~206_combout\) # ((\le_out~241_combout\) # ((!\amt[4]~input_o\ & \le_out[3][17]~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \le_out~206_combout\,
	datac => \le_out[3][17]~68_combout\,
	datad => \le_out~241_combout\,
	combout => \le_out~209_combout\);

-- Location: LCCOMB_X2_Y65_N12
\le_out~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out~210_combout\ = (!\amt[4]~input_o\ & \le_out[3][18]~92_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \amt[4]~input_o\,
	datad => \le_out[3][18]~92_combout\,
	combout => \le_out~210_combout\);

-- Location: LCCOMB_X4_Y68_N14
\le_out~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out~207_combout\ = (\amt[4]~input_o\ & \lar[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[4]~input_o\,
	datac => \lar[1]~input_o\,
	combout => \le_out~207_combout\);

-- Location: LCCOMB_X2_Y65_N14
\le_out~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out~211_combout\ = (\le_out~210_combout\) # ((\le_out~206_combout\) # ((\le_out~207_combout\ & \le_out[3][2]~102_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out~210_combout\,
	datab => \le_out~207_combout\,
	datac => \le_out[3][2]~102_combout\,
	datad => \le_out~206_combout\,
	combout => \le_out~211_combout\);

-- Location: LCCOMB_X5_Y67_N18
\le_out~242\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out~242_combout\ = (\lar[1]~input_o\ & (\le_out[3][3]~117_combout\ & \amt[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[1]~input_o\,
	datab => \le_out[3][3]~117_combout\,
	datac => \amt[4]~input_o\,
	combout => \le_out~242_combout\);

-- Location: LCCOMB_X5_Y67_N4
\le_out~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out~212_combout\ = (\le_out~242_combout\) # ((\le_out~206_combout\) # ((\le_out[3][19]~111_combout\ & !\amt[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[3][19]~111_combout\,
	datab => \le_out~242_combout\,
	datac => \amt[4]~input_o\,
	datad => \le_out~206_combout\,
	combout => \le_out~212_combout\);

-- Location: LCCOMB_X2_Y65_N28
\le_out~243\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out~243_combout\ = (\amt[4]~input_o\ & (\lar[1]~input_o\ & ((\le_out[3][4]~125_combout\) # (\le_out[3][4]~126_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[3][4]~125_combout\,
	datab => \amt[4]~input_o\,
	datac => \le_out[3][4]~126_combout\,
	datad => \lar[1]~input_o\,
	combout => \le_out~243_combout\);

-- Location: LCCOMB_X2_Y65_N24
\le_out~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out~213_combout\ = (\le_out~243_combout\) # ((\le_out~206_combout\) # ((\le_out[3][20]~123_combout\ & !\amt[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out~243_combout\,
	datab => \le_out[3][20]~123_combout\,
	datac => \amt[4]~input_o\,
	datad => \le_out~206_combout\,
	combout => \le_out~213_combout\);

-- Location: LCCOMB_X4_Y68_N10
\le_out[3][5]~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][5]~135_combout\ = (\le_out[3][5]~133_combout\) # (\le_out[3][5]~134_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \le_out[3][5]~133_combout\,
	datad => \le_out[3][5]~134_combout\,
	combout => \le_out[3][5]~135_combout\);

-- Location: LCCOMB_X4_Y68_N24
\le_out~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out~214_combout\ = (!\amt[4]~input_o\ & ((\le_out[3][21]~129_combout\) # ((\amt[3]~input_o\ & \le_out[2][29]~131_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datab => \amt[4]~input_o\,
	datac => \le_out[3][21]~129_combout\,
	datad => \le_out[2][29]~131_combout\,
	combout => \le_out~214_combout\);

-- Location: LCCOMB_X4_Y68_N2
\le_out~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out~215_combout\ = (\le_out~214_combout\) # ((\le_out~206_combout\) # ((\le_out[3][5]~135_combout\ & \le_out~207_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[3][5]~135_combout\,
	datab => \le_out~214_combout\,
	datac => \le_out~207_combout\,
	datad => \le_out~206_combout\,
	combout => \le_out~215_combout\);

-- Location: LCCOMB_X2_Y66_N20
\le_out[3][6]~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][6]~144_combout\ = (\le_out[3][6]~143_combout\) # (\le_out[3][6]~142_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[3][6]~143_combout\,
	datac => \le_out[3][6]~142_combout\,
	combout => \le_out[3][6]~144_combout\);

-- Location: LCCOMB_X2_Y66_N0
\le_out~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out~216_combout\ = (!\amt[4]~input_o\ & ((\le_out[3][22]~137_combout\) # ((\amt[3]~input_o\ & \le_out[2][30]~139_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datab => \le_out[2][30]~139_combout\,
	datac => \amt[4]~input_o\,
	datad => \le_out[3][22]~137_combout\,
	combout => \le_out~216_combout\);

-- Location: LCCOMB_X2_Y66_N18
\le_out~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out~217_combout\ = (\le_out~216_combout\) # ((\le_out~206_combout\) # ((\le_out[3][6]~144_combout\ & \le_out~207_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[3][6]~144_combout\,
	datab => \le_out~216_combout\,
	datac => \le_out~207_combout\,
	datad => \le_out~206_combout\,
	combout => \le_out~217_combout\);

-- Location: LCCOMB_X4_Y66_N16
\le_out[3][7]~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][7]~155_combout\ = (\le_out[3][7]~153_combout\) # (\le_out[3][7]~154_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \le_out[3][7]~153_combout\,
	datad => \le_out[3][7]~154_combout\,
	combout => \le_out[3][7]~155_combout\);

-- Location: LCCOMB_X4_Y66_N28
\le_out~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out~218_combout\ = (!\amt[4]~input_o\ & ((\le_out[3][23]~146_combout\) # ((\amt[3]~input_o\ & \le_out[2][31]~150_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \amt[3]~input_o\,
	datac => \le_out[3][23]~146_combout\,
	datad => \le_out[2][31]~150_combout\,
	combout => \le_out~218_combout\);

-- Location: LCCOMB_X4_Y66_N14
\le_out~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out~219_combout\ = (\le_out~218_combout\) # ((\le_out~206_combout\) # ((\le_out[3][7]~155_combout\ & \le_out~207_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[3][7]~155_combout\,
	datab => \le_out~218_combout\,
	datac => \le_out~207_combout\,
	datad => \le_out~206_combout\,
	combout => \le_out~219_combout\);

-- Location: LCCOMB_X2_Y65_N6
\le_out[3][8]~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][8]~163_combout\ = (\le_out[3][8]~161_combout\) # (\le_out[3][8]~162_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[3][8]~161_combout\,
	datad => \le_out[3][8]~162_combout\,
	combout => \le_out[3][8]~163_combout\);

-- Location: LCCOMB_X2_Y65_N18
\le_out~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out~220_combout\ = (!\amt[4]~input_o\ & ((\le_out[3][24]~159_combout\) # ((\le_out[3][24]~157_combout\) # (\le_out[3][24]~156_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[3][24]~159_combout\,
	datab => \amt[4]~input_o\,
	datac => \le_out[3][24]~157_combout\,
	datad => \le_out[3][24]~156_combout\,
	combout => \le_out~220_combout\);

-- Location: LCCOMB_X2_Y65_N4
\le_out~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out~221_combout\ = (\le_out~220_combout\) # ((\le_out~206_combout\) # ((\le_out[3][8]~163_combout\ & \le_out~207_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[3][8]~163_combout\,
	datab => \le_out~220_combout\,
	datac => \le_out~207_combout\,
	datad => \le_out~206_combout\,
	combout => \le_out~221_combout\);

-- Location: LCCOMB_X5_Y68_N6
\le_out~244\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out~244_combout\ = (\amt[4]~input_o\ & (\le_out[3][9]~169_combout\ & \lar[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \le_out[3][9]~169_combout\,
	datac => \lar[1]~input_o\,
	combout => \le_out~244_combout\);

-- Location: LCCOMB_X5_Y68_N26
\le_out~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out~222_combout\ = (\le_out~206_combout\) # ((\le_out~244_combout\) # ((!\amt[4]~input_o\ & \le_out[3][25]~166_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \le_out~206_combout\,
	datac => \le_out[3][25]~166_combout\,
	datad => \le_out~244_combout\,
	combout => \le_out~222_combout\);

-- Location: LCCOMB_X2_Y65_N22
\le_out~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out~223_combout\ = (!\amt[4]~input_o\ & ((\le_out[3][26]~175_combout\) # ((\le_out[3][24]~157_combout\) # (\le_out[3][26]~174_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[3][26]~175_combout\,
	datab => \amt[4]~input_o\,
	datac => \le_out[3][24]~157_combout\,
	datad => \le_out[3][26]~174_combout\,
	combout => \le_out~223_combout\);

-- Location: LCCOMB_X2_Y65_N0
\le_out~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out~224_combout\ = (\le_out~223_combout\) # ((\le_out~206_combout\) # ((\le_out[3][10]~173_combout\ & \le_out~207_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[3][10]~173_combout\,
	datab => \le_out~207_combout\,
	datac => \le_out~223_combout\,
	datad => \le_out~206_combout\,
	combout => \le_out~224_combout\);

-- Location: LCCOMB_X4_Y66_N0
\le_out[3][27]~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out[3][27]~225_combout\ = (\le_out[3][27]~179_combout\) # ((!\lar[1]~input_o\ & (\lar[0]~input_o\ & \a[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[1]~input_o\,
	datab => \le_out[3][27]~179_combout\,
	datac => \lar[0]~input_o\,
	datad => \a[31]~input_o\,
	combout => \le_out[3][27]~225_combout\);

-- Location: LCCOMB_X4_Y66_N2
\le_out~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out~226_combout\ = (!\amt[4]~input_o\ & ((\le_out[3][27]~178_combout\) # ((\le_out[3][27]~225_combout\ & \amt[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[3][27]~178_combout\,
	datab => \le_out[3][27]~225_combout\,
	datac => \amt[4]~input_o\,
	datad => \amt[3]~input_o\,
	combout => \le_out~226_combout\);

-- Location: LCCOMB_X4_Y66_N20
\le_out~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out~227_combout\ = (\le_out~226_combout\) # ((\le_out~206_combout\) # ((\le_out[3][11]~183_combout\ & \le_out~207_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[3][11]~183_combout\,
	datab => \le_out~226_combout\,
	datac => \le_out~207_combout\,
	datad => \le_out~206_combout\,
	combout => \le_out~227_combout\);

-- Location: LCCOMB_X3_Y68_N26
\le_out~245\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out~245_combout\ = (\amt[4]~input_o\ & (\lar[1]~input_o\ & ((\le_out[3][12]~188_combout\) # (\le_out[3][12]~189_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \lar[1]~input_o\,
	datac => \le_out[3][12]~188_combout\,
	datad => \le_out[3][12]~189_combout\,
	combout => \le_out~245_combout\);

-- Location: LCCOMB_X3_Y68_N24
\le_out~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out~228_combout\ = (\le_out~206_combout\) # ((\le_out~245_combout\) # ((!\amt[4]~input_o\ & \le_out[3][28]~187_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \le_out~206_combout\,
	datac => \le_out~245_combout\,
	datad => \le_out[3][28]~187_combout\,
	combout => \le_out~228_combout\);

-- Location: LCCOMB_X5_Y67_N22
\le_out~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out~229_combout\ = (\lar[1]~input_o\ & (((\le_out[3][13]~195_combout\)))) # (!\lar[1]~input_o\ & (\le_out[3][31]~201_combout\ & ((\lar[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[1]~input_o\,
	datab => \le_out[3][31]~201_combout\,
	datac => \le_out[3][13]~195_combout\,
	datad => \lar[0]~input_o\,
	combout => \le_out~229_combout\);

-- Location: LCCOMB_X5_Y67_N8
\le_out~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out~230_combout\ = (\amt[4]~input_o\ & (\le_out~229_combout\)) # (!\amt[4]~input_o\ & ((\le_out[3][29]~192_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out~229_combout\,
	datab => \le_out[3][29]~192_combout\,
	datac => \amt[4]~input_o\,
	combout => \le_out~230_combout\);

-- Location: LCCOMB_X5_Y67_N26
\le_out~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out~231_combout\ = (!\lar[1]~input_o\ & (\le_out[3][31]~201_combout\ & \lar[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[1]~input_o\,
	datab => \le_out[3][31]~201_combout\,
	datad => \lar[0]~input_o\,
	combout => \le_out~231_combout\);

-- Location: LCCOMB_X2_Y66_N12
\le_out~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out~232_combout\ = (\lar[1]~input_o\ & ((\le_out[3][14]~197_combout\) # (\le_out[3][14]~198_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \le_out[3][14]~197_combout\,
	datac => \lar[1]~input_o\,
	datad => \le_out[3][14]~198_combout\,
	combout => \le_out~232_combout\);

-- Location: LCCOMB_X2_Y66_N22
\le_out~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out~233_combout\ = (\amt[4]~input_o\ & (((\le_out~231_combout\) # (\le_out~232_combout\)))) # (!\amt[4]~input_o\ & (\le_out[3][30]~248_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le_out[3][30]~248_combout\,
	datab => \le_out~231_combout\,
	datac => \amt[4]~input_o\,
	datad => \le_out~232_combout\,
	combout => \le_out~233_combout\);

-- Location: LCCOMB_X5_Y67_N20
\le_out~246\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out~246_combout\ = (\amt[4]~input_o\ & (\lar[1]~input_o\ & ((\le_out[3][15]~204_combout\)))) # (!\amt[4]~input_o\ & (((\le_out[3][31]~201_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[1]~input_o\,
	datab => \le_out[3][31]~201_combout\,
	datac => \amt[4]~input_o\,
	datad => \le_out[3][15]~204_combout\,
	combout => \le_out~246_combout\);

-- Location: LCCOMB_X5_Y67_N28
\le_out~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \le_out~234_combout\ = (\le_out~246_combout\) # (\le_out~206_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \le_out~246_combout\,
	datad => \le_out~206_combout\,
	combout => \le_out~234_combout\);

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
END structure;


