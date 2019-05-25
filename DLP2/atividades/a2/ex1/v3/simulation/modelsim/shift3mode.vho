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

-- DATE "04/29/2019 00:29:27"

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
-- y[0]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_AD28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[4]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[6]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[7]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[8]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[9]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[10]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[11]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[12]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[13]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[14]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[15]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[16]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[17]	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[18]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[19]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[20]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[21]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[22]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[23]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[24]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[25]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[26]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[27]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[28]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[29]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[30]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[31]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[32]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[33]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[34]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[35]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[36]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[37]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[38]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[39]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[40]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[41]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[42]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[43]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[44]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[45]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[46]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[47]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[48]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[49]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[50]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[51]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[52]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[53]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[54]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[55]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[56]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[57]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[58]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[59]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[60]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[61]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[62]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[63]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- amt[2]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- amt[3]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[55]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[53]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- amt[1]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[54]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[52]	=>  Location: PIN_AH26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- amt[0]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[63]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[61]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[62]	=>  Location: PIN_D27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[60]	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[59]	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[57]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[58]	=>  Location: PIN_C27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[56]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[51]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[49]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[50]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[48]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[27]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[25]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[26]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[24]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[19]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[17]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[18]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[16]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[23]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[21]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[22]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[20]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[31]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[29]	=>  Location: PIN_AF27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[30]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[28]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- amt[4]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- amt[5]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[47]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[45]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[46]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[44]	=>  Location: PIN_AD22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[39]	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[37]	=>  Location: PIN_H26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[38]	=>  Location: PIN_D28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[36]	=>  Location: PIN_J23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[43]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[41]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[42]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[40]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[35]	=>  Location: PIN_J24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[33]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[34]	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[32]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_H23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_H24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[11]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[9]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[10]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[8]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[15]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[13]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[14]	=>  Location: PIN_AC21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[12]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_E27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lar[0]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lar[1]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \le1_out[44]~23_combout\ : std_logic;
SIGNAL \le1_out[8]~38_combout\ : std_logic;
SIGNAL \le1_out[0]~42_combout\ : std_logic;
SIGNAL \le3_out[1]~24_combout\ : std_logic;
SIGNAL \le1_out[62]~75_combout\ : std_logic;
SIGNAL \le3_out[18]~36_combout\ : std_logic;
SIGNAL \le3_out[2]~44_combout\ : std_logic;
SIGNAL \le3_out[5]~74_combout\ : std_logic;
SIGNAL \le2_out[63]~8_combout\ : std_logic;
SIGNAL \le3_out[10]~118_combout\ : std_logic;
SIGNAL \le3_out[58]~121_combout\ : std_logic;
SIGNAL \le1_out[2]~129_combout\ : std_logic;
SIGNAL \le3_out[58]~122_combout\ : std_logic;
SIGNAL \le3_out[58]~123_combout\ : std_logic;
SIGNAL \le3_out[11]~134_combout\ : std_logic;
SIGNAL \le4_out[54]~13_combout\ : std_logic;
SIGNAL \le3_out[60]~171_combout\ : std_logic;
SIGNAL \a[26]~input_o\ : std_logic;
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
SIGNAL \amt[4]~input_o\ : std_logic;
SIGNAL \a[24]~input_o\ : std_logic;
SIGNAL \amt[1]~input_o\ : std_logic;
SIGNAL \le1_out[24]~12_combout\ : std_logic;
SIGNAL \amt[0]~input_o\ : std_logic;
SIGNAL \a[25]~input_o\ : std_logic;
SIGNAL \a[27]~input_o\ : std_logic;
SIGNAL \le1_out[25]~11_combout\ : std_logic;
SIGNAL \le1_out[24]~13_combout\ : std_logic;
SIGNAL \amt[2]~input_o\ : std_logic;
SIGNAL \amt[3]~input_o\ : std_logic;
SIGNAL \le3_out[16]~11_combout\ : std_logic;
SIGNAL \a[28]~input_o\ : std_logic;
SIGNAL \a[30]~input_o\ : std_logic;
SIGNAL \le1_out[28]~20_combout\ : std_logic;
SIGNAL \a[31]~input_o\ : std_logic;
SIGNAL \a[29]~input_o\ : std_logic;
SIGNAL \le1_out[29]~19_combout\ : std_logic;
SIGNAL \le1_out[28]~21_combout\ : std_logic;
SIGNAL \a[20]~input_o\ : std_logic;
SIGNAL \a[22]~input_o\ : std_logic;
SIGNAL \le1_out[20]~18_combout\ : std_logic;
SIGNAL \a[23]~input_o\ : std_logic;
SIGNAL \a[21]~input_o\ : std_logic;
SIGNAL \le1_out[21]~17_combout\ : std_logic;
SIGNAL \le3_out[16]~12_combout\ : std_logic;
SIGNAL \le3_out[20]~13_combout\ : std_logic;
SIGNAL \le3_out[16]~14_combout\ : std_logic;
SIGNAL \a[50]~input_o\ : std_logic;
SIGNAL \a[48]~input_o\ : std_logic;
SIGNAL \le1_out[48]~9_combout\ : std_logic;
SIGNAL \a[51]~input_o\ : std_logic;
SIGNAL \a[49]~input_o\ : std_logic;
SIGNAL \le1_out[49]~8_combout\ : std_logic;
SIGNAL \le1_out[48]~10_combout\ : std_logic;
SIGNAL \a[59]~input_o\ : std_logic;
SIGNAL \a[57]~input_o\ : std_logic;
SIGNAL \le1_out[57]~5_combout\ : std_logic;
SIGNAL \a[58]~input_o\ : std_logic;
SIGNAL \a[56]~input_o\ : std_logic;
SIGNAL \le1_out[56]~6_combout\ : std_logic;
SIGNAL \le1_out[56]~7_combout\ : std_logic;
SIGNAL \le3_out[0]~7_combout\ : std_logic;
SIGNAL \a[61]~input_o\ : std_logic;
SIGNAL \a[63]~input_o\ : std_logic;
SIGNAL \le1_out[60]~2_combout\ : std_logic;
SIGNAL \a[62]~input_o\ : std_logic;
SIGNAL \a[60]~input_o\ : std_logic;
SIGNAL \le1_out[60]~3_combout\ : std_logic;
SIGNAL \le1_out[60]~4_combout\ : std_logic;
SIGNAL \le3_out[48]~8_combout\ : std_logic;
SIGNAL \a[55]~input_o\ : std_logic;
SIGNAL \a[53]~input_o\ : std_logic;
SIGNAL \le1_out[53]~0_combout\ : std_logic;
SIGNAL \a[54]~input_o\ : std_logic;
SIGNAL \a[52]~input_o\ : std_logic;
SIGNAL \le1_out[52]~1_combout\ : std_logic;
SIGNAL \le3_out[48]~5_combout\ : std_logic;
SIGNAL \le3_out[48]~10_combout\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \le1_out[1]~43_combout\ : std_logic;
SIGNAL \le1_out[0]~44_combout\ : std_logic;
SIGNAL \le3_out[0]~4_combout\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \le1_out[4]~35_combout\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \le1_out[5]~34_combout\ : std_logic;
SIGNAL \le3_out[0]~18_combout\ : std_logic;
SIGNAL \le3_out[0]~6_combout\ : std_logic;
SIGNAL \a[15]~input_o\ : std_logic;
SIGNAL \le1_out[13]~39_combout\ : std_logic;
SIGNAL \a[14]~input_o\ : std_logic;
SIGNAL \a[12]~input_o\ : std_logic;
SIGNAL \le1_out[12]~40_combout\ : std_logic;
SIGNAL \le1_out[12]~41_combout\ : std_logic;
SIGNAL \le3_out[0]~19_combout\ : std_logic;
SIGNAL \le3_out[0]~20_combout\ : std_logic;
SIGNAL \a[45]~input_o\ : std_logic;
SIGNAL \a[47]~input_o\ : std_logic;
SIGNAL \le1_out[45]~22_combout\ : std_logic;
SIGNAL \le1_out[44]~24_combout\ : std_logic;
SIGNAL \a[36]~input_o\ : std_logic;
SIGNAL \a[38]~input_o\ : std_logic;
SIGNAL \le1_out[36]~26_combout\ : std_logic;
SIGNAL \le1_out[36]~27_combout\ : std_logic;
SIGNAL \le3_out[36]~15_combout\ : std_logic;
SIGNAL \a[33]~input_o\ : std_logic;
SIGNAL \a[35]~input_o\ : std_logic;
SIGNAL \le1_out[33]~31_combout\ : std_logic;
SIGNAL \a[32]~input_o\ : std_logic;
SIGNAL \a[34]~input_o\ : std_logic;
SIGNAL \le1_out[32]~32_combout\ : std_logic;
SIGNAL \le1_out[32]~33_combout\ : std_logic;
SIGNAL \a[42]~input_o\ : std_logic;
SIGNAL \a[40]~input_o\ : std_logic;
SIGNAL \le1_out[40]~29_combout\ : std_logic;
SIGNAL \a[41]~input_o\ : std_logic;
SIGNAL \a[43]~input_o\ : std_logic;
SIGNAL \le1_out[41]~28_combout\ : std_logic;
SIGNAL \le1_out[40]~30_combout\ : std_logic;
SIGNAL \le3_out[32]~16_combout\ : std_logic;
SIGNAL \le3_out[32]~17_combout\ : std_logic;
SIGNAL \le5_out~2_combout\ : std_logic;
SIGNAL \le5_out~3_combout\ : std_logic;
SIGNAL \le1_out[34]~51_combout\ : std_logic;
SIGNAL \le1_out[33]~52_combout\ : std_logic;
SIGNAL \a[44]~input_o\ : std_logic;
SIGNAL \le1_out[42]~49_combout\ : std_logic;
SIGNAL \le1_out[41]~50_combout\ : std_logic;
SIGNAL \le3_out[33]~22_combout\ : std_logic;
SIGNAL \le3_out[33]~23_combout\ : std_logic;
SIGNAL \le1_out[50]~61_combout\ : std_logic;
SIGNAL \le1_out[49]~62_combout\ : std_logic;
SIGNAL \le1_out[54]~63_combout\ : std_logic;
SIGNAL \le1_out[53]~64_combout\ : std_logic;
SIGNAL \le3_out[49]~28_combout\ : std_logic;
SIGNAL \le1_out[58]~60_combout\ : std_logic;
SIGNAL \le3_out[49]~27_combout\ : std_logic;
SIGNAL \le3_out[49]~29_combout\ : std_logic;
SIGNAL \a[18]~input_o\ : std_logic;
SIGNAL \le1_out[18]~69_combout\ : std_logic;
SIGNAL \a[17]~input_o\ : std_logic;
SIGNAL \a[19]~input_o\ : std_logic;
SIGNAL \le1_out[17]~14_combout\ : std_logic;
SIGNAL \le1_out[17]~70_combout\ : std_logic;
SIGNAL \le3_out[17]~30_combout\ : std_logic;
SIGNAL \le1_out[30]~72_combout\ : std_logic;
SIGNAL \le1_out[29]~73_combout\ : std_logic;
SIGNAL \le1_out[22]~71_combout\ : std_logic;
SIGNAL \le3_out[17]~31_combout\ : std_logic;
SIGNAL \le3_out[21]~32_combout\ : std_logic;
SIGNAL \le3_out[17]~33_combout\ : std_logic;
SIGNAL \le5_out~4_combout\ : std_logic;
SIGNAL \a[10]~input_o\ : std_logic;
SIGNAL \le1_out[10]~58_combout\ : std_logic;
SIGNAL \a[9]~input_o\ : std_logic;
SIGNAL \a[11]~input_o\ : std_logic;
SIGNAL \le1_out[9]~36_combout\ : std_logic;
SIGNAL \le1_out[9]~59_combout\ : std_logic;
SIGNAL \a[16]~input_o\ : std_logic;
SIGNAL \le1_out[14]~57_combout\ : std_logic;
SIGNAL \le3_out[1]~25_combout\ : std_logic;
SIGNAL \le3_out[1]~26_combout\ : std_logic;
SIGNAL \le5_out~5_combout\ : std_logic;
SIGNAL \le1_out[59]~83_combout\ : std_logic;
SIGNAL \le1_out[58]~84_combout\ : std_logic;
SIGNAL \lar[1]~input_o\ : std_logic;
SIGNAL \le1_out[62]~77_combout\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \le1_out[62]~76_combout\ : std_logic;
SIGNAL \le1_out[62]~74_combout\ : std_logic;
SIGNAL \le1_out[62]~78_combout\ : std_logic;
SIGNAL \le3_out[50]~170_combout\ : std_logic;
SIGNAL \le1_out[50]~82_combout\ : std_logic;
SIGNAL \le1_out[55]~79_combout\ : std_logic;
SIGNAL \le1_out[54]~80_combout\ : std_logic;
SIGNAL \le3_out[50]~34_combout\ : std_logic;
SIGNAL \le3_out[50]~35_combout\ : std_logic;
SIGNAL \le1_out[7]~105_combout\ : std_logic;
SIGNAL \a[8]~input_o\ : std_logic;
SIGNAL \le1_out[6]~55_combout\ : std_logic;
SIGNAL \le1_out[6]~106_combout\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \le1_out[2]~53_combout\ : std_logic;
SIGNAL \le3_out[0]~9_combout\ : std_logic;
SIGNAL \le3_out[2]~43_combout\ : std_logic;
SIGNAL \le3_out[2]~45_combout\ : std_logic;
SIGNAL \amt[5]~input_o\ : std_logic;
SIGNAL \le1_out[34]~99_combout\ : std_logic;
SIGNAL \le1_out[43]~96_combout\ : std_logic;
SIGNAL \le1_out[42]~97_combout\ : std_logic;
SIGNAL \le3_out[34]~41_combout\ : std_logic;
SIGNAL \le1_out[38]~47_combout\ : std_logic;
SIGNAL \a[39]~input_o\ : std_logic;
SIGNAL \le1_out[39]~94_combout\ : std_logic;
SIGNAL \le1_out[38]~95_combout\ : std_logic;
SIGNAL \le1_out[47]~92_combout\ : std_logic;
SIGNAL \a[46]~input_o\ : std_logic;
SIGNAL \le1_out[46]~45_combout\ : std_logic;
SIGNAL \le1_out[46]~93_combout\ : std_logic;
SIGNAL \le3_out[38]~40_combout\ : std_logic;
SIGNAL \le3_out[34]~42_combout\ : std_logic;
SIGNAL \le5_out~6_combout\ : std_logic;
SIGNAL \le1_out[30]~91_combout\ : std_logic;
SIGNAL \le1_out[23]~89_combout\ : std_logic;
SIGNAL \le3_out[18]~37_combout\ : std_logic;
SIGNAL \le3_out[22]~38_combout\ : std_logic;
SIGNAL \le3_out[18]~39_combout\ : std_logic;
SIGNAL \le5_out~7_combout\ : std_logic;
SIGNAL \le1_out[19]~87_combout\ : std_logic;
SIGNAL \le1_out[19]~113_combout\ : std_logic;
SIGNAL \le1_out[27]~85_combout\ : std_logic;
SIGNAL \le1_out[27]~112_combout\ : std_logic;
SIGNAL \le3_out[19]~49_combout\ : std_logic;
SIGNAL \le3_out[19]~50_combout\ : std_logic;
SIGNAL \le1_out[31]~90_combout\ : std_logic;
SIGNAL \le1_out[31]~114_combout\ : std_logic;
SIGNAL \le3_out[23]~51_combout\ : std_logic;
SIGNAL \le3_out[19]~52_combout\ : std_logic;
SIGNAL \le1_out[63]~110_combout\ : std_logic;
SIGNAL \lar[0]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \le1_out[63]~109_combout\ : std_logic;
SIGNAL \le1_out[63]~111_combout\ : std_logic;
SIGNAL \le3_out[51]~46_combout\ : std_logic;
SIGNAL \le1_out[51]~81_combout\ : std_logic;
SIGNAL \le1_out[51]~108_combout\ : std_logic;
SIGNAL \le1_out[59]~107_combout\ : std_logic;
SIGNAL \le3_out[51]~47_combout\ : std_logic;
SIGNAL \le3_out[51]~48_combout\ : std_logic;
SIGNAL \a[13]~input_o\ : std_logic;
SIGNAL \le1_out[11]~101_combout\ : std_logic;
SIGNAL \le1_out[11]~121_combout\ : std_logic;
SIGNAL \le1_out[15]~103_combout\ : std_logic;
SIGNAL \le1_out[16]~15_combout\ : std_logic;
SIGNAL \le1_out[15]~122_combout\ : std_logic;
SIGNAL \le3_out[3]~57_combout\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \le1_out[3]~100_combout\ : std_logic;
SIGNAL \le1_out[3]~119_combout\ : std_logic;
SIGNAL \le1_out[8]~37_combout\ : std_logic;
SIGNAL \le1_out[7]~120_combout\ : std_logic;
SIGNAL \le3_out[3]~56_combout\ : std_logic;
SIGNAL \le3_out[3]~58_combout\ : std_logic;
SIGNAL \a[37]~input_o\ : std_logic;
SIGNAL \le1_out[35]~98_combout\ : std_logic;
SIGNAL \le1_out[35]~118_combout\ : std_logic;
SIGNAL \le1_out[43]~117_combout\ : std_logic;
SIGNAL \le3_out[35]~54_combout\ : std_logic;
SIGNAL \le1_out[47]~115_combout\ : std_logic;
SIGNAL \le1_out[39]~116_combout\ : std_logic;
SIGNAL \le3_out[39]~53_combout\ : std_logic;
SIGNAL \le3_out[35]~55_combout\ : std_logic;
SIGNAL \le5_out~9_combout\ : std_logic;
SIGNAL \le5_out~10_combout\ : std_logic;
SIGNAL \le3_out[40]~59_combout\ : std_logic;
SIGNAL \le3_out[36]~60_combout\ : std_logic;
SIGNAL \le1_out[52]~123_combout\ : std_logic;
SIGNAL \le3_out[52]~64_combout\ : std_logic;
SIGNAL \le1_out[62]~124_combout\ : std_logic;
SIGNAL \le2_out[60]~0_combout\ : std_logic;
SIGNAL \le2_out[60]~1_combout\ : std_logic;
SIGNAL \le2_out[60]~2_combout\ : std_logic;
SIGNAL \le3_out[52]~65_combout\ : std_logic;
SIGNAL \le5_out~11_combout\ : std_logic;
SIGNAL \le3_out[4]~61_combout\ : std_logic;
SIGNAL \le3_out[4]~62_combout\ : std_logic;
SIGNAL \le3_out[4]~63_combout\ : std_logic;
SIGNAL \le5_out~12_combout\ : std_logic;
SIGNAL \le1_out[5]~56_combout\ : std_logic;
SIGNAL \le1_out[13]~126_combout\ : std_logic;
SIGNAL \le3_out[5]~75_combout\ : std_logic;
SIGNAL \le3_out[5]~76_combout\ : std_logic;
SIGNAL \le1_out[26]~67_combout\ : std_logic;
SIGNAL \le1_out[25]~68_combout\ : std_logic;
SIGNAL \le3_out[25]~72_combout\ : std_logic;
SIGNAL \le3_out[21]~73_combout\ : std_logic;
SIGNAL \le5_out~14_combout\ : std_logic;
SIGNAL \le1_out[61]~65_combout\ : std_logic;
SIGNAL \le1_out[61]~66_combout\ : std_logic;
SIGNAL \le2_out[61]~3_combout\ : std_logic;
SIGNAL \le2_out[61]~4_combout\ : std_logic;
SIGNAL \le1_out[57]~125_combout\ : std_logic;
SIGNAL \le3_out[53]~68_combout\ : std_logic;
SIGNAL \le3_out[53]~69_combout\ : std_logic;
SIGNAL \le5_out~13_combout\ : std_logic;
SIGNAL \le5_out~15_combout\ : std_logic;
SIGNAL \le3_out[42]~77_combout\ : std_logic;
SIGNAL \le3_out[38]~78_combout\ : std_logic;
SIGNAL \le1_out[14]~104_combout\ : std_logic;
SIGNAL \le3_out[6]~80_combout\ : std_logic;
SIGNAL \le3_out[6]~79_combout\ : std_logic;
SIGNAL \le3_out[6]~81_combout\ : std_logic;
SIGNAL \le3_out[54]~82_combout\ : std_logic;
SIGNAL \le2_out[62]~5_combout\ : std_logic;
SIGNAL \le2_out[62]~6_combout\ : std_logic;
SIGNAL \le3_out[54]~83_combout\ : std_logic;
SIGNAL \le1_out[26]~86_combout\ : std_logic;
SIGNAL \le3_out[26]~84_combout\ : std_logic;
SIGNAL \le3_out[22]~85_combout\ : std_logic;
SIGNAL \le5_out~16_combout\ : std_logic;
SIGNAL \le5_out~17_combout\ : std_logic;
SIGNAL \le3_out[43]~86_combout\ : std_logic;
SIGNAL \le3_out[39]~87_combout\ : std_logic;
SIGNAL \le3_out[7]~89_combout\ : std_logic;
SIGNAL \le3_out[7]~88_combout\ : std_logic;
SIGNAL \le3_out[7]~90_combout\ : std_logic;
SIGNAL \le1_out[55]~127_combout\ : std_logic;
SIGNAL \le3_out[55]~91_combout\ : std_logic;
SIGNAL \le2_out[63]~7_combout\ : std_logic;
SIGNAL \le2_out[63]~9_combout\ : std_logic;
SIGNAL \le3_out[55]~92_combout\ : std_logic;
SIGNAL \le3_out[27]~93_combout\ : std_logic;
SIGNAL \le3_out[23]~94_combout\ : std_logic;
SIGNAL \le5_out~18_combout\ : std_logic;
SIGNAL \le5_out~19_combout\ : std_logic;
SIGNAL \le3_out[8]~98_combout\ : std_logic;
SIGNAL \le3_out[8]~97_combout\ : std_logic;
SIGNAL \le3_out[8]~99_combout\ : std_logic;
SIGNAL \le3_out[28]~104_combout\ : std_logic;
SIGNAL \le3_out[24]~66_combout\ : std_logic;
SIGNAL \le3_out[24]~105_combout\ : std_logic;
SIGNAL \le3_out[56]~101_combout\ : std_logic;
SIGNAL \le1_out[4]~128_combout\ : std_logic;
SIGNAL \le3_out[56]~102_combout\ : std_logic;
SIGNAL \le3_out[56]~100_combout\ : std_logic;
SIGNAL \le3_out[56]~103_combout\ : std_logic;
SIGNAL \le5_out~20_combout\ : std_logic;
SIGNAL \le3_out[44]~95_combout\ : std_logic;
SIGNAL \le3_out[40]~96_combout\ : std_logic;
SIGNAL \le5_out~21_combout\ : std_logic;
SIGNAL \le1_out[1]~54_combout\ : std_logic;
SIGNAL \le3_out[57]~107_combout\ : std_logic;
SIGNAL \le3_out[57]~106_combout\ : std_logic;
SIGNAL \le3_out[57]~108_combout\ : std_logic;
SIGNAL \le3_out[41]~70_combout\ : std_logic;
SIGNAL \le1_out[45]~46_combout\ : std_logic;
SIGNAL \le3_out[45]~109_combout\ : std_logic;
SIGNAL \le3_out[41]~110_combout\ : std_logic;
SIGNAL \le5_out~22_combout\ : std_logic;
SIGNAL \le3_out[9]~114_combout\ : std_logic;
SIGNAL \le3_out[9]~113_combout\ : std_logic;
SIGNAL \le3_out[9]~115_combout\ : std_logic;
SIGNAL \le1_out[37]~25_combout\ : std_logic;
SIGNAL \le1_out[37]~48_combout\ : std_logic;
SIGNAL \le3_out[29]~111_combout\ : std_logic;
SIGNAL \le3_out[25]~112_combout\ : std_logic;
SIGNAL \le5_out~23_combout\ : std_logic;
SIGNAL \le5_out~24_combout\ : std_logic;
SIGNAL \le3_out[46]~116_combout\ : std_logic;
SIGNAL \le3_out[42]~117_combout\ : std_logic;
SIGNAL \le3_out[30]~124_combout\ : std_logic;
SIGNAL \le3_out[26]~125_combout\ : std_logic;
SIGNAL \le5_out~25_combout\ : std_logic;
SIGNAL \le1_out[18]~88_combout\ : std_logic;
SIGNAL \le3_out[10]~119_combout\ : std_logic;
SIGNAL \le3_out[10]~120_combout\ : std_logic;
SIGNAL \le5_out~26_combout\ : std_logic;
SIGNAL \le3_out[59]~127_combout\ : std_logic;
SIGNAL \le3_out[59]~126_combout\ : std_logic;
SIGNAL \le3_out[59]~128_combout\ : std_logic;
SIGNAL \le3_out[47]~129_combout\ : std_logic;
SIGNAL \le3_out[43]~130_combout\ : std_logic;
SIGNAL \le5_out~27_combout\ : std_logic;
SIGNAL \le3_out[31]~131_combout\ : std_logic;
SIGNAL \le3_out[27]~132_combout\ : std_logic;
SIGNAL \le3_out[11]~133_combout\ : std_logic;
SIGNAL \le3_out[11]~135_combout\ : std_logic;
SIGNAL \le5_out~28_combout\ : std_logic;
SIGNAL \le5_out~29_combout\ : std_logic;
SIGNAL \le3_out[12]~139_combout\ : std_logic;
SIGNAL \le1_out[16]~16_combout\ : std_logic;
SIGNAL \le3_out[12]~138_combout\ : std_logic;
SIGNAL \le3_out[12]~140_combout\ : std_logic;
SIGNAL \le3_out[44]~136_combout\ : std_logic;
SIGNAL \le3_out[44]~137_combout\ : std_logic;
SIGNAL \le3_out[60]~141_combout\ : std_logic;
SIGNAL \le3_out[60]~142_combout\ : std_logic;
SIGNAL \le3_out[60]~143_combout\ : std_logic;
SIGNAL \le3_out[28]~144_combout\ : std_logic;
SIGNAL \le5_out~30_combout\ : std_logic;
SIGNAL \le5_out~31_combout\ : std_logic;
SIGNAL \le3_out[45]~147_combout\ : std_logic;
SIGNAL \le3_out[45]~148_combout\ : std_logic;
SIGNAL \le3_out[61]~145_combout\ : std_logic;
SIGNAL \le3_out[61]~146_combout\ : std_logic;
SIGNAL \le5_out~32_combout\ : std_logic;
SIGNAL \le3_out[13]~151_combout\ : std_logic;
SIGNAL \le3_out[13]~150_combout\ : std_logic;
SIGNAL \le3_out[13]~152_combout\ : std_logic;
SIGNAL \le3_out[29]~149_combout\ : std_logic;
SIGNAL \le5_out~33_combout\ : std_logic;
SIGNAL \le5_out~34_combout\ : std_logic;
SIGNAL \le3_out[30]~161_combout\ : std_logic;
SIGNAL \le3_out[62]~158_combout\ : std_logic;
SIGNAL \le1_out[10]~102_combout\ : std_logic;
SIGNAL \le3_out[62]~159_combout\ : std_logic;
SIGNAL \le3_out[62]~160_combout\ : std_logic;
SIGNAL \le5_out~35_combout\ : std_logic;
SIGNAL \le3_out[46]~153_combout\ : std_logic;
SIGNAL \le3_out[46]~154_combout\ : std_logic;
SIGNAL \le3_out[14]~155_combout\ : std_logic;
SIGNAL \le3_out[14]~156_combout\ : std_logic;
SIGNAL \le3_out[14]~157_combout\ : std_logic;
SIGNAL \le5_out~36_combout\ : std_logic;
SIGNAL \le3_out[15]~168_combout\ : std_logic;
SIGNAL \le3_out[15]~167_combout\ : std_logic;
SIGNAL \le3_out[15]~169_combout\ : std_logic;
SIGNAL \le3_out[31]~166_combout\ : std_logic;
SIGNAL \le5_out~38_combout\ : std_logic;
SIGNAL \le3_out[47]~164_combout\ : std_logic;
SIGNAL \le3_out[47]~165_combout\ : std_logic;
SIGNAL \le3_out[63]~162_combout\ : std_logic;
SIGNAL \le3_out[63]~163_combout\ : std_logic;
SIGNAL \le5_out~37_combout\ : std_logic;
SIGNAL \le5_out~39_combout\ : std_logic;
SIGNAL \le5_out~40_combout\ : std_logic;
SIGNAL \le4_out[48]~35_combout\ : std_logic;
SIGNAL \le4_out[48]~6_combout\ : std_logic;
SIGNAL \le5_out~41_combout\ : std_logic;
SIGNAL \le4_out[49]~7_combout\ : std_logic;
SIGNAL \le5_out~42_combout\ : std_logic;
SIGNAL \le5_out~43_combout\ : std_logic;
SIGNAL \le5_out~44_combout\ : std_logic;
SIGNAL \le4_out[50]~8_combout\ : std_logic;
SIGNAL \le4_out[50]~9_combout\ : std_logic;
SIGNAL \le5_out~45_combout\ : std_logic;
SIGNAL \le5_out~46_combout\ : std_logic;
SIGNAL \le4_out[51]~10_combout\ : std_logic;
SIGNAL \le5_out~47_combout\ : std_logic;
SIGNAL \le4_out[52]~11_combout\ : std_logic;
SIGNAL \le3_out[20]~67_combout\ : std_logic;
SIGNAL \le5_out~48_combout\ : std_logic;
SIGNAL \le5_out~49_combout\ : std_logic;
SIGNAL \le3_out[37]~21_combout\ : std_logic;
SIGNAL \le3_out[37]~71_combout\ : std_logic;
SIGNAL \le5_out~50_combout\ : std_logic;
SIGNAL \le4_out[53]~12_combout\ : std_logic;
SIGNAL \le5_out~51_combout\ : std_logic;
SIGNAL \le5_out~52_combout\ : std_logic;
SIGNAL \le4_out[54]~14_combout\ : std_logic;
SIGNAL \le5_out~53_combout\ : std_logic;
SIGNAL \le5_out~54_combout\ : std_logic;
SIGNAL \le4_out[55]~15_combout\ : std_logic;
SIGNAL \le5_out~55_combout\ : std_logic;
SIGNAL \le5_out~56_combout\ : std_logic;
SIGNAL \le4_out[56]~16_combout\ : std_logic;
SIGNAL \le4_out[56]~17_combout\ : std_logic;
SIGNAL \le5_out~57_combout\ : std_logic;
SIGNAL \le5_out~58_combout\ : std_logic;
SIGNAL \le4_out[57]~18_combout\ : std_logic;
SIGNAL \le4_out[57]~19_combout\ : std_logic;
SIGNAL \le5_out~59_combout\ : std_logic;
SIGNAL \le5_out~60_combout\ : std_logic;
SIGNAL \le4_out[58]~20_combout\ : std_logic;
SIGNAL \le5_out~61_combout\ : std_logic;
SIGNAL \le5_out~62_combout\ : std_logic;
SIGNAL \le4_out[59]~21_combout\ : std_logic;
SIGNAL \le4_out[59]~22_combout\ : std_logic;
SIGNAL \le5_out~63_combout\ : std_logic;
SIGNAL \le4_out[60]~23_combout\ : std_logic;
SIGNAL \le5_out~64_combout\ : std_logic;
SIGNAL \le5_out~65_combout\ : std_logic;
SIGNAL \le5_out~66_combout\ : std_logic;
SIGNAL \le4_out[61]~36_combout\ : std_logic;
SIGNAL \le4_out[61]~24_combout\ : std_logic;
SIGNAL \le5_out~67_combout\ : std_logic;
SIGNAL \le4_out[62]~37_combout\ : std_logic;
SIGNAL \le4_out[62]~25_combout\ : std_logic;
SIGNAL \le5_out~68_combout\ : std_logic;
SIGNAL \le5_out~69_combout\ : std_logic;
SIGNAL \le4_out[63]~26_combout\ : std_logic;
SIGNAL \le5_out~70_combout\ : std_logic;
SIGNAL \le5_out~71_combout\ : std_logic;
SIGNAL \le5_out~75_combout\ : std_logic;
SIGNAL \le5_out~74_combout\ : std_logic;
SIGNAL \le5_out~8_combout\ : std_logic;
SIGNAL \le5_out~72_combout\ : std_logic;
SIGNAL \le5_out~76_combout\ : std_logic;
SIGNAL \le5_out~73_combout\ : std_logic;
SIGNAL \le5_out~77_combout\ : std_logic;
SIGNAL \le5_out~78_combout\ : std_logic;
SIGNAL \le5_out~79_combout\ : std_logic;
SIGNAL \le5_out~81_combout\ : std_logic;
SIGNAL \le5_out~80_combout\ : std_logic;
SIGNAL \le5_out~82_combout\ : std_logic;
SIGNAL \le5_out~84_combout\ : std_logic;
SIGNAL \le5_out~83_combout\ : std_logic;
SIGNAL \le5_out~85_combout\ : std_logic;
SIGNAL \le5_out~86_combout\ : std_logic;
SIGNAL \le5_out~87_combout\ : std_logic;
SIGNAL \le5_out~88_combout\ : std_logic;
SIGNAL \le5_out~89_combout\ : std_logic;
SIGNAL \le5_out~90_combout\ : std_logic;
SIGNAL \le5_out~92_combout\ : std_logic;
SIGNAL \le5_out~91_combout\ : std_logic;
SIGNAL \le5_out~93_combout\ : std_logic;
SIGNAL \le5_out~94_combout\ : std_logic;
SIGNAL \le5_out~95_combout\ : std_logic;
SIGNAL \le5_out~96_combout\ : std_logic;
SIGNAL \le5_out~98_combout\ : std_logic;
SIGNAL \le5_out~97_combout\ : std_logic;
SIGNAL \le5_out~99_combout\ : std_logic;
SIGNAL \le5_out~100_combout\ : std_logic;
SIGNAL \le5_out~101_combout\ : std_logic;
SIGNAL \le5_out~103_combout\ : std_logic;
SIGNAL \le5_out~102_combout\ : std_logic;
SIGNAL \le5_out~104_combout\ : std_logic;
SIGNAL \le5_out~105_combout\ : std_logic;
SIGNAL \le5_out~106_combout\ : std_logic;
SIGNAL \le5_out~108_combout\ : std_logic;
SIGNAL \le5_out~107_combout\ : std_logic;
SIGNAL \le5_out~109_combout\ : std_logic;
SIGNAL \le5_out~110_combout\ : std_logic;
SIGNAL \le5_out~111_combout\ : std_logic;
SIGNAL \le5_out~113_combout\ : std_logic;
SIGNAL \le5_out~112_combout\ : std_logic;
SIGNAL \le5_out~114_combout\ : std_logic;
SIGNAL \le5_out~115_combout\ : std_logic;
SIGNAL \le5_out~116_combout\ : std_logic;
SIGNAL \le5_out~117_combout\ : std_logic;
SIGNAL \le5_out~118_combout\ : std_logic;
SIGNAL \le5_out~119_combout\ : std_logic;
SIGNAL \le4_out[49]~27_combout\ : std_logic;
SIGNAL \le5_out~120_combout\ : std_logic;
SIGNAL \le5_out~121_combout\ : std_logic;
SIGNAL \le5_out~122_combout\ : std_logic;
SIGNAL \le5_out~123_combout\ : std_logic;
SIGNAL \le4_out[51]~28_combout\ : std_logic;
SIGNAL \le5_out~124_combout\ : std_logic;
SIGNAL \le5_out~125_combout\ : std_logic;
SIGNAL \le4_out[52]~29_combout\ : std_logic;
SIGNAL \le5_out~126_combout\ : std_logic;
SIGNAL \le5_out~127_combout\ : std_logic;
SIGNAL \le4_out[53]~30_combout\ : std_logic;
SIGNAL \le5_out~128_combout\ : std_logic;
SIGNAL \le5_out~129_combout\ : std_logic;
SIGNAL \le5_out~130_combout\ : std_logic;
SIGNAL \le5_out~131_combout\ : std_logic;
SIGNAL \le4_out[55]~31_combout\ : std_logic;
SIGNAL \le5_out~132_combout\ : std_logic;
SIGNAL \le5_out~133_combout\ : std_logic;
SIGNAL \le5_out~134_combout\ : std_logic;
SIGNAL \le5_out~135_combout\ : std_logic;
SIGNAL \le5_out~136_combout\ : std_logic;
SIGNAL \le5_out~137_combout\ : std_logic;
SIGNAL \le4_out[58]~32_combout\ : std_logic;
SIGNAL \le5_out~138_combout\ : std_logic;
SIGNAL \le5_out~139_combout\ : std_logic;
SIGNAL \le5_out~140_combout\ : std_logic;
SIGNAL \le5_out~141_combout\ : std_logic;
SIGNAL \le4_out[60]~33_combout\ : std_logic;
SIGNAL \le5_out~142_combout\ : std_logic;
SIGNAL \le5_out~149_combout\ : std_logic;
SIGNAL \le5_out~143_combout\ : std_logic;
SIGNAL \le5_out~144_combout\ : std_logic;
SIGNAL \le5_out~145_combout\ : std_logic;
SIGNAL \le5_out~146_combout\ : std_logic;
SIGNAL \le4_out[63]~34_combout\ : std_logic;
SIGNAL \le5_out~147_combout\ : std_logic;
SIGNAL \le5_out~148_combout\ : std_logic;

BEGIN

ww_a <= a;
ww_lar <= lar;
ww_amt <= amt;
y <= ww_y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X112_Y30_N26
\le1_out[44]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[44]~23_combout\ = (\amt[1]~input_o\ & (\a[46]~input_o\)) # (!\amt[1]~input_o\ & ((\a[44]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[46]~input_o\,
	datac => \a[44]~input_o\,
	datad => \amt[1]~input_o\,
	combout => \le1_out[44]~23_combout\);

-- Location: LCCOMB_X109_Y32_N16
\le1_out[8]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[8]~38_combout\ = (\amt[0]~input_o\ & ((\le1_out[9]~36_combout\))) # (!\amt[0]~input_o\ & (\le1_out[8]~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \le1_out[8]~37_combout\,
	datac => \amt[0]~input_o\,
	datad => \le1_out[9]~36_combout\,
	combout => \le1_out[8]~38_combout\);

-- Location: LCCOMB_X112_Y32_N30
\le1_out[0]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[0]~42_combout\ = (!\amt[0]~input_o\ & ((\amt[1]~input_o\ & ((\a[2]~input_o\))) # (!\amt[1]~input_o\ & (\a[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \a[0]~input_o\,
	datac => \amt[1]~input_o\,
	datad => \a[2]~input_o\,
	combout => \le1_out[0]~42_combout\);

-- Location: LCCOMB_X114_Y32_N12
\le3_out[1]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[1]~24_combout\ = (\le3_out[0]~9_combout\ & ((\le1_out[1]~54_combout\) # ((\le3_out[0]~4_combout\ & \le1_out[5]~56_combout\)))) # (!\le3_out[0]~9_combout\ & (\le3_out[0]~4_combout\ & (\le1_out[5]~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le3_out[0]~9_combout\,
	datab => \le3_out[0]~4_combout\,
	datac => \le1_out[5]~56_combout\,
	datad => \le1_out[1]~54_combout\,
	combout => \le3_out[1]~24_combout\);

-- Location: LCCOMB_X111_Y33_N30
\le1_out[62]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[62]~75_combout\ = (!\lar[1]~input_o\ & (\amt[1]~input_o\ & (\a[63]~input_o\ & \lar[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[1]~input_o\,
	datab => \amt[1]~input_o\,
	datac => \a[63]~input_o\,
	datad => \lar[0]~input_o\,
	combout => \le1_out[62]~75_combout\);

-- Location: LCCOMB_X110_Y30_N30
\le3_out[18]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[18]~36_combout\ = (!\amt[2]~input_o\ & ((\amt[3]~input_o\ & (\le1_out[26]~86_combout\)) # (!\amt[3]~input_o\ & ((\le1_out[18]~88_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datab => \amt[2]~input_o\,
	datac => \le1_out[26]~86_combout\,
	datad => \le1_out[18]~88_combout\,
	combout => \le3_out[18]~36_combout\);

-- Location: LCCOMB_X110_Y30_N6
\le3_out[2]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[2]~44_combout\ = (\le3_out[0]~6_combout\ & ((\le1_out[10]~102_combout\) # ((\le1_out[14]~104_combout\ & \le3_out[0]~7_combout\)))) # (!\le3_out[0]~6_combout\ & (((\le1_out[14]~104_combout\ & \le3_out[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le3_out[0]~6_combout\,
	datab => \le1_out[10]~102_combout\,
	datac => \le1_out[14]~104_combout\,
	datad => \le3_out[0]~7_combout\,
	combout => \le3_out[2]~44_combout\);

-- Location: LCCOMB_X109_Y32_N0
\le3_out[5]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[5]~74_combout\ = (\le3_out[0]~4_combout\ & ((\amt[0]~input_o\ & (\le1_out[10]~58_combout\)) # (!\amt[0]~input_o\ & ((\le1_out[9]~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le1_out[10]~58_combout\,
	datab => \amt[0]~input_o\,
	datac => \le3_out[0]~4_combout\,
	datad => \le1_out[9]~36_combout\,
	combout => \le3_out[5]~74_combout\);

-- Location: LCCOMB_X111_Y33_N12
\le2_out[63]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \le2_out[63]~8_combout\ = ((\lar[0]~input_o\ & !\lar[1]~input_o\)) # (!\amt[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[0]~input_o\,
	datac => \lar[1]~input_o\,
	datad => \amt[2]~input_o\,
	combout => \le2_out[63]~8_combout\);

-- Location: LCCOMB_X109_Y32_N14
\le3_out[10]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[10]~118_combout\ = (\le3_out[0]~4_combout\ & ((\le1_out[14]~104_combout\) # ((\le1_out[10]~102_combout\ & \le3_out[0]~9_combout\)))) # (!\le3_out[0]~4_combout\ & (\le1_out[10]~102_combout\ & (\le3_out[0]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le3_out[0]~4_combout\,
	datab => \le1_out[10]~102_combout\,
	datac => \le3_out[0]~9_combout\,
	datad => \le1_out[14]~104_combout\,
	combout => \le3_out[10]~118_combout\);

-- Location: LCCOMB_X112_Y32_N8
\le3_out[58]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[58]~121_combout\ = (!\amt[3]~input_o\ & ((\amt[2]~input_o\ & ((\le1_out[62]~78_combout\))) # (!\amt[2]~input_o\ & (\le1_out[58]~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datab => \amt[3]~input_o\,
	datac => \le1_out[58]~84_combout\,
	datad => \le1_out[62]~78_combout\,
	combout => \le3_out[58]~121_combout\);

-- Location: LCCOMB_X112_Y33_N18
\le1_out[2]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[2]~129_combout\ = (\amt[0]~input_o\ & (\le1_out[3]~100_combout\)) # (!\amt[0]~input_o\ & ((\le1_out[2]~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datac => \le1_out[3]~100_combout\,
	datad => \le1_out[2]~53_combout\,
	combout => \le1_out[2]~129_combout\);

-- Location: LCCOMB_X112_Y32_N14
\le3_out[58]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[58]~122_combout\ = (\le3_out[56]~101_combout\ & ((\amt[2]~input_o\ & (\le1_out[6]~106_combout\)) # (!\amt[2]~input_o\ & ((\le1_out[2]~129_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le3_out[56]~101_combout\,
	datab => \amt[2]~input_o\,
	datac => \le1_out[6]~106_combout\,
	datad => \le1_out[2]~129_combout\,
	combout => \le3_out[58]~122_combout\);

-- Location: LCCOMB_X113_Y32_N2
\le3_out[58]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[58]~123_combout\ = (\le3_out[58]~122_combout\) # ((\le3_out[58]~121_combout\) # ((\amt[3]~input_o\ & \le1_out[62]~124_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le3_out[58]~122_combout\,
	datab => \amt[3]~input_o\,
	datac => \le1_out[62]~124_combout\,
	datad => \le3_out[58]~121_combout\,
	combout => \le3_out[58]~123_combout\);

-- Location: LCCOMB_X109_Y33_N12
\le3_out[11]~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[11]~134_combout\ = (\le3_out[0]~7_combout\ & ((\amt[0]~input_o\ & ((\le1_out[24]~12_combout\))) # (!\amt[0]~input_o\ & (\le1_out[23]~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \le1_out[23]~89_combout\,
	datac => \le3_out[0]~7_combout\,
	datad => \le1_out[24]~12_combout\,
	combout => \le3_out[11]~134_combout\);

-- Location: LCCOMB_X109_Y30_N30
\le4_out[54]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \le4_out[54]~13_combout\ = (\lar[1]~input_o\ & (\amt[4]~input_o\ & \le3_out[6]~81_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[1]~input_o\,
	datac => \amt[4]~input_o\,
	datad => \le3_out[6]~81_combout\,
	combout => \le4_out[54]~13_combout\);

-- Location: LCCOMB_X112_Y32_N10
\le3_out[60]~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[60]~171_combout\ = (\le1_out[62]~124_combout\) # ((\lar[1]~input_o\ & (\le1_out[8]~38_combout\ & \amt[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[1]~input_o\,
	datab => \le1_out[8]~38_combout\,
	datac => \amt[2]~input_o\,
	datad => \le1_out[62]~124_combout\,
	combout => \le3_out[60]~171_combout\);

-- Location: IOIBUF_X115_Y14_N1
\a[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(26),
	o => \a[26]~input_o\);

-- Location: IOOBUF_X115_Y10_N2
\y[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le5_out~3_combout\,
	devoe => ww_devoe,
	o => \y[0]~output_o\);

-- Location: IOOBUF_X115_Y40_N9
\y[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le5_out~5_combout\,
	devoe => ww_devoe,
	o => \y[1]~output_o\);

-- Location: IOOBUF_X115_Y12_N2
\y[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le5_out~7_combout\,
	devoe => ww_devoe,
	o => \y[2]~output_o\);

-- Location: IOOBUF_X115_Y9_N23
\y[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le5_out~10_combout\,
	devoe => ww_devoe,
	o => \y[3]~output_o\);

-- Location: IOOBUF_X115_Y26_N16
\y[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le5_out~12_combout\,
	devoe => ww_devoe,
	o => \y[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\y[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le5_out~15_combout\,
	devoe => ww_devoe,
	o => \y[5]~output_o\);

-- Location: IOOBUF_X115_Y44_N2
\y[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le5_out~17_combout\,
	devoe => ww_devoe,
	o => \y[6]~output_o\);

-- Location: IOOBUF_X115_Y53_N16
\y[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le5_out~19_combout\,
	devoe => ww_devoe,
	o => \y[7]~output_o\);

-- Location: IOOBUF_X115_Y15_N2
\y[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le5_out~21_combout\,
	devoe => ww_devoe,
	o => \y[8]~output_o\);

-- Location: IOOBUF_X115_Y12_N9
\y[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le5_out~24_combout\,
	devoe => ww_devoe,
	o => \y[9]~output_o\);

-- Location: IOOBUF_X115_Y23_N9
\y[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le5_out~26_combout\,
	devoe => ww_devoe,
	o => \y[10]~output_o\);

-- Location: IOOBUF_X115_Y49_N9
\y[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le5_out~29_combout\,
	devoe => ww_devoe,
	o => \y[11]~output_o\);

-- Location: IOOBUF_X115_Y50_N9
\y[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le5_out~31_combout\,
	devoe => ww_devoe,
	o => \y[12]~output_o\);

-- Location: IOOBUF_X115_Y11_N9
\y[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le5_out~34_combout\,
	devoe => ww_devoe,
	o => \y[13]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\y[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le5_out~36_combout\,
	devoe => ww_devoe,
	o => \y[14]~output_o\);

-- Location: IOOBUF_X115_Y52_N2
\y[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le5_out~39_combout\,
	devoe => ww_devoe,
	o => \y[15]~output_o\);

-- Location: IOOBUF_X115_Y26_N23
\y[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le5_out~41_combout\,
	devoe => ww_devoe,
	o => \y[16]~output_o\);

-- Location: IOOBUF_X115_Y24_N9
\y[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le5_out~43_combout\,
	devoe => ww_devoe,
	o => \y[17]~output_o\);

-- Location: IOOBUF_X115_Y16_N9
\y[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le5_out~45_combout\,
	devoe => ww_devoe,
	o => \y[18]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\y[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le5_out~47_combout\,
	devoe => ww_devoe,
	o => \y[19]~output_o\);

-- Location: IOOBUF_X115_Y48_N9
\y[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le5_out~49_combout\,
	devoe => ww_devoe,
	o => \y[20]~output_o\);

-- Location: IOOBUF_X115_Y45_N16
\y[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le5_out~51_combout\,
	devoe => ww_devoe,
	o => \y[21]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\y[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le5_out~53_combout\,
	devoe => ww_devoe,
	o => \y[22]~output_o\);

-- Location: IOOBUF_X115_Y52_N9
\y[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le5_out~55_combout\,
	devoe => ww_devoe,
	o => \y[23]~output_o\);

-- Location: IOOBUF_X115_Y18_N9
\y[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le5_out~57_combout\,
	devoe => ww_devoe,
	o => \y[24]~output_o\);

-- Location: IOOBUF_X115_Y35_N16
\y[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le5_out~59_combout\,
	devoe => ww_devoe,
	o => \y[25]~output_o\);

-- Location: IOOBUF_X115_Y24_N2
\y[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le5_out~61_combout\,
	devoe => ww_devoe,
	o => \y[26]~output_o\);

-- Location: IOOBUF_X115_Y33_N2
\y[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le5_out~63_combout\,
	devoe => ww_devoe,
	o => \y[27]~output_o\);

-- Location: IOOBUF_X115_Y48_N2
\y[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le5_out~65_combout\,
	devoe => ww_devoe,
	o => \y[28]~output_o\);

-- Location: IOOBUF_X115_Y27_N9
\y[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le5_out~67_combout\,
	devoe => ww_devoe,
	o => \y[29]~output_o\);

-- Location: IOOBUF_X115_Y41_N9
\y[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le5_out~69_combout\,
	devoe => ww_devoe,
	o => \y[30]~output_o\);

-- Location: IOOBUF_X115_Y44_N9
\y[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le5_out~71_combout\,
	devoe => ww_devoe,
	o => \y[31]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\y[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le5_out~76_combout\,
	devoe => ww_devoe,
	o => \y[32]~output_o\);

-- Location: IOOBUF_X115_Y32_N2
\y[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le5_out~79_combout\,
	devoe => ww_devoe,
	o => \y[33]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\y[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le5_out~82_combout\,
	devoe => ww_devoe,
	o => \y[34]~output_o\);

-- Location: IOOBUF_X115_Y29_N9
\y[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le5_out~85_combout\,
	devoe => ww_devoe,
	o => \y[35]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\y[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le5_out~88_combout\,
	devoe => ww_devoe,
	o => \y[36]~output_o\);

-- Location: IOOBUF_X115_Y31_N2
\y[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le5_out~90_combout\,
	devoe => ww_devoe,
	o => \y[37]~output_o\);

-- Location: IOOBUF_X115_Y22_N16
\y[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le5_out~93_combout\,
	devoe => ww_devoe,
	o => \y[38]~output_o\);

-- Location: IOOBUF_X115_Y49_N2
\y[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le5_out~96_combout\,
	devoe => ww_devoe,
	o => \y[39]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\y[40]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le5_out~99_combout\,
	devoe => ww_devoe,
	o => \y[40]~output_o\);

-- Location: IOOBUF_X115_Y15_N9
\y[41]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le5_out~101_combout\,
	devoe => ww_devoe,
	o => \y[41]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\y[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le5_out~104_combout\,
	devoe => ww_devoe,
	o => \y[42]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\y[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le5_out~106_combout\,
	devoe => ww_devoe,
	o => \y[43]~output_o\);

-- Location: IOOBUF_X115_Y46_N9
\y[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le5_out~109_combout\,
	devoe => ww_devoe,
	o => \y[44]~output_o\);

-- Location: IOOBUF_X115_Y42_N16
\y[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le5_out~111_combout\,
	devoe => ww_devoe,
	o => \y[45]~output_o\);

-- Location: IOOBUF_X115_Y36_N2
\y[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le5_out~114_combout\,
	devoe => ww_devoe,
	o => \y[46]~output_o\);

-- Location: IOOBUF_X115_Y51_N2
\y[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le5_out~116_combout\,
	devoe => ww_devoe,
	o => \y[47]~output_o\);

-- Location: IOOBUF_X115_Y28_N2
\y[48]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le5_out~118_combout\,
	devoe => ww_devoe,
	o => \y[48]~output_o\);

-- Location: IOOBUF_X115_Y55_N16
\y[49]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le5_out~120_combout\,
	devoe => ww_devoe,
	o => \y[49]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\y[50]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le5_out~122_combout\,
	devoe => ww_devoe,
	o => \y[50]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\y[51]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le5_out~124_combout\,
	devoe => ww_devoe,
	o => \y[51]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\y[52]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le5_out~126_combout\,
	devoe => ww_devoe,
	o => \y[52]~output_o\);

-- Location: IOOBUF_X115_Y31_N9
\y[53]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le5_out~128_combout\,
	devoe => ww_devoe,
	o => \y[53]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\y[54]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le5_out~130_combout\,
	devoe => ww_devoe,
	o => \y[54]~output_o\);

-- Location: IOOBUF_X115_Y36_N9
\y[55]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le5_out~132_combout\,
	devoe => ww_devoe,
	o => \y[55]~output_o\);

-- Location: IOOBUF_X115_Y23_N2
\y[56]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le5_out~134_combout\,
	devoe => ww_devoe,
	o => \y[56]~output_o\);

-- Location: IOOBUF_X115_Y35_N23
\y[57]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le5_out~136_combout\,
	devoe => ww_devoe,
	o => \y[57]~output_o\);

-- Location: IOOBUF_X115_Y27_N2
\y[58]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le5_out~138_combout\,
	devoe => ww_devoe,
	o => \y[58]~output_o\);

-- Location: IOOBUF_X115_Y47_N23
\y[59]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le5_out~140_combout\,
	devoe => ww_devoe,
	o => \y[59]~output_o\);

-- Location: IOOBUF_X115_Y34_N23
\y[60]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le5_out~142_combout\,
	devoe => ww_devoe,
	o => \y[60]~output_o\);

-- Location: IOOBUF_X115_Y34_N16
\y[61]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le5_out~144_combout\,
	devoe => ww_devoe,
	o => \y[61]~output_o\);

-- Location: IOOBUF_X115_Y36_N16
\y[62]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le5_out~146_combout\,
	devoe => ww_devoe,
	o => \y[62]~output_o\);

-- Location: IOOBUF_X115_Y51_N9
\y[63]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \le5_out~148_combout\,
	devoe => ww_devoe,
	o => \y[63]~output_o\);

-- Location: IOIBUF_X115_Y22_N1
\amt[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_amt(4),
	o => \amt[4]~input_o\);

-- Location: IOIBUF_X115_Y14_N8
\a[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(24),
	o => \a[24]~input_o\);

-- Location: IOIBUF_X115_Y32_N8
\amt[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_amt(1),
	o => \amt[1]~input_o\);

-- Location: LCCOMB_X112_Y30_N18
\le1_out[24]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[24]~12_combout\ = (\amt[1]~input_o\ & (\a[26]~input_o\)) # (!\amt[1]~input_o\ & ((\a[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[26]~input_o\,
	datac => \a[24]~input_o\,
	datad => \amt[1]~input_o\,
	combout => \le1_out[24]~12_combout\);

-- Location: IOIBUF_X115_Y33_N8
\amt[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_amt(0),
	o => \amt[0]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\a[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(25),
	o => \a[25]~input_o\);

-- Location: IOIBUF_X115_Y62_N8
\a[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(27),
	o => \a[27]~input_o\);

-- Location: LCCOMB_X112_Y30_N28
\le1_out[25]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[25]~11_combout\ = (\amt[1]~input_o\ & ((\a[27]~input_o\))) # (!\amt[1]~input_o\ & (\a[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datab => \a[25]~input_o\,
	datad => \a[27]~input_o\,
	combout => \le1_out[25]~11_combout\);

-- Location: LCCOMB_X112_Y30_N0
\le1_out[24]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[24]~13_combout\ = (\amt[0]~input_o\ & ((\le1_out[25]~11_combout\))) # (!\amt[0]~input_o\ & (\le1_out[24]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \le1_out[24]~12_combout\,
	datac => \amt[0]~input_o\,
	datad => \le1_out[25]~11_combout\,
	combout => \le1_out[24]~13_combout\);

-- Location: IOIBUF_X0_Y36_N15
\amt[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_amt(2),
	o => \amt[2]~input_o\);

-- Location: IOIBUF_X0_Y36_N22
\amt[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_amt(3),
	o => \amt[3]~input_o\);

-- Location: LCCOMB_X112_Y30_N30
\le3_out[16]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[16]~11_combout\ = (!\amt[2]~input_o\ & ((\amt[3]~input_o\ & ((\le1_out[24]~13_combout\))) # (!\amt[3]~input_o\ & (\le1_out[16]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le1_out[16]~16_combout\,
	datab => \le1_out[24]~13_combout\,
	datac => \amt[2]~input_o\,
	datad => \amt[3]~input_o\,
	combout => \le3_out[16]~11_combout\);

-- Location: IOIBUF_X115_Y62_N15
\a[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(28),
	o => \a[28]~input_o\);

-- Location: IOIBUF_X115_Y55_N22
\a[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(30),
	o => \a[30]~input_o\);

-- Location: LCCOMB_X112_Y30_N8
\le1_out[28]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[28]~20_combout\ = (\amt[1]~input_o\ & ((\a[30]~input_o\))) # (!\amt[1]~input_o\ & (\a[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \a[28]~input_o\,
	datad => \a[30]~input_o\,
	combout => \le1_out[28]~20_combout\);

-- Location: IOIBUF_X115_Y11_N1
\a[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(31),
	o => \a[31]~input_o\);

-- Location: IOIBUF_X115_Y8_N22
\a[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(29),
	o => \a[29]~input_o\);

-- Location: LCCOMB_X114_Y31_N28
\le1_out[29]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[29]~19_combout\ = (\amt[1]~input_o\ & (\a[31]~input_o\)) # (!\amt[1]~input_o\ & ((\a[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[31]~input_o\,
	datac => \amt[1]~input_o\,
	datad => \a[29]~input_o\,
	combout => \le1_out[29]~19_combout\);

-- Location: LCCOMB_X111_Y30_N22
\le1_out[28]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[28]~21_combout\ = (\amt[0]~input_o\ & ((\le1_out[29]~19_combout\))) # (!\amt[0]~input_o\ & (\le1_out[28]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datac => \le1_out[28]~20_combout\,
	datad => \le1_out[29]~19_combout\,
	combout => \le1_out[28]~21_combout\);

-- Location: IOIBUF_X100_Y0_N22
\a[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(20),
	o => \a[20]~input_o\);

-- Location: IOIBUF_X109_Y73_N8
\a[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(22),
	o => \a[22]~input_o\);

-- Location: LCCOMB_X109_Y31_N30
\le1_out[20]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[20]~18_combout\ = (\amt[1]~input_o\ & ((\a[22]~input_o\))) # (!\amt[1]~input_o\ & (\a[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[1]~input_o\,
	datac => \a[20]~input_o\,
	datad => \a[22]~input_o\,
	combout => \le1_out[20]~18_combout\);

-- Location: IOIBUF_X102_Y0_N15
\a[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(23),
	o => \a[23]~input_o\);

-- Location: IOIBUF_X109_Y0_N1
\a[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(21),
	o => \a[21]~input_o\);

-- Location: LCCOMB_X109_Y31_N8
\le1_out[21]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[21]~17_combout\ = (\amt[1]~input_o\ & (\a[23]~input_o\)) # (!\amt[1]~input_o\ & ((\a[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[23]~input_o\,
	datac => \amt[1]~input_o\,
	datad => \a[21]~input_o\,
	combout => \le1_out[21]~17_combout\);

-- Location: LCCOMB_X111_Y30_N20
\le3_out[16]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[16]~12_combout\ = (!\amt[3]~input_o\ & ((\amt[0]~input_o\ & ((\le1_out[21]~17_combout\))) # (!\amt[0]~input_o\ & (\le1_out[20]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \le1_out[20]~18_combout\,
	datac => \le1_out[21]~17_combout\,
	datad => \amt[3]~input_o\,
	combout => \le3_out[16]~12_combout\);

-- Location: LCCOMB_X111_Y30_N4
\le3_out[20]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[20]~13_combout\ = (\le3_out[16]~12_combout\) # ((\amt[3]~input_o\ & \le1_out[28]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[3]~input_o\,
	datac => \le1_out[28]~21_combout\,
	datad => \le3_out[16]~12_combout\,
	combout => \le3_out[20]~13_combout\);

-- Location: LCCOMB_X111_Y29_N28
\le3_out[16]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[16]~14_combout\ = (\le3_out[16]~11_combout\) # ((\amt[2]~input_o\ & \le3_out[20]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datac => \le3_out[16]~11_combout\,
	datad => \le3_out[20]~13_combout\,
	combout => \le3_out[16]~14_combout\);

-- Location: IOIBUF_X109_Y0_N8
\a[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(50),
	o => \a[50]~input_o\);

-- Location: IOIBUF_X113_Y0_N8
\a[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(48),
	o => \a[48]~input_o\);

-- Location: LCCOMB_X113_Y29_N20
\le1_out[48]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[48]~9_combout\ = (\amt[1]~input_o\ & (\a[50]~input_o\)) # (!\amt[1]~input_o\ & ((\a[48]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[50]~input_o\,
	datac => \amt[1]~input_o\,
	datad => \a[48]~input_o\,
	combout => \le1_out[48]~9_combout\);

-- Location: IOIBUF_X115_Y4_N15
\a[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(51),
	o => \a[51]~input_o\);

-- Location: IOIBUF_X115_Y59_N15
\a[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(49),
	o => \a[49]~input_o\);

-- Location: LCCOMB_X113_Y29_N10
\le1_out[49]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[49]~8_combout\ = (\amt[1]~input_o\ & (\a[51]~input_o\)) # (!\amt[1]~input_o\ & ((\a[49]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[1]~input_o\,
	datac => \a[51]~input_o\,
	datad => \a[49]~input_o\,
	combout => \le1_out[49]~8_combout\);

-- Location: LCCOMB_X113_Y29_N22
\le1_out[48]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[48]~10_combout\ = (\amt[0]~input_o\ & ((\le1_out[49]~8_combout\))) # (!\amt[0]~input_o\ & (\le1_out[48]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \le1_out[48]~9_combout\,
	datac => \amt[0]~input_o\,
	datad => \le1_out[49]~8_combout\,
	combout => \le1_out[48]~10_combout\);

-- Location: IOIBUF_X115_Y56_N22
\a[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(59),
	o => \a[59]~input_o\);

-- Location: IOIBUF_X96_Y0_N15
\a[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(57),
	o => \a[57]~input_o\);

-- Location: LCCOMB_X112_Y29_N8
\le1_out[57]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[57]~5_combout\ = (\amt[1]~input_o\ & (\a[59]~input_o\)) # (!\amt[1]~input_o\ & ((\a[57]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datab => \a[59]~input_o\,
	datac => \a[57]~input_o\,
	combout => \le1_out[57]~5_combout\);

-- Location: IOIBUF_X115_Y61_N15
\a[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(58),
	o => \a[58]~input_o\);

-- Location: IOIBUF_X96_Y0_N22
\a[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(56),
	o => \a[56]~input_o\);

-- Location: LCCOMB_X112_Y29_N2
\le1_out[56]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[56]~6_combout\ = (\amt[1]~input_o\ & (\a[58]~input_o\)) # (!\amt[1]~input_o\ & ((\a[56]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \a[58]~input_o\,
	datad => \a[56]~input_o\,
	combout => \le1_out[56]~6_combout\);

-- Location: LCCOMB_X112_Y29_N16
\le1_out[56]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[56]~7_combout\ = (\amt[0]~input_o\ & (\le1_out[57]~5_combout\)) # (!\amt[0]~input_o\ & ((\le1_out[56]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[0]~input_o\,
	datac => \le1_out[57]~5_combout\,
	datad => \le1_out[56]~6_combout\,
	combout => \le1_out[56]~7_combout\);

-- Location: LCCOMB_X109_Y33_N30
\le3_out[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[0]~7_combout\ = (\amt[3]~input_o\ & \amt[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \amt[3]~input_o\,
	datad => \amt[2]~input_o\,
	combout => \le3_out[0]~7_combout\);

-- Location: IOIBUF_X115_Y40_N1
\a[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(61),
	o => \a[61]~input_o\);

-- Location: IOIBUF_X115_Y47_N15
\a[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(63),
	o => \a[63]~input_o\);

-- Location: LCCOMB_X112_Y32_N4
\le1_out[60]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[60]~2_combout\ = (\amt[0]~input_o\ & ((\amt[1]~input_o\ & ((\a[63]~input_o\))) # (!\amt[1]~input_o\ & (\a[61]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \a[61]~input_o\,
	datac => \a[63]~input_o\,
	datad => \amt[1]~input_o\,
	combout => \le1_out[60]~2_combout\);

-- Location: IOIBUF_X115_Y61_N22
\a[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(62),
	o => \a[62]~input_o\);

-- Location: IOIBUF_X115_Y59_N22
\a[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(60),
	o => \a[60]~input_o\);

-- Location: LCCOMB_X112_Y32_N2
\le1_out[60]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[60]~3_combout\ = (\amt[1]~input_o\ & (\a[62]~input_o\)) # (!\amt[1]~input_o\ & ((\a[60]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \a[62]~input_o\,
	datad => \a[60]~input_o\,
	combout => \le1_out[60]~3_combout\);

-- Location: LCCOMB_X112_Y32_N28
\le1_out[60]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[60]~4_combout\ = (\le1_out[60]~2_combout\) # ((!\amt[0]~input_o\ & \le1_out[60]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datac => \le1_out[60]~2_combout\,
	datad => \le1_out[60]~3_combout\,
	combout => \le1_out[60]~4_combout\);

-- Location: LCCOMB_X111_Y29_N8
\le3_out[48]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[48]~8_combout\ = (\le3_out[0]~6_combout\ & ((\le1_out[56]~7_combout\) # ((\le3_out[0]~7_combout\ & \le1_out[60]~4_combout\)))) # (!\le3_out[0]~6_combout\ & (((\le3_out[0]~7_combout\ & \le1_out[60]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le3_out[0]~6_combout\,
	datab => \le1_out[56]~7_combout\,
	datac => \le3_out[0]~7_combout\,
	datad => \le1_out[60]~4_combout\,
	combout => \le3_out[48]~8_combout\);

-- Location: IOIBUF_X115_Y45_N22
\a[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(55),
	o => \a[55]~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\a[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(53),
	o => \a[53]~input_o\);

-- Location: LCCOMB_X112_Y29_N0
\le1_out[53]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[53]~0_combout\ = (\amt[1]~input_o\ & (\a[55]~input_o\)) # (!\amt[1]~input_o\ & ((\a[53]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[55]~input_o\,
	datac => \a[53]~input_o\,
	datad => \amt[1]~input_o\,
	combout => \le1_out[53]~0_combout\);

-- Location: IOIBUF_X115_Y58_N15
\a[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(54),
	o => \a[54]~input_o\);

-- Location: IOIBUF_X113_Y0_N1
\a[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(52),
	o => \a[52]~input_o\);

-- Location: LCCOMB_X113_Y29_N16
\le1_out[52]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[52]~1_combout\ = (\amt[1]~input_o\ & (\a[54]~input_o\)) # (!\amt[1]~input_o\ & ((\a[52]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[1]~input_o\,
	datac => \a[54]~input_o\,
	datad => \a[52]~input_o\,
	combout => \le1_out[52]~1_combout\);

-- Location: LCCOMB_X112_Y29_N18
\le3_out[48]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[48]~5_combout\ = (\le3_out[0]~4_combout\ & ((\amt[0]~input_o\ & (\le1_out[53]~0_combout\)) # (!\amt[0]~input_o\ & ((\le1_out[52]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le3_out[0]~4_combout\,
	datab => \le1_out[53]~0_combout\,
	datac => \amt[0]~input_o\,
	datad => \le1_out[52]~1_combout\,
	combout => \le3_out[48]~5_combout\);

-- Location: LCCOMB_X111_Y29_N22
\le3_out[48]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[48]~10_combout\ = (\le3_out[48]~8_combout\) # ((\le3_out[48]~5_combout\) # ((\le3_out[0]~9_combout\ & \le1_out[48]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le3_out[0]~9_combout\,
	datab => \le1_out[48]~10_combout\,
	datac => \le3_out[48]~8_combout\,
	datad => \le3_out[48]~5_combout\,
	combout => \le3_out[48]~10_combout\);

-- Location: IOIBUF_X115_Y4_N22
\a[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: IOIBUF_X115_Y20_N8
\a[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: LCCOMB_X113_Y31_N12
\le1_out[1]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[1]~43_combout\ = (\amt[1]~input_o\ & ((\a[3]~input_o\))) # (!\amt[1]~input_o\ & (\a[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \a[1]~input_o\,
	datad => \a[3]~input_o\,
	combout => \le1_out[1]~43_combout\);

-- Location: LCCOMB_X112_Y32_N24
\le1_out[0]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[0]~44_combout\ = (\le1_out[0]~42_combout\) # ((\amt[0]~input_o\ & \le1_out[1]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le1_out[0]~42_combout\,
	datac => \amt[0]~input_o\,
	datad => \le1_out[1]~43_combout\,
	combout => \le1_out[0]~44_combout\);

-- Location: LCCOMB_X110_Y32_N20
\le3_out[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[0]~4_combout\ = (!\amt[3]~input_o\ & \amt[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datad => \amt[2]~input_o\,
	combout => \le3_out[0]~4_combout\);

-- Location: IOIBUF_X115_Y65_N15
\a[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

-- Location: IOIBUF_X115_Y65_N22
\a[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: LCCOMB_X112_Y33_N30
\le1_out[4]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[4]~35_combout\ = (\amt[1]~input_o\ & (\a[6]~input_o\)) # (!\amt[1]~input_o\ & ((\a[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[1]~input_o\,
	datac => \a[6]~input_o\,
	datad => \a[4]~input_o\,
	combout => \le1_out[4]~35_combout\);

-- Location: IOIBUF_X115_Y57_N22
\a[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

-- Location: LCCOMB_X112_Y33_N12
\le1_out[5]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[5]~34_combout\ = (\amt[1]~input_o\ & ((\a[7]~input_o\))) # (!\amt[1]~input_o\ & (\a[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[5]~input_o\,
	datac => \amt[1]~input_o\,
	datad => \a[7]~input_o\,
	combout => \le1_out[5]~34_combout\);

-- Location: LCCOMB_X111_Y32_N0
\le3_out[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[0]~18_combout\ = (\le3_out[0]~4_combout\ & ((\amt[0]~input_o\ & ((\le1_out[5]~34_combout\))) # (!\amt[0]~input_o\ & (\le1_out[4]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \le3_out[0]~4_combout\,
	datac => \le1_out[4]~35_combout\,
	datad => \le1_out[5]~34_combout\,
	combout => \le3_out[0]~18_combout\);

-- Location: LCCOMB_X109_Y33_N28
\le3_out[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[0]~6_combout\ = (\amt[3]~input_o\ & !\amt[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \amt[3]~input_o\,
	datad => \amt[2]~input_o\,
	combout => \le3_out[0]~6_combout\);

-- Location: IOIBUF_X100_Y0_N1
\a[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(15),
	o => \a[15]~input_o\);

-- Location: LCCOMB_X108_Y32_N18
\le1_out[13]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[13]~39_combout\ = (\amt[1]~input_o\ & ((\a[15]~input_o\))) # (!\amt[1]~input_o\ & (\a[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[13]~input_o\,
	datac => \amt[1]~input_o\,
	datad => \a[15]~input_o\,
	combout => \le1_out[13]~39_combout\);

-- Location: IOIBUF_X102_Y0_N22
\a[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(14),
	o => \a[14]~input_o\);

-- Location: IOIBUF_X115_Y64_N1
\a[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(12),
	o => \a[12]~input_o\);

-- Location: LCCOMB_X109_Y32_N10
\le1_out[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[12]~40_combout\ = (\amt[1]~input_o\ & (\a[14]~input_o\)) # (!\amt[1]~input_o\ & ((\a[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \a[14]~input_o\,
	datad => \a[12]~input_o\,
	combout => \le1_out[12]~40_combout\);

-- Location: LCCOMB_X111_Y32_N18
\le1_out[12]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[12]~41_combout\ = (\amt[0]~input_o\ & (\le1_out[13]~39_combout\)) # (!\amt[0]~input_o\ & ((\le1_out[12]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[0]~input_o\,
	datac => \le1_out[13]~39_combout\,
	datad => \le1_out[12]~40_combout\,
	combout => \le1_out[12]~41_combout\);

-- Location: LCCOMB_X111_Y29_N24
\le3_out[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[0]~19_combout\ = (\le1_out[8]~38_combout\ & ((\le3_out[0]~6_combout\) # ((\le3_out[0]~7_combout\ & \le1_out[12]~41_combout\)))) # (!\le1_out[8]~38_combout\ & (\le3_out[0]~7_combout\ & ((\le1_out[12]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le1_out[8]~38_combout\,
	datab => \le3_out[0]~7_combout\,
	datac => \le3_out[0]~6_combout\,
	datad => \le1_out[12]~41_combout\,
	combout => \le3_out[0]~19_combout\);

-- Location: LCCOMB_X111_Y29_N18
\le3_out[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[0]~20_combout\ = (\le3_out[0]~18_combout\) # ((\le3_out[0]~19_combout\) # ((\le3_out[0]~9_combout\ & \le1_out[0]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le3_out[0]~9_combout\,
	datab => \le1_out[0]~44_combout\,
	datac => \le3_out[0]~18_combout\,
	datad => \le3_out[0]~19_combout\,
	combout => \le3_out[0]~20_combout\);

-- Location: IOIBUF_X115_Y54_N15
\a[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(45),
	o => \a[45]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\a[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(47),
	o => \a[47]~input_o\);

-- Location: LCCOMB_X113_Y29_N28
\le1_out[45]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[45]~22_combout\ = (\amt[1]~input_o\ & ((\a[47]~input_o\))) # (!\amt[1]~input_o\ & (\a[45]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[1]~input_o\,
	datac => \a[45]~input_o\,
	datad => \a[47]~input_o\,
	combout => \le1_out[45]~22_combout\);

-- Location: LCCOMB_X112_Y30_N20
\le1_out[44]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[44]~24_combout\ = (\amt[0]~input_o\ & ((\le1_out[45]~22_combout\))) # (!\amt[0]~input_o\ & (\le1_out[44]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le1_out[44]~23_combout\,
	datab => \amt[0]~input_o\,
	datad => \le1_out[45]~22_combout\,
	combout => \le1_out[44]~24_combout\);

-- Location: IOIBUF_X115_Y63_N1
\a[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(36),
	o => \a[36]~input_o\);

-- Location: IOIBUF_X115_Y60_N15
\a[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(38),
	o => \a[38]~input_o\);

-- Location: LCCOMB_X114_Y31_N22
\le1_out[36]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[36]~26_combout\ = (\amt[1]~input_o\ & ((\a[38]~input_o\))) # (!\amt[1]~input_o\ & (\a[36]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \a[36]~input_o\,
	datad => \a[38]~input_o\,
	combout => \le1_out[36]~26_combout\);

-- Location: LCCOMB_X111_Y30_N10
\le1_out[36]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[36]~27_combout\ = (\amt[0]~input_o\ & (\le1_out[37]~25_combout\)) # (!\amt[0]~input_o\ & ((\le1_out[36]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le1_out[37]~25_combout\,
	datac => \le1_out[36]~26_combout\,
	datad => \amt[0]~input_o\,
	combout => \le1_out[36]~27_combout\);

-- Location: LCCOMB_X111_Y30_N28
\le3_out[36]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[36]~15_combout\ = (\amt[3]~input_o\ & (\le1_out[44]~24_combout\)) # (!\amt[3]~input_o\ & ((\le1_out[36]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[3]~input_o\,
	datac => \le1_out[44]~24_combout\,
	datad => \le1_out[36]~27_combout\,
	combout => \le3_out[36]~15_combout\);

-- Location: IOIBUF_X115_Y6_N15
\a[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(33),
	o => \a[33]~input_o\);

-- Location: IOIBUF_X115_Y63_N8
\a[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(35),
	o => \a[35]~input_o\);

-- Location: LCCOMB_X114_Y31_N4
\le1_out[33]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[33]~31_combout\ = (\amt[1]~input_o\ & ((\a[35]~input_o\))) # (!\amt[1]~input_o\ & (\a[33]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \a[33]~input_o\,
	datad => \a[35]~input_o\,
	combout => \le1_out[33]~31_combout\);

-- Location: IOIBUF_X115_Y64_N8
\a[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(32),
	o => \a[32]~input_o\);

-- Location: IOIBUF_X115_Y66_N22
\a[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(34),
	o => \a[34]~input_o\);

-- Location: LCCOMB_X114_Y31_N18
\le1_out[32]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[32]~32_combout\ = (\amt[1]~input_o\ & ((\a[34]~input_o\))) # (!\amt[1]~input_o\ & (\a[32]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \a[32]~input_o\,
	datad => \a[34]~input_o\,
	combout => \le1_out[32]~32_combout\);

-- Location: LCCOMB_X114_Y31_N16
\le1_out[32]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[32]~33_combout\ = (\amt[0]~input_o\ & (\le1_out[33]~31_combout\)) # (!\amt[0]~input_o\ & ((\le1_out[32]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[0]~input_o\,
	datac => \le1_out[33]~31_combout\,
	datad => \le1_out[32]~32_combout\,
	combout => \le1_out[32]~33_combout\);

-- Location: IOIBUF_X98_Y0_N22
\a[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(42),
	o => \a[42]~input_o\);

-- Location: IOIBUF_X115_Y10_N8
\a[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(40),
	o => \a[40]~input_o\);

-- Location: LCCOMB_X114_Y30_N28
\le1_out[40]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[40]~29_combout\ = (\amt[1]~input_o\ & (\a[42]~input_o\)) # (!\amt[1]~input_o\ & ((\a[40]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \a[42]~input_o\,
	datad => \a[40]~input_o\,
	combout => \le1_out[40]~29_combout\);

-- Location: IOIBUF_X115_Y8_N15
\a[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(41),
	o => \a[41]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\a[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(43),
	o => \a[43]~input_o\);

-- Location: LCCOMB_X114_Y30_N2
\le1_out[41]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[41]~28_combout\ = (\amt[1]~input_o\ & ((\a[43]~input_o\))) # (!\amt[1]~input_o\ & (\a[41]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \a[41]~input_o\,
	datad => \a[43]~input_o\,
	combout => \le1_out[41]~28_combout\);

-- Location: LCCOMB_X114_Y30_N18
\le1_out[40]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[40]~30_combout\ = (\amt[0]~input_o\ & ((\le1_out[41]~28_combout\))) # (!\amt[0]~input_o\ & (\le1_out[40]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \le1_out[40]~29_combout\,
	datac => \amt[0]~input_o\,
	datad => \le1_out[41]~28_combout\,
	combout => \le1_out[40]~30_combout\);

-- Location: LCCOMB_X114_Y30_N8
\le3_out[32]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[32]~16_combout\ = (\amt[3]~input_o\ & ((\le1_out[40]~30_combout\))) # (!\amt[3]~input_o\ & (\le1_out[32]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[3]~input_o\,
	datac => \le1_out[32]~33_combout\,
	datad => \le1_out[40]~30_combout\,
	combout => \le3_out[32]~16_combout\);

-- Location: LCCOMB_X111_Y29_N10
\le3_out[32]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[32]~17_combout\ = (\amt[2]~input_o\ & (\le3_out[36]~15_combout\)) # (!\amt[2]~input_o\ & ((\le3_out[32]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datac => \le3_out[36]~15_combout\,
	datad => \le3_out[32]~16_combout\,
	combout => \le3_out[32]~17_combout\);

-- Location: LCCOMB_X111_Y29_N0
\le5_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~2_combout\ = (\amt[5]~input_o\ & (((\amt[4]~input_o\) # (\le3_out[32]~17_combout\)))) # (!\amt[5]~input_o\ & (\le3_out[0]~20_combout\ & (!\amt[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \le3_out[0]~20_combout\,
	datac => \amt[4]~input_o\,
	datad => \le3_out[32]~17_combout\,
	combout => \le5_out~2_combout\);

-- Location: LCCOMB_X111_Y29_N2
\le5_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~3_combout\ = (\amt[4]~input_o\ & ((\le5_out~2_combout\ & ((\le3_out[48]~10_combout\))) # (!\le5_out~2_combout\ & (\le3_out[16]~14_combout\)))) # (!\amt[4]~input_o\ & (((\le5_out~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \le3_out[16]~14_combout\,
	datac => \le3_out[48]~10_combout\,
	datad => \le5_out~2_combout\,
	combout => \le5_out~3_combout\);

-- Location: LCCOMB_X114_Y31_N6
\le1_out[34]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[34]~51_combout\ = (\amt[1]~input_o\ & (\a[36]~input_o\)) # (!\amt[1]~input_o\ & ((\a[34]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \a[36]~input_o\,
	datad => \a[34]~input_o\,
	combout => \le1_out[34]~51_combout\);

-- Location: LCCOMB_X114_Y31_N20
\le1_out[33]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[33]~52_combout\ = (\amt[0]~input_o\ & ((\le1_out[34]~51_combout\))) # (!\amt[0]~input_o\ & (\le1_out[33]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[0]~input_o\,
	datac => \le1_out[33]~31_combout\,
	datad => \le1_out[34]~51_combout\,
	combout => \le1_out[33]~52_combout\);

-- Location: IOIBUF_X111_Y0_N8
\a[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(44),
	o => \a[44]~input_o\);

-- Location: LCCOMB_X114_Y30_N24
\le1_out[42]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[42]~49_combout\ = (\amt[1]~input_o\ & ((\a[44]~input_o\))) # (!\amt[1]~input_o\ & (\a[42]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \a[42]~input_o\,
	datad => \a[44]~input_o\,
	combout => \le1_out[42]~49_combout\);

-- Location: LCCOMB_X113_Y30_N0
\le1_out[41]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[41]~50_combout\ = (\amt[0]~input_o\ & (\le1_out[42]~49_combout\)) # (!\amt[0]~input_o\ & ((\le1_out[41]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[0]~input_o\,
	datac => \le1_out[42]~49_combout\,
	datad => \le1_out[41]~28_combout\,
	combout => \le1_out[41]~50_combout\);

-- Location: LCCOMB_X113_Y30_N2
\le3_out[33]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[33]~22_combout\ = (\amt[3]~input_o\ & ((\le1_out[41]~50_combout\))) # (!\amt[3]~input_o\ & (\le1_out[33]~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datac => \le1_out[33]~52_combout\,
	datad => \le1_out[41]~50_combout\,
	combout => \le3_out[33]~22_combout\);

-- Location: LCCOMB_X114_Y30_N22
\le3_out[33]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[33]~23_combout\ = (\amt[2]~input_o\ & (\le3_out[37]~21_combout\)) # (!\amt[2]~input_o\ & ((\le3_out[33]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le3_out[37]~21_combout\,
	datac => \amt[2]~input_o\,
	datad => \le3_out[33]~22_combout\,
	combout => \le3_out[33]~23_combout\);

-- Location: LCCOMB_X113_Y29_N2
\le1_out[50]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[50]~61_combout\ = (\amt[1]~input_o\ & (\a[52]~input_o\)) # (!\amt[1]~input_o\ & ((\a[50]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[52]~input_o\,
	datac => \amt[1]~input_o\,
	datad => \a[50]~input_o\,
	combout => \le1_out[50]~61_combout\);

-- Location: LCCOMB_X113_Y29_N12
\le1_out[49]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[49]~62_combout\ = (\amt[0]~input_o\ & (\le1_out[50]~61_combout\)) # (!\amt[0]~input_o\ & ((\le1_out[49]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \le1_out[50]~61_combout\,
	datac => \amt[0]~input_o\,
	datad => \le1_out[49]~8_combout\,
	combout => \le1_out[49]~62_combout\);

-- Location: LCCOMB_X112_Y29_N28
\le1_out[54]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[54]~63_combout\ = (\amt[1]~input_o\ & ((\a[56]~input_o\))) # (!\amt[1]~input_o\ & (\a[54]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \a[54]~input_o\,
	datad => \a[56]~input_o\,
	combout => \le1_out[54]~63_combout\);

-- Location: LCCOMB_X112_Y29_N22
\le1_out[53]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[53]~64_combout\ = (\amt[0]~input_o\ & ((\le1_out[54]~63_combout\))) # (!\amt[0]~input_o\ & (\le1_out[53]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \le1_out[53]~0_combout\,
	datac => \amt[0]~input_o\,
	datad => \le1_out[54]~63_combout\,
	combout => \le1_out[53]~64_combout\);

-- Location: LCCOMB_X114_Y32_N20
\le3_out[49]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[49]~28_combout\ = (\le3_out[0]~9_combout\ & ((\le1_out[49]~62_combout\) # ((\le3_out[0]~4_combout\ & \le1_out[53]~64_combout\)))) # (!\le3_out[0]~9_combout\ & (((\le3_out[0]~4_combout\ & \le1_out[53]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le3_out[0]~9_combout\,
	datab => \le1_out[49]~62_combout\,
	datac => \le3_out[0]~4_combout\,
	datad => \le1_out[53]~64_combout\,
	combout => \le3_out[49]~28_combout\);

-- Location: LCCOMB_X112_Y29_N6
\le1_out[58]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[58]~60_combout\ = (\amt[1]~input_o\ & (\a[60]~input_o\)) # (!\amt[1]~input_o\ & ((\a[58]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[60]~input_o\,
	datac => \a[58]~input_o\,
	datad => \amt[1]~input_o\,
	combout => \le1_out[58]~60_combout\);

-- Location: LCCOMB_X113_Y32_N18
\le3_out[49]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[49]~27_combout\ = (\le3_out[0]~6_combout\ & ((\amt[0]~input_o\ & ((\le1_out[58]~60_combout\))) # (!\amt[0]~input_o\ & (\le1_out[57]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \le1_out[57]~5_combout\,
	datac => \le1_out[58]~60_combout\,
	datad => \le3_out[0]~6_combout\,
	combout => \le3_out[49]~27_combout\);

-- Location: LCCOMB_X114_Y32_N14
\le3_out[49]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[49]~29_combout\ = (\le3_out[49]~28_combout\) # ((\le3_out[49]~27_combout\) # ((\le1_out[61]~66_combout\ & \le3_out[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le1_out[61]~66_combout\,
	datab => \le3_out[49]~28_combout\,
	datac => \le3_out[0]~7_combout\,
	datad => \le3_out[49]~27_combout\,
	combout => \le3_out[49]~29_combout\);

-- Location: IOIBUF_X107_Y0_N1
\a[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(18),
	o => \a[18]~input_o\);

-- Location: LCCOMB_X108_Y32_N26
\le1_out[18]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[18]~69_combout\ = (\amt[1]~input_o\ & ((\a[20]~input_o\))) # (!\amt[1]~input_o\ & (\a[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \a[18]~input_o\,
	datad => \a[20]~input_o\,
	combout => \le1_out[18]~69_combout\);

-- Location: IOIBUF_X107_Y0_N8
\a[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(17),
	o => \a[17]~input_o\);

-- Location: IOIBUF_X115_Y56_N15
\a[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(19),
	o => \a[19]~input_o\);

-- Location: LCCOMB_X108_Y32_N16
\le1_out[17]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[17]~14_combout\ = (\amt[1]~input_o\ & ((\a[19]~input_o\))) # (!\amt[1]~input_o\ & (\a[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \a[17]~input_o\,
	datad => \a[19]~input_o\,
	combout => \le1_out[17]~14_combout\);

-- Location: LCCOMB_X108_Y32_N12
\le1_out[17]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[17]~70_combout\ = (\amt[0]~input_o\ & (\le1_out[18]~69_combout\)) # (!\amt[0]~input_o\ & ((\le1_out[17]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datac => \le1_out[18]~69_combout\,
	datad => \le1_out[17]~14_combout\,
	combout => \le1_out[17]~70_combout\);

-- Location: LCCOMB_X113_Y30_N24
\le3_out[17]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[17]~30_combout\ = (!\amt[2]~input_o\ & ((\amt[3]~input_o\ & (\le1_out[25]~68_combout\)) # (!\amt[3]~input_o\ & ((\le1_out[17]~70_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le1_out[25]~68_combout\,
	datab => \amt[3]~input_o\,
	datac => \le1_out[17]~70_combout\,
	datad => \amt[2]~input_o\,
	combout => \le3_out[17]~30_combout\);

-- Location: LCCOMB_X114_Y31_N14
\le1_out[30]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[30]~72_combout\ = (\amt[1]~input_o\ & (\a[32]~input_o\)) # (!\amt[1]~input_o\ & ((\a[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \a[32]~input_o\,
	datad => \a[30]~input_o\,
	combout => \le1_out[30]~72_combout\);

-- Location: LCCOMB_X114_Y31_N8
\le1_out[29]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[29]~73_combout\ = (\amt[0]~input_o\ & (\le1_out[30]~72_combout\)) # (!\amt[0]~input_o\ & ((\le1_out[29]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[0]~input_o\,
	datac => \le1_out[30]~72_combout\,
	datad => \le1_out[29]~19_combout\,
	combout => \le1_out[29]~73_combout\);

-- Location: LCCOMB_X109_Y31_N28
\le1_out[22]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[22]~71_combout\ = (\amt[1]~input_o\ & (\a[24]~input_o\)) # (!\amt[1]~input_o\ & ((\a[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[1]~input_o\,
	datac => \a[24]~input_o\,
	datad => \a[22]~input_o\,
	combout => \le1_out[22]~71_combout\);

-- Location: LCCOMB_X109_Y31_N2
\le3_out[17]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[17]~31_combout\ = (!\amt[3]~input_o\ & ((\amt[0]~input_o\ & ((\le1_out[22]~71_combout\))) # (!\amt[0]~input_o\ & (\le1_out[21]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \le1_out[21]~17_combout\,
	datac => \amt[3]~input_o\,
	datad => \le1_out[22]~71_combout\,
	combout => \le3_out[17]~31_combout\);

-- Location: LCCOMB_X109_Y31_N0
\le3_out[21]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[21]~32_combout\ = (\le3_out[17]~31_combout\) # ((\amt[3]~input_o\ & \le1_out[29]~73_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[3]~input_o\,
	datac => \le1_out[29]~73_combout\,
	datad => \le3_out[17]~31_combout\,
	combout => \le3_out[21]~32_combout\);

-- Location: LCCOMB_X114_Y32_N4
\le3_out[17]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[17]~33_combout\ = (\le3_out[17]~30_combout\) # ((\amt[2]~input_o\ & \le3_out[21]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[2]~input_o\,
	datac => \le3_out[17]~30_combout\,
	datad => \le3_out[21]~32_combout\,
	combout => \le3_out[17]~33_combout\);

-- Location: LCCOMB_X114_Y32_N26
\le5_out~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~4_combout\ = (\amt[5]~input_o\ & ((\le3_out[49]~29_combout\) # ((!\amt[4]~input_o\)))) # (!\amt[5]~input_o\ & (((\le3_out[17]~33_combout\ & \amt[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \le3_out[49]~29_combout\,
	datac => \le3_out[17]~33_combout\,
	datad => \amt[4]~input_o\,
	combout => \le5_out~4_combout\);

-- Location: IOIBUF_X105_Y0_N8
\a[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(10),
	o => \a[10]~input_o\);

-- Location: LCCOMB_X109_Y32_N22
\le1_out[10]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[10]~58_combout\ = (\amt[1]~input_o\ & ((\a[12]~input_o\))) # (!\amt[1]~input_o\ & (\a[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \a[10]~input_o\,
	datad => \a[12]~input_o\,
	combout => \le1_out[10]~58_combout\);

-- Location: IOIBUF_X105_Y0_N1
\a[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(9),
	o => \a[9]~input_o\);

-- Location: IOIBUF_X105_Y0_N15
\a[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(11),
	o => \a[11]~input_o\);

-- Location: LCCOMB_X109_Y32_N20
\le1_out[9]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[9]~36_combout\ = (\amt[1]~input_o\ & ((\a[11]~input_o\))) # (!\amt[1]~input_o\ & (\a[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[9]~input_o\,
	datac => \a[11]~input_o\,
	datad => \amt[1]~input_o\,
	combout => \le1_out[9]~36_combout\);

-- Location: LCCOMB_X109_Y32_N24
\le1_out[9]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[9]~59_combout\ = (\amt[0]~input_o\ & (\le1_out[10]~58_combout\)) # (!\amt[0]~input_o\ & ((\le1_out[9]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datac => \le1_out[10]~58_combout\,
	datad => \le1_out[9]~36_combout\,
	combout => \le1_out[9]~59_combout\);

-- Location: IOIBUF_X100_Y0_N15
\a[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(16),
	o => \a[16]~input_o\);

-- Location: LCCOMB_X108_Y32_N4
\le1_out[14]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[14]~57_combout\ = (\amt[1]~input_o\ & ((\a[16]~input_o\))) # (!\amt[1]~input_o\ & (\a[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[14]~input_o\,
	datac => \amt[1]~input_o\,
	datad => \a[16]~input_o\,
	combout => \le1_out[14]~57_combout\);

-- Location: LCCOMB_X109_Y32_N12
\le3_out[1]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[1]~25_combout\ = (\le3_out[0]~7_combout\ & ((\amt[0]~input_o\ & ((\le1_out[14]~57_combout\))) # (!\amt[0]~input_o\ & (\le1_out[13]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \le1_out[13]~39_combout\,
	datac => \le3_out[0]~7_combout\,
	datad => \le1_out[14]~57_combout\,
	combout => \le3_out[1]~25_combout\);

-- Location: LCCOMB_X114_Y32_N10
\le3_out[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[1]~26_combout\ = (\le3_out[1]~24_combout\) # ((\le3_out[1]~25_combout\) # ((\le3_out[0]~6_combout\ & \le1_out[9]~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le3_out[1]~24_combout\,
	datab => \le3_out[0]~6_combout\,
	datac => \le1_out[9]~59_combout\,
	datad => \le3_out[1]~25_combout\,
	combout => \le3_out[1]~26_combout\);

-- Location: LCCOMB_X114_Y32_N0
\le5_out~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~5_combout\ = (\amt[4]~input_o\ & (((\le5_out~4_combout\)))) # (!\amt[4]~input_o\ & ((\le5_out~4_combout\ & (\le3_out[33]~23_combout\)) # (!\le5_out~4_combout\ & ((\le3_out[1]~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le3_out[33]~23_combout\,
	datab => \amt[4]~input_o\,
	datac => \le5_out~4_combout\,
	datad => \le3_out[1]~26_combout\,
	combout => \le5_out~5_combout\);

-- Location: LCCOMB_X112_Y29_N4
\le1_out[59]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[59]~83_combout\ = (\amt[1]~input_o\ & (\a[61]~input_o\)) # (!\amt[1]~input_o\ & ((\a[59]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[61]~input_o\,
	datac => \a[59]~input_o\,
	datad => \amt[1]~input_o\,
	combout => \le1_out[59]~83_combout\);

-- Location: LCCOMB_X112_Y29_N10
\le1_out[58]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[58]~84_combout\ = (\amt[0]~input_o\ & (\le1_out[59]~83_combout\)) # (!\amt[0]~input_o\ & ((\le1_out[58]~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[0]~input_o\,
	datac => \le1_out[59]~83_combout\,
	datad => \le1_out[58]~60_combout\,
	combout => \le1_out[58]~84_combout\);

-- Location: IOIBUF_X115_Y46_N1
\lar[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_lar(1),
	o => \lar[1]~input_o\);

-- Location: LCCOMB_X111_Y33_N2
\le1_out[62]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[62]~77_combout\ = (\lar[1]~input_o\ & \amt[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lar[1]~input_o\,
	datad => \amt[1]~input_o\,
	combout => \le1_out[62]~77_combout\);

-- Location: IOIBUF_X115_Y5_N15
\a[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: LCCOMB_X111_Y33_N4
\le1_out[62]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[62]~76_combout\ = (\amt[0]~input_o\ & (\a[1]~input_o\)) # (!\amt[0]~input_o\ & ((\a[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[0]~input_o\,
	datac => \a[1]~input_o\,
	datad => \a[0]~input_o\,
	combout => \le1_out[62]~76_combout\);

-- Location: LCCOMB_X111_Y33_N16
\le1_out[62]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[62]~74_combout\ = (!\amt[1]~input_o\ & ((\amt[0]~input_o\ & (\a[63]~input_o\)) # (!\amt[0]~input_o\ & ((\a[62]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[63]~input_o\,
	datab => \amt[1]~input_o\,
	datac => \a[62]~input_o\,
	datad => \amt[0]~input_o\,
	combout => \le1_out[62]~74_combout\);

-- Location: LCCOMB_X111_Y33_N20
\le1_out[62]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[62]~78_combout\ = (\le1_out[62]~75_combout\) # ((\le1_out[62]~74_combout\) # ((\le1_out[62]~77_combout\ & \le1_out[62]~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le1_out[62]~75_combout\,
	datab => \le1_out[62]~77_combout\,
	datac => \le1_out[62]~76_combout\,
	datad => \le1_out[62]~74_combout\,
	combout => \le1_out[62]~78_combout\);

-- Location: LCCOMB_X110_Y31_N30
\le3_out[50]~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[50]~170_combout\ = (\amt[3]~input_o\ & (\amt[2]~input_o\ & \le1_out[62]~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datac => \amt[2]~input_o\,
	datad => \le1_out[62]~78_combout\,
	combout => \le3_out[50]~170_combout\);

-- Location: LCCOMB_X113_Y29_N8
\le1_out[50]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[50]~82_combout\ = (\amt[0]~input_o\ & (\le1_out[51]~81_combout\)) # (!\amt[0]~input_o\ & ((\le1_out[50]~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le1_out[51]~81_combout\,
	datac => \amt[0]~input_o\,
	datad => \le1_out[50]~61_combout\,
	combout => \le1_out[50]~82_combout\);

-- Location: LCCOMB_X112_Y29_N24
\le1_out[55]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[55]~79_combout\ = (\amt[1]~input_o\ & ((\a[57]~input_o\))) # (!\amt[1]~input_o\ & (\a[55]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[55]~input_o\,
	datac => \a[57]~input_o\,
	datad => \amt[1]~input_o\,
	combout => \le1_out[55]~79_combout\);

-- Location: LCCOMB_X112_Y29_N30
\le1_out[54]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[54]~80_combout\ = (\amt[0]~input_o\ & (\le1_out[55]~79_combout\)) # (!\amt[0]~input_o\ & ((\le1_out[54]~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \le1_out[55]~79_combout\,
	datac => \amt[0]~input_o\,
	datad => \le1_out[54]~63_combout\,
	combout => \le1_out[54]~80_combout\);

-- Location: LCCOMB_X113_Y30_N18
\le3_out[50]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[50]~34_combout\ = (!\amt[3]~input_o\ & ((\amt[2]~input_o\ & ((\le1_out[54]~80_combout\))) # (!\amt[2]~input_o\ & (\le1_out[50]~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datab => \le1_out[50]~82_combout\,
	datac => \le1_out[54]~80_combout\,
	datad => \amt[3]~input_o\,
	combout => \le3_out[50]~34_combout\);

-- Location: LCCOMB_X110_Y30_N4
\le3_out[50]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[50]~35_combout\ = (\le3_out[50]~170_combout\) # ((\le3_out[50]~34_combout\) # ((\le3_out[0]~6_combout\ & \le1_out[58]~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le3_out[0]~6_combout\,
	datab => \le1_out[58]~84_combout\,
	datac => \le3_out[50]~170_combout\,
	datad => \le3_out[50]~34_combout\,
	combout => \le3_out[50]~35_combout\);

-- Location: LCCOMB_X109_Y32_N26
\le1_out[7]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[7]~105_combout\ = (\amt[1]~input_o\ & (\a[9]~input_o\)) # (!\amt[1]~input_o\ & ((\a[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \a[9]~input_o\,
	datad => \a[7]~input_o\,
	combout => \le1_out[7]~105_combout\);

-- Location: IOIBUF_X115_Y62_N22
\a[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(8),
	o => \a[8]~input_o\);

-- Location: LCCOMB_X112_Y33_N22
\le1_out[6]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[6]~55_combout\ = (\amt[1]~input_o\ & ((\a[8]~input_o\))) # (!\amt[1]~input_o\ & (\a[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[1]~input_o\,
	datac => \a[6]~input_o\,
	datad => \a[8]~input_o\,
	combout => \le1_out[6]~55_combout\);

-- Location: LCCOMB_X111_Y32_N6
\le1_out[6]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[6]~106_combout\ = (\amt[0]~input_o\ & (\le1_out[7]~105_combout\)) # (!\amt[0]~input_o\ & ((\le1_out[6]~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datac => \le1_out[7]~105_combout\,
	datad => \le1_out[6]~55_combout\,
	combout => \le1_out[6]~106_combout\);

-- Location: IOIBUF_X115_Y57_N15
\a[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: LCCOMB_X112_Y33_N28
\le1_out[2]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[2]~53_combout\ = (\amt[1]~input_o\ & ((\a[4]~input_o\))) # (!\amt[1]~input_o\ & (\a[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[1]~input_o\,
	datac => \a[2]~input_o\,
	datad => \a[4]~input_o\,
	combout => \le1_out[2]~53_combout\);

-- Location: LCCOMB_X110_Y32_N30
\le3_out[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[0]~9_combout\ = (!\amt[2]~input_o\ & !\amt[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \amt[2]~input_o\,
	datad => \amt[3]~input_o\,
	combout => \le3_out[0]~9_combout\);

-- Location: LCCOMB_X111_Y32_N24
\le3_out[2]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[2]~43_combout\ = (\le3_out[0]~9_combout\ & ((\amt[0]~input_o\ & (\le1_out[3]~100_combout\)) # (!\amt[0]~input_o\ & ((\le1_out[2]~53_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le1_out[3]~100_combout\,
	datab => \le1_out[2]~53_combout\,
	datac => \amt[0]~input_o\,
	datad => \le3_out[0]~9_combout\,
	combout => \le3_out[2]~43_combout\);

-- Location: LCCOMB_X110_Y30_N20
\le3_out[2]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[2]~45_combout\ = (\le3_out[2]~44_combout\) # ((\le3_out[2]~43_combout\) # ((\le3_out[0]~4_combout\ & \le1_out[6]~106_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le3_out[2]~44_combout\,
	datab => \le3_out[0]~4_combout\,
	datac => \le1_out[6]~106_combout\,
	datad => \le3_out[2]~43_combout\,
	combout => \le3_out[2]~45_combout\);

-- Location: IOIBUF_X98_Y0_N15
\amt[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_amt(5),
	o => \amt[5]~input_o\);

-- Location: LCCOMB_X113_Y31_N30
\le1_out[34]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[34]~99_combout\ = (\amt[0]~input_o\ & (\le1_out[35]~98_combout\)) # (!\amt[0]~input_o\ & ((\le1_out[34]~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le1_out[35]~98_combout\,
	datac => \amt[0]~input_o\,
	datad => \le1_out[34]~51_combout\,
	combout => \le1_out[34]~99_combout\);

-- Location: LCCOMB_X114_Y30_N4
\le1_out[43]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[43]~96_combout\ = (\amt[1]~input_o\ & (\a[45]~input_o\)) # (!\amt[1]~input_o\ & ((\a[43]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \a[45]~input_o\,
	datad => \a[43]~input_o\,
	combout => \le1_out[43]~96_combout\);

-- Location: LCCOMB_X114_Y30_N6
\le1_out[42]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[42]~97_combout\ = (\amt[0]~input_o\ & (\le1_out[43]~96_combout\)) # (!\amt[0]~input_o\ & ((\le1_out[42]~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datac => \le1_out[43]~96_combout\,
	datad => \le1_out[42]~49_combout\,
	combout => \le1_out[42]~97_combout\);

-- Location: LCCOMB_X113_Y30_N14
\le3_out[34]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[34]~41_combout\ = (\amt[3]~input_o\ & ((\le1_out[42]~97_combout\))) # (!\amt[3]~input_o\ & (\le1_out[34]~99_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datac => \le1_out[34]~99_combout\,
	datad => \le1_out[42]~97_combout\,
	combout => \le3_out[34]~41_combout\);

-- Location: LCCOMB_X114_Y30_N26
\le1_out[38]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[38]~47_combout\ = (\amt[1]~input_o\ & ((\a[40]~input_o\))) # (!\amt[1]~input_o\ & (\a[38]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \a[38]~input_o\,
	datad => \a[40]~input_o\,
	combout => \le1_out[38]~47_combout\);

-- Location: IOIBUF_X115_Y66_N15
\a[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(39),
	o => \a[39]~input_o\);

-- Location: LCCOMB_X114_Y30_N20
\le1_out[39]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[39]~94_combout\ = (\amt[1]~input_o\ & (\a[41]~input_o\)) # (!\amt[1]~input_o\ & ((\a[39]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \a[41]~input_o\,
	datad => \a[39]~input_o\,
	combout => \le1_out[39]~94_combout\);

-- Location: LCCOMB_X114_Y30_N14
\le1_out[38]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[38]~95_combout\ = (\amt[0]~input_o\ & ((\le1_out[39]~94_combout\))) # (!\amt[0]~input_o\ & (\le1_out[38]~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datac => \le1_out[38]~47_combout\,
	datad => \le1_out[39]~94_combout\,
	combout => \le1_out[38]~95_combout\);

-- Location: LCCOMB_X113_Y29_N14
\le1_out[47]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[47]~92_combout\ = (\amt[1]~input_o\ & ((\a[49]~input_o\))) # (!\amt[1]~input_o\ & (\a[47]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[47]~input_o\,
	datac => \amt[1]~input_o\,
	datad => \a[49]~input_o\,
	combout => \le1_out[47]~92_combout\);

-- Location: IOIBUF_X111_Y0_N1
\a[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(46),
	o => \a[46]~input_o\);

-- Location: LCCOMB_X113_Y29_N18
\le1_out[46]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[46]~45_combout\ = (\amt[1]~input_o\ & (\a[48]~input_o\)) # (!\amt[1]~input_o\ & ((\a[46]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[48]~input_o\,
	datac => \amt[1]~input_o\,
	datad => \a[46]~input_o\,
	combout => \le1_out[46]~45_combout\);

-- Location: LCCOMB_X113_Y29_N0
\le1_out[46]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[46]~93_combout\ = (\amt[0]~input_o\ & (\le1_out[47]~92_combout\)) # (!\amt[0]~input_o\ & ((\le1_out[46]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[0]~input_o\,
	datac => \le1_out[47]~92_combout\,
	datad => \le1_out[46]~45_combout\,
	combout => \le1_out[46]~93_combout\);

-- Location: LCCOMB_X113_Y30_N12
\le3_out[38]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[38]~40_combout\ = (\amt[3]~input_o\ & ((\le1_out[46]~93_combout\))) # (!\amt[3]~input_o\ & (\le1_out[38]~95_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datac => \le1_out[38]~95_combout\,
	datad => \le1_out[46]~93_combout\,
	combout => \le3_out[38]~40_combout\);

-- Location: LCCOMB_X113_Y30_N8
\le3_out[34]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[34]~42_combout\ = (\amt[2]~input_o\ & ((\le3_out[38]~40_combout\))) # (!\amt[2]~input_o\ & (\le3_out[34]~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datac => \le3_out[34]~41_combout\,
	datad => \le3_out[38]~40_combout\,
	combout => \le3_out[34]~42_combout\);

-- Location: LCCOMB_X110_Y30_N22
\le5_out~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~6_combout\ = (\amt[4]~input_o\ & (((\amt[5]~input_o\)))) # (!\amt[4]~input_o\ & ((\amt[5]~input_o\ & ((\le3_out[34]~42_combout\))) # (!\amt[5]~input_o\ & (\le3_out[2]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \le3_out[2]~45_combout\,
	datac => \amt[5]~input_o\,
	datad => \le3_out[34]~42_combout\,
	combout => \le5_out~6_combout\);

-- Location: LCCOMB_X114_Y31_N12
\le1_out[30]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[30]~91_combout\ = (\amt[0]~input_o\ & (\le1_out[31]~90_combout\)) # (!\amt[0]~input_o\ & ((\le1_out[30]~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le1_out[31]~90_combout\,
	datab => \amt[0]~input_o\,
	datac => \le1_out[30]~72_combout\,
	combout => \le1_out[30]~91_combout\);

-- Location: LCCOMB_X109_Y31_N22
\le1_out[23]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[23]~89_combout\ = (\amt[1]~input_o\ & (\a[25]~input_o\)) # (!\amt[1]~input_o\ & ((\a[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[1]~input_o\,
	datac => \a[25]~input_o\,
	datad => \a[23]~input_o\,
	combout => \le1_out[23]~89_combout\);

-- Location: LCCOMB_X109_Y31_N12
\le3_out[18]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[18]~37_combout\ = (!\amt[3]~input_o\ & ((\amt[0]~input_o\ & (\le1_out[23]~89_combout\)) # (!\amt[0]~input_o\ & ((\le1_out[22]~71_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \amt[3]~input_o\,
	datac => \le1_out[23]~89_combout\,
	datad => \le1_out[22]~71_combout\,
	combout => \le3_out[18]~37_combout\);

-- Location: LCCOMB_X109_Y31_N14
\le3_out[22]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[22]~38_combout\ = (\le3_out[18]~37_combout\) # ((\amt[3]~input_o\ & \le1_out[30]~91_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[3]~input_o\,
	datac => \le1_out[30]~91_combout\,
	datad => \le3_out[18]~37_combout\,
	combout => \le3_out[22]~38_combout\);

-- Location: LCCOMB_X110_Y30_N28
\le3_out[18]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[18]~39_combout\ = (\le3_out[18]~36_combout\) # ((\amt[2]~input_o\ & \le3_out[22]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le3_out[18]~36_combout\,
	datab => \amt[2]~input_o\,
	datac => \le3_out[22]~38_combout\,
	combout => \le3_out[18]~39_combout\);

-- Location: LCCOMB_X110_Y30_N24
\le5_out~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~7_combout\ = (\amt[4]~input_o\ & ((\le5_out~6_combout\ & (\le3_out[50]~35_combout\)) # (!\le5_out~6_combout\ & ((\le3_out[18]~39_combout\))))) # (!\amt[4]~input_o\ & (((\le5_out~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \le3_out[50]~35_combout\,
	datac => \le5_out~6_combout\,
	datad => \le3_out[18]~39_combout\,
	combout => \le5_out~7_combout\);

-- Location: LCCOMB_X109_Y31_N26
\le1_out[19]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[19]~87_combout\ = (\amt[1]~input_o\ & ((\a[21]~input_o\))) # (!\amt[1]~input_o\ & (\a[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[1]~input_o\,
	datac => \a[19]~input_o\,
	datad => \a[21]~input_o\,
	combout => \le1_out[19]~87_combout\);

-- Location: LCCOMB_X109_Y33_N4
\le1_out[19]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[19]~113_combout\ = (\amt[0]~input_o\ & ((\le1_out[20]~18_combout\))) # (!\amt[0]~input_o\ & (\le1_out[19]~87_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \le1_out[19]~87_combout\,
	datac => \le1_out[20]~18_combout\,
	combout => \le1_out[19]~113_combout\);

-- Location: LCCOMB_X112_Y30_N2
\le1_out[27]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[27]~85_combout\ = (\amt[1]~input_o\ & (\a[29]~input_o\)) # (!\amt[1]~input_o\ & ((\a[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \a[29]~input_o\,
	datad => \a[27]~input_o\,
	combout => \le1_out[27]~85_combout\);

-- Location: LCCOMB_X112_Y30_N10
\le1_out[27]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[27]~112_combout\ = (\amt[0]~input_o\ & (\le1_out[28]~20_combout\)) # (!\amt[0]~input_o\ & ((\le1_out[27]~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[0]~input_o\,
	datac => \le1_out[28]~20_combout\,
	datad => \le1_out[27]~85_combout\,
	combout => \le1_out[27]~112_combout\);

-- Location: LCCOMB_X109_Y33_N14
\le3_out[19]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[19]~49_combout\ = (!\amt[2]~input_o\ & ((\amt[3]~input_o\ & ((\le1_out[27]~112_combout\))) # (!\amt[3]~input_o\ & (\le1_out[19]~113_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datab => \le1_out[19]~113_combout\,
	datac => \le1_out[27]~112_combout\,
	datad => \amt[2]~input_o\,
	combout => \le3_out[19]~49_combout\);

-- Location: LCCOMB_X109_Y33_N8
\le3_out[19]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[19]~50_combout\ = (!\amt[3]~input_o\ & ((\amt[0]~input_o\ & ((\le1_out[24]~12_combout\))) # (!\amt[0]~input_o\ & (\le1_out[23]~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \amt[3]~input_o\,
	datac => \le1_out[23]~89_combout\,
	datad => \le1_out[24]~12_combout\,
	combout => \le3_out[19]~50_combout\);

-- Location: LCCOMB_X114_Y31_N26
\le1_out[31]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[31]~90_combout\ = (\amt[1]~input_o\ & (\a[33]~input_o\)) # (!\amt[1]~input_o\ & ((\a[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \a[33]~input_o\,
	datad => \a[31]~input_o\,
	combout => \le1_out[31]~90_combout\);

-- Location: LCCOMB_X114_Y31_N24
\le1_out[31]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[31]~114_combout\ = (\amt[0]~input_o\ & ((\le1_out[32]~32_combout\))) # (!\amt[0]~input_o\ & (\le1_out[31]~90_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[0]~input_o\,
	datac => \le1_out[31]~90_combout\,
	datad => \le1_out[32]~32_combout\,
	combout => \le1_out[31]~114_combout\);

-- Location: LCCOMB_X109_Y33_N22
\le3_out[23]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[23]~51_combout\ = (\le3_out[19]~50_combout\) # ((\amt[3]~input_o\ & \le1_out[31]~114_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[3]~input_o\,
	datac => \le3_out[19]~50_combout\,
	datad => \le1_out[31]~114_combout\,
	combout => \le3_out[23]~51_combout\);

-- Location: LCCOMB_X109_Y33_N20
\le3_out[19]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[19]~52_combout\ = (\le3_out[19]~49_combout\) # ((\amt[2]~input_o\ & \le3_out[23]~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[2]~input_o\,
	datac => \le3_out[19]~49_combout\,
	datad => \le3_out[23]~51_combout\,
	combout => \le3_out[19]~52_combout\);

-- Location: LCCOMB_X111_Y33_N14
\le1_out[63]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[63]~110_combout\ = (\le1_out[62]~77_combout\ & ((\amt[0]~input_o\ & ((\a[2]~input_o\))) # (!\amt[0]~input_o\ & (\a[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \amt[0]~input_o\,
	datac => \a[2]~input_o\,
	datad => \le1_out[62]~77_combout\,
	combout => \le1_out[63]~110_combout\);

-- Location: IOIBUF_X115_Y22_N22
\lar[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_lar(0),
	o => \lar[0]~input_o\);

-- Location: LCCOMB_X111_Y33_N26
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\a[63]~input_o\ & (((!\lar[1]~input_o\ & \lar[0]~input_o\)) # (!\amt[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[1]~input_o\,
	datab => \amt[0]~input_o\,
	datac => \a[63]~input_o\,
	datad => \lar[0]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X111_Y33_N24
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\amt[0]~input_o\ & (\a[0]~input_o\ & \lar[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[0]~input_o\,
	datac => \a[0]~input_o\,
	datad => \lar[1]~input_o\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X111_Y33_N0
\le1_out[63]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[63]~109_combout\ = (\le5_out~8_combout\ & (((\Mux0~0_combout\) # (\Mux0~1_combout\)))) # (!\le5_out~8_combout\ & (!\amt[1]~input_o\ & ((\Mux0~0_combout\) # (\Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le5_out~8_combout\,
	datab => \amt[1]~input_o\,
	datac => \Mux0~0_combout\,
	datad => \Mux0~1_combout\,
	combout => \le1_out[63]~109_combout\);

-- Location: LCCOMB_X111_Y33_N28
\le1_out[63]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[63]~111_combout\ = (\le1_out[63]~110_combout\) # (\le1_out[63]~109_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \le1_out[63]~110_combout\,
	datad => \le1_out[63]~109_combout\,
	combout => \le1_out[63]~111_combout\);

-- Location: LCCOMB_X112_Y29_N12
\le3_out[51]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[51]~46_combout\ = (\le3_out[0]~4_combout\ & ((\amt[0]~input_o\ & (\le1_out[56]~6_combout\)) # (!\amt[0]~input_o\ & ((\le1_out[55]~79_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \le1_out[56]~6_combout\,
	datac => \le1_out[55]~79_combout\,
	datad => \le3_out[0]~4_combout\,
	combout => \le3_out[51]~46_combout\);

-- Location: LCCOMB_X113_Y29_N26
\le1_out[51]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[51]~81_combout\ = (\amt[1]~input_o\ & ((\a[53]~input_o\))) # (!\amt[1]~input_o\ & (\a[51]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[1]~input_o\,
	datac => \a[51]~input_o\,
	datad => \a[53]~input_o\,
	combout => \le1_out[51]~81_combout\);

-- Location: LCCOMB_X113_Y29_N30
\le1_out[51]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[51]~108_combout\ = (\amt[0]~input_o\ & ((\le1_out[52]~1_combout\))) # (!\amt[0]~input_o\ & (\le1_out[51]~81_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[0]~input_o\,
	datac => \le1_out[51]~81_combout\,
	datad => \le1_out[52]~1_combout\,
	combout => \le1_out[51]~108_combout\);

-- Location: LCCOMB_X113_Y33_N24
\le1_out[59]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[59]~107_combout\ = (\amt[0]~input_o\ & (\le1_out[60]~3_combout\)) # (!\amt[0]~input_o\ & ((\le1_out[59]~83_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[0]~input_o\,
	datac => \le1_out[60]~3_combout\,
	datad => \le1_out[59]~83_combout\,
	combout => \le1_out[59]~107_combout\);

-- Location: LCCOMB_X110_Y29_N24
\le3_out[51]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[51]~47_combout\ = (\le3_out[0]~9_combout\ & ((\le1_out[51]~108_combout\) # ((\le3_out[0]~6_combout\ & \le1_out[59]~107_combout\)))) # (!\le3_out[0]~9_combout\ & (((\le3_out[0]~6_combout\ & \le1_out[59]~107_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le3_out[0]~9_combout\,
	datab => \le1_out[51]~108_combout\,
	datac => \le3_out[0]~6_combout\,
	datad => \le1_out[59]~107_combout\,
	combout => \le3_out[51]~47_combout\);

-- Location: LCCOMB_X110_Y29_N26
\le3_out[51]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[51]~48_combout\ = (\le3_out[51]~46_combout\) # ((\le3_out[51]~47_combout\) # ((\le3_out[0]~7_combout\ & \le1_out[63]~111_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le3_out[0]~7_combout\,
	datab => \le1_out[63]~111_combout\,
	datac => \le3_out[51]~46_combout\,
	datad => \le3_out[51]~47_combout\,
	combout => \le3_out[51]~48_combout\);

-- Location: IOIBUF_X105_Y0_N22
\a[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(13),
	o => \a[13]~input_o\);

-- Location: LCCOMB_X109_Y32_N30
\le1_out[11]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[11]~101_combout\ = (\amt[1]~input_o\ & ((\a[13]~input_o\))) # (!\amt[1]~input_o\ & (\a[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \a[11]~input_o\,
	datad => \a[13]~input_o\,
	combout => \le1_out[11]~101_combout\);

-- Location: LCCOMB_X109_Y32_N18
\le1_out[11]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[11]~121_combout\ = (\amt[0]~input_o\ & ((\le1_out[12]~40_combout\))) # (!\amt[0]~input_o\ & (\le1_out[11]~101_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datac => \le1_out[11]~101_combout\,
	datad => \le1_out[12]~40_combout\,
	combout => \le1_out[11]~121_combout\);

-- Location: LCCOMB_X108_Y32_N2
\le1_out[15]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[15]~103_combout\ = (\amt[1]~input_o\ & (\a[17]~input_o\)) # (!\amt[1]~input_o\ & ((\a[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \a[17]~input_o\,
	datad => \a[15]~input_o\,
	combout => \le1_out[15]~103_combout\);

-- Location: LCCOMB_X108_Y32_N22
\le1_out[16]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[16]~15_combout\ = (\amt[1]~input_o\ & (\a[18]~input_o\)) # (!\amt[1]~input_o\ & ((\a[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \a[18]~input_o\,
	datad => \a[16]~input_o\,
	combout => \le1_out[16]~15_combout\);

-- Location: LCCOMB_X109_Y33_N18
\le1_out[15]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[15]~122_combout\ = (\amt[0]~input_o\ & ((\le1_out[16]~15_combout\))) # (!\amt[0]~input_o\ & (\le1_out[15]~103_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datac => \le1_out[15]~103_combout\,
	datad => \le1_out[16]~15_combout\,
	combout => \le1_out[15]~122_combout\);

-- Location: LCCOMB_X110_Y29_N14
\le3_out[3]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[3]~57_combout\ = (\le3_out[0]~6_combout\ & ((\le1_out[11]~121_combout\) # ((\le1_out[15]~122_combout\ & \le3_out[0]~7_combout\)))) # (!\le3_out[0]~6_combout\ & (((\le1_out[15]~122_combout\ & \le3_out[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le3_out[0]~6_combout\,
	datab => \le1_out[11]~121_combout\,
	datac => \le1_out[15]~122_combout\,
	datad => \le3_out[0]~7_combout\,
	combout => \le3_out[3]~57_combout\);

-- Location: IOIBUF_X115_Y17_N8
\a[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: LCCOMB_X112_Y33_N14
\le1_out[3]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[3]~100_combout\ = (\amt[1]~input_o\ & ((\a[5]~input_o\))) # (!\amt[1]~input_o\ & (\a[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datac => \amt[1]~input_o\,
	datad => \a[5]~input_o\,
	combout => \le1_out[3]~100_combout\);

-- Location: LCCOMB_X112_Y33_N0
\le1_out[3]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[3]~119_combout\ = (\amt[0]~input_o\ & (\le1_out[4]~35_combout\)) # (!\amt[0]~input_o\ & ((\le1_out[3]~100_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le1_out[4]~35_combout\,
	datab => \le1_out[3]~100_combout\,
	datac => \amt[0]~input_o\,
	combout => \le1_out[3]~119_combout\);

-- Location: LCCOMB_X109_Y32_N2
\le1_out[8]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[8]~37_combout\ = (\amt[1]~input_o\ & (\a[10]~input_o\)) # (!\amt[1]~input_o\ & ((\a[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \a[10]~input_o\,
	datad => \a[8]~input_o\,
	combout => \le1_out[8]~37_combout\);

-- Location: LCCOMB_X109_Y32_N4
\le1_out[7]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[7]~120_combout\ = (\amt[0]~input_o\ & ((\le1_out[8]~37_combout\))) # (!\amt[0]~input_o\ & (\le1_out[7]~105_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datac => \le1_out[7]~105_combout\,
	datad => \le1_out[8]~37_combout\,
	combout => \le1_out[7]~120_combout\);

-- Location: LCCOMB_X110_Y29_N20
\le3_out[3]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[3]~56_combout\ = (\le3_out[0]~9_combout\ & ((\le1_out[3]~119_combout\) # ((\le1_out[7]~120_combout\ & \le3_out[0]~4_combout\)))) # (!\le3_out[0]~9_combout\ & (((\le1_out[7]~120_combout\ & \le3_out[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le3_out[0]~9_combout\,
	datab => \le1_out[3]~119_combout\,
	datac => \le1_out[7]~120_combout\,
	datad => \le3_out[0]~4_combout\,
	combout => \le3_out[3]~56_combout\);

-- Location: LCCOMB_X110_Y29_N4
\le3_out[3]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[3]~58_combout\ = (\le3_out[3]~57_combout\) # (\le3_out[3]~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \le3_out[3]~57_combout\,
	datad => \le3_out[3]~56_combout\,
	combout => \le3_out[3]~58_combout\);

-- Location: IOIBUF_X115_Y58_N22
\a[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(37),
	o => \a[37]~input_o\);

-- Location: LCCOMB_X114_Y31_N2
\le1_out[35]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[35]~98_combout\ = (\amt[1]~input_o\ & (\a[37]~input_o\)) # (!\amt[1]~input_o\ & ((\a[35]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \a[37]~input_o\,
	datad => \a[35]~input_o\,
	combout => \le1_out[35]~98_combout\);

-- Location: LCCOMB_X114_Y31_N30
\le1_out[35]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[35]~118_combout\ = (\amt[0]~input_o\ & (\le1_out[36]~26_combout\)) # (!\amt[0]~input_o\ & ((\le1_out[35]~98_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[0]~input_o\,
	datac => \le1_out[36]~26_combout\,
	datad => \le1_out[35]~98_combout\,
	combout => \le1_out[35]~118_combout\);

-- Location: LCCOMB_X113_Y32_N24
\le1_out[43]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[43]~117_combout\ = (\amt[0]~input_o\ & (\le1_out[44]~23_combout\)) # (!\amt[0]~input_o\ & ((\le1_out[43]~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le1_out[44]~23_combout\,
	datac => \amt[0]~input_o\,
	datad => \le1_out[43]~96_combout\,
	combout => \le1_out[43]~117_combout\);

-- Location: LCCOMB_X113_Y32_N14
\le3_out[35]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[35]~54_combout\ = (\amt[3]~input_o\ & ((\le1_out[43]~117_combout\))) # (!\amt[3]~input_o\ & (\le1_out[35]~118_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[3]~input_o\,
	datac => \le1_out[35]~118_combout\,
	datad => \le1_out[43]~117_combout\,
	combout => \le3_out[35]~54_combout\);

-- Location: LCCOMB_X113_Y29_N24
\le1_out[47]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[47]~115_combout\ = (\amt[0]~input_o\ & ((\le1_out[48]~9_combout\))) # (!\amt[0]~input_o\ & (\le1_out[47]~92_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[0]~input_o\,
	datac => \le1_out[47]~92_combout\,
	datad => \le1_out[48]~9_combout\,
	combout => \le1_out[47]~115_combout\);

-- Location: LCCOMB_X113_Y32_N12
\le1_out[39]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[39]~116_combout\ = (\amt[0]~input_o\ & (\le1_out[40]~29_combout\)) # (!\amt[0]~input_o\ & ((\le1_out[39]~94_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datac => \le1_out[40]~29_combout\,
	datad => \le1_out[39]~94_combout\,
	combout => \le1_out[39]~116_combout\);

-- Location: LCCOMB_X113_Y32_N6
\le3_out[39]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[39]~53_combout\ = (\amt[3]~input_o\ & (\le1_out[47]~115_combout\)) # (!\amt[3]~input_o\ & ((\le1_out[39]~116_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[3]~input_o\,
	datac => \le1_out[47]~115_combout\,
	datad => \le1_out[39]~116_combout\,
	combout => \le3_out[39]~53_combout\);

-- Location: LCCOMB_X113_Y32_N8
\le3_out[35]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[35]~55_combout\ = (\amt[2]~input_o\ & ((\le3_out[39]~53_combout\))) # (!\amt[2]~input_o\ & (\le3_out[35]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[2]~input_o\,
	datac => \le3_out[35]~54_combout\,
	datad => \le3_out[39]~53_combout\,
	combout => \le3_out[35]~55_combout\);

-- Location: LCCOMB_X110_Y29_N18
\le5_out~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~9_combout\ = (\amt[4]~input_o\ & (\amt[5]~input_o\)) # (!\amt[4]~input_o\ & ((\amt[5]~input_o\ & ((\le3_out[35]~55_combout\))) # (!\amt[5]~input_o\ & (\le3_out[3]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \amt[5]~input_o\,
	datac => \le3_out[3]~58_combout\,
	datad => \le3_out[35]~55_combout\,
	combout => \le5_out~9_combout\);

-- Location: LCCOMB_X110_Y29_N28
\le5_out~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~10_combout\ = (\amt[4]~input_o\ & ((\le5_out~9_combout\ & ((\le3_out[51]~48_combout\))) # (!\le5_out~9_combout\ & (\le3_out[19]~52_combout\)))) # (!\amt[4]~input_o\ & (((\le5_out~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le3_out[19]~52_combout\,
	datab => \amt[4]~input_o\,
	datac => \le3_out[51]~48_combout\,
	datad => \le5_out~9_combout\,
	combout => \le5_out~10_combout\);

-- Location: LCCOMB_X114_Y30_N16
\le3_out[40]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[40]~59_combout\ = (\amt[3]~input_o\ & (\le1_out[48]~10_combout\)) # (!\amt[3]~input_o\ & ((\le1_out[40]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[3]~input_o\,
	datac => \le1_out[48]~10_combout\,
	datad => \le1_out[40]~30_combout\,
	combout => \le3_out[40]~59_combout\);

-- Location: LCCOMB_X111_Y30_N6
\le3_out[36]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[36]~60_combout\ = (\amt[2]~input_o\ & ((\le3_out[40]~59_combout\))) # (!\amt[2]~input_o\ & (\le3_out[36]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datab => \le3_out[36]~15_combout\,
	datad => \le3_out[40]~59_combout\,
	combout => \le3_out[36]~60_combout\);

-- Location: LCCOMB_X112_Y30_N4
\le1_out[52]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[52]~123_combout\ = (\amt[0]~input_o\ & (\le1_out[53]~0_combout\)) # (!\amt[0]~input_o\ & ((\le1_out[52]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \le1_out[53]~0_combout\,
	datac => \amt[0]~input_o\,
	datad => \le1_out[52]~1_combout\,
	combout => \le1_out[52]~123_combout\);

-- Location: LCCOMB_X111_Y32_N30
\le3_out[52]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[52]~64_combout\ = (!\amt[3]~input_o\ & ((\amt[2]~input_o\ & (\le1_out[56]~7_combout\)) # (!\amt[2]~input_o\ & ((\le1_out[52]~123_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datab => \amt[3]~input_o\,
	datac => \le1_out[56]~7_combout\,
	datad => \le1_out[52]~123_combout\,
	combout => \le3_out[52]~64_combout\);

-- Location: LCCOMB_X111_Y33_N18
\le1_out[62]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[62]~124_combout\ = (!\lar[1]~input_o\ & (\a[63]~input_o\ & \lar[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[1]~input_o\,
	datac => \a[63]~input_o\,
	datad => \lar[0]~input_o\,
	combout => \le1_out[62]~124_combout\);

-- Location: LCCOMB_X112_Y33_N2
\le2_out[60]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \le2_out[60]~0_combout\ = (\lar[1]~input_o\ & \amt[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lar[1]~input_o\,
	datad => \amt[2]~input_o\,
	combout => \le2_out[60]~0_combout\);

-- Location: LCCOMB_X112_Y32_N18
\le2_out[60]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \le2_out[60]~1_combout\ = (\le2_out[60]~0_combout\ & ((\le1_out[0]~42_combout\) # ((\amt[0]~input_o\ & \le1_out[1]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le1_out[0]~42_combout\,
	datab => \amt[0]~input_o\,
	datac => \le1_out[1]~43_combout\,
	datad => \le2_out[60]~0_combout\,
	combout => \le2_out[60]~1_combout\);

-- Location: LCCOMB_X112_Y32_N16
\le2_out[60]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \le2_out[60]~2_combout\ = (\le2_out[60]~1_combout\) # ((\amt[2]~input_o\ & ((\le1_out[62]~124_combout\))) # (!\amt[2]~input_o\ & (\le1_out[60]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datab => \le1_out[60]~4_combout\,
	datac => \le1_out[62]~124_combout\,
	datad => \le2_out[60]~1_combout\,
	combout => \le2_out[60]~2_combout\);

-- Location: LCCOMB_X111_Y32_N20
\le3_out[52]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[52]~65_combout\ = (\le3_out[52]~64_combout\) # ((\amt[3]~input_o\ & \le2_out[60]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[3]~input_o\,
	datac => \le3_out[52]~64_combout\,
	datad => \le2_out[60]~2_combout\,
	combout => \le3_out[52]~65_combout\);

-- Location: LCCOMB_X111_Y30_N26
\le5_out~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~11_combout\ = (\amt[4]~input_o\ & ((\amt[5]~input_o\ & ((\le3_out[52]~65_combout\))) # (!\amt[5]~input_o\ & (\le3_out[20]~67_combout\)))) # (!\amt[4]~input_o\ & (((\amt[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le3_out[20]~67_combout\,
	datab => \amt[4]~input_o\,
	datac => \amt[5]~input_o\,
	datad => \le3_out[52]~65_combout\,
	combout => \le5_out~11_combout\);

-- Location: LCCOMB_X111_Y32_N4
\le3_out[4]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[4]~61_combout\ = (\le3_out[0]~9_combout\ & ((\amt[0]~input_o\ & (\le1_out[5]~34_combout\)) # (!\amt[0]~input_o\ & ((\le1_out[4]~35_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \le1_out[5]~34_combout\,
	datac => \le1_out[4]~35_combout\,
	datad => \le3_out[0]~9_combout\,
	combout => \le3_out[4]~61_combout\);

-- Location: LCCOMB_X111_Y32_N2
\le3_out[4]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[4]~62_combout\ = (\le1_out[16]~16_combout\ & ((\le3_out[0]~7_combout\) # ((\le1_out[12]~41_combout\ & \le3_out[0]~6_combout\)))) # (!\le1_out[16]~16_combout\ & (\le1_out[12]~41_combout\ & ((\le3_out[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le1_out[16]~16_combout\,
	datab => \le1_out[12]~41_combout\,
	datac => \le3_out[0]~7_combout\,
	datad => \le3_out[0]~6_combout\,
	combout => \le3_out[4]~62_combout\);

-- Location: LCCOMB_X111_Y32_N12
\le3_out[4]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[4]~63_combout\ = (\le3_out[4]~61_combout\) # ((\le3_out[4]~62_combout\) # ((\le1_out[8]~38_combout\ & \le3_out[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le1_out[8]~38_combout\,
	datab => \le3_out[0]~4_combout\,
	datac => \le3_out[4]~61_combout\,
	datad => \le3_out[4]~62_combout\,
	combout => \le3_out[4]~63_combout\);

-- Location: LCCOMB_X111_Y30_N24
\le5_out~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~12_combout\ = (\amt[4]~input_o\ & (((\le5_out~11_combout\)))) # (!\amt[4]~input_o\ & ((\le5_out~11_combout\ & (\le3_out[36]~60_combout\)) # (!\le5_out~11_combout\ & ((\le3_out[4]~63_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le3_out[36]~60_combout\,
	datab => \amt[4]~input_o\,
	datac => \le5_out~11_combout\,
	datad => \le3_out[4]~63_combout\,
	combout => \le5_out~12_combout\);

-- Location: LCCOMB_X112_Y33_N16
\le1_out[5]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[5]~56_combout\ = (\amt[0]~input_o\ & ((\le1_out[6]~55_combout\))) # (!\amt[0]~input_o\ & (\le1_out[5]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le1_out[5]~34_combout\,
	datac => \amt[0]~input_o\,
	datad => \le1_out[6]~55_combout\,
	combout => \le1_out[5]~56_combout\);

-- Location: LCCOMB_X108_Y32_N30
\le1_out[13]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[13]~126_combout\ = (\amt[0]~input_o\ & (\le1_out[14]~57_combout\)) # (!\amt[0]~input_o\ & ((\le1_out[13]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datac => \le1_out[14]~57_combout\,
	datad => \le1_out[13]~39_combout\,
	combout => \le1_out[13]~126_combout\);

-- Location: LCCOMB_X109_Y31_N20
\le3_out[5]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[5]~75_combout\ = (\le1_out[17]~70_combout\ & ((\le3_out[0]~7_combout\) # ((\le3_out[0]~6_combout\ & \le1_out[13]~126_combout\)))) # (!\le1_out[17]~70_combout\ & (\le3_out[0]~6_combout\ & ((\le1_out[13]~126_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le1_out[17]~70_combout\,
	datab => \le3_out[0]~6_combout\,
	datac => \le3_out[0]~7_combout\,
	datad => \le1_out[13]~126_combout\,
	combout => \le3_out[5]~75_combout\);

-- Location: LCCOMB_X110_Y31_N16
\le3_out[5]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[5]~76_combout\ = (\le3_out[5]~74_combout\) # ((\le3_out[5]~75_combout\) # ((\le3_out[0]~9_combout\ & \le1_out[5]~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le3_out[5]~74_combout\,
	datab => \le3_out[0]~9_combout\,
	datac => \le1_out[5]~56_combout\,
	datad => \le3_out[5]~75_combout\,
	combout => \le3_out[5]~76_combout\);

-- Location: LCCOMB_X112_Y30_N14
\le1_out[26]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[26]~67_combout\ = (\amt[1]~input_o\ & ((\a[28]~input_o\))) # (!\amt[1]~input_o\ & (\a[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[26]~input_o\,
	datab => \a[28]~input_o\,
	datac => \amt[1]~input_o\,
	combout => \le1_out[26]~67_combout\);

-- Location: LCCOMB_X112_Y30_N12
\le1_out[25]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[25]~68_combout\ = (\amt[0]~input_o\ & (\le1_out[26]~67_combout\)) # (!\amt[0]~input_o\ & ((\le1_out[25]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[0]~input_o\,
	datac => \le1_out[26]~67_combout\,
	datad => \le1_out[25]~11_combout\,
	combout => \le1_out[25]~68_combout\);

-- Location: LCCOMB_X113_Y31_N20
\le3_out[25]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[25]~72_combout\ = (\amt[3]~input_o\ & (\le1_out[33]~52_combout\)) # (!\amt[3]~input_o\ & ((\le1_out[25]~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le1_out[33]~52_combout\,
	datac => \amt[3]~input_o\,
	datad => \le1_out[25]~68_combout\,
	combout => \le3_out[25]~72_combout\);

-- Location: LCCOMB_X110_Y31_N10
\le3_out[21]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[21]~73_combout\ = (\amt[2]~input_o\ & ((\le3_out[25]~72_combout\))) # (!\amt[2]~input_o\ & (\le3_out[21]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le3_out[21]~32_combout\,
	datac => \amt[2]~input_o\,
	datad => \le3_out[25]~72_combout\,
	combout => \le3_out[21]~73_combout\);

-- Location: LCCOMB_X110_Y31_N2
\le5_out~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~14_combout\ = (\amt[4]~input_o\ & ((\le3_out[21]~73_combout\))) # (!\amt[4]~input_o\ & (\le3_out[5]~76_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \le3_out[5]~76_combout\,
	datac => \amt[4]~input_o\,
	datad => \le3_out[21]~73_combout\,
	combout => \le5_out~14_combout\);

-- Location: LCCOMB_X111_Y33_N8
\le1_out[61]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[61]~65_combout\ = (!\amt[1]~input_o\ & ((\amt[0]~input_o\ & ((\a[62]~input_o\))) # (!\amt[0]~input_o\ & (\a[61]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[61]~input_o\,
	datab => \amt[0]~input_o\,
	datac => \a[62]~input_o\,
	datad => \amt[1]~input_o\,
	combout => \le1_out[61]~65_combout\);

-- Location: LCCOMB_X111_Y33_N22
\le1_out[61]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[61]~66_combout\ = (\le1_out[61]~65_combout\) # ((\amt[1]~input_o\ & ((\Mux0~0_combout\) # (\Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \amt[1]~input_o\,
	datac => \le1_out[61]~65_combout\,
	datad => \Mux0~1_combout\,
	combout => \le1_out[61]~66_combout\);

-- Location: LCCOMB_X113_Y31_N28
\le2_out[61]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \le2_out[61]~3_combout\ = (\lar[1]~input_o\ & ((\amt[0]~input_o\ & ((\le1_out[2]~53_combout\))) # (!\amt[0]~input_o\ & (\le1_out[1]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[1]~input_o\,
	datab => \le1_out[1]~43_combout\,
	datac => \amt[0]~input_o\,
	datad => \le1_out[2]~53_combout\,
	combout => \le2_out[61]~3_combout\);

-- Location: LCCOMB_X113_Y31_N6
\le2_out[61]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \le2_out[61]~4_combout\ = (\amt[2]~input_o\ & ((\le1_out[62]~124_combout\) # ((\le2_out[61]~3_combout\)))) # (!\amt[2]~input_o\ & (((\le1_out[61]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le1_out[62]~124_combout\,
	datab => \amt[2]~input_o\,
	datac => \le1_out[61]~66_combout\,
	datad => \le2_out[61]~3_combout\,
	combout => \le2_out[61]~4_combout\);

-- Location: LCCOMB_X112_Y31_N24
\le1_out[57]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[57]~125_combout\ = (\amt[0]~input_o\ & (\le1_out[58]~60_combout\)) # (!\amt[0]~input_o\ & ((\le1_out[57]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[0]~input_o\,
	datac => \le1_out[58]~60_combout\,
	datad => \le1_out[57]~5_combout\,
	combout => \le1_out[57]~125_combout\);

-- Location: LCCOMB_X111_Y31_N28
\le3_out[53]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[53]~68_combout\ = (!\amt[3]~input_o\ & ((\amt[2]~input_o\ & ((\le1_out[57]~125_combout\))) # (!\amt[2]~input_o\ & (\le1_out[53]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datab => \le1_out[53]~64_combout\,
	datac => \amt[3]~input_o\,
	datad => \le1_out[57]~125_combout\,
	combout => \le3_out[53]~68_combout\);

-- Location: LCCOMB_X110_Y31_N24
\le3_out[53]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[53]~69_combout\ = (\le3_out[53]~68_combout\) # ((\amt[3]~input_o\ & \le2_out[61]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datac => \le2_out[61]~4_combout\,
	datad => \le3_out[53]~68_combout\,
	combout => \le3_out[53]~69_combout\);

-- Location: LCCOMB_X110_Y31_N0
\le5_out~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~13_combout\ = (\amt[5]~input_o\ & ((\amt[4]~input_o\ & ((\le3_out[53]~69_combout\))) # (!\amt[4]~input_o\ & (\le3_out[37]~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le3_out[37]~71_combout\,
	datab => \amt[4]~input_o\,
	datac => \amt[5]~input_o\,
	datad => \le3_out[53]~69_combout\,
	combout => \le5_out~13_combout\);

-- Location: LCCOMB_X110_Y31_N20
\le5_out~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~15_combout\ = (\le5_out~13_combout\) # ((\le5_out~14_combout\ & !\amt[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \le5_out~14_combout\,
	datac => \amt[5]~input_o\,
	datad => \le5_out~13_combout\,
	combout => \le5_out~15_combout\);

-- Location: LCCOMB_X113_Y30_N6
\le3_out[42]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[42]~77_combout\ = (\amt[3]~input_o\ & (\le1_out[50]~82_combout\)) # (!\amt[3]~input_o\ & ((\le1_out[42]~97_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datac => \le1_out[50]~82_combout\,
	datad => \le1_out[42]~97_combout\,
	combout => \le3_out[42]~77_combout\);

-- Location: LCCOMB_X113_Y30_N4
\le3_out[38]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[38]~78_combout\ = (\amt[2]~input_o\ & ((\le3_out[42]~77_combout\))) # (!\amt[2]~input_o\ & (\le3_out[38]~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le3_out[38]~40_combout\,
	datac => \amt[2]~input_o\,
	datad => \le3_out[42]~77_combout\,
	combout => \le3_out[38]~78_combout\);

-- Location: LCCOMB_X108_Y32_N28
\le1_out[14]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[14]~104_combout\ = (\amt[0]~input_o\ & ((\le1_out[15]~103_combout\))) # (!\amt[0]~input_o\ & (\le1_out[14]~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datac => \le1_out[14]~57_combout\,
	datad => \le1_out[15]~103_combout\,
	combout => \le1_out[14]~104_combout\);

-- Location: LCCOMB_X109_Y30_N26
\le3_out[6]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[6]~80_combout\ = (\le1_out[18]~88_combout\ & ((\le3_out[0]~7_combout\) # ((\le3_out[0]~6_combout\ & \le1_out[14]~104_combout\)))) # (!\le1_out[18]~88_combout\ & (\le3_out[0]~6_combout\ & ((\le1_out[14]~104_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le1_out[18]~88_combout\,
	datab => \le3_out[0]~6_combout\,
	datac => \le3_out[0]~7_combout\,
	datad => \le1_out[14]~104_combout\,
	combout => \le3_out[6]~80_combout\);

-- Location: LCCOMB_X109_Y30_N0
\le3_out[6]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[6]~79_combout\ = (\le3_out[0]~4_combout\ & ((\amt[0]~input_o\ & ((\le1_out[11]~101_combout\))) # (!\amt[0]~input_o\ & (\le1_out[10]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le1_out[10]~58_combout\,
	datab => \amt[0]~input_o\,
	datac => \le1_out[11]~101_combout\,
	datad => \le3_out[0]~4_combout\,
	combout => \le3_out[6]~79_combout\);

-- Location: LCCOMB_X109_Y30_N28
\le3_out[6]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[6]~81_combout\ = (\le3_out[6]~80_combout\) # ((\le3_out[6]~79_combout\) # ((\le1_out[6]~106_combout\ & \le3_out[0]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le1_out[6]~106_combout\,
	datab => \le3_out[0]~9_combout\,
	datac => \le3_out[6]~80_combout\,
	datad => \le3_out[6]~79_combout\,
	combout => \le3_out[6]~81_combout\);

-- Location: LCCOMB_X113_Y30_N22
\le3_out[54]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[54]~82_combout\ = (!\amt[3]~input_o\ & ((\amt[2]~input_o\ & ((\le1_out[58]~84_combout\))) # (!\amt[2]~input_o\ & (\le1_out[54]~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datab => \amt[3]~input_o\,
	datac => \le1_out[54]~80_combout\,
	datad => \le1_out[58]~84_combout\,
	combout => \le3_out[54]~82_combout\);

-- Location: LCCOMB_X112_Y33_N4
\le2_out[62]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \le2_out[62]~5_combout\ = (\le2_out[60]~0_combout\ & ((\amt[0]~input_o\ & (\le1_out[3]~100_combout\)) # (!\amt[0]~input_o\ & ((\le1_out[2]~53_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \le1_out[3]~100_combout\,
	datac => \le2_out[60]~0_combout\,
	datad => \le1_out[2]~53_combout\,
	combout => \le2_out[62]~5_combout\);

-- Location: LCCOMB_X112_Y33_N6
\le2_out[62]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \le2_out[62]~6_combout\ = (\le2_out[62]~5_combout\) # ((\amt[2]~input_o\ & (\le1_out[62]~124_combout\)) # (!\amt[2]~input_o\ & ((\le1_out[62]~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datab => \le1_out[62]~124_combout\,
	datac => \le2_out[62]~5_combout\,
	datad => \le1_out[62]~78_combout\,
	combout => \le2_out[62]~6_combout\);

-- Location: LCCOMB_X109_Y30_N18
\le3_out[54]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[54]~83_combout\ = (\le3_out[54]~82_combout\) # ((\amt[3]~input_o\ & \le2_out[62]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[3]~input_o\,
	datac => \le3_out[54]~82_combout\,
	datad => \le2_out[62]~6_combout\,
	combout => \le3_out[54]~83_combout\);

-- Location: LCCOMB_X112_Y30_N24
\le1_out[26]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[26]~86_combout\ = (\amt[0]~input_o\ & ((\le1_out[27]~85_combout\))) # (!\amt[0]~input_o\ & (\le1_out[26]~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[0]~input_o\,
	datac => \le1_out[26]~67_combout\,
	datad => \le1_out[27]~85_combout\,
	combout => \le1_out[26]~86_combout\);

-- Location: LCCOMB_X113_Y31_N22
\le3_out[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[26]~84_combout\ = (\amt[3]~input_o\ & (\le1_out[34]~99_combout\)) # (!\amt[3]~input_o\ & ((\le1_out[26]~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[3]~input_o\,
	datac => \le1_out[34]~99_combout\,
	datad => \le1_out[26]~86_combout\,
	combout => \le3_out[26]~84_combout\);

-- Location: LCCOMB_X109_Y30_N20
\le3_out[22]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[22]~85_combout\ = (\amt[2]~input_o\ & (\le3_out[26]~84_combout\)) # (!\amt[2]~input_o\ & ((\le3_out[22]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[2]~input_o\,
	datac => \le3_out[26]~84_combout\,
	datad => \le3_out[22]~38_combout\,
	combout => \le3_out[22]~85_combout\);

-- Location: LCCOMB_X109_Y30_N2
\le5_out~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~16_combout\ = (\amt[5]~input_o\ & ((\le3_out[54]~83_combout\) # ((!\amt[4]~input_o\)))) # (!\amt[5]~input_o\ & (((\amt[4]~input_o\ & \le3_out[22]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \le3_out[54]~83_combout\,
	datac => \amt[4]~input_o\,
	datad => \le3_out[22]~85_combout\,
	combout => \le5_out~16_combout\);

-- Location: LCCOMB_X109_Y30_N12
\le5_out~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~17_combout\ = (\amt[4]~input_o\ & (((\le5_out~16_combout\)))) # (!\amt[4]~input_o\ & ((\le5_out~16_combout\ & (\le3_out[38]~78_combout\)) # (!\le5_out~16_combout\ & ((\le3_out[6]~81_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le3_out[38]~78_combout\,
	datab => \le3_out[6]~81_combout\,
	datac => \amt[4]~input_o\,
	datad => \le5_out~16_combout\,
	combout => \le5_out~17_combout\);

-- Location: LCCOMB_X113_Y32_N30
\le3_out[43]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[43]~86_combout\ = (\amt[3]~input_o\ & (\le1_out[51]~108_combout\)) # (!\amt[3]~input_o\ & ((\le1_out[43]~117_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[3]~input_o\,
	datac => \le1_out[51]~108_combout\,
	datad => \le1_out[43]~117_combout\,
	combout => \le3_out[43]~86_combout\);

-- Location: LCCOMB_X113_Y32_N0
\le3_out[39]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[39]~87_combout\ = (\amt[2]~input_o\ & (\le3_out[43]~86_combout\)) # (!\amt[2]~input_o\ & ((\le3_out[39]~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[2]~input_o\,
	datac => \le3_out[43]~86_combout\,
	datad => \le3_out[39]~53_combout\,
	combout => \le3_out[39]~87_combout\);

-- Location: LCCOMB_X109_Y33_N24
\le3_out[7]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[7]~89_combout\ = (\le3_out[0]~7_combout\ & ((\amt[0]~input_o\ & ((\le1_out[20]~18_combout\))) # (!\amt[0]~input_o\ & (\le1_out[19]~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \le1_out[19]~87_combout\,
	datac => \le3_out[0]~7_combout\,
	datad => \le1_out[20]~18_combout\,
	combout => \le3_out[7]~89_combout\);

-- Location: LCCOMB_X109_Y32_N6
\le3_out[7]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[7]~88_combout\ = (\le3_out[0]~9_combout\ & ((\le1_out[7]~120_combout\) # ((\le3_out[0]~4_combout\ & \le1_out[11]~121_combout\)))) # (!\le3_out[0]~9_combout\ & (((\le3_out[0]~4_combout\ & \le1_out[11]~121_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le3_out[0]~9_combout\,
	datab => \le1_out[7]~120_combout\,
	datac => \le3_out[0]~4_combout\,
	datad => \le1_out[11]~121_combout\,
	combout => \le3_out[7]~88_combout\);

-- Location: LCCOMB_X113_Y33_N14
\le3_out[7]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[7]~90_combout\ = (\le3_out[7]~89_combout\) # ((\le3_out[7]~88_combout\) # ((\le1_out[15]~122_combout\ & \le3_out[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le1_out[15]~122_combout\,
	datab => \le3_out[0]~6_combout\,
	datac => \le3_out[7]~89_combout\,
	datad => \le3_out[7]~88_combout\,
	combout => \le3_out[7]~90_combout\);

-- Location: LCCOMB_X112_Y29_N26
\le1_out[55]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[55]~127_combout\ = (\amt[0]~input_o\ & (\le1_out[56]~6_combout\)) # (!\amt[0]~input_o\ & ((\le1_out[55]~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \le1_out[56]~6_combout\,
	datac => \amt[0]~input_o\,
	datad => \le1_out[55]~79_combout\,
	combout => \le1_out[55]~127_combout\);

-- Location: LCCOMB_X113_Y33_N8
\le3_out[55]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[55]~91_combout\ = (!\amt[3]~input_o\ & ((\amt[2]~input_o\ & ((\le1_out[59]~107_combout\))) # (!\amt[2]~input_o\ & (\le1_out[55]~127_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datab => \amt[3]~input_o\,
	datac => \le1_out[55]~127_combout\,
	datad => \le1_out[59]~107_combout\,
	combout => \le3_out[55]~91_combout\);

-- Location: LCCOMB_X112_Y33_N24
\le2_out[63]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \le2_out[63]~7_combout\ = (\le2_out[60]~0_combout\ & ((\amt[0]~input_o\ & (\le1_out[4]~35_combout\)) # (!\amt[0]~input_o\ & ((\le1_out[3]~100_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le1_out[4]~35_combout\,
	datab => \le1_out[3]~100_combout\,
	datac => \amt[0]~input_o\,
	datad => \le2_out[60]~0_combout\,
	combout => \le2_out[63]~7_combout\);

-- Location: LCCOMB_X111_Y33_N6
\le2_out[63]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \le2_out[63]~9_combout\ = (\le2_out[63]~7_combout\) # ((\le2_out[63]~8_combout\ & ((\le1_out[63]~109_combout\) # (\le1_out[63]~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le2_out[63]~8_combout\,
	datab => \le1_out[63]~109_combout\,
	datac => \le1_out[63]~110_combout\,
	datad => \le2_out[63]~7_combout\,
	combout => \le2_out[63]~9_combout\);

-- Location: LCCOMB_X113_Y33_N30
\le3_out[55]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[55]~92_combout\ = (\le3_out[55]~91_combout\) # ((\amt[3]~input_o\ & \le2_out[63]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[3]~input_o\,
	datac => \le3_out[55]~91_combout\,
	datad => \le2_out[63]~9_combout\,
	combout => \le3_out[55]~92_combout\);

-- Location: LCCOMB_X112_Y30_N22
\le3_out[27]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[27]~93_combout\ = (\amt[3]~input_o\ & ((\le1_out[35]~118_combout\))) # (!\amt[3]~input_o\ & (\le1_out[27]~112_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le1_out[27]~112_combout\,
	datac => \amt[3]~input_o\,
	datad => \le1_out[35]~118_combout\,
	combout => \le3_out[27]~93_combout\);

-- Location: LCCOMB_X113_Y33_N12
\le3_out[23]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[23]~94_combout\ = (\amt[2]~input_o\ & (\le3_out[27]~93_combout\)) # (!\amt[2]~input_o\ & ((\le3_out[23]~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datac => \le3_out[27]~93_combout\,
	datad => \le3_out[23]~51_combout\,
	combout => \le3_out[23]~94_combout\);

-- Location: LCCOMB_X113_Y33_N18
\le5_out~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~18_combout\ = (\amt[4]~input_o\ & ((\amt[5]~input_o\ & (\le3_out[55]~92_combout\)) # (!\amt[5]~input_o\ & ((\le3_out[23]~94_combout\))))) # (!\amt[4]~input_o\ & (\amt[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \amt[5]~input_o\,
	datac => \le3_out[55]~92_combout\,
	datad => \le3_out[23]~94_combout\,
	combout => \le5_out~18_combout\);

-- Location: LCCOMB_X113_Y33_N0
\le5_out~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~19_combout\ = (\amt[4]~input_o\ & (((\le5_out~18_combout\)))) # (!\amt[4]~input_o\ & ((\le5_out~18_combout\ & (\le3_out[39]~87_combout\)) # (!\le5_out~18_combout\ & ((\le3_out[7]~90_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \le3_out[39]~87_combout\,
	datac => \le3_out[7]~90_combout\,
	datad => \le5_out~18_combout\,
	combout => \le5_out~19_combout\);

-- Location: LCCOMB_X109_Y31_N6
\le3_out[8]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[8]~98_combout\ = (\le3_out[0]~7_combout\ & ((\amt[0]~input_o\ & ((\le1_out[21]~17_combout\))) # (!\amt[0]~input_o\ & (\le1_out[20]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \le1_out[20]~18_combout\,
	datac => \le3_out[0]~7_combout\,
	datad => \le1_out[21]~17_combout\,
	combout => \le3_out[8]~98_combout\);

-- Location: LCCOMB_X109_Y29_N18
\le3_out[8]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[8]~97_combout\ = (\le1_out[8]~38_combout\ & ((\le3_out[0]~9_combout\) # ((\le3_out[0]~4_combout\ & \le1_out[12]~41_combout\)))) # (!\le1_out[8]~38_combout\ & (((\le3_out[0]~4_combout\ & \le1_out[12]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le1_out[8]~38_combout\,
	datab => \le3_out[0]~9_combout\,
	datac => \le3_out[0]~4_combout\,
	datad => \le1_out[12]~41_combout\,
	combout => \le3_out[8]~97_combout\);

-- Location: LCCOMB_X109_Y29_N28
\le3_out[8]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[8]~99_combout\ = (\le3_out[8]~98_combout\) # ((\le3_out[8]~97_combout\) # ((\le1_out[16]~16_combout\ & \le3_out[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le1_out[16]~16_combout\,
	datab => \le3_out[0]~6_combout\,
	datac => \le3_out[8]~98_combout\,
	datad => \le3_out[8]~97_combout\,
	combout => \le3_out[8]~99_combout\);

-- Location: LCCOMB_X111_Y30_N30
\le3_out[28]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[28]~104_combout\ = (\amt[3]~input_o\ & ((\le1_out[36]~27_combout\))) # (!\amt[3]~input_o\ & (\le1_out[28]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[3]~input_o\,
	datac => \le1_out[28]~21_combout\,
	datad => \le1_out[36]~27_combout\,
	combout => \le3_out[28]~104_combout\);

-- Location: LCCOMB_X114_Y31_N0
\le3_out[24]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[24]~66_combout\ = (\amt[3]~input_o\ & ((\le1_out[32]~33_combout\))) # (!\amt[3]~input_o\ & (\le1_out[24]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[3]~input_o\,
	datac => \le1_out[24]~13_combout\,
	datad => \le1_out[32]~33_combout\,
	combout => \le3_out[24]~66_combout\);

-- Location: LCCOMB_X109_Y29_N0
\le3_out[24]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[24]~105_combout\ = (\amt[2]~input_o\ & (\le3_out[28]~104_combout\)) # (!\amt[2]~input_o\ & ((\le3_out[24]~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datac => \le3_out[28]~104_combout\,
	datad => \le3_out[24]~66_combout\,
	combout => \le3_out[24]~105_combout\);

-- Location: LCCOMB_X112_Y32_N26
\le3_out[56]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[56]~101_combout\ = (\lar[1]~input_o\ & \amt[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lar[1]~input_o\,
	datad => \amt[3]~input_o\,
	combout => \le3_out[56]~101_combout\);

-- Location: LCCOMB_X112_Y32_N12
\le1_out[4]~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[4]~128_combout\ = (\amt[0]~input_o\ & ((\le1_out[5]~34_combout\))) # (!\amt[0]~input_o\ & (\le1_out[4]~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datac => \le1_out[4]~35_combout\,
	datad => \le1_out[5]~34_combout\,
	combout => \le1_out[4]~128_combout\);

-- Location: LCCOMB_X112_Y32_N6
\le3_out[56]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[56]~102_combout\ = (\le3_out[56]~101_combout\ & ((\amt[2]~input_o\ & ((\le1_out[4]~128_combout\))) # (!\amt[2]~input_o\ & (\le1_out[0]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datab => \le1_out[0]~44_combout\,
	datac => \le3_out[56]~101_combout\,
	datad => \le1_out[4]~128_combout\,
	combout => \le3_out[56]~102_combout\);

-- Location: LCCOMB_X108_Y29_N24
\le3_out[56]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[56]~100_combout\ = (!\amt[3]~input_o\ & ((\amt[2]~input_o\ & ((\le1_out[60]~4_combout\))) # (!\amt[2]~input_o\ & (\le1_out[56]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le1_out[56]~7_combout\,
	datab => \amt[3]~input_o\,
	datac => \le1_out[60]~4_combout\,
	datad => \amt[2]~input_o\,
	combout => \le3_out[56]~100_combout\);

-- Location: LCCOMB_X109_Y29_N26
\le3_out[56]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[56]~103_combout\ = (\le3_out[56]~102_combout\) # ((\le3_out[56]~100_combout\) # ((\amt[3]~input_o\ & \le1_out[62]~124_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datab => \le1_out[62]~124_combout\,
	datac => \le3_out[56]~102_combout\,
	datad => \le3_out[56]~100_combout\,
	combout => \le3_out[56]~103_combout\);

-- Location: LCCOMB_X109_Y29_N14
\le5_out~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~20_combout\ = (\amt[4]~input_o\ & ((\amt[5]~input_o\ & ((\le3_out[56]~103_combout\))) # (!\amt[5]~input_o\ & (\le3_out[24]~105_combout\)))) # (!\amt[4]~input_o\ & (((\amt[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \le3_out[24]~105_combout\,
	datac => \le3_out[56]~103_combout\,
	datad => \amt[5]~input_o\,
	combout => \le5_out~20_combout\);

-- Location: LCCOMB_X112_Y30_N16
\le3_out[44]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[44]~95_combout\ = (\amt[3]~input_o\ & (\le1_out[52]~123_combout\)) # (!\amt[3]~input_o\ & ((\le1_out[44]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[3]~input_o\,
	datac => \le1_out[52]~123_combout\,
	datad => \le1_out[44]~24_combout\,
	combout => \le3_out[44]~95_combout\);

-- Location: LCCOMB_X109_Y29_N24
\le3_out[40]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[40]~96_combout\ = (\amt[2]~input_o\ & ((\le3_out[44]~95_combout\))) # (!\amt[2]~input_o\ & (\le3_out[40]~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datac => \le3_out[40]~59_combout\,
	datad => \le3_out[44]~95_combout\,
	combout => \le3_out[40]~96_combout\);

-- Location: LCCOMB_X109_Y29_N4
\le5_out~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~21_combout\ = (\amt[4]~input_o\ & (((\le5_out~20_combout\)))) # (!\amt[4]~input_o\ & ((\le5_out~20_combout\ & ((\le3_out[40]~96_combout\))) # (!\le5_out~20_combout\ & (\le3_out[8]~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \le3_out[8]~99_combout\,
	datac => \le5_out~20_combout\,
	datad => \le3_out[40]~96_combout\,
	combout => \le5_out~21_combout\);

-- Location: LCCOMB_X113_Y32_N28
\le1_out[1]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[1]~54_combout\ = (\amt[0]~input_o\ & (\le1_out[2]~53_combout\)) # (!\amt[0]~input_o\ & ((\le1_out[1]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datac => \le1_out[2]~53_combout\,
	datad => \le1_out[1]~43_combout\,
	combout => \le1_out[1]~54_combout\);

-- Location: LCCOMB_X112_Y31_N30
\le3_out[57]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[57]~107_combout\ = (\lar[1]~input_o\ & ((\amt[2]~input_o\ & (\le1_out[5]~56_combout\)) # (!\amt[2]~input_o\ & ((\le1_out[1]~54_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datab => \lar[1]~input_o\,
	datac => \le1_out[5]~56_combout\,
	datad => \le1_out[1]~54_combout\,
	combout => \le3_out[57]~107_combout\);

-- Location: LCCOMB_X112_Y31_N16
\le3_out[57]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[57]~106_combout\ = (!\amt[3]~input_o\ & ((\amt[2]~input_o\ & (\le1_out[61]~66_combout\)) # (!\amt[2]~input_o\ & ((\le1_out[57]~125_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datab => \amt[2]~input_o\,
	datac => \le1_out[61]~66_combout\,
	datad => \le1_out[57]~125_combout\,
	combout => \le3_out[57]~106_combout\);

-- Location: LCCOMB_X112_Y31_N8
\le3_out[57]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[57]~108_combout\ = (\le3_out[57]~106_combout\) # ((\amt[3]~input_o\ & ((\le1_out[62]~124_combout\) # (\le3_out[57]~107_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datab => \le1_out[62]~124_combout\,
	datac => \le3_out[57]~107_combout\,
	datad => \le3_out[57]~106_combout\,
	combout => \le3_out[57]~108_combout\);

-- Location: LCCOMB_X112_Y31_N26
\le3_out[41]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[41]~70_combout\ = (\amt[3]~input_o\ & (\le1_out[49]~62_combout\)) # (!\amt[3]~input_o\ & ((\le1_out[41]~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datac => \le1_out[49]~62_combout\,
	datad => \le1_out[41]~50_combout\,
	combout => \le3_out[41]~70_combout\);

-- Location: LCCOMB_X113_Y29_N4
\le1_out[45]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[45]~46_combout\ = (\amt[0]~input_o\ & (\le1_out[46]~45_combout\)) # (!\amt[0]~input_o\ & ((\le1_out[45]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \le1_out[46]~45_combout\,
	datac => \amt[0]~input_o\,
	datad => \le1_out[45]~22_combout\,
	combout => \le1_out[45]~46_combout\);

-- Location: LCCOMB_X112_Y31_N6
\le3_out[45]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[45]~109_combout\ = (\amt[3]~input_o\ & (\le1_out[53]~64_combout\)) # (!\amt[3]~input_o\ & ((\le1_out[45]~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datac => \le1_out[53]~64_combout\,
	datad => \le1_out[45]~46_combout\,
	combout => \le3_out[45]~109_combout\);

-- Location: LCCOMB_X112_Y31_N0
\le3_out[41]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[41]~110_combout\ = (\amt[2]~input_o\ & ((\le3_out[45]~109_combout\))) # (!\amt[2]~input_o\ & (\le3_out[41]~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datac => \le3_out[41]~70_combout\,
	datad => \le3_out[45]~109_combout\,
	combout => \le3_out[41]~110_combout\);

-- Location: LCCOMB_X112_Y31_N14
\le5_out~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~22_combout\ = (\amt[5]~input_o\ & ((\amt[4]~input_o\ & (\le3_out[57]~108_combout\)) # (!\amt[4]~input_o\ & ((\le3_out[41]~110_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \amt[4]~input_o\,
	datac => \le3_out[57]~108_combout\,
	datad => \le3_out[41]~110_combout\,
	combout => \le5_out~22_combout\);

-- Location: LCCOMB_X109_Y31_N24
\le3_out[9]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[9]~114_combout\ = (\le3_out[0]~7_combout\ & ((\amt[0]~input_o\ & ((\le1_out[22]~71_combout\))) # (!\amt[0]~input_o\ & (\le1_out[21]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \le1_out[21]~17_combout\,
	datac => \le3_out[0]~7_combout\,
	datad => \le1_out[22]~71_combout\,
	combout => \le3_out[9]~114_combout\);

-- Location: LCCOMB_X109_Y32_N28
\le3_out[9]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[9]~113_combout\ = (\le3_out[0]~4_combout\ & ((\le1_out[13]~126_combout\) # ((\le1_out[9]~59_combout\ & \le3_out[0]~9_combout\)))) # (!\le3_out[0]~4_combout\ & (\le1_out[9]~59_combout\ & (\le3_out[0]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le3_out[0]~4_combout\,
	datab => \le1_out[9]~59_combout\,
	datac => \le3_out[0]~9_combout\,
	datad => \le1_out[13]~126_combout\,
	combout => \le3_out[9]~113_combout\);

-- Location: LCCOMB_X109_Y31_N18
\le3_out[9]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[9]~115_combout\ = (\le3_out[9]~114_combout\) # ((\le3_out[9]~113_combout\) # ((\le1_out[17]~70_combout\ & \le3_out[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le1_out[17]~70_combout\,
	datab => \le3_out[9]~114_combout\,
	datac => \le3_out[0]~6_combout\,
	datad => \le3_out[9]~113_combout\,
	combout => \le3_out[9]~115_combout\);

-- Location: LCCOMB_X114_Y30_N12
\le1_out[37]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[37]~25_combout\ = (\amt[1]~input_o\ & ((\a[39]~input_o\))) # (!\amt[1]~input_o\ & (\a[37]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \a[37]~input_o\,
	datad => \a[39]~input_o\,
	combout => \le1_out[37]~25_combout\);

-- Location: LCCOMB_X114_Y30_N0
\le1_out[37]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[37]~48_combout\ = (\amt[0]~input_o\ & (\le1_out[38]~47_combout\)) # (!\amt[0]~input_o\ & ((\le1_out[37]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datac => \le1_out[38]~47_combout\,
	datad => \le1_out[37]~25_combout\,
	combout => \le1_out[37]~48_combout\);

-- Location: LCCOMB_X113_Y31_N8
\le3_out[29]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[29]~111_combout\ = (\amt[3]~input_o\ & ((\le1_out[37]~48_combout\))) # (!\amt[3]~input_o\ & (\le1_out[29]~73_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[3]~input_o\,
	datac => \le1_out[29]~73_combout\,
	datad => \le1_out[37]~48_combout\,
	combout => \le3_out[29]~111_combout\);

-- Location: LCCOMB_X113_Y31_N18
\le3_out[25]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[25]~112_combout\ = (\amt[2]~input_o\ & (\le3_out[29]~111_combout\)) # (!\amt[2]~input_o\ & ((\le3_out[25]~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[2]~input_o\,
	datac => \le3_out[29]~111_combout\,
	datad => \le3_out[25]~72_combout\,
	combout => \le3_out[25]~112_combout\);

-- Location: LCCOMB_X112_Y31_N20
\le5_out~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~23_combout\ = (\amt[4]~input_o\ & ((\le3_out[25]~112_combout\))) # (!\amt[4]~input_o\ & (\le3_out[9]~115_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[4]~input_o\,
	datac => \le3_out[9]~115_combout\,
	datad => \le3_out[25]~112_combout\,
	combout => \le5_out~23_combout\);

-- Location: LCCOMB_X112_Y31_N18
\le5_out~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~24_combout\ = (\le5_out~22_combout\) # ((!\amt[5]~input_o\ & \le5_out~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datac => \le5_out~22_combout\,
	datad => \le5_out~23_combout\,
	combout => \le5_out~24_combout\);

-- Location: LCCOMB_X113_Y29_N6
\le3_out[46]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[46]~116_combout\ = (\amt[3]~input_o\ & ((\le1_out[54]~80_combout\))) # (!\amt[3]~input_o\ & (\le1_out[46]~93_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[3]~input_o\,
	datac => \le1_out[46]~93_combout\,
	datad => \le1_out[54]~80_combout\,
	combout => \le3_out[46]~116_combout\);

-- Location: LCCOMB_X114_Y29_N0
\le3_out[42]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[42]~117_combout\ = (\amt[2]~input_o\ & (\le3_out[46]~116_combout\)) # (!\amt[2]~input_o\ & ((\le3_out[42]~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[2]~input_o\,
	datac => \le3_out[46]~116_combout\,
	datad => \le3_out[42]~77_combout\,
	combout => \le3_out[42]~117_combout\);

-- Location: LCCOMB_X114_Y30_N30
\le3_out[30]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[30]~124_combout\ = (\amt[3]~input_o\ & (\le1_out[38]~95_combout\)) # (!\amt[3]~input_o\ & ((\le1_out[30]~91_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \le1_out[38]~95_combout\,
	datac => \le1_out[30]~91_combout\,
	datad => \amt[3]~input_o\,
	combout => \le3_out[30]~124_combout\);

-- Location: LCCOMB_X114_Y29_N2
\le3_out[26]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[26]~125_combout\ = (\amt[2]~input_o\ & (\le3_out[30]~124_combout\)) # (!\amt[2]~input_o\ & ((\le3_out[26]~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[2]~input_o\,
	datac => \le3_out[30]~124_combout\,
	datad => \le3_out[26]~84_combout\,
	combout => \le3_out[26]~125_combout\);

-- Location: LCCOMB_X114_Y29_N4
\le5_out~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~25_combout\ = (\amt[5]~input_o\ & ((\le3_out[58]~123_combout\) # ((!\amt[4]~input_o\)))) # (!\amt[5]~input_o\ & (((\amt[4]~input_o\ & \le3_out[26]~125_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le3_out[58]~123_combout\,
	datab => \amt[5]~input_o\,
	datac => \amt[4]~input_o\,
	datad => \le3_out[26]~125_combout\,
	combout => \le5_out~25_combout\);

-- Location: LCCOMB_X109_Y31_N4
\le1_out[18]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[18]~88_combout\ = (\amt[0]~input_o\ & (\le1_out[19]~87_combout\)) # (!\amt[0]~input_o\ & ((\le1_out[18]~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datac => \le1_out[19]~87_combout\,
	datad => \le1_out[18]~69_combout\,
	combout => \le1_out[18]~88_combout\);

-- Location: LCCOMB_X109_Y31_N16
\le3_out[10]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[10]~119_combout\ = (\le3_out[0]~7_combout\ & ((\amt[0]~input_o\ & (\le1_out[23]~89_combout\)) # (!\amt[0]~input_o\ & ((\le1_out[22]~71_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le1_out[23]~89_combout\,
	datab => \le1_out[22]~71_combout\,
	datac => \le3_out[0]~7_combout\,
	datad => \amt[0]~input_o\,
	combout => \le3_out[10]~119_combout\);

-- Location: LCCOMB_X110_Y32_N12
\le3_out[10]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[10]~120_combout\ = (\le3_out[10]~118_combout\) # ((\le3_out[10]~119_combout\) # ((\le1_out[18]~88_combout\ & \le3_out[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le3_out[10]~118_combout\,
	datab => \le1_out[18]~88_combout\,
	datac => \le3_out[0]~6_combout\,
	datad => \le3_out[10]~119_combout\,
	combout => \le3_out[10]~120_combout\);

-- Location: LCCOMB_X114_Y29_N10
\le5_out~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~26_combout\ = (\amt[4]~input_o\ & (((\le5_out~25_combout\)))) # (!\amt[4]~input_o\ & ((\le5_out~25_combout\ & (\le3_out[42]~117_combout\)) # (!\le5_out~25_combout\ & ((\le3_out[10]~120_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \le3_out[42]~117_combout\,
	datac => \le5_out~25_combout\,
	datad => \le3_out[10]~120_combout\,
	combout => \le5_out~26_combout\);

-- Location: LCCOMB_X108_Y33_N22
\le3_out[59]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[59]~127_combout\ = (\lar[1]~input_o\ & ((\amt[2]~input_o\ & ((\le1_out[7]~120_combout\))) # (!\amt[2]~input_o\ & (\le1_out[3]~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datab => \lar[1]~input_o\,
	datac => \le1_out[3]~119_combout\,
	datad => \le1_out[7]~120_combout\,
	combout => \le3_out[59]~127_combout\);

-- Location: LCCOMB_X108_Y33_N28
\le3_out[59]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[59]~126_combout\ = (!\amt[3]~input_o\ & ((\amt[2]~input_o\ & (\le1_out[63]~111_combout\)) # (!\amt[2]~input_o\ & ((\le1_out[59]~107_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datab => \le1_out[63]~111_combout\,
	datac => \le1_out[59]~107_combout\,
	datad => \amt[2]~input_o\,
	combout => \le3_out[59]~126_combout\);

-- Location: LCCOMB_X108_Y33_N4
\le3_out[59]~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[59]~128_combout\ = (\le3_out[59]~126_combout\) # ((\amt[3]~input_o\ & ((\le1_out[62]~124_combout\) # (\le3_out[59]~127_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datab => \le1_out[62]~124_combout\,
	datac => \le3_out[59]~127_combout\,
	datad => \le3_out[59]~126_combout\,
	combout => \le3_out[59]~128_combout\);

-- Location: LCCOMB_X113_Y32_N16
\le3_out[47]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[47]~129_combout\ = (\amt[3]~input_o\ & ((\le1_out[55]~127_combout\))) # (!\amt[3]~input_o\ & (\le1_out[47]~115_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le1_out[47]~115_combout\,
	datac => \le1_out[55]~127_combout\,
	datad => \amt[3]~input_o\,
	combout => \le3_out[47]~129_combout\);

-- Location: LCCOMB_X108_Y33_N18
\le3_out[43]~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[43]~130_combout\ = (\amt[2]~input_o\ & (\le3_out[47]~129_combout\)) # (!\amt[2]~input_o\ & ((\le3_out[43]~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datac => \le3_out[47]~129_combout\,
	datad => \le3_out[43]~86_combout\,
	combout => \le3_out[43]~130_combout\);

-- Location: LCCOMB_X108_Y33_N8
\le5_out~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~27_combout\ = (\amt[5]~input_o\ & ((\amt[4]~input_o\ & (\le3_out[59]~128_combout\)) # (!\amt[4]~input_o\ & ((\le3_out[43]~130_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \amt[5]~input_o\,
	datac => \le3_out[59]~128_combout\,
	datad => \le3_out[43]~130_combout\,
	combout => \le5_out~27_combout\);

-- Location: LCCOMB_X113_Y32_N10
\le3_out[31]~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[31]~131_combout\ = (\amt[3]~input_o\ & (\le1_out[39]~116_combout\)) # (!\amt[3]~input_o\ & ((\le1_out[31]~114_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le1_out[39]~116_combout\,
	datab => \amt[3]~input_o\,
	datad => \le1_out[31]~114_combout\,
	combout => \le3_out[31]~131_combout\);

-- Location: LCCOMB_X108_Y33_N30
\le3_out[27]~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[27]~132_combout\ = (\amt[2]~input_o\ & ((\le3_out[31]~131_combout\))) # (!\amt[2]~input_o\ & (\le3_out[27]~93_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datac => \le3_out[27]~93_combout\,
	datad => \le3_out[31]~131_combout\,
	combout => \le3_out[27]~132_combout\);

-- Location: LCCOMB_X109_Y33_N2
\le3_out[11]~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[11]~133_combout\ = (\le1_out[11]~121_combout\ & ((\le3_out[0]~9_combout\) # ((\le1_out[15]~122_combout\ & \le3_out[0]~4_combout\)))) # (!\le1_out[11]~121_combout\ & (((\le1_out[15]~122_combout\ & \le3_out[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le1_out[11]~121_combout\,
	datab => \le3_out[0]~9_combout\,
	datac => \le1_out[15]~122_combout\,
	datad => \le3_out[0]~4_combout\,
	combout => \le3_out[11]~133_combout\);

-- Location: LCCOMB_X109_Y33_N26
\le3_out[11]~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[11]~135_combout\ = (\le3_out[11]~134_combout\) # ((\le3_out[11]~133_combout\) # ((\le3_out[0]~6_combout\ & \le1_out[19]~113_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le3_out[11]~134_combout\,
	datab => \le3_out[0]~6_combout\,
	datac => \le1_out[19]~113_combout\,
	datad => \le3_out[11]~133_combout\,
	combout => \le3_out[11]~135_combout\);

-- Location: LCCOMB_X108_Y33_N12
\le5_out~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~28_combout\ = (\amt[4]~input_o\ & (\le3_out[27]~132_combout\)) # (!\amt[4]~input_o\ & ((\le3_out[11]~135_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datac => \le3_out[27]~132_combout\,
	datad => \le3_out[11]~135_combout\,
	combout => \le5_out~28_combout\);

-- Location: LCCOMB_X108_Y33_N2
\le5_out~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~29_combout\ = (\le5_out~27_combout\) # ((!\amt[5]~input_o\ & \le5_out~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[5]~input_o\,
	datac => \le5_out~27_combout\,
	datad => \le5_out~28_combout\,
	combout => \le5_out~29_combout\);

-- Location: LCCOMB_X110_Y32_N0
\le3_out[12]~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[12]~139_combout\ = (\le3_out[0]~6_combout\ & ((\amt[0]~input_o\ & ((\le1_out[21]~17_combout\))) # (!\amt[0]~input_o\ & (\le1_out[20]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le1_out[20]~18_combout\,
	datab => \amt[0]~input_o\,
	datac => \le3_out[0]~6_combout\,
	datad => \le1_out[21]~17_combout\,
	combout => \le3_out[12]~139_combout\);

-- Location: LCCOMB_X108_Y32_N20
\le1_out[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[16]~16_combout\ = (\amt[0]~input_o\ & ((\le1_out[17]~14_combout\))) # (!\amt[0]~input_o\ & (\le1_out[16]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datac => \le1_out[16]~15_combout\,
	datad => \le1_out[17]~14_combout\,
	combout => \le1_out[16]~16_combout\);

-- Location: LCCOMB_X110_Y32_N22
\le3_out[12]~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[12]~138_combout\ = (\le3_out[0]~9_combout\ & ((\le1_out[12]~41_combout\) # ((\le3_out[0]~4_combout\ & \le1_out[16]~16_combout\)))) # (!\le3_out[0]~9_combout\ & (\le3_out[0]~4_combout\ & (\le1_out[16]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le3_out[0]~9_combout\,
	datab => \le3_out[0]~4_combout\,
	datac => \le1_out[16]~16_combout\,
	datad => \le1_out[12]~41_combout\,
	combout => \le3_out[12]~138_combout\);

-- Location: LCCOMB_X110_Y32_N14
\le3_out[12]~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[12]~140_combout\ = (\le3_out[12]~139_combout\) # ((\le3_out[12]~138_combout\) # ((\le1_out[24]~13_combout\ & \le3_out[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le1_out[24]~13_combout\,
	datab => \le3_out[12]~139_combout\,
	datac => \le3_out[12]~138_combout\,
	datad => \le3_out[0]~7_combout\,
	combout => \le3_out[12]~140_combout\);

-- Location: LCCOMB_X110_Y32_N6
\le3_out[44]~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[44]~136_combout\ = (\amt[2]~input_o\ & ((\amt[3]~input_o\ & (\le1_out[56]~7_combout\)) # (!\amt[3]~input_o\ & ((\le1_out[48]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datab => \le1_out[56]~7_combout\,
	datac => \le1_out[48]~10_combout\,
	datad => \amt[2]~input_o\,
	combout => \le3_out[44]~136_combout\);

-- Location: LCCOMB_X110_Y32_N8
\le3_out[44]~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[44]~137_combout\ = (\le3_out[44]~136_combout\) # ((!\amt[2]~input_o\ & \le3_out[44]~95_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datac => \le3_out[44]~95_combout\,
	datad => \le3_out[44]~136_combout\,
	combout => \le3_out[44]~137_combout\);

-- Location: LCCOMB_X112_Y32_N20
\le3_out[60]~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[60]~141_combout\ = (\lar[1]~input_o\ & !\amt[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[1]~input_o\,
	datac => \amt[2]~input_o\,
	combout => \le3_out[60]~141_combout\);

-- Location: LCCOMB_X112_Y32_N22
\le3_out[60]~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[60]~142_combout\ = (\le3_out[60]~141_combout\ & ((\amt[0]~input_o\ & (\le1_out[5]~34_combout\)) # (!\amt[0]~input_o\ & ((\le1_out[4]~35_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \le1_out[5]~34_combout\,
	datac => \le3_out[60]~141_combout\,
	datad => \le1_out[4]~35_combout\,
	combout => \le3_out[60]~142_combout\);

-- Location: LCCOMB_X112_Y32_N0
\le3_out[60]~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[60]~143_combout\ = (\amt[3]~input_o\ & ((\le3_out[60]~171_combout\) # ((\le3_out[60]~142_combout\)))) # (!\amt[3]~input_o\ & (((\le2_out[60]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le3_out[60]~171_combout\,
	datab => \amt[3]~input_o\,
	datac => \le3_out[60]~142_combout\,
	datad => \le2_out[60]~2_combout\,
	combout => \le3_out[60]~143_combout\);

-- Location: LCCOMB_X110_Y32_N28
\le3_out[28]~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[28]~144_combout\ = (\amt[2]~input_o\ & ((\le3_out[32]~16_combout\))) # (!\amt[2]~input_o\ & (\le3_out[28]~104_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datac => \le3_out[28]~104_combout\,
	datad => \le3_out[32]~16_combout\,
	combout => \le3_out[28]~144_combout\);

-- Location: LCCOMB_X110_Y32_N26
\le5_out~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~30_combout\ = (\amt[5]~input_o\ & (((\le3_out[60]~143_combout\)) # (!\amt[4]~input_o\))) # (!\amt[5]~input_o\ & (\amt[4]~input_o\ & ((\le3_out[28]~144_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \amt[4]~input_o\,
	datac => \le3_out[60]~143_combout\,
	datad => \le3_out[28]~144_combout\,
	combout => \le5_out~30_combout\);

-- Location: LCCOMB_X110_Y32_N16
\le5_out~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~31_combout\ = (\amt[4]~input_o\ & (((\le5_out~30_combout\)))) # (!\amt[4]~input_o\ & ((\le5_out~30_combout\ & ((\le3_out[44]~137_combout\))) # (!\le5_out~30_combout\ & (\le3_out[12]~140_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \le3_out[12]~140_combout\,
	datac => \le3_out[44]~137_combout\,
	datad => \le5_out~30_combout\,
	combout => \le5_out~31_combout\);

-- Location: LCCOMB_X112_Y31_N12
\le3_out[45]~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[45]~147_combout\ = (\amt[2]~input_o\ & ((\amt[3]~input_o\ & (\le1_out[57]~125_combout\)) # (!\amt[3]~input_o\ & ((\le1_out[49]~62_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datab => \le1_out[57]~125_combout\,
	datac => \le1_out[49]~62_combout\,
	datad => \amt[3]~input_o\,
	combout => \le3_out[45]~147_combout\);

-- Location: LCCOMB_X111_Y31_N8
\le3_out[45]~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[45]~148_combout\ = (\le3_out[45]~147_combout\) # ((!\amt[2]~input_o\ & \le3_out[45]~109_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datac => \le3_out[45]~147_combout\,
	datad => \le3_out[45]~109_combout\,
	combout => \le3_out[45]~148_combout\);

-- Location: LCCOMB_X112_Y33_N8
\le3_out[61]~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[61]~145_combout\ = (\lar[1]~input_o\ & ((\amt[2]~input_o\ & ((\le1_out[9]~59_combout\))) # (!\amt[2]~input_o\ & (\le1_out[5]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[1]~input_o\,
	datab => \le1_out[5]~56_combout\,
	datac => \amt[2]~input_o\,
	datad => \le1_out[9]~59_combout\,
	combout => \le3_out[61]~145_combout\);

-- Location: LCCOMB_X111_Y31_N6
\le3_out[61]~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[61]~146_combout\ = (\amt[3]~input_o\ & ((\le1_out[62]~124_combout\) # ((\le3_out[61]~145_combout\)))) # (!\amt[3]~input_o\ & (((\le2_out[61]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le1_out[62]~124_combout\,
	datab => \amt[3]~input_o\,
	datac => \le2_out[61]~4_combout\,
	datad => \le3_out[61]~145_combout\,
	combout => \le3_out[61]~146_combout\);

-- Location: LCCOMB_X111_Y31_N2
\le5_out~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~32_combout\ = (\amt[5]~input_o\ & ((\amt[4]~input_o\ & ((\le3_out[61]~146_combout\))) # (!\amt[4]~input_o\ & (\le3_out[45]~148_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \le3_out[45]~148_combout\,
	datac => \amt[4]~input_o\,
	datad => \le3_out[61]~146_combout\,
	combout => \le5_out~32_combout\);

-- Location: LCCOMB_X109_Y31_N10
\le3_out[13]~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[13]~151_combout\ = (\le3_out[0]~6_combout\ & ((\amt[0]~input_o\ & (\le1_out[22]~71_combout\)) # (!\amt[0]~input_o\ & ((\le1_out[21]~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \le1_out[22]~71_combout\,
	datac => \le1_out[21]~17_combout\,
	datad => \le3_out[0]~6_combout\,
	combout => \le3_out[13]~151_combout\);

-- Location: LCCOMB_X111_Y31_N24
\le3_out[13]~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[13]~150_combout\ = (\le3_out[0]~9_combout\ & ((\le1_out[13]~126_combout\) # ((\le3_out[0]~4_combout\ & \le1_out[17]~70_combout\)))) # (!\le3_out[0]~9_combout\ & (((\le3_out[0]~4_combout\ & \le1_out[17]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le3_out[0]~9_combout\,
	datab => \le1_out[13]~126_combout\,
	datac => \le3_out[0]~4_combout\,
	datad => \le1_out[17]~70_combout\,
	combout => \le3_out[13]~150_combout\);

-- Location: LCCOMB_X111_Y31_N14
\le3_out[13]~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[13]~152_combout\ = (\le3_out[13]~151_combout\) # ((\le3_out[13]~150_combout\) # ((\le3_out[0]~7_combout\ & \le1_out[25]~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le3_out[0]~7_combout\,
	datab => \le1_out[25]~68_combout\,
	datac => \le3_out[13]~151_combout\,
	datad => \le3_out[13]~150_combout\,
	combout => \le3_out[13]~152_combout\);

-- Location: LCCOMB_X112_Y31_N22
\le3_out[29]~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[29]~149_combout\ = (\amt[2]~input_o\ & ((\le3_out[33]~22_combout\))) # (!\amt[2]~input_o\ & (\le3_out[29]~111_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datac => \le3_out[29]~111_combout\,
	datad => \le3_out[33]~22_combout\,
	combout => \le3_out[29]~149_combout\);

-- Location: LCCOMB_X111_Y31_N4
\le5_out~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~33_combout\ = (\amt[4]~input_o\ & ((\le3_out[29]~149_combout\))) # (!\amt[4]~input_o\ & (\le3_out[13]~152_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[4]~input_o\,
	datac => \le3_out[13]~152_combout\,
	datad => \le3_out[29]~149_combout\,
	combout => \le5_out~33_combout\);

-- Location: LCCOMB_X111_Y31_N30
\le5_out~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~34_combout\ = (\le5_out~32_combout\) # ((!\amt[5]~input_o\ & \le5_out~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \le5_out~32_combout\,
	datac => \amt[5]~input_o\,
	datad => \le5_out~33_combout\,
	combout => \le5_out~34_combout\);

-- Location: LCCOMB_X114_Y33_N8
\le3_out[30]~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[30]~161_combout\ = (\amt[2]~input_o\ & ((\le3_out[34]~41_combout\))) # (!\amt[2]~input_o\ & (\le3_out[30]~124_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[2]~input_o\,
	datac => \le3_out[30]~124_combout\,
	datad => \le3_out[34]~41_combout\,
	combout => \le3_out[30]~161_combout\);

-- Location: LCCOMB_X112_Y33_N26
\le3_out[62]~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[62]~158_combout\ = (\le3_out[60]~141_combout\ & ((\amt[0]~input_o\ & ((\le1_out[7]~105_combout\))) # (!\amt[0]~input_o\ & (\le1_out[6]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le1_out[6]~55_combout\,
	datab => \amt[0]~input_o\,
	datac => \le1_out[7]~105_combout\,
	datad => \le3_out[60]~141_combout\,
	combout => \le3_out[62]~158_combout\);

-- Location: LCCOMB_X109_Y32_N8
\le1_out[10]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \le1_out[10]~102_combout\ = (\amt[0]~input_o\ & ((\le1_out[11]~101_combout\))) # (!\amt[0]~input_o\ & (\le1_out[10]~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le1_out[10]~58_combout\,
	datac => \le1_out[11]~101_combout\,
	datad => \amt[0]~input_o\,
	combout => \le1_out[10]~102_combout\);

-- Location: LCCOMB_X112_Y33_N20
\le3_out[62]~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[62]~159_combout\ = (\le1_out[62]~124_combout\) # ((\le3_out[62]~158_combout\) # ((\le2_out[60]~0_combout\ & \le1_out[10]~102_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le2_out[60]~0_combout\,
	datab => \le1_out[62]~124_combout\,
	datac => \le3_out[62]~158_combout\,
	datad => \le1_out[10]~102_combout\,
	combout => \le3_out[62]~159_combout\);

-- Location: LCCOMB_X114_Y33_N6
\le3_out[62]~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[62]~160_combout\ = (\amt[3]~input_o\ & ((\le3_out[62]~159_combout\))) # (!\amt[3]~input_o\ & (\le2_out[62]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datac => \le2_out[62]~6_combout\,
	datad => \le3_out[62]~159_combout\,
	combout => \le3_out[62]~160_combout\);

-- Location: LCCOMB_X114_Y33_N30
\le5_out~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~35_combout\ = (\amt[5]~input_o\ & (((\le3_out[62]~160_combout\)) # (!\amt[4]~input_o\))) # (!\amt[5]~input_o\ & (\amt[4]~input_o\ & (\le3_out[30]~161_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \amt[4]~input_o\,
	datac => \le3_out[30]~161_combout\,
	datad => \le3_out[62]~160_combout\,
	combout => \le5_out~35_combout\);

-- Location: LCCOMB_X113_Y30_N28
\le3_out[46]~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[46]~153_combout\ = (\amt[2]~input_o\ & ((\amt[3]~input_o\ & ((\le1_out[58]~84_combout\))) # (!\amt[3]~input_o\ & (\le1_out[50]~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datab => \le1_out[50]~82_combout\,
	datac => \amt[3]~input_o\,
	datad => \le1_out[58]~84_combout\,
	combout => \le3_out[46]~153_combout\);

-- Location: LCCOMB_X114_Y33_N24
\le3_out[46]~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[46]~154_combout\ = (\le3_out[46]~153_combout\) # ((!\amt[2]~input_o\ & \le3_out[46]~116_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[2]~input_o\,
	datac => \le3_out[46]~116_combout\,
	datad => \le3_out[46]~153_combout\,
	combout => \le3_out[46]~154_combout\);

-- Location: LCCOMB_X114_Y33_N22
\le3_out[14]~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[14]~155_combout\ = (\le3_out[0]~9_combout\ & ((\le1_out[14]~104_combout\) # ((\le3_out[0]~4_combout\ & \le1_out[18]~88_combout\)))) # (!\le3_out[0]~9_combout\ & (((\le3_out[0]~4_combout\ & \le1_out[18]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le3_out[0]~9_combout\,
	datab => \le1_out[14]~104_combout\,
	datac => \le3_out[0]~4_combout\,
	datad => \le1_out[18]~88_combout\,
	combout => \le3_out[14]~155_combout\);

-- Location: LCCOMB_X109_Y33_N16
\le3_out[14]~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[14]~156_combout\ = (\le3_out[0]~6_combout\ & ((\amt[0]~input_o\ & (\le1_out[23]~89_combout\)) # (!\amt[0]~input_o\ & ((\le1_out[22]~71_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \le3_out[0]~6_combout\,
	datac => \le1_out[23]~89_combout\,
	datad => \le1_out[22]~71_combout\,
	combout => \le3_out[14]~156_combout\);

-- Location: LCCOMB_X114_Y33_N16
\le3_out[14]~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[14]~157_combout\ = (\le3_out[14]~155_combout\) # ((\le3_out[14]~156_combout\) # ((\le3_out[0]~7_combout\ & \le1_out[26]~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le3_out[0]~7_combout\,
	datab => \le1_out[26]~86_combout\,
	datac => \le3_out[14]~155_combout\,
	datad => \le3_out[14]~156_combout\,
	combout => \le3_out[14]~157_combout\);

-- Location: LCCOMB_X114_Y33_N0
\le5_out~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~36_combout\ = (\le5_out~35_combout\ & ((\le3_out[46]~154_combout\) # ((\amt[4]~input_o\)))) # (!\le5_out~35_combout\ & (((!\amt[4]~input_o\ & \le3_out[14]~157_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le5_out~35_combout\,
	datab => \le3_out[46]~154_combout\,
	datac => \amt[4]~input_o\,
	datad => \le3_out[14]~157_combout\,
	combout => \le5_out~36_combout\);

-- Location: LCCOMB_X109_Y33_N0
\le3_out[15]~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[15]~168_combout\ = (\le3_out[0]~6_combout\ & ((\amt[0]~input_o\ & (\le1_out[24]~12_combout\)) # (!\amt[0]~input_o\ & ((\le1_out[23]~89_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \le1_out[24]~12_combout\,
	datac => \le1_out[23]~89_combout\,
	datad => \le3_out[0]~6_combout\,
	combout => \le3_out[15]~168_combout\);

-- Location: LCCOMB_X109_Y33_N10
\le3_out[15]~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[15]~167_combout\ = (!\amt[3]~input_o\ & ((\amt[2]~input_o\ & (\le1_out[19]~113_combout\)) # (!\amt[2]~input_o\ & ((\le1_out[15]~122_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datab => \amt[3]~input_o\,
	datac => \le1_out[19]~113_combout\,
	datad => \le1_out[15]~122_combout\,
	combout => \le3_out[15]~167_combout\);

-- Location: LCCOMB_X109_Y33_N6
\le3_out[15]~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[15]~169_combout\ = (\le3_out[15]~168_combout\) # ((\le3_out[15]~167_combout\) # ((\le3_out[0]~7_combout\ & \le1_out[27]~112_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le3_out[0]~7_combout\,
	datab => \le3_out[15]~168_combout\,
	datac => \le1_out[27]~112_combout\,
	datad => \le3_out[15]~167_combout\,
	combout => \le3_out[15]~169_combout\);

-- Location: LCCOMB_X113_Y32_N20
\le3_out[31]~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[31]~166_combout\ = (\amt[2]~input_o\ & (\le3_out[35]~54_combout\)) # (!\amt[2]~input_o\ & ((\le3_out[31]~131_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \le3_out[35]~54_combout\,
	datac => \amt[2]~input_o\,
	datad => \le3_out[31]~131_combout\,
	combout => \le3_out[31]~166_combout\);

-- Location: LCCOMB_X110_Y33_N22
\le5_out~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~38_combout\ = (\amt[4]~input_o\ & ((\le3_out[31]~166_combout\))) # (!\amt[4]~input_o\ & (\le3_out[15]~169_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \le3_out[15]~169_combout\,
	datac => \le3_out[31]~166_combout\,
	datad => \amt[4]~input_o\,
	combout => \le5_out~38_combout\);

-- Location: LCCOMB_X113_Y32_N4
\le3_out[47]~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[47]~164_combout\ = (\amt[2]~input_o\ & ((\amt[3]~input_o\ & ((\le1_out[59]~107_combout\))) # (!\amt[3]~input_o\ & (\le1_out[51]~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le1_out[51]~108_combout\,
	datab => \amt[3]~input_o\,
	datac => \le1_out[59]~107_combout\,
	datad => \amt[2]~input_o\,
	combout => \le3_out[47]~164_combout\);

-- Location: LCCOMB_X113_Y32_N26
\le3_out[47]~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[47]~165_combout\ = (\le3_out[47]~164_combout\) # ((!\amt[2]~input_o\ & \le3_out[47]~129_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[2]~input_o\,
	datac => \le3_out[47]~164_combout\,
	datad => \le3_out[47]~129_combout\,
	combout => \le3_out[47]~165_combout\);

-- Location: LCCOMB_X110_Y33_N8
\le3_out[63]~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[63]~162_combout\ = (\lar[1]~input_o\ & ((\amt[2]~input_o\ & ((\le1_out[11]~121_combout\))) # (!\amt[2]~input_o\ & (\le1_out[7]~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[1]~input_o\,
	datab => \amt[2]~input_o\,
	datac => \le1_out[7]~120_combout\,
	datad => \le1_out[11]~121_combout\,
	combout => \le3_out[63]~162_combout\);

-- Location: LCCOMB_X110_Y33_N10
\le3_out[63]~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[63]~163_combout\ = (\amt[3]~input_o\ & ((\le1_out[62]~124_combout\) # ((\le3_out[63]~162_combout\)))) # (!\amt[3]~input_o\ & (((\le2_out[63]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datab => \le1_out[62]~124_combout\,
	datac => \le3_out[63]~162_combout\,
	datad => \le2_out[63]~9_combout\,
	combout => \le3_out[63]~163_combout\);

-- Location: LCCOMB_X110_Y33_N0
\le5_out~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~37_combout\ = (\amt[5]~input_o\ & ((\amt[4]~input_o\ & ((\le3_out[63]~163_combout\))) # (!\amt[4]~input_o\ & (\le3_out[47]~165_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \amt[4]~input_o\,
	datac => \le3_out[47]~165_combout\,
	datad => \le3_out[63]~163_combout\,
	combout => \le5_out~37_combout\);

-- Location: LCCOMB_X110_Y33_N4
\le5_out~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~39_combout\ = (\le5_out~37_combout\) # ((!\amt[5]~input_o\ & \le5_out~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datac => \le5_out~38_combout\,
	datad => \le5_out~37_combout\,
	combout => \le5_out~39_combout\);

-- Location: LCCOMB_X111_Y29_N4
\le5_out~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~40_combout\ = (\amt[4]~input_o\ & (\le3_out[32]~17_combout\)) # (!\amt[4]~input_o\ & ((\le3_out[16]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le3_out[32]~17_combout\,
	datac => \amt[4]~input_o\,
	datad => \le3_out[16]~14_combout\,
	combout => \le5_out~40_combout\);

-- Location: LCCOMB_X110_Y33_N18
\le4_out[48]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \le4_out[48]~35_combout\ = (!\lar[1]~input_o\ & (\lar[0]~input_o\ & (\amt[4]~input_o\ & \le3_out[63]~163_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[1]~input_o\,
	datab => \lar[0]~input_o\,
	datac => \amt[4]~input_o\,
	datad => \le3_out[63]~163_combout\,
	combout => \le4_out[48]~35_combout\);

-- Location: LCCOMB_X111_Y29_N6
\le4_out[48]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \le4_out[48]~6_combout\ = (\amt[4]~input_o\ & (\lar[1]~input_o\ & ((\le3_out[0]~20_combout\)))) # (!\amt[4]~input_o\ & (((\le3_out[48]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \lar[1]~input_o\,
	datac => \le3_out[48]~10_combout\,
	datad => \le3_out[0]~20_combout\,
	combout => \le4_out[48]~6_combout\);

-- Location: LCCOMB_X111_Y29_N16
\le5_out~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~41_combout\ = (\amt[5]~input_o\ & (((\le4_out[48]~35_combout\) # (\le4_out[48]~6_combout\)))) # (!\amt[5]~input_o\ & (\le5_out~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \le5_out~40_combout\,
	datac => \le4_out[48]~35_combout\,
	datad => \le4_out[48]~6_combout\,
	combout => \le5_out~41_combout\);

-- Location: LCCOMB_X114_Y32_N8
\le4_out[49]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \le4_out[49]~7_combout\ = (\amt[4]~input_o\ & (\lar[1]~input_o\ & ((\le3_out[1]~26_combout\)))) # (!\amt[4]~input_o\ & (((\le3_out[49]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \lar[1]~input_o\,
	datac => \le3_out[49]~29_combout\,
	datad => \le3_out[1]~26_combout\,
	combout => \le4_out[49]~7_combout\);

-- Location: LCCOMB_X114_Y32_N22
\le5_out~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~42_combout\ = (\amt[4]~input_o\ & ((\le3_out[33]~23_combout\))) # (!\amt[4]~input_o\ & (\le3_out[17]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \le3_out[17]~33_combout\,
	datac => \le3_out[33]~23_combout\,
	combout => \le5_out~42_combout\);

-- Location: LCCOMB_X114_Y32_N6
\le5_out~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~43_combout\ = (\amt[5]~input_o\ & ((\le4_out[49]~7_combout\) # ((\le4_out[48]~35_combout\)))) # (!\amt[5]~input_o\ & (((\le5_out~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \le4_out[49]~7_combout\,
	datac => \le5_out~42_combout\,
	datad => \le4_out[48]~35_combout\,
	combout => \le5_out~43_combout\);

-- Location: LCCOMB_X110_Y30_N26
\le5_out~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~44_combout\ = (\amt[4]~input_o\ & ((\le3_out[34]~42_combout\))) # (!\amt[4]~input_o\ & (\le3_out[18]~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \le3_out[18]~39_combout\,
	datac => \amt[4]~input_o\,
	datad => \le3_out[34]~42_combout\,
	combout => \le5_out~44_combout\);

-- Location: LCCOMB_X110_Y30_N18
\le4_out[50]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \le4_out[50]~8_combout\ = (\lar[1]~input_o\ & (\amt[4]~input_o\ & \le3_out[2]~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[1]~input_o\,
	datac => \amt[4]~input_o\,
	datad => \le3_out[2]~45_combout\,
	combout => \le4_out[50]~8_combout\);

-- Location: LCCOMB_X110_Y30_N16
\le4_out[50]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \le4_out[50]~9_combout\ = (\le4_out[50]~8_combout\) # ((\le4_out[48]~35_combout\) # ((!\amt[4]~input_o\ & \le3_out[50]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \le4_out[50]~8_combout\,
	datac => \le3_out[50]~35_combout\,
	datad => \le4_out[48]~35_combout\,
	combout => \le4_out[50]~9_combout\);

-- Location: LCCOMB_X110_Y30_N0
\le5_out~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~45_combout\ = (\amt[5]~input_o\ & ((\le4_out[50]~9_combout\))) # (!\amt[5]~input_o\ & (\le5_out~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[5]~input_o\,
	datac => \le5_out~44_combout\,
	datad => \le4_out[50]~9_combout\,
	combout => \le5_out~45_combout\);

-- Location: LCCOMB_X110_Y29_N30
\le5_out~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~46_combout\ = (\amt[4]~input_o\ & ((\le3_out[35]~55_combout\))) # (!\amt[4]~input_o\ & (\le3_out[19]~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[4]~input_o\,
	datac => \le3_out[19]~52_combout\,
	datad => \le3_out[35]~55_combout\,
	combout => \le5_out~46_combout\);

-- Location: LCCOMB_X110_Y29_N8
\le4_out[51]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \le4_out[51]~10_combout\ = (\amt[4]~input_o\ & (\lar[1]~input_o\ & ((\le3_out[3]~58_combout\)))) # (!\amt[4]~input_o\ & (((\le3_out[51]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[1]~input_o\,
	datab => \amt[4]~input_o\,
	datac => \le3_out[51]~48_combout\,
	datad => \le3_out[3]~58_combout\,
	combout => \le4_out[51]~10_combout\);

-- Location: LCCOMB_X110_Y29_N10
\le5_out~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~47_combout\ = (\amt[5]~input_o\ & (((\le4_out[51]~10_combout\) # (\le4_out[48]~35_combout\)))) # (!\amt[5]~input_o\ & (\le5_out~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le5_out~46_combout\,
	datab => \amt[5]~input_o\,
	datac => \le4_out[51]~10_combout\,
	datad => \le4_out[48]~35_combout\,
	combout => \le5_out~47_combout\);

-- Location: LCCOMB_X111_Y32_N26
\le4_out[52]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \le4_out[52]~11_combout\ = (\amt[4]~input_o\ & (\lar[1]~input_o\ & ((\le3_out[4]~63_combout\)))) # (!\amt[4]~input_o\ & (((\le3_out[52]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[1]~input_o\,
	datab => \le3_out[52]~65_combout\,
	datac => \amt[4]~input_o\,
	datad => \le3_out[4]~63_combout\,
	combout => \le4_out[52]~11_combout\);

-- Location: LCCOMB_X111_Y30_N12
\le3_out[20]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[20]~67_combout\ = (\amt[2]~input_o\ & ((\le3_out[24]~66_combout\))) # (!\amt[2]~input_o\ & (\le3_out[20]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datac => \le3_out[20]~13_combout\,
	datad => \le3_out[24]~66_combout\,
	combout => \le3_out[20]~67_combout\);

-- Location: LCCOMB_X111_Y30_N16
\le5_out~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~48_combout\ = (\amt[4]~input_o\ & (\le3_out[36]~60_combout\)) # (!\amt[4]~input_o\ & ((\le3_out[20]~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le3_out[36]~60_combout\,
	datab => \amt[4]~input_o\,
	datad => \le3_out[20]~67_combout\,
	combout => \le5_out~48_combout\);

-- Location: LCCOMB_X111_Y32_N28
\le5_out~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~49_combout\ = (\amt[5]~input_o\ & ((\le4_out[48]~35_combout\) # ((\le4_out[52]~11_combout\)))) # (!\amt[5]~input_o\ & (((\le5_out~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \le4_out[48]~35_combout\,
	datac => \le4_out[52]~11_combout\,
	datad => \le5_out~48_combout\,
	combout => \le5_out~49_combout\);

-- Location: LCCOMB_X114_Y30_N10
\le3_out[37]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[37]~21_combout\ = (\amt[3]~input_o\ & ((\le1_out[45]~46_combout\))) # (!\amt[3]~input_o\ & (\le1_out[37]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \le1_out[37]~48_combout\,
	datac => \amt[3]~input_o\,
	datad => \le1_out[45]~46_combout\,
	combout => \le3_out[37]~21_combout\);

-- Location: LCCOMB_X110_Y31_N26
\le3_out[37]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \le3_out[37]~71_combout\ = (\amt[2]~input_o\ & (\le3_out[41]~70_combout\)) # (!\amt[2]~input_o\ & ((\le3_out[37]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datab => \le3_out[41]~70_combout\,
	datad => \le3_out[37]~21_combout\,
	combout => \le3_out[37]~71_combout\);

-- Location: LCCOMB_X110_Y31_N6
\le5_out~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~50_combout\ = (\amt[4]~input_o\ & (\le3_out[37]~71_combout\)) # (!\amt[4]~input_o\ & ((\le3_out[21]~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[4]~input_o\,
	datac => \le3_out[37]~71_combout\,
	datad => \le3_out[21]~73_combout\,
	combout => \le5_out~50_combout\);

-- Location: LCCOMB_X110_Y31_N28
\le4_out[53]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \le4_out[53]~12_combout\ = (\amt[4]~input_o\ & (\lar[1]~input_o\ & ((\le3_out[5]~76_combout\)))) # (!\amt[4]~input_o\ & (((\le3_out[53]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[1]~input_o\,
	datab => \le3_out[53]~69_combout\,
	datac => \amt[4]~input_o\,
	datad => \le3_out[5]~76_combout\,
	combout => \le4_out[53]~12_combout\);

-- Location: LCCOMB_X110_Y31_N14
\le5_out~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~51_combout\ = (\amt[5]~input_o\ & (((\le4_out[48]~35_combout\) # (\le4_out[53]~12_combout\)))) # (!\amt[5]~input_o\ & (\le5_out~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le5_out~50_combout\,
	datab => \amt[5]~input_o\,
	datac => \le4_out[48]~35_combout\,
	datad => \le4_out[53]~12_combout\,
	combout => \le5_out~51_combout\);

-- Location: LCCOMB_X109_Y30_N14
\le5_out~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~52_combout\ = (\amt[4]~input_o\ & (\le3_out[38]~78_combout\)) # (!\amt[4]~input_o\ & ((\le3_out[22]~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datac => \le3_out[38]~78_combout\,
	datad => \le3_out[22]~85_combout\,
	combout => \le5_out~52_combout\);

-- Location: LCCOMB_X109_Y30_N16
\le4_out[54]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \le4_out[54]~14_combout\ = (\le4_out[54]~13_combout\) # ((\le4_out[48]~35_combout\) # ((\le3_out[54]~83_combout\ & !\amt[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le4_out[54]~13_combout\,
	datab => \le3_out[54]~83_combout\,
	datac => \amt[4]~input_o\,
	datad => \le4_out[48]~35_combout\,
	combout => \le4_out[54]~14_combout\);

-- Location: LCCOMB_X109_Y30_N8
\le5_out~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~53_combout\ = (\amt[5]~input_o\ & ((\le4_out[54]~14_combout\))) # (!\amt[5]~input_o\ & (\le5_out~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datac => \le5_out~52_combout\,
	datad => \le4_out[54]~14_combout\,
	combout => \le5_out~53_combout\);

-- Location: LCCOMB_X113_Y33_N26
\le5_out~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~54_combout\ = (\amt[4]~input_o\ & (\le3_out[39]~87_combout\)) # (!\amt[4]~input_o\ & ((\le3_out[23]~94_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \le3_out[39]~87_combout\,
	datac => \amt[4]~input_o\,
	datad => \le3_out[23]~94_combout\,
	combout => \le5_out~54_combout\);

-- Location: LCCOMB_X113_Y33_N16
\le4_out[55]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \le4_out[55]~15_combout\ = (\amt[4]~input_o\ & (\lar[1]~input_o\ & ((\le3_out[7]~90_combout\)))) # (!\amt[4]~input_o\ & (((\le3_out[55]~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \lar[1]~input_o\,
	datac => \le3_out[55]~92_combout\,
	datad => \le3_out[7]~90_combout\,
	combout => \le4_out[55]~15_combout\);

-- Location: LCCOMB_X113_Y33_N10
\le5_out~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~55_combout\ = (\amt[5]~input_o\ & ((\le4_out[48]~35_combout\) # ((\le4_out[55]~15_combout\)))) # (!\amt[5]~input_o\ & (((\le5_out~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \le4_out[48]~35_combout\,
	datac => \le5_out~54_combout\,
	datad => \le4_out[55]~15_combout\,
	combout => \le5_out~55_combout\);

-- Location: LCCOMB_X109_Y29_N22
\le5_out~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~56_combout\ = (\amt[4]~input_o\ & (\le3_out[40]~96_combout\)) # (!\amt[4]~input_o\ & ((\le3_out[24]~105_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \le3_out[40]~96_combout\,
	datad => \le3_out[24]~105_combout\,
	combout => \le5_out~56_combout\);

-- Location: LCCOMB_X109_Y29_N6
\le4_out[56]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \le4_out[56]~16_combout\ = (\amt[4]~input_o\ & (\lar[1]~input_o\ & \le3_out[8]~99_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datac => \lar[1]~input_o\,
	datad => \le3_out[8]~99_combout\,
	combout => \le4_out[56]~16_combout\);

-- Location: LCCOMB_X109_Y29_N12
\le4_out[56]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \le4_out[56]~17_combout\ = (\le4_out[48]~35_combout\) # ((\le4_out[56]~16_combout\) # ((!\amt[4]~input_o\ & \le3_out[56]~103_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \le4_out[48]~35_combout\,
	datac => \le3_out[56]~103_combout\,
	datad => \le4_out[56]~16_combout\,
	combout => \le4_out[56]~17_combout\);

-- Location: LCCOMB_X109_Y29_N20
\le5_out~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~57_combout\ = (\amt[5]~input_o\ & ((\le4_out[56]~17_combout\))) # (!\amt[5]~input_o\ & (\le5_out~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datac => \le5_out~56_combout\,
	datad => \le4_out[56]~17_combout\,
	combout => \le5_out~57_combout\);

-- Location: LCCOMB_X113_Y31_N4
\le5_out~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~58_combout\ = (\amt[4]~input_o\ & (\le3_out[41]~110_combout\)) # (!\amt[4]~input_o\ & ((\le3_out[25]~112_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[4]~input_o\,
	datac => \le3_out[41]~110_combout\,
	datad => \le3_out[25]~112_combout\,
	combout => \le5_out~58_combout\);

-- Location: LCCOMB_X113_Y31_N24
\le4_out[57]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \le4_out[57]~18_combout\ = (\amt[4]~input_o\ & (\lar[1]~input_o\ & \le3_out[9]~115_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[4]~input_o\,
	datac => \lar[1]~input_o\,
	datad => \le3_out[9]~115_combout\,
	combout => \le4_out[57]~18_combout\);

-- Location: LCCOMB_X113_Y31_N2
\le4_out[57]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \le4_out[57]~19_combout\ = (\le4_out[48]~35_combout\) # ((\le4_out[57]~18_combout\) # ((!\amt[4]~input_o\ & \le3_out[57]~108_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le4_out[48]~35_combout\,
	datab => \amt[4]~input_o\,
	datac => \le3_out[57]~108_combout\,
	datad => \le4_out[57]~18_combout\,
	combout => \le4_out[57]~19_combout\);

-- Location: LCCOMB_X113_Y31_N14
\le5_out~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~59_combout\ = (\amt[5]~input_o\ & ((\le4_out[57]~19_combout\))) # (!\amt[5]~input_o\ & (\le5_out~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[5]~input_o\,
	datac => \le5_out~58_combout\,
	datad => \le4_out[57]~19_combout\,
	combout => \le5_out~59_combout\);

-- Location: LCCOMB_X114_Y29_N8
\le5_out~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~60_combout\ = (\amt[4]~input_o\ & (\le3_out[42]~117_combout\)) # (!\amt[4]~input_o\ & ((\le3_out[26]~125_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \le3_out[42]~117_combout\,
	datac => \amt[4]~input_o\,
	datad => \le3_out[26]~125_combout\,
	combout => \le5_out~60_combout\);

-- Location: LCCOMB_X114_Y29_N18
\le4_out[58]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \le4_out[58]~20_combout\ = (\amt[4]~input_o\ & (((\lar[1]~input_o\ & \le3_out[10]~120_combout\)))) # (!\amt[4]~input_o\ & (\le3_out[58]~123_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le3_out[58]~123_combout\,
	datab => \amt[4]~input_o\,
	datac => \lar[1]~input_o\,
	datad => \le3_out[10]~120_combout\,
	combout => \le4_out[58]~20_combout\);

-- Location: LCCOMB_X114_Y29_N28
\le5_out~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~61_combout\ = (\amt[5]~input_o\ & ((\le4_out[48]~35_combout\) # ((\le4_out[58]~20_combout\)))) # (!\amt[5]~input_o\ & (((\le5_out~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \le4_out[48]~35_combout\,
	datac => \le5_out~60_combout\,
	datad => \le4_out[58]~20_combout\,
	combout => \le5_out~61_combout\);

-- Location: LCCOMB_X108_Y33_N0
\le5_out~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~62_combout\ = (\amt[4]~input_o\ & ((\le3_out[43]~130_combout\))) # (!\amt[4]~input_o\ & (\le3_out[27]~132_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datac => \le3_out[27]~132_combout\,
	datad => \le3_out[43]~130_combout\,
	combout => \le5_out~62_combout\);

-- Location: LCCOMB_X108_Y33_N16
\le4_out[59]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \le4_out[59]~21_combout\ = (\amt[4]~input_o\ & (\lar[1]~input_o\ & \le3_out[11]~135_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \lar[1]~input_o\,
	datad => \le3_out[11]~135_combout\,
	combout => \le4_out[59]~21_combout\);

-- Location: LCCOMB_X108_Y33_N10
\le4_out[59]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \le4_out[59]~22_combout\ = (\le4_out[48]~35_combout\) # ((\le4_out[59]~21_combout\) # ((!\amt[4]~input_o\ & \le3_out[59]~128_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le4_out[48]~35_combout\,
	datab => \amt[4]~input_o\,
	datac => \le3_out[59]~128_combout\,
	datad => \le4_out[59]~21_combout\,
	combout => \le4_out[59]~22_combout\);

-- Location: LCCOMB_X108_Y33_N26
\le5_out~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~63_combout\ = (\amt[5]~input_o\ & ((\le4_out[59]~22_combout\))) # (!\amt[5]~input_o\ & (\le5_out~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \le5_out~62_combout\,
	datac => \amt[5]~input_o\,
	datad => \le4_out[59]~22_combout\,
	combout => \le5_out~63_combout\);

-- Location: LCCOMB_X111_Y32_N22
\le4_out[60]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \le4_out[60]~23_combout\ = (\amt[4]~input_o\ & (((\lar[1]~input_o\ & \le3_out[12]~140_combout\)))) # (!\amt[4]~input_o\ & (\le3_out[60]~143_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \le3_out[60]~143_combout\,
	datac => \lar[1]~input_o\,
	datad => \le3_out[12]~140_combout\,
	combout => \le4_out[60]~23_combout\);

-- Location: LCCOMB_X110_Y32_N10
\le5_out~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~64_combout\ = (\amt[4]~input_o\ & (\le3_out[44]~137_combout\)) # (!\amt[4]~input_o\ & ((\le3_out[28]~144_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \le3_out[44]~137_combout\,
	datac => \amt[4]~input_o\,
	datad => \le3_out[28]~144_combout\,
	combout => \le5_out~64_combout\);

-- Location: LCCOMB_X111_Y32_N8
\le5_out~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~65_combout\ = (\amt[5]~input_o\ & ((\le4_out[60]~23_combout\) # ((\le4_out[48]~35_combout\)))) # (!\amt[5]~input_o\ & (((\le5_out~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le4_out[60]~23_combout\,
	datab => \amt[5]~input_o\,
	datac => \le4_out[48]~35_combout\,
	datad => \le5_out~64_combout\,
	combout => \le5_out~65_combout\);

-- Location: LCCOMB_X111_Y31_N26
\le5_out~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~66_combout\ = (\amt[4]~input_o\ & (\le3_out[45]~148_combout\)) # (!\amt[4]~input_o\ & ((\le3_out[29]~149_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datac => \le3_out[45]~148_combout\,
	datad => \le3_out[29]~149_combout\,
	combout => \le5_out~66_combout\);

-- Location: LCCOMB_X111_Y31_N18
\le4_out[61]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \le4_out[61]~36_combout\ = (\lar[1]~input_o\ & (((\le3_out[13]~152_combout\)))) # (!\lar[1]~input_o\ & (\lar[0]~input_o\ & ((\le3_out[63]~163_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[0]~input_o\,
	datab => \lar[1]~input_o\,
	datac => \le3_out[13]~152_combout\,
	datad => \le3_out[63]~163_combout\,
	combout => \le4_out[61]~36_combout\);

-- Location: LCCOMB_X111_Y31_N16
\le4_out[61]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \le4_out[61]~24_combout\ = (\amt[4]~input_o\ & ((\le4_out[61]~36_combout\))) # (!\amt[4]~input_o\ & (\le3_out[61]~146_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le3_out[61]~146_combout\,
	datac => \amt[4]~input_o\,
	datad => \le4_out[61]~36_combout\,
	combout => \le4_out[61]~24_combout\);

-- Location: LCCOMB_X111_Y31_N12
\le5_out~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~67_combout\ = (\amt[5]~input_o\ & ((\le4_out[61]~24_combout\))) # (!\amt[5]~input_o\ & (\le5_out~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datac => \le5_out~66_combout\,
	datad => \le4_out[61]~24_combout\,
	combout => \le5_out~67_combout\);

-- Location: LCCOMB_X114_Y33_N14
\le4_out[62]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \le4_out[62]~37_combout\ = (\lar[1]~input_o\ & (((\le3_out[14]~157_combout\)))) # (!\lar[1]~input_o\ & (\lar[0]~input_o\ & (\le3_out[63]~163_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[0]~input_o\,
	datab => \lar[1]~input_o\,
	datac => \le3_out[63]~163_combout\,
	datad => \le3_out[14]~157_combout\,
	combout => \le4_out[62]~37_combout\);

-- Location: LCCOMB_X114_Y33_N26
\le4_out[62]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \le4_out[62]~25_combout\ = (\amt[4]~input_o\ & (\le4_out[62]~37_combout\)) # (!\amt[4]~input_o\ & ((\le3_out[62]~160_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[4]~input_o\,
	datac => \le4_out[62]~37_combout\,
	datad => \le3_out[62]~160_combout\,
	combout => \le4_out[62]~25_combout\);

-- Location: LCCOMB_X114_Y33_N20
\le5_out~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~68_combout\ = (\amt[4]~input_o\ & ((\le3_out[46]~154_combout\))) # (!\amt[4]~input_o\ & (\le3_out[30]~161_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[4]~input_o\,
	datac => \le3_out[30]~161_combout\,
	datad => \le3_out[46]~154_combout\,
	combout => \le5_out~68_combout\);

-- Location: LCCOMB_X114_Y33_N10
\le5_out~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~69_combout\ = (\amt[5]~input_o\ & (\le4_out[62]~25_combout\)) # (!\amt[5]~input_o\ & ((\le5_out~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datac => \le4_out[62]~25_combout\,
	datad => \le5_out~68_combout\,
	combout => \le5_out~69_combout\);

-- Location: LCCOMB_X110_Y33_N30
\le4_out[63]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \le4_out[63]~26_combout\ = (\amt[4]~input_o\ & (\lar[1]~input_o\ & (\le3_out[15]~169_combout\))) # (!\amt[4]~input_o\ & (((\le3_out[63]~163_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[1]~input_o\,
	datab => \amt[4]~input_o\,
	datac => \le3_out[15]~169_combout\,
	datad => \le3_out[63]~163_combout\,
	combout => \le4_out[63]~26_combout\);

-- Location: LCCOMB_X113_Y32_N22
\le5_out~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~70_combout\ = (\amt[4]~input_o\ & (\le3_out[47]~165_combout\)) # (!\amt[4]~input_o\ & ((\le3_out[31]~166_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[4]~input_o\,
	datac => \le3_out[47]~165_combout\,
	datad => \le3_out[31]~166_combout\,
	combout => \le5_out~70_combout\);

-- Location: LCCOMB_X110_Y33_N16
\le5_out~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~71_combout\ = (\amt[5]~input_o\ & ((\le4_out[48]~35_combout\) # ((\le4_out[63]~26_combout\)))) # (!\amt[5]~input_o\ & (((\le5_out~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le4_out[48]~35_combout\,
	datab => \amt[5]~input_o\,
	datac => \le4_out[63]~26_combout\,
	datad => \le5_out~70_combout\,
	combout => \le5_out~71_combout\);

-- Location: LCCOMB_X111_Y29_N12
\le5_out~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~75_combout\ = (!\amt[5]~input_o\ & ((\amt[4]~input_o\ & (\le3_out[48]~10_combout\)) # (!\amt[4]~input_o\ & ((\le3_out[32]~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \amt[5]~input_o\,
	datac => \le3_out[48]~10_combout\,
	datad => \le3_out[32]~17_combout\,
	combout => \le5_out~75_combout\);

-- Location: LCCOMB_X111_Y29_N26
\le5_out~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~74_combout\ = (\le5_out~73_combout\ & ((\amt[4]~input_o\ & ((\le3_out[16]~14_combout\))) # (!\amt[4]~input_o\ & (\le3_out[0]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le5_out~73_combout\,
	datab => \le3_out[0]~20_combout\,
	datac => \amt[4]~input_o\,
	datad => \le3_out[16]~14_combout\,
	combout => \le5_out~74_combout\);

-- Location: LCCOMB_X111_Y33_N10
\le5_out~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~8_combout\ = (!\lar[1]~input_o\ & \lar[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[1]~input_o\,
	datad => \lar[0]~input_o\,
	combout => \le5_out~8_combout\);

-- Location: LCCOMB_X110_Y33_N2
\le5_out~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~72_combout\ = (\amt[5]~input_o\ & (\le5_out~8_combout\ & ((\le4_out[63]~26_combout\) # (\le4_out[48]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \le5_out~8_combout\,
	datac => \le4_out[63]~26_combout\,
	datad => \le4_out[48]~35_combout\,
	combout => \le5_out~72_combout\);

-- Location: LCCOMB_X111_Y29_N14
\le5_out~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~76_combout\ = (\le5_out~75_combout\) # ((\le5_out~74_combout\) # (\le5_out~72_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le5_out~75_combout\,
	datac => \le5_out~74_combout\,
	datad => \le5_out~72_combout\,
	combout => \le5_out~76_combout\);

-- Location: LCCOMB_X108_Y30_N0
\le5_out~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~73_combout\ = (\lar[1]~input_o\ & \amt[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lar[1]~input_o\,
	datad => \amt[5]~input_o\,
	combout => \le5_out~73_combout\);

-- Location: LCCOMB_X114_Y32_N16
\le5_out~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~77_combout\ = (\le5_out~73_combout\ & ((\amt[4]~input_o\ & (\le3_out[17]~33_combout\)) # (!\amt[4]~input_o\ & ((\le3_out[1]~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \le5_out~73_combout\,
	datac => \le3_out[17]~33_combout\,
	datad => \le3_out[1]~26_combout\,
	combout => \le5_out~77_combout\);

-- Location: LCCOMB_X114_Y32_N18
\le5_out~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~78_combout\ = (!\amt[5]~input_o\ & ((\amt[4]~input_o\ & (\le3_out[49]~29_combout\)) # (!\amt[4]~input_o\ & ((\le3_out[33]~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \le3_out[49]~29_combout\,
	datac => \le3_out[33]~23_combout\,
	datad => \amt[5]~input_o\,
	combout => \le5_out~78_combout\);

-- Location: LCCOMB_X114_Y32_N28
\le5_out~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~79_combout\ = (\le5_out~77_combout\) # ((\le5_out~72_combout\) # (\le5_out~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \le5_out~77_combout\,
	datac => \le5_out~72_combout\,
	datad => \le5_out~78_combout\,
	combout => \le5_out~79_combout\);

-- Location: LCCOMB_X110_Y30_N8
\le5_out~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~81_combout\ = (!\amt[5]~input_o\ & ((\amt[4]~input_o\ & (\le3_out[50]~35_combout\)) # (!\amt[4]~input_o\ & ((\le3_out[34]~42_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \amt[5]~input_o\,
	datac => \le3_out[50]~35_combout\,
	datad => \le3_out[34]~42_combout\,
	combout => \le5_out~81_combout\);

-- Location: LCCOMB_X110_Y30_N10
\le5_out~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~80_combout\ = (\le5_out~73_combout\ & ((\amt[4]~input_o\ & (\le3_out[18]~39_combout\)) # (!\amt[4]~input_o\ & ((\le3_out[2]~45_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \le3_out[18]~39_combout\,
	datac => \le5_out~73_combout\,
	datad => \le3_out[2]~45_combout\,
	combout => \le5_out~80_combout\);

-- Location: LCCOMB_X110_Y30_N14
\le5_out~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~82_combout\ = (\le5_out~81_combout\) # ((\le5_out~72_combout\) # (\le5_out~80_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \le5_out~81_combout\,
	datac => \le5_out~72_combout\,
	datad => \le5_out~80_combout\,
	combout => \le5_out~82_combout\);

-- Location: LCCOMB_X110_Y29_N6
\le5_out~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~84_combout\ = (!\amt[5]~input_o\ & ((\amt[4]~input_o\ & (\le3_out[51]~48_combout\)) # (!\amt[4]~input_o\ & ((\le3_out[35]~55_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le3_out[51]~48_combout\,
	datab => \amt[4]~input_o\,
	datac => \amt[5]~input_o\,
	datad => \le3_out[35]~55_combout\,
	combout => \le5_out~84_combout\);

-- Location: LCCOMB_X110_Y29_N0
\le5_out~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~83_combout\ = (\le5_out~73_combout\ & ((\amt[4]~input_o\ & (\le3_out[19]~52_combout\)) # (!\amt[4]~input_o\ & ((\le3_out[3]~58_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le3_out[19]~52_combout\,
	datab => \le3_out[3]~58_combout\,
	datac => \le5_out~73_combout\,
	datad => \amt[4]~input_o\,
	combout => \le5_out~83_combout\);

-- Location: LCCOMB_X110_Y29_N12
\le5_out~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~85_combout\ = (\le5_out~84_combout\) # ((\le5_out~72_combout\) # (\le5_out~83_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le5_out~84_combout\,
	datab => \le5_out~72_combout\,
	datac => \le5_out~83_combout\,
	combout => \le5_out~85_combout\);

-- Location: LCCOMB_X111_Y30_N14
\le5_out~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~86_combout\ = (\le5_out~73_combout\ & ((\amt[4]~input_o\ & (\le3_out[20]~67_combout\)) # (!\amt[4]~input_o\ & ((\le3_out[4]~63_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le3_out[20]~67_combout\,
	datab => \amt[4]~input_o\,
	datac => \le5_out~73_combout\,
	datad => \le3_out[4]~63_combout\,
	combout => \le5_out~86_combout\);

-- Location: LCCOMB_X111_Y30_N8
\le5_out~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~87_combout\ = (!\amt[5]~input_o\ & ((\amt[4]~input_o\ & ((\le3_out[52]~65_combout\))) # (!\amt[4]~input_o\ & (\le3_out[36]~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le3_out[36]~60_combout\,
	datab => \amt[4]~input_o\,
	datac => \amt[5]~input_o\,
	datad => \le3_out[52]~65_combout\,
	combout => \le5_out~87_combout\);

-- Location: LCCOMB_X111_Y30_N18
\le5_out~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~88_combout\ = (\le5_out~86_combout\) # ((\le5_out~87_combout\) # (\le5_out~72_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \le5_out~86_combout\,
	datac => \le5_out~87_combout\,
	datad => \le5_out~72_combout\,
	combout => \le5_out~88_combout\);

-- Location: LCCOMB_X110_Y31_N8
\le5_out~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~89_combout\ = (!\amt[5]~input_o\ & ((\amt[4]~input_o\ & ((\le3_out[53]~69_combout\))) # (!\amt[4]~input_o\ & (\le3_out[37]~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le3_out[37]~71_combout\,
	datab => \amt[4]~input_o\,
	datac => \amt[5]~input_o\,
	datad => \le3_out[53]~69_combout\,
	combout => \le5_out~89_combout\);

-- Location: LCCOMB_X110_Y31_N18
\le5_out~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~90_combout\ = (\le5_out~89_combout\) # ((\le5_out~72_combout\) # ((\le5_out~73_combout\ & \le5_out~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le5_out~73_combout\,
	datab => \le5_out~14_combout\,
	datac => \le5_out~89_combout\,
	datad => \le5_out~72_combout\,
	combout => \le5_out~90_combout\);

-- Location: LCCOMB_X109_Y30_N24
\le5_out~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~92_combout\ = (!\amt[5]~input_o\ & ((\amt[4]~input_o\ & ((\le3_out[54]~83_combout\))) # (!\amt[4]~input_o\ & (\le3_out[38]~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \le3_out[38]~78_combout\,
	datac => \amt[5]~input_o\,
	datad => \le3_out[54]~83_combout\,
	combout => \le5_out~92_combout\);

-- Location: LCCOMB_X109_Y30_N22
\le5_out~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~91_combout\ = (\le5_out~73_combout\ & ((\amt[4]~input_o\ & (\le3_out[22]~85_combout\)) # (!\amt[4]~input_o\ & ((\le3_out[6]~81_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le5_out~73_combout\,
	datab => \le3_out[22]~85_combout\,
	datac => \amt[4]~input_o\,
	datad => \le3_out[6]~81_combout\,
	combout => \le5_out~91_combout\);

-- Location: LCCOMB_X109_Y30_N10
\le5_out~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~93_combout\ = (\le5_out~92_combout\) # ((\le5_out~91_combout\) # (\le5_out~72_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \le5_out~92_combout\,
	datac => \le5_out~91_combout\,
	datad => \le5_out~72_combout\,
	combout => \le5_out~93_combout\);

-- Location: LCCOMB_X113_Y33_N4
\le5_out~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~94_combout\ = (\le5_out~73_combout\ & ((\amt[4]~input_o\ & ((\le3_out[23]~94_combout\))) # (!\amt[4]~input_o\ & (\le3_out[7]~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \le5_out~73_combout\,
	datac => \le3_out[7]~90_combout\,
	datad => \le3_out[23]~94_combout\,
	combout => \le5_out~94_combout\);

-- Location: LCCOMB_X113_Y33_N6
\le5_out~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~95_combout\ = (!\amt[5]~input_o\ & ((\amt[4]~input_o\ & (\le3_out[55]~92_combout\)) # (!\amt[4]~input_o\ & ((\le3_out[39]~87_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \amt[5]~input_o\,
	datac => \le3_out[55]~92_combout\,
	datad => \le3_out[39]~87_combout\,
	combout => \le5_out~95_combout\);

-- Location: LCCOMB_X113_Y33_N28
\le5_out~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~96_combout\ = (\le5_out~94_combout\) # ((\le5_out~72_combout\) # (\le5_out~95_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \le5_out~94_combout\,
	datac => \le5_out~72_combout\,
	datad => \le5_out~95_combout\,
	combout => \le5_out~96_combout\);

-- Location: LCCOMB_X109_Y29_N16
\le5_out~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~98_combout\ = (!\amt[5]~input_o\ & ((\amt[4]~input_o\ & ((\le3_out[56]~103_combout\))) # (!\amt[4]~input_o\ & (\le3_out[40]~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \le3_out[40]~96_combout\,
	datac => \le3_out[56]~103_combout\,
	datad => \amt[5]~input_o\,
	combout => \le5_out~98_combout\);

-- Location: LCCOMB_X109_Y29_N30
\le5_out~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~97_combout\ = (\le5_out~73_combout\ & ((\amt[4]~input_o\ & (\le3_out[24]~105_combout\)) # (!\amt[4]~input_o\ & ((\le3_out[8]~99_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \le5_out~73_combout\,
	datac => \le3_out[24]~105_combout\,
	datad => \le3_out[8]~99_combout\,
	combout => \le5_out~97_combout\);

-- Location: LCCOMB_X109_Y29_N10
\le5_out~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~99_combout\ = (\le5_out~98_combout\) # ((\le5_out~97_combout\) # (\le5_out~72_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \le5_out~98_combout\,
	datac => \le5_out~97_combout\,
	datad => \le5_out~72_combout\,
	combout => \le5_out~99_combout\);

-- Location: LCCOMB_X112_Y31_N28
\le5_out~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~100_combout\ = (!\amt[5]~input_o\ & ((\amt[4]~input_o\ & (\le3_out[57]~108_combout\)) # (!\amt[4]~input_o\ & ((\le3_out[41]~110_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \amt[4]~input_o\,
	datac => \le3_out[57]~108_combout\,
	datad => \le3_out[41]~110_combout\,
	combout => \le5_out~100_combout\);

-- Location: LCCOMB_X112_Y31_N2
\le5_out~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~101_combout\ = (\le5_out~72_combout\) # ((\le5_out~100_combout\) # ((\le5_out~73_combout\ & \le5_out~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le5_out~72_combout\,
	datab => \le5_out~100_combout\,
	datac => \le5_out~73_combout\,
	datad => \le5_out~23_combout\,
	combout => \le5_out~101_combout\);

-- Location: LCCOMB_X114_Y29_N24
\le5_out~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~103_combout\ = (!\amt[5]~input_o\ & ((\amt[4]~input_o\ & (\le3_out[58]~123_combout\)) # (!\amt[4]~input_o\ & ((\le3_out[42]~117_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le3_out[58]~123_combout\,
	datab => \amt[4]~input_o\,
	datac => \amt[5]~input_o\,
	datad => \le3_out[42]~117_combout\,
	combout => \le5_out~103_combout\);

-- Location: LCCOMB_X114_Y29_N22
\le5_out~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~102_combout\ = (\le5_out~73_combout\ & ((\amt[4]~input_o\ & (\le3_out[26]~125_combout\)) # (!\amt[4]~input_o\ & ((\le3_out[10]~120_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le5_out~73_combout\,
	datab => \le3_out[26]~125_combout\,
	datac => \amt[4]~input_o\,
	datad => \le3_out[10]~120_combout\,
	combout => \le5_out~102_combout\);

-- Location: LCCOMB_X114_Y29_N6
\le5_out~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~104_combout\ = (\le5_out~103_combout\) # ((\le5_out~102_combout\) # (\le5_out~72_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \le5_out~103_combout\,
	datac => \le5_out~102_combout\,
	datad => \le5_out~72_combout\,
	combout => \le5_out~104_combout\);

-- Location: LCCOMB_X108_Y33_N24
\le5_out~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~105_combout\ = (!\amt[5]~input_o\ & ((\amt[4]~input_o\ & (\le3_out[59]~128_combout\)) # (!\amt[4]~input_o\ & ((\le3_out[43]~130_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \amt[5]~input_o\,
	datac => \le3_out[59]~128_combout\,
	datad => \le3_out[43]~130_combout\,
	combout => \le5_out~105_combout\);

-- Location: LCCOMB_X108_Y33_N14
\le5_out~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~106_combout\ = (\le5_out~105_combout\) # ((\le5_out~72_combout\) # ((\le5_out~73_combout\ & \le5_out~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le5_out~73_combout\,
	datab => \le5_out~105_combout\,
	datac => \le5_out~72_combout\,
	datad => \le5_out~28_combout\,
	combout => \le5_out~106_combout\);

-- Location: LCCOMB_X110_Y32_N18
\le5_out~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~108_combout\ = (!\amt[5]~input_o\ & ((\amt[4]~input_o\ & ((\le3_out[60]~143_combout\))) # (!\amt[4]~input_o\ & (\le3_out[44]~137_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \amt[4]~input_o\,
	datac => \le3_out[44]~137_combout\,
	datad => \le3_out[60]~143_combout\,
	combout => \le5_out~108_combout\);

-- Location: LCCOMB_X110_Y32_N4
\le5_out~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~107_combout\ = (\le5_out~73_combout\ & ((\amt[4]~input_o\ & ((\le3_out[28]~144_combout\))) # (!\amt[4]~input_o\ & (\le3_out[12]~140_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le5_out~73_combout\,
	datab => \amt[4]~input_o\,
	datac => \le3_out[12]~140_combout\,
	datad => \le3_out[28]~144_combout\,
	combout => \le5_out~107_combout\);

-- Location: LCCOMB_X110_Y32_N24
\le5_out~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~109_combout\ = (\le5_out~108_combout\) # ((\le5_out~107_combout\) # (\le5_out~72_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \le5_out~108_combout\,
	datac => \le5_out~107_combout\,
	datad => \le5_out~72_combout\,
	combout => \le5_out~109_combout\);

-- Location: LCCOMB_X111_Y31_N22
\le5_out~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~110_combout\ = (!\amt[5]~input_o\ & ((\amt[4]~input_o\ & ((\le3_out[61]~146_combout\))) # (!\amt[4]~input_o\ & (\le3_out[45]~148_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \amt[4]~input_o\,
	datac => \le3_out[45]~148_combout\,
	datad => \le3_out[61]~146_combout\,
	combout => \le5_out~110_combout\);

-- Location: LCCOMB_X111_Y31_N20
\le5_out~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~111_combout\ = (\le5_out~110_combout\) # ((\le5_out~72_combout\) # ((\le5_out~73_combout\ & \le5_out~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le5_out~110_combout\,
	datab => \le5_out~73_combout\,
	datac => \le5_out~33_combout\,
	datad => \le5_out~72_combout\,
	combout => \le5_out~111_combout\);

-- Location: LCCOMB_X114_Y33_N2
\le5_out~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~113_combout\ = (!\amt[5]~input_o\ & ((\amt[4]~input_o\ & ((\le3_out[62]~160_combout\))) # (!\amt[4]~input_o\ & (\le3_out[46]~154_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \le3_out[46]~154_combout\,
	datac => \amt[4]~input_o\,
	datad => \le3_out[62]~160_combout\,
	combout => \le5_out~113_combout\);

-- Location: LCCOMB_X114_Y33_N12
\le5_out~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~112_combout\ = (\le5_out~73_combout\ & ((\amt[4]~input_o\ & (\le3_out[30]~161_combout\)) # (!\amt[4]~input_o\ & ((\le3_out[14]~157_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le5_out~73_combout\,
	datab => \amt[4]~input_o\,
	datac => \le3_out[30]~161_combout\,
	datad => \le3_out[14]~157_combout\,
	combout => \le5_out~112_combout\);

-- Location: LCCOMB_X114_Y33_N28
\le5_out~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~114_combout\ = (\le5_out~113_combout\) # ((\le5_out~72_combout\) # (\le5_out~112_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \le5_out~113_combout\,
	datac => \le5_out~72_combout\,
	datad => \le5_out~112_combout\,
	combout => \le5_out~114_combout\);

-- Location: LCCOMB_X110_Y33_N28
\le5_out~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~115_combout\ = (!\amt[5]~input_o\ & ((\amt[4]~input_o\ & ((\le3_out[63]~163_combout\))) # (!\amt[4]~input_o\ & (\le3_out[47]~165_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \amt[4]~input_o\,
	datac => \le3_out[47]~165_combout\,
	datad => \le3_out[63]~163_combout\,
	combout => \le5_out~115_combout\);

-- Location: LCCOMB_X110_Y33_N26
\le5_out~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~116_combout\ = (\le5_out~72_combout\) # ((\le5_out~115_combout\) # ((\le5_out~73_combout\ & \le5_out~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le5_out~73_combout\,
	datab => \le5_out~72_combout\,
	datac => \le5_out~38_combout\,
	datad => \le5_out~115_combout\,
	combout => \le5_out~116_combout\);

-- Location: LCCOMB_X111_Y29_N20
\le5_out~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~117_combout\ = (!\amt[5]~input_o\ & ((\le4_out[48]~35_combout\) # (\le4_out[48]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datac => \le4_out[48]~35_combout\,
	datad => \le4_out[48]~6_combout\,
	combout => \le5_out~117_combout\);

-- Location: LCCOMB_X111_Y29_N30
\le5_out~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~118_combout\ = (\le5_out~117_combout\) # ((\le5_out~72_combout\) # ((\le5_out~73_combout\ & \le5_out~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le5_out~73_combout\,
	datab => \le5_out~117_combout\,
	datac => \le5_out~40_combout\,
	datad => \le5_out~72_combout\,
	combout => \le5_out~118_combout\);

-- Location: LCCOMB_X114_Y32_N30
\le5_out~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~119_combout\ = (\le5_out~73_combout\ & ((\amt[4]~input_o\ & (\le3_out[33]~23_combout\)) # (!\amt[4]~input_o\ & ((\le3_out[17]~33_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le3_out[33]~23_combout\,
	datab => \le5_out~73_combout\,
	datac => \le3_out[17]~33_combout\,
	datad => \amt[4]~input_o\,
	combout => \le5_out~119_combout\);

-- Location: LCCOMB_X114_Y32_N24
\le4_out[49]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \le4_out[49]~27_combout\ = (\le4_out[49]~7_combout\) # (\le4_out[48]~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \le4_out[49]~7_combout\,
	datad => \le4_out[48]~35_combout\,
	combout => \le4_out[49]~27_combout\);

-- Location: LCCOMB_X114_Y32_N2
\le5_out~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~120_combout\ = (\le5_out~119_combout\) # ((\le5_out~72_combout\) # ((!\amt[5]~input_o\ & \le4_out[49]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le5_out~119_combout\,
	datab => \amt[5]~input_o\,
	datac => \le5_out~72_combout\,
	datad => \le4_out[49]~27_combout\,
	combout => \le5_out~120_combout\);

-- Location: LCCOMB_X110_Y30_N12
\le5_out~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~121_combout\ = (\le5_out~73_combout\ & ((\amt[4]~input_o\ & ((\le3_out[34]~42_combout\))) # (!\amt[4]~input_o\ & (\le3_out[18]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \le3_out[18]~39_combout\,
	datac => \le5_out~73_combout\,
	datad => \le3_out[34]~42_combout\,
	combout => \le5_out~121_combout\);

-- Location: LCCOMB_X110_Y30_N2
\le5_out~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~122_combout\ = (\le5_out~121_combout\) # ((\le5_out~72_combout\) # ((!\amt[5]~input_o\ & \le4_out[50]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le5_out~121_combout\,
	datab => \amt[5]~input_o\,
	datac => \le5_out~72_combout\,
	datad => \le4_out[50]~9_combout\,
	combout => \le5_out~122_combout\);

-- Location: LCCOMB_X110_Y29_N22
\le5_out~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~123_combout\ = (\le5_out~73_combout\ & ((\amt[4]~input_o\ & ((\le3_out[35]~55_combout\))) # (!\amt[4]~input_o\ & (\le3_out[19]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le3_out[19]~52_combout\,
	datab => \amt[4]~input_o\,
	datac => \le5_out~73_combout\,
	datad => \le3_out[35]~55_combout\,
	combout => \le5_out~123_combout\);

-- Location: LCCOMB_X110_Y29_N16
\le4_out[51]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \le4_out[51]~28_combout\ = (\le4_out[51]~10_combout\) # (\le4_out[48]~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \le4_out[51]~10_combout\,
	datad => \le4_out[48]~35_combout\,
	combout => \le4_out[51]~28_combout\);

-- Location: LCCOMB_X110_Y29_N2
\le5_out~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~124_combout\ = (\le5_out~123_combout\) # ((\le5_out~72_combout\) # ((!\amt[5]~input_o\ & \le4_out[51]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le5_out~123_combout\,
	datab => \amt[5]~input_o\,
	datac => \le5_out~72_combout\,
	datad => \le4_out[51]~28_combout\,
	combout => \le5_out~124_combout\);

-- Location: LCCOMB_X111_Y30_N0
\le5_out~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~125_combout\ = (\le5_out~73_combout\ & ((\amt[4]~input_o\ & (\le3_out[36]~60_combout\)) # (!\amt[4]~input_o\ & ((\le3_out[20]~67_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le3_out[36]~60_combout\,
	datab => \amt[4]~input_o\,
	datac => \le5_out~73_combout\,
	datad => \le3_out[20]~67_combout\,
	combout => \le5_out~125_combout\);

-- Location: LCCOMB_X111_Y32_N10
\le4_out[52]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \le4_out[52]~29_combout\ = (\le4_out[52]~11_combout\) # (\le4_out[48]~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le4_out[52]~11_combout\,
	datac => \le4_out[48]~35_combout\,
	combout => \le4_out[52]~29_combout\);

-- Location: LCCOMB_X111_Y30_N2
\le5_out~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~126_combout\ = (\le5_out~125_combout\) # ((\le5_out~72_combout\) # ((!\amt[5]~input_o\ & \le4_out[52]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \le5_out~125_combout\,
	datac => \le4_out[52]~29_combout\,
	datad => \le5_out~72_combout\,
	combout => \le5_out~126_combout\);

-- Location: LCCOMB_X110_Y31_N12
\le5_out~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~127_combout\ = (\le5_out~73_combout\ & ((\amt[4]~input_o\ & (\le3_out[37]~71_combout\)) # (!\amt[4]~input_o\ & ((\le3_out[21]~73_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le3_out[37]~71_combout\,
	datab => \le5_out~73_combout\,
	datac => \amt[4]~input_o\,
	datad => \le3_out[21]~73_combout\,
	combout => \le5_out~127_combout\);

-- Location: LCCOMB_X110_Y31_N22
\le4_out[53]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \le4_out[53]~30_combout\ = (\le4_out[48]~35_combout\) # (\le4_out[53]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \le4_out[48]~35_combout\,
	datad => \le4_out[53]~12_combout\,
	combout => \le4_out[53]~30_combout\);

-- Location: LCCOMB_X110_Y31_N4
\le5_out~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~128_combout\ = (\le5_out~127_combout\) # ((\le5_out~72_combout\) # ((!\amt[5]~input_o\ & \le4_out[53]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le5_out~127_combout\,
	datab => \amt[5]~input_o\,
	datac => \le4_out[53]~30_combout\,
	datad => \le5_out~72_combout\,
	combout => \le5_out~128_combout\);

-- Location: LCCOMB_X109_Y30_N4
\le5_out~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~129_combout\ = (\le5_out~73_combout\ & ((\amt[4]~input_o\ & (\le3_out[38]~78_combout\)) # (!\amt[4]~input_o\ & ((\le3_out[22]~85_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \le3_out[38]~78_combout\,
	datac => \le5_out~73_combout\,
	datad => \le3_out[22]~85_combout\,
	combout => \le5_out~129_combout\);

-- Location: LCCOMB_X109_Y30_N6
\le5_out~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~130_combout\ = (\le5_out~72_combout\) # ((\le5_out~129_combout\) # ((!\amt[5]~input_o\ & \le4_out[54]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le5_out~72_combout\,
	datab => \amt[5]~input_o\,
	datac => \le5_out~129_combout\,
	datad => \le4_out[54]~14_combout\,
	combout => \le5_out~130_combout\);

-- Location: LCCOMB_X113_Y33_N22
\le5_out~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~131_combout\ = (\le5_out~73_combout\ & ((\amt[4]~input_o\ & ((\le3_out[39]~87_combout\))) # (!\amt[4]~input_o\ & (\le3_out[23]~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \le3_out[23]~94_combout\,
	datac => \le5_out~73_combout\,
	datad => \le3_out[39]~87_combout\,
	combout => \le5_out~131_combout\);

-- Location: LCCOMB_X113_Y33_N20
\le4_out[55]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \le4_out[55]~31_combout\ = (\le4_out[48]~35_combout\) # (\le4_out[55]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \le4_out[48]~35_combout\,
	datad => \le4_out[55]~15_combout\,
	combout => \le4_out[55]~31_combout\);

-- Location: LCCOMB_X113_Y33_N2
\le5_out~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~132_combout\ = (\le5_out~131_combout\) # ((\le5_out~72_combout\) # ((!\amt[5]~input_o\ & \le4_out[55]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le5_out~131_combout\,
	datab => \amt[5]~input_o\,
	datac => \le5_out~72_combout\,
	datad => \le4_out[55]~31_combout\,
	combout => \le5_out~132_combout\);

-- Location: LCCOMB_X109_Y29_N8
\le5_out~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~133_combout\ = (\le5_out~73_combout\ & ((\amt[4]~input_o\ & ((\le3_out[40]~96_combout\))) # (!\amt[4]~input_o\ & (\le3_out[24]~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \le5_out~73_combout\,
	datac => \le3_out[24]~105_combout\,
	datad => \le3_out[40]~96_combout\,
	combout => \le5_out~133_combout\);

-- Location: LCCOMB_X109_Y29_N2
\le5_out~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~134_combout\ = (\le5_out~72_combout\) # ((\le5_out~133_combout\) # ((!\amt[5]~input_o\ & \le4_out[56]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le5_out~72_combout\,
	datab => \le5_out~133_combout\,
	datac => \amt[5]~input_o\,
	datad => \le4_out[56]~17_combout\,
	combout => \le5_out~134_combout\);

-- Location: LCCOMB_X113_Y31_N16
\le5_out~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~135_combout\ = (\le5_out~73_combout\ & ((\amt[4]~input_o\ & (\le3_out[41]~110_combout\)) # (!\amt[4]~input_o\ & ((\le3_out[25]~112_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le3_out[41]~110_combout\,
	datab => \le5_out~73_combout\,
	datac => \amt[4]~input_o\,
	datad => \le3_out[25]~112_combout\,
	combout => \le5_out~135_combout\);

-- Location: LCCOMB_X114_Y31_N10
\le5_out~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~136_combout\ = (\le5_out~72_combout\) # ((\le5_out~135_combout\) # ((!\amt[5]~input_o\ & \le4_out[57]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \le5_out~72_combout\,
	datac => \le5_out~135_combout\,
	datad => \le4_out[57]~19_combout\,
	combout => \le5_out~136_combout\);

-- Location: LCCOMB_X114_Y29_N12
\le5_out~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~137_combout\ = (\le5_out~73_combout\ & ((\amt[4]~input_o\ & (\le3_out[42]~117_combout\)) # (!\amt[4]~input_o\ & ((\le3_out[26]~125_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le5_out~73_combout\,
	datab => \le3_out[42]~117_combout\,
	datac => \amt[4]~input_o\,
	datad => \le3_out[26]~125_combout\,
	combout => \le5_out~137_combout\);

-- Location: LCCOMB_X114_Y29_N26
\le4_out[58]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \le4_out[58]~32_combout\ = (\le4_out[48]~35_combout\) # (\le4_out[58]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \le4_out[48]~35_combout\,
	datad => \le4_out[58]~20_combout\,
	combout => \le4_out[58]~32_combout\);

-- Location: LCCOMB_X114_Y29_N20
\le5_out~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~138_combout\ = (\le5_out~137_combout\) # ((\le5_out~72_combout\) # ((!\amt[5]~input_o\ & \le4_out[58]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le5_out~137_combout\,
	datab => \amt[5]~input_o\,
	datac => \le4_out[58]~32_combout\,
	datad => \le5_out~72_combout\,
	combout => \le5_out~138_combout\);

-- Location: LCCOMB_X108_Y33_N20
\le5_out~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~139_combout\ = (\le5_out~73_combout\ & ((\amt[4]~input_o\ & ((\le3_out[43]~130_combout\))) # (!\amt[4]~input_o\ & (\le3_out[27]~132_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le5_out~73_combout\,
	datab => \amt[4]~input_o\,
	datac => \le3_out[27]~132_combout\,
	datad => \le3_out[43]~130_combout\,
	combout => \le5_out~139_combout\);

-- Location: LCCOMB_X108_Y33_N6
\le5_out~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~140_combout\ = (\le5_out~139_combout\) # ((\le5_out~72_combout\) # ((!\amt[5]~input_o\ & \le4_out[59]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \le5_out~139_combout\,
	datac => \le5_out~72_combout\,
	datad => \le4_out[59]~22_combout\,
	combout => \le5_out~140_combout\);

-- Location: LCCOMB_X110_Y32_N2
\le5_out~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~141_combout\ = (\le5_out~73_combout\ & ((\amt[4]~input_o\ & (\le3_out[44]~137_combout\)) # (!\amt[4]~input_o\ & ((\le3_out[28]~144_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le5_out~73_combout\,
	datab => \le3_out[44]~137_combout\,
	datac => \amt[4]~input_o\,
	datad => \le3_out[28]~144_combout\,
	combout => \le5_out~141_combout\);

-- Location: LCCOMB_X111_Y32_N16
\le4_out[60]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \le4_out[60]~33_combout\ = (\le4_out[60]~23_combout\) # (\le4_out[48]~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le4_out[60]~23_combout\,
	datac => \le4_out[48]~35_combout\,
	combout => \le4_out[60]~33_combout\);

-- Location: LCCOMB_X111_Y32_N14
\le5_out~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~142_combout\ = (\le5_out~141_combout\) # ((\le5_out~72_combout\) # ((!\amt[5]~input_o\ & \le4_out[60]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le5_out~141_combout\,
	datab => \amt[5]~input_o\,
	datac => \le5_out~72_combout\,
	datad => \le4_out[60]~33_combout\,
	combout => \le5_out~142_combout\);

-- Location: LCCOMB_X110_Y33_N20
\le5_out~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~149_combout\ = (!\lar[1]~input_o\ & (\lar[0]~input_o\ & ((\le4_out[63]~26_combout\) # (\le4_out[48]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[1]~input_o\,
	datab => \lar[0]~input_o\,
	datac => \le4_out[63]~26_combout\,
	datad => \le4_out[48]~35_combout\,
	combout => \le5_out~149_combout\);

-- Location: LCCOMB_X111_Y31_N10
\le5_out~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~143_combout\ = (\lar[1]~input_o\ & ((\amt[4]~input_o\ & (\le3_out[45]~148_combout\)) # (!\amt[4]~input_o\ & ((\le3_out[29]~149_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \lar[1]~input_o\,
	datac => \le3_out[45]~148_combout\,
	datad => \le3_out[29]~149_combout\,
	combout => \le5_out~143_combout\);

-- Location: LCCOMB_X111_Y31_N0
\le5_out~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~144_combout\ = (\amt[5]~input_o\ & (((\le5_out~149_combout\) # (\le5_out~143_combout\)))) # (!\amt[5]~input_o\ & (\le4_out[61]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \le4_out[61]~24_combout\,
	datac => \le5_out~149_combout\,
	datad => \le5_out~143_combout\,
	combout => \le5_out~144_combout\);

-- Location: LCCOMB_X114_Y33_N18
\le5_out~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~145_combout\ = (\lar[1]~input_o\ & ((\amt[4]~input_o\ & ((\le3_out[46]~154_combout\))) # (!\amt[4]~input_o\ & (\le3_out[30]~161_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[1]~input_o\,
	datab => \amt[4]~input_o\,
	datac => \le3_out[30]~161_combout\,
	datad => \le3_out[46]~154_combout\,
	combout => \le5_out~145_combout\);

-- Location: LCCOMB_X114_Y33_N4
\le5_out~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~146_combout\ = (\amt[5]~input_o\ & ((\le5_out~145_combout\) # ((\le5_out~149_combout\)))) # (!\amt[5]~input_o\ & (((\le4_out[62]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \le5_out~145_combout\,
	datac => \le4_out[62]~25_combout\,
	datad => \le5_out~149_combout\,
	combout => \le5_out~146_combout\);

-- Location: LCCOMB_X110_Y33_N14
\le4_out[63]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \le4_out[63]~34_combout\ = (\le4_out[63]~26_combout\) # (\le4_out[48]~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \le4_out[63]~26_combout\,
	datad => \le4_out[48]~35_combout\,
	combout => \le4_out[63]~34_combout\);

-- Location: LCCOMB_X110_Y33_N24
\le5_out~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~147_combout\ = (\le5_out~73_combout\ & ((\amt[4]~input_o\ & (\le3_out[47]~165_combout\)) # (!\amt[4]~input_o\ & ((\le3_out[31]~166_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le5_out~73_combout\,
	datab => \amt[4]~input_o\,
	datac => \le3_out[47]~165_combout\,
	datad => \le3_out[31]~166_combout\,
	combout => \le5_out~147_combout\);

-- Location: LCCOMB_X110_Y33_N12
\le5_out~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \le5_out~148_combout\ = (\le5_out~72_combout\) # ((\le5_out~147_combout\) # ((!\amt[5]~input_o\ & \le4_out[63]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \le5_out~72_combout\,
	datab => \amt[5]~input_o\,
	datac => \le4_out[63]~34_combout\,
	datad => \le5_out~147_combout\,
	combout => \le5_out~148_combout\);

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


