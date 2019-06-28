-- -------------------------------------------------------------
-- 
-- File Name: hdlsrc/Untitled/C1.vhd
-- Created: 2019-06-28 14:22:28
-- 
-- Generated by MATLAB 8.5 and HDL Coder 3.6
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: C1
-- Source Path: Untitled/P1/C1
-- Hierarchy Level: 1
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY C1 IS
  PORT( InC1_1                            :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En14
        InC1_2                            :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En14
        OutC1_1                           :   OUT   std_logic_vector(31 DOWNTO 0)  -- sfix32_En27
        );
END C1;


ARCHITECTURE rtl OF C1 IS

  -- Signals
  SIGNAL InC1_1_signed                    : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL InC1_2_signed                    : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL Add1_add_cast                    : signed(31 DOWNTO 0);  -- sfix32_En14
  SIGNAL Add1_add_cast_1                  : signed(31 DOWNTO 0);  -- sfix32_En14
  SIGNAL Add1_add_temp                    : signed(31 DOWNTO 0);  -- sfix32_En14
  SIGNAL Add1_out1                        : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL Gain1_out1                       : signed(31 DOWNTO 0);  -- sfix32_En27

BEGIN
  InC1_1_signed <= signed(InC1_1);

  InC1_2_signed <= signed(InC1_2);

  Add1_add_cast <= resize(InC1_1_signed, 32);
  Add1_add_cast_1 <= resize(InC1_2_signed, 32);
  Add1_add_temp <= Add1_add_cast + Add1_add_cast_1;
  Add1_out1 <= Add1_add_temp(15 DOWNTO 0);

  Gain1_out1 <= to_signed(16#5000#, 16) * Add1_out1;

  OutC1_1 <= std_logic_vector(Gain1_out1);

END rtl;

