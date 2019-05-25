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

-- DATE "04/29/2019 00:24:01"

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
-- y[0]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[4]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[5]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[6]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[7]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[8]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[9]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[10]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[11]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[12]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[13]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[14]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[15]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[16]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[17]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[18]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[19]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[20]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[21]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[22]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[23]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[24]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[25]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[26]	=>  Location: PIN_AC21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[27]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[28]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[29]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[30]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[31]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[32]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[33]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[34]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[35]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[36]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[37]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[38]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[39]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[40]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[41]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[42]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[43]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[44]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[45]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[46]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[47]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[48]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[49]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[50]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[51]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[52]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[53]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[54]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[55]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[56]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[57]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[58]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[59]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[60]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[61]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[62]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[63]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[55]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[53]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- amt[1]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[54]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[52]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- amt[0]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[51]	=>  Location: PIN_AC8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[49]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[50]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[48]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- amt[2]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- amt[3]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[59]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[57]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[58]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[56]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[61]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[60]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[63]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[62]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[35]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[33]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[34]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[32]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[43]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[41]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[42]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[40]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[47]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[45]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[46]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[44]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[39]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[37]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[38]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[36]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- amt[4]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[23]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[21]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[22]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[20]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[19]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[17]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[18]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[16]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[27]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[25]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[26]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[24]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[31]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[29]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[30]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[28]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[15]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[13]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[14]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[12]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[11]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[9]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[10]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[8]	=>  Location: PIN_AD8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- amt[5]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lar[1]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lar[0]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \Mux127~127_combout\ : std_logic;
SIGNAL \Mux127~146_combout\ : std_logic;
SIGNAL \Mux127~155_combout\ : std_logic;
SIGNAL \Mux127~165_combout\ : std_logic;
SIGNAL \Mux127~224_combout\ : std_logic;
SIGNAL \Mux127~242_combout\ : std_logic;
SIGNAL \Mux127~249_combout\ : std_logic;
SIGNAL \Mux127~257_combout\ : std_logic;
SIGNAL \Mux127~261_combout\ : std_logic;
SIGNAL \Mux127~275_combout\ : std_logic;
SIGNAL \Mux127~293_combout\ : std_logic;
SIGNAL \Mux127~301_combout\ : std_logic;
SIGNAL \Mux127~312_combout\ : std_logic;
SIGNAL \Mux127~314_combout\ : std_logic;
SIGNAL \Mux127~325_combout\ : std_logic;
SIGNAL \Mux127~343_combout\ : std_logic;
SIGNAL \Mux127~348_combout\ : std_logic;
SIGNAL \Mux127~353_combout\ : std_logic;
SIGNAL \Mux127~383_combout\ : std_logic;
SIGNAL \Mux127~398_combout\ : std_logic;
SIGNAL \Mux127~417_combout\ : std_logic;
SIGNAL \Mux127~462_combout\ : std_logic;
SIGNAL \Mux127~512_combout\ : std_logic;
SIGNAL \Mux127~513_combout\ : std_logic;
SIGNAL \Mux127~515_combout\ : std_logic;
SIGNAL \Mux127~522_combout\ : std_logic;
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
SIGNAL \amt[5]~input_o\ : std_logic;
SIGNAL \amt[0]~input_o\ : std_logic;
SIGNAL \amt[1]~input_o\ : std_logic;
SIGNAL \a[14]~input_o\ : std_logic;
SIGNAL \a[12]~input_o\ : std_logic;
SIGNAL \Mux127~104_combout\ : std_logic;
SIGNAL \amt[3]~input_o\ : std_logic;
SIGNAL \amt[2]~input_o\ : std_logic;
SIGNAL \Mux127~68_combout\ : std_logic;
SIGNAL \Mux127~105_combout\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \Mux127~99_combout\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \Mux127~100_combout\ : std_logic;
SIGNAL \Mux127~101_combout\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \Mux127~97_combout\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \Mux127~96_combout\ : std_logic;
SIGNAL \Mux127~98_combout\ : std_logic;
SIGNAL \Mux127~77_combout\ : std_logic;
SIGNAL \Mux127~102_combout\ : std_logic;
SIGNAL \a[11]~input_o\ : std_logic;
SIGNAL \a[9]~input_o\ : std_logic;
SIGNAL \Mux127~106_combout\ : std_logic;
SIGNAL \a[10]~input_o\ : std_logic;
SIGNAL \a[8]~input_o\ : std_logic;
SIGNAL \Mux127~107_combout\ : std_logic;
SIGNAL \Mux127~108_combout\ : std_logic;
SIGNAL \Mux127~109_combout\ : std_logic;
SIGNAL \a[31]~input_o\ : std_logic;
SIGNAL \a[29]~input_o\ : std_logic;
SIGNAL \Mux127~92_combout\ : std_logic;
SIGNAL \a[30]~input_o\ : std_logic;
SIGNAL \a[28]~input_o\ : std_logic;
SIGNAL \Mux127~93_combout\ : std_logic;
SIGNAL \Mux127~94_combout\ : std_logic;
SIGNAL \a[18]~input_o\ : std_logic;
SIGNAL \a[16]~input_o\ : std_logic;
SIGNAL \Mux127~86_combout\ : std_logic;
SIGNAL \a[19]~input_o\ : std_logic;
SIGNAL \a[17]~input_o\ : std_logic;
SIGNAL \Mux127~85_combout\ : std_logic;
SIGNAL \Mux127~87_combout\ : std_logic;
SIGNAL \Mux128~0_combout\ : std_logic;
SIGNAL \a[22]~input_o\ : std_logic;
SIGNAL \a[20]~input_o\ : std_logic;
SIGNAL \Mux127~83_combout\ : std_logic;
SIGNAL \a[23]~input_o\ : std_logic;
SIGNAL \a[21]~input_o\ : std_logic;
SIGNAL \Mux127~82_combout\ : std_logic;
SIGNAL \Mux127~84_combout\ : std_logic;
SIGNAL \Mux127~88_combout\ : std_logic;
SIGNAL \Mux127~69_combout\ : std_logic;
SIGNAL \a[25]~input_o\ : std_logic;
SIGNAL \a[27]~input_o\ : std_logic;
SIGNAL \Mux127~89_combout\ : std_logic;
SIGNAL \Mux127~91_combout\ : std_logic;
SIGNAL \Mux127~95_combout\ : std_logic;
SIGNAL \Mux222~1_combout\ : std_logic;
SIGNAL \a[39]~input_o\ : std_logic;
SIGNAL \a[37]~input_o\ : std_logic;
SIGNAL \Mux127~78_combout\ : std_logic;
SIGNAL \a[38]~input_o\ : std_logic;
SIGNAL \a[36]~input_o\ : std_logic;
SIGNAL \Mux127~79_combout\ : std_logic;
SIGNAL \Mux127~80_combout\ : std_logic;
SIGNAL \a[45]~input_o\ : std_logic;
SIGNAL \a[47]~input_o\ : std_logic;
SIGNAL \Mux127~73_combout\ : std_logic;
SIGNAL \a[46]~input_o\ : std_logic;
SIGNAL \Mux127~74_combout\ : std_logic;
SIGNAL \Mux127~75_combout\ : std_logic;
SIGNAL \a[42]~input_o\ : std_logic;
SIGNAL \a[40]~input_o\ : std_logic;
SIGNAL \Mux127~71_combout\ : std_logic;
SIGNAL \a[41]~input_o\ : std_logic;
SIGNAL \a[43]~input_o\ : std_logic;
SIGNAL \Mux127~70_combout\ : std_logic;
SIGNAL \Mux127~72_combout\ : std_logic;
SIGNAL \Mux127~76_combout\ : std_logic;
SIGNAL \a[32]~input_o\ : std_logic;
SIGNAL \a[34]~input_o\ : std_logic;
SIGNAL \Mux127~66_combout\ : std_logic;
SIGNAL \a[35]~input_o\ : std_logic;
SIGNAL \a[33]~input_o\ : std_logic;
SIGNAL \Mux127~65_combout\ : std_logic;
SIGNAL \Mux127~67_combout\ : std_logic;
SIGNAL \Mux127~81_combout\ : std_logic;
SIGNAL \amt[4]~input_o\ : std_logic;
SIGNAL \a[62]~input_o\ : std_logic;
SIGNAL \a[63]~input_o\ : std_logic;
SIGNAL \Mux127~61_combout\ : std_logic;
SIGNAL \a[61]~input_o\ : std_logic;
SIGNAL \a[60]~input_o\ : std_logic;
SIGNAL \Mux127~60_combout\ : std_logic;
SIGNAL \Mux127~62_combout\ : std_logic;
SIGNAL \a[56]~input_o\ : std_logic;
SIGNAL \a[58]~input_o\ : std_logic;
SIGNAL \Mux127~58_combout\ : std_logic;
SIGNAL \a[57]~input_o\ : std_logic;
SIGNAL \a[59]~input_o\ : std_logic;
SIGNAL \Mux127~57_combout\ : std_logic;
SIGNAL \Mux127~59_combout\ : std_logic;
SIGNAL \Mux127~63_combout\ : std_logic;
SIGNAL \a[55]~input_o\ : std_logic;
SIGNAL \a[53]~input_o\ : std_logic;
SIGNAL \Mux127~50_combout\ : std_logic;
SIGNAL \a[52]~input_o\ : std_logic;
SIGNAL \a[54]~input_o\ : std_logic;
SIGNAL \Mux127~51_combout\ : std_logic;
SIGNAL \Mux127~52_combout\ : std_logic;
SIGNAL \Mux127~56_combout\ : std_logic;
SIGNAL \Mux127~64_combout\ : std_logic;
SIGNAL \Mux222~0_combout\ : std_logic;
SIGNAL \Mux127~110_combout\ : std_logic;
SIGNAL \lar[1]~input_o\ : std_logic;
SIGNAL \Mux253~0_combout\ : std_logic;
SIGNAL \Mux127~156_combout\ : std_logic;
SIGNAL \Mux127~157_combout\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \Mux127~150_combout\ : std_logic;
SIGNAL \Mux127~151_combout\ : std_logic;
SIGNAL \Mux127~152_combout\ : std_logic;
SIGNAL \Mux127~153_combout\ : std_logic;
SIGNAL \Mux127~500_combout\ : std_logic;
SIGNAL \Mux127~158_combout\ : std_logic;
SIGNAL \Mux127~147_combout\ : std_logic;
SIGNAL \Mux127~148_combout\ : std_logic;
SIGNAL \Mux127~143_combout\ : std_logic;
SIGNAL \Mux127~141_combout\ : std_logic;
SIGNAL \Mux127~144_combout\ : std_logic;
SIGNAL \Mux127~149_combout\ : std_logic;
SIGNAL \Mux127~159_combout\ : std_logic;
SIGNAL \Mux127~122_combout\ : std_logic;
SIGNAL \Mux127~123_combout\ : std_logic;
SIGNAL \a[44]~input_o\ : std_logic;
SIGNAL \Mux127~128_combout\ : std_logic;
SIGNAL \Mux127~129_combout\ : std_logic;
SIGNAL \Mux127~124_combout\ : std_logic;
SIGNAL \Mux127~125_combout\ : std_logic;
SIGNAL \Mux127~130_combout\ : std_logic;
SIGNAL \Mux127~116_combout\ : std_logic;
SIGNAL \Mux127~117_combout\ : std_logic;
SIGNAL \Mux127~119_combout\ : std_logic;
SIGNAL \Mux127~118_combout\ : std_logic;
SIGNAL \Mux127~120_combout\ : std_logic;
SIGNAL \Mux127~113_combout\ : std_logic;
SIGNAL \Mux127~114_combout\ : std_logic;
SIGNAL \a[49]~input_o\ : std_logic;
SIGNAL \a[51]~input_o\ : std_logic;
SIGNAL \Mux127~53_combout\ : std_logic;
SIGNAL \a[50]~input_o\ : std_logic;
SIGNAL \Mux127~111_combout\ : std_logic;
SIGNAL \Mux127~112_combout\ : std_logic;
SIGNAL \Mux127~115_combout\ : std_logic;
SIGNAL \Mux127~121_combout\ : std_logic;
SIGNAL \Mux127~131_combout\ : std_logic;
SIGNAL \lar[0]~input_o\ : std_logic;
SIGNAL \Mux253~1_combout\ : std_logic;
SIGNAL \Mux127~132_combout\ : std_logic;
SIGNAL \Mux127~133_combout\ : std_logic;
SIGNAL \Mux127~134_combout\ : std_logic;
SIGNAL \Mux127~135_combout\ : std_logic;
SIGNAL \Mux127~136_combout\ : std_logic;
SIGNAL \Mux253~2_combout\ : std_logic;
SIGNAL \Mux253~3_combout\ : std_logic;
SIGNAL \Mux127~160_combout\ : std_logic;
SIGNAL \Mux127~161_combout\ : std_logic;
SIGNAL \Mux127~162_combout\ : std_logic;
SIGNAL \Mux127~163_combout\ : std_logic;
SIGNAL \Mux127~167_combout\ : std_logic;
SIGNAL \Mux127~168_combout\ : std_logic;
SIGNAL \a[48]~input_o\ : std_logic;
SIGNAL \Mux127~126_combout\ : std_logic;
SIGNAL \Mux127~169_combout\ : std_logic;
SIGNAL \Mux127~170_combout\ : std_logic;
SIGNAL \Mux127~171_combout\ : std_logic;
SIGNAL \Mux127~172_combout\ : std_logic;
SIGNAL \Mux127~173_combout\ : std_logic;
SIGNAL \Mux127~174_combout\ : std_logic;
SIGNAL \Mux127~177_combout\ : std_logic;
SIGNAL \Mux127~178_combout\ : std_logic;
SIGNAL \Mux127~179_combout\ : std_logic;
SIGNAL \Mux127~184_combout\ : std_logic;
SIGNAL \Mux127~185_combout\ : std_logic;
SIGNAL \Mux127~180_combout\ : std_logic;
SIGNAL \Mux127~181_combout\ : std_logic;
SIGNAL \Mux127~182_combout\ : std_logic;
SIGNAL \Mux127~183_combout\ : std_logic;
SIGNAL \Mux252~0_combout\ : std_logic;
SIGNAL \Mux127~186_combout\ : std_logic;
SIGNAL \a[24]~input_o\ : std_logic;
SIGNAL \Mux127~142_combout\ : std_logic;
SIGNAL \Mux127~187_combout\ : std_logic;
SIGNAL \Mux127~190_combout\ : std_logic;
SIGNAL \Mux127~191_combout\ : std_logic;
SIGNAL \a[26]~input_o\ : std_logic;
SIGNAL \Mux127~145_combout\ : std_logic;
SIGNAL \Mux127~188_combout\ : std_logic;
SIGNAL \Mux127~189_combout\ : std_logic;
SIGNAL \Mux127~192_combout\ : std_logic;
SIGNAL \Mux127~193_combout\ : std_logic;
SIGNAL \Mux127~140_combout\ : std_logic;
SIGNAL \Mux127~194_combout\ : std_logic;
SIGNAL \Mux127~195_combout\ : std_logic;
SIGNAL \Mux127~206_combout\ : std_logic;
SIGNAL \Mux252~1_combout\ : std_logic;
SIGNAL \Mux127~230_combout\ : std_logic;
SIGNAL \Mux127~227_combout\ : std_logic;
SIGNAL \Mux127~90_combout\ : std_logic;
SIGNAL \Mux127~228_combout\ : std_logic;
SIGNAL \Mux127~229_combout\ : std_logic;
SIGNAL \Mux127~232_combout\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \Mux127~203_combout\ : std_logic;
SIGNAL \Mux127~234_combout\ : std_logic;
SIGNAL \Mux127~196_combout\ : std_logic;
SIGNAL \Mux127~233_combout\ : std_logic;
SIGNAL \Mux127~235_combout\ : std_logic;
SIGNAL \a[15]~input_o\ : std_logic;
SIGNAL \Mux127~200_combout\ : std_logic;
SIGNAL \Mux127~237_combout\ : std_logic;
SIGNAL \a[13]~input_o\ : std_logic;
SIGNAL \Mux127~198_combout\ : std_logic;
SIGNAL \Mux127~236_combout\ : std_logic;
SIGNAL \Mux127~502_combout\ : std_logic;
SIGNAL \Mux127~238_combout\ : std_logic;
SIGNAL \Mux127~164_combout\ : std_logic;
SIGNAL \Mux127~214_combout\ : std_logic;
SIGNAL \Mux127~166_combout\ : std_logic;
SIGNAL \Mux127~218_combout\ : std_logic;
SIGNAL \Mux127~215_combout\ : std_logic;
SIGNAL \Mux127~217_combout\ : std_logic;
SIGNAL \Mux127~219_combout\ : std_logic;
SIGNAL \Mux127~212_combout\ : std_logic;
SIGNAL \Mux127~175_combout\ : std_logic;
SIGNAL \Mux127~211_combout\ : std_logic;
SIGNAL \Mux127~225_combout\ : std_logic;
SIGNAL \Mux127~226_combout\ : std_logic;
SIGNAL \Mux127~209_combout\ : std_logic;
SIGNAL \Mux127~210_combout\ : std_logic;
SIGNAL \Mux127~213_combout\ : std_logic;
SIGNAL \Mux127~221_combout\ : std_logic;
SIGNAL \Mux127~222_combout\ : std_logic;
SIGNAL \Mux251~0_combout\ : std_logic;
SIGNAL \Mux127~207_combout\ : std_logic;
SIGNAL \Mux127~208_combout\ : std_logic;
SIGNAL \Mux127~501_combout\ : std_logic;
SIGNAL \Mux127~220_combout\ : std_logic;
SIGNAL \Mux251~1_combout\ : std_logic;
SIGNAL \Mux127~54_combout\ : std_logic;
SIGNAL \Mux127~55_combout\ : std_logic;
SIGNAL \Mux127~240_combout\ : std_logic;
SIGNAL \Mux127~239_combout\ : std_logic;
SIGNAL \Mux127~241_combout\ : std_logic;
SIGNAL \Mux127~243_combout\ : std_logic;
SIGNAL \Mux127~244_combout\ : std_logic;
SIGNAL \Mux127~245_combout\ : std_logic;
SIGNAL \Mux127~103_combout\ : std_logic;
SIGNAL \Mux127~253_combout\ : std_logic;
SIGNAL \Mux127~252_combout\ : std_logic;
SIGNAL \Mux127~254_combout\ : std_logic;
SIGNAL \Mux127~250_combout\ : std_logic;
SIGNAL \Mux127~251_combout\ : std_logic;
SIGNAL \Mux127~255_combout\ : std_logic;
SIGNAL \Mux127~503_combout\ : std_logic;
SIGNAL \Mux127~246_combout\ : std_logic;
SIGNAL \Mux127~247_combout\ : std_logic;
SIGNAL \Mux250~0_combout\ : std_logic;
SIGNAL \Mux250~1_combout\ : std_logic;
SIGNAL \Mux127~259_combout\ : std_logic;
SIGNAL \Mux127~262_combout\ : std_logic;
SIGNAL \Mux127~263_combout\ : std_logic;
SIGNAL \Mux127~265_combout\ : std_logic;
SIGNAL \Mux127~256_combout\ : std_logic;
SIGNAL \Mux127~266_combout\ : std_logic;
SIGNAL \Mux127~267_combout\ : std_logic;
SIGNAL \Mux127~268_combout\ : std_logic;
SIGNAL \Mux127~269_combout\ : std_logic;
SIGNAL \Mux249~0_combout\ : std_logic;
SIGNAL \Mux127~272_combout\ : std_logic;
SIGNAL \Mux127~270_combout\ : std_logic;
SIGNAL \Mux127~271_combout\ : std_logic;
SIGNAL \Mux127~273_combout\ : std_logic;
SIGNAL \Mux127~274_combout\ : std_logic;
SIGNAL \Mux127~276_combout\ : std_logic;
SIGNAL \Mux127~277_combout\ : std_logic;
SIGNAL \Mux127~258_combout\ : std_logic;
SIGNAL \Mux127~264_combout\ : std_logic;
SIGNAL \Mux249~1_combout\ : std_logic;
SIGNAL \Mux127~278_combout\ : std_logic;
SIGNAL \Mux127~279_combout\ : std_logic;
SIGNAL \Mux127~280_combout\ : std_logic;
SIGNAL \Mux127~282_combout\ : std_logic;
SIGNAL \Mux127~176_combout\ : std_logic;
SIGNAL \Mux127~283_combout\ : std_logic;
SIGNAL \Mux127~286_combout\ : std_logic;
SIGNAL \Mux127~199_combout\ : std_logic;
SIGNAL \Mux127~204_combout\ : std_logic;
SIGNAL \Mux127~295_combout\ : std_logic;
SIGNAL \Mux127~154_combout\ : std_logic;
SIGNAL \Mux127~201_combout\ : std_logic;
SIGNAL \Mux127~296_combout\ : std_logic;
SIGNAL \Mux127~297_combout\ : std_logic;
SIGNAL \Mux127~287_combout\ : std_logic;
SIGNAL \Mux127~288_combout\ : std_logic;
SIGNAL \Mux127~289_combout\ : std_logic;
SIGNAL \Mux127~290_combout\ : std_logic;
SIGNAL \Mux127~291_combout\ : std_logic;
SIGNAL \Mux248~0_combout\ : std_logic;
SIGNAL \Mux248~1_combout\ : std_logic;
SIGNAL \Mux127~299_combout\ : std_logic;
SIGNAL \Mux127~298_combout\ : std_logic;
SIGNAL \Mux127~300_combout\ : std_logic;
SIGNAL \Mux127~302_combout\ : std_logic;
SIGNAL \Mux127~303_combout\ : std_logic;
SIGNAL \Mux127~306_combout\ : std_logic;
SIGNAL \Mux127~304_combout\ : std_logic;
SIGNAL \Mux127~308_combout\ : std_logic;
SIGNAL \Mux127~309_combout\ : std_logic;
SIGNAL \Mux127~505_combout\ : std_logic;
SIGNAL \Mux127~284_combout\ : std_logic;
SIGNAL \Mux127~307_combout\ : std_logic;
SIGNAL \Mux127~310_combout\ : std_logic;
SIGNAL \Mux247~0_combout\ : std_logic;
SIGNAL \Mux127~231_combout\ : std_logic;
SIGNAL \Mux127~311_combout\ : std_logic;
SIGNAL \Mux127~313_combout\ : std_logic;
SIGNAL \Mux127~315_combout\ : std_logic;
SIGNAL \Mux127~316_combout\ : std_logic;
SIGNAL \Mux127~317_combout\ : std_logic;
SIGNAL \Mux247~1_combout\ : std_logic;
SIGNAL \Mux127~326_combout\ : std_logic;
SIGNAL \Mux127~327_combout\ : std_logic;
SIGNAL \Mux127~329_combout\ : std_logic;
SIGNAL \Mux127~328_combout\ : std_logic;
SIGNAL \Mux127~330_combout\ : std_logic;
SIGNAL \Mux127~331_combout\ : std_logic;
SIGNAL \Mux127~319_combout\ : std_logic;
SIGNAL \Mux127~318_combout\ : std_logic;
SIGNAL \Mux127~320_combout\ : std_logic;
SIGNAL \Mux127~506_combout\ : std_logic;
SIGNAL \Mux127~507_combout\ : std_logic;
SIGNAL \Mux246~0_combout\ : std_logic;
SIGNAL \Mux246~1_combout\ : std_logic;
SIGNAL \Mux127~260_combout\ : std_logic;
SIGNAL \Mux127~332_combout\ : std_logic;
SIGNAL \Mux127~333_combout\ : std_logic;
SIGNAL \Mux127~334_combout\ : std_logic;
SIGNAL \Mux127~321_combout\ : std_logic;
SIGNAL \Mux127~338_combout\ : std_logic;
SIGNAL \Mux127~137_combout\ : std_logic;
SIGNAL \Mux127~138_combout\ : std_logic;
SIGNAL \Mux127~509_combout\ : std_logic;
SIGNAL \Mux245~0_combout\ : std_logic;
SIGNAL \Mux127~339_combout\ : std_logic;
SIGNAL \Mux127~341_combout\ : std_logic;
SIGNAL \Mux127~340_combout\ : std_logic;
SIGNAL \Mux127~342_combout\ : std_logic;
SIGNAL \Mux127~344_combout\ : std_logic;
SIGNAL \Mux127~345_combout\ : std_logic;
SIGNAL \Mux127~346_combout\ : std_logic;
SIGNAL \Mux127~336_combout\ : std_logic;
SIGNAL \Mux127~335_combout\ : std_logic;
SIGNAL \Mux127~337_combout\ : std_logic;
SIGNAL \Mux127~508_combout\ : std_logic;
SIGNAL \Mux245~1_combout\ : std_logic;
SIGNAL \Mux127~281_combout\ : std_logic;
SIGNAL \Mux127~349_combout\ : std_logic;
SIGNAL \Mux127~350_combout\ : std_logic;
SIGNAL \Mux127~510_combout\ : std_logic;
SIGNAL \Mux244~0_combout\ : std_logic;
SIGNAL \Mux127~347_combout\ : std_logic;
SIGNAL \Mux127~351_combout\ : std_logic;
SIGNAL \Mux127~361_combout\ : std_logic;
SIGNAL \Mux127~360_combout\ : std_logic;
SIGNAL \Mux127~362_combout\ : std_logic;
SIGNAL \Mux127~358_combout\ : std_logic;
SIGNAL \Mux127~356_combout\ : std_logic;
SIGNAL \Mux127~357_combout\ : std_logic;
SIGNAL \Mux127~359_combout\ : std_logic;
SIGNAL \Mux127~363_combout\ : std_logic;
SIGNAL \Mux244~1_combout\ : std_logic;
SIGNAL \Mux127~367_combout\ : std_logic;
SIGNAL \Mux127~368_combout\ : std_logic;
SIGNAL \Mux127~369_combout\ : std_logic;
SIGNAL \Mux127~370_combout\ : std_logic;
SIGNAL \Mux127~223_combout\ : std_logic;
SIGNAL \Mux127~511_combout\ : std_logic;
SIGNAL \Mux127~365_combout\ : std_logic;
SIGNAL \Mux127~373_combout\ : std_logic;
SIGNAL \Mux243~0_combout\ : std_logic;
SIGNAL \Mux127~378_combout\ : std_logic;
SIGNAL \Mux127~379_combout\ : std_logic;
SIGNAL \Mux127~380_combout\ : std_logic;
SIGNAL \Mux127~381_combout\ : std_logic;
SIGNAL \Mux127~364_combout\ : std_logic;
SIGNAL \Mux127~366_combout\ : std_logic;
SIGNAL \Mux127~371_combout\ : std_logic;
SIGNAL \Mux243~1_combout\ : std_logic;
SIGNAL \Mux127~372_combout\ : std_logic;
SIGNAL \Mux127~382_combout\ : std_logic;
SIGNAL \Mux127~384_combout\ : std_logic;
SIGNAL \Mux127~386_combout\ : std_logic;
SIGNAL \Mux127~394_combout\ : std_logic;
SIGNAL \Mux127~248_combout\ : std_logic;
SIGNAL \Mux127~395_combout\ : std_logic;
SIGNAL \Mux127~396_combout\ : std_logic;
SIGNAL \Mux127~392_combout\ : std_logic;
SIGNAL \Mux127~391_combout\ : std_logic;
SIGNAL \Mux127~393_combout\ : std_logic;
SIGNAL \Mux127~397_combout\ : std_logic;
SIGNAL \Mux127~387_combout\ : std_logic;
SIGNAL \Mux127~388_combout\ : std_logic;
SIGNAL \Mux127~389_combout\ : std_logic;
SIGNAL \Mux127~385_combout\ : std_logic;
SIGNAL \Mux127~390_combout\ : std_logic;
SIGNAL \Mux242~0_combout\ : std_logic;
SIGNAL \Mux242~1_combout\ : std_logic;
SIGNAL \Mux127~402_combout\ : std_logic;
SIGNAL \Mux127~401_combout\ : std_logic;
SIGNAL \Mux127~408_combout\ : std_logic;
SIGNAL \Mux127~409_combout\ : std_logic;
SIGNAL \Mux127~405_combout\ : std_logic;
SIGNAL \Mux127~406_combout\ : std_logic;
SIGNAL \Mux127~403_combout\ : std_logic;
SIGNAL \Mux127~407_combout\ : std_logic;
SIGNAL \Mux241~0_combout\ : std_logic;
SIGNAL \Mux127~399_combout\ : std_logic;
SIGNAL \Mux127~400_combout\ : std_logic;
SIGNAL \Mux127~404_combout\ : std_logic;
SIGNAL \Mux127~413_combout\ : std_logic;
SIGNAL \Mux127~414_combout\ : std_logic;
SIGNAL \Mux127~415_combout\ : std_logic;
SIGNAL \Mux127~410_combout\ : std_logic;
SIGNAL \Mux127~411_combout\ : std_logic;
SIGNAL \Mux127~412_combout\ : std_logic;
SIGNAL \Mux127~416_combout\ : std_logic;
SIGNAL \Mux241~1_combout\ : std_logic;
SIGNAL \Mux127~418_combout\ : std_logic;
SIGNAL \Mux127~419_combout\ : std_logic;
SIGNAL \Mux127~420_combout\ : std_logic;
SIGNAL \Mux127~425_combout\ : std_logic;
SIGNAL \Mux127~422_combout\ : std_logic;
SIGNAL \Mux127~421_combout\ : std_logic;
SIGNAL \Mux127~423_combout\ : std_logic;
SIGNAL \Mux127~424_combout\ : std_logic;
SIGNAL \Mux240~0_combout\ : std_logic;
SIGNAL \Mux127~427_combout\ : std_logic;
SIGNAL \Mux127~426_combout\ : std_logic;
SIGNAL \Mux127~428_combout\ : std_logic;
SIGNAL \Mux127~432_combout\ : std_logic;
SIGNAL \Mux240~1_combout\ : std_logic;
SIGNAL \Mux127~443_combout\ : std_logic;
SIGNAL \Mux127~444_combout\ : std_logic;
SIGNAL \Mux127~445_combout\ : std_logic;
SIGNAL \Mux127~375_combout\ : std_logic;
SIGNAL \Mux127~441_combout\ : std_logic;
SIGNAL \Mux127~440_combout\ : std_logic;
SIGNAL \Mux127~442_combout\ : std_logic;
SIGNAL \Mux127~446_combout\ : std_logic;
SIGNAL \Mux127~433_combout\ : std_logic;
SIGNAL \Mux127~216_combout\ : std_logic;
SIGNAL \Mux127~434_combout\ : std_logic;
SIGNAL \Mux127~435_combout\ : std_logic;
SIGNAL \Mux127~437_combout\ : std_logic;
SIGNAL \Mux127~438_combout\ : std_logic;
SIGNAL \Mux127~514_combout\ : std_logic;
SIGNAL \Mux239~0_combout\ : std_logic;
SIGNAL \Mux239~1_combout\ : std_logic;
SIGNAL \Mux127~449_combout\ : std_logic;
SIGNAL \Mux127~447_combout\ : std_logic;
SIGNAL \Mux238~0_combout\ : std_logic;
SIGNAL \Mux127~448_combout\ : std_logic;
SIGNAL \Mux127~450_combout\ : std_logic;
SIGNAL \Mux238~1_combout\ : std_logic;
SIGNAL \Mux127~455_combout\ : std_logic;
SIGNAL \Mux127~454_combout\ : std_logic;
SIGNAL \Mux127~452_combout\ : std_logic;
SIGNAL \Mux127~453_combout\ : std_logic;
SIGNAL \Mux237~0_combout\ : std_logic;
SIGNAL \Mux127~451_combout\ : std_logic;
SIGNAL \Mux237~1_combout\ : std_logic;
SIGNAL \Mux127~456_combout\ : std_logic;
SIGNAL \Mux127~457_combout\ : std_logic;
SIGNAL \Mux127~459_combout\ : std_logic;
SIGNAL \Mux127~197_combout\ : std_logic;
SIGNAL \Mux127~202_combout\ : std_logic;
SIGNAL \Mux127~205_combout\ : std_logic;
SIGNAL \Mux127~458_combout\ : std_logic;
SIGNAL \Mux236~0_combout\ : std_logic;
SIGNAL \Mux127~460_combout\ : std_logic;
SIGNAL \Mux236~1_combout\ : std_logic;
SIGNAL \Mux127~464_combout\ : std_logic;
SIGNAL \Mux127~461_combout\ : std_logic;
SIGNAL \Mux127~463_combout\ : std_logic;
SIGNAL \Mux235~0_combout\ : std_logic;
SIGNAL \Mux235~1_combout\ : std_logic;
SIGNAL \Mux127~465_combout\ : std_logic;
SIGNAL \Mux127~468_combout\ : std_logic;
SIGNAL \Mux127~466_combout\ : std_logic;
SIGNAL \Mux127~467_combout\ : std_logic;
SIGNAL \Mux234~0_combout\ : std_logic;
SIGNAL \Mux234~1_combout\ : std_logic;
SIGNAL \Mux127~469_combout\ : std_logic;
SIGNAL \Mux127~472_combout\ : std_logic;
SIGNAL \Mux127~471_combout\ : std_logic;
SIGNAL \Mux127~470_combout\ : std_logic;
SIGNAL \Mux233~0_combout\ : std_logic;
SIGNAL \Mux233~1_combout\ : std_logic;
SIGNAL \Mux127~475_combout\ : std_logic;
SIGNAL \Mux232~0_combout\ : std_logic;
SIGNAL \Mux127~292_combout\ : std_logic;
SIGNAL \Mux127~504_combout\ : std_logic;
SIGNAL \Mux127~294_combout\ : std_logic;
SIGNAL \Mux127~476_combout\ : std_logic;
SIGNAL \Mux127~285_combout\ : std_logic;
SIGNAL \Mux127~473_combout\ : std_logic;
SIGNAL \Mux232~1_combout\ : std_logic;
SIGNAL \Mux127~439_combout\ : std_logic;
SIGNAL \Mux127~479_combout\ : std_logic;
SIGNAL \Mux127~516_combout\ : std_logic;
SIGNAL \Mux231~0_combout\ : std_logic;
SIGNAL \Mux127~305_combout\ : std_logic;
SIGNAL \Mux127~477_combout\ : std_logic;
SIGNAL \Mux127~480_combout\ : std_logic;
SIGNAL \Mux231~1_combout\ : std_logic;
SIGNAL \Mux127~478_combout\ : std_logic;
SIGNAL \Mux127~481_combout\ : std_logic;
SIGNAL \Mux127~517_combout\ : std_logic;
SIGNAL \Mux127~483_combout\ : std_logic;
SIGNAL \Mux127~482_combout\ : std_logic;
SIGNAL \Mux230~0_combout\ : std_logic;
SIGNAL \Mux230~1_combout\ : std_logic;
SIGNAL \Mux127~518_combout\ : std_logic;
SIGNAL \Mux127~485_combout\ : std_logic;
SIGNAL \Mux229~0_combout\ : std_logic;
SIGNAL \Mux127~484_combout\ : std_logic;
SIGNAL \Mux127~486_combout\ : std_logic;
SIGNAL \Mux229~1_combout\ : std_logic;
SIGNAL \Mux127~488_combout\ : std_logic;
SIGNAL \Mux127~519_combout\ : std_logic;
SIGNAL \Mux127~520_combout\ : std_logic;
SIGNAL \Mux127~352_combout\ : std_logic;
SIGNAL \Mux127~354_combout\ : std_logic;
SIGNAL \Mux127~487_combout\ : std_logic;
SIGNAL \Mux228~0_combout\ : std_logic;
SIGNAL \Mux228~1_combout\ : std_logic;
SIGNAL \Mux127~521_combout\ : std_logic;
SIGNAL \Mux227~0_combout\ : std_logic;
SIGNAL \Mux127~489_combout\ : std_logic;
SIGNAL \Mux127~374_combout\ : std_logic;
SIGNAL \Mux127~376_combout\ : std_logic;
SIGNAL \Mux127~377_combout\ : std_logic;
SIGNAL \Mux127~491_combout\ : std_logic;
SIGNAL \Mux227~1_combout\ : std_logic;
SIGNAL \Mux127~494_combout\ : std_logic;
SIGNAL \Mux127~492_combout\ : std_logic;
SIGNAL \Mux127~493_combout\ : std_logic;
SIGNAL \Mux226~0_combout\ : std_logic;
SIGNAL \Mux226~1_combout\ : std_logic;
SIGNAL \Mux127~523_combout\ : std_logic;
SIGNAL \Mux225~0_combout\ : std_logic;
SIGNAL \Mux127~495_combout\ : std_logic;
SIGNAL \Mux127~497_combout\ : std_logic;
SIGNAL \Mux225~1_combout\ : std_logic;
SIGNAL \Mux224~1_combout\ : std_logic;
SIGNAL \Mux192~0_combout\ : std_logic;
SIGNAL \Mux224~2_combout\ : std_logic;
SIGNAL \Mux127~429_combout\ : std_logic;
SIGNAL \Mux127~430_combout\ : std_logic;
SIGNAL \Mux127~431_combout\ : std_logic;
SIGNAL \Mux224~3_combout\ : std_logic;
SIGNAL \Mux127~498_combout\ : std_logic;
SIGNAL \Mux224~0_combout\ : std_logic;
SIGNAL \Mux224~4_combout\ : std_logic;
SIGNAL \Mux223~1_combout\ : std_logic;
SIGNAL \Mux223~2_combout\ : std_logic;
SIGNAL \Mux223~0_combout\ : std_logic;
SIGNAL \Mux127~436_combout\ : std_logic;
SIGNAL \Mux127~499_combout\ : std_logic;
SIGNAL \Mux223~3_combout\ : std_logic;
SIGNAL \Mux223~4_combout\ : std_logic;
SIGNAL \Mux222~2_combout\ : std_logic;
SIGNAL \Mux222~3_combout\ : std_logic;
SIGNAL \Mux253~4_combout\ : std_logic;
SIGNAL \Mux193~1_combout\ : std_logic;
SIGNAL \Mux127~139_combout\ : std_logic;
SIGNAL \Mux221~0_combout\ : std_logic;
SIGNAL \Mux221~1_combout\ : std_logic;
SIGNAL \Mux221~2_combout\ : std_logic;
SIGNAL \Mux193~0_combout\ : std_logic;
SIGNAL \Mux220~0_combout\ : std_logic;
SIGNAL \Mux220~1_combout\ : std_logic;
SIGNAL \Mux220~2_combout\ : std_logic;
SIGNAL \Mux219~0_combout\ : std_logic;
SIGNAL \Mux219~1_combout\ : std_logic;
SIGNAL \Mux219~2_combout\ : std_logic;
SIGNAL \Mux218~0_combout\ : std_logic;
SIGNAL \Mux218~1_combout\ : std_logic;
SIGNAL \Mux218~2_combout\ : std_logic;
SIGNAL \Mux217~0_combout\ : std_logic;
SIGNAL \Mux217~1_combout\ : std_logic;
SIGNAL \Mux217~2_combout\ : std_logic;
SIGNAL \Mux216~0_combout\ : std_logic;
SIGNAL \Mux216~1_combout\ : std_logic;
SIGNAL \Mux216~2_combout\ : std_logic;
SIGNAL \Mux215~0_combout\ : std_logic;
SIGNAL \Mux215~1_combout\ : std_logic;
SIGNAL \Mux215~2_combout\ : std_logic;
SIGNAL \Mux127~322_combout\ : std_logic;
SIGNAL \Mux127~323_combout\ : std_logic;
SIGNAL \Mux127~324_combout\ : std_logic;
SIGNAL \Mux214~0_combout\ : std_logic;
SIGNAL \Mux214~1_combout\ : std_logic;
SIGNAL \Mux214~2_combout\ : std_logic;
SIGNAL \Mux213~0_combout\ : std_logic;
SIGNAL \Mux213~1_combout\ : std_logic;
SIGNAL \Mux213~2_combout\ : std_logic;
SIGNAL \Mux127~355_combout\ : std_logic;
SIGNAL \Mux212~0_combout\ : std_logic;
SIGNAL \Mux212~1_combout\ : std_logic;
SIGNAL \Mux212~2_combout\ : std_logic;
SIGNAL \Mux211~0_combout\ : std_logic;
SIGNAL \Mux211~1_combout\ : std_logic;
SIGNAL \Mux211~2_combout\ : std_logic;
SIGNAL \Mux210~0_combout\ : std_logic;
SIGNAL \Mux210~1_combout\ : std_logic;
SIGNAL \Mux210~2_combout\ : std_logic;
SIGNAL \Mux209~0_combout\ : std_logic;
SIGNAL \Mux209~1_combout\ : std_logic;
SIGNAL \Mux209~2_combout\ : std_logic;
SIGNAL \Mux208~0_combout\ : std_logic;
SIGNAL \Mux208~1_combout\ : std_logic;
SIGNAL \Mux208~2_combout\ : std_logic;
SIGNAL \Mux207~0_combout\ : std_logic;
SIGNAL \Mux207~1_combout\ : std_logic;
SIGNAL \Mux207~2_combout\ : std_logic;
SIGNAL \Mux206~0_combout\ : std_logic;
SIGNAL \Mux206~1_combout\ : std_logic;
SIGNAL \Mux206~2_combout\ : std_logic;
SIGNAL \Mux205~0_combout\ : std_logic;
SIGNAL \Mux205~1_combout\ : std_logic;
SIGNAL \Mux205~2_combout\ : std_logic;
SIGNAL \Mux204~0_combout\ : std_logic;
SIGNAL \Mux204~1_combout\ : std_logic;
SIGNAL \Mux204~2_combout\ : std_logic;
SIGNAL \Mux203~0_combout\ : std_logic;
SIGNAL \Mux203~1_combout\ : std_logic;
SIGNAL \Mux203~2_combout\ : std_logic;
SIGNAL \Mux202~0_combout\ : std_logic;
SIGNAL \Mux202~1_combout\ : std_logic;
SIGNAL \Mux202~2_combout\ : std_logic;
SIGNAL \Mux201~0_combout\ : std_logic;
SIGNAL \Mux201~1_combout\ : std_logic;
SIGNAL \Mux201~2_combout\ : std_logic;
SIGNAL \Mux127~474_combout\ : std_logic;
SIGNAL \Mux200~0_combout\ : std_logic;
SIGNAL \Mux200~1_combout\ : std_logic;
SIGNAL \Mux200~2_combout\ : std_logic;
SIGNAL \Mux199~0_combout\ : std_logic;
SIGNAL \Mux199~1_combout\ : std_logic;
SIGNAL \Mux199~2_combout\ : std_logic;
SIGNAL \Mux198~0_combout\ : std_logic;
SIGNAL \Mux198~1_combout\ : std_logic;
SIGNAL \Mux198~2_combout\ : std_logic;
SIGNAL \Mux197~0_combout\ : std_logic;
SIGNAL \Mux197~1_combout\ : std_logic;
SIGNAL \Mux197~2_combout\ : std_logic;
SIGNAL \Mux196~0_combout\ : std_logic;
SIGNAL \Mux196~1_combout\ : std_logic;
SIGNAL \Mux196~2_combout\ : std_logic;
SIGNAL \Mux127~490_combout\ : std_logic;
SIGNAL \Mux195~0_combout\ : std_logic;
SIGNAL \Mux195~1_combout\ : std_logic;
SIGNAL \Mux195~2_combout\ : std_logic;
SIGNAL \Mux194~0_combout\ : std_logic;
SIGNAL \Mux194~1_combout\ : std_logic;
SIGNAL \Mux194~2_combout\ : std_logic;
SIGNAL \Mux127~496_combout\ : std_logic;
SIGNAL \Mux193~2_combout\ : std_logic;
SIGNAL \Mux193~3_combout\ : std_logic;
SIGNAL \Mux193~4_combout\ : std_logic;
SIGNAL \Mux128~1_combout\ : std_logic;
SIGNAL \Mux128~2_combout\ : std_logic;
SIGNAL \Mux192~1_combout\ : std_logic;
SIGNAL \Mux192~2_combout\ : std_logic;
SIGNAL \Mux192~4_combout\ : std_logic;
SIGNAL \Mux192~3_combout\ : std_logic;
SIGNAL \Mux192~5_combout\ : std_logic;
SIGNAL \Mux191~0_combout\ : std_logic;
SIGNAL \Mux191~2_combout\ : std_logic;
SIGNAL \Mux191~1_combout\ : std_logic;
SIGNAL \Mux191~3_combout\ : std_logic;

BEGIN

ww_a <= a;
ww_lar <= lar;
ww_amt <= amt;
y <= ww_y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X53_Y3_N26
\Mux127~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~127_combout\ = (\Mux127~68_combout\ & ((\amt[0]~input_o\ & ((\Mux127~126_combout\))) # (!\amt[0]~input_o\ & (\Mux127~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~68_combout\,
	datab => \amt[0]~input_o\,
	datac => \Mux127~73_combout\,
	datad => \Mux127~126_combout\,
	combout => \Mux127~127_combout\);

-- Location: LCCOMB_X57_Y3_N12
\Mux127~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~146_combout\ = (\Mux127~69_combout\ & ((\amt[0]~input_o\ & (\Mux127~145_combout\)) # (!\amt[0]~input_o\ & ((\Mux127~89_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~145_combout\,
	datab => \Mux127~69_combout\,
	datac => \Mux127~89_combout\,
	datad => \amt[0]~input_o\,
	combout => \Mux127~146_combout\);

-- Location: LCCOMB_X55_Y1_N10
\Mux127~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~155_combout\ = (\Mux127~68_combout\ & ((\amt[0]~input_o\ & ((\Mux127~154_combout\))) # (!\amt[0]~input_o\ & (\Mux127~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~68_combout\,
	datab => \amt[0]~input_o\,
	datac => \Mux127~103_combout\,
	datad => \Mux127~154_combout\,
	combout => \Mux127~155_combout\);

-- Location: LCCOMB_X58_Y5_N12
\Mux127~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~165_combout\ = (\Mux127~77_combout\ & ((\amt[0]~input_o\ & (\Mux127~164_combout\)) # (!\amt[0]~input_o\ & ((\Mux127~122_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~77_combout\,
	datab => \amt[0]~input_o\,
	datac => \Mux127~164_combout\,
	datad => \Mux127~122_combout\,
	combout => \Mux127~165_combout\);

-- Location: LCCOMB_X53_Y1_N24
\Mux127~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~224_combout\ = (\amt[4]~input_o\ & (\amt[3]~input_o\ & \Mux127~223_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datac => \amt[3]~input_o\,
	datad => \Mux127~223_combout\,
	combout => \Mux127~224_combout\);

-- Location: LCCOMB_X56_Y3_N22
\Mux127~242\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~242_combout\ = (\Mux127~77_combout\ & ((\amt[0]~input_o\ & ((\Mux127~57_combout\))) # (!\amt[0]~input_o\ & (\Mux127~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~58_combout\,
	datab => \Mux127~57_combout\,
	datac => \amt[0]~input_o\,
	datad => \Mux127~77_combout\,
	combout => \Mux127~242_combout\);

-- Location: LCCOMB_X59_Y1_N6
\Mux127~249\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~249_combout\ = (\Mux127~248_combout\ & ((\Mux127~77_combout\) # ((\Mux128~0_combout\ & \Mux127~84_combout\)))) # (!\Mux127~248_combout\ & (\Mux128~0_combout\ & ((\Mux127~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~248_combout\,
	datab => \Mux128~0_combout\,
	datac => \Mux127~77_combout\,
	datad => \Mux127~84_combout\,
	combout => \Mux127~249_combout\);

-- Location: LCCOMB_X54_Y2_N30
\Mux127~257\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~257_combout\ = (\Mux127~68_combout\ & ((\amt[0]~input_o\ & (\Mux127~150_combout\)) # (!\amt[0]~input_o\ & ((\Mux127~96_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \Mux127~68_combout\,
	datac => \Mux127~150_combout\,
	datad => \Mux127~96_combout\,
	combout => \Mux127~257_combout\);

-- Location: LCCOMB_X56_Y1_N22
\Mux127~261\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~261_combout\ = (\Mux127~68_combout\ & ((\Mux127~112_combout\) # ((\Mux127~69_combout\ & \Mux127~260_combout\)))) # (!\Mux127~68_combout\ & (\Mux127~69_combout\ & (\Mux127~260_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~68_combout\,
	datab => \Mux127~69_combout\,
	datac => \Mux127~260_combout\,
	datad => \Mux127~112_combout\,
	combout => \Mux127~261_combout\);

-- Location: LCCOMB_X55_Y1_N8
\Mux127~275\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~275_combout\ = (\Mux127~69_combout\ & ((\amt[0]~input_o\ & ((\Mux127~154_combout\))) # (!\amt[0]~input_o\ & (\Mux127~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~103_combout\,
	datab => \Mux127~69_combout\,
	datac => \amt[0]~input_o\,
	datad => \Mux127~154_combout\,
	combout => \Mux127~275_combout\);

-- Location: LCCOMB_X55_Y5_N26
\Mux127~293\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~293_combout\ = (\Mux127~68_combout\ & ((\amt[0]~input_o\ & (\Mux127~166_combout\)) # (!\amt[0]~input_o\ & ((\Mux127~124_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~68_combout\,
	datab => \amt[0]~input_o\,
	datac => \Mux127~166_combout\,
	datad => \Mux127~124_combout\,
	combout => \Mux127~293_combout\);

-- Location: LCCOMB_X53_Y3_N4
\Mux127~301\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~301_combout\ = (\Mux127~69_combout\ & ((\amt[0]~input_o\ & ((\Mux127~54_combout\))) # (!\amt[0]~input_o\ & (\Mux127~168_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~69_combout\,
	datab => \Mux127~168_combout\,
	datac => \amt[0]~input_o\,
	datad => \Mux127~54_combout\,
	combout => \Mux127~301_combout\);

-- Location: LCCOMB_X56_Y5_N12
\Mux127~312\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~312_combout\ = (\Mux127~69_combout\ & ((\amt[0]~input_o\ & ((\Mux127~66_combout\))) # (!\amt[0]~input_o\ & (\Mux127~190_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \Mux127~190_combout\,
	datac => \Mux127~69_combout\,
	datad => \Mux127~66_combout\,
	combout => \Mux127~312_combout\);

-- Location: LCCOMB_X53_Y5_N20
\Mux127~314\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~314_combout\ = (\Mux127~77_combout\ & ((\amt[0]~input_o\ & ((\Mux127~104_combout\))) # (!\amt[0]~input_o\ & (\Mux127~198_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \Mux127~198_combout\,
	datac => \Mux127~77_combout\,
	datad => \Mux127~104_combout\,
	combout => \Mux127~314_combout\);

-- Location: LCCOMB_X57_Y3_N14
\Mux127~325\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~325_combout\ = (\Mux128~0_combout\ & ((\Mux127~248_combout\) # ((\Mux127~77_combout\ & \Mux127~94_combout\)))) # (!\Mux128~0_combout\ & (\Mux127~77_combout\ & (\Mux127~94_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux128~0_combout\,
	datab => \Mux127~77_combout\,
	datac => \Mux127~94_combout\,
	datad => \Mux127~248_combout\,
	combout => \Mux127~325_combout\);

-- Location: LCCOMB_X55_Y1_N16
\Mux127~343\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~343_combout\ = (\Mux127~77_combout\ & ((\amt[0]~input_o\ & ((\Mux127~154_combout\))) # (!\amt[0]~input_o\ & (\Mux127~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~103_combout\,
	datab => \Mux127~77_combout\,
	datac => \amt[0]~input_o\,
	datad => \Mux127~154_combout\,
	combout => \Mux127~343_combout\);

-- Location: LCCOMB_X53_Y3_N0
\Mux127~348\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~348_combout\ = (\Mux127~77_combout\ & ((\amt[0]~input_o\ & (\Mux127~168_combout\)) # (!\amt[0]~input_o\ & ((\Mux127~126_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~77_combout\,
	datab => \Mux127~168_combout\,
	datac => \amt[0]~input_o\,
	datad => \Mux127~126_combout\,
	combout => \Mux127~348_combout\);

-- Location: LCCOMB_X54_Y2_N4
\Mux127~353\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~353_combout\ = (\Mux127~69_combout\ & ((\amt[0]~input_o\ & ((\Mux127~196_combout\))) # (!\amt[0]~input_o\ & (\Mux127~150_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \Mux127~69_combout\,
	datac => \Mux127~150_combout\,
	datad => \Mux127~196_combout\,
	combout => \Mux127~353_combout\);

-- Location: LCCOMB_X56_Y3_N12
\Mux127~383\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~383_combout\ = (\Mux127~68_combout\ & ((\amt[0]~input_o\ & (\Mux127~57_combout\)) # (!\amt[0]~input_o\ & ((\Mux127~58_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~68_combout\,
	datab => \Mux127~57_combout\,
	datac => \amt[0]~input_o\,
	datad => \Mux127~58_combout\,
	combout => \Mux127~383_combout\);

-- Location: LCCOMB_X54_Y2_N22
\Mux127~398\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~398_combout\ = (\Mux127~77_combout\ & ((\amt[0]~input_o\ & ((\Mux127~150_combout\))) # (!\amt[0]~input_o\ & (\Mux127~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \Mux127~96_combout\,
	datac => \Mux127~150_combout\,
	datad => \Mux127~77_combout\,
	combout => \Mux127~398_combout\);

-- Location: LCCOMB_X52_Y3_N14
\Mux127~417\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~417_combout\ = (\Mux127~284_combout\ & (\a[63]~input_o\)) # (!\Mux127~284_combout\ & ((\amt[3]~input_o\ & (\a[63]~input_o\)) # (!\amt[3]~input_o\ & ((\a[62]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[63]~input_o\,
	datab => \Mux127~284_combout\,
	datac => \a[62]~input_o\,
	datad => \amt[3]~input_o\,
	combout => \Mux127~417_combout\);

-- Location: LCCOMB_X52_Y2_N10
\Mux127~462\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~462_combout\ = (\amt[4]~input_o\ & (\a[63]~input_o\)) # (!\amt[4]~input_o\ & (((\a[63]~input_o\ & \Mux127~68_combout\)) # (!\Mux127~213_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[63]~input_o\,
	datab => \Mux127~68_combout\,
	datac => \amt[4]~input_o\,
	datad => \Mux127~213_combout\,
	combout => \Mux127~462_combout\);

-- Location: LCCOMB_X53_Y4_N10
\Mux127~512\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~512_combout\ = (!\Mux127~405_combout\ & ((\amt[0]~input_o\ & (\a[63]~input_o\)) # (!\amt[0]~input_o\ & ((\a[62]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[63]~input_o\,
	datab => \a[62]~input_o\,
	datac => \amt[0]~input_o\,
	datad => \Mux127~405_combout\,
	combout => \Mux127~512_combout\);

-- Location: LCCOMB_X53_Y5_N12
\Mux127~513\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~513_combout\ = (\Mux127~436_combout\) # ((!\amt[2]~input_o\ & (\amt[3]~input_o\ & \Mux127~234_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datab => \amt[3]~input_o\,
	datac => \Mux127~234_combout\,
	datad => \Mux127~436_combout\,
	combout => \Mux127~513_combout\);

-- Location: LCCOMB_X55_Y1_N2
\Mux127~515\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~515_combout\ = (\Mux127~275_combout\) # ((\Mux127~141_combout\ & (\amt[3]~input_o\ & \amt[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~141_combout\,
	datab => \amt[3]~input_o\,
	datac => \Mux127~275_combout\,
	datad => \amt[2]~input_o\,
	combout => \Mux127~515_combout\);

-- Location: LCCOMB_X57_Y2_N30
\Mux127~522\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~522_combout\ = (!\amt[2]~input_o\ & (\Mux127~62_combout\ & (!\amt[4]~input_o\ & !\amt[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datab => \Mux127~62_combout\,
	datac => \amt[4]~input_o\,
	datad => \amt[3]~input_o\,
	combout => \Mux127~522_combout\);

-- Location: IOOBUF_X91_Y0_N16
\y[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux127~110_combout\,
	devoe => ww_devoe,
	o => \y[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\y[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux253~3_combout\,
	devoe => ww_devoe,
	o => \y[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\y[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux252~1_combout\,
	devoe => ww_devoe,
	o => \y[2]~output_o\);

-- Location: IOOBUF_X47_Y0_N9
\y[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux251~1_combout\,
	devoe => ww_devoe,
	o => \y[3]~output_o\);

-- Location: IOOBUF_X85_Y0_N23
\y[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux250~1_combout\,
	devoe => ww_devoe,
	o => \y[4]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\y[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux249~1_combout\,
	devoe => ww_devoe,
	o => \y[5]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\y[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux248~1_combout\,
	devoe => ww_devoe,
	o => \y[6]~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\y[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux247~1_combout\,
	devoe => ww_devoe,
	o => \y[7]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\y[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux246~1_combout\,
	devoe => ww_devoe,
	o => \y[8]~output_o\);

-- Location: IOOBUF_X100_Y0_N23
\y[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux245~1_combout\,
	devoe => ww_devoe,
	o => \y[9]~output_o\);

-- Location: IOOBUF_X85_Y0_N16
\y[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux244~1_combout\,
	devoe => ww_devoe,
	o => \y[10]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\y[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux243~1_combout\,
	devoe => ww_devoe,
	o => \y[11]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\y[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux242~1_combout\,
	devoe => ww_devoe,
	o => \y[12]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\y[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux241~1_combout\,
	devoe => ww_devoe,
	o => \y[13]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\y[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux240~1_combout\,
	devoe => ww_devoe,
	o => \y[14]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\y[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux239~1_combout\,
	devoe => ww_devoe,
	o => \y[15]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\y[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux238~1_combout\,
	devoe => ww_devoe,
	o => \y[16]~output_o\);

-- Location: IOOBUF_X96_Y0_N16
\y[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux237~1_combout\,
	devoe => ww_devoe,
	o => \y[17]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\y[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux236~1_combout\,
	devoe => ww_devoe,
	o => \y[18]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\y[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux235~1_combout\,
	devoe => ww_devoe,
	o => \y[19]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\y[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux234~1_combout\,
	devoe => ww_devoe,
	o => \y[20]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\y[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux233~1_combout\,
	devoe => ww_devoe,
	o => \y[21]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\y[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux232~1_combout\,
	devoe => ww_devoe,
	o => \y[22]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\y[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux231~1_combout\,
	devoe => ww_devoe,
	o => \y[23]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\y[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux230~1_combout\,
	devoe => ww_devoe,
	o => \y[24]~output_o\);

-- Location: IOOBUF_X102_Y0_N16
\y[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux229~1_combout\,
	devoe => ww_devoe,
	o => \y[25]~output_o\);

-- Location: IOOBUF_X102_Y0_N23
\y[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux228~1_combout\,
	devoe => ww_devoe,
	o => \y[26]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\y[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux227~1_combout\,
	devoe => ww_devoe,
	o => \y[27]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\y[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux226~1_combout\,
	devoe => ww_devoe,
	o => \y[28]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\y[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux225~1_combout\,
	devoe => ww_devoe,
	o => \y[29]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\y[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux224~4_combout\,
	devoe => ww_devoe,
	o => \y[30]~output_o\);

-- Location: IOOBUF_X89_Y0_N2
\y[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux223~4_combout\,
	devoe => ww_devoe,
	o => \y[31]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\y[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux222~3_combout\,
	devoe => ww_devoe,
	o => \y[32]~output_o\);

-- Location: IOOBUF_X60_Y0_N2
\y[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux221~2_combout\,
	devoe => ww_devoe,
	o => \y[33]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\y[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux220~2_combout\,
	devoe => ww_devoe,
	o => \y[34]~output_o\);

-- Location: IOOBUF_X47_Y0_N2
\y[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux219~2_combout\,
	devoe => ww_devoe,
	o => \y[35]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\y[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux218~2_combout\,
	devoe => ww_devoe,
	o => \y[36]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\y[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux217~2_combout\,
	devoe => ww_devoe,
	o => \y[37]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\y[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux216~2_combout\,
	devoe => ww_devoe,
	o => \y[38]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\y[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux215~2_combout\,
	devoe => ww_devoe,
	o => \y[39]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\y[40]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux214~2_combout\,
	devoe => ww_devoe,
	o => \y[40]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\y[41]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux213~2_combout\,
	devoe => ww_devoe,
	o => \y[41]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\y[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux212~2_combout\,
	devoe => ww_devoe,
	o => \y[42]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\y[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux211~2_combout\,
	devoe => ww_devoe,
	o => \y[43]~output_o\);

-- Location: IOOBUF_X87_Y0_N23
\y[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux210~2_combout\,
	devoe => ww_devoe,
	o => \y[44]~output_o\);

-- Location: IOOBUF_X60_Y0_N23
\y[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux209~2_combout\,
	devoe => ww_devoe,
	o => \y[45]~output_o\);

-- Location: IOOBUF_X20_Y0_N23
\y[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux208~2_combout\,
	devoe => ww_devoe,
	o => \y[46]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\y[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux207~2_combout\,
	devoe => ww_devoe,
	o => \y[47]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\y[48]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux206~2_combout\,
	devoe => ww_devoe,
	o => \y[48]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\y[49]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux205~2_combout\,
	devoe => ww_devoe,
	o => \y[49]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\y[50]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux204~2_combout\,
	devoe => ww_devoe,
	o => \y[50]~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\y[51]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux203~2_combout\,
	devoe => ww_devoe,
	o => \y[51]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\y[52]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux202~2_combout\,
	devoe => ww_devoe,
	o => \y[52]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\y[53]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux201~2_combout\,
	devoe => ww_devoe,
	o => \y[53]~output_o\);

-- Location: IOOBUF_X27_Y0_N9
\y[54]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux200~2_combout\,
	devoe => ww_devoe,
	o => \y[54]~output_o\);

-- Location: IOOBUF_X42_Y0_N23
\y[55]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux199~2_combout\,
	devoe => ww_devoe,
	o => \y[55]~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\y[56]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux198~2_combout\,
	devoe => ww_devoe,
	o => \y[56]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\y[57]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux197~2_combout\,
	devoe => ww_devoe,
	o => \y[57]~output_o\);

-- Location: IOOBUF_X89_Y0_N9
\y[58]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux196~2_combout\,
	devoe => ww_devoe,
	o => \y[58]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\y[59]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux195~2_combout\,
	devoe => ww_devoe,
	o => \y[59]~output_o\);

-- Location: IOOBUF_X33_Y0_N9
\y[60]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux194~2_combout\,
	devoe => ww_devoe,
	o => \y[60]~output_o\);

-- Location: IOOBUF_X85_Y0_N2
\y[61]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux193~4_combout\,
	devoe => ww_devoe,
	o => \y[61]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\y[62]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux192~5_combout\,
	devoe => ww_devoe,
	o => \y[62]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\y[63]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux191~3_combout\,
	devoe => ww_devoe,
	o => \y[63]~output_o\);

-- Location: IOIBUF_X94_Y0_N8
\amt[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_amt(5),
	o => \amt[5]~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\amt[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_amt(0),
	o => \amt[0]~input_o\);

-- Location: IOIBUF_X54_Y0_N22
\amt[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_amt(1),
	o => \amt[1]~input_o\);

-- Location: IOIBUF_X35_Y0_N22
\a[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(14),
	o => \a[14]~input_o\);

-- Location: IOIBUF_X94_Y0_N1
\a[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(12),
	o => \a[12]~input_o\);

-- Location: LCCOMB_X54_Y1_N0
\Mux127~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~104_combout\ = (\amt[1]~input_o\ & (\a[14]~input_o\)) # (!\amt[1]~input_o\ & ((\a[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[1]~input_o\,
	datac => \a[14]~input_o\,
	datad => \a[12]~input_o\,
	combout => \Mux127~104_combout\);

-- Location: IOIBUF_X56_Y0_N15
\amt[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_amt(3),
	o => \amt[3]~input_o\);

-- Location: IOIBUF_X56_Y0_N22
\amt[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_amt(2),
	o => \amt[2]~input_o\);

-- Location: LCCOMB_X55_Y3_N8
\Mux127~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~68_combout\ = (\amt[3]~input_o\ & \amt[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \amt[3]~input_o\,
	datad => \amt[2]~input_o\,
	combout => \Mux127~68_combout\);

-- Location: LCCOMB_X55_Y1_N28
\Mux127~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~105_combout\ = (\Mux127~68_combout\ & ((\amt[0]~input_o\ & (\Mux127~103_combout\)) # (!\amt[0]~input_o\ & ((\Mux127~104_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~103_combout\,
	datab => \amt[0]~input_o\,
	datac => \Mux127~104_combout\,
	datad => \Mux127~68_combout\,
	combout => \Mux127~105_combout\);

-- Location: IOIBUF_X11_Y0_N8
\a[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: LCCOMB_X54_Y5_N8
\Mux127~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~99_combout\ = (\amt[1]~input_o\ & (\a[7]~input_o\)) # (!\amt[1]~input_o\ & ((\a[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[7]~input_o\,
	datac => \amt[1]~input_o\,
	datad => \a[5]~input_o\,
	combout => \Mux127~99_combout\);

-- Location: IOIBUF_X74_Y0_N22
\a[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: IOIBUF_X9_Y0_N1
\a[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

-- Location: LCCOMB_X54_Y5_N18
\Mux127~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~100_combout\ = (\amt[1]~input_o\ & ((\a[6]~input_o\))) # (!\amt[1]~input_o\ & (\a[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \a[4]~input_o\,
	datad => \a[6]~input_o\,
	combout => \Mux127~100_combout\);

-- Location: LCCOMB_X54_Y5_N12
\Mux127~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~101_combout\ = (\amt[0]~input_o\ & (\Mux127~99_combout\)) # (!\amt[0]~input_o\ & ((\Mux127~100_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[0]~input_o\,
	datac => \Mux127~99_combout\,
	datad => \Mux127~100_combout\,
	combout => \Mux127~101_combout\);

-- Location: IOIBUF_X40_Y0_N22
\a[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: LCCOMB_X55_Y2_N2
\Mux127~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~97_combout\ = (\amt[1]~input_o\ & (\a[2]~input_o\)) # (!\amt[1]~input_o\ & ((\a[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datac => \amt[1]~input_o\,
	datad => \a[0]~input_o\,
	combout => \Mux127~97_combout\);

-- Location: IOIBUF_X40_Y0_N15
\a[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: IOIBUF_X81_Y0_N15
\a[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: LCCOMB_X54_Y2_N20
\Mux127~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~96_combout\ = (\amt[1]~input_o\ & ((\a[3]~input_o\))) # (!\amt[1]~input_o\ & (\a[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \a[1]~input_o\,
	datad => \a[3]~input_o\,
	combout => \Mux127~96_combout\);

-- Location: LCCOMB_X55_Y2_N0
\Mux127~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~98_combout\ = (\amt[0]~input_o\ & ((\Mux127~96_combout\))) # (!\amt[0]~input_o\ & (\Mux127~97_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux127~97_combout\,
	datac => \amt[0]~input_o\,
	datad => \Mux127~96_combout\,
	combout => \Mux127~98_combout\);

-- Location: LCCOMB_X55_Y1_N4
\Mux127~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~77_combout\ = (!\amt[3]~input_o\ & \amt[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \amt[3]~input_o\,
	datad => \amt[2]~input_o\,
	combout => \Mux127~77_combout\);

-- Location: LCCOMB_X56_Y3_N4
\Mux127~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~102_combout\ = (\Mux128~0_combout\ & ((\Mux127~98_combout\) # ((\Mux127~101_combout\ & \Mux127~77_combout\)))) # (!\Mux128~0_combout\ & (\Mux127~101_combout\ & ((\Mux127~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux128~0_combout\,
	datab => \Mux127~101_combout\,
	datac => \Mux127~98_combout\,
	datad => \Mux127~77_combout\,
	combout => \Mux127~102_combout\);

-- Location: IOIBUF_X11_Y0_N22
\a[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(11),
	o => \a[11]~input_o\);

-- Location: IOIBUF_X31_Y0_N1
\a[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(9),
	o => \a[9]~input_o\);

-- Location: LCCOMB_X54_Y5_N26
\Mux127~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~106_combout\ = (\amt[1]~input_o\ & (\a[11]~input_o\)) # (!\amt[1]~input_o\ & ((\a[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \a[11]~input_o\,
	datad => \a[9]~input_o\,
	combout => \Mux127~106_combout\);

-- Location: IOIBUF_X35_Y0_N15
\a[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(10),
	o => \a[10]~input_o\);

-- Location: IOIBUF_X9_Y0_N8
\a[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(8),
	o => \a[8]~input_o\);

-- Location: LCCOMB_X54_Y5_N28
\Mux127~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~107_combout\ = (\amt[1]~input_o\ & (\a[10]~input_o\)) # (!\amt[1]~input_o\ & ((\a[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \a[10]~input_o\,
	datad => \a[8]~input_o\,
	combout => \Mux127~107_combout\);

-- Location: LCCOMB_X54_Y5_N22
\Mux127~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~108_combout\ = (\amt[0]~input_o\ & (\Mux127~106_combout\)) # (!\amt[0]~input_o\ & ((\Mux127~107_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[0]~input_o\,
	datac => \Mux127~106_combout\,
	datad => \Mux127~107_combout\,
	combout => \Mux127~108_combout\);

-- Location: LCCOMB_X56_Y3_N30
\Mux127~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~109_combout\ = (\Mux127~105_combout\) # ((\Mux127~102_combout\) # ((\Mux127~69_combout\ & \Mux127~108_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~69_combout\,
	datab => \Mux127~105_combout\,
	datac => \Mux127~102_combout\,
	datad => \Mux127~108_combout\,
	combout => \Mux127~109_combout\);

-- Location: IOIBUF_X11_Y0_N15
\a[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(31),
	o => \a[31]~input_o\);

-- Location: IOIBUF_X13_Y0_N22
\a[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(29),
	o => \a[29]~input_o\);

-- Location: LCCOMB_X56_Y5_N14
\Mux127~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~92_combout\ = (\amt[1]~input_o\ & (\a[31]~input_o\)) # (!\amt[1]~input_o\ & ((\a[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \a[31]~input_o\,
	datad => \a[29]~input_o\,
	combout => \Mux127~92_combout\);

-- Location: IOIBUF_X9_Y0_N15
\a[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(30),
	o => \a[30]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\a[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(28),
	o => \a[28]~input_o\);

-- Location: LCCOMB_X56_Y5_N0
\Mux127~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~93_combout\ = (\amt[1]~input_o\ & (\a[30]~input_o\)) # (!\amt[1]~input_o\ & ((\a[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \a[30]~input_o\,
	datad => \a[28]~input_o\,
	combout => \Mux127~93_combout\);

-- Location: LCCOMB_X56_Y5_N30
\Mux127~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~94_combout\ = (\amt[0]~input_o\ & (\Mux127~92_combout\)) # (!\amt[0]~input_o\ & ((\Mux127~93_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datac => \Mux127~92_combout\,
	datad => \Mux127~93_combout\,
	combout => \Mux127~94_combout\);

-- Location: IOIBUF_X3_Y0_N22
\a[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(18),
	o => \a[18]~input_o\);

-- Location: IOIBUF_X7_Y0_N22
\a[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(16),
	o => \a[16]~input_o\);

-- Location: LCCOMB_X55_Y2_N14
\Mux127~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~86_combout\ = (\amt[1]~input_o\ & (\a[18]~input_o\)) # (!\amt[1]~input_o\ & ((\a[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[1]~input_o\,
	datac => \a[18]~input_o\,
	datad => \a[16]~input_o\,
	combout => \Mux127~86_combout\);

-- Location: IOIBUF_X5_Y0_N15
\a[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(19),
	o => \a[19]~input_o\);

-- Location: IOIBUF_X7_Y0_N15
\a[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(17),
	o => \a[17]~input_o\);

-- Location: LCCOMB_X55_Y2_N28
\Mux127~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~85_combout\ = (\amt[1]~input_o\ & (\a[19]~input_o\)) # (!\amt[1]~input_o\ & ((\a[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[1]~input_o\,
	datac => \a[19]~input_o\,
	datad => \a[17]~input_o\,
	combout => \Mux127~85_combout\);

-- Location: LCCOMB_X55_Y2_N20
\Mux127~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~87_combout\ = (\amt[0]~input_o\ & ((\Mux127~85_combout\))) # (!\amt[0]~input_o\ & (\Mux127~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[0]~input_o\,
	datac => \Mux127~86_combout\,
	datad => \Mux127~85_combout\,
	combout => \Mux127~87_combout\);

-- Location: LCCOMB_X56_Y1_N0
\Mux128~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux128~0_combout\ = (!\amt[2]~input_o\ & !\amt[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \amt[2]~input_o\,
	datad => \amt[3]~input_o\,
	combout => \Mux128~0_combout\);

-- Location: IOIBUF_X107_Y0_N8
\a[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(22),
	o => \a[22]~input_o\);

-- Location: IOIBUF_X100_Y0_N15
\a[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(20),
	o => \a[20]~input_o\);

-- Location: LCCOMB_X56_Y2_N14
\Mux127~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~83_combout\ = (\amt[1]~input_o\ & (\a[22]~input_o\)) # (!\amt[1]~input_o\ & ((\a[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \a[22]~input_o\,
	datad => \a[20]~input_o\,
	combout => \Mux127~83_combout\);

-- Location: IOIBUF_X33_Y0_N1
\a[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(23),
	o => \a[23]~input_o\);

-- Location: IOIBUF_X107_Y0_N1
\a[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(21),
	o => \a[21]~input_o\);

-- Location: LCCOMB_X56_Y2_N16
\Mux127~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~82_combout\ = (\amt[1]~input_o\ & (\a[23]~input_o\)) # (!\amt[1]~input_o\ & ((\a[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datab => \a[23]~input_o\,
	datac => \a[21]~input_o\,
	combout => \Mux127~82_combout\);

-- Location: LCCOMB_X56_Y2_N28
\Mux127~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~84_combout\ = (\amt[0]~input_o\ & ((\Mux127~82_combout\))) # (!\amt[0]~input_o\ & (\Mux127~83_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[0]~input_o\,
	datac => \Mux127~83_combout\,
	datad => \Mux127~82_combout\,
	combout => \Mux127~84_combout\);

-- Location: LCCOMB_X55_Y2_N6
\Mux127~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~88_combout\ = (\Mux127~77_combout\ & ((\Mux127~84_combout\) # ((\Mux127~87_combout\ & \Mux128~0_combout\)))) # (!\Mux127~77_combout\ & (\Mux127~87_combout\ & (\Mux128~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~77_combout\,
	datab => \Mux127~87_combout\,
	datac => \Mux128~0_combout\,
	datad => \Mux127~84_combout\,
	combout => \Mux127~88_combout\);

-- Location: LCCOMB_X55_Y5_N28
\Mux127~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~69_combout\ = (!\amt[2]~input_o\ & \amt[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \amt[2]~input_o\,
	datad => \amt[3]~input_o\,
	combout => \Mux127~69_combout\);

-- Location: IOIBUF_X83_Y0_N1
\a[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(25),
	o => \a[25]~input_o\);

-- Location: IOIBUF_X100_Y0_N1
\a[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(27),
	o => \a[27]~input_o\);

-- Location: LCCOMB_X57_Y2_N2
\Mux127~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~89_combout\ = (\amt[1]~input_o\ & ((\a[27]~input_o\))) # (!\amt[1]~input_o\ & (\a[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \a[25]~input_o\,
	datad => \a[27]~input_o\,
	combout => \Mux127~89_combout\);

-- Location: LCCOMB_X56_Y3_N24
\Mux127~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~91_combout\ = (\Mux127~69_combout\ & ((\amt[0]~input_o\ & ((\Mux127~89_combout\))) # (!\amt[0]~input_o\ & (\Mux127~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~90_combout\,
	datab => \amt[0]~input_o\,
	datac => \Mux127~69_combout\,
	datad => \Mux127~89_combout\,
	combout => \Mux127~91_combout\);

-- Location: LCCOMB_X56_Y3_N6
\Mux127~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~95_combout\ = (\Mux127~88_combout\) # ((\Mux127~91_combout\) # ((\Mux127~68_combout\ & \Mux127~94_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~68_combout\,
	datab => \Mux127~94_combout\,
	datac => \Mux127~88_combout\,
	datad => \Mux127~91_combout\,
	combout => \Mux127~95_combout\);

-- Location: LCCOMB_X56_Y3_N20
\Mux222~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux222~1_combout\ = (\amt[4]~input_o\ & ((\Mux127~95_combout\))) # (!\amt[4]~input_o\ & (\Mux127~109_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datac => \Mux127~109_combout\,
	datad => \Mux127~95_combout\,
	combout => \Mux222~1_combout\);

-- Location: IOIBUF_X105_Y0_N8
\a[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(39),
	o => \a[39]~input_o\);

-- Location: IOIBUF_X74_Y0_N1
\a[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(37),
	o => \a[37]~input_o\);

-- Location: LCCOMB_X57_Y5_N16
\Mux127~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~78_combout\ = (\amt[1]~input_o\ & (\a[39]~input_o\)) # (!\amt[1]~input_o\ & ((\a[37]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \a[39]~input_o\,
	datad => \a[37]~input_o\,
	combout => \Mux127~78_combout\);

-- Location: IOIBUF_X81_Y0_N22
\a[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(38),
	o => \a[38]~input_o\);

-- Location: IOIBUF_X79_Y0_N1
\a[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(36),
	o => \a[36]~input_o\);

-- Location: LCCOMB_X58_Y5_N16
\Mux127~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~79_combout\ = (\amt[1]~input_o\ & (\a[38]~input_o\)) # (!\amt[1]~input_o\ & ((\a[36]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[38]~input_o\,
	datac => \a[36]~input_o\,
	datad => \amt[1]~input_o\,
	combout => \Mux127~79_combout\);

-- Location: LCCOMB_X58_Y3_N16
\Mux127~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~80_combout\ = (\amt[0]~input_o\ & (\Mux127~78_combout\)) # (!\amt[0]~input_o\ & ((\Mux127~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[0]~input_o\,
	datac => \Mux127~78_combout\,
	datad => \Mux127~79_combout\,
	combout => \Mux127~80_combout\);

-- Location: IOIBUF_X45_Y0_N15
\a[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(45),
	o => \a[45]~input_o\);

-- Location: IOIBUF_X49_Y0_N1
\a[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(47),
	o => \a[47]~input_o\);

-- Location: LCCOMB_X53_Y3_N30
\Mux127~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~73_combout\ = (\amt[1]~input_o\ & ((\a[47]~input_o\))) # (!\amt[1]~input_o\ & (\a[45]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \a[45]~input_o\,
	datad => \a[47]~input_o\,
	combout => \Mux127~73_combout\);

-- Location: IOIBUF_X16_Y0_N1
\a[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(46),
	o => \a[46]~input_o\);

-- Location: LCCOMB_X58_Y3_N10
\Mux127~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~74_combout\ = (\amt[1]~input_o\ & ((\a[46]~input_o\))) # (!\amt[1]~input_o\ & (\a[44]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[44]~input_o\,
	datab => \amt[1]~input_o\,
	datad => \a[46]~input_o\,
	combout => \Mux127~74_combout\);

-- Location: LCCOMB_X58_Y3_N8
\Mux127~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~75_combout\ = (\amt[0]~input_o\ & (\Mux127~73_combout\)) # (!\amt[0]~input_o\ & ((\Mux127~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[0]~input_o\,
	datac => \Mux127~73_combout\,
	datad => \Mux127~74_combout\,
	combout => \Mux127~75_combout\);

-- Location: IOIBUF_X83_Y0_N8
\a[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(42),
	o => \a[42]~input_o\);

-- Location: IOIBUF_X105_Y0_N15
\a[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(40),
	o => \a[40]~input_o\);

-- Location: LCCOMB_X59_Y3_N4
\Mux127~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~71_combout\ = (\amt[1]~input_o\ & (\a[42]~input_o\)) # (!\amt[1]~input_o\ & ((\a[40]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[42]~input_o\,
	datac => \amt[1]~input_o\,
	datad => \a[40]~input_o\,
	combout => \Mux127~71_combout\);

-- Location: IOIBUF_X67_Y0_N8
\a[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(41),
	o => \a[41]~input_o\);

-- Location: IOIBUF_X91_Y0_N22
\a[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(43),
	o => \a[43]~input_o\);

-- Location: LCCOMB_X60_Y3_N4
\Mux127~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~70_combout\ = (\amt[1]~input_o\ & ((\a[43]~input_o\))) # (!\amt[1]~input_o\ & (\a[41]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \a[41]~input_o\,
	datad => \a[43]~input_o\,
	combout => \Mux127~70_combout\);

-- Location: LCCOMB_X59_Y3_N6
\Mux127~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~72_combout\ = (\amt[0]~input_o\ & ((\Mux127~70_combout\))) # (!\amt[0]~input_o\ & (\Mux127~71_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[0]~input_o\,
	datac => \Mux127~71_combout\,
	datad => \Mux127~70_combout\,
	combout => \Mux127~72_combout\);

-- Location: LCCOMB_X58_Y3_N14
\Mux127~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~76_combout\ = (\Mux127~69_combout\ & ((\Mux127~72_combout\) # ((\Mux127~68_combout\ & \Mux127~75_combout\)))) # (!\Mux127~69_combout\ & (\Mux127~68_combout\ & (\Mux127~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~69_combout\,
	datab => \Mux127~68_combout\,
	datac => \Mux127~75_combout\,
	datad => \Mux127~72_combout\,
	combout => \Mux127~76_combout\);

-- Location: IOIBUF_X9_Y0_N22
\a[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(32),
	o => \a[32]~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\a[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(34),
	o => \a[34]~input_o\);

-- Location: LCCOMB_X56_Y5_N16
\Mux127~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~66_combout\ = (\amt[1]~input_o\ & ((\a[34]~input_o\))) # (!\amt[1]~input_o\ & (\a[32]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \a[32]~input_o\,
	datad => \a[34]~input_o\,
	combout => \Mux127~66_combout\);

-- Location: IOIBUF_X96_Y0_N1
\a[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(35),
	o => \a[35]~input_o\);

-- Location: IOIBUF_X96_Y0_N8
\a[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(33),
	o => \a[33]~input_o\);

-- Location: LCCOMB_X57_Y1_N24
\Mux127~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~65_combout\ = (\amt[1]~input_o\ & (\a[35]~input_o\)) # (!\amt[1]~input_o\ & ((\a[33]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[1]~input_o\,
	datac => \a[35]~input_o\,
	datad => \a[33]~input_o\,
	combout => \Mux127~65_combout\);

-- Location: LCCOMB_X58_Y3_N0
\Mux127~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~67_combout\ = (\Mux128~0_combout\ & ((\amt[0]~input_o\ & ((\Mux127~65_combout\))) # (!\amt[0]~input_o\ & (\Mux127~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \Mux128~0_combout\,
	datac => \Mux127~66_combout\,
	datad => \Mux127~65_combout\,
	combout => \Mux127~67_combout\);

-- Location: LCCOMB_X58_Y3_N22
\Mux127~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~81_combout\ = (\Mux127~76_combout\) # ((\Mux127~67_combout\) # ((\Mux127~77_combout\ & \Mux127~80_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~77_combout\,
	datab => \Mux127~80_combout\,
	datac => \Mux127~76_combout\,
	datad => \Mux127~67_combout\,
	combout => \Mux127~81_combout\);

-- Location: IOIBUF_X42_Y0_N15
\amt[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_amt(4),
	o => \amt[4]~input_o\);

-- Location: IOIBUF_X56_Y0_N8
\a[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(62),
	o => \a[62]~input_o\);

-- Location: IOIBUF_X54_Y0_N15
\a[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(63),
	o => \a[63]~input_o\);

-- Location: LCCOMB_X57_Y2_N22
\Mux127~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~61_combout\ = (\amt[0]~input_o\ & ((\a[63]~input_o\))) # (!\amt[0]~input_o\ & (\a[62]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datac => \a[62]~input_o\,
	datad => \a[63]~input_o\,
	combout => \Mux127~61_combout\);

-- Location: IOIBUF_X60_Y0_N15
\a[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(61),
	o => \a[61]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\a[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(60),
	o => \a[60]~input_o\);

-- Location: LCCOMB_X57_Y2_N12
\Mux127~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~60_combout\ = (!\amt[1]~input_o\ & ((\amt[0]~input_o\ & (\a[61]~input_o\)) # (!\amt[0]~input_o\ & ((\a[60]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datab => \a[61]~input_o\,
	datac => \amt[0]~input_o\,
	datad => \a[60]~input_o\,
	combout => \Mux127~60_combout\);

-- Location: LCCOMB_X57_Y2_N28
\Mux127~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~62_combout\ = (\Mux127~60_combout\) # ((\amt[1]~input_o\ & \Mux127~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \Mux127~61_combout\,
	datad => \Mux127~60_combout\,
	combout => \Mux127~62_combout\);

-- Location: IOIBUF_X54_Y0_N1
\a[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(56),
	o => \a[56]~input_o\);

-- Location: IOIBUF_X79_Y0_N8
\a[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(58),
	o => \a[58]~input_o\);

-- Location: LCCOMB_X56_Y3_N10
\Mux127~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~58_combout\ = (\amt[1]~input_o\ & ((\a[58]~input_o\))) # (!\amt[1]~input_o\ & (\a[56]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[1]~input_o\,
	datac => \a[56]~input_o\,
	datad => \a[58]~input_o\,
	combout => \Mux127~58_combout\);

-- Location: IOIBUF_X52_Y0_N22
\a[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(57),
	o => \a[57]~input_o\);

-- Location: IOIBUF_X52_Y0_N15
\a[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(59),
	o => \a[59]~input_o\);

-- Location: LCCOMB_X56_Y3_N16
\Mux127~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~57_combout\ = (\amt[1]~input_o\ & ((\a[59]~input_o\))) # (!\amt[1]~input_o\ & (\a[57]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[1]~input_o\,
	datac => \a[57]~input_o\,
	datad => \a[59]~input_o\,
	combout => \Mux127~57_combout\);

-- Location: LCCOMB_X60_Y2_N20
\Mux127~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~59_combout\ = (!\amt[2]~input_o\ & ((\amt[0]~input_o\ & ((\Mux127~57_combout\))) # (!\amt[0]~input_o\ & (\Mux127~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \amt[2]~input_o\,
	datac => \Mux127~58_combout\,
	datad => \Mux127~57_combout\,
	combout => \Mux127~59_combout\);

-- Location: LCCOMB_X60_Y2_N30
\Mux127~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~63_combout\ = (\Mux127~59_combout\) # ((\amt[2]~input_o\ & \Mux127~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[2]~input_o\,
	datac => \Mux127~62_combout\,
	datad => \Mux127~59_combout\,
	combout => \Mux127~63_combout\);

-- Location: IOIBUF_X0_Y36_N15
\a[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(55),
	o => \a[55]~input_o\);

-- Location: IOIBUF_X0_Y36_N22
\a[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(53),
	o => \a[53]~input_o\);

-- Location: LCCOMB_X54_Y4_N28
\Mux127~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~50_combout\ = (\amt[1]~input_o\ & (\a[55]~input_o\)) # (!\amt[1]~input_o\ & ((\a[53]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[1]~input_o\,
	datac => \a[55]~input_o\,
	datad => \a[53]~input_o\,
	combout => \Mux127~50_combout\);

-- Location: IOIBUF_X52_Y0_N1
\a[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(52),
	o => \a[52]~input_o\);

-- Location: IOIBUF_X54_Y0_N8
\a[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(54),
	o => \a[54]~input_o\);

-- Location: LCCOMB_X53_Y4_N28
\Mux127~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~51_combout\ = (\amt[1]~input_o\ & ((\a[54]~input_o\))) # (!\amt[1]~input_o\ & (\a[52]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datab => \a[52]~input_o\,
	datad => \a[54]~input_o\,
	combout => \Mux127~51_combout\);

-- Location: LCCOMB_X55_Y3_N28
\Mux127~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~52_combout\ = (\amt[0]~input_o\ & (\Mux127~50_combout\)) # (!\amt[0]~input_o\ & ((\Mux127~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datac => \Mux127~50_combout\,
	datad => \Mux127~51_combout\,
	combout => \Mux127~52_combout\);

-- Location: LCCOMB_X55_Y3_N14
\Mux127~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~56_combout\ = (!\amt[3]~input_o\ & ((\amt[2]~input_o\ & ((\Mux127~52_combout\))) # (!\amt[2]~input_o\ & (\Mux127~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~55_combout\,
	datab => \amt[2]~input_o\,
	datac => \amt[3]~input_o\,
	datad => \Mux127~52_combout\,
	combout => \Mux127~56_combout\);

-- Location: LCCOMB_X60_Y1_N20
\Mux127~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~64_combout\ = (\Mux127~56_combout\) # ((\amt[3]~input_o\ & \Mux127~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datac => \Mux127~63_combout\,
	datad => \Mux127~56_combout\,
	combout => \Mux127~64_combout\);

-- Location: LCCOMB_X60_Y1_N18
\Mux222~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux222~0_combout\ = (\amt[4]~input_o\ & ((\Mux127~64_combout\))) # (!\amt[4]~input_o\ & (\Mux127~81_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux127~81_combout\,
	datac => \amt[4]~input_o\,
	datad => \Mux127~64_combout\,
	combout => \Mux222~0_combout\);

-- Location: LCCOMB_X60_Y1_N24
\Mux127~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~110_combout\ = (\amt[5]~input_o\ & ((\Mux222~0_combout\))) # (!\amt[5]~input_o\ & (\Mux222~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[5]~input_o\,
	datac => \Mux222~1_combout\,
	datad => \Mux222~0_combout\,
	combout => \Mux127~110_combout\);

-- Location: IOIBUF_X115_Y4_N15
\lar[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_lar(1),
	o => \lar[1]~input_o\);

-- Location: LCCOMB_X59_Y4_N12
\Mux253~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux253~0_combout\ = (\lar[1]~input_o\) # (!\amt[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lar[1]~input_o\,
	datad => \amt[5]~input_o\,
	combout => \Mux253~0_combout\);

-- Location: LCCOMB_X54_Y5_N4
\Mux127~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~156_combout\ = (\amt[1]~input_o\ & ((\a[12]~input_o\))) # (!\amt[1]~input_o\ & (\a[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \a[10]~input_o\,
	datad => \a[12]~input_o\,
	combout => \Mux127~156_combout\);

-- Location: LCCOMB_X54_Y5_N10
\Mux127~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~157_combout\ = (\amt[0]~input_o\ & ((\Mux127~156_combout\))) # (!\amt[0]~input_o\ & (\Mux127~106_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~106_combout\,
	datab => \amt[0]~input_o\,
	datac => \Mux127~156_combout\,
	combout => \Mux127~157_combout\);

-- Location: IOIBUF_X27_Y0_N22
\a[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: LCCOMB_X54_Y2_N18
\Mux127~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~150_combout\ = (\amt[1]~input_o\ & (\a[4]~input_o\)) # (!\amt[1]~input_o\ & ((\a[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \a[4]~input_o\,
	datad => \a[2]~input_o\,
	combout => \Mux127~150_combout\);

-- Location: LCCOMB_X54_Y2_N8
\Mux127~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~151_combout\ = (\Mux128~0_combout\ & ((\amt[0]~input_o\ & (\Mux127~150_combout\)) # (!\amt[0]~input_o\ & ((\Mux127~96_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \Mux128~0_combout\,
	datac => \Mux127~150_combout\,
	datad => \Mux127~96_combout\,
	combout => \Mux127~151_combout\);

-- Location: LCCOMB_X54_Y5_N20
\Mux127~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~152_combout\ = (\amt[1]~input_o\ & (\a[8]~input_o\)) # (!\amt[1]~input_o\ & ((\a[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[8]~input_o\,
	datac => \amt[1]~input_o\,
	datad => \a[6]~input_o\,
	combout => \Mux127~152_combout\);

-- Location: LCCOMB_X54_Y5_N14
\Mux127~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~153_combout\ = (\amt[0]~input_o\ & ((\Mux127~152_combout\))) # (!\amt[0]~input_o\ & (\Mux127~99_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[0]~input_o\,
	datac => \Mux127~99_combout\,
	datad => \Mux127~152_combout\,
	combout => \Mux127~153_combout\);

-- Location: LCCOMB_X55_Y1_N0
\Mux127~500\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~500_combout\ = (\Mux127~151_combout\) # ((\amt[2]~input_o\ & (!\amt[3]~input_o\ & \Mux127~153_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datab => \amt[3]~input_o\,
	datac => \Mux127~151_combout\,
	datad => \Mux127~153_combout\,
	combout => \Mux127~500_combout\);

-- Location: LCCOMB_X55_Y1_N24
\Mux127~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~158_combout\ = (\Mux127~155_combout\) # ((\Mux127~500_combout\) # ((\Mux127~69_combout\ & \Mux127~157_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~155_combout\,
	datab => \Mux127~69_combout\,
	datac => \Mux127~157_combout\,
	datad => \Mux127~500_combout\,
	combout => \Mux127~158_combout\);

-- Location: LCCOMB_X56_Y5_N20
\Mux127~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~147_combout\ = (\amt[1]~input_o\ & (\a[32]~input_o\)) # (!\amt[1]~input_o\ & ((\a[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datab => \a[32]~input_o\,
	datac => \a[30]~input_o\,
	combout => \Mux127~147_combout\);

-- Location: LCCOMB_X57_Y5_N10
\Mux127~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~148_combout\ = (\amt[0]~input_o\ & (\Mux127~147_combout\)) # (!\amt[0]~input_o\ & ((\Mux127~92_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datac => \Mux127~147_combout\,
	datad => \Mux127~92_combout\,
	combout => \Mux127~148_combout\);

-- Location: LCCOMB_X56_Y2_N18
\Mux127~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~143_combout\ = (\amt[0]~input_o\ & (\Mux127~142_combout\)) # (!\amt[0]~input_o\ & ((\Mux127~82_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~142_combout\,
	datab => \amt[0]~input_o\,
	datad => \Mux127~82_combout\,
	combout => \Mux127~143_combout\);

-- Location: LCCOMB_X56_Y2_N2
\Mux127~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~141_combout\ = (\amt[0]~input_o\ & (\Mux127~140_combout\)) # (!\amt[0]~input_o\ & ((\Mux127~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~140_combout\,
	datab => \amt[0]~input_o\,
	datad => \Mux127~85_combout\,
	combout => \Mux127~141_combout\);

-- Location: LCCOMB_X57_Y3_N2
\Mux127~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~144_combout\ = (\Mux128~0_combout\ & ((\Mux127~141_combout\) # ((\Mux127~77_combout\ & \Mux127~143_combout\)))) # (!\Mux128~0_combout\ & (\Mux127~77_combout\ & (\Mux127~143_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux128~0_combout\,
	datab => \Mux127~77_combout\,
	datac => \Mux127~143_combout\,
	datad => \Mux127~141_combout\,
	combout => \Mux127~144_combout\);

-- Location: LCCOMB_X57_Y3_N6
\Mux127~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~149_combout\ = (\Mux127~146_combout\) # ((\Mux127~144_combout\) # ((\Mux127~68_combout\ & \Mux127~148_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~146_combout\,
	datab => \Mux127~68_combout\,
	datac => \Mux127~148_combout\,
	datad => \Mux127~144_combout\,
	combout => \Mux127~149_combout\);

-- Location: LCCOMB_X57_Y3_N16
\Mux127~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~159_combout\ = (\amt[4]~input_o\ & ((\Mux127~149_combout\))) # (!\amt[4]~input_o\ & (\Mux127~158_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[4]~input_o\,
	datac => \Mux127~158_combout\,
	datad => \Mux127~149_combout\,
	combout => \Mux127~159_combout\);

-- Location: LCCOMB_X57_Y5_N2
\Mux127~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~122_combout\ = (\amt[1]~input_o\ & ((\a[40]~input_o\))) # (!\amt[1]~input_o\ & (\a[38]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \a[38]~input_o\,
	datad => \a[40]~input_o\,
	combout => \Mux127~122_combout\);

-- Location: LCCOMB_X57_Y5_N12
\Mux127~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~123_combout\ = (\Mux127~77_combout\ & ((\amt[0]~input_o\ & ((\Mux127~122_combout\))) # (!\amt[0]~input_o\ & (\Mux127~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \Mux127~78_combout\,
	datac => \Mux127~122_combout\,
	datad => \Mux127~77_combout\,
	combout => \Mux127~123_combout\);

-- Location: IOIBUF_X74_Y0_N8
\a[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(44),
	o => \a[44]~input_o\);

-- Location: LCCOMB_X60_Y3_N24
\Mux127~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~128_combout\ = (\amt[1]~input_o\ & ((\a[44]~input_o\))) # (!\amt[1]~input_o\ & (\a[42]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \a[42]~input_o\,
	datad => \a[44]~input_o\,
	combout => \Mux127~128_combout\);

-- Location: LCCOMB_X60_Y3_N22
\Mux127~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~129_combout\ = (\Mux127~69_combout\ & ((\amt[0]~input_o\ & ((\Mux127~128_combout\))) # (!\amt[0]~input_o\ & (\Mux127~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~69_combout\,
	datab => \amt[0]~input_o\,
	datac => \Mux127~70_combout\,
	datad => \Mux127~128_combout\,
	combout => \Mux127~129_combout\);

-- Location: LCCOMB_X58_Y5_N26
\Mux127~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~124_combout\ = (\amt[1]~input_o\ & (\a[36]~input_o\)) # (!\amt[1]~input_o\ & ((\a[34]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[1]~input_o\,
	datac => \a[36]~input_o\,
	datad => \a[34]~input_o\,
	combout => \Mux127~124_combout\);

-- Location: LCCOMB_X60_Y3_N2
\Mux127~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~125_combout\ = (\Mux128~0_combout\ & ((\amt[0]~input_o\ & (\Mux127~124_combout\)) # (!\amt[0]~input_o\ & ((\Mux127~65_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux128~0_combout\,
	datab => \amt[0]~input_o\,
	datac => \Mux127~124_combout\,
	datad => \Mux127~65_combout\,
	combout => \Mux127~125_combout\);

-- Location: LCCOMB_X60_Y3_N28
\Mux127~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~130_combout\ = (\Mux127~127_combout\) # ((\Mux127~123_combout\) # ((\Mux127~129_combout\) # (\Mux127~125_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~127_combout\,
	datab => \Mux127~123_combout\,
	datac => \Mux127~129_combout\,
	datad => \Mux127~125_combout\,
	combout => \Mux127~130_combout\);

-- Location: LCCOMB_X56_Y3_N2
\Mux127~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~116_combout\ = (\amt[1]~input_o\ & ((\a[60]~input_o\))) # (!\amt[1]~input_o\ & (\a[58]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[1]~input_o\,
	datac => \a[58]~input_o\,
	datad => \a[60]~input_o\,
	combout => \Mux127~116_combout\);

-- Location: LCCOMB_X56_Y3_N28
\Mux127~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~117_combout\ = (\Mux127~69_combout\ & ((\amt[0]~input_o\ & (\Mux127~116_combout\)) # (!\amt[0]~input_o\ & ((\Mux127~57_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~69_combout\,
	datab => \Mux127~116_combout\,
	datac => \amt[0]~input_o\,
	datad => \Mux127~57_combout\,
	combout => \Mux127~117_combout\);

-- Location: LCCOMB_X57_Y1_N30
\Mux127~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~119_combout\ = (\amt[0]~input_o\ & ((\a[62]~input_o\))) # (!\amt[0]~input_o\ & (\a[61]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[61]~input_o\,
	datac => \amt[0]~input_o\,
	datad => \a[62]~input_o\,
	combout => \Mux127~119_combout\);

-- Location: LCCOMB_X56_Y1_N30
\Mux127~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~118_combout\ = (\amt[1]~input_o\ & ((\amt[0]~input_o\ & ((\a[0]~input_o\))) # (!\amt[0]~input_o\ & (\a[63]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datab => \a[63]~input_o\,
	datac => \amt[0]~input_o\,
	datad => \a[0]~input_o\,
	combout => \Mux127~118_combout\);

-- Location: LCCOMB_X57_Y1_N20
\Mux127~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~120_combout\ = (\Mux127~118_combout\) # ((!\amt[1]~input_o\ & \Mux127~119_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[1]~input_o\,
	datac => \Mux127~119_combout\,
	datad => \Mux127~118_combout\,
	combout => \Mux127~120_combout\);

-- Location: LCCOMB_X54_Y4_N26
\Mux127~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~113_combout\ = (\amt[1]~input_o\ & ((\a[56]~input_o\))) # (!\amt[1]~input_o\ & (\a[54]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[54]~input_o\,
	datac => \a[56]~input_o\,
	datad => \amt[1]~input_o\,
	combout => \Mux127~113_combout\);

-- Location: LCCOMB_X54_Y4_N8
\Mux127~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~114_combout\ = (\amt[0]~input_o\ & (\Mux127~113_combout\)) # (!\amt[0]~input_o\ & ((\Mux127~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[0]~input_o\,
	datac => \Mux127~113_combout\,
	datad => \Mux127~50_combout\,
	combout => \Mux127~114_combout\);

-- Location: IOIBUF_X29_Y0_N22
\a[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(49),
	o => \a[49]~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\a[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(51),
	o => \a[51]~input_o\);

-- Location: LCCOMB_X53_Y3_N8
\Mux127~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~53_combout\ = (\amt[1]~input_o\ & ((\a[51]~input_o\))) # (!\amt[1]~input_o\ & (\a[49]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \a[49]~input_o\,
	datad => \a[51]~input_o\,
	combout => \Mux127~53_combout\);

-- Location: IOIBUF_X49_Y0_N8
\a[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(50),
	o => \a[50]~input_o\);

-- Location: LCCOMB_X53_Y3_N16
\Mux127~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~111_combout\ = (\amt[1]~input_o\ & ((\a[52]~input_o\))) # (!\amt[1]~input_o\ & (\a[50]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \a[50]~input_o\,
	datad => \a[52]~input_o\,
	combout => \Mux127~111_combout\);

-- Location: LCCOMB_X53_Y3_N6
\Mux127~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~112_combout\ = (\amt[0]~input_o\ & ((\Mux127~111_combout\))) # (!\amt[0]~input_o\ & (\Mux127~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[0]~input_o\,
	datac => \Mux127~53_combout\,
	datad => \Mux127~111_combout\,
	combout => \Mux127~112_combout\);

-- Location: LCCOMB_X57_Y3_N4
\Mux127~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~115_combout\ = (\Mux128~0_combout\ & ((\Mux127~112_combout\) # ((\Mux127~77_combout\ & \Mux127~114_combout\)))) # (!\Mux128~0_combout\ & (\Mux127~77_combout\ & (\Mux127~114_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux128~0_combout\,
	datab => \Mux127~77_combout\,
	datac => \Mux127~114_combout\,
	datad => \Mux127~112_combout\,
	combout => \Mux127~115_combout\);

-- Location: LCCOMB_X56_Y3_N18
\Mux127~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~121_combout\ = (\Mux127~117_combout\) # ((\Mux127~115_combout\) # ((\Mux127~68_combout\ & \Mux127~120_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~68_combout\,
	datab => \Mux127~117_combout\,
	datac => \Mux127~120_combout\,
	datad => \Mux127~115_combout\,
	combout => \Mux127~121_combout\);

-- Location: LCCOMB_X60_Y3_N30
\Mux127~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~131_combout\ = (\amt[4]~input_o\ & ((\Mux127~121_combout\))) # (!\amt[4]~input_o\ & (\Mux127~130_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux127~130_combout\,
	datac => \amt[4]~input_o\,
	datad => \Mux127~121_combout\,
	combout => \Mux127~131_combout\);

-- Location: IOIBUF_X0_Y4_N1
\lar[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_lar(0),
	o => \lar[0]~input_o\);

-- Location: LCCOMB_X57_Y4_N24
\Mux253~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux253~1_combout\ = ((!\lar[1]~input_o\ & \lar[0]~input_o\)) # (!\amt[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lar[1]~input_o\,
	datac => \lar[0]~input_o\,
	datad => \amt[5]~input_o\,
	combout => \Mux253~1_combout\);

-- Location: LCCOMB_X57_Y1_N2
\Mux127~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~132_combout\ = (\amt[2]~input_o\ & ((\amt[1]~input_o\ & ((\a[63]~input_o\))) # (!\amt[1]~input_o\ & (\Mux127~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~119_combout\,
	datab => \a[63]~input_o\,
	datac => \amt[2]~input_o\,
	datad => \amt[1]~input_o\,
	combout => \Mux127~132_combout\);

-- Location: LCCOMB_X56_Y3_N0
\Mux127~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~133_combout\ = (\amt[0]~input_o\ & ((\Mux127~116_combout\))) # (!\amt[0]~input_o\ & (\Mux127~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux127~57_combout\,
	datac => \amt[0]~input_o\,
	datad => \Mux127~116_combout\,
	combout => \Mux127~133_combout\);

-- Location: LCCOMB_X57_Y1_N8
\Mux127~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~134_combout\ = (\Mux127~132_combout\) # ((!\amt[2]~input_o\ & \Mux127~133_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux127~132_combout\,
	datac => \amt[2]~input_o\,
	datad => \Mux127~133_combout\,
	combout => \Mux127~134_combout\);

-- Location: LCCOMB_X60_Y3_N20
\Mux127~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~135_combout\ = (\amt[4]~input_o\ & (!\Mux127~115_combout\)) # (!\amt[4]~input_o\ & ((!\Mux127~130_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[4]~input_o\,
	datac => \Mux127~115_combout\,
	datad => \Mux127~130_combout\,
	combout => \Mux127~135_combout\);

-- Location: LCCOMB_X60_Y3_N6
\Mux127~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~136_combout\ = ((\amt[3]~input_o\ & (\amt[4]~input_o\ & \Mux127~134_combout\))) # (!\Mux127~135_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datab => \amt[4]~input_o\,
	datac => \Mux127~134_combout\,
	datad => \Mux127~135_combout\,
	combout => \Mux127~136_combout\);

-- Location: LCCOMB_X60_Y3_N10
\Mux253~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux253~2_combout\ = (\Mux253~1_combout\ & (((\Mux253~0_combout\) # (\Mux127~136_combout\)))) # (!\Mux253~1_combout\ & (\Mux127~139_combout\ & (!\Mux253~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~139_combout\,
	datab => \Mux253~1_combout\,
	datac => \Mux253~0_combout\,
	datad => \Mux127~136_combout\,
	combout => \Mux253~2_combout\);

-- Location: LCCOMB_X60_Y3_N16
\Mux253~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux253~3_combout\ = (\Mux253~0_combout\ & ((\Mux253~2_combout\ & (\Mux127~159_combout\)) # (!\Mux253~2_combout\ & ((\Mux127~131_combout\))))) # (!\Mux253~0_combout\ & (((\Mux253~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux253~0_combout\,
	datab => \Mux127~159_combout\,
	datac => \Mux127~131_combout\,
	datad => \Mux253~2_combout\,
	combout => \Mux253~3_combout\);

-- Location: LCCOMB_X55_Y4_N20
\Mux127~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~160_combout\ = (\amt[0]~input_o\ & (((\a[63]~input_o\)))) # (!\amt[0]~input_o\ & ((\amt[1]~input_o\ & ((\a[63]~input_o\))) # (!\amt[1]~input_o\ & (\a[62]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[62]~input_o\,
	datab => \a[63]~input_o\,
	datac => \amt[0]~input_o\,
	datad => \amt[1]~input_o\,
	combout => \Mux127~160_combout\);

-- Location: LCCOMB_X56_Y3_N14
\Mux127~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~161_combout\ = (\amt[0]~input_o\ & ((\amt[1]~input_o\ & (\a[61]~input_o\)) # (!\amt[1]~input_o\ & ((\a[59]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[61]~input_o\,
	datab => \amt[1]~input_o\,
	datac => \amt[0]~input_o\,
	datad => \a[59]~input_o\,
	combout => \Mux127~161_combout\);

-- Location: LCCOMB_X56_Y3_N8
\Mux127~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~162_combout\ = (\Mux127~161_combout\) # ((!\amt[0]~input_o\ & \Mux127~116_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[0]~input_o\,
	datac => \Mux127~161_combout\,
	datad => \Mux127~116_combout\,
	combout => \Mux127~162_combout\);

-- Location: LCCOMB_X55_Y4_N30
\Mux127~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~163_combout\ = (\amt[2]~input_o\ & (\Mux127~160_combout\)) # (!\amt[2]~input_o\ & ((\Mux127~162_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux127~160_combout\,
	datac => \Mux127~162_combout\,
	datad => \amt[2]~input_o\,
	combout => \Mux127~163_combout\);

-- Location: LCCOMB_X58_Y5_N4
\Mux127~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~167_combout\ = (\Mux128~0_combout\ & ((\amt[0]~input_o\ & (\Mux127~166_combout\)) # (!\amt[0]~input_o\ & ((\Mux127~124_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~166_combout\,
	datab => \amt[0]~input_o\,
	datac => \Mux127~124_combout\,
	datad => \Mux128~0_combout\,
	combout => \Mux127~167_combout\);

-- Location: LCCOMB_X53_Y3_N24
\Mux127~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~168_combout\ = (\amt[1]~input_o\ & (\a[49]~input_o\)) # (!\amt[1]~input_o\ & ((\a[47]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \a[49]~input_o\,
	datad => \a[47]~input_o\,
	combout => \Mux127~168_combout\);

-- Location: IOIBUF_X0_Y4_N8
\a[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(48),
	o => \a[48]~input_o\);

-- Location: LCCOMB_X53_Y3_N20
\Mux127~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~126_combout\ = (\amt[1]~input_o\ & (\a[48]~input_o\)) # (!\amt[1]~input_o\ & ((\a[46]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \a[48]~input_o\,
	datad => \a[46]~input_o\,
	combout => \Mux127~126_combout\);

-- Location: LCCOMB_X57_Y5_N26
\Mux127~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~169_combout\ = (\Mux127~68_combout\ & ((\amt[0]~input_o\ & (\Mux127~168_combout\)) # (!\amt[0]~input_o\ & ((\Mux127~126_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \Mux127~168_combout\,
	datac => \Mux127~68_combout\,
	datad => \Mux127~126_combout\,
	combout => \Mux127~169_combout\);

-- Location: LCCOMB_X59_Y3_N8
\Mux127~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~170_combout\ = (\amt[1]~input_o\ & ((\a[45]~input_o\))) # (!\amt[1]~input_o\ & (\a[43]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[1]~input_o\,
	datac => \a[43]~input_o\,
	datad => \a[45]~input_o\,
	combout => \Mux127~170_combout\);

-- Location: LCCOMB_X58_Y5_N18
\Mux127~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~171_combout\ = (\Mux127~69_combout\ & ((\amt[0]~input_o\ & (\Mux127~170_combout\)) # (!\amt[0]~input_o\ & ((\Mux127~128_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~69_combout\,
	datab => \amt[0]~input_o\,
	datac => \Mux127~170_combout\,
	datad => \Mux127~128_combout\,
	combout => \Mux127~171_combout\);

-- Location: LCCOMB_X58_Y5_N0
\Mux127~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~172_combout\ = (\Mux127~165_combout\) # ((\Mux127~167_combout\) # ((\Mux127~169_combout\) # (\Mux127~171_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~165_combout\,
	datab => \Mux127~167_combout\,
	datac => \Mux127~169_combout\,
	datad => \Mux127~171_combout\,
	combout => \Mux127~172_combout\);

-- Location: LCCOMB_X54_Y4_N18
\Mux127~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~173_combout\ = (\amt[1]~input_o\ & ((\a[53]~input_o\))) # (!\amt[1]~input_o\ & (\a[51]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[1]~input_o\,
	datac => \a[51]~input_o\,
	datad => \a[53]~input_o\,
	combout => \Mux127~173_combout\);

-- Location: LCCOMB_X54_Y4_N24
\Mux127~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~174_combout\ = (\amt[0]~input_o\ & ((\Mux127~173_combout\))) # (!\amt[0]~input_o\ & (\Mux127~111_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~111_combout\,
	datac => \amt[0]~input_o\,
	datad => \Mux127~173_combout\,
	combout => \Mux127~174_combout\);

-- Location: LCCOMB_X54_Y4_N22
\Mux127~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~177_combout\ = (\Mux127~176_combout\ & ((\Mux127~77_combout\) # ((\Mux128~0_combout\ & \Mux127~174_combout\)))) # (!\Mux127~176_combout\ & (((\Mux128~0_combout\ & \Mux127~174_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~176_combout\,
	datab => \Mux127~77_combout\,
	datac => \Mux128~0_combout\,
	datad => \Mux127~174_combout\,
	combout => \Mux127~177_combout\);

-- Location: LCCOMB_X59_Y4_N18
\Mux127~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~178_combout\ = (\amt[4]~input_o\ & ((!\Mux127~177_combout\))) # (!\amt[4]~input_o\ & (!\Mux127~172_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[4]~input_o\,
	datac => \Mux127~172_combout\,
	datad => \Mux127~177_combout\,
	combout => \Mux127~178_combout\);

-- Location: LCCOMB_X59_Y4_N4
\Mux127~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~179_combout\ = ((\amt[3]~input_o\ & (\amt[4]~input_o\ & \Mux127~163_combout\))) # (!\Mux127~178_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datab => \amt[4]~input_o\,
	datac => \Mux127~163_combout\,
	datad => \Mux127~178_combout\,
	combout => \Mux127~179_combout\);

-- Location: LCCOMB_X55_Y4_N18
\Mux127~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~184_combout\ = (\amt[2]~input_o\ & (\Mux127~61_combout\ & ((!\amt[1]~input_o\)))) # (!\amt[2]~input_o\ & (((\Mux127~162_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~61_combout\,
	datab => \amt[2]~input_o\,
	datac => \Mux127~162_combout\,
	datad => \amt[1]~input_o\,
	combout => \Mux127~184_combout\);

-- Location: LCCOMB_X59_Y4_N0
\Mux127~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~185_combout\ = ((\amt[3]~input_o\ & (\amt[4]~input_o\ & \Mux127~184_combout\))) # (!\Mux127~178_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datab => \amt[4]~input_o\,
	datac => \Mux127~184_combout\,
	datad => \Mux127~178_combout\,
	combout => \Mux127~185_combout\);

-- Location: LCCOMB_X54_Y2_N24
\Mux127~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~180_combout\ = (\amt[1]~input_o\ & ((\amt[0]~input_o\ & (\a[1]~input_o\)) # (!\amt[0]~input_o\ & ((\a[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \a[1]~input_o\,
	datac => \a[0]~input_o\,
	datad => \amt[1]~input_o\,
	combout => \Mux127~180_combout\);

-- Location: LCCOMB_X54_Y2_N10
\Mux127~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~181_combout\ = (\Mux127~180_combout\) # ((!\amt[1]~input_o\ & \Mux127~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \Mux127~61_combout\,
	datad => \Mux127~180_combout\,
	combout => \Mux127~181_combout\);

-- Location: LCCOMB_X55_Y4_N16
\Mux127~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~182_combout\ = (\Mux127~69_combout\ & ((\Mux127~162_combout\) # ((\Mux127~68_combout\ & \Mux127~181_combout\)))) # (!\Mux127~69_combout\ & (\Mux127~68_combout\ & ((\Mux127~181_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~69_combout\,
	datab => \Mux127~68_combout\,
	datac => \Mux127~162_combout\,
	datad => \Mux127~181_combout\,
	combout => \Mux127~182_combout\);

-- Location: LCCOMB_X59_Y4_N6
\Mux127~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~183_combout\ = (\amt[4]~input_o\ & (((\Mux127~182_combout\) # (\Mux127~177_combout\)))) # (!\amt[4]~input_o\ & (\Mux127~172_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~172_combout\,
	datab => \amt[4]~input_o\,
	datac => \Mux127~182_combout\,
	datad => \Mux127~177_combout\,
	combout => \Mux127~183_combout\);

-- Location: LCCOMB_X59_Y4_N14
\Mux252~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux252~0_combout\ = (\Mux253~0_combout\ & (((\Mux253~1_combout\) # (\Mux127~183_combout\)))) # (!\Mux253~0_combout\ & (\Mux127~185_combout\ & (!\Mux253~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux253~0_combout\,
	datab => \Mux127~185_combout\,
	datac => \Mux253~1_combout\,
	datad => \Mux127~183_combout\,
	combout => \Mux252~0_combout\);

-- Location: LCCOMB_X56_Y2_N4
\Mux127~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~186_combout\ = (\amt[1]~input_o\ & (\a[25]~input_o\)) # (!\amt[1]~input_o\ & ((\a[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \a[25]~input_o\,
	datad => \a[23]~input_o\,
	combout => \Mux127~186_combout\);

-- Location: IOIBUF_X96_Y0_N22
\a[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(24),
	o => \a[24]~input_o\);

-- Location: LCCOMB_X56_Y2_N12
\Mux127~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~142_combout\ = (\amt[1]~input_o\ & ((\a[24]~input_o\))) # (!\amt[1]~input_o\ & (\a[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \a[22]~input_o\,
	datad => \a[24]~input_o\,
	combout => \Mux127~142_combout\);

-- Location: LCCOMB_X56_Y2_N10
\Mux127~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~187_combout\ = (\Mux127~77_combout\ & ((\amt[0]~input_o\ & (\Mux127~186_combout\)) # (!\amt[0]~input_o\ & ((\Mux127~142_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~77_combout\,
	datab => \amt[0]~input_o\,
	datac => \Mux127~186_combout\,
	datad => \Mux127~142_combout\,
	combout => \Mux127~187_combout\);

-- Location: LCCOMB_X56_Y5_N28
\Mux127~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~190_combout\ = (\amt[1]~input_o\ & ((\a[33]~input_o\))) # (!\amt[1]~input_o\ & (\a[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \a[31]~input_o\,
	datad => \a[33]~input_o\,
	combout => \Mux127~190_combout\);

-- Location: LCCOMB_X55_Y5_N4
\Mux127~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~191_combout\ = (\amt[0]~input_o\ & ((\Mux127~190_combout\))) # (!\amt[0]~input_o\ & (\Mux127~147_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[0]~input_o\,
	datac => \Mux127~147_combout\,
	datad => \Mux127~190_combout\,
	combout => \Mux127~191_combout\);

-- Location: IOIBUF_X79_Y0_N22
\a[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(26),
	o => \a[26]~input_o\);

-- Location: LCCOMB_X57_Y4_N30
\Mux127~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~145_combout\ = (\amt[1]~input_o\ & ((\a[28]~input_o\))) # (!\amt[1]~input_o\ & (\a[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[1]~input_o\,
	datac => \a[26]~input_o\,
	datad => \a[28]~input_o\,
	combout => \Mux127~145_combout\);

-- Location: LCCOMB_X56_Y5_N18
\Mux127~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~188_combout\ = (\amt[1]~input_o\ & ((\a[29]~input_o\))) # (!\amt[1]~input_o\ & (\a[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \a[27]~input_o\,
	datad => \a[29]~input_o\,
	combout => \Mux127~188_combout\);

-- Location: LCCOMB_X55_Y5_N6
\Mux127~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~189_combout\ = (\amt[0]~input_o\ & ((\Mux127~188_combout\))) # (!\amt[0]~input_o\ & (\Mux127~145_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[0]~input_o\,
	datac => \Mux127~145_combout\,
	datad => \Mux127~188_combout\,
	combout => \Mux127~189_combout\);

-- Location: LCCOMB_X55_Y5_N22
\Mux127~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~192_combout\ = (\Mux127~68_combout\ & ((\Mux127~191_combout\) # ((\Mux127~69_combout\ & \Mux127~189_combout\)))) # (!\Mux127~68_combout\ & (\Mux127~69_combout\ & ((\Mux127~189_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~68_combout\,
	datab => \Mux127~69_combout\,
	datac => \Mux127~191_combout\,
	datad => \Mux127~189_combout\,
	combout => \Mux127~192_combout\);

-- Location: LCCOMB_X55_Y2_N4
\Mux127~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~193_combout\ = (\amt[1]~input_o\ & ((\a[21]~input_o\))) # (!\amt[1]~input_o\ & (\a[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[1]~input_o\,
	datac => \a[19]~input_o\,
	datad => \a[21]~input_o\,
	combout => \Mux127~193_combout\);

-- Location: LCCOMB_X55_Y2_N10
\Mux127~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~140_combout\ = (\amt[1]~input_o\ & ((\a[20]~input_o\))) # (!\amt[1]~input_o\ & (\a[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[1]~input_o\,
	datac => \a[18]~input_o\,
	datad => \a[20]~input_o\,
	combout => \Mux127~140_combout\);

-- Location: LCCOMB_X55_Y2_N26
\Mux127~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~194_combout\ = (\amt[0]~input_o\ & (\Mux127~193_combout\)) # (!\amt[0]~input_o\ & ((\Mux127~140_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[0]~input_o\,
	datac => \Mux127~193_combout\,
	datad => \Mux127~140_combout\,
	combout => \Mux127~194_combout\);

-- Location: LCCOMB_X55_Y5_N0
\Mux127~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~195_combout\ = (\Mux127~187_combout\) # ((\Mux127~192_combout\) # ((\Mux128~0_combout\ & \Mux127~194_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux128~0_combout\,
	datab => \Mux127~187_combout\,
	datac => \Mux127~192_combout\,
	datad => \Mux127~194_combout\,
	combout => \Mux127~195_combout\);

-- Location: LCCOMB_X54_Y4_N16
\Mux127~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~206_combout\ = (\amt[4]~input_o\ & ((\Mux127~195_combout\))) # (!\amt[4]~input_o\ & (\Mux127~205_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~205_combout\,
	datac => \amt[4]~input_o\,
	datad => \Mux127~195_combout\,
	combout => \Mux127~206_combout\);

-- Location: LCCOMB_X59_Y4_N24
\Mux252~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux252~1_combout\ = (\Mux253~1_combout\ & ((\Mux252~0_combout\ & ((\Mux127~206_combout\))) # (!\Mux252~0_combout\ & (\Mux127~179_combout\)))) # (!\Mux253~1_combout\ & (((\Mux252~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux253~1_combout\,
	datab => \Mux127~179_combout\,
	datac => \Mux252~0_combout\,
	datad => \Mux127~206_combout\,
	combout => \Mux252~1_combout\);

-- Location: LCCOMB_X56_Y5_N22
\Mux127~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~230_combout\ = (\Mux127~68_combout\ & ((\amt[0]~input_o\ & (\Mux127~66_combout\)) # (!\amt[0]~input_o\ & ((\Mux127~190_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~68_combout\,
	datab => \Mux127~66_combout\,
	datac => \amt[0]~input_o\,
	datad => \Mux127~190_combout\,
	combout => \Mux127~230_combout\);

-- Location: LCCOMB_X55_Y2_N30
\Mux127~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~227_combout\ = (\amt[0]~input_o\ & ((\Mux127~83_combout\))) # (!\amt[0]~input_o\ & (\Mux127~193_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[0]~input_o\,
	datac => \Mux127~193_combout\,
	datad => \Mux127~83_combout\,
	combout => \Mux127~227_combout\);

-- Location: LCCOMB_X55_Y2_N24
\Mux127~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~90_combout\ = (\amt[1]~input_o\ & ((\a[26]~input_o\))) # (!\amt[1]~input_o\ & (\a[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[1]~input_o\,
	datac => \a[24]~input_o\,
	datad => \a[26]~input_o\,
	combout => \Mux127~90_combout\);

-- Location: LCCOMB_X54_Y1_N12
\Mux127~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~228_combout\ = (\amt[0]~input_o\ & ((\Mux127~90_combout\))) # (!\amt[0]~input_o\ & (\Mux127~186_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datac => \Mux127~186_combout\,
	datad => \Mux127~90_combout\,
	combout => \Mux127~228_combout\);

-- Location: LCCOMB_X53_Y2_N28
\Mux127~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~229_combout\ = (\Mux128~0_combout\ & ((\Mux127~227_combout\) # ((\Mux127~77_combout\ & \Mux127~228_combout\)))) # (!\Mux128~0_combout\ & (\Mux127~77_combout\ & ((\Mux127~228_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux128~0_combout\,
	datab => \Mux127~77_combout\,
	datac => \Mux127~227_combout\,
	datad => \Mux127~228_combout\,
	combout => \Mux127~229_combout\);

-- Location: LCCOMB_X53_Y2_N2
\Mux127~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~232_combout\ = (\Mux127~230_combout\) # ((\Mux127~229_combout\) # ((\Mux127~231_combout\ & \Mux127~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~231_combout\,
	datab => \Mux127~230_combout\,
	datac => \Mux127~69_combout\,
	datad => \Mux127~229_combout\,
	combout => \Mux127~232_combout\);

-- Location: IOIBUF_X31_Y0_N8
\a[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

-- Location: LCCOMB_X54_Y5_N0
\Mux127~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~203_combout\ = (\amt[1]~input_o\ & (\a[9]~input_o\)) # (!\amt[1]~input_o\ & ((\a[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[9]~input_o\,
	datac => \amt[1]~input_o\,
	datad => \a[7]~input_o\,
	combout => \Mux127~203_combout\);

-- Location: LCCOMB_X53_Y5_N26
\Mux127~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~234_combout\ = (\amt[0]~input_o\ & ((\Mux127~107_combout\))) # (!\amt[0]~input_o\ & (\Mux127~203_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datac => \Mux127~203_combout\,
	datad => \Mux127~107_combout\,
	combout => \Mux127~234_combout\);

-- Location: LCCOMB_X54_Y2_N12
\Mux127~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~196_combout\ = (\amt[1]~input_o\ & (\a[5]~input_o\)) # (!\amt[1]~input_o\ & ((\a[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[5]~input_o\,
	datac => \amt[1]~input_o\,
	datad => \a[3]~input_o\,
	combout => \Mux127~196_combout\);

-- Location: LCCOMB_X53_Y5_N28
\Mux127~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~233_combout\ = (\amt[0]~input_o\ & ((\Mux127~100_combout\))) # (!\amt[0]~input_o\ & (\Mux127~196_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datac => \Mux127~196_combout\,
	datad => \Mux127~100_combout\,
	combout => \Mux127~233_combout\);

-- Location: LCCOMB_X53_Y2_N8
\Mux127~235\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~235_combout\ = (\Mux128~0_combout\ & ((\Mux127~233_combout\) # ((\Mux127~234_combout\ & \Mux127~77_combout\)))) # (!\Mux128~0_combout\ & (\Mux127~234_combout\ & (\Mux127~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux128~0_combout\,
	datab => \Mux127~234_combout\,
	datac => \Mux127~77_combout\,
	datad => \Mux127~233_combout\,
	combout => \Mux127~235_combout\);

-- Location: IOIBUF_X98_Y0_N22
\a[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(15),
	o => \a[15]~input_o\);

-- Location: LCCOMB_X55_Y2_N12
\Mux127~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~200_combout\ = (\amt[1]~input_o\ & ((\a[17]~input_o\))) # (!\amt[1]~input_o\ & (\a[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[1]~input_o\,
	datac => \a[15]~input_o\,
	datad => \a[17]~input_o\,
	combout => \Mux127~200_combout\);

-- Location: LCCOMB_X55_Y2_N16
\Mux127~237\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~237_combout\ = (\amt[0]~input_o\ & (\Mux127~86_combout\)) # (!\amt[0]~input_o\ & ((\Mux127~200_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[0]~input_o\,
	datac => \Mux127~86_combout\,
	datad => \Mux127~200_combout\,
	combout => \Mux127~237_combout\);

-- Location: IOIBUF_X7_Y0_N8
\a[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(13),
	o => \a[13]~input_o\);

-- Location: LCCOMB_X54_Y5_N24
\Mux127~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~198_combout\ = (\amt[1]~input_o\ & (\a[13]~input_o\)) # (!\amt[1]~input_o\ & ((\a[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \a[13]~input_o\,
	datad => \a[11]~input_o\,
	combout => \Mux127~198_combout\);

-- Location: LCCOMB_X54_Y1_N30
\Mux127~236\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~236_combout\ = (\Mux127~69_combout\ & ((\amt[0]~input_o\ & (\Mux127~104_combout\)) # (!\amt[0]~input_o\ & ((\Mux127~198_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \Mux127~104_combout\,
	datac => \Mux127~198_combout\,
	datad => \Mux127~69_combout\,
	combout => \Mux127~236_combout\);

-- Location: LCCOMB_X53_Y2_N6
\Mux127~502\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~502_combout\ = (\Mux127~236_combout\) # ((\amt[2]~input_o\ & (\amt[3]~input_o\ & \Mux127~237_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datab => \amt[3]~input_o\,
	datac => \Mux127~237_combout\,
	datad => \Mux127~236_combout\,
	combout => \Mux127~502_combout\);

-- Location: LCCOMB_X53_Y2_N26
\Mux127~238\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~238_combout\ = (\amt[4]~input_o\ & (\Mux127~232_combout\)) # (!\amt[4]~input_o\ & (((\Mux127~235_combout\) # (\Mux127~502_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \Mux127~232_combout\,
	datac => \Mux127~235_combout\,
	datad => \Mux127~502_combout\,
	combout => \Mux127~238_combout\);

-- Location: LCCOMB_X57_Y5_N4
\Mux127~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~164_combout\ = (\amt[1]~input_o\ & ((\a[41]~input_o\))) # (!\amt[1]~input_o\ & (\a[39]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \a[39]~input_o\,
	datad => \a[41]~input_o\,
	combout => \Mux127~164_combout\);

-- Location: LCCOMB_X53_Y2_N14
\Mux127~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~214_combout\ = (\Mux127~77_combout\ & ((\amt[0]~input_o\ & (\Mux127~71_combout\)) # (!\amt[0]~input_o\ & ((\Mux127~164_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \Mux127~77_combout\,
	datac => \Mux127~71_combout\,
	datad => \Mux127~164_combout\,
	combout => \Mux127~214_combout\);

-- Location: LCCOMB_X58_Y5_N10
\Mux127~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~166_combout\ = (\amt[1]~input_o\ & (\a[37]~input_o\)) # (!\amt[1]~input_o\ & ((\a[35]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[37]~input_o\,
	datac => \a[35]~input_o\,
	datad => \amt[1]~input_o\,
	combout => \Mux127~166_combout\);

-- Location: LCCOMB_X58_Y5_N6
\Mux127~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~218_combout\ = (\amt[0]~input_o\ & (\Mux127~79_combout\)) # (!\amt[0]~input_o\ & ((\Mux127~166_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux127~79_combout\,
	datac => \amt[0]~input_o\,
	datad => \Mux127~166_combout\,
	combout => \Mux127~218_combout\);

-- Location: LCCOMB_X59_Y3_N30
\Mux127~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~215_combout\ = (\amt[0]~input_o\ & ((\Mux127~74_combout\))) # (!\amt[0]~input_o\ & (\Mux127~170_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[0]~input_o\,
	datac => \Mux127~170_combout\,
	datad => \Mux127~74_combout\,
	combout => \Mux127~215_combout\);

-- Location: LCCOMB_X53_Y2_N24
\Mux127~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~217_combout\ = (\Mux127~216_combout\ & ((\Mux127~68_combout\) # ((\Mux127~215_combout\ & \Mux127~69_combout\)))) # (!\Mux127~216_combout\ & (((\Mux127~215_combout\ & \Mux127~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~216_combout\,
	datab => \Mux127~68_combout\,
	datac => \Mux127~215_combout\,
	datad => \Mux127~69_combout\,
	combout => \Mux127~217_combout\);

-- Location: LCCOMB_X53_Y2_N10
\Mux127~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~219_combout\ = (\Mux127~214_combout\) # ((\Mux127~217_combout\) # ((\Mux128~0_combout\ & \Mux127~218_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux128~0_combout\,
	datab => \Mux127~214_combout\,
	datac => \Mux127~218_combout\,
	datad => \Mux127~217_combout\,
	combout => \Mux127~219_combout\);

-- Location: LCCOMB_X53_Y4_N18
\Mux127~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~212_combout\ = (\Mux128~0_combout\ & ((\amt[0]~input_o\ & (\Mux127~51_combout\)) # (!\amt[0]~input_o\ & ((\Mux127~173_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux128~0_combout\,
	datab => \Mux127~51_combout\,
	datac => \amt[0]~input_o\,
	datad => \Mux127~173_combout\,
	combout => \Mux127~212_combout\);

-- Location: LCCOMB_X54_Y4_N2
\Mux127~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~175_combout\ = (\amt[1]~input_o\ & (\a[57]~input_o\)) # (!\amt[1]~input_o\ & ((\a[55]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[1]~input_o\,
	datac => \a[57]~input_o\,
	datad => \a[55]~input_o\,
	combout => \Mux127~175_combout\);

-- Location: LCCOMB_X54_Y4_N30
\Mux127~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~211_combout\ = (\Mux127~77_combout\ & ((\amt[0]~input_o\ & (\Mux127~58_combout\)) # (!\amt[0]~input_o\ & ((\Mux127~175_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~77_combout\,
	datab => \amt[0]~input_o\,
	datac => \Mux127~58_combout\,
	datad => \Mux127~175_combout\,
	combout => \Mux127~211_combout\);

-- Location: LCCOMB_X53_Y4_N24
\Mux127~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~225_combout\ = (\Mux127~212_combout\) # (\Mux127~211_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux127~212_combout\,
	datad => \Mux127~211_combout\,
	combout => \Mux127~225_combout\);

-- Location: LCCOMB_X52_Y2_N4
\Mux127~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~226_combout\ = (\Mux127~224_combout\) # ((\amt[4]~input_o\ & ((\Mux127~225_combout\))) # (!\amt[4]~input_o\ & (\Mux127~219_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~224_combout\,
	datab => \amt[4]~input_o\,
	datac => \Mux127~219_combout\,
	datad => \Mux127~225_combout\,
	combout => \Mux127~226_combout\);

-- Location: LCCOMB_X54_Y1_N22
\Mux127~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~209_combout\ = (!\amt[1]~input_o\ & ((\amt[0]~input_o\ & (\a[60]~input_o\)) # (!\amt[0]~input_o\ & ((\a[59]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \amt[1]~input_o\,
	datac => \a[60]~input_o\,
	datad => \a[59]~input_o\,
	combout => \Mux127~209_combout\);

-- Location: LCCOMB_X53_Y1_N0
\Mux127~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~210_combout\ = (\Mux127~209_combout\) # ((\Mux127~119_combout\ & \amt[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux127~119_combout\,
	datac => \amt[1]~input_o\,
	datad => \Mux127~209_combout\,
	combout => \Mux127~210_combout\);

-- Location: LCCOMB_X53_Y2_N16
\Mux127~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~213_combout\ = (!\Mux127~212_combout\ & (!\Mux127~211_combout\ & ((!\Mux127~210_combout\) # (!\Mux127~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~69_combout\,
	datab => \Mux127~210_combout\,
	datac => \Mux127~212_combout\,
	datad => \Mux127~211_combout\,
	combout => \Mux127~213_combout\);

-- Location: LCCOMB_X54_Y1_N8
\Mux127~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~221_combout\ = (\amt[3]~input_o\ & (\a[63]~input_o\ & \amt[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[3]~input_o\,
	datac => \a[63]~input_o\,
	datad => \amt[2]~input_o\,
	combout => \Mux127~221_combout\);

-- Location: LCCOMB_X53_Y2_N22
\Mux127~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~222_combout\ = (\amt[4]~input_o\ & (((\Mux127~221_combout\)) # (!\Mux127~213_combout\))) # (!\amt[4]~input_o\ & (((\Mux127~219_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \Mux127~213_combout\,
	datac => \Mux127~221_combout\,
	datad => \Mux127~219_combout\,
	combout => \Mux127~222_combout\);

-- Location: LCCOMB_X52_Y2_N26
\Mux251~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux251~0_combout\ = (\Mux253~0_combout\ & (\Mux253~1_combout\)) # (!\Mux253~0_combout\ & ((\Mux253~1_combout\ & ((\Mux127~222_combout\))) # (!\Mux253~1_combout\ & (\Mux127~226_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux253~0_combout\,
	datab => \Mux253~1_combout\,
	datac => \Mux127~226_combout\,
	datad => \Mux127~222_combout\,
	combout => \Mux251~0_combout\);

-- Location: LCCOMB_X54_Y1_N2
\Mux127~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~207_combout\ = (!\amt[0]~input_o\ & ((\amt[1]~input_o\ & ((\a[1]~input_o\))) # (!\amt[1]~input_o\ & (\a[63]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \a[63]~input_o\,
	datac => \amt[1]~input_o\,
	datad => \a[1]~input_o\,
	combout => \Mux127~207_combout\);

-- Location: LCCOMB_X54_Y1_N16
\Mux127~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~208_combout\ = (\Mux127~207_combout\) # ((\amt[0]~input_o\ & \Mux127~97_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datac => \Mux127~97_combout\,
	datad => \Mux127~207_combout\,
	combout => \Mux127~208_combout\);

-- Location: LCCOMB_X53_Y2_N20
\Mux127~501\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~501_combout\ = ((\amt[2]~input_o\ & (\Mux127~208_combout\ & \amt[3]~input_o\))) # (!\Mux127~213_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datab => \Mux127~208_combout\,
	datac => \amt[3]~input_o\,
	datad => \Mux127~213_combout\,
	combout => \Mux127~501_combout\);

-- Location: LCCOMB_X53_Y2_N4
\Mux127~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~220_combout\ = (\amt[4]~input_o\ & ((\Mux127~501_combout\))) # (!\amt[4]~input_o\ & (\Mux127~219_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~219_combout\,
	datac => \amt[4]~input_o\,
	datad => \Mux127~501_combout\,
	combout => \Mux127~220_combout\);

-- Location: LCCOMB_X52_Y2_N28
\Mux251~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux251~1_combout\ = (\Mux253~0_combout\ & ((\Mux251~0_combout\ & (\Mux127~238_combout\)) # (!\Mux251~0_combout\ & ((\Mux127~220_combout\))))) # (!\Mux253~0_combout\ & (((\Mux251~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux253~0_combout\,
	datab => \Mux127~238_combout\,
	datac => \Mux251~0_combout\,
	datad => \Mux127~220_combout\,
	combout => \Mux251~1_combout\);

-- Location: LCCOMB_X53_Y3_N2
\Mux127~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~54_combout\ = (\amt[1]~input_o\ & (\a[50]~input_o\)) # (!\amt[1]~input_o\ & ((\a[48]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[50]~input_o\,
	datac => \a[48]~input_o\,
	datad => \amt[1]~input_o\,
	combout => \Mux127~54_combout\);

-- Location: LCCOMB_X53_Y3_N12
\Mux127~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~55_combout\ = (\amt[0]~input_o\ & (\Mux127~53_combout\)) # (!\amt[0]~input_o\ & ((\Mux127~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[0]~input_o\,
	datac => \Mux127~53_combout\,
	datad => \Mux127~54_combout\,
	combout => \Mux127~55_combout\);

-- Location: LCCOMB_X59_Y1_N22
\Mux127~240\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~240_combout\ = (\Mux127~75_combout\ & ((\Mux127~69_combout\) # ((\Mux127~68_combout\ & \Mux127~55_combout\)))) # (!\Mux127~75_combout\ & (((\Mux127~68_combout\ & \Mux127~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~75_combout\,
	datab => \Mux127~69_combout\,
	datac => \Mux127~68_combout\,
	datad => \Mux127~55_combout\,
	combout => \Mux127~240_combout\);

-- Location: LCCOMB_X59_Y1_N0
\Mux127~239\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~239_combout\ = (!\amt[3]~input_o\ & ((\amt[2]~input_o\ & ((\Mux127~72_combout\))) # (!\amt[2]~input_o\ & (\Mux127~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datab => \amt[3]~input_o\,
	datac => \Mux127~80_combout\,
	datad => \Mux127~72_combout\,
	combout => \Mux127~239_combout\);

-- Location: LCCOMB_X59_Y1_N8
\Mux127~241\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~241_combout\ = (!\amt[4]~input_o\ & ((\Mux127~240_combout\) # (\Mux127~239_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datac => \Mux127~240_combout\,
	datad => \Mux127~239_combout\,
	combout => \Mux127~241_combout\);

-- Location: LCCOMB_X56_Y1_N12
\Mux127~243\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~243_combout\ = (\Mux128~0_combout\ & ((\amt[0]~input_o\ & ((\Mux127~50_combout\))) # (!\amt[0]~input_o\ & (\Mux127~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~51_combout\,
	datab => \Mux128~0_combout\,
	datac => \amt[0]~input_o\,
	datad => \Mux127~50_combout\,
	combout => \Mux127~243_combout\);

-- Location: LCCOMB_X56_Y1_N6
\Mux127~244\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~244_combout\ = (!\Mux127~242_combout\ & (!\Mux127~243_combout\ & ((!\Mux127~62_combout\) # (!\Mux127~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~242_combout\,
	datab => \Mux127~69_combout\,
	datac => \Mux127~62_combout\,
	datad => \Mux127~243_combout\,
	combout => \Mux127~244_combout\);

-- Location: LCCOMB_X59_Y1_N10
\Mux127~245\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~245_combout\ = (\Mux127~241_combout\) # ((\amt[4]~input_o\ & ((\Mux127~221_combout\) # (!\Mux127~244_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \Mux127~221_combout\,
	datac => \Mux127~241_combout\,
	datad => \Mux127~244_combout\,
	combout => \Mux127~245_combout\);

-- Location: LCCOMB_X55_Y1_N26
\Mux127~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~103_combout\ = (\amt[1]~input_o\ & (\a[15]~input_o\)) # (!\amt[1]~input_o\ & ((\a[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \a[15]~input_o\,
	datad => \a[13]~input_o\,
	combout => \Mux127~103_combout\);

-- Location: LCCOMB_X55_Y1_N18
\Mux127~253\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~253_combout\ = (\Mux127~69_combout\ & ((\amt[0]~input_o\ & ((\Mux127~103_combout\))) # (!\amt[0]~input_o\ & (\Mux127~104_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~104_combout\,
	datab => \amt[0]~input_o\,
	datac => \Mux127~103_combout\,
	datad => \Mux127~69_combout\,
	combout => \Mux127~253_combout\);

-- Location: LCCOMB_X54_Y5_N16
\Mux127~252\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~252_combout\ = (\Mux127~77_combout\ & ((\Mux127~108_combout\) # ((\Mux128~0_combout\ & \Mux127~101_combout\)))) # (!\Mux127~77_combout\ & (\Mux128~0_combout\ & ((\Mux127~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~77_combout\,
	datab => \Mux128~0_combout\,
	datac => \Mux127~108_combout\,
	datad => \Mux127~101_combout\,
	combout => \Mux127~252_combout\);

-- Location: LCCOMB_X56_Y1_N8
\Mux127~254\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~254_combout\ = (\Mux127~253_combout\) # ((\Mux127~252_combout\) # ((\Mux127~68_combout\ & \Mux127~87_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~68_combout\,
	datab => \Mux127~253_combout\,
	datac => \Mux127~87_combout\,
	datad => \Mux127~252_combout\,
	combout => \Mux127~254_combout\);

-- Location: LCCOMB_X56_Y5_N26
\Mux127~250\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~250_combout\ = (\Mux127~68_combout\ & ((\amt[0]~input_o\ & ((\Mux127~65_combout\))) # (!\amt[0]~input_o\ & (\Mux127~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~68_combout\,
	datab => \Mux127~66_combout\,
	datac => \amt[0]~input_o\,
	datad => \Mux127~65_combout\,
	combout => \Mux127~250_combout\);

-- Location: LCCOMB_X59_Y1_N20
\Mux127~251\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~251_combout\ = (\Mux127~249_combout\) # ((\Mux127~250_combout\) # ((\Mux127~69_combout\ & \Mux127~94_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~249_combout\,
	datab => \Mux127~69_combout\,
	datac => \Mux127~250_combout\,
	datad => \Mux127~94_combout\,
	combout => \Mux127~251_combout\);

-- Location: LCCOMB_X59_Y1_N2
\Mux127~255\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~255_combout\ = (\amt[4]~input_o\ & ((\Mux127~251_combout\))) # (!\amt[4]~input_o\ & (\Mux127~254_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datac => \Mux127~254_combout\,
	datad => \Mux127~251_combout\,
	combout => \Mux127~255_combout\);

-- Location: LCCOMB_X56_Y1_N10
\Mux127~503\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~503_combout\ = ((\amt[3]~input_o\ & (\Mux127~98_combout\ & \amt[2]~input_o\))) # (!\Mux127~244_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datab => \Mux127~98_combout\,
	datac => \amt[2]~input_o\,
	datad => \Mux127~244_combout\,
	combout => \Mux127~503_combout\);

-- Location: LCCOMB_X59_Y1_N16
\Mux127~246\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~246_combout\ = (\amt[4]~input_o\ & (((\Mux127~503_combout\)))) # (!\amt[4]~input_o\ & ((\Mux127~239_combout\) # ((\Mux127~240_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \Mux127~239_combout\,
	datac => \Mux127~240_combout\,
	datad => \Mux127~503_combout\,
	combout => \Mux127~246_combout\);

-- Location: LCCOMB_X59_Y1_N18
\Mux127~247\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~247_combout\ = (\amt[4]~input_o\ & (((!\Mux127~244_combout\)))) # (!\amt[4]~input_o\ & ((\Mux127~239_combout\) # ((\Mux127~240_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \Mux127~239_combout\,
	datac => \Mux127~240_combout\,
	datad => \Mux127~244_combout\,
	combout => \Mux127~247_combout\);

-- Location: LCCOMB_X59_Y1_N12
\Mux250~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux250~0_combout\ = (\Mux253~1_combout\ & (((\Mux253~0_combout\)))) # (!\Mux253~1_combout\ & ((\Mux253~0_combout\ & (\Mux127~246_combout\)) # (!\Mux253~0_combout\ & ((\Mux127~247_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux253~1_combout\,
	datab => \Mux127~246_combout\,
	datac => \Mux253~0_combout\,
	datad => \Mux127~247_combout\,
	combout => \Mux250~0_combout\);

-- Location: LCCOMB_X59_Y1_N24
\Mux250~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux250~1_combout\ = (\Mux253~1_combout\ & ((\Mux250~0_combout\ & ((\Mux127~255_combout\))) # (!\Mux250~0_combout\ & (\Mux127~245_combout\)))) # (!\Mux253~1_combout\ & (((\Mux250~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~245_combout\,
	datab => \Mux127~255_combout\,
	datac => \Mux253~1_combout\,
	datad => \Mux250~0_combout\,
	combout => \Mux250~1_combout\);

-- Location: LCCOMB_X57_Y5_N28
\Mux127~259\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~259_combout\ = (\Mux128~0_combout\ & ((\amt[0]~input_o\ & (\Mux127~122_combout\)) # (!\amt[0]~input_o\ & ((\Mux127~78_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \Mux127~122_combout\,
	datac => \Mux128~0_combout\,
	datad => \Mux127~78_combout\,
	combout => \Mux127~259_combout\);

-- Location: LCCOMB_X60_Y3_N26
\Mux127~262\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~262_combout\ = (\amt[0]~input_o\ & ((\Mux127~128_combout\))) # (!\amt[0]~input_o\ & (\Mux127~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[0]~input_o\,
	datac => \Mux127~70_combout\,
	datad => \Mux127~128_combout\,
	combout => \Mux127~262_combout\);

-- Location: LCCOMB_X56_Y1_N20
\Mux127~263\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~263_combout\ = (\Mux127~261_combout\) # ((\Mux127~259_combout\) # ((\Mux127~77_combout\ & \Mux127~262_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~261_combout\,
	datab => \Mux127~259_combout\,
	datac => \Mux127~77_combout\,
	datad => \Mux127~262_combout\,
	combout => \Mux127~263_combout\);

-- Location: LCCOMB_X57_Y1_N18
\Mux127~265\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~265_combout\ = (\amt[2]~input_o\ & (((\a[63]~input_o\)))) # (!\amt[2]~input_o\ & ((\amt[1]~input_o\ & ((\a[63]~input_o\))) # (!\amt[1]~input_o\ & (\Mux127~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~119_combout\,
	datab => \a[63]~input_o\,
	datac => \amt[2]~input_o\,
	datad => \amt[1]~input_o\,
	combout => \Mux127~265_combout\);

-- Location: LCCOMB_X56_Y1_N2
\Mux127~256\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~256_combout\ = (\Mux128~0_combout\ & ((\Mux127~114_combout\) # ((\Mux127~77_combout\ & \Mux127~133_combout\)))) # (!\Mux128~0_combout\ & (\Mux127~77_combout\ & ((\Mux127~133_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux128~0_combout\,
	datab => \Mux127~77_combout\,
	datac => \Mux127~114_combout\,
	datad => \Mux127~133_combout\,
	combout => \Mux127~256_combout\);

-- Location: LCCOMB_X57_Y1_N0
\Mux127~266\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~266_combout\ = (\Mux127~256_combout\) # ((\amt[3]~input_o\ & \Mux127~265_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datab => \Mux127~265_combout\,
	datad => \Mux127~256_combout\,
	combout => \Mux127~266_combout\);

-- Location: LCCOMB_X57_Y1_N14
\Mux127~267\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~267_combout\ = (\amt[4]~input_o\ & ((\Mux127~266_combout\))) # (!\amt[4]~input_o\ & (\Mux127~263_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datac => \Mux127~263_combout\,
	datad => \Mux127~266_combout\,
	combout => \Mux127~267_combout\);

-- Location: LCCOMB_X56_Y1_N26
\Mux127~268\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~268_combout\ = (\amt[4]~input_o\ & ((\Mux127~256_combout\) # ((\Mux127~137_combout\ & \Mux127~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~137_combout\,
	datab => \amt[4]~input_o\,
	datac => \Mux127~69_combout\,
	datad => \Mux127~256_combout\,
	combout => \Mux127~268_combout\);

-- Location: LCCOMB_X56_Y1_N28
\Mux127~269\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~269_combout\ = (\Mux127~268_combout\) # ((!\amt[4]~input_o\ & \Mux127~263_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[4]~input_o\,
	datac => \Mux127~268_combout\,
	datad => \Mux127~263_combout\,
	combout => \Mux127~269_combout\);

-- Location: LCCOMB_X57_Y1_N12
\Mux249~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux249~0_combout\ = (\Mux253~0_combout\ & (\Mux253~1_combout\)) # (!\Mux253~0_combout\ & ((\Mux253~1_combout\ & (\Mux127~267_combout\)) # (!\Mux253~1_combout\ & ((\Mux127~269_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux253~0_combout\,
	datab => \Mux253~1_combout\,
	datac => \Mux127~267_combout\,
	datad => \Mux127~269_combout\,
	combout => \Mux249~0_combout\);

-- Location: LCCOMB_X57_Y5_N24
\Mux127~272\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~272_combout\ = (\Mux127~68_combout\ & ((\amt[0]~input_o\ & (\Mux127~124_combout\)) # (!\amt[0]~input_o\ & ((\Mux127~65_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \Mux127~124_combout\,
	datac => \Mux127~68_combout\,
	datad => \Mux127~65_combout\,
	combout => \Mux127~272_combout\);

-- Location: LCCOMB_X58_Y4_N0
\Mux127~270\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~270_combout\ = (\amt[0]~input_o\ & ((\Mux127~145_combout\))) # (!\amt[0]~input_o\ & (\Mux127~89_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[0]~input_o\,
	datac => \Mux127~89_combout\,
	datad => \Mux127~145_combout\,
	combout => \Mux127~270_combout\);

-- Location: LCCOMB_X57_Y5_N18
\Mux127~271\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~271_combout\ = (\Mux127~77_combout\ & ((\Mux127~270_combout\) # ((\Mux127~143_combout\ & \Mux128~0_combout\)))) # (!\Mux127~77_combout\ & (\Mux127~143_combout\ & (\Mux128~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~77_combout\,
	datab => \Mux127~143_combout\,
	datac => \Mux128~0_combout\,
	datad => \Mux127~270_combout\,
	combout => \Mux127~271_combout\);

-- Location: LCCOMB_X57_Y5_N6
\Mux127~273\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~273_combout\ = (\Mux127~272_combout\) # ((\Mux127~271_combout\) # ((\Mux127~148_combout\ & \Mux127~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~148_combout\,
	datab => \Mux127~272_combout\,
	datac => \Mux127~69_combout\,
	datad => \Mux127~271_combout\,
	combout => \Mux127~273_combout\);

-- Location: LCCOMB_X54_Y5_N6
\Mux127~274\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~274_combout\ = (\Mux127~77_combout\ & ((\Mux127~157_combout\) # ((\Mux128~0_combout\ & \Mux127~153_combout\)))) # (!\Mux127~77_combout\ & (\Mux128~0_combout\ & (\Mux127~153_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~77_combout\,
	datab => \Mux128~0_combout\,
	datac => \Mux127~153_combout\,
	datad => \Mux127~157_combout\,
	combout => \Mux127~274_combout\);

-- Location: LCCOMB_X58_Y1_N2
\Mux127~276\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~276_combout\ = (\Mux127~275_combout\) # ((\Mux127~274_combout\) # ((\Mux127~68_combout\ & \Mux127~141_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~275_combout\,
	datab => \Mux127~68_combout\,
	datac => \Mux127~274_combout\,
	datad => \Mux127~141_combout\,
	combout => \Mux127~276_combout\);

-- Location: LCCOMB_X58_Y1_N4
\Mux127~277\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~277_combout\ = (\amt[4]~input_o\ & (\Mux127~273_combout\)) # (!\amt[4]~input_o\ & ((\Mux127~276_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[4]~input_o\,
	datac => \Mux127~273_combout\,
	datad => \Mux127~276_combout\,
	combout => \Mux127~277_combout\);

-- Location: LCCOMB_X56_Y1_N16
\Mux127~258\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~258_combout\ = (\Mux127~257_combout\) # ((\Mux127~256_combout\) # ((\Mux127~69_combout\ & \Mux127~120_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~257_combout\,
	datab => \Mux127~69_combout\,
	datac => \Mux127~120_combout\,
	datad => \Mux127~256_combout\,
	combout => \Mux127~258_combout\);

-- Location: LCCOMB_X58_Y1_N28
\Mux127~264\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~264_combout\ = (\amt[4]~input_o\ & ((\Mux127~258_combout\))) # (!\amt[4]~input_o\ & (\Mux127~263_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[4]~input_o\,
	datac => \Mux127~263_combout\,
	datad => \Mux127~258_combout\,
	combout => \Mux127~264_combout\);

-- Location: LCCOMB_X58_Y1_N30
\Mux249~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux249~1_combout\ = (\Mux249~0_combout\ & (((\Mux127~277_combout\)) # (!\Mux253~0_combout\))) # (!\Mux249~0_combout\ & (\Mux253~0_combout\ & ((\Mux127~264_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux249~0_combout\,
	datab => \Mux253~0_combout\,
	datac => \Mux127~277_combout\,
	datad => \Mux127~264_combout\,
	combout => \Mux249~1_combout\);

-- Location: LCCOMB_X57_Y5_N8
\Mux127~278\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~278_combout\ = (\Mux128~0_combout\ & ((\amt[0]~input_o\ & (\Mux127~164_combout\)) # (!\amt[0]~input_o\ & ((\Mux127~122_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \Mux127~164_combout\,
	datac => \Mux128~0_combout\,
	datad => \Mux127~122_combout\,
	combout => \Mux127~278_combout\);

-- Location: LCCOMB_X53_Y3_N14
\Mux127~279\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~279_combout\ = (\amt[0]~input_o\ & (\Mux127~168_combout\)) # (!\amt[0]~input_o\ & ((\Mux127~126_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux127~168_combout\,
	datac => \amt[0]~input_o\,
	datad => \Mux127~126_combout\,
	combout => \Mux127~279_combout\);

-- Location: LCCOMB_X54_Y3_N0
\Mux127~280\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~280_combout\ = (\Mux127~69_combout\ & ((\Mux127~279_combout\) # ((\Mux127~68_combout\ & \Mux127~174_combout\)))) # (!\Mux127~69_combout\ & (\Mux127~68_combout\ & (\Mux127~174_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~69_combout\,
	datab => \Mux127~68_combout\,
	datac => \Mux127~174_combout\,
	datad => \Mux127~279_combout\,
	combout => \Mux127~280_combout\);

-- Location: LCCOMB_X54_Y3_N30
\Mux127~282\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~282_combout\ = (\Mux127~278_combout\) # ((\Mux127~280_combout\) # ((\Mux127~281_combout\ & \Mux127~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~281_combout\,
	datab => \Mux127~77_combout\,
	datac => \Mux127~278_combout\,
	datad => \Mux127~280_combout\,
	combout => \Mux127~282_combout\);

-- Location: LCCOMB_X54_Y4_N12
\Mux127~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~176_combout\ = (\amt[0]~input_o\ & ((\Mux127~175_combout\))) # (!\amt[0]~input_o\ & (\Mux127~113_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[0]~input_o\,
	datac => \Mux127~113_combout\,
	datad => \Mux127~175_combout\,
	combout => \Mux127~176_combout\);

-- Location: LCCOMB_X55_Y3_N18
\Mux127~283\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~283_combout\ = (\Mux128~0_combout\ & ((\Mux127~176_combout\) # ((\Mux127~77_combout\ & \Mux127~162_combout\)))) # (!\Mux128~0_combout\ & (\Mux127~77_combout\ & (\Mux127~162_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux128~0_combout\,
	datab => \Mux127~77_combout\,
	datac => \Mux127~162_combout\,
	datad => \Mux127~176_combout\,
	combout => \Mux127~283_combout\);

-- Location: LCCOMB_X54_Y3_N8
\Mux127~286\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~286_combout\ = (\amt[4]~input_o\ & ((\Mux127~285_combout\) # ((\Mux127~283_combout\)))) # (!\amt[4]~input_o\ & (((\Mux127~282_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~285_combout\,
	datab => \amt[4]~input_o\,
	datac => \Mux127~282_combout\,
	datad => \Mux127~283_combout\,
	combout => \Mux127~286_combout\);

-- Location: LCCOMB_X54_Y5_N30
\Mux127~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~199_combout\ = (\amt[0]~input_o\ & ((\Mux127~198_combout\))) # (!\amt[0]~input_o\ & (\Mux127~156_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[0]~input_o\,
	datac => \Mux127~156_combout\,
	datad => \Mux127~198_combout\,
	combout => \Mux127~199_combout\);

-- Location: LCCOMB_X54_Y5_N2
\Mux127~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~204_combout\ = (\amt[0]~input_o\ & (\Mux127~203_combout\)) # (!\amt[0]~input_o\ & ((\Mux127~152_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux127~203_combout\,
	datac => \amt[0]~input_o\,
	datad => \Mux127~152_combout\,
	combout => \Mux127~204_combout\);

-- Location: LCCOMB_X55_Y3_N30
\Mux127~295\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~295_combout\ = (\Mux128~0_combout\ & ((\Mux127~204_combout\) # ((\Mux127~199_combout\ & \Mux127~77_combout\)))) # (!\Mux128~0_combout\ & (\Mux127~199_combout\ & (\Mux127~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux128~0_combout\,
	datab => \Mux127~199_combout\,
	datac => \Mux127~77_combout\,
	datad => \Mux127~204_combout\,
	combout => \Mux127~295_combout\);

-- Location: LCCOMB_X54_Y2_N2
\Mux127~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~154_combout\ = (\amt[1]~input_o\ & (\a[16]~input_o\)) # (!\amt[1]~input_o\ & ((\a[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \a[16]~input_o\,
	datad => \a[14]~input_o\,
	combout => \Mux127~154_combout\);

-- Location: LCCOMB_X54_Y2_N0
\Mux127~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~201_combout\ = (\amt[0]~input_o\ & (\Mux127~200_combout\)) # (!\amt[0]~input_o\ & ((\Mux127~154_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datac => \Mux127~200_combout\,
	datad => \Mux127~154_combout\,
	combout => \Mux127~201_combout\);

-- Location: LCCOMB_X54_Y3_N24
\Mux127~296\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~296_combout\ = (\Mux127~69_combout\ & ((\Mux127~201_combout\) # ((\Mux127~68_combout\ & \Mux127~194_combout\)))) # (!\Mux127~69_combout\ & (\Mux127~68_combout\ & (\Mux127~194_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~69_combout\,
	datab => \Mux127~68_combout\,
	datac => \Mux127~194_combout\,
	datad => \Mux127~201_combout\,
	combout => \Mux127~296_combout\);

-- Location: LCCOMB_X54_Y3_N22
\Mux127~297\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~297_combout\ = (\amt[4]~input_o\ & (\Mux127~294_combout\)) # (!\amt[4]~input_o\ & (((\Mux127~295_combout\) # (\Mux127~296_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~294_combout\,
	datab => \Mux127~295_combout\,
	datac => \amt[4]~input_o\,
	datad => \Mux127~296_combout\,
	combout => \Mux127~297_combout\);

-- Location: LCCOMB_X55_Y3_N4
\Mux127~287\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~287_combout\ = (\Mux127~68_combout\ & ((\amt[0]~input_o\ & ((\Mux127~196_combout\))) # (!\amt[0]~input_o\ & (\Mux127~150_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \Mux127~68_combout\,
	datac => \Mux127~150_combout\,
	datad => \Mux127~196_combout\,
	combout => \Mux127~287_combout\);

-- Location: LCCOMB_X55_Y3_N6
\Mux127~288\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~288_combout\ = (\Mux127~287_combout\) # ((\Mux127~283_combout\) # ((\Mux127~69_combout\ & \Mux127~181_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~69_combout\,
	datab => \Mux127~287_combout\,
	datac => \Mux127~181_combout\,
	datad => \Mux127~283_combout\,
	combout => \Mux127~288_combout\);

-- Location: LCCOMB_X54_Y3_N26
\Mux127~289\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~289_combout\ = (\amt[4]~input_o\ & ((\Mux127~288_combout\))) # (!\amt[4]~input_o\ & (\Mux127~282_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[4]~input_o\,
	datac => \Mux127~282_combout\,
	datad => \Mux127~288_combout\,
	combout => \Mux127~289_combout\);

-- Location: LCCOMB_X55_Y3_N16
\Mux127~290\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~290_combout\ = (\Mux127~283_combout\) # ((!\amt[1]~input_o\ & (\Mux127~61_combout\ & \Mux127~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datab => \Mux127~61_combout\,
	datac => \Mux127~69_combout\,
	datad => \Mux127~283_combout\,
	combout => \Mux127~290_combout\);

-- Location: LCCOMB_X54_Y3_N12
\Mux127~291\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~291_combout\ = (\amt[4]~input_o\ & ((\Mux127~290_combout\))) # (!\amt[4]~input_o\ & (\Mux127~282_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[4]~input_o\,
	datac => \Mux127~282_combout\,
	datad => \Mux127~290_combout\,
	combout => \Mux127~291_combout\);

-- Location: LCCOMB_X54_Y3_N18
\Mux248~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux248~0_combout\ = (\Mux253~1_combout\ & (\Mux253~0_combout\)) # (!\Mux253~1_combout\ & ((\Mux253~0_combout\ & (\Mux127~289_combout\)) # (!\Mux253~0_combout\ & ((\Mux127~291_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux253~1_combout\,
	datab => \Mux253~0_combout\,
	datac => \Mux127~289_combout\,
	datad => \Mux127~291_combout\,
	combout => \Mux248~0_combout\);

-- Location: LCCOMB_X54_Y3_N28
\Mux248~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux248~1_combout\ = (\Mux253~1_combout\ & ((\Mux248~0_combout\ & ((\Mux127~297_combout\))) # (!\Mux248~0_combout\ & (\Mux127~286_combout\)))) # (!\Mux253~1_combout\ & (((\Mux248~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux253~1_combout\,
	datab => \Mux127~286_combout\,
	datac => \Mux127~297_combout\,
	datad => \Mux248~0_combout\,
	combout => \Mux248~1_combout\);

-- Location: LCCOMB_X52_Y3_N20
\Mux127~299\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~299_combout\ = (\Mux128~0_combout\ & ((\amt[0]~input_o\ & (\Mux127~71_combout\)) # (!\amt[0]~input_o\ & ((\Mux127~164_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \Mux128~0_combout\,
	datac => \Mux127~71_combout\,
	datad => \Mux127~164_combout\,
	combout => \Mux127~299_combout\);

-- Location: LCCOMB_X52_Y3_N22
\Mux127~298\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~298_combout\ = (\Mux127~77_combout\ & ((\amt[0]~input_o\ & ((\Mux127~74_combout\))) # (!\amt[0]~input_o\ & (\Mux127~170_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~77_combout\,
	datab => \amt[0]~input_o\,
	datac => \Mux127~170_combout\,
	datad => \Mux127~74_combout\,
	combout => \Mux127~298_combout\);

-- Location: LCCOMB_X52_Y3_N10
\Mux127~300\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~300_combout\ = (\Mux127~68_combout\ & ((\amt[0]~input_o\ & (\Mux127~51_combout\)) # (!\amt[0]~input_o\ & ((\Mux127~173_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~68_combout\,
	datab => \Mux127~51_combout\,
	datac => \Mux127~173_combout\,
	datad => \amt[0]~input_o\,
	combout => \Mux127~300_combout\);

-- Location: LCCOMB_X52_Y3_N24
\Mux127~302\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~302_combout\ = (\Mux127~301_combout\) # ((\Mux127~299_combout\) # ((\Mux127~298_combout\) # (\Mux127~300_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~301_combout\,
	datab => \Mux127~299_combout\,
	datac => \Mux127~298_combout\,
	datad => \Mux127~300_combout\,
	combout => \Mux127~302_combout\);

-- Location: LCCOMB_X52_Y5_N4
\Mux127~303\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~303_combout\ = (\amt[3]~input_o\ & ((\amt[2]~input_o\ & ((\Mux127~233_combout\))) # (!\amt[2]~input_o\ & (\Mux127~208_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datab => \amt[2]~input_o\,
	datac => \Mux127~208_combout\,
	datad => \Mux127~233_combout\,
	combout => \Mux127~303_combout\);

-- Location: LCCOMB_X52_Y3_N30
\Mux127~306\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~306_combout\ = (\amt[4]~input_o\ & ((\Mux127~305_combout\) # ((\Mux127~303_combout\)))) # (!\amt[4]~input_o\ & (((\Mux127~302_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~305_combout\,
	datab => \Mux127~302_combout\,
	datac => \amt[4]~input_o\,
	datad => \Mux127~303_combout\,
	combout => \Mux127~306_combout\);

-- Location: LCCOMB_X53_Y1_N30
\Mux127~304\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~304_combout\ = (\amt[0]~input_o\ & (\Mux127~58_combout\)) # (!\amt[0]~input_o\ & ((\Mux127~175_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datac => \Mux127~58_combout\,
	datad => \Mux127~175_combout\,
	combout => \Mux127~304_combout\);

-- Location: LCCOMB_X53_Y1_N14
\Mux127~308\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~308_combout\ = (\amt[2]~input_o\ & (\Mux127~210_combout\)) # (!\amt[2]~input_o\ & ((\Mux127~304_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datab => \Mux127~210_combout\,
	datac => \Mux127~304_combout\,
	combout => \Mux127~308_combout\);

-- Location: LCCOMB_X52_Y3_N16
\Mux127~309\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~309_combout\ = (\amt[4]~input_o\ & ((\amt[3]~input_o\) # ((!\Mux127~308_combout\)))) # (!\amt[4]~input_o\ & (((!\Mux127~302_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datab => \amt[4]~input_o\,
	datac => \Mux127~308_combout\,
	datad => \Mux127~302_combout\,
	combout => \Mux127~309_combout\);

-- Location: LCCOMB_X52_Y3_N26
\Mux127~505\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~505_combout\ = ((\a[63]~input_o\ & (\amt[3]~input_o\ & \amt[4]~input_o\))) # (!\Mux127~309_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[63]~input_o\,
	datab => \amt[3]~input_o\,
	datac => \amt[4]~input_o\,
	datad => \Mux127~309_combout\,
	combout => \Mux127~505_combout\);

-- Location: LCCOMB_X52_Y3_N0
\Mux127~284\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~284_combout\ = (\amt[1]~input_o\) # ((\amt[2]~input_o\) # (\amt[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[1]~input_o\,
	datac => \amt[2]~input_o\,
	datad => \amt[0]~input_o\,
	combout => \Mux127~284_combout\);

-- Location: LCCOMB_X53_Y3_N10
\Mux127~307\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~307_combout\ = (\amt[3]~input_o\ & (\a[63]~input_o\ & \amt[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[3]~input_o\,
	datac => \a[63]~input_o\,
	datad => \amt[4]~input_o\,
	combout => \Mux127~307_combout\);

-- Location: LCCOMB_X52_Y3_N6
\Mux127~310\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~310_combout\ = ((!\Mux127~284_combout\ & \Mux127~307_combout\)) # (!\Mux127~309_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux127~284_combout\,
	datac => \Mux127~307_combout\,
	datad => \Mux127~309_combout\,
	combout => \Mux127~310_combout\);

-- Location: LCCOMB_X52_Y3_N4
\Mux247~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux247~0_combout\ = (\Mux253~1_combout\ & ((\Mux253~0_combout\) # ((\Mux127~505_combout\)))) # (!\Mux253~1_combout\ & (!\Mux253~0_combout\ & ((\Mux127~310_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux253~1_combout\,
	datab => \Mux253~0_combout\,
	datac => \Mux127~505_combout\,
	datad => \Mux127~310_combout\,
	combout => \Mux247~0_combout\);

-- Location: LCCOMB_X56_Y5_N8
\Mux127~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~231_combout\ = (\amt[0]~input_o\ & ((\Mux127~93_combout\))) # (!\amt[0]~input_o\ & (\Mux127~188_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \Mux127~188_combout\,
	datad => \Mux127~93_combout\,
	combout => \Mux127~231_combout\);

-- Location: LCCOMB_X53_Y2_N12
\Mux127~311\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~311_combout\ = (\Mux127~228_combout\ & ((\Mux128~0_combout\) # ((\Mux127~77_combout\ & \Mux127~231_combout\)))) # (!\Mux127~228_combout\ & (\Mux127~77_combout\ & ((\Mux127~231_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~228_combout\,
	datab => \Mux127~77_combout\,
	datac => \Mux128~0_combout\,
	datad => \Mux127~231_combout\,
	combout => \Mux127~311_combout\);

-- Location: LCCOMB_X53_Y2_N30
\Mux127~313\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~313_combout\ = (\Mux127~312_combout\) # ((\Mux127~311_combout\) # ((\Mux127~68_combout\ & \Mux127~218_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~312_combout\,
	datab => \Mux127~68_combout\,
	datac => \Mux127~218_combout\,
	datad => \Mux127~311_combout\,
	combout => \Mux127~313_combout\);

-- Location: LCCOMB_X55_Y2_N22
\Mux127~315\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~315_combout\ = (\Mux127~227_combout\ & ((\Mux127~68_combout\) # ((\Mux127~69_combout\ & \Mux127~237_combout\)))) # (!\Mux127~227_combout\ & (\Mux127~69_combout\ & ((\Mux127~237_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~227_combout\,
	datab => \Mux127~69_combout\,
	datac => \Mux127~68_combout\,
	datad => \Mux127~237_combout\,
	combout => \Mux127~315_combout\);

-- Location: LCCOMB_X52_Y5_N22
\Mux127~316\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~316_combout\ = (\Mux127~314_combout\) # ((\Mux127~315_combout\) # ((\Mux127~234_combout\ & \Mux128~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~314_combout\,
	datab => \Mux127~234_combout\,
	datac => \Mux128~0_combout\,
	datad => \Mux127~315_combout\,
	combout => \Mux127~316_combout\);

-- Location: LCCOMB_X52_Y3_N18
\Mux127~317\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~317_combout\ = (\amt[4]~input_o\ & (\Mux127~313_combout\)) # (!\amt[4]~input_o\ & ((\Mux127~316_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[4]~input_o\,
	datac => \Mux127~313_combout\,
	datad => \Mux127~316_combout\,
	combout => \Mux127~317_combout\);

-- Location: LCCOMB_X52_Y3_N28
\Mux247~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux247~1_combout\ = (\Mux253~0_combout\ & ((\Mux247~0_combout\ & ((\Mux127~317_combout\))) # (!\Mux247~0_combout\ & (\Mux127~306_combout\)))) # (!\Mux253~0_combout\ & (((\Mux247~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~306_combout\,
	datab => \Mux253~0_combout\,
	datac => \Mux247~0_combout\,
	datad => \Mux127~317_combout\,
	combout => \Mux247~1_combout\);

-- Location: LCCOMB_X56_Y5_N6
\Mux127~326\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~326_combout\ = (\Mux127~69_combout\ & ((\amt[0]~input_o\ & ((\Mux127~65_combout\))) # (!\amt[0]~input_o\ & (\Mux127~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \Mux127~69_combout\,
	datac => \Mux127~66_combout\,
	datad => \Mux127~65_combout\,
	combout => \Mux127~326_combout\);

-- Location: LCCOMB_X58_Y3_N4
\Mux127~327\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~327_combout\ = (\Mux127~325_combout\) # ((\Mux127~326_combout\) # ((\Mux127~80_combout\ & \Mux127~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~325_combout\,
	datab => \Mux127~80_combout\,
	datac => \Mux127~68_combout\,
	datad => \Mux127~326_combout\,
	combout => \Mux127~327_combout\);

-- Location: LCCOMB_X55_Y2_N8
\Mux127~329\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~329_combout\ = (\Mux127~69_combout\ & ((\Mux127~87_combout\) # ((\Mux127~68_combout\ & \Mux127~84_combout\)))) # (!\Mux127~69_combout\ & (((\Mux127~68_combout\ & \Mux127~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~69_combout\,
	datab => \Mux127~87_combout\,
	datac => \Mux127~68_combout\,
	datad => \Mux127~84_combout\,
	combout => \Mux127~329_combout\);

-- Location: LCCOMB_X55_Y1_N14
\Mux127~328\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~328_combout\ = (\Mux127~77_combout\ & ((\amt[0]~input_o\ & (\Mux127~103_combout\)) # (!\amt[0]~input_o\ & ((\Mux127~104_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~103_combout\,
	datab => \amt[0]~input_o\,
	datac => \Mux127~104_combout\,
	datad => \Mux127~77_combout\,
	combout => \Mux127~328_combout\);

-- Location: LCCOMB_X55_Y2_N18
\Mux127~330\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~330_combout\ = (\Mux127~329_combout\) # ((\Mux127~328_combout\) # ((\Mux128~0_combout\ & \Mux127~108_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux128~0_combout\,
	datab => \Mux127~329_combout\,
	datac => \Mux127~108_combout\,
	datad => \Mux127~328_combout\,
	combout => \Mux127~330_combout\);

-- Location: LCCOMB_X59_Y3_N26
\Mux127~331\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~331_combout\ = (\amt[4]~input_o\ & (\Mux127~327_combout\)) # (!\amt[4]~input_o\ & ((\Mux127~330_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datac => \Mux127~327_combout\,
	datad => \Mux127~330_combout\,
	combout => \Mux127~331_combout\);

-- Location: LCCOMB_X54_Y3_N14
\Mux127~319\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~319_combout\ = (\Mux127~68_combout\ & ((\amt[0]~input_o\ & ((\Mux127~50_combout\))) # (!\amt[0]~input_o\ & (\Mux127~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \Mux127~51_combout\,
	datac => \Mux127~68_combout\,
	datad => \Mux127~50_combout\,
	combout => \Mux127~319_combout\);

-- Location: LCCOMB_X59_Y3_N18
\Mux127~318\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~318_combout\ = (\Mux127~72_combout\ & ((\Mux128~0_combout\) # ((\Mux127~77_combout\ & \Mux127~75_combout\)))) # (!\Mux127~72_combout\ & (((\Mux127~77_combout\ & \Mux127~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~72_combout\,
	datab => \Mux128~0_combout\,
	datac => \Mux127~77_combout\,
	datad => \Mux127~75_combout\,
	combout => \Mux127~318_combout\);

-- Location: LCCOMB_X59_Y3_N28
\Mux127~320\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~320_combout\ = (\Mux127~319_combout\) # ((\Mux127~318_combout\) # ((\Mux127~69_combout\ & \Mux127~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~69_combout\,
	datab => \Mux127~55_combout\,
	datac => \Mux127~319_combout\,
	datad => \Mux127~318_combout\,
	combout => \Mux127~320_combout\);

-- Location: LCCOMB_X59_Y3_N0
\Mux127~506\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~506_combout\ = (\amt[4]~input_o\ & ((\amt[3]~input_o\) # ((!\Mux127~63_combout\)))) # (!\amt[4]~input_o\ & (((!\Mux127~320_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \amt[3]~input_o\,
	datac => \Mux127~63_combout\,
	datad => \Mux127~320_combout\,
	combout => \Mux127~506_combout\);

-- Location: LCCOMB_X59_Y3_N22
\Mux127~507\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~507_combout\ = ((\amt[4]~input_o\ & (\a[63]~input_o\ & \amt[3]~input_o\))) # (!\Mux127~506_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \a[63]~input_o\,
	datac => \amt[3]~input_o\,
	datad => \Mux127~506_combout\,
	combout => \Mux127~507_combout\);

-- Location: LCCOMB_X59_Y3_N12
\Mux246~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux246~0_combout\ = (\Mux253~1_combout\ & (((\Mux253~0_combout\)))) # (!\Mux253~1_combout\ & ((\Mux253~0_combout\ & (\Mux127~324_combout\)) # (!\Mux253~0_combout\ & ((!\Mux127~506_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~324_combout\,
	datab => \Mux253~1_combout\,
	datac => \Mux253~0_combout\,
	datad => \Mux127~506_combout\,
	combout => \Mux246~0_combout\);

-- Location: LCCOMB_X59_Y3_N24
\Mux246~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux246~1_combout\ = (\Mux253~1_combout\ & ((\Mux246~0_combout\ & (\Mux127~331_combout\)) # (!\Mux246~0_combout\ & ((\Mux127~507_combout\))))) # (!\Mux253~1_combout\ & (((\Mux246~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~331_combout\,
	datab => \Mux253~1_combout\,
	datac => \Mux127~507_combout\,
	datad => \Mux246~0_combout\,
	combout => \Mux246~1_combout\);

-- Location: LCCOMB_X53_Y3_N28
\Mux127~260\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~260_combout\ = (\amt[0]~input_o\ & ((\Mux127~126_combout\))) # (!\amt[0]~input_o\ & (\Mux127~73_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[0]~input_o\,
	datac => \Mux127~73_combout\,
	datad => \Mux127~126_combout\,
	combout => \Mux127~260_combout\);

-- Location: LCCOMB_X56_Y4_N4
\Mux127~332\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~332_combout\ = (\Mux128~0_combout\ & ((\Mux127~262_combout\) # ((\Mux127~77_combout\ & \Mux127~260_combout\)))) # (!\Mux128~0_combout\ & (\Mux127~77_combout\ & (\Mux127~260_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux128~0_combout\,
	datab => \Mux127~77_combout\,
	datac => \Mux127~260_combout\,
	datad => \Mux127~262_combout\,
	combout => \Mux127~332_combout\);

-- Location: LCCOMB_X56_Y4_N6
\Mux127~333\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~333_combout\ = (\Mux127~68_combout\ & ((\Mux127~114_combout\) # ((\Mux127~69_combout\ & \Mux127~112_combout\)))) # (!\Mux127~68_combout\ & (\Mux127~69_combout\ & ((\Mux127~112_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~68_combout\,
	datab => \Mux127~69_combout\,
	datac => \Mux127~114_combout\,
	datad => \Mux127~112_combout\,
	combout => \Mux127~333_combout\);

-- Location: LCCOMB_X56_Y4_N8
\Mux127~334\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~334_combout\ = (!\amt[4]~input_o\ & ((\Mux127~332_combout\) # (\Mux127~333_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datac => \Mux127~332_combout\,
	datad => \Mux127~333_combout\,
	combout => \Mux127~334_combout\);

-- Location: LCCOMB_X55_Y4_N28
\Mux127~321\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~321_combout\ = (\amt[4]~input_o\ & !\amt[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \amt[4]~input_o\,
	datad => \amt[3]~input_o\,
	combout => \Mux127~321_combout\);

-- Location: LCCOMB_X56_Y4_N14
\Mux127~338\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~338_combout\ = (\Mux127~307_combout\) # ((\Mux127~334_combout\) # ((\Mux127~134_combout\ & \Mux127~321_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~307_combout\,
	datab => \Mux127~134_combout\,
	datac => \Mux127~334_combout\,
	datad => \Mux127~321_combout\,
	combout => \Mux127~338_combout\);

-- Location: LCCOMB_X57_Y1_N22
\Mux127~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~137_combout\ = (\amt[1]~input_o\ & (!\amt[0]~input_o\ & (\a[63]~input_o\))) # (!\amt[1]~input_o\ & (((\Mux127~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \a[63]~input_o\,
	datac => \Mux127~119_combout\,
	datad => \amt[1]~input_o\,
	combout => \Mux127~137_combout\);

-- Location: LCCOMB_X57_Y1_N16
\Mux127~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~138_combout\ = (\amt[2]~input_o\ & (\Mux127~137_combout\)) # (!\amt[2]~input_o\ & ((\Mux127~133_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datac => \Mux127~137_combout\,
	datad => \Mux127~133_combout\,
	combout => \Mux127~138_combout\);

-- Location: LCCOMB_X56_Y4_N22
\Mux127~509\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~509_combout\ = (\Mux127~334_combout\) # ((\amt[4]~input_o\ & (!\amt[3]~input_o\ & \Mux127~138_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \amt[3]~input_o\,
	datac => \Mux127~334_combout\,
	datad => \Mux127~138_combout\,
	combout => \Mux127~509_combout\);

-- Location: LCCOMB_X56_Y4_N28
\Mux245~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux245~0_combout\ = (\Mux253~0_combout\ & (((\Mux253~1_combout\)))) # (!\Mux253~0_combout\ & ((\Mux253~1_combout\ & (\Mux127~338_combout\)) # (!\Mux253~1_combout\ & ((\Mux127~509_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux253~0_combout\,
	datab => \Mux127~338_combout\,
	datac => \Mux127~509_combout\,
	datad => \Mux253~1_combout\,
	combout => \Mux245~0_combout\);

-- Location: LCCOMB_X57_Y5_N14
\Mux127~339\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~339_combout\ = (\Mux127~68_combout\ & ((\amt[0]~input_o\ & (\Mux127~122_combout\)) # (!\amt[0]~input_o\ & ((\Mux127~78_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \Mux127~68_combout\,
	datac => \Mux127~122_combout\,
	datad => \Mux127~78_combout\,
	combout => \Mux127~339_combout\);

-- Location: LCCOMB_X57_Y5_N22
\Mux127~341\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~341_combout\ = (\amt[0]~input_o\ & (\Mux127~124_combout\)) # (!\amt[0]~input_o\ & ((\Mux127~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \Mux127~124_combout\,
	datad => \Mux127~65_combout\,
	combout => \Mux127~341_combout\);

-- Location: LCCOMB_X57_Y5_N0
\Mux127~340\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~340_combout\ = (\Mux127~77_combout\ & ((\Mux127~148_combout\) # ((\Mux127~270_combout\ & \Mux128~0_combout\)))) # (!\Mux127~77_combout\ & (\Mux127~270_combout\ & (\Mux128~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~77_combout\,
	datab => \Mux127~270_combout\,
	datac => \Mux128~0_combout\,
	datad => \Mux127~148_combout\,
	combout => \Mux127~340_combout\);

-- Location: LCCOMB_X57_Y5_N20
\Mux127~342\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~342_combout\ = (\Mux127~339_combout\) # ((\Mux127~340_combout\) # ((\Mux127~69_combout\ & \Mux127~341_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~69_combout\,
	datab => \Mux127~339_combout\,
	datac => \Mux127~341_combout\,
	datad => \Mux127~340_combout\,
	combout => \Mux127~342_combout\);

-- Location: LCCOMB_X56_Y2_N0
\Mux127~344\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~344_combout\ = (\Mux127~69_combout\ & ((\Mux127~141_combout\) # ((\Mux127~143_combout\ & \Mux127~68_combout\)))) # (!\Mux127~69_combout\ & (\Mux127~143_combout\ & (\Mux127~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~69_combout\,
	datab => \Mux127~143_combout\,
	datac => \Mux127~68_combout\,
	datad => \Mux127~141_combout\,
	combout => \Mux127~344_combout\);

-- Location: LCCOMB_X56_Y2_N22
\Mux127~345\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~345_combout\ = (\Mux127~343_combout\) # ((\Mux127~344_combout\) # ((\Mux128~0_combout\ & \Mux127~157_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~343_combout\,
	datab => \Mux128~0_combout\,
	datac => \Mux127~157_combout\,
	datad => \Mux127~344_combout\,
	combout => \Mux127~345_combout\);

-- Location: LCCOMB_X56_Y4_N26
\Mux127~346\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~346_combout\ = (\amt[4]~input_o\ & (\Mux127~342_combout\)) # (!\amt[4]~input_o\ & ((\Mux127~345_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux127~342_combout\,
	datac => \amt[4]~input_o\,
	datad => \Mux127~345_combout\,
	combout => \Mux127~346_combout\);

-- Location: LCCOMB_X54_Y2_N28
\Mux127~336\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~336_combout\ = (\Mux127~69_combout\ & ((\amt[0]~input_o\ & (\Mux127~150_combout\)) # (!\amt[0]~input_o\ & ((\Mux127~96_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \Mux127~69_combout\,
	datac => \Mux127~150_combout\,
	datad => \Mux127~96_combout\,
	combout => \Mux127~336_combout\);

-- Location: LCCOMB_X56_Y4_N10
\Mux127~335\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~335_combout\ = (\Mux127~68_combout\ & ((\Mux127~153_combout\) # ((\Mux127~77_combout\ & \Mux127~120_combout\)))) # (!\Mux127~68_combout\ & (\Mux127~77_combout\ & (\Mux127~120_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~68_combout\,
	datab => \Mux127~77_combout\,
	datac => \Mux127~120_combout\,
	datad => \Mux127~153_combout\,
	combout => \Mux127~335_combout\);

-- Location: LCCOMB_X56_Y4_N20
\Mux127~337\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~337_combout\ = (\Mux127~336_combout\) # ((\Mux127~335_combout\) # ((\Mux128~0_combout\ & \Mux127~133_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux128~0_combout\,
	datab => \Mux127~133_combout\,
	datac => \Mux127~336_combout\,
	datad => \Mux127~335_combout\,
	combout => \Mux127~337_combout\);

-- Location: LCCOMB_X56_Y4_N16
\Mux127~508\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~508_combout\ = (\amt[4]~input_o\ & (\Mux127~337_combout\)) # (!\amt[4]~input_o\ & (((\Mux127~332_combout\) # (\Mux127~333_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \Mux127~337_combout\,
	datac => \Mux127~332_combout\,
	datad => \Mux127~333_combout\,
	combout => \Mux127~508_combout\);

-- Location: LCCOMB_X56_Y4_N24
\Mux245~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux245~1_combout\ = (\Mux253~0_combout\ & ((\Mux245~0_combout\ & (\Mux127~346_combout\)) # (!\Mux245~0_combout\ & ((\Mux127~508_combout\))))) # (!\Mux253~0_combout\ & (\Mux245~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux253~0_combout\,
	datab => \Mux245~0_combout\,
	datac => \Mux127~346_combout\,
	datad => \Mux127~508_combout\,
	combout => \Mux245~1_combout\);

-- Location: LCCOMB_X59_Y3_N16
\Mux127~281\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~281_combout\ = (\amt[0]~input_o\ & ((\Mux127~170_combout\))) # (!\amt[0]~input_o\ & (\Mux127~128_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux127~128_combout\,
	datac => \Mux127~170_combout\,
	datad => \amt[0]~input_o\,
	combout => \Mux127~281_combout\);

-- Location: LCCOMB_X54_Y4_N20
\Mux127~349\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~349_combout\ = (\Mux127~176_combout\ & ((\Mux127~68_combout\) # ((\Mux127~69_combout\ & \Mux127~174_combout\)))) # (!\Mux127~176_combout\ & (((\Mux127~69_combout\ & \Mux127~174_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~176_combout\,
	datab => \Mux127~68_combout\,
	datac => \Mux127~69_combout\,
	datad => \Mux127~174_combout\,
	combout => \Mux127~349_combout\);

-- Location: LCCOMB_X54_Y4_N10
\Mux127~350\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~350_combout\ = (\Mux127~348_combout\) # ((\Mux127~349_combout\) # ((\Mux128~0_combout\ & \Mux127~281_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~348_combout\,
	datab => \Mux128~0_combout\,
	datac => \Mux127~281_combout\,
	datad => \Mux127~349_combout\,
	combout => \Mux127~350_combout\);

-- Location: LCCOMB_X54_Y4_N6
\Mux127~510\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~510_combout\ = (\amt[4]~input_o\ & (\Mux127~184_combout\ & (!\amt[3]~input_o\))) # (!\amt[4]~input_o\ & (((\Mux127~350_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \Mux127~184_combout\,
	datac => \amt[3]~input_o\,
	datad => \Mux127~350_combout\,
	combout => \Mux127~510_combout\);

-- Location: LCCOMB_X59_Y2_N20
\Mux244~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux244~0_combout\ = (\Mux253~0_combout\ & ((\Mux127~355_combout\) # ((\Mux253~1_combout\)))) # (!\Mux253~0_combout\ & (((!\Mux253~1_combout\ & \Mux127~510_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~355_combout\,
	datab => \Mux253~0_combout\,
	datac => \Mux253~1_combout\,
	datad => \Mux127~510_combout\,
	combout => \Mux244~0_combout\);

-- Location: LCCOMB_X54_Y4_N14
\Mux127~347\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~347_combout\ = (\Mux127~321_combout\ & ((\amt[2]~input_o\ & ((\Mux127~160_combout\))) # (!\amt[2]~input_o\ & (\Mux127~162_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~162_combout\,
	datab => \amt[2]~input_o\,
	datac => \Mux127~160_combout\,
	datad => \Mux127~321_combout\,
	combout => \Mux127~347_combout\);

-- Location: LCCOMB_X54_Y4_N0
\Mux127~351\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~351_combout\ = (\Mux127~307_combout\) # ((\Mux127~347_combout\) # ((!\amt[4]~input_o\ & \Mux127~350_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \Mux127~307_combout\,
	datac => \Mux127~347_combout\,
	datad => \Mux127~350_combout\,
	combout => \Mux127~351_combout\);

-- Location: LCCOMB_X56_Y2_N24
\Mux127~361\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~361_combout\ = (\Mux127~68_combout\ & ((\amt[0]~input_o\ & (\Mux127~186_combout\)) # (!\amt[0]~input_o\ & ((\Mux127~142_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~68_combout\,
	datab => \amt[0]~input_o\,
	datac => \Mux127~186_combout\,
	datad => \Mux127~142_combout\,
	combout => \Mux127~361_combout\);

-- Location: LCCOMB_X58_Y2_N16
\Mux127~360\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~360_combout\ = (\Mux127~201_combout\ & ((\Mux127~77_combout\) # ((\Mux128~0_combout\ & \Mux127~199_combout\)))) # (!\Mux127~201_combout\ & (\Mux128~0_combout\ & ((\Mux127~199_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~201_combout\,
	datab => \Mux128~0_combout\,
	datac => \Mux127~77_combout\,
	datad => \Mux127~199_combout\,
	combout => \Mux127~360_combout\);

-- Location: LCCOMB_X58_Y2_N14
\Mux127~362\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~362_combout\ = (\Mux127~361_combout\) # ((\Mux127~360_combout\) # ((\Mux127~69_combout\ & \Mux127~194_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~69_combout\,
	datab => \Mux127~194_combout\,
	datac => \Mux127~361_combout\,
	datad => \Mux127~360_combout\,
	combout => \Mux127~362_combout\);

-- Location: LCCOMB_X56_Y5_N24
\Mux127~358\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~358_combout\ = (\amt[0]~input_o\ & ((\Mux127~164_combout\))) # (!\amt[0]~input_o\ & (\Mux127~122_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~122_combout\,
	datac => \amt[0]~input_o\,
	datad => \Mux127~164_combout\,
	combout => \Mux127~358_combout\);

-- Location: LCCOMB_X58_Y5_N8
\Mux127~356\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~356_combout\ = (\Mux127~69_combout\ & ((\amt[0]~input_o\ & (\Mux127~166_combout\)) # (!\amt[0]~input_o\ & ((\Mux127~124_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~166_combout\,
	datab => \amt[0]~input_o\,
	datac => \Mux127~124_combout\,
	datad => \Mux127~69_combout\,
	combout => \Mux127~356_combout\);

-- Location: LCCOMB_X55_Y5_N18
\Mux127~357\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~357_combout\ = (\Mux127~77_combout\ & ((\Mux127~191_combout\) # ((\Mux128~0_combout\ & \Mux127~189_combout\)))) # (!\Mux127~77_combout\ & (\Mux128~0_combout\ & ((\Mux127~189_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~77_combout\,
	datab => \Mux128~0_combout\,
	datac => \Mux127~191_combout\,
	datad => \Mux127~189_combout\,
	combout => \Mux127~357_combout\);

-- Location: LCCOMB_X55_Y5_N8
\Mux127~359\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~359_combout\ = (\Mux127~356_combout\) # ((\Mux127~357_combout\) # ((\Mux127~68_combout\ & \Mux127~358_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~68_combout\,
	datab => \Mux127~358_combout\,
	datac => \Mux127~356_combout\,
	datad => \Mux127~357_combout\,
	combout => \Mux127~359_combout\);

-- Location: LCCOMB_X58_Y2_N24
\Mux127~363\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~363_combout\ = (\amt[4]~input_o\ & ((\Mux127~359_combout\))) # (!\amt[4]~input_o\ & (\Mux127~362_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datac => \Mux127~362_combout\,
	datad => \Mux127~359_combout\,
	combout => \Mux127~363_combout\);

-- Location: LCCOMB_X59_Y2_N6
\Mux244~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux244~1_combout\ = (\Mux253~1_combout\ & ((\Mux244~0_combout\ & ((\Mux127~363_combout\))) # (!\Mux244~0_combout\ & (\Mux127~351_combout\)))) # (!\Mux253~1_combout\ & (\Mux244~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux253~1_combout\,
	datab => \Mux244~0_combout\,
	datac => \Mux127~351_combout\,
	datad => \Mux127~363_combout\,
	combout => \Mux244~1_combout\);

-- Location: LCCOMB_X53_Y3_N22
\Mux127~367\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~367_combout\ = (\Mux127~77_combout\ & ((\amt[0]~input_o\ & ((\Mux127~54_combout\))) # (!\amt[0]~input_o\ & (\Mux127~168_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~77_combout\,
	datab => \Mux127~168_combout\,
	datac => \amt[0]~input_o\,
	datad => \Mux127~54_combout\,
	combout => \Mux127~367_combout\);

-- Location: LCCOMB_X53_Y1_N28
\Mux127~368\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~368_combout\ = (\amt[0]~input_o\ & (\Mux127~51_combout\)) # (!\amt[0]~input_o\ & ((\Mux127~173_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~51_combout\,
	datac => \amt[0]~input_o\,
	datad => \Mux127~173_combout\,
	combout => \Mux127~368_combout\);

-- Location: LCCOMB_X53_Y1_N10
\Mux127~369\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~369_combout\ = (\Mux127~68_combout\ & ((\Mux127~304_combout\) # ((\Mux127~69_combout\ & \Mux127~368_combout\)))) # (!\Mux127~68_combout\ & (\Mux127~69_combout\ & ((\Mux127~368_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~68_combout\,
	datab => \Mux127~69_combout\,
	datac => \Mux127~304_combout\,
	datad => \Mux127~368_combout\,
	combout => \Mux127~369_combout\);

-- Location: LCCOMB_X53_Y1_N4
\Mux127~370\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~370_combout\ = (\Mux127~367_combout\) # ((\Mux127~369_combout\) # ((\Mux128~0_combout\ & \Mux127~215_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux128~0_combout\,
	datab => \Mux127~367_combout\,
	datac => \Mux127~215_combout\,
	datad => \Mux127~369_combout\,
	combout => \Mux127~370_combout\);

-- Location: LCCOMB_X53_Y1_N2
\Mux127~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~223_combout\ = (\amt[2]~input_o\ & (\Mux128~1_combout\ & (\a[63]~input_o\))) # (!\amt[2]~input_o\ & (((\Mux127~210_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux128~1_combout\,
	datab => \amt[2]~input_o\,
	datac => \a[63]~input_o\,
	datad => \Mux127~210_combout\,
	combout => \Mux127~223_combout\);

-- Location: LCCOMB_X53_Y1_N26
\Mux127~511\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~511_combout\ = (\amt[4]~input_o\ & (!\amt[3]~input_o\ & ((\Mux127~223_combout\)))) # (!\amt[4]~input_o\ & (((\Mux127~370_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \amt[3]~input_o\,
	datac => \Mux127~370_combout\,
	datad => \Mux127~223_combout\,
	combout => \Mux127~511_combout\);

-- Location: LCCOMB_X54_Y1_N24
\Mux127~365\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~365_combout\ = (\Mux128~0_combout\ & ((\Mux127~209_combout\) # ((\amt[1]~input_o\ & \Mux127~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~209_combout\,
	datab => \amt[1]~input_o\,
	datac => \Mux128~0_combout\,
	datad => \Mux127~119_combout\,
	combout => \Mux127~365_combout\);

-- Location: LCCOMB_X52_Y1_N16
\Mux127~373\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~373_combout\ = (\amt[4]~input_o\ & ((\Mux127~372_combout\) # ((\Mux127~365_combout\)))) # (!\amt[4]~input_o\ & (((\Mux127~370_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~372_combout\,
	datab => \amt[4]~input_o\,
	datac => \Mux127~365_combout\,
	datad => \Mux127~370_combout\,
	combout => \Mux127~373_combout\);

-- Location: LCCOMB_X52_Y1_N30
\Mux243~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux243~0_combout\ = (\Mux253~1_combout\ & (((\Mux253~0_combout\) # (\Mux127~373_combout\)))) # (!\Mux253~1_combout\ & (\Mux127~511_combout\ & (!\Mux253~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux253~1_combout\,
	datab => \Mux127~511_combout\,
	datac => \Mux253~0_combout\,
	datad => \Mux127~373_combout\,
	combout => \Mux243~0_combout\);

-- Location: LCCOMB_X54_Y1_N26
\Mux127~378\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~378_combout\ = (\Mux128~0_combout\ & ((\amt[0]~input_o\ & ((\Mux127~104_combout\))) # (!\amt[0]~input_o\ & (\Mux127~198_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \Mux128~0_combout\,
	datac => \Mux127~198_combout\,
	datad => \Mux127~104_combout\,
	combout => \Mux127~378_combout\);

-- Location: LCCOMB_X54_Y1_N20
\Mux127~379\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~379_combout\ = (\Mux127~228_combout\ & ((\Mux127~68_combout\) # ((\Mux127~227_combout\ & \Mux127~69_combout\)))) # (!\Mux127~228_combout\ & (((\Mux127~227_combout\ & \Mux127~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~228_combout\,
	datab => \Mux127~68_combout\,
	datac => \Mux127~227_combout\,
	datad => \Mux127~69_combout\,
	combout => \Mux127~379_combout\);

-- Location: LCCOMB_X54_Y1_N18
\Mux127~380\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~380_combout\ = (\Mux127~378_combout\) # ((\Mux127~379_combout\) # ((\Mux127~237_combout\ & \Mux127~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~237_combout\,
	datab => \Mux127~77_combout\,
	datac => \Mux127~378_combout\,
	datad => \Mux127~379_combout\,
	combout => \Mux127~380_combout\);

-- Location: LCCOMB_X52_Y1_N0
\Mux127~381\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~381_combout\ = (\amt[4]~input_o\ & (\Mux127~377_combout\)) # (!\amt[4]~input_o\ & ((\Mux127~380_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~377_combout\,
	datab => \amt[4]~input_o\,
	datac => \Mux127~380_combout\,
	combout => \Mux127~381_combout\);

-- Location: LCCOMB_X53_Y1_N20
\Mux127~364\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~364_combout\ = (\Mux127~68_combout\ & ((\Mux127~234_combout\) # ((\Mux127~208_combout\ & \Mux127~77_combout\)))) # (!\Mux127~68_combout\ & (\Mux127~208_combout\ & (\Mux127~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~68_combout\,
	datab => \Mux127~208_combout\,
	datac => \Mux127~77_combout\,
	datad => \Mux127~234_combout\,
	combout => \Mux127~364_combout\);

-- Location: LCCOMB_X53_Y1_N22
\Mux127~366\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~366_combout\ = (\Mux127~365_combout\) # ((\Mux127~364_combout\) # ((\Mux127~69_combout\ & \Mux127~233_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~69_combout\,
	datab => \Mux127~365_combout\,
	datac => \Mux127~233_combout\,
	datad => \Mux127~364_combout\,
	combout => \Mux127~366_combout\);

-- Location: LCCOMB_X53_Y1_N6
\Mux127~371\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~371_combout\ = (\amt[4]~input_o\ & ((\Mux127~366_combout\))) # (!\amt[4]~input_o\ & (\Mux127~370_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \Mux127~370_combout\,
	datac => \Mux127~366_combout\,
	combout => \Mux127~371_combout\);

-- Location: LCCOMB_X52_Y1_N14
\Mux243~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux243~1_combout\ = (\Mux243~0_combout\ & ((\Mux127~381_combout\) # ((!\Mux253~0_combout\)))) # (!\Mux243~0_combout\ & (((\Mux253~0_combout\ & \Mux127~371_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux243~0_combout\,
	datab => \Mux127~381_combout\,
	datac => \Mux253~0_combout\,
	datad => \Mux127~371_combout\,
	combout => \Mux243~1_combout\);

-- Location: LCCOMB_X57_Y1_N10
\Mux127~372\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~372_combout\ = (\a[63]~input_o\ & ((\amt[2]~input_o\) # (\amt[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datac => \a[63]~input_o\,
	datad => \amt[3]~input_o\,
	combout => \Mux127~372_combout\);

-- Location: LCCOMB_X58_Y3_N6
\Mux127~382\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~382_combout\ = (\Mux127~77_combout\ & ((\Mux127~55_combout\) # ((\Mux128~0_combout\ & \Mux127~75_combout\)))) # (!\Mux127~77_combout\ & (\Mux128~0_combout\ & (\Mux127~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~77_combout\,
	datab => \Mux128~0_combout\,
	datac => \Mux127~75_combout\,
	datad => \Mux127~55_combout\,
	combout => \Mux127~382_combout\);

-- Location: LCCOMB_X58_Y3_N20
\Mux127~384\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~384_combout\ = (\Mux127~383_combout\) # ((\Mux127~382_combout\) # ((\Mux127~69_combout\ & \Mux127~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~383_combout\,
	datab => \Mux127~69_combout\,
	datac => \Mux127~52_combout\,
	datad => \Mux127~382_combout\,
	combout => \Mux127~384_combout\);

-- Location: LCCOMB_X58_Y3_N18
\Mux127~386\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~386_combout\ = (\amt[4]~input_o\ & ((\Mux127~385_combout\) # ((\Mux127~372_combout\)))) # (!\amt[4]~input_o\ & (((\Mux127~384_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~385_combout\,
	datab => \amt[4]~input_o\,
	datac => \Mux127~372_combout\,
	datad => \Mux127~384_combout\,
	combout => \Mux127~386_combout\);

-- Location: LCCOMB_X56_Y2_N26
\Mux127~394\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~394_combout\ = (\Mux128~0_combout\ & ((\amt[0]~input_o\ & ((\Mux127~103_combout\))) # (!\amt[0]~input_o\ & (\Mux127~104_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \Mux128~0_combout\,
	datac => \Mux127~104_combout\,
	datad => \Mux127~103_combout\,
	combout => \Mux127~394_combout\);

-- Location: LCCOMB_X56_Y2_N8
\Mux127~248\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~248_combout\ = (\amt[0]~input_o\ & (\Mux127~89_combout\)) # (!\amt[0]~input_o\ & ((\Mux127~90_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~89_combout\,
	datab => \amt[0]~input_o\,
	datad => \Mux127~90_combout\,
	combout => \Mux127~248_combout\);

-- Location: LCCOMB_X56_Y2_N20
\Mux127~395\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~395_combout\ = (\Mux127~68_combout\ & ((\Mux127~248_combout\) # ((\Mux127~69_combout\ & \Mux127~84_combout\)))) # (!\Mux127~68_combout\ & (\Mux127~69_combout\ & ((\Mux127~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~68_combout\,
	datab => \Mux127~69_combout\,
	datac => \Mux127~248_combout\,
	datad => \Mux127~84_combout\,
	combout => \Mux127~395_combout\);

-- Location: LCCOMB_X56_Y2_N6
\Mux127~396\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~396_combout\ = (\Mux127~394_combout\) # ((\Mux127~395_combout\) # ((\Mux127~77_combout\ & \Mux127~87_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~77_combout\,
	datab => \Mux127~87_combout\,
	datac => \Mux127~394_combout\,
	datad => \Mux127~395_combout\,
	combout => \Mux127~396_combout\);

-- Location: LCCOMB_X56_Y5_N4
\Mux127~392\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~392_combout\ = (\Mux127~77_combout\ & ((\amt[0]~input_o\ & ((\Mux127~65_combout\))) # (!\amt[0]~input_o\ & (\Mux127~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~77_combout\,
	datab => \Mux127~66_combout\,
	datac => \amt[0]~input_o\,
	datad => \Mux127~65_combout\,
	combout => \Mux127~392_combout\);

-- Location: LCCOMB_X58_Y3_N24
\Mux127~391\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~391_combout\ = (\Mux127~72_combout\ & ((\Mux127~68_combout\) # ((\Mux127~69_combout\ & \Mux127~80_combout\)))) # (!\Mux127~72_combout\ & (((\Mux127~69_combout\ & \Mux127~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~72_combout\,
	datab => \Mux127~68_combout\,
	datac => \Mux127~69_combout\,
	datad => \Mux127~80_combout\,
	combout => \Mux127~391_combout\);

-- Location: LCCOMB_X57_Y2_N10
\Mux127~393\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~393_combout\ = (\Mux127~392_combout\) # ((\Mux127~391_combout\) # ((\Mux128~0_combout\ & \Mux127~94_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux128~0_combout\,
	datab => \Mux127~94_combout\,
	datac => \Mux127~392_combout\,
	datad => \Mux127~391_combout\,
	combout => \Mux127~393_combout\);

-- Location: LCCOMB_X57_Y2_N8
\Mux127~397\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~397_combout\ = (\amt[4]~input_o\ & ((\Mux127~393_combout\))) # (!\amt[4]~input_o\ & (\Mux127~396_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[4]~input_o\,
	datac => \Mux127~396_combout\,
	datad => \Mux127~393_combout\,
	combout => \Mux127~397_combout\);

-- Location: LCCOMB_X58_Y3_N12
\Mux127~387\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~387_combout\ = (\Mux127~77_combout\ & ((\Mux127~98_combout\) # ((\Mux127~68_combout\ & \Mux127~108_combout\)))) # (!\Mux127~77_combout\ & (\Mux127~68_combout\ & ((\Mux127~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~77_combout\,
	datab => \Mux127~68_combout\,
	datac => \Mux127~98_combout\,
	datad => \Mux127~108_combout\,
	combout => \Mux127~387_combout\);

-- Location: LCCOMB_X58_Y3_N26
\Mux127~388\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~388_combout\ = (\Mux127~385_combout\) # ((\Mux127~387_combout\) # ((\Mux127~69_combout\ & \Mux127~101_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~385_combout\,
	datab => \Mux127~69_combout\,
	datac => \Mux127~101_combout\,
	datad => \Mux127~387_combout\,
	combout => \Mux127~388_combout\);

-- Location: LCCOMB_X58_Y3_N28
\Mux127~389\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~389_combout\ = (\amt[4]~input_o\ & (\Mux127~388_combout\)) # (!\amt[4]~input_o\ & ((\Mux127~384_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[4]~input_o\,
	datac => \Mux127~388_combout\,
	datad => \Mux127~384_combout\,
	combout => \Mux127~389_combout\);

-- Location: LCCOMB_X57_Y2_N0
\Mux127~385\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~385_combout\ = (\Mux128~0_combout\ & ((\Mux127~60_combout\) # ((\Mux127~61_combout\ & \amt[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~61_combout\,
	datab => \Mux128~0_combout\,
	datac => \amt[1]~input_o\,
	datad => \Mux127~60_combout\,
	combout => \Mux127~385_combout\);

-- Location: LCCOMB_X58_Y3_N2
\Mux127~390\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~390_combout\ = (\amt[4]~input_o\ & (\Mux127~385_combout\)) # (!\amt[4]~input_o\ & ((\Mux127~384_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[4]~input_o\,
	datac => \Mux127~385_combout\,
	datad => \Mux127~384_combout\,
	combout => \Mux127~390_combout\);

-- Location: LCCOMB_X59_Y2_N24
\Mux242~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux242~0_combout\ = (\Mux253~1_combout\ & (\Mux253~0_combout\)) # (!\Mux253~1_combout\ & ((\Mux253~0_combout\ & (\Mux127~389_combout\)) # (!\Mux253~0_combout\ & ((\Mux127~390_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux253~1_combout\,
	datab => \Mux253~0_combout\,
	datac => \Mux127~389_combout\,
	datad => \Mux127~390_combout\,
	combout => \Mux242~0_combout\);

-- Location: LCCOMB_X59_Y2_N14
\Mux242~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux242~1_combout\ = (\Mux253~1_combout\ & ((\Mux242~0_combout\ & ((\Mux127~397_combout\))) # (!\Mux242~0_combout\ & (\Mux127~386_combout\)))) # (!\Mux253~1_combout\ & (((\Mux242~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~386_combout\,
	datab => \Mux253~1_combout\,
	datac => \Mux127~397_combout\,
	datad => \Mux242~0_combout\,
	combout => \Mux242~1_combout\);

-- Location: LCCOMB_X56_Y3_N26
\Mux127~402\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~402_combout\ = (\Mux127~68_combout\ & ((\amt[0]~input_o\ & (\Mux127~116_combout\)) # (!\amt[0]~input_o\ & ((\Mux127~57_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~68_combout\,
	datab => \Mux127~116_combout\,
	datac => \amt[0]~input_o\,
	datad => \Mux127~57_combout\,
	combout => \Mux127~402_combout\);

-- Location: LCCOMB_X57_Y1_N4
\Mux127~401\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~401_combout\ = (\Mux127~77_combout\ & ((\Mux127~112_combout\) # ((\Mux128~0_combout\ & \Mux127~260_combout\)))) # (!\Mux127~77_combout\ & (\Mux128~0_combout\ & (\Mux127~260_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~77_combout\,
	datab => \Mux128~0_combout\,
	datac => \Mux127~260_combout\,
	datad => \Mux127~112_combout\,
	combout => \Mux127~401_combout\);

-- Location: LCCOMB_X58_Y4_N10
\Mux127~408\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~408_combout\ = (\Mux127~402_combout\) # ((\Mux127~401_combout\) # ((\Mux127~114_combout\ & \Mux127~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~114_combout\,
	datab => \Mux127~69_combout\,
	datac => \Mux127~402_combout\,
	datad => \Mux127~401_combout\,
	combout => \Mux127~408_combout\);

-- Location: LCCOMB_X58_Y4_N4
\Mux127~409\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~409_combout\ = (\amt[4]~input_o\ & (\Mux127~137_combout\ & (\Mux128~0_combout\))) # (!\amt[4]~input_o\ & (((\Mux127~408_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~137_combout\,
	datab => \amt[4]~input_o\,
	datac => \Mux128~0_combout\,
	datad => \Mux127~408_combout\,
	combout => \Mux127~409_combout\);

-- Location: LCCOMB_X54_Y1_N28
\Mux127~405\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~405_combout\ = (\amt[1]~input_o\) # ((\amt[3]~input_o\) # (\amt[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[1]~input_o\,
	datac => \amt[3]~input_o\,
	datad => \amt[2]~input_o\,
	combout => \Mux127~405_combout\);

-- Location: LCCOMB_X57_Y1_N6
\Mux127~406\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~406_combout\ = (\amt[4]~input_o\ & ((\Mux127~405_combout\ & (\a[63]~input_o\)) # (!\Mux127~405_combout\ & ((\Mux127~119_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \a[63]~input_o\,
	datac => \Mux127~119_combout\,
	datad => \Mux127~405_combout\,
	combout => \Mux127~406_combout\);

-- Location: LCCOMB_X58_Y4_N30
\Mux127~403\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~403_combout\ = (\Mux127~402_combout\) # ((\Mux127~401_combout\) # ((\Mux127~114_combout\ & \Mux127~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~114_combout\,
	datab => \Mux127~69_combout\,
	datac => \Mux127~402_combout\,
	datad => \Mux127~401_combout\,
	combout => \Mux127~403_combout\);

-- Location: LCCOMB_X59_Y4_N10
\Mux127~407\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~407_combout\ = (\Mux127~406_combout\) # ((!\amt[4]~input_o\ & \Mux127~403_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[4]~input_o\,
	datac => \Mux127~406_combout\,
	datad => \Mux127~403_combout\,
	combout => \Mux127~407_combout\);

-- Location: LCCOMB_X59_Y4_N8
\Mux241~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux241~0_combout\ = (\Mux253~0_combout\ & (\Mux253~1_combout\)) # (!\Mux253~0_combout\ & ((\Mux253~1_combout\ & ((\Mux127~407_combout\))) # (!\Mux253~1_combout\ & (\Mux127~409_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux253~0_combout\,
	datab => \Mux253~1_combout\,
	datac => \Mux127~409_combout\,
	datad => \Mux127~407_combout\,
	combout => \Mux241~0_combout\);

-- Location: LCCOMB_X58_Y4_N18
\Mux127~399\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~399_combout\ = (\Mux127~68_combout\ & ((\Mux127~157_combout\) # ((\Mux127~69_combout\ & \Mux127~153_combout\)))) # (!\Mux127~68_combout\ & (\Mux127~69_combout\ & (\Mux127~153_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~68_combout\,
	datab => \Mux127~69_combout\,
	datac => \Mux127~153_combout\,
	datad => \Mux127~157_combout\,
	combout => \Mux127~399_combout\);

-- Location: LCCOMB_X58_Y4_N28
\Mux127~400\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~400_combout\ = (\Mux127~398_combout\) # ((\Mux127~399_combout\) # ((\Mux128~0_combout\ & \Mux127~120_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~398_combout\,
	datab => \Mux128~0_combout\,
	datac => \Mux127~120_combout\,
	datad => \Mux127~399_combout\,
	combout => \Mux127~400_combout\);

-- Location: LCCOMB_X58_Y4_N16
\Mux127~404\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~404_combout\ = (\amt[4]~input_o\ & ((\Mux127~400_combout\))) # (!\amt[4]~input_o\ & (\Mux127~403_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[4]~input_o\,
	datac => \Mux127~403_combout\,
	datad => \Mux127~400_combout\,
	combout => \Mux127~404_combout\);

-- Location: LCCOMB_X55_Y1_N30
\Mux127~413\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~413_combout\ = (\Mux128~0_combout\ & ((\amt[0]~input_o\ & ((\Mux127~154_combout\))) # (!\amt[0]~input_o\ & (\Mux127~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~103_combout\,
	datab => \Mux128~0_combout\,
	datac => \amt[0]~input_o\,
	datad => \Mux127~154_combout\,
	combout => \Mux127~413_combout\);

-- Location: LCCOMB_X58_Y4_N22
\Mux127~414\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~414_combout\ = (\Mux127~68_combout\ & ((\Mux127~270_combout\) # ((\Mux127~69_combout\ & \Mux127~143_combout\)))) # (!\Mux127~68_combout\ & (((\Mux127~69_combout\ & \Mux127~143_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~68_combout\,
	datab => \Mux127~270_combout\,
	datac => \Mux127~69_combout\,
	datad => \Mux127~143_combout\,
	combout => \Mux127~414_combout\);

-- Location: LCCOMB_X58_Y4_N8
\Mux127~415\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~415_combout\ = (\Mux127~413_combout\) # ((\Mux127~414_combout\) # ((\Mux127~77_combout\ & \Mux127~141_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~77_combout\,
	datab => \Mux127~413_combout\,
	datac => \Mux127~414_combout\,
	datad => \Mux127~141_combout\,
	combout => \Mux127~415_combout\);

-- Location: LCCOMB_X58_Y4_N14
\Mux127~410\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~410_combout\ = (\Mux127~69_combout\ & ((\amt[0]~input_o\ & (\Mux127~122_combout\)) # (!\amt[0]~input_o\ & ((\Mux127~78_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~122_combout\,
	datab => \Mux127~69_combout\,
	datac => \Mux127~78_combout\,
	datad => \amt[0]~input_o\,
	combout => \Mux127~410_combout\);

-- Location: LCCOMB_X57_Y5_N30
\Mux127~411\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~411_combout\ = (\Mux128~0_combout\ & ((\Mux127~148_combout\) # ((\Mux127~77_combout\ & \Mux127~341_combout\)))) # (!\Mux128~0_combout\ & (\Mux127~77_combout\ & (\Mux127~341_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux128~0_combout\,
	datab => \Mux127~77_combout\,
	datac => \Mux127~341_combout\,
	datad => \Mux127~148_combout\,
	combout => \Mux127~411_combout\);

-- Location: LCCOMB_X58_Y4_N24
\Mux127~412\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~412_combout\ = (\Mux127~410_combout\) # ((\Mux127~411_combout\) # ((\Mux127~68_combout\ & \Mux127~262_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~68_combout\,
	datab => \Mux127~262_combout\,
	datac => \Mux127~410_combout\,
	datad => \Mux127~411_combout\,
	combout => \Mux127~412_combout\);

-- Location: LCCOMB_X58_Y4_N2
\Mux127~416\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~416_combout\ = (\amt[4]~input_o\ & ((\Mux127~412_combout\))) # (!\amt[4]~input_o\ & (\Mux127~415_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[4]~input_o\,
	datac => \Mux127~415_combout\,
	datad => \Mux127~412_combout\,
	combout => \Mux127~416_combout\);

-- Location: LCCOMB_X59_Y4_N22
\Mux241~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux241~1_combout\ = (\Mux253~0_combout\ & ((\Mux241~0_combout\ & ((\Mux127~416_combout\))) # (!\Mux241~0_combout\ & (\Mux127~404_combout\)))) # (!\Mux253~0_combout\ & (\Mux241~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux253~0_combout\,
	datab => \Mux241~0_combout\,
	datac => \Mux127~404_combout\,
	datad => \Mux127~416_combout\,
	combout => \Mux241~1_combout\);

-- Location: LCCOMB_X53_Y4_N22
\Mux127~418\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~418_combout\ = (\Mux127~77_combout\ & ((\Mux127~174_combout\) # ((\Mux127~279_combout\ & \Mux128~0_combout\)))) # (!\Mux127~77_combout\ & (\Mux127~279_combout\ & (\Mux128~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~77_combout\,
	datab => \Mux127~279_combout\,
	datac => \Mux128~0_combout\,
	datad => \Mux127~174_combout\,
	combout => \Mux127~418_combout\);

-- Location: LCCOMB_X53_Y4_N0
\Mux127~419\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~419_combout\ = (\Mux127~69_combout\ & ((\Mux127~176_combout\) # ((\Mux127~68_combout\ & \Mux127~162_combout\)))) # (!\Mux127~69_combout\ & (\Mux127~68_combout\ & ((\Mux127~162_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~69_combout\,
	datab => \Mux127~68_combout\,
	datac => \Mux127~176_combout\,
	datad => \Mux127~162_combout\,
	combout => \Mux127~419_combout\);

-- Location: LCCOMB_X53_Y4_N6
\Mux127~420\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~420_combout\ = (\amt[4]~input_o\ & (\Mux127~417_combout\)) # (!\amt[4]~input_o\ & (((\Mux127~418_combout\) # (\Mux127~419_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~417_combout\,
	datab => \amt[4]~input_o\,
	datac => \Mux127~418_combout\,
	datad => \Mux127~419_combout\,
	combout => \Mux127~420_combout\);

-- Location: LCCOMB_X53_Y4_N8
\Mux127~425\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~425_combout\ = (\amt[4]~input_o\ & (\Mux127~512_combout\)) # (!\amt[4]~input_o\ & (((\Mux127~418_combout\) # (\Mux127~419_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~512_combout\,
	datab => \amt[4]~input_o\,
	datac => \Mux127~418_combout\,
	datad => \Mux127~419_combout\,
	combout => \Mux127~425_combout\);

-- Location: LCCOMB_X53_Y4_N26
\Mux127~422\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~422_combout\ = (\Mux127~69_combout\ & ((\Mux127~204_combout\) # ((\Mux127~68_combout\ & \Mux127~199_combout\)))) # (!\Mux127~69_combout\ & (\Mux127~68_combout\ & ((\Mux127~199_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~69_combout\,
	datab => \Mux127~68_combout\,
	datac => \Mux127~204_combout\,
	datad => \Mux127~199_combout\,
	combout => \Mux127~422_combout\);

-- Location: LCCOMB_X53_Y4_N20
\Mux127~421\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~421_combout\ = (\Mux127~77_combout\ & ((\amt[0]~input_o\ & (\Mux127~196_combout\)) # (!\amt[0]~input_o\ & ((\Mux127~150_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~77_combout\,
	datab => \amt[0]~input_o\,
	datac => \Mux127~196_combout\,
	datad => \Mux127~150_combout\,
	combout => \Mux127~421_combout\);

-- Location: LCCOMB_X53_Y4_N16
\Mux127~423\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~423_combout\ = (\Mux127~422_combout\) # ((\Mux127~421_combout\) # ((\Mux128~0_combout\ & \Mux127~181_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux128~0_combout\,
	datab => \Mux127~181_combout\,
	datac => \Mux127~422_combout\,
	datad => \Mux127~421_combout\,
	combout => \Mux127~423_combout\);

-- Location: LCCOMB_X53_Y4_N2
\Mux127~424\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~424_combout\ = (\amt[4]~input_o\ & (((\Mux127~423_combout\)))) # (!\amt[4]~input_o\ & ((\Mux127~419_combout\) # ((\Mux127~418_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \Mux127~419_combout\,
	datac => \Mux127~418_combout\,
	datad => \Mux127~423_combout\,
	combout => \Mux127~424_combout\);

-- Location: LCCOMB_X53_Y4_N14
\Mux240~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux240~0_combout\ = (\Mux253~0_combout\ & (((\Mux253~1_combout\) # (\Mux127~424_combout\)))) # (!\Mux253~0_combout\ & (\Mux127~425_combout\ & (!\Mux253~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux253~0_combout\,
	datab => \Mux127~425_combout\,
	datac => \Mux253~1_combout\,
	datad => \Mux127~424_combout\,
	combout => \Mux240~0_combout\);

-- Location: LCCOMB_X58_Y5_N20
\Mux127~427\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~427_combout\ = (\Mux127~77_combout\ & ((\amt[0]~input_o\ & ((\Mux127~166_combout\))) # (!\amt[0]~input_o\ & (\Mux127~124_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~124_combout\,
	datab => \amt[0]~input_o\,
	datac => \Mux127~77_combout\,
	datad => \Mux127~166_combout\,
	combout => \Mux127~427_combout\);

-- Location: LCCOMB_X55_Y5_N10
\Mux127~426\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~426_combout\ = (\Mux127~68_combout\ & ((\Mux127~281_combout\) # ((\Mux127~69_combout\ & \Mux127~358_combout\)))) # (!\Mux127~68_combout\ & (\Mux127~69_combout\ & (\Mux127~358_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~68_combout\,
	datab => \Mux127~69_combout\,
	datac => \Mux127~358_combout\,
	datad => \Mux127~281_combout\,
	combout => \Mux127~426_combout\);

-- Location: LCCOMB_X55_Y5_N24
\Mux127~428\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~428_combout\ = (\Mux127~427_combout\) # ((\Mux127~426_combout\) # ((\Mux128~0_combout\ & \Mux127~191_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux128~0_combout\,
	datab => \Mux127~427_combout\,
	datac => \Mux127~191_combout\,
	datad => \Mux127~426_combout\,
	combout => \Mux127~428_combout\);

-- Location: LCCOMB_X52_Y4_N28
\Mux127~432\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~432_combout\ = (\amt[4]~input_o\ & ((\Mux127~428_combout\))) # (!\amt[4]~input_o\ & (\Mux127~431_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~431_combout\,
	datab => \amt[4]~input_o\,
	datac => \Mux127~428_combout\,
	combout => \Mux127~432_combout\);

-- Location: LCCOMB_X52_Y4_N10
\Mux240~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux240~1_combout\ = (\Mux253~1_combout\ & ((\Mux240~0_combout\ & ((\Mux127~432_combout\))) # (!\Mux240~0_combout\ & (\Mux127~420_combout\)))) # (!\Mux253~1_combout\ & (((\Mux240~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~420_combout\,
	datab => \Mux253~1_combout\,
	datac => \Mux240~0_combout\,
	datad => \Mux127~432_combout\,
	combout => \Mux240~1_combout\);

-- Location: LCCOMB_X54_Y3_N16
\Mux127~443\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~443_combout\ = (\Mux128~0_combout\ & ((\Mux127~237_combout\) # ((\Mux127~77_combout\ & \Mux127~227_combout\)))) # (!\Mux128~0_combout\ & (\Mux127~77_combout\ & (\Mux127~227_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux128~0_combout\,
	datab => \Mux127~77_combout\,
	datac => \Mux127~227_combout\,
	datad => \Mux127~237_combout\,
	combout => \Mux127~443_combout\);

-- Location: LCCOMB_X55_Y5_N12
\Mux127~444\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~444_combout\ = (\Mux127~68_combout\ & ((\amt[0]~input_o\ & (\Mux127~93_combout\)) # (!\amt[0]~input_o\ & ((\Mux127~188_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~68_combout\,
	datab => \amt[0]~input_o\,
	datac => \Mux127~93_combout\,
	datad => \Mux127~188_combout\,
	combout => \Mux127~444_combout\);

-- Location: LCCOMB_X54_Y3_N2
\Mux127~445\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~445_combout\ = (\Mux127~443_combout\) # ((\Mux127~444_combout\) # ((\Mux127~69_combout\ & \Mux127~228_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~69_combout\,
	datab => \Mux127~443_combout\,
	datac => \Mux127~444_combout\,
	datad => \Mux127~228_combout\,
	combout => \Mux127~445_combout\);

-- Location: LCCOMB_X56_Y5_N2
\Mux127~375\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~375_combout\ = (\amt[0]~input_o\ & ((\Mux127~66_combout\))) # (!\amt[0]~input_o\ & (\Mux127~190_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \Mux127~190_combout\,
	datad => \Mux127~66_combout\,
	combout => \Mux127~375_combout\);

-- Location: LCCOMB_X58_Y5_N28
\Mux127~441\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~441_combout\ = (\Mux127~218_combout\ & ((\Mux127~77_combout\) # ((\Mux128~0_combout\ & \Mux127~375_combout\)))) # (!\Mux127~218_combout\ & (\Mux128~0_combout\ & ((\Mux127~375_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~218_combout\,
	datab => \Mux128~0_combout\,
	datac => \Mux127~77_combout\,
	datad => \Mux127~375_combout\,
	combout => \Mux127~441_combout\);

-- Location: LCCOMB_X58_Y5_N2
\Mux127~440\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~440_combout\ = (\Mux127~69_combout\ & ((\amt[0]~input_o\ & ((\Mux127~71_combout\))) # (!\amt[0]~input_o\ & (\Mux127~164_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~69_combout\,
	datab => \Mux127~164_combout\,
	datac => \amt[0]~input_o\,
	datad => \Mux127~71_combout\,
	combout => \Mux127~440_combout\);

-- Location: LCCOMB_X58_Y5_N14
\Mux127~442\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~442_combout\ = (\Mux127~441_combout\) # ((\Mux127~440_combout\) # ((\Mux127~215_combout\ & \Mux127~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~215_combout\,
	datab => \Mux127~441_combout\,
	datac => \Mux127~68_combout\,
	datad => \Mux127~440_combout\,
	combout => \Mux127~442_combout\);

-- Location: LCCOMB_X53_Y5_N16
\Mux127~446\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~446_combout\ = (\amt[4]~input_o\ & ((\Mux127~442_combout\))) # (!\amt[4]~input_o\ & (\Mux127~445_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datac => \Mux127~445_combout\,
	datad => \Mux127~442_combout\,
	combout => \Mux127~446_combout\);

-- Location: LCCOMB_X53_Y5_N2
\Mux127~433\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~433_combout\ = (\Mux128~0_combout\ & ((\Mux127~208_combout\) # ((\Mux127~233_combout\ & \Mux127~77_combout\)))) # (!\Mux128~0_combout\ & (\Mux127~233_combout\ & (\Mux127~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux128~0_combout\,
	datab => \Mux127~233_combout\,
	datac => \Mux127~77_combout\,
	datad => \Mux127~208_combout\,
	combout => \Mux127~433_combout\);

-- Location: LCCOMB_X53_Y3_N18
\Mux127~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~216_combout\ = (\amt[0]~input_o\ & ((\Mux127~54_combout\))) # (!\amt[0]~input_o\ & (\Mux127~168_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux127~168_combout\,
	datac => \amt[0]~input_o\,
	datad => \Mux127~54_combout\,
	combout => \Mux127~216_combout\);

-- Location: LCCOMB_X53_Y1_N12
\Mux127~434\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~434_combout\ = (!\amt[3]~input_o\ & ((\amt[2]~input_o\ & ((\Mux127~368_combout\))) # (!\amt[2]~input_o\ & (\Mux127~216_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datab => \amt[3]~input_o\,
	datac => \Mux127~216_combout\,
	datad => \Mux127~368_combout\,
	combout => \Mux127~434_combout\);

-- Location: LCCOMB_X53_Y1_N18
\Mux127~435\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~435_combout\ = (\Mux127~434_combout\) # ((\amt[3]~input_o\ & \Mux127~308_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[3]~input_o\,
	datac => \Mux127~308_combout\,
	datad => \Mux127~434_combout\,
	combout => \Mux127~435_combout\);

-- Location: LCCOMB_X53_Y5_N22
\Mux127~437\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~437_combout\ = (\amt[4]~input_o\ & ((\Mux127~513_combout\) # ((\Mux127~433_combout\)))) # (!\amt[4]~input_o\ & (((\Mux127~435_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~513_combout\,
	datab => \Mux127~433_combout\,
	datac => \amt[4]~input_o\,
	datad => \Mux127~435_combout\,
	combout => \Mux127~437_combout\);

-- Location: LCCOMB_X53_Y5_N8
\Mux127~438\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~438_combout\ = (\amt[4]~input_o\ & (\a[63]~input_o\)) # (!\amt[4]~input_o\ & ((\Mux127~435_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[63]~input_o\,
	datac => \amt[4]~input_o\,
	datad => \Mux127~435_combout\,
	combout => \Mux127~438_combout\);

-- Location: LCCOMB_X53_Y5_N18
\Mux127~514\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~514_combout\ = (\amt[4]~input_o\ & (\Mux127~439_combout\ & (!\amt[3]~input_o\))) # (!\amt[4]~input_o\ & (((\Mux127~435_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~439_combout\,
	datab => \amt[3]~input_o\,
	datac => \amt[4]~input_o\,
	datad => \Mux127~435_combout\,
	combout => \Mux127~514_combout\);

-- Location: LCCOMB_X53_Y5_N6
\Mux239~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux239~0_combout\ = (\Mux253~0_combout\ & (\Mux253~1_combout\)) # (!\Mux253~0_combout\ & ((\Mux253~1_combout\ & (\Mux127~438_combout\)) # (!\Mux253~1_combout\ & ((\Mux127~514_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux253~0_combout\,
	datab => \Mux253~1_combout\,
	datac => \Mux127~438_combout\,
	datad => \Mux127~514_combout\,
	combout => \Mux239~0_combout\);

-- Location: LCCOMB_X53_Y5_N14
\Mux239~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux239~1_combout\ = (\Mux253~0_combout\ & ((\Mux239~0_combout\ & (\Mux127~446_combout\)) # (!\Mux239~0_combout\ & ((\Mux127~437_combout\))))) # (!\Mux253~0_combout\ & (((\Mux239~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux253~0_combout\,
	datab => \Mux127~446_combout\,
	datac => \Mux127~437_combout\,
	datad => \Mux239~0_combout\,
	combout => \Mux239~1_combout\);

-- Location: LCCOMB_X59_Y2_N8
\Mux127~449\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~449_combout\ = (\amt[4]~input_o\ & \Mux127~109_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datad => \Mux127~109_combout\,
	combout => \Mux127~449_combout\);

-- Location: LCCOMB_X59_Y2_N28
\Mux127~447\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~447_combout\ = (!\amt[4]~input_o\ & ((\Mux127~56_combout\) # ((\amt[3]~input_o\ & \Mux127~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \amt[3]~input_o\,
	datac => \Mux127~63_combout\,
	datad => \Mux127~56_combout\,
	combout => \Mux127~447_combout\);

-- Location: LCCOMB_X59_Y2_N22
\Mux238~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux238~0_combout\ = (\Mux253~1_combout\ & (\Mux253~0_combout\)) # (!\Mux253~1_combout\ & ((\Mux127~447_combout\) # ((\Mux253~0_combout\ & \Mux127~449_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux253~1_combout\,
	datab => \Mux253~0_combout\,
	datac => \Mux127~449_combout\,
	datad => \Mux127~447_combout\,
	combout => \Mux238~0_combout\);

-- Location: LCCOMB_X59_Y2_N26
\Mux127~448\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~448_combout\ = (\Mux127~447_combout\) # ((\amt[4]~input_o\ & \a[63]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \a[63]~input_o\,
	datad => \Mux127~447_combout\,
	combout => \Mux127~448_combout\);

-- Location: LCCOMB_X59_Y2_N16
\Mux127~450\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~450_combout\ = (\amt[4]~input_o\ & (\Mux127~81_combout\)) # (!\amt[4]~input_o\ & ((\Mux127~95_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datac => \Mux127~81_combout\,
	datad => \Mux127~95_combout\,
	combout => \Mux127~450_combout\);

-- Location: LCCOMB_X59_Y2_N2
\Mux238~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux238~1_combout\ = (\Mux238~0_combout\ & (((\Mux127~450_combout\)) # (!\Mux253~1_combout\))) # (!\Mux238~0_combout\ & (\Mux253~1_combout\ & (\Mux127~448_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux238~0_combout\,
	datab => \Mux253~1_combout\,
	datac => \Mux127~448_combout\,
	datad => \Mux127~450_combout\,
	combout => \Mux238~1_combout\);

-- Location: LCCOMB_X57_Y3_N22
\Mux127~455\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~455_combout\ = (\amt[4]~input_o\ & (\Mux127~130_combout\)) # (!\amt[4]~input_o\ & ((\Mux127~149_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[4]~input_o\,
	datac => \Mux127~130_combout\,
	datad => \Mux127~149_combout\,
	combout => \Mux127~455_combout\);

-- Location: LCCOMB_X57_Y3_N30
\Mux127~454\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~454_combout\ = (!\amt[4]~input_o\ & ((\Mux127~115_combout\) # ((\amt[3]~input_o\ & \Mux127~138_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datab => \amt[4]~input_o\,
	datac => \Mux127~115_combout\,
	datad => \Mux127~138_combout\,
	combout => \Mux127~454_combout\);

-- Location: LCCOMB_X57_Y3_N18
\Mux127~452\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~452_combout\ = (\amt[4]~input_o\ & (\a[63]~input_o\)) # (!\amt[4]~input_o\ & (((\amt[3]~input_o\ & \Mux127~134_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[63]~input_o\,
	datab => \amt[4]~input_o\,
	datac => \amt[3]~input_o\,
	datad => \Mux127~134_combout\,
	combout => \Mux127~452_combout\);

-- Location: LCCOMB_X57_Y3_N28
\Mux127~453\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~453_combout\ = (\Mux127~452_combout\) # ((!\amt[4]~input_o\ & \Mux127~115_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[4]~input_o\,
	datac => \Mux127~115_combout\,
	datad => \Mux127~452_combout\,
	combout => \Mux127~453_combout\);

-- Location: LCCOMB_X57_Y3_N8
\Mux237~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux237~0_combout\ = (\Mux253~1_combout\ & ((\Mux253~0_combout\) # ((\Mux127~453_combout\)))) # (!\Mux253~1_combout\ & (!\Mux253~0_combout\ & (\Mux127~454_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux253~1_combout\,
	datab => \Mux253~0_combout\,
	datac => \Mux127~454_combout\,
	datad => \Mux127~453_combout\,
	combout => \Mux237~0_combout\);

-- Location: LCCOMB_X57_Y3_N0
\Mux127~451\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~451_combout\ = (\amt[4]~input_o\ & (\Mux127~158_combout\)) # (!\amt[4]~input_o\ & ((\Mux127~121_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[4]~input_o\,
	datac => \Mux127~158_combout\,
	datad => \Mux127~121_combout\,
	combout => \Mux127~451_combout\);

-- Location: LCCOMB_X57_Y3_N20
\Mux237~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux237~1_combout\ = (\Mux253~0_combout\ & ((\Mux237~0_combout\ & (\Mux127~455_combout\)) # (!\Mux237~0_combout\ & ((\Mux127~451_combout\))))) # (!\Mux253~0_combout\ & (((\Mux237~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~455_combout\,
	datab => \Mux253~0_combout\,
	datac => \Mux237~0_combout\,
	datad => \Mux127~451_combout\,
	combout => \Mux237~1_combout\);

-- Location: LCCOMB_X55_Y4_N14
\Mux127~456\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~456_combout\ = (\amt[3]~input_o\ & (!\amt[4]~input_o\ & \Mux127~163_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datac => \amt[4]~input_o\,
	datad => \Mux127~163_combout\,
	combout => \Mux127~456_combout\);

-- Location: LCCOMB_X55_Y4_N0
\Mux127~457\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~457_combout\ = (\Mux127~456_combout\) # ((\amt[4]~input_o\ & (\a[63]~input_o\)) # (!\amt[4]~input_o\ & ((\Mux127~177_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \a[63]~input_o\,
	datac => \Mux127~456_combout\,
	datad => \Mux127~177_combout\,
	combout => \Mux127~457_combout\);

-- Location: LCCOMB_X55_Y4_N4
\Mux127~459\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~459_combout\ = (!\amt[4]~input_o\ & ((\Mux127~177_combout\) # ((\amt[3]~input_o\ & \Mux127~184_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datab => \Mux127~184_combout\,
	datac => \amt[4]~input_o\,
	datad => \Mux127~177_combout\,
	combout => \Mux127~459_combout\);

-- Location: LCCOMB_X54_Y2_N26
\Mux127~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~197_combout\ = (\Mux128~0_combout\ & ((\amt[0]~input_o\ & ((\Mux127~196_combout\))) # (!\amt[0]~input_o\ & (\Mux127~150_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \Mux128~0_combout\,
	datac => \Mux127~150_combout\,
	datad => \Mux127~196_combout\,
	combout => \Mux127~197_combout\);

-- Location: LCCOMB_X54_Y2_N6
\Mux127~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~202_combout\ = (\Mux127~201_combout\ & ((\Mux127~68_combout\) # ((\Mux127~199_combout\ & \Mux127~69_combout\)))) # (!\Mux127~201_combout\ & (((\Mux127~199_combout\ & \Mux127~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~201_combout\,
	datab => \Mux127~68_combout\,
	datac => \Mux127~199_combout\,
	datad => \Mux127~69_combout\,
	combout => \Mux127~202_combout\);

-- Location: LCCOMB_X54_Y2_N16
\Mux127~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~205_combout\ = (\Mux127~197_combout\) # ((\Mux127~202_combout\) # ((\Mux127~77_combout\ & \Mux127~204_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~77_combout\,
	datab => \Mux127~204_combout\,
	datac => \Mux127~197_combout\,
	datad => \Mux127~202_combout\,
	combout => \Mux127~205_combout\);

-- Location: LCCOMB_X55_Y4_N10
\Mux127~458\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~458_combout\ = (\amt[4]~input_o\ & (((\Mux127~205_combout\)))) # (!\amt[4]~input_o\ & ((\Mux127~182_combout\) # ((\Mux127~177_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \Mux127~182_combout\,
	datac => \Mux127~205_combout\,
	datad => \Mux127~177_combout\,
	combout => \Mux127~458_combout\);

-- Location: LCCOMB_X55_Y4_N22
\Mux236~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux236~0_combout\ = (\Mux253~1_combout\ & (\Mux253~0_combout\)) # (!\Mux253~1_combout\ & ((\Mux253~0_combout\ & ((\Mux127~458_combout\))) # (!\Mux253~0_combout\ & (\Mux127~459_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux253~1_combout\,
	datab => \Mux253~0_combout\,
	datac => \Mux127~459_combout\,
	datad => \Mux127~458_combout\,
	combout => \Mux236~0_combout\);

-- Location: LCCOMB_X55_Y4_N24
\Mux127~460\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~460_combout\ = (\amt[4]~input_o\ & (\Mux127~172_combout\)) # (!\amt[4]~input_o\ & ((\Mux127~195_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datac => \Mux127~172_combout\,
	datad => \Mux127~195_combout\,
	combout => \Mux127~460_combout\);

-- Location: LCCOMB_X55_Y4_N2
\Mux236~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux236~1_combout\ = (\Mux253~1_combout\ & ((\Mux236~0_combout\ & ((\Mux127~460_combout\))) # (!\Mux236~0_combout\ & (\Mux127~457_combout\)))) # (!\Mux253~1_combout\ & (((\Mux236~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux253~1_combout\,
	datab => \Mux127~457_combout\,
	datac => \Mux236~0_combout\,
	datad => \Mux127~460_combout\,
	combout => \Mux236~1_combout\);

-- Location: LCCOMB_X53_Y2_N18
\Mux127~464\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~464_combout\ = (\amt[4]~input_o\ & (\Mux127~219_combout\)) # (!\amt[4]~input_o\ & ((\Mux127~232_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~219_combout\,
	datac => \amt[4]~input_o\,
	datad => \Mux127~232_combout\,
	combout => \Mux127~464_combout\);

-- Location: LCCOMB_X53_Y2_N0
\Mux127~461\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~461_combout\ = (\amt[4]~input_o\ & (((\Mux127~235_combout\) # (\Mux127~502_combout\)))) # (!\amt[4]~input_o\ & (\Mux127~501_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \Mux127~501_combout\,
	datac => \Mux127~235_combout\,
	datad => \Mux127~502_combout\,
	combout => \Mux127~461_combout\);

-- Location: LCCOMB_X53_Y4_N4
\Mux127~463\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~463_combout\ = (!\amt[4]~input_o\ & ((\Mux127~225_combout\) # ((\amt[3]~input_o\ & \Mux127~223_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \amt[3]~input_o\,
	datac => \Mux127~223_combout\,
	datad => \Mux127~225_combout\,
	combout => \Mux127~463_combout\);

-- Location: LCCOMB_X52_Y2_N16
\Mux235~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux235~0_combout\ = (\Mux253~1_combout\ & ((\Mux127~462_combout\) # ((\Mux253~0_combout\)))) # (!\Mux253~1_combout\ & (((!\Mux253~0_combout\ & \Mux127~463_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~462_combout\,
	datab => \Mux253~1_combout\,
	datac => \Mux253~0_combout\,
	datad => \Mux127~463_combout\,
	combout => \Mux235~0_combout\);

-- Location: LCCOMB_X52_Y2_N6
\Mux235~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux235~1_combout\ = (\Mux253~0_combout\ & ((\Mux235~0_combout\ & (\Mux127~464_combout\)) # (!\Mux235~0_combout\ & ((\Mux127~461_combout\))))) # (!\Mux253~0_combout\ & (((\Mux235~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux253~0_combout\,
	datab => \Mux127~464_combout\,
	datac => \Mux127~461_combout\,
	datad => \Mux235~0_combout\,
	combout => \Mux235~1_combout\);

-- Location: LCCOMB_X56_Y1_N14
\Mux127~465\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~465_combout\ = (\amt[4]~input_o\ & (((\a[63]~input_o\)))) # (!\amt[4]~input_o\ & (((\Mux127~68_combout\ & \a[63]~input_o\)) # (!\Mux127~244_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~68_combout\,
	datab => \a[63]~input_o\,
	datac => \amt[4]~input_o\,
	datad => \Mux127~244_combout\,
	combout => \Mux127~465_combout\);

-- Location: LCCOMB_X59_Y1_N30
\Mux127~468\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~468_combout\ = (\amt[4]~input_o\ & (((\Mux127~240_combout\) # (\Mux127~239_combout\)))) # (!\amt[4]~input_o\ & (\Mux127~251_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \Mux127~251_combout\,
	datac => \Mux127~240_combout\,
	datad => \Mux127~239_combout\,
	combout => \Mux127~468_combout\);

-- Location: LCCOMB_X56_Y1_N4
\Mux127~466\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~466_combout\ = (\amt[4]~input_o\ & (\Mux127~254_combout\)) # (!\amt[4]~input_o\ & ((\Mux127~503_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[4]~input_o\,
	datac => \Mux127~254_combout\,
	datad => \Mux127~503_combout\,
	combout => \Mux127~466_combout\);

-- Location: LCCOMB_X55_Y1_N12
\Mux127~467\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~467_combout\ = (!\amt[4]~input_o\ & !\Mux127~244_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datad => \Mux127~244_combout\,
	combout => \Mux127~467_combout\);

-- Location: LCCOMB_X55_Y1_N6
\Mux234~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux234~0_combout\ = (\Mux253~1_combout\ & (((\Mux253~0_combout\)))) # (!\Mux253~1_combout\ & ((\Mux253~0_combout\ & (\Mux127~466_combout\)) # (!\Mux253~0_combout\ & ((\Mux127~467_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux253~1_combout\,
	datab => \Mux127~466_combout\,
	datac => \Mux253~0_combout\,
	datad => \Mux127~467_combout\,
	combout => \Mux234~0_combout\);

-- Location: LCCOMB_X55_Y1_N20
\Mux234~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux234~1_combout\ = (\Mux253~1_combout\ & ((\Mux234~0_combout\ & ((\Mux127~468_combout\))) # (!\Mux234~0_combout\ & (\Mux127~465_combout\)))) # (!\Mux253~1_combout\ & (((\Mux234~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux253~1_combout\,
	datab => \Mux127~465_combout\,
	datac => \Mux127~468_combout\,
	datad => \Mux234~0_combout\,
	combout => \Mux234~1_combout\);

-- Location: LCCOMB_X58_Y1_N0
\Mux127~469\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~469_combout\ = (\amt[4]~input_o\ & ((\Mux127~515_combout\) # ((\Mux127~274_combout\)))) # (!\amt[4]~input_o\ & (((\Mux127~258_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~515_combout\,
	datab => \amt[4]~input_o\,
	datac => \Mux127~274_combout\,
	datad => \Mux127~258_combout\,
	combout => \Mux127~469_combout\);

-- Location: LCCOMB_X58_Y1_N26
\Mux127~472\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~472_combout\ = (\amt[4]~input_o\ & ((\Mux127~263_combout\))) # (!\amt[4]~input_o\ & (\Mux127~273_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[4]~input_o\,
	datac => \Mux127~273_combout\,
	datad => \Mux127~263_combout\,
	combout => \Mux127~472_combout\);

-- Location: LCCOMB_X58_Y1_N14
\Mux127~471\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~471_combout\ = (!\amt[4]~input_o\ & ((\Mux127~256_combout\) # ((\Mux127~69_combout\ & \Mux127~137_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~69_combout\,
	datab => \Mux127~137_combout\,
	datac => \amt[4]~input_o\,
	datad => \Mux127~256_combout\,
	combout => \Mux127~471_combout\);

-- Location: LCCOMB_X57_Y1_N28
\Mux127~470\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~470_combout\ = (\amt[4]~input_o\ & (\a[63]~input_o\)) # (!\amt[4]~input_o\ & ((\Mux127~266_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datac => \a[63]~input_o\,
	datad => \Mux127~266_combout\,
	combout => \Mux127~470_combout\);

-- Location: LCCOMB_X58_Y1_N20
\Mux233~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux233~0_combout\ = (\Mux253~1_combout\ & ((\Mux253~0_combout\) # ((\Mux127~470_combout\)))) # (!\Mux253~1_combout\ & (!\Mux253~0_combout\ & (\Mux127~471_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux253~1_combout\,
	datab => \Mux253~0_combout\,
	datac => \Mux127~471_combout\,
	datad => \Mux127~470_combout\,
	combout => \Mux233~0_combout\);

-- Location: LCCOMB_X58_Y1_N24
\Mux233~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux233~1_combout\ = (\Mux253~0_combout\ & ((\Mux233~0_combout\ & ((\Mux127~472_combout\))) # (!\Mux233~0_combout\ & (\Mux127~469_combout\)))) # (!\Mux253~0_combout\ & (((\Mux233~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux253~0_combout\,
	datab => \Mux127~469_combout\,
	datac => \Mux127~472_combout\,
	datad => \Mux233~0_combout\,
	combout => \Mux233~1_combout\);

-- Location: LCCOMB_X55_Y3_N20
\Mux127~475\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~475_combout\ = (!\amt[4]~input_o\ & \Mux127~290_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datad => \Mux127~290_combout\,
	combout => \Mux127~475_combout\);

-- Location: LCCOMB_X55_Y3_N22
\Mux232~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux232~0_combout\ = (\Mux253~1_combout\ & (((\Mux253~0_combout\)))) # (!\Mux253~1_combout\ & ((\Mux253~0_combout\ & (\Mux127~474_combout\)) # (!\Mux253~0_combout\ & ((\Mux127~475_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~474_combout\,
	datab => \Mux127~475_combout\,
	datac => \Mux253~1_combout\,
	datad => \Mux253~0_combout\,
	combout => \Mux232~0_combout\);

-- Location: LCCOMB_X56_Y2_N30
\Mux127~292\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~292_combout\ = (\Mux128~0_combout\ & ((\amt[0]~input_o\ & (\Mux127~186_combout\)) # (!\amt[0]~input_o\ & ((\Mux127~142_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \Mux128~0_combout\,
	datac => \Mux127~186_combout\,
	datad => \Mux127~142_combout\,
	combout => \Mux127~292_combout\);

-- Location: LCCOMB_X55_Y5_N2
\Mux127~504\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~504_combout\ = (\Mux127~292_combout\) # ((\amt[2]~input_o\ & (!\amt[3]~input_o\ & \Mux127~189_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datab => \amt[3]~input_o\,
	datac => \Mux127~292_combout\,
	datad => \Mux127~189_combout\,
	combout => \Mux127~504_combout\);

-- Location: LCCOMB_X55_Y5_N16
\Mux127~294\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~294_combout\ = (\Mux127~293_combout\) # ((\Mux127~504_combout\) # ((\Mux127~69_combout\ & \Mux127~191_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~293_combout\,
	datab => \Mux127~69_combout\,
	datac => \Mux127~191_combout\,
	datad => \Mux127~504_combout\,
	combout => \Mux127~294_combout\);

-- Location: LCCOMB_X54_Y3_N4
\Mux127~476\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~476_combout\ = (\amt[4]~input_o\ & (\Mux127~282_combout\)) # (!\amt[4]~input_o\ & ((\Mux127~294_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[4]~input_o\,
	datac => \Mux127~282_combout\,
	datad => \Mux127~294_combout\,
	combout => \Mux127~476_combout\);

-- Location: LCCOMB_X54_Y4_N4
\Mux127~285\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~285_combout\ = (\amt[3]~input_o\ & ((\Mux127~284_combout\ & (\a[63]~input_o\)) # (!\Mux127~284_combout\ & ((\a[62]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[63]~input_o\,
	datab => \amt[3]~input_o\,
	datac => \Mux127~284_combout\,
	datad => \a[62]~input_o\,
	combout => \Mux127~285_combout\);

-- Location: LCCOMB_X55_Y3_N12
\Mux127~473\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~473_combout\ = (\amt[4]~input_o\ & (\a[63]~input_o\)) # (!\amt[4]~input_o\ & (((\Mux127~285_combout\) # (\Mux127~283_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \a[63]~input_o\,
	datac => \Mux127~285_combout\,
	datad => \Mux127~283_combout\,
	combout => \Mux127~473_combout\);

-- Location: LCCOMB_X55_Y3_N24
\Mux232~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux232~1_combout\ = (\Mux232~0_combout\ & (((\Mux127~476_combout\)) # (!\Mux253~1_combout\))) # (!\Mux232~0_combout\ & (\Mux253~1_combout\ & ((\Mux127~473_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux232~0_combout\,
	datab => \Mux253~1_combout\,
	datac => \Mux127~476_combout\,
	datad => \Mux127~473_combout\,
	combout => \Mux232~1_combout\);

-- Location: LCCOMB_X52_Y5_N12
\Mux127~439\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~439_combout\ = (!\amt[2]~input_o\ & (!\amt[1]~input_o\ & (\a[63]~input_o\ & !\amt[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datab => \amt[1]~input_o\,
	datac => \a[63]~input_o\,
	datad => \amt[0]~input_o\,
	combout => \Mux127~439_combout\);

-- Location: LCCOMB_X52_Y5_N8
\Mux127~479\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~479_combout\ = (!\amt[4]~input_o\ & ((\amt[3]~input_o\ & ((\Mux127~439_combout\))) # (!\amt[3]~input_o\ & (\Mux127~308_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datab => \amt[4]~input_o\,
	datac => \Mux127~308_combout\,
	datad => \Mux127~439_combout\,
	combout => \Mux127~479_combout\);

-- Location: LCCOMB_X52_Y5_N6
\Mux127~516\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~516_combout\ = (\amt[3]~input_o\ & (\a[63]~input_o\)) # (!\amt[3]~input_o\ & ((\amt[4]~input_o\ & (\a[63]~input_o\)) # (!\amt[4]~input_o\ & ((\Mux127~308_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datab => \a[63]~input_o\,
	datac => \Mux127~308_combout\,
	datad => \amt[4]~input_o\,
	combout => \Mux127~516_combout\);

-- Location: LCCOMB_X52_Y5_N26
\Mux231~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux231~0_combout\ = (\Mux253~1_combout\ & ((\Mux253~0_combout\) # ((\Mux127~516_combout\)))) # (!\Mux253~1_combout\ & (!\Mux253~0_combout\ & (\Mux127~479_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux253~1_combout\,
	datab => \Mux253~0_combout\,
	datac => \Mux127~479_combout\,
	datad => \Mux127~516_combout\,
	combout => \Mux231~0_combout\);

-- Location: LCCOMB_X53_Y1_N16
\Mux127~305\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~305_combout\ = (!\amt[3]~input_o\ & ((\amt[2]~input_o\ & ((\Mux127~210_combout\))) # (!\amt[2]~input_o\ & (\Mux127~304_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[2]~input_o\,
	datab => \amt[3]~input_o\,
	datac => \Mux127~304_combout\,
	datad => \Mux127~210_combout\,
	combout => \Mux127~305_combout\);

-- Location: LCCOMB_X52_Y5_N18
\Mux127~477\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~477_combout\ = (\amt[4]~input_o\ & (\Mux127~316_combout\)) # (!\amt[4]~input_o\ & (((\Mux127~303_combout\) # (\Mux127~305_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~316_combout\,
	datab => \amt[4]~input_o\,
	datac => \Mux127~303_combout\,
	datad => \Mux127~305_combout\,
	combout => \Mux127~477_combout\);

-- Location: LCCOMB_X52_Y5_N24
\Mux127~480\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~480_combout\ = (\amt[4]~input_o\ & ((\Mux127~302_combout\))) # (!\amt[4]~input_o\ & (\Mux127~313_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[4]~input_o\,
	datac => \Mux127~313_combout\,
	datad => \Mux127~302_combout\,
	combout => \Mux127~480_combout\);

-- Location: LCCOMB_X52_Y5_N14
\Mux231~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux231~1_combout\ = (\Mux231~0_combout\ & (((\Mux127~480_combout\) # (!\Mux253~0_combout\)))) # (!\Mux231~0_combout\ & (\Mux127~477_combout\ & (\Mux253~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux231~0_combout\,
	datab => \Mux127~477_combout\,
	datac => \Mux253~0_combout\,
	datad => \Mux127~480_combout\,
	combout => \Mux231~1_combout\);

-- Location: LCCOMB_X60_Y2_N24
\Mux127~478\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~478_combout\ = (!\amt[3]~input_o\ & !\amt[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datad => \amt[4]~input_o\,
	combout => \Mux127~478_combout\);

-- Location: LCCOMB_X60_Y2_N14
\Mux127~481\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~481_combout\ = (\Mux127~478_combout\ & ((\Mux127~59_combout\) # ((\Mux127~62_combout\ & \amt[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~62_combout\,
	datab => \Mux127~478_combout\,
	datac => \amt[2]~input_o\,
	datad => \Mux127~59_combout\,
	combout => \Mux127~481_combout\);

-- Location: LCCOMB_X60_Y2_N28
\Mux127~517\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~517_combout\ = (\Mux127~481_combout\) # ((\a[63]~input_o\ & ((\amt[4]~input_o\) # (\amt[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[63]~input_o\,
	datab => \amt[4]~input_o\,
	datac => \Mux127~481_combout\,
	datad => \amt[3]~input_o\,
	combout => \Mux127~517_combout\);

-- Location: LCCOMB_X58_Y3_N30
\Mux127~483\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~483_combout\ = (\amt[4]~input_o\ & ((\Mux127~320_combout\))) # (!\amt[4]~input_o\ & (\Mux127~327_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[4]~input_o\,
	datac => \Mux127~327_combout\,
	datad => \Mux127~320_combout\,
	combout => \Mux127~483_combout\);

-- Location: LCCOMB_X60_Y2_N8
\Mux127~482\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~482_combout\ = (\amt[4]~input_o\ & ((\Mux127~330_combout\))) # (!\amt[4]~input_o\ & (\Mux127~323_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~323_combout\,
	datab => \amt[4]~input_o\,
	datad => \Mux127~330_combout\,
	combout => \Mux127~482_combout\);

-- Location: LCCOMB_X60_Y2_N18
\Mux230~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux230~0_combout\ = (\Mux253~1_combout\ & (((\Mux253~0_combout\)))) # (!\Mux253~1_combout\ & ((\Mux253~0_combout\ & ((\Mux127~482_combout\))) # (!\Mux253~0_combout\ & (\Mux127~481_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux253~1_combout\,
	datab => \Mux127~481_combout\,
	datac => \Mux127~482_combout\,
	datad => \Mux253~0_combout\,
	combout => \Mux230~0_combout\);

-- Location: LCCOMB_X60_Y2_N16
\Mux230~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux230~1_combout\ = (\Mux253~1_combout\ & ((\Mux230~0_combout\ & ((\Mux127~483_combout\))) # (!\Mux230~0_combout\ & (\Mux127~517_combout\)))) # (!\Mux253~1_combout\ & (((\Mux230~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux253~1_combout\,
	datab => \Mux127~517_combout\,
	datac => \Mux127~483_combout\,
	datad => \Mux230~0_combout\,
	combout => \Mux230~1_combout\);

-- Location: LCCOMB_X57_Y4_N14
\Mux127~518\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~518_combout\ = (\amt[4]~input_o\ & (\a[63]~input_o\)) # (!\amt[4]~input_o\ & ((\amt[3]~input_o\ & (\a[63]~input_o\)) # (!\amt[3]~input_o\ & ((\Mux127~134_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[63]~input_o\,
	datab => \amt[4]~input_o\,
	datac => \amt[3]~input_o\,
	datad => \Mux127~134_combout\,
	combout => \Mux127~518_combout\);

-- Location: LCCOMB_X57_Y4_N2
\Mux127~485\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~485_combout\ = (\Mux127~478_combout\ & ((\amt[2]~input_o\ & ((\Mux127~137_combout\))) # (!\amt[2]~input_o\ & (\Mux127~133_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~133_combout\,
	datab => \amt[2]~input_o\,
	datac => \Mux127~137_combout\,
	datad => \Mux127~478_combout\,
	combout => \Mux127~485_combout\);

-- Location: LCCOMB_X57_Y4_N20
\Mux229~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux229~0_combout\ = (\Mux253~0_combout\ & (\Mux253~1_combout\)) # (!\Mux253~0_combout\ & ((\Mux253~1_combout\ & (\Mux127~518_combout\)) # (!\Mux253~1_combout\ & ((\Mux127~485_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux253~0_combout\,
	datab => \Mux253~1_combout\,
	datac => \Mux127~518_combout\,
	datad => \Mux127~485_combout\,
	combout => \Mux229~0_combout\);

-- Location: LCCOMB_X57_Y4_N8
\Mux127~484\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~484_combout\ = (\amt[4]~input_o\ & (\Mux127~345_combout\)) # (!\amt[4]~input_o\ & ((\Mux127~337_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[4]~input_o\,
	datac => \Mux127~345_combout\,
	datad => \Mux127~337_combout\,
	combout => \Mux127~484_combout\);

-- Location: LCCOMB_X57_Y4_N18
\Mux127~486\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~486_combout\ = (\amt[4]~input_o\ & ((\Mux127~333_combout\) # ((\Mux127~332_combout\)))) # (!\amt[4]~input_o\ & (((\Mux127~342_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \Mux127~333_combout\,
	datac => \Mux127~332_combout\,
	datad => \Mux127~342_combout\,
	combout => \Mux127~486_combout\);

-- Location: LCCOMB_X57_Y4_N28
\Mux229~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux229~1_combout\ = (\Mux253~0_combout\ & ((\Mux229~0_combout\ & ((\Mux127~486_combout\))) # (!\Mux229~0_combout\ & (\Mux127~484_combout\)))) # (!\Mux253~0_combout\ & (\Mux229~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux253~0_combout\,
	datab => \Mux229~0_combout\,
	datac => \Mux127~484_combout\,
	datad => \Mux127~486_combout\,
	combout => \Mux229~1_combout\);

-- Location: LCCOMB_X58_Y2_N6
\Mux127~488\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~488_combout\ = (\amt[4]~input_o\ & (\Mux127~350_combout\)) # (!\amt[4]~input_o\ & ((\Mux127~359_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datac => \Mux127~350_combout\,
	datad => \Mux127~359_combout\,
	combout => \Mux127~488_combout\);

-- Location: LCCOMB_X58_Y2_N10
\Mux127~519\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~519_combout\ = (\amt[4]~input_o\ & (((\a[63]~input_o\)))) # (!\amt[4]~input_o\ & ((\amt[3]~input_o\ & (\a[63]~input_o\)) # (!\amt[3]~input_o\ & ((\Mux127~163_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \amt[3]~input_o\,
	datac => \a[63]~input_o\,
	datad => \Mux127~163_combout\,
	combout => \Mux127~519_combout\);

-- Location: LCCOMB_X55_Y4_N26
\Mux127~520\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~520_combout\ = (!\amt[3]~input_o\ & (!\amt[4]~input_o\ & \Mux127~184_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datac => \amt[4]~input_o\,
	datad => \Mux127~184_combout\,
	combout => \Mux127~520_combout\);

-- Location: LCCOMB_X54_Y2_N14
\Mux127~352\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~352_combout\ = (\Mux127~77_combout\ & ((\Mux127~181_combout\) # ((\Mux127~68_combout\ & \Mux127~204_combout\)))) # (!\Mux127~77_combout\ & (\Mux127~68_combout\ & (\Mux127~204_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~77_combout\,
	datab => \Mux127~68_combout\,
	datac => \Mux127~204_combout\,
	datad => \Mux127~181_combout\,
	combout => \Mux127~352_combout\);

-- Location: LCCOMB_X58_Y2_N28
\Mux127~354\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~354_combout\ = (\Mux127~353_combout\) # ((\Mux127~352_combout\) # ((\Mux128~0_combout\ & \Mux127~162_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~353_combout\,
	datab => \Mux128~0_combout\,
	datac => \Mux127~162_combout\,
	datad => \Mux127~352_combout\,
	combout => \Mux127~354_combout\);

-- Location: LCCOMB_X58_Y2_N18
\Mux127~487\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~487_combout\ = (\amt[4]~input_o\ & (\Mux127~362_combout\)) # (!\amt[4]~input_o\ & ((\Mux127~354_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datac => \Mux127~362_combout\,
	datad => \Mux127~354_combout\,
	combout => \Mux127~487_combout\);

-- Location: LCCOMB_X58_Y2_N20
\Mux228~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux228~0_combout\ = (\Mux253~0_combout\ & (((\Mux253~1_combout\) # (\Mux127~487_combout\)))) # (!\Mux253~0_combout\ & (\Mux127~520_combout\ & (!\Mux253~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux253~0_combout\,
	datab => \Mux127~520_combout\,
	datac => \Mux253~1_combout\,
	datad => \Mux127~487_combout\,
	combout => \Mux228~0_combout\);

-- Location: LCCOMB_X58_Y2_N0
\Mux228~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux228~1_combout\ = (\Mux253~1_combout\ & ((\Mux228~0_combout\ & (\Mux127~488_combout\)) # (!\Mux228~0_combout\ & ((\Mux127~519_combout\))))) # (!\Mux253~1_combout\ & (((\Mux228~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~488_combout\,
	datab => \Mux253~1_combout\,
	datac => \Mux127~519_combout\,
	datad => \Mux228~0_combout\,
	combout => \Mux228~1_combout\);

-- Location: LCCOMB_X52_Y1_N4
\Mux127~521\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~521_combout\ = (!\amt[3]~input_o\ & (!\amt[4]~input_o\ & \Mux127~223_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datac => \amt[4]~input_o\,
	datad => \Mux127~223_combout\,
	combout => \Mux127~521_combout\);

-- Location: LCCOMB_X52_Y1_N12
\Mux227~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux227~0_combout\ = (\Mux253~0_combout\ & (((\Mux253~1_combout\)))) # (!\Mux253~0_combout\ & ((\Mux253~1_combout\ & (\Mux127~490_combout\)) # (!\Mux253~1_combout\ & ((\Mux127~521_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~490_combout\,
	datab => \Mux253~0_combout\,
	datac => \Mux127~521_combout\,
	datad => \Mux253~1_combout\,
	combout => \Mux227~0_combout\);

-- Location: LCCOMB_X52_Y1_N28
\Mux127~489\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~489_combout\ = (\amt[4]~input_o\ & (\Mux127~380_combout\)) # (!\amt[4]~input_o\ & ((\Mux127~366_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[4]~input_o\,
	datac => \Mux127~380_combout\,
	datad => \Mux127~366_combout\,
	combout => \Mux127~489_combout\);

-- Location: LCCOMB_X58_Y5_N30
\Mux127~374\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~374_combout\ = (\Mux127~68_combout\ & ((\amt[0]~input_o\ & ((\Mux127~71_combout\))) # (!\amt[0]~input_o\ & (\Mux127~164_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \Mux127~68_combout\,
	datac => \Mux127~164_combout\,
	datad => \Mux127~71_combout\,
	combout => \Mux127~374_combout\);

-- Location: LCCOMB_X58_Y5_N24
\Mux127~376\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~376_combout\ = (\Mux127~77_combout\ & ((\Mux127~375_combout\) # ((\Mux128~0_combout\ & \Mux127~231_combout\)))) # (!\Mux127~77_combout\ & (\Mux128~0_combout\ & (\Mux127~231_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~77_combout\,
	datab => \Mux128~0_combout\,
	datac => \Mux127~231_combout\,
	datad => \Mux127~375_combout\,
	combout => \Mux127~376_combout\);

-- Location: LCCOMB_X58_Y5_N22
\Mux127~377\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~377_combout\ = (\Mux127~374_combout\) # ((\Mux127~376_combout\) # ((\Mux127~218_combout\ & \Mux127~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~218_combout\,
	datab => \Mux127~69_combout\,
	datac => \Mux127~374_combout\,
	datad => \Mux127~376_combout\,
	combout => \Mux127~377_combout\);

-- Location: LCCOMB_X52_Y1_N18
\Mux127~491\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~491_combout\ = (\amt[4]~input_o\ & ((\Mux127~370_combout\))) # (!\amt[4]~input_o\ & (\Mux127~377_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[4]~input_o\,
	datac => \Mux127~377_combout\,
	datad => \Mux127~370_combout\,
	combout => \Mux127~491_combout\);

-- Location: LCCOMB_X52_Y1_N24
\Mux227~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux227~1_combout\ = (\Mux227~0_combout\ & (((\Mux127~491_combout\) # (!\Mux253~0_combout\)))) # (!\Mux227~0_combout\ & (\Mux127~489_combout\ & (\Mux253~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux227~0_combout\,
	datab => \Mux127~489_combout\,
	datac => \Mux253~0_combout\,
	datad => \Mux127~491_combout\,
	combout => \Mux227~1_combout\);

-- Location: LCCOMB_X57_Y2_N4
\Mux127~494\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~494_combout\ = (\amt[4]~input_o\ & (\Mux127~384_combout\)) # (!\amt[4]~input_o\ & ((\Mux127~393_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[4]~input_o\,
	datac => \Mux127~384_combout\,
	datad => \Mux127~393_combout\,
	combout => \Mux127~494_combout\);

-- Location: LCCOMB_X57_Y2_N26
\Mux127~492\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~492_combout\ = (\amt[4]~input_o\ & (\a[63]~input_o\)) # (!\amt[4]~input_o\ & ((\Mux128~0_combout\ & ((\Mux127~62_combout\))) # (!\Mux128~0_combout\ & (\a[63]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[63]~input_o\,
	datab => \Mux127~62_combout\,
	datac => \amt[4]~input_o\,
	datad => \Mux128~0_combout\,
	combout => \Mux127~492_combout\);

-- Location: LCCOMB_X57_Y2_N24
\Mux127~493\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~493_combout\ = (\amt[4]~input_o\ & (\Mux127~396_combout\)) # (!\amt[4]~input_o\ & ((\Mux127~388_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux127~396_combout\,
	datac => \Mux127~388_combout\,
	datad => \amt[4]~input_o\,
	combout => \Mux127~493_combout\);

-- Location: LCCOMB_X57_Y2_N18
\Mux226~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux226~0_combout\ = (\Mux253~0_combout\ & (((\Mux253~1_combout\) # (\Mux127~493_combout\)))) # (!\Mux253~0_combout\ & (\Mux127~522_combout\ & (!\Mux253~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~522_combout\,
	datab => \Mux253~0_combout\,
	datac => \Mux253~1_combout\,
	datad => \Mux127~493_combout\,
	combout => \Mux226~0_combout\);

-- Location: LCCOMB_X57_Y2_N14
\Mux226~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux226~1_combout\ = (\Mux253~1_combout\ & ((\Mux226~0_combout\ & (\Mux127~494_combout\)) # (!\Mux226~0_combout\ & ((\Mux127~492_combout\))))) # (!\Mux253~1_combout\ & (((\Mux226~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux253~1_combout\,
	datab => \Mux127~494_combout\,
	datac => \Mux127~492_combout\,
	datad => \Mux226~0_combout\,
	combout => \Mux226~1_combout\);

-- Location: LCCOMB_X58_Y1_N18
\Mux127~523\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~523_combout\ = (!\amt[3]~input_o\ & (!\amt[2]~input_o\ & (!\amt[4]~input_o\ & \Mux127~137_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datab => \amt[2]~input_o\,
	datac => \amt[4]~input_o\,
	datad => \Mux127~137_combout\,
	combout => \Mux127~523_combout\);

-- Location: LCCOMB_X57_Y4_N26
\Mux225~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux225~0_combout\ = (\Mux253~1_combout\ & ((\Mux127~496_combout\) # ((\Mux253~0_combout\)))) # (!\Mux253~1_combout\ & (((!\Mux253~0_combout\ & \Mux127~523_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~496_combout\,
	datab => \Mux253~1_combout\,
	datac => \Mux253~0_combout\,
	datad => \Mux127~523_combout\,
	combout => \Mux225~0_combout\);

-- Location: LCCOMB_X58_Y4_N20
\Mux127~495\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~495_combout\ = (\amt[4]~input_o\ & (\Mux127~415_combout\)) # (!\amt[4]~input_o\ & ((\Mux127~400_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[4]~input_o\,
	datac => \Mux127~415_combout\,
	datad => \Mux127~400_combout\,
	combout => \Mux127~495_combout\);

-- Location: LCCOMB_X58_Y4_N6
\Mux127~497\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~497_combout\ = (\amt[4]~input_o\ & (\Mux127~403_combout\)) # (!\amt[4]~input_o\ & ((\Mux127~412_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[4]~input_o\,
	datac => \Mux127~403_combout\,
	datad => \Mux127~412_combout\,
	combout => \Mux127~497_combout\);

-- Location: LCCOMB_X58_Y4_N12
\Mux225~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux225~1_combout\ = (\Mux225~0_combout\ & (((\Mux127~497_combout\) # (!\Mux253~0_combout\)))) # (!\Mux225~0_combout\ & (\Mux127~495_combout\ & (\Mux253~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux225~0_combout\,
	datab => \Mux127~495_combout\,
	datac => \Mux253~0_combout\,
	datad => \Mux127~497_combout\,
	combout => \Mux225~1_combout\);

-- Location: LCCOMB_X52_Y4_N26
\Mux224~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux224~1_combout\ = (\Mux127~284_combout\ & (\a[63]~input_o\)) # (!\Mux127~284_combout\ & ((\Mux127~478_combout\ & ((\a[62]~input_o\))) # (!\Mux127~478_combout\ & (\a[63]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[63]~input_o\,
	datab => \Mux127~284_combout\,
	datac => \a[62]~input_o\,
	datad => \Mux127~478_combout\,
	combout => \Mux224~1_combout\);

-- Location: LCCOMB_X52_Y4_N0
\Mux192~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux192~0_combout\ = (!\lar[0]~input_o\ & (!\amt[4]~input_o\ & (\Mux127~61_combout\ & !\Mux127~405_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[0]~input_o\,
	datab => \amt[4]~input_o\,
	datac => \Mux127~61_combout\,
	datad => \Mux127~405_combout\,
	combout => \Mux192~0_combout\);

-- Location: LCCOMB_X52_Y4_N20
\Mux224~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux224~2_combout\ = (!\lar[1]~input_o\ & ((\Mux192~0_combout\) # ((\lar[0]~input_o\ & \Mux224~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[0]~input_o\,
	datab => \lar[1]~input_o\,
	datac => \Mux224~1_combout\,
	datad => \Mux192~0_combout\,
	combout => \Mux224~2_combout\);

-- Location: LCCOMB_X55_Y5_N14
\Mux127~429\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~429_combout\ = (\Mux127~77_combout\ & ((\Mux127~194_combout\) # ((\Mux128~0_combout\ & \Mux127~201_combout\)))) # (!\Mux127~77_combout\ & (\Mux128~0_combout\ & (\Mux127~201_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~77_combout\,
	datab => \Mux128~0_combout\,
	datac => \Mux127~201_combout\,
	datad => \Mux127~194_combout\,
	combout => \Mux127~429_combout\);

-- Location: LCCOMB_X55_Y5_N20
\Mux127~430\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~430_combout\ = (\Mux127~69_combout\ & ((\amt[0]~input_o\ & (\Mux127~186_combout\)) # (!\amt[0]~input_o\ & ((\Mux127~142_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~186_combout\,
	datab => \amt[0]~input_o\,
	datac => \Mux127~142_combout\,
	datad => \Mux127~69_combout\,
	combout => \Mux127~430_combout\);

-- Location: LCCOMB_X55_Y5_N30
\Mux127~431\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~431_combout\ = (\Mux127~429_combout\) # ((\Mux127~430_combout\) # ((\Mux127~189_combout\ & \Mux127~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~189_combout\,
	datab => \Mux127~68_combout\,
	datac => \Mux127~429_combout\,
	datad => \Mux127~430_combout\,
	combout => \Mux127~431_combout\);

-- Location: LCCOMB_X52_Y4_N14
\Mux224~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux224~3_combout\ = (\lar[1]~input_o\ & ((\amt[4]~input_o\ & (\Mux127~431_combout\)) # (!\amt[4]~input_o\ & ((\Mux127~423_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[1]~input_o\,
	datab => \amt[4]~input_o\,
	datac => \Mux127~431_combout\,
	datad => \Mux127~423_combout\,
	combout => \Mux224~3_combout\);

-- Location: LCCOMB_X52_Y4_N24
\Mux127~498\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~498_combout\ = (\Mux127~419_combout\) # (\Mux127~418_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux127~419_combout\,
	datad => \Mux127~418_combout\,
	combout => \Mux127~498_combout\);

-- Location: LCCOMB_X52_Y4_N6
\Mux224~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux224~0_combout\ = (!\amt[5]~input_o\ & ((\amt[4]~input_o\ & ((\Mux127~498_combout\))) # (!\amt[4]~input_o\ & (\Mux127~428_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \amt[4]~input_o\,
	datac => \Mux127~428_combout\,
	datad => \Mux127~498_combout\,
	combout => \Mux224~0_combout\);

-- Location: LCCOMB_X52_Y4_N16
\Mux224~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux224~4_combout\ = (\Mux224~0_combout\) # ((\amt[5]~input_o\ & ((\Mux224~2_combout\) # (\Mux224~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \Mux224~2_combout\,
	datac => \Mux224~3_combout\,
	datad => \Mux224~0_combout\,
	combout => \Mux224~4_combout\);

-- Location: LCCOMB_X60_Y1_N0
\Mux223~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux223~1_combout\ = (!\lar[1]~input_o\ & \a[63]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lar[1]~input_o\,
	datad => \a[63]~input_o\,
	combout => \Mux223~1_combout\);

-- Location: LCCOMB_X60_Y1_N22
\Mux223~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux223~2_combout\ = (\Mux223~1_combout\ & ((\lar[0]~input_o\) # ((!\Mux127~284_combout\ & \Mux127~478_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[0]~input_o\,
	datab => \Mux127~284_combout\,
	datac => \Mux127~478_combout\,
	datad => \Mux223~1_combout\,
	combout => \Mux223~2_combout\);

-- Location: LCCOMB_X60_Y1_N26
\Mux223~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux223~0_combout\ = (!\amt[5]~input_o\ & ((\amt[4]~input_o\ & ((\Mux127~435_combout\))) # (!\amt[4]~input_o\ & (\Mux127~442_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~442_combout\,
	datab => \amt[4]~input_o\,
	datac => \amt[5]~input_o\,
	datad => \Mux127~435_combout\,
	combout => \Mux223~0_combout\);

-- Location: LCCOMB_X53_Y5_N0
\Mux127~436\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~436_combout\ = (\Mux127~68_combout\ & ((\amt[0]~input_o\ & ((\Mux127~104_combout\))) # (!\amt[0]~input_o\ & (\Mux127~198_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[0]~input_o\,
	datab => \Mux127~198_combout\,
	datac => \Mux127~68_combout\,
	datad => \Mux127~104_combout\,
	combout => \Mux127~436_combout\);

-- Location: LCCOMB_X53_Y5_N4
\Mux127~499\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~499_combout\ = (\Mux127~436_combout\) # ((\Mux127~433_combout\) # ((\Mux127~69_combout\ & \Mux127~234_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~69_combout\,
	datab => \Mux127~436_combout\,
	datac => \Mux127~234_combout\,
	datad => \Mux127~433_combout\,
	combout => \Mux127~499_combout\);

-- Location: LCCOMB_X60_Y1_N28
\Mux223~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux223~3_combout\ = (\lar[1]~input_o\ & ((\amt[4]~input_o\ & (\Mux127~445_combout\)) # (!\amt[4]~input_o\ & ((\Mux127~499_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~445_combout\,
	datab => \amt[4]~input_o\,
	datac => \lar[1]~input_o\,
	datad => \Mux127~499_combout\,
	combout => \Mux223~3_combout\);

-- Location: LCCOMB_X60_Y1_N14
\Mux223~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux223~4_combout\ = (\Mux223~0_combout\) # ((\amt[5]~input_o\ & ((\Mux223~2_combout\) # (\Mux223~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux223~2_combout\,
	datab => \amt[5]~input_o\,
	datac => \Mux223~0_combout\,
	datad => \Mux223~3_combout\,
	combout => \Mux223~4_combout\);

-- Location: LCCOMB_X60_Y1_N4
\Mux222~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux222~2_combout\ = (\lar[1]~input_o\ & (((\Mux222~1_combout\)))) # (!\lar[1]~input_o\ & (\lar[0]~input_o\ & ((\a[63]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[0]~input_o\,
	datab => \lar[1]~input_o\,
	datac => \Mux222~1_combout\,
	datad => \a[63]~input_o\,
	combout => \Mux222~2_combout\);

-- Location: LCCOMB_X60_Y1_N10
\Mux222~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux222~3_combout\ = (\amt[5]~input_o\ & (\Mux222~2_combout\)) # (!\amt[5]~input_o\ & ((\Mux222~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \amt[5]~input_o\,
	datac => \Mux222~2_combout\,
	datad => \Mux222~0_combout\,
	combout => \Mux222~3_combout\);

-- Location: LCCOMB_X56_Y4_N30
\Mux253~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux253~4_combout\ = (!\lar[1]~input_o\ & \lar[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lar[1]~input_o\,
	datad => \lar[0]~input_o\,
	combout => \Mux253~4_combout\);

-- Location: LCCOMB_X56_Y4_N0
\Mux193~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux193~1_combout\ = (\lar[1]~input_o\) # ((\lar[0]~input_o\ & \amt[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lar[0]~input_o\,
	datac => \lar[1]~input_o\,
	datad => \amt[5]~input_o\,
	combout => \Mux193~1_combout\);

-- Location: LCCOMB_X60_Y3_N12
\Mux127~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~139_combout\ = ((\amt[3]~input_o\ & (\amt[4]~input_o\ & \Mux127~138_combout\))) # (!\Mux127~135_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datab => \amt[4]~input_o\,
	datac => \Mux127~138_combout\,
	datad => \Mux127~135_combout\,
	combout => \Mux127~139_combout\);

-- Location: LCCOMB_X60_Y3_N0
\Mux221~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux221~0_combout\ = (\Mux193~0_combout\ & ((\Mux193~1_combout\ & (\Mux127~131_combout\)) # (!\Mux193~1_combout\ & ((\Mux127~139_combout\))))) # (!\Mux193~0_combout\ & (\Mux193~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux193~0_combout\,
	datab => \Mux193~1_combout\,
	datac => \Mux127~131_combout\,
	datad => \Mux127~139_combout\,
	combout => \Mux221~0_combout\);

-- Location: LCCOMB_X60_Y3_N18
\Mux221~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux221~1_combout\ = (\Mux253~4_combout\ & ((\Mux221~0_combout\ & ((\a[63]~input_o\))) # (!\Mux221~0_combout\ & (\Mux127~136_combout\)))) # (!\Mux253~4_combout\ & (((\Mux221~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~136_combout\,
	datab => \a[63]~input_o\,
	datac => \Mux253~4_combout\,
	datad => \Mux221~0_combout\,
	combout => \Mux221~1_combout\);

-- Location: LCCOMB_X60_Y3_N8
\Mux221~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux221~2_combout\ = (\amt[5]~input_o\ & ((\lar[1]~input_o\ & (\Mux127~159_combout\)) # (!\lar[1]~input_o\ & ((\Mux221~1_combout\))))) # (!\amt[5]~input_o\ & (((\Mux221~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \lar[1]~input_o\,
	datac => \Mux127~159_combout\,
	datad => \Mux221~1_combout\,
	combout => \Mux221~2_combout\);

-- Location: LCCOMB_X57_Y4_N16
\Mux193~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux193~0_combout\ = (\lar[1]~input_o\) # ((!\lar[0]~input_o\ & !\amt[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lar[1]~input_o\,
	datac => \lar[0]~input_o\,
	datad => \amt[5]~input_o\,
	combout => \Mux193~0_combout\);

-- Location: LCCOMB_X59_Y4_N16
\Mux220~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux220~0_combout\ = (\Mux193~0_combout\ & ((\Mux193~1_combout\ & (\Mux127~183_combout\)) # (!\Mux193~1_combout\ & ((\Mux127~185_combout\))))) # (!\Mux193~0_combout\ & (((\Mux193~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~183_combout\,
	datab => \Mux193~0_combout\,
	datac => \Mux193~1_combout\,
	datad => \Mux127~185_combout\,
	combout => \Mux220~0_combout\);

-- Location: LCCOMB_X59_Y4_N30
\Mux220~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux220~1_combout\ = (\Mux253~4_combout\ & ((\Mux220~0_combout\ & (\a[63]~input_o\)) # (!\Mux220~0_combout\ & ((\Mux127~179_combout\))))) # (!\Mux253~4_combout\ & (((\Mux220~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[63]~input_o\,
	datab => \Mux253~4_combout\,
	datac => \Mux127~179_combout\,
	datad => \Mux220~0_combout\,
	combout => \Mux220~1_combout\);

-- Location: LCCOMB_X59_Y4_N20
\Mux220~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux220~2_combout\ = (\amt[5]~input_o\ & ((\lar[1]~input_o\ & ((\Mux127~206_combout\))) # (!\lar[1]~input_o\ & (\Mux220~1_combout\)))) # (!\amt[5]~input_o\ & (((\Mux220~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \lar[1]~input_o\,
	datac => \Mux220~1_combout\,
	datad => \Mux127~206_combout\,
	combout => \Mux220~2_combout\);

-- Location: LCCOMB_X52_Y2_N8
\Mux219~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux219~0_combout\ = (\Mux193~0_combout\ & ((\Mux193~1_combout\ & ((\Mux127~220_combout\))) # (!\Mux193~1_combout\ & (\Mux127~226_combout\)))) # (!\Mux193~0_combout\ & (\Mux193~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux193~0_combout\,
	datab => \Mux193~1_combout\,
	datac => \Mux127~226_combout\,
	datad => \Mux127~220_combout\,
	combout => \Mux219~0_combout\);

-- Location: LCCOMB_X52_Y2_N2
\Mux219~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux219~1_combout\ = (\Mux253~4_combout\ & ((\Mux219~0_combout\ & (\a[63]~input_o\)) # (!\Mux219~0_combout\ & ((\Mux127~222_combout\))))) # (!\Mux253~4_combout\ & (((\Mux219~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux253~4_combout\,
	datab => \a[63]~input_o\,
	datac => \Mux219~0_combout\,
	datad => \Mux127~222_combout\,
	combout => \Mux219~1_combout\);

-- Location: LCCOMB_X52_Y2_N24
\Mux219~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux219~2_combout\ = (\amt[5]~input_o\ & ((\lar[1]~input_o\ & (\Mux127~238_combout\)) # (!\lar[1]~input_o\ & ((\Mux219~1_combout\))))) # (!\amt[5]~input_o\ & (((\Mux219~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \Mux127~238_combout\,
	datac => \lar[1]~input_o\,
	datad => \Mux219~1_combout\,
	combout => \Mux219~2_combout\);

-- Location: LCCOMB_X59_Y1_N4
\Mux218~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux218~0_combout\ = (\Mux193~0_combout\ & ((\Mux193~1_combout\ & (\Mux127~246_combout\)) # (!\Mux193~1_combout\ & ((\Mux127~247_combout\))))) # (!\Mux193~0_combout\ & (((\Mux193~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux193~0_combout\,
	datab => \Mux127~246_combout\,
	datac => \Mux193~1_combout\,
	datad => \Mux127~247_combout\,
	combout => \Mux218~0_combout\);

-- Location: LCCOMB_X59_Y1_N14
\Mux218~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux218~1_combout\ = (\Mux253~4_combout\ & ((\Mux218~0_combout\ & (\a[63]~input_o\)) # (!\Mux218~0_combout\ & ((\Mux127~245_combout\))))) # (!\Mux253~4_combout\ & (((\Mux218~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux253~4_combout\,
	datab => \a[63]~input_o\,
	datac => \Mux218~0_combout\,
	datad => \Mux127~245_combout\,
	combout => \Mux218~1_combout\);

-- Location: LCCOMB_X59_Y1_N28
\Mux218~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux218~2_combout\ = (\lar[1]~input_o\ & ((\amt[5]~input_o\ & ((\Mux127~255_combout\))) # (!\amt[5]~input_o\ & (\Mux218~1_combout\)))) # (!\lar[1]~input_o\ & (((\Mux218~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[1]~input_o\,
	datab => \amt[5]~input_o\,
	datac => \Mux218~1_combout\,
	datad => \Mux127~255_combout\,
	combout => \Mux218~2_combout\);

-- Location: LCCOMB_X58_Y1_N22
\Mux217~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux217~0_combout\ = (\Mux193~0_combout\ & ((\Mux193~1_combout\ & ((\Mux127~264_combout\))) # (!\Mux193~1_combout\ & (\Mux127~269_combout\)))) # (!\Mux193~0_combout\ & (\Mux193~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux193~0_combout\,
	datab => \Mux193~1_combout\,
	datac => \Mux127~269_combout\,
	datad => \Mux127~264_combout\,
	combout => \Mux217~0_combout\);

-- Location: LCCOMB_X58_Y1_N12
\Mux217~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux217~1_combout\ = (\Mux253~4_combout\ & ((\Mux217~0_combout\ & (\a[63]~input_o\)) # (!\Mux217~0_combout\ & ((\Mux127~267_combout\))))) # (!\Mux253~4_combout\ & (((\Mux217~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[63]~input_o\,
	datab => \Mux253~4_combout\,
	datac => \Mux217~0_combout\,
	datad => \Mux127~267_combout\,
	combout => \Mux217~1_combout\);

-- Location: LCCOMB_X58_Y1_N10
\Mux217~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux217~2_combout\ = (\amt[5]~input_o\ & ((\lar[1]~input_o\ & (\Mux127~277_combout\)) # (!\lar[1]~input_o\ & ((\Mux217~1_combout\))))) # (!\amt[5]~input_o\ & (((\Mux217~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \lar[1]~input_o\,
	datac => \Mux127~277_combout\,
	datad => \Mux217~1_combout\,
	combout => \Mux217~2_combout\);

-- Location: LCCOMB_X54_Y3_N10
\Mux216~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux216~0_combout\ = (\Mux193~1_combout\ & (((\Mux127~289_combout\)) # (!\Mux193~0_combout\))) # (!\Mux193~1_combout\ & (\Mux193~0_combout\ & ((\Mux127~291_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux193~1_combout\,
	datab => \Mux193~0_combout\,
	datac => \Mux127~289_combout\,
	datad => \Mux127~291_combout\,
	combout => \Mux216~0_combout\);

-- Location: LCCOMB_X54_Y3_N20
\Mux216~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux216~1_combout\ = (\Mux253~4_combout\ & ((\Mux216~0_combout\ & (\a[63]~input_o\)) # (!\Mux216~0_combout\ & ((\Mux127~286_combout\))))) # (!\Mux253~4_combout\ & (((\Mux216~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[63]~input_o\,
	datab => \Mux253~4_combout\,
	datac => \Mux127~286_combout\,
	datad => \Mux216~0_combout\,
	combout => \Mux216~1_combout\);

-- Location: LCCOMB_X54_Y3_N6
\Mux216~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux216~2_combout\ = (\lar[1]~input_o\ & ((\amt[5]~input_o\ & (\Mux127~297_combout\)) # (!\amt[5]~input_o\ & ((\Mux216~1_combout\))))) # (!\lar[1]~input_o\ & (((\Mux216~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[1]~input_o\,
	datab => \amt[5]~input_o\,
	datac => \Mux127~297_combout\,
	datad => \Mux216~1_combout\,
	combout => \Mux216~2_combout\);

-- Location: LCCOMB_X52_Y3_N12
\Mux215~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux215~0_combout\ = (\Mux193~1_combout\ & (((\Mux127~306_combout\)) # (!\Mux193~0_combout\))) # (!\Mux193~1_combout\ & (\Mux193~0_combout\ & ((\Mux127~310_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux193~1_combout\,
	datab => \Mux193~0_combout\,
	datac => \Mux127~306_combout\,
	datad => \Mux127~310_combout\,
	combout => \Mux215~0_combout\);

-- Location: LCCOMB_X52_Y3_N2
\Mux215~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux215~1_combout\ = (\Mux253~4_combout\ & ((\Mux215~0_combout\ & (\a[63]~input_o\)) # (!\Mux215~0_combout\ & ((\Mux127~505_combout\))))) # (!\Mux253~4_combout\ & (((\Mux215~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[63]~input_o\,
	datab => \Mux253~4_combout\,
	datac => \Mux127~505_combout\,
	datad => \Mux215~0_combout\,
	combout => \Mux215~1_combout\);

-- Location: LCCOMB_X52_Y3_N8
\Mux215~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux215~2_combout\ = (\amt[5]~input_o\ & ((\lar[1]~input_o\ & (\Mux127~317_combout\)) # (!\lar[1]~input_o\ & ((\Mux215~1_combout\))))) # (!\amt[5]~input_o\ & (((\Mux215~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \Mux127~317_combout\,
	datac => \lar[1]~input_o\,
	datad => \Mux215~1_combout\,
	combout => \Mux215~2_combout\);

-- Location: LCCOMB_X60_Y2_N12
\Mux127~322\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~322_combout\ = (\amt[3]~input_o\ & ((\amt[2]~input_o\ & ((\Mux127~101_combout\))) # (!\amt[2]~input_o\ & (\Mux127~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datab => \amt[2]~input_o\,
	datac => \Mux127~98_combout\,
	datad => \Mux127~101_combout\,
	combout => \Mux127~322_combout\);

-- Location: LCCOMB_X60_Y2_N10
\Mux127~323\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~323_combout\ = (\Mux127~322_combout\) # ((!\amt[3]~input_o\ & \Mux127~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[3]~input_o\,
	datac => \Mux127~63_combout\,
	datad => \Mux127~322_combout\,
	combout => \Mux127~323_combout\);

-- Location: LCCOMB_X59_Y3_N10
\Mux127~324\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~324_combout\ = (\amt[4]~input_o\ & (\Mux127~323_combout\)) # (!\amt[4]~input_o\ & ((\Mux127~320_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datac => \Mux127~323_combout\,
	datad => \Mux127~320_combout\,
	combout => \Mux127~324_combout\);

-- Location: LCCOMB_X59_Y3_N2
\Mux214~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux214~0_combout\ = (\Mux193~0_combout\ & ((\Mux193~1_combout\ & ((\Mux127~324_combout\))) # (!\Mux193~1_combout\ & (!\Mux127~506_combout\)))) # (!\Mux193~0_combout\ & (((\Mux193~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux193~0_combout\,
	datab => \Mux127~506_combout\,
	datac => \Mux193~1_combout\,
	datad => \Mux127~324_combout\,
	combout => \Mux214~0_combout\);

-- Location: LCCOMB_X59_Y3_N20
\Mux214~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux214~1_combout\ = (\Mux253~4_combout\ & ((\Mux214~0_combout\ & (\a[63]~input_o\)) # (!\Mux214~0_combout\ & ((\Mux127~507_combout\))))) # (!\Mux253~4_combout\ & (((\Mux214~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux253~4_combout\,
	datab => \a[63]~input_o\,
	datac => \Mux127~507_combout\,
	datad => \Mux214~0_combout\,
	combout => \Mux214~1_combout\);

-- Location: LCCOMB_X59_Y3_N14
\Mux214~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux214~2_combout\ = (\lar[1]~input_o\ & ((\amt[5]~input_o\ & (\Mux127~331_combout\)) # (!\amt[5]~input_o\ & ((\Mux214~1_combout\))))) # (!\lar[1]~input_o\ & (((\Mux214~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[1]~input_o\,
	datab => \amt[5]~input_o\,
	datac => \Mux127~331_combout\,
	datad => \Mux214~1_combout\,
	combout => \Mux214~2_combout\);

-- Location: LCCOMB_X56_Y4_N2
\Mux213~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux213~0_combout\ = (\Mux193~0_combout\ & ((\Mux193~1_combout\ & ((\Mux127~508_combout\))) # (!\Mux193~1_combout\ & (\Mux127~509_combout\)))) # (!\Mux193~0_combout\ & (\Mux193~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux193~0_combout\,
	datab => \Mux193~1_combout\,
	datac => \Mux127~509_combout\,
	datad => \Mux127~508_combout\,
	combout => \Mux213~0_combout\);

-- Location: LCCOMB_X56_Y4_N12
\Mux213~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux213~1_combout\ = (\Mux253~4_combout\ & ((\Mux213~0_combout\ & (\a[63]~input_o\)) # (!\Mux213~0_combout\ & ((\Mux127~338_combout\))))) # (!\Mux253~4_combout\ & (((\Mux213~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux253~4_combout\,
	datab => \a[63]~input_o\,
	datac => \Mux127~338_combout\,
	datad => \Mux213~0_combout\,
	combout => \Mux213~1_combout\);

-- Location: LCCOMB_X56_Y4_N18
\Mux213~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux213~2_combout\ = (\lar[1]~input_o\ & ((\amt[5]~input_o\ & (\Mux127~346_combout\)) # (!\amt[5]~input_o\ & ((\Mux213~1_combout\))))) # (!\lar[1]~input_o\ & (((\Mux213~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[1]~input_o\,
	datab => \amt[5]~input_o\,
	datac => \Mux127~346_combout\,
	datad => \Mux213~1_combout\,
	combout => \Mux213~2_combout\);

-- Location: LCCOMB_X58_Y2_N2
\Mux127~355\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~355_combout\ = (\amt[4]~input_o\ & ((\Mux127~354_combout\))) # (!\amt[4]~input_o\ & (\Mux127~350_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datac => \Mux127~350_combout\,
	datad => \Mux127~354_combout\,
	combout => \Mux127~355_combout\);

-- Location: LCCOMB_X58_Y2_N26
\Mux212~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux212~0_combout\ = (\Mux193~1_combout\ & ((\Mux127~355_combout\) # ((!\Mux193~0_combout\)))) # (!\Mux193~1_combout\ & (((\Mux193~0_combout\ & \Mux127~510_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux193~1_combout\,
	datab => \Mux127~355_combout\,
	datac => \Mux193~0_combout\,
	datad => \Mux127~510_combout\,
	combout => \Mux212~0_combout\);

-- Location: LCCOMB_X58_Y2_N8
\Mux212~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux212~1_combout\ = (\Mux253~4_combout\ & ((\Mux212~0_combout\ & (\a[63]~input_o\)) # (!\Mux212~0_combout\ & ((\Mux127~351_combout\))))) # (!\Mux253~4_combout\ & (((\Mux212~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux253~4_combout\,
	datab => \a[63]~input_o\,
	datac => \Mux212~0_combout\,
	datad => \Mux127~351_combout\,
	combout => \Mux212~1_combout\);

-- Location: LCCOMB_X58_Y2_N30
\Mux212~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux212~2_combout\ = (\amt[5]~input_o\ & ((\lar[1]~input_o\ & ((\Mux127~363_combout\))) # (!\lar[1]~input_o\ & (\Mux212~1_combout\)))) # (!\amt[5]~input_o\ & (((\Mux212~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \lar[1]~input_o\,
	datac => \Mux212~1_combout\,
	datad => \Mux127~363_combout\,
	combout => \Mux212~2_combout\);

-- Location: LCCOMB_X53_Y1_N8
\Mux211~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux211~0_combout\ = (\Mux193~0_combout\ & ((\Mux193~1_combout\ & ((\Mux127~371_combout\))) # (!\Mux193~1_combout\ & (\Mux127~511_combout\)))) # (!\Mux193~0_combout\ & (\Mux193~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux193~0_combout\,
	datab => \Mux193~1_combout\,
	datac => \Mux127~511_combout\,
	datad => \Mux127~371_combout\,
	combout => \Mux211~0_combout\);

-- Location: LCCOMB_X52_Y1_N26
\Mux211~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux211~1_combout\ = (\Mux253~4_combout\ & ((\Mux211~0_combout\ & (\a[63]~input_o\)) # (!\Mux211~0_combout\ & ((\Mux127~373_combout\))))) # (!\Mux253~4_combout\ & (((\Mux211~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[63]~input_o\,
	datab => \Mux253~4_combout\,
	datac => \Mux211~0_combout\,
	datad => \Mux127~373_combout\,
	combout => \Mux211~1_combout\);

-- Location: LCCOMB_X52_Y1_N20
\Mux211~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux211~2_combout\ = (\amt[5]~input_o\ & ((\lar[1]~input_o\ & ((\Mux127~381_combout\))) # (!\lar[1]~input_o\ & (\Mux211~1_combout\)))) # (!\amt[5]~input_o\ & (((\Mux211~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \lar[1]~input_o\,
	datac => \Mux211~1_combout\,
	datad => \Mux127~381_combout\,
	combout => \Mux211~2_combout\);

-- Location: LCCOMB_X59_Y2_N12
\Mux210~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux210~0_combout\ = (\Mux193~1_combout\ & (((\Mux127~389_combout\)) # (!\Mux193~0_combout\))) # (!\Mux193~1_combout\ & (\Mux193~0_combout\ & ((\Mux127~390_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux193~1_combout\,
	datab => \Mux193~0_combout\,
	datac => \Mux127~389_combout\,
	datad => \Mux127~390_combout\,
	combout => \Mux210~0_combout\);

-- Location: LCCOMB_X59_Y2_N18
\Mux210~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux210~1_combout\ = (\Mux253~4_combout\ & ((\Mux210~0_combout\ & (\a[63]~input_o\)) # (!\Mux210~0_combout\ & ((\Mux127~386_combout\))))) # (!\Mux253~4_combout\ & (((\Mux210~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux253~4_combout\,
	datab => \a[63]~input_o\,
	datac => \Mux127~386_combout\,
	datad => \Mux210~0_combout\,
	combout => \Mux210~1_combout\);

-- Location: LCCOMB_X59_Y2_N0
\Mux210~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux210~2_combout\ = (\amt[5]~input_o\ & ((\lar[1]~input_o\ & (\Mux127~397_combout\)) # (!\lar[1]~input_o\ & ((\Mux210~1_combout\))))) # (!\amt[5]~input_o\ & (((\Mux210~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~397_combout\,
	datab => \amt[5]~input_o\,
	datac => \lar[1]~input_o\,
	datad => \Mux210~1_combout\,
	combout => \Mux210~2_combout\);

-- Location: LCCOMB_X58_Y4_N26
\Mux209~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux209~0_combout\ = (\Mux193~0_combout\ & ((\Mux193~1_combout\ & ((\Mux127~404_combout\))) # (!\Mux193~1_combout\ & (\Mux127~409_combout\)))) # (!\Mux193~0_combout\ & (\Mux193~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux193~0_combout\,
	datab => \Mux193~1_combout\,
	datac => \Mux127~409_combout\,
	datad => \Mux127~404_combout\,
	combout => \Mux209~0_combout\);

-- Location: LCCOMB_X59_Y4_N26
\Mux209~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux209~1_combout\ = (\Mux253~4_combout\ & ((\Mux209~0_combout\ & (\a[63]~input_o\)) # (!\Mux209~0_combout\ & ((\Mux127~407_combout\))))) # (!\Mux253~4_combout\ & (((\Mux209~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[63]~input_o\,
	datab => \Mux253~4_combout\,
	datac => \Mux209~0_combout\,
	datad => \Mux127~407_combout\,
	combout => \Mux209~1_combout\);

-- Location: LCCOMB_X59_Y4_N28
\Mux209~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux209~2_combout\ = (\amt[5]~input_o\ & ((\lar[1]~input_o\ & ((\Mux127~416_combout\))) # (!\lar[1]~input_o\ & (\Mux209~1_combout\)))) # (!\amt[5]~input_o\ & (((\Mux209~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \lar[1]~input_o\,
	datac => \Mux209~1_combout\,
	datad => \Mux127~416_combout\,
	combout => \Mux209~2_combout\);

-- Location: LCCOMB_X53_Y4_N30
\Mux208~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux208~0_combout\ = (\Mux193~0_combout\ & ((\Mux193~1_combout\ & ((\Mux127~424_combout\))) # (!\Mux193~1_combout\ & (\Mux127~425_combout\)))) # (!\Mux193~0_combout\ & (\Mux193~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux193~0_combout\,
	datab => \Mux193~1_combout\,
	datac => \Mux127~425_combout\,
	datad => \Mux127~424_combout\,
	combout => \Mux208~0_combout\);

-- Location: LCCOMB_X53_Y4_N12
\Mux208~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux208~1_combout\ = (\Mux253~4_combout\ & ((\Mux208~0_combout\ & (\a[63]~input_o\)) # (!\Mux208~0_combout\ & ((\Mux127~420_combout\))))) # (!\Mux253~4_combout\ & (((\Mux208~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux253~4_combout\,
	datab => \a[63]~input_o\,
	datac => \Mux208~0_combout\,
	datad => \Mux127~420_combout\,
	combout => \Mux208~1_combout\);

-- Location: LCCOMB_X52_Y4_N18
\Mux208~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux208~2_combout\ = (\amt[5]~input_o\ & ((\lar[1]~input_o\ & ((\Mux127~432_combout\))) # (!\lar[1]~input_o\ & (\Mux208~1_combout\)))) # (!\amt[5]~input_o\ & (((\Mux208~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \lar[1]~input_o\,
	datac => \Mux208~1_combout\,
	datad => \Mux127~432_combout\,
	combout => \Mux208~2_combout\);

-- Location: LCCOMB_X53_Y5_N10
\Mux207~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux207~0_combout\ = (\Mux193~0_combout\ & ((\Mux193~1_combout\ & (\Mux127~437_combout\)) # (!\Mux193~1_combout\ & ((\Mux127~514_combout\))))) # (!\Mux193~0_combout\ & (\Mux193~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux193~0_combout\,
	datab => \Mux193~1_combout\,
	datac => \Mux127~437_combout\,
	datad => \Mux127~514_combout\,
	combout => \Mux207~0_combout\);

-- Location: LCCOMB_X53_Y5_N24
\Mux207~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux207~1_combout\ = (\Mux253~4_combout\ & ((\Mux207~0_combout\ & (\a[63]~input_o\)) # (!\Mux207~0_combout\ & ((\Mux127~438_combout\))))) # (!\Mux253~4_combout\ & (((\Mux207~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux253~4_combout\,
	datab => \a[63]~input_o\,
	datac => \Mux127~438_combout\,
	datad => \Mux207~0_combout\,
	combout => \Mux207~1_combout\);

-- Location: LCCOMB_X53_Y5_N30
\Mux207~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux207~2_combout\ = (\lar[1]~input_o\ & ((\amt[5]~input_o\ & (\Mux127~446_combout\)) # (!\amt[5]~input_o\ & ((\Mux207~1_combout\))))) # (!\lar[1]~input_o\ & (((\Mux207~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[1]~input_o\,
	datab => \Mux127~446_combout\,
	datac => \amt[5]~input_o\,
	datad => \Mux207~1_combout\,
	combout => \Mux207~2_combout\);

-- Location: LCCOMB_X59_Y2_N10
\Mux206~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux206~0_combout\ = (\Mux193~0_combout\ & ((\Mux127~447_combout\) # ((\Mux193~1_combout\ & \Mux127~449_combout\)))) # (!\Mux193~0_combout\ & (\Mux193~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux193~1_combout\,
	datab => \Mux193~0_combout\,
	datac => \Mux127~449_combout\,
	datad => \Mux127~447_combout\,
	combout => \Mux206~0_combout\);

-- Location: LCCOMB_X59_Y2_N4
\Mux206~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux206~1_combout\ = (\Mux253~4_combout\ & ((\Mux206~0_combout\ & (\a[63]~input_o\)) # (!\Mux206~0_combout\ & ((\Mux127~448_combout\))))) # (!\Mux253~4_combout\ & (((\Mux206~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux253~4_combout\,
	datab => \a[63]~input_o\,
	datac => \Mux127~448_combout\,
	datad => \Mux206~0_combout\,
	combout => \Mux206~1_combout\);

-- Location: LCCOMB_X59_Y2_N30
\Mux206~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux206~2_combout\ = (\lar[1]~input_o\ & ((\amt[5]~input_o\ & ((\Mux127~450_combout\))) # (!\amt[5]~input_o\ & (\Mux206~1_combout\)))) # (!\lar[1]~input_o\ & (((\Mux206~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[1]~input_o\,
	datab => \amt[5]~input_o\,
	datac => \Mux206~1_combout\,
	datad => \Mux127~450_combout\,
	combout => \Mux206~2_combout\);

-- Location: LCCOMB_X57_Y3_N10
\Mux205~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux205~0_combout\ = (\Mux193~0_combout\ & ((\Mux193~1_combout\ & ((\Mux127~451_combout\))) # (!\Mux193~1_combout\ & (\Mux127~454_combout\)))) # (!\Mux193~0_combout\ & (((\Mux193~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~454_combout\,
	datab => \Mux193~0_combout\,
	datac => \Mux193~1_combout\,
	datad => \Mux127~451_combout\,
	combout => \Mux205~0_combout\);

-- Location: LCCOMB_X57_Y3_N24
\Mux205~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux205~1_combout\ = (\Mux253~4_combout\ & ((\Mux205~0_combout\ & (\a[63]~input_o\)) # (!\Mux205~0_combout\ & ((\Mux127~453_combout\))))) # (!\Mux253~4_combout\ & (((\Mux205~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[63]~input_o\,
	datab => \Mux127~453_combout\,
	datac => \Mux253~4_combout\,
	datad => \Mux205~0_combout\,
	combout => \Mux205~1_combout\);

-- Location: LCCOMB_X57_Y3_N26
\Mux205~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux205~2_combout\ = (\lar[1]~input_o\ & ((\amt[5]~input_o\ & (\Mux127~455_combout\)) # (!\amt[5]~input_o\ & ((\Mux205~1_combout\))))) # (!\lar[1]~input_o\ & (((\Mux205~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[1]~input_o\,
	datab => \amt[5]~input_o\,
	datac => \Mux127~455_combout\,
	datad => \Mux205~1_combout\,
	combout => \Mux205~2_combout\);

-- Location: LCCOMB_X55_Y4_N12
\Mux204~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux204~0_combout\ = (\Mux193~0_combout\ & ((\Mux193~1_combout\ & ((\Mux127~458_combout\))) # (!\Mux193~1_combout\ & (\Mux127~459_combout\)))) # (!\Mux193~0_combout\ & (\Mux193~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux193~0_combout\,
	datab => \Mux193~1_combout\,
	datac => \Mux127~459_combout\,
	datad => \Mux127~458_combout\,
	combout => \Mux204~0_combout\);

-- Location: LCCOMB_X55_Y4_N6
\Mux204~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux204~1_combout\ = (\Mux253~4_combout\ & ((\Mux204~0_combout\ & (\a[63]~input_o\)) # (!\Mux204~0_combout\ & ((\Mux127~457_combout\))))) # (!\Mux253~4_combout\ & (((\Mux204~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[63]~input_o\,
	datab => \Mux127~457_combout\,
	datac => \Mux253~4_combout\,
	datad => \Mux204~0_combout\,
	combout => \Mux204~1_combout\);

-- Location: LCCOMB_X55_Y4_N8
\Mux204~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux204~2_combout\ = (\amt[5]~input_o\ & ((\lar[1]~input_o\ & (\Mux127~460_combout\)) # (!\lar[1]~input_o\ & ((\Mux204~1_combout\))))) # (!\amt[5]~input_o\ & (((\Mux204~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \Mux127~460_combout\,
	datac => \lar[1]~input_o\,
	datad => \Mux204~1_combout\,
	combout => \Mux204~2_combout\);

-- Location: LCCOMB_X52_Y2_N18
\Mux203~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux203~0_combout\ = (\Mux193~0_combout\ & ((\Mux193~1_combout\ & (\Mux127~461_combout\)) # (!\Mux193~1_combout\ & ((\Mux127~463_combout\))))) # (!\Mux193~0_combout\ & (\Mux193~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux193~0_combout\,
	datab => \Mux193~1_combout\,
	datac => \Mux127~461_combout\,
	datad => \Mux127~463_combout\,
	combout => \Mux203~0_combout\);

-- Location: LCCOMB_X52_Y2_N0
\Mux203~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux203~1_combout\ = (\Mux253~4_combout\ & ((\Mux203~0_combout\ & ((\a[63]~input_o\))) # (!\Mux203~0_combout\ & (\Mux127~462_combout\)))) # (!\Mux253~4_combout\ & (((\Mux203~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~462_combout\,
	datab => \a[63]~input_o\,
	datac => \Mux253~4_combout\,
	datad => \Mux203~0_combout\,
	combout => \Mux203~1_combout\);

-- Location: LCCOMB_X52_Y2_N22
\Mux203~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux203~2_combout\ = (\lar[1]~input_o\ & ((\amt[5]~input_o\ & (\Mux127~464_combout\)) # (!\amt[5]~input_o\ & ((\Mux203~1_combout\))))) # (!\lar[1]~input_o\ & (((\Mux203~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[1]~input_o\,
	datab => \Mux127~464_combout\,
	datac => \amt[5]~input_o\,
	datad => \Mux203~1_combout\,
	combout => \Mux203~2_combout\);

-- Location: LCCOMB_X56_Y1_N18
\Mux202~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux202~0_combout\ = (\Mux193~1_combout\ & (((\Mux127~466_combout\)) # (!\Mux193~0_combout\))) # (!\Mux193~1_combout\ & (\Mux193~0_combout\ & ((\Mux127~467_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux193~1_combout\,
	datab => \Mux193~0_combout\,
	datac => \Mux127~466_combout\,
	datad => \Mux127~467_combout\,
	combout => \Mux202~0_combout\);

-- Location: LCCOMB_X56_Y1_N24
\Mux202~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux202~1_combout\ = (\Mux253~4_combout\ & ((\Mux202~0_combout\ & (\a[63]~input_o\)) # (!\Mux202~0_combout\ & ((\Mux127~465_combout\))))) # (!\Mux253~4_combout\ & (((\Mux202~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux253~4_combout\,
	datab => \a[63]~input_o\,
	datac => \Mux127~465_combout\,
	datad => \Mux202~0_combout\,
	combout => \Mux202~1_combout\);

-- Location: LCCOMB_X59_Y1_N26
\Mux202~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux202~2_combout\ = (\lar[1]~input_o\ & ((\amt[5]~input_o\ & (\Mux127~468_combout\)) # (!\amt[5]~input_o\ & ((\Mux202~1_combout\))))) # (!\lar[1]~input_o\ & (((\Mux202~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[1]~input_o\,
	datab => \amt[5]~input_o\,
	datac => \Mux127~468_combout\,
	datad => \Mux202~1_combout\,
	combout => \Mux202~2_combout\);

-- Location: LCCOMB_X58_Y1_N8
\Mux201~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux201~0_combout\ = (\Mux193~0_combout\ & ((\Mux193~1_combout\ & ((\Mux127~469_combout\))) # (!\Mux193~1_combout\ & (\Mux127~471_combout\)))) # (!\Mux193~0_combout\ & (\Mux193~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux193~0_combout\,
	datab => \Mux193~1_combout\,
	datac => \Mux127~471_combout\,
	datad => \Mux127~469_combout\,
	combout => \Mux201~0_combout\);

-- Location: LCCOMB_X58_Y1_N6
\Mux201~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux201~1_combout\ = (\Mux253~4_combout\ & ((\Mux201~0_combout\ & (\a[63]~input_o\)) # (!\Mux201~0_combout\ & ((\Mux127~470_combout\))))) # (!\Mux253~4_combout\ & (((\Mux201~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[63]~input_o\,
	datab => \Mux253~4_combout\,
	datac => \Mux201~0_combout\,
	datad => \Mux127~470_combout\,
	combout => \Mux201~1_combout\);

-- Location: LCCOMB_X58_Y1_N16
\Mux201~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux201~2_combout\ = (\amt[5]~input_o\ & ((\lar[1]~input_o\ & (\Mux127~472_combout\)) # (!\lar[1]~input_o\ & ((\Mux201~1_combout\))))) # (!\amt[5]~input_o\ & (((\Mux201~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \lar[1]~input_o\,
	datac => \Mux127~472_combout\,
	datad => \Mux201~1_combout\,
	combout => \Mux201~2_combout\);

-- Location: LCCOMB_X55_Y3_N26
\Mux127~474\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~474_combout\ = (\amt[4]~input_o\ & ((\Mux127~296_combout\) # ((\Mux127~295_combout\)))) # (!\amt[4]~input_o\ & (((\Mux127~288_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \Mux127~296_combout\,
	datac => \Mux127~295_combout\,
	datad => \Mux127~288_combout\,
	combout => \Mux127~474_combout\);

-- Location: LCCOMB_X55_Y3_N10
\Mux200~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux200~0_combout\ = (\Mux193~0_combout\ & ((\Mux193~1_combout\ & (\Mux127~474_combout\)) # (!\Mux193~1_combout\ & ((\Mux127~475_combout\))))) # (!\Mux193~0_combout\ & (\Mux193~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux193~0_combout\,
	datab => \Mux193~1_combout\,
	datac => \Mux127~474_combout\,
	datad => \Mux127~475_combout\,
	combout => \Mux200~0_combout\);

-- Location: LCCOMB_X55_Y3_N0
\Mux200~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux200~1_combout\ = (\Mux253~4_combout\ & ((\Mux200~0_combout\ & ((\a[63]~input_o\))) # (!\Mux200~0_combout\ & (\Mux127~473_combout\)))) # (!\Mux253~4_combout\ & (((\Mux200~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~473_combout\,
	datab => \a[63]~input_o\,
	datac => \Mux253~4_combout\,
	datad => \Mux200~0_combout\,
	combout => \Mux200~1_combout\);

-- Location: LCCOMB_X55_Y3_N2
\Mux200~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux200~2_combout\ = (\amt[5]~input_o\ & ((\lar[1]~input_o\ & (\Mux127~476_combout\)) # (!\lar[1]~input_o\ & ((\Mux200~1_combout\))))) # (!\amt[5]~input_o\ & (((\Mux200~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \lar[1]~input_o\,
	datac => \Mux127~476_combout\,
	datad => \Mux200~1_combout\,
	combout => \Mux200~2_combout\);

-- Location: LCCOMB_X52_Y5_N16
\Mux199~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux199~0_combout\ = (\Mux193~1_combout\ & (((\Mux127~477_combout\)) # (!\Mux193~0_combout\))) # (!\Mux193~1_combout\ & (\Mux193~0_combout\ & (\Mux127~479_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux193~1_combout\,
	datab => \Mux193~0_combout\,
	datac => \Mux127~479_combout\,
	datad => \Mux127~477_combout\,
	combout => \Mux199~0_combout\);

-- Location: LCCOMB_X52_Y5_N30
\Mux199~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux199~1_combout\ = (\Mux253~4_combout\ & ((\Mux199~0_combout\ & ((\a[63]~input_o\))) # (!\Mux199~0_combout\ & (\Mux127~516_combout\)))) # (!\Mux253~4_combout\ & (((\Mux199~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~516_combout\,
	datab => \a[63]~input_o\,
	datac => \Mux253~4_combout\,
	datad => \Mux199~0_combout\,
	combout => \Mux199~1_combout\);

-- Location: LCCOMB_X52_Y5_N20
\Mux199~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux199~2_combout\ = (\amt[5]~input_o\ & ((\lar[1]~input_o\ & ((\Mux127~480_combout\))) # (!\lar[1]~input_o\ & (\Mux199~1_combout\)))) # (!\amt[5]~input_o\ & (((\Mux199~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \lar[1]~input_o\,
	datac => \Mux199~1_combout\,
	datad => \Mux127~480_combout\,
	combout => \Mux199~2_combout\);

-- Location: LCCOMB_X60_Y2_N22
\Mux198~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux198~0_combout\ = (\Mux193~1_combout\ & (((\Mux127~482_combout\) # (!\Mux193~0_combout\)))) # (!\Mux193~1_combout\ & (\Mux127~481_combout\ & ((\Mux193~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux193~1_combout\,
	datab => \Mux127~481_combout\,
	datac => \Mux127~482_combout\,
	datad => \Mux193~0_combout\,
	combout => \Mux198~0_combout\);

-- Location: LCCOMB_X60_Y2_N0
\Mux198~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux198~1_combout\ = (\Mux253~4_combout\ & ((\Mux198~0_combout\ & (\a[63]~input_o\)) # (!\Mux198~0_combout\ & ((\Mux127~517_combout\))))) # (!\Mux253~4_combout\ & (((\Mux198~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[63]~input_o\,
	datab => \Mux253~4_combout\,
	datac => \Mux198~0_combout\,
	datad => \Mux127~517_combout\,
	combout => \Mux198~1_combout\);

-- Location: LCCOMB_X60_Y2_N26
\Mux198~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux198~2_combout\ = (\amt[5]~input_o\ & ((\lar[1]~input_o\ & (\Mux127~483_combout\)) # (!\lar[1]~input_o\ & ((\Mux198~1_combout\))))) # (!\amt[5]~input_o\ & (((\Mux198~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \lar[1]~input_o\,
	datac => \Mux127~483_combout\,
	datad => \Mux198~1_combout\,
	combout => \Mux198~2_combout\);

-- Location: LCCOMB_X57_Y4_N6
\Mux197~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux197~0_combout\ = (\Mux193~1_combout\ & (((\Mux127~484_combout\)) # (!\Mux193~0_combout\))) # (!\Mux193~1_combout\ & (\Mux193~0_combout\ & ((\Mux127~485_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux193~1_combout\,
	datab => \Mux193~0_combout\,
	datac => \Mux127~484_combout\,
	datad => \Mux127~485_combout\,
	combout => \Mux197~0_combout\);

-- Location: LCCOMB_X57_Y4_N4
\Mux197~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux197~1_combout\ = (\Mux253~4_combout\ & ((\Mux197~0_combout\ & (\a[63]~input_o\)) # (!\Mux197~0_combout\ & ((\Mux127~518_combout\))))) # (!\Mux253~4_combout\ & (((\Mux197~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[63]~input_o\,
	datab => \Mux253~4_combout\,
	datac => \Mux127~518_combout\,
	datad => \Mux197~0_combout\,
	combout => \Mux197~1_combout\);

-- Location: LCCOMB_X57_Y4_N10
\Mux197~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux197~2_combout\ = (\amt[5]~input_o\ & ((\lar[1]~input_o\ & ((\Mux127~486_combout\))) # (!\lar[1]~input_o\ & (\Mux197~1_combout\)))) # (!\amt[5]~input_o\ & (((\Mux197~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \lar[1]~input_o\,
	datac => \Mux197~1_combout\,
	datad => \Mux127~486_combout\,
	combout => \Mux197~2_combout\);

-- Location: LCCOMB_X58_Y2_N12
\Mux196~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux196~0_combout\ = (\Mux193~1_combout\ & (((\Mux127~487_combout\) # (!\Mux193~0_combout\)))) # (!\Mux193~1_combout\ & (\Mux127~520_combout\ & (\Mux193~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux193~1_combout\,
	datab => \Mux127~520_combout\,
	datac => \Mux193~0_combout\,
	datad => \Mux127~487_combout\,
	combout => \Mux196~0_combout\);

-- Location: LCCOMB_X58_Y2_N22
\Mux196~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux196~1_combout\ = (\Mux253~4_combout\ & ((\Mux196~0_combout\ & ((\a[63]~input_o\))) # (!\Mux196~0_combout\ & (\Mux127~519_combout\)))) # (!\Mux253~4_combout\ & (((\Mux196~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~519_combout\,
	datab => \a[63]~input_o\,
	datac => \Mux253~4_combout\,
	datad => \Mux196~0_combout\,
	combout => \Mux196~1_combout\);

-- Location: LCCOMB_X58_Y2_N4
\Mux196~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux196~2_combout\ = (\lar[1]~input_o\ & ((\amt[5]~input_o\ & (\Mux127~488_combout\)) # (!\amt[5]~input_o\ & ((\Mux196~1_combout\))))) # (!\lar[1]~input_o\ & (((\Mux196~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~488_combout\,
	datab => \lar[1]~input_o\,
	datac => \Mux196~1_combout\,
	datad => \amt[5]~input_o\,
	combout => \Mux196~2_combout\);

-- Location: LCCOMB_X52_Y1_N22
\Mux127~490\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~490_combout\ = (\Mux128~0_combout\ & ((\amt[4]~input_o\ & ((\a[63]~input_o\))) # (!\amt[4]~input_o\ & (\Mux127~210_combout\)))) # (!\Mux128~0_combout\ & (((\a[63]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux128~0_combout\,
	datab => \amt[4]~input_o\,
	datac => \Mux127~210_combout\,
	datad => \a[63]~input_o\,
	combout => \Mux127~490_combout\);

-- Location: LCCOMB_X52_Y1_N2
\Mux195~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux195~0_combout\ = (\Mux193~0_combout\ & ((\Mux193~1_combout\ & ((\Mux127~489_combout\))) # (!\Mux193~1_combout\ & (\Mux127~521_combout\)))) # (!\Mux193~0_combout\ & (\Mux193~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux193~0_combout\,
	datab => \Mux193~1_combout\,
	datac => \Mux127~521_combout\,
	datad => \Mux127~489_combout\,
	combout => \Mux195~0_combout\);

-- Location: LCCOMB_X52_Y1_N8
\Mux195~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux195~1_combout\ = (\Mux253~4_combout\ & ((\Mux195~0_combout\ & (\a[63]~input_o\)) # (!\Mux195~0_combout\ & ((\Mux127~490_combout\))))) # (!\Mux253~4_combout\ & (((\Mux195~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[63]~input_o\,
	datab => \Mux253~4_combout\,
	datac => \Mux127~490_combout\,
	datad => \Mux195~0_combout\,
	combout => \Mux195~1_combout\);

-- Location: LCCOMB_X52_Y1_N6
\Mux195~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux195~2_combout\ = (\amt[5]~input_o\ & ((\lar[1]~input_o\ & ((\Mux127~491_combout\))) # (!\lar[1]~input_o\ & (\Mux195~1_combout\)))) # (!\amt[5]~input_o\ & (((\Mux195~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \lar[1]~input_o\,
	datac => \Mux195~1_combout\,
	datad => \Mux127~491_combout\,
	combout => \Mux195~2_combout\);

-- Location: LCCOMB_X57_Y2_N16
\Mux194~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux194~0_combout\ = (\Mux193~1_combout\ & (((\Mux127~493_combout\) # (!\Mux193~0_combout\)))) # (!\Mux193~1_combout\ & (\Mux127~522_combout\ & (\Mux193~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~522_combout\,
	datab => \Mux193~1_combout\,
	datac => \Mux193~0_combout\,
	datad => \Mux127~493_combout\,
	combout => \Mux194~0_combout\);

-- Location: LCCOMB_X57_Y2_N6
\Mux194~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux194~1_combout\ = (\Mux253~4_combout\ & ((\Mux194~0_combout\ & (\a[63]~input_o\)) # (!\Mux194~0_combout\ & ((\Mux127~492_combout\))))) # (!\Mux253~4_combout\ & (((\Mux194~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[63]~input_o\,
	datab => \Mux253~4_combout\,
	datac => \Mux127~492_combout\,
	datad => \Mux194~0_combout\,
	combout => \Mux194~1_combout\);

-- Location: LCCOMB_X57_Y2_N20
\Mux194~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux194~2_combout\ = (\lar[1]~input_o\ & ((\amt[5]~input_o\ & (\Mux127~494_combout\)) # (!\amt[5]~input_o\ & ((\Mux194~1_combout\))))) # (!\lar[1]~input_o\ & (((\Mux194~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[1]~input_o\,
	datab => \amt[5]~input_o\,
	datac => \Mux127~494_combout\,
	datad => \Mux194~1_combout\,
	combout => \Mux194~2_combout\);

-- Location: LCCOMB_X57_Y1_N26
\Mux127~496\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~496_combout\ = (\amt[4]~input_o\ & (\a[63]~input_o\)) # (!\amt[4]~input_o\ & ((\Mux127~405_combout\ & (\a[63]~input_o\)) # (!\Mux127~405_combout\ & ((\Mux127~119_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \a[63]~input_o\,
	datac => \Mux127~119_combout\,
	datad => \Mux127~405_combout\,
	combout => \Mux127~496_combout\);

-- Location: LCCOMB_X57_Y4_N12
\Mux193~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux193~2_combout\ = (\Mux193~1_combout\ & (((\Mux127~495_combout\)) # (!\Mux193~0_combout\))) # (!\Mux193~1_combout\ & (\Mux193~0_combout\ & ((\Mux127~523_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux193~1_combout\,
	datab => \Mux193~0_combout\,
	datac => \Mux127~495_combout\,
	datad => \Mux127~523_combout\,
	combout => \Mux193~2_combout\);

-- Location: LCCOMB_X57_Y4_N22
\Mux193~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux193~3_combout\ = (\Mux253~4_combout\ & ((\Mux193~2_combout\ & (\a[63]~input_o\)) # (!\Mux193~2_combout\ & ((\Mux127~496_combout\))))) # (!\Mux253~4_combout\ & (((\Mux193~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[63]~input_o\,
	datab => \Mux253~4_combout\,
	datac => \Mux127~496_combout\,
	datad => \Mux193~2_combout\,
	combout => \Mux193~3_combout\);

-- Location: LCCOMB_X57_Y4_N0
\Mux193~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux193~4_combout\ = (\amt[5]~input_o\ & ((\lar[1]~input_o\ & ((\Mux127~497_combout\))) # (!\lar[1]~input_o\ & (\Mux193~3_combout\)))) # (!\amt[5]~input_o\ & (((\Mux193~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \lar[1]~input_o\,
	datac => \Mux193~3_combout\,
	datad => \Mux127~497_combout\,
	combout => \Mux193~4_combout\);

-- Location: LCCOMB_X54_Y1_N6
\Mux128~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux128~1_combout\ = (!\amt[0]~input_o\ & !\amt[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \amt[0]~input_o\,
	datad => \amt[1]~input_o\,
	combout => \Mux128~1_combout\);

-- Location: LCCOMB_X55_Y1_N22
\Mux128~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux128~2_combout\ = (!\amt[4]~input_o\ & (\Mux128~1_combout\ & (\Mux128~0_combout\ & !\amt[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[4]~input_o\,
	datab => \Mux128~1_combout\,
	datac => \Mux128~0_combout\,
	datad => \amt[5]~input_o\,
	combout => \Mux128~2_combout\);

-- Location: LCCOMB_X52_Y4_N4
\Mux192~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux192~1_combout\ = (\lar[0]~input_o\ & ((\Mux128~2_combout\ & ((\a[62]~input_o\))) # (!\Mux128~2_combout\ & (\a[63]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[63]~input_o\,
	datab => \a[62]~input_o\,
	datac => \lar[0]~input_o\,
	datad => \Mux128~2_combout\,
	combout => \Mux192~1_combout\);

-- Location: LCCOMB_X52_Y4_N30
\Mux192~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux192~2_combout\ = (!\lar[1]~input_o\ & ((\Mux192~1_combout\) # ((!\amt[5]~input_o\ & \Mux192~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \lar[1]~input_o\,
	datac => \Mux192~1_combout\,
	datad => \Mux192~0_combout\,
	combout => \Mux192~2_combout\);

-- Location: LCCOMB_X52_Y4_N22
\Mux192~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux192~4_combout\ = (!\amt[4]~input_o\ & ((\amt[5]~input_o\ & (\Mux127~428_combout\)) # (!\amt[5]~input_o\ & ((\Mux127~423_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \amt[4]~input_o\,
	datac => \Mux127~428_combout\,
	datad => \Mux127~423_combout\,
	combout => \Mux192~4_combout\);

-- Location: LCCOMB_X52_Y4_N12
\Mux192~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux192~3_combout\ = (\amt[4]~input_o\ & ((\amt[5]~input_o\ & ((\Mux127~498_combout\))) # (!\amt[5]~input_o\ & (\Mux127~431_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \amt[5]~input_o\,
	datab => \amt[4]~input_o\,
	datac => \Mux127~431_combout\,
	datad => \Mux127~498_combout\,
	combout => \Mux192~3_combout\);

-- Location: LCCOMB_X52_Y4_N8
\Mux192~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux192~5_combout\ = (\Mux192~2_combout\) # ((\lar[1]~input_o\ & ((\Mux192~4_combout\) # (\Mux192~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux192~2_combout\,
	datab => \lar[1]~input_o\,
	datac => \Mux192~4_combout\,
	datad => \Mux192~3_combout\,
	combout => \Mux192~5_combout\);

-- Location: LCCOMB_X60_Y1_N12
\Mux191~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux191~0_combout\ = (\a[63]~input_o\ & (!\lar[1]~input_o\ & ((\lar[0]~input_o\) # (\Mux128~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lar[0]~input_o\,
	datab => \a[63]~input_o\,
	datac => \lar[1]~input_o\,
	datad => \Mux128~2_combout\,
	combout => \Mux191~0_combout\);

-- Location: LCCOMB_X60_Y1_N8
\Mux191~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux191~2_combout\ = (\amt[4]~input_o\ & ((\amt[5]~input_o\ & ((\Mux127~435_combout\))) # (!\amt[5]~input_o\ & (\Mux127~445_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~445_combout\,
	datab => \amt[4]~input_o\,
	datac => \amt[5]~input_o\,
	datad => \Mux127~435_combout\,
	combout => \Mux191~2_combout\);

-- Location: LCCOMB_X60_Y1_N6
\Mux191~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux191~1_combout\ = (!\amt[4]~input_o\ & ((\amt[5]~input_o\ & ((\Mux127~442_combout\))) # (!\amt[5]~input_o\ & (\Mux127~499_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~499_combout\,
	datab => \amt[5]~input_o\,
	datac => \amt[4]~input_o\,
	datad => \Mux127~442_combout\,
	combout => \Mux191~1_combout\);

-- Location: LCCOMB_X60_Y1_N30
\Mux191~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux191~3_combout\ = (\Mux191~0_combout\) # ((\lar[1]~input_o\ & ((\Mux191~2_combout\) # (\Mux191~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux191~0_combout\,
	datab => \lar[1]~input_o\,
	datac => \Mux191~2_combout\,
	datad => \Mux191~1_combout\,
	combout => \Mux191~3_combout\);

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


