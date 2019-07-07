-- -------------------------------------------------------------
-- 
-- File Name: /home/vinicius.ls/PSD1/A2/filtro2/projeto_hdl/hdlsrc/filtro2_fir_sim_r2015a/filter.vhd
-- Created: 2019-07-06 23:28:09
-- 
-- Generated by MATLAB 8.5 and HDL Coder 3.6
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: filter
-- Source Path: filtro2_fir_sim_r2015a/Filtro_FIR_HP_8bits/filter
-- Hierarchy Level: 1
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.Filtro_FIR_HP_8bits_pkg.ALL;

ENTITY filter IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb                               :   IN    std_logic;
        filter_in                         :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En15
        filter_out                        :   OUT   std_logic_vector(24 DOWNTO 0)  -- sfix25_En23
        );
END filter;


ARCHITECTURE rtl OF filter IS

  -- Signals
  SIGNAL filter_in_signed                 : signed(15 DOWNTO 0);  -- sfix16_En15
  SIGNAL delay_pipeline_1                 : vector_of_signed16(0 TO 41);  -- sfix16_En15 [42]
  SIGNAL delay_pipeline_4                 : signed(15 DOWNTO 0);  -- sfix16_En15
  SIGNAL tapsum6_cast1                    : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL delay_pipeline_36                : signed(15 DOWNTO 0);  -- sfix16_En15
  SIGNAL tapsum6_cast2                    : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL tapsum6                          : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL delay_pipeline_6                 : signed(15 DOWNTO 0);  -- sfix16_En15
  SIGNAL tapsum8_cast1                    : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL delay_pipeline_34                : signed(15 DOWNTO 0);  -- sfix16_En15
  SIGNAL tapsum8_cast2                    : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL tapsum8                          : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL delay_pipeline_7                 : signed(15 DOWNTO 0);  -- sfix16_En15
  SIGNAL tapsum9_cast1                    : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL delay_pipeline_33                : signed(15 DOWNTO 0);  -- sfix16_En15
  SIGNAL tapsum9_cast2                    : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL tapsum9                          : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL delay_pipeline_9                 : signed(15 DOWNTO 0);  -- sfix16_En15
  SIGNAL tapsum11_cast1                   : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL delay_pipeline_31                : signed(15 DOWNTO 0);  -- sfix16_En15
  SIGNAL tapsum11_cast2                   : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL tapsum11                         : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL delay_pipeline_11                : signed(15 DOWNTO 0);  -- sfix16_En15
  SIGNAL tapsum13_cast1                   : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL delay_pipeline_29                : signed(15 DOWNTO 0);  -- sfix16_En15
  SIGNAL tapsum13_cast2                   : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL tapsum13                         : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL delay_pipeline_12                : signed(15 DOWNTO 0);  -- sfix16_En15
  SIGNAL tapsum14_cast1                   : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL delay_pipeline_28                : signed(15 DOWNTO 0);  -- sfix16_En15
  SIGNAL tapsum14_cast2                   : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL tapsum14                         : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL delay_pipeline_13                : signed(15 DOWNTO 0);  -- sfix16_En15
  SIGNAL tapsum15_cast1                   : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL delay_pipeline_27                : signed(15 DOWNTO 0);  -- sfix16_En15
  SIGNAL tapsum15_cast2                   : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL tapsum15                         : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL delay_pipeline_14                : signed(15 DOWNTO 0);  -- sfix16_En15
  SIGNAL tapsum16_cast1                   : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL delay_pipeline_26                : signed(15 DOWNTO 0);  -- sfix16_En15
  SIGNAL tapsum16_cast2                   : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL tapsum16                         : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL delay_pipeline_16                : signed(15 DOWNTO 0);  -- sfix16_En15
  SIGNAL tapsum18_cast1                   : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL delay_pipeline_24                : signed(15 DOWNTO 0);  -- sfix16_En15
  SIGNAL tapsum18_cast2                   : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL tapsum18                         : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL delay_pipeline_18                : signed(15 DOWNTO 0);  -- sfix16_En15
  SIGNAL tapsum20_cast1                   : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL delay_pipeline_22                : signed(15 DOWNTO 0);  -- sfix16_En15
  SIGNAL tapsum20_cast2                   : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL tapsum20                         : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL delay_pipeline_19                : signed(15 DOWNTO 0);  -- sfix16_En15
  SIGNAL tapsum21_cast1                   : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL delay_pipeline_21                : signed(15 DOWNTO 0);  -- sfix16_En15
  SIGNAL tapsum21_cast2                   : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL tapsum21                         : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL delay_pipeline_20                : signed(15 DOWNTO 0);  -- sfix16_En15
  SIGNAL tapsum1_cast1                    : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL delay_pipeline_41                : signed(15 DOWNTO 0);  -- sfix16_En15
  SIGNAL tapsum1_cast2                    : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL tapsum1                          : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL gain_mul_temp                    : signed(24 DOWNTO 0);  -- sfix25_En23
  SIGNAL product1                         : signed(23 DOWNTO 0);  -- sfix24_En23
  SIGNAL product1_out_pipe_cast           : signed(24 DOWNTO 0);  -- sfix25_En23
  SIGNAL sum1_cast1                       : signed(25 DOWNTO 0);  -- sfix26_En23
  SIGNAL tapsum2                          : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL tapsum2_in_pipe                  : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL product2                         : signed(23 DOWNTO 0);  -- sfix24_En23
  SIGNAL sum1_cast2                       : signed(25 DOWNTO 0);  -- sfix26_En23
  SIGNAL sum1_temp                        : signed(25 DOWNTO 0);  -- sfix26_En23
  SIGNAL sum1                             : signed(24 DOWNTO 0);  -- sfix25_En23
  SIGNAL sum2_cast1                       : signed(25 DOWNTO 0);  -- sfix26_En23
  SIGNAL delay_pipeline_1_1               : signed(15 DOWNTO 0);  -- sfix16_En15
  SIGNAL tapsum3_cast1                    : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL delay_pipeline_39                : signed(15 DOWNTO 0);  -- sfix16_En15
  SIGNAL tapsum3_cast2                    : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL tapsum3                          : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL gain_cast                        : signed(24 DOWNTO 0);  -- sfix25_En23
  SIGNAL product3                         : signed(23 DOWNTO 0);  -- sfix24_En23
  SIGNAL sum2_cast2                       : signed(25 DOWNTO 0);  -- sfix26_En23
  SIGNAL sum2_temp                        : signed(25 DOWNTO 0);  -- sfix26_En23
  SIGNAL sum2                             : signed(24 DOWNTO 0);  -- sfix25_En23
  SIGNAL sum3_cast1                       : signed(25 DOWNTO 0);  -- sfix26_En23
  SIGNAL delay_pipeline_2                 : signed(15 DOWNTO 0);  -- sfix16_En15
  SIGNAL tapsum4_cast1                    : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL delay_pipeline_38                : signed(15 DOWNTO 0);  -- sfix16_En15
  SIGNAL tapsum4_cast2                    : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL tapsum4                          : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL gain_mul_temp_1                  : signed(24 DOWNTO 0);  -- sfix25_En23
  SIGNAL product4                         : signed(23 DOWNTO 0);  -- sfix24_En23
  SIGNAL sum3_cast2                       : signed(25 DOWNTO 0);  -- sfix26_En23
  SIGNAL sum3_temp                        : signed(25 DOWNTO 0);  -- sfix26_En23
  SIGNAL sum3                             : signed(24 DOWNTO 0);  -- sfix25_En23
  SIGNAL sum4_cast1                       : signed(25 DOWNTO 0);  -- sfix26_En23
  SIGNAL delay_pipeline_3                 : signed(15 DOWNTO 0);  -- sfix16_En15
  SIGNAL tapsum5_cast1                    : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL delay_pipeline_37                : signed(15 DOWNTO 0);  -- sfix16_En15
  SIGNAL tapsum5_cast2                    : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL tapsum5                          : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL gain_mul_temp_2                  : signed(24 DOWNTO 0);  -- sfix25_En23
  SIGNAL product5                         : signed(23 DOWNTO 0);  -- sfix24_En23
  SIGNAL sum4_cast2                       : signed(25 DOWNTO 0);  -- sfix26_En23
  SIGNAL sum4_temp                        : signed(25 DOWNTO 0);  -- sfix26_En23
  SIGNAL sum4                             : signed(24 DOWNTO 0);  -- sfix25_En23
  SIGNAL sum5_cast1                       : signed(25 DOWNTO 0);  -- sfix26_En23
  SIGNAL coeff6                           : signed(7 DOWNTO 0);  -- sfix8_En8
  SIGNAL multiplier_mul_temp              : signed(24 DOWNTO 0);  -- sfix25_En23
  SIGNAL product6                         : signed(23 DOWNTO 0);  -- sfix24_En23
  SIGNAL sum5_cast2                       : signed(25 DOWNTO 0);  -- sfix26_En23
  SIGNAL sum5_temp                        : signed(25 DOWNTO 0);  -- sfix26_En23
  SIGNAL sum5                             : signed(24 DOWNTO 0);  -- sfix25_En23
  SIGNAL sum6_cast1                       : signed(25 DOWNTO 0);  -- sfix26_En23
  SIGNAL delay_pipeline_5                 : signed(15 DOWNTO 0);  -- sfix16_En15
  SIGNAL tapsum7_cast1                    : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL delay_pipeline_35                : signed(15 DOWNTO 0);  -- sfix16_En15
  SIGNAL tapsum7_cast2                    : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL tapsum7                          : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL gain_mul_temp_3                  : signed(24 DOWNTO 0);  -- sfix25_En23
  SIGNAL product7                         : signed(23 DOWNTO 0);  -- sfix24_En23
  SIGNAL sum6_cast2                       : signed(25 DOWNTO 0);  -- sfix26_En23
  SIGNAL sum6_temp                        : signed(25 DOWNTO 0);  -- sfix26_En23
  SIGNAL sum6                             : signed(24 DOWNTO 0);  -- sfix25_En23
  SIGNAL sum7_cast1                       : signed(25 DOWNTO 0);  -- sfix26_En23
  SIGNAL coeff8                           : signed(7 DOWNTO 0);  -- sfix8_En8
  SIGNAL multiplier_mul_temp_1            : signed(24 DOWNTO 0);  -- sfix25_En23
  SIGNAL product8                         : signed(23 DOWNTO 0);  -- sfix24_En23
  SIGNAL sum7_cast2                       : signed(25 DOWNTO 0);  -- sfix26_En23
  SIGNAL sum7_temp                        : signed(25 DOWNTO 0);  -- sfix26_En23
  SIGNAL sum7                             : signed(24 DOWNTO 0);  -- sfix25_En23
  SIGNAL sum8_cast1                       : signed(25 DOWNTO 0);  -- sfix26_En23
  SIGNAL coeff9                           : signed(7 DOWNTO 0);  -- sfix8_En8
  SIGNAL multiplier_mul_temp_2            : signed(24 DOWNTO 0);  -- sfix25_En23
  SIGNAL product9                         : signed(23 DOWNTO 0);  -- sfix24_En23
  SIGNAL sum8_cast2                       : signed(25 DOWNTO 0);  -- sfix26_En23
  SIGNAL sum8_temp                        : signed(25 DOWNTO 0);  -- sfix26_En23
  SIGNAL sum8                             : signed(24 DOWNTO 0);  -- sfix25_En23
  SIGNAL sum9_cast1                       : signed(25 DOWNTO 0);  -- sfix26_En23
  SIGNAL delay_pipeline_8                 : signed(15 DOWNTO 0);  -- sfix16_En15
  SIGNAL tapsum10_cast1                   : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL delay_pipeline_32                : signed(15 DOWNTO 0);  -- sfix16_En15
  SIGNAL tapsum10_cast2                   : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL tapsum10                         : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL gain_cast_1                      : signed(24 DOWNTO 0);  -- sfix25_En23
  SIGNAL product10                        : signed(23 DOWNTO 0);  -- sfix24_En23
  SIGNAL sum9_cast2                       : signed(25 DOWNTO 0);  -- sfix26_En23
  SIGNAL sum9_temp                        : signed(25 DOWNTO 0);  -- sfix26_En23
  SIGNAL sum9                             : signed(24 DOWNTO 0);  -- sfix25_En23
  SIGNAL sum10_cast1                      : signed(25 DOWNTO 0);  -- sfix26_En23
  SIGNAL coeff11                          : signed(7 DOWNTO 0);  -- sfix8_En8
  SIGNAL multiplier_mul_temp_3            : signed(24 DOWNTO 0);  -- sfix25_En23
  SIGNAL product11                        : signed(23 DOWNTO 0);  -- sfix24_En23
  SIGNAL sum10_cast2                      : signed(25 DOWNTO 0);  -- sfix26_En23
  SIGNAL sum10_temp                       : signed(25 DOWNTO 0);  -- sfix26_En23
  SIGNAL sum10                            : signed(24 DOWNTO 0);  -- sfix25_En23
  SIGNAL sum11_cast1                      : signed(25 DOWNTO 0);  -- sfix26_En23
  SIGNAL delay_pipeline_10                : signed(15 DOWNTO 0);  -- sfix16_En15
  SIGNAL tapsum12_cast1                   : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL delay_pipeline_30                : signed(15 DOWNTO 0);  -- sfix16_En15
  SIGNAL tapsum12_cast2                   : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL tapsum12                         : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL gain_cast_2                      : signed(24 DOWNTO 0);  -- sfix25_En23
  SIGNAL product12                        : signed(23 DOWNTO 0);  -- sfix24_En23
  SIGNAL sum11_cast2                      : signed(25 DOWNTO 0);  -- sfix26_En23
  SIGNAL sum11_temp                       : signed(25 DOWNTO 0);  -- sfix26_En23
  SIGNAL sum11                            : signed(24 DOWNTO 0);  -- sfix25_En23
  SIGNAL sum12_cast1                      : signed(25 DOWNTO 0);  -- sfix26_En23
  SIGNAL coeff13                          : signed(7 DOWNTO 0);  -- sfix8_En8
  SIGNAL multiplier_mul_temp_4            : signed(24 DOWNTO 0);  -- sfix25_En23
  SIGNAL product13                        : signed(23 DOWNTO 0);  -- sfix24_En23
  SIGNAL sum12_cast2                      : signed(25 DOWNTO 0);  -- sfix26_En23
  SIGNAL sum12_temp                       : signed(25 DOWNTO 0);  -- sfix26_En23
  SIGNAL sum12                            : signed(24 DOWNTO 0);  -- sfix25_En23
  SIGNAL sum13_cast1                      : signed(25 DOWNTO 0);  -- sfix26_En23
  SIGNAL coeff14                          : signed(7 DOWNTO 0);  -- sfix8_En8
  SIGNAL multiplier_mul_temp_5            : signed(24 DOWNTO 0);  -- sfix25_En23
  SIGNAL product14                        : signed(23 DOWNTO 0);  -- sfix24_En23
  SIGNAL sum13_cast2                      : signed(25 DOWNTO 0);  -- sfix26_En23
  SIGNAL sum13_temp                       : signed(25 DOWNTO 0);  -- sfix26_En23
  SIGNAL sum13                            : signed(24 DOWNTO 0);  -- sfix25_En23
  SIGNAL sum14_cast1                      : signed(25 DOWNTO 0);  -- sfix26_En23
  SIGNAL coeff15                          : signed(7 DOWNTO 0);  -- sfix8_En8
  SIGNAL multiplier_mul_temp_6            : signed(24 DOWNTO 0);  -- sfix25_En23
  SIGNAL product15                        : signed(23 DOWNTO 0);  -- sfix24_En23
  SIGNAL sum14_cast2                      : signed(25 DOWNTO 0);  -- sfix26_En23
  SIGNAL sum14_temp                       : signed(25 DOWNTO 0);  -- sfix26_En23
  SIGNAL sum14                            : signed(24 DOWNTO 0);  -- sfix25_En23
  SIGNAL sum15_cast1                      : signed(25 DOWNTO 0);  -- sfix26_En23
  SIGNAL coeff16                          : signed(7 DOWNTO 0);  -- sfix8_En8
  SIGNAL multiplier_mul_temp_7            : signed(24 DOWNTO 0);  -- sfix25_En23
  SIGNAL product16                        : signed(23 DOWNTO 0);  -- sfix24_En23
  SIGNAL sum15_cast2                      : signed(25 DOWNTO 0);  -- sfix26_En23
  SIGNAL sum15_temp                       : signed(25 DOWNTO 0);  -- sfix26_En23
  SIGNAL sum15                            : signed(24 DOWNTO 0);  -- sfix25_En23
  SIGNAL sum16_cast1                      : signed(25 DOWNTO 0);  -- sfix26_En23
  SIGNAL delay_pipeline_15                : signed(15 DOWNTO 0);  -- sfix16_En15
  SIGNAL tapsum17_cast1                   : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL delay_pipeline_25                : signed(15 DOWNTO 0);  -- sfix16_En15
  SIGNAL tapsum17_cast2                   : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL tapsum17                         : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL gain_mul_temp_4                  : signed(24 DOWNTO 0);  -- sfix25_En23
  SIGNAL product17                        : signed(23 DOWNTO 0);  -- sfix24_En23
  SIGNAL sum16_cast2                      : signed(25 DOWNTO 0);  -- sfix26_En23
  SIGNAL sum16_temp                       : signed(25 DOWNTO 0);  -- sfix26_En23
  SIGNAL sum16                            : signed(24 DOWNTO 0);  -- sfix25_En23
  SIGNAL sum17_cast1                      : signed(25 DOWNTO 0);  -- sfix26_En23
  SIGNAL coeff18                          : signed(7 DOWNTO 0);  -- sfix8_En8
  SIGNAL multiplier_mul_temp_8            : signed(24 DOWNTO 0);  -- sfix25_En23
  SIGNAL product18                        : signed(23 DOWNTO 0);  -- sfix24_En23
  SIGNAL sum17_cast2                      : signed(25 DOWNTO 0);  -- sfix26_En23
  SIGNAL sum17_temp                       : signed(25 DOWNTO 0);  -- sfix26_En23
  SIGNAL sum17                            : signed(24 DOWNTO 0);  -- sfix25_En23
  SIGNAL sum18_cast1                      : signed(25 DOWNTO 0);  -- sfix26_En23
  SIGNAL delay_pipeline_17                : signed(15 DOWNTO 0);  -- sfix16_En15
  SIGNAL tapsum19_cast1                   : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL delay_pipeline_23                : signed(15 DOWNTO 0);  -- sfix16_En15
  SIGNAL tapsum19_cast2                   : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL tapsum19                         : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL gain_cast_3                      : signed(24 DOWNTO 0);  -- sfix25_En23
  SIGNAL product19                        : signed(23 DOWNTO 0);  -- sfix24_En23
  SIGNAL sum18_cast2                      : signed(25 DOWNTO 0);  -- sfix26_En23
  SIGNAL sum18_temp                       : signed(25 DOWNTO 0);  -- sfix26_En23
  SIGNAL sum18                            : signed(24 DOWNTO 0);  -- sfix25_En23
  SIGNAL sum19_cast1                      : signed(25 DOWNTO 0);  -- sfix26_En23
  SIGNAL coeff20                          : signed(7 DOWNTO 0);  -- sfix8_En8
  SIGNAL multiplier_mul_temp_9            : signed(24 DOWNTO 0);  -- sfix25_En23
  SIGNAL product20                        : signed(23 DOWNTO 0);  -- sfix24_En23
  SIGNAL sum19_cast2                      : signed(25 DOWNTO 0);  -- sfix26_En23
  SIGNAL sum19_temp                       : signed(25 DOWNTO 0);  -- sfix26_En23
  SIGNAL sum19                            : signed(24 DOWNTO 0);  -- sfix25_En23
  SIGNAL sum20_cast1                      : signed(25 DOWNTO 0);  -- sfix26_En23
  SIGNAL coeff21                          : signed(7 DOWNTO 0);  -- sfix8_En8
  SIGNAL multiplier_mul_temp_10           : signed(24 DOWNTO 0);  -- sfix25_En23
  SIGNAL product21                        : signed(23 DOWNTO 0);  -- sfix24_En23
  SIGNAL sum20_cast2                      : signed(25 DOWNTO 0);  -- sfix26_En23
  SIGNAL sum20_temp                       : signed(25 DOWNTO 0);  -- sfix26_En23
  SIGNAL sum20                            : signed(24 DOWNTO 0);  -- sfix25_En23
  SIGNAL sum21_cast1                      : signed(25 DOWNTO 0);  -- sfix26_En23
  SIGNAL coeff22                          : signed(7 DOWNTO 0);  -- sfix8_En8
  SIGNAL product22                        : signed(23 DOWNTO 0);  -- sfix24_En23
  SIGNAL sum21_cast2                      : signed(25 DOWNTO 0);  -- sfix26_En23
  SIGNAL sum21_temp                       : signed(25 DOWNTO 0);  -- sfix26_En23
  SIGNAL sum21                            : signed(24 DOWNTO 0);  -- sfix25_En23

BEGIN
  filter_in_signed <= signed(filter_in);

  Delay_Pipeline_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      delay_pipeline_1 <= (OTHERS => to_signed(16#0000#, 16));
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        delay_pipeline_1(0) <= filter_in_signed;
        delay_pipeline_1(1 TO 41) <= delay_pipeline_1(0 TO 40);
      END IF;
    END IF;
  END PROCESS Delay_Pipeline_process;


  delay_pipeline_4 <= delay_pipeline_1(4);

  tapsum6_cast1 <= resize(delay_pipeline_4, 17);

  delay_pipeline_36 <= delay_pipeline_1(36);

  tapsum6_cast2 <= resize(delay_pipeline_36, 17);

  tapsum6 <= tapsum6_cast1 + tapsum6_cast2;

  delay_pipeline_6 <= delay_pipeline_1(6);

  tapsum8_cast1 <= resize(delay_pipeline_6, 17);

  delay_pipeline_34 <= delay_pipeline_1(34);

  tapsum8_cast2 <= resize(delay_pipeline_34, 17);

  tapsum8 <= tapsum8_cast1 + tapsum8_cast2;

  delay_pipeline_7 <= delay_pipeline_1(7);

  tapsum9_cast1 <= resize(delay_pipeline_7, 17);

  delay_pipeline_33 <= delay_pipeline_1(33);

  tapsum9_cast2 <= resize(delay_pipeline_33, 17);

  tapsum9 <= tapsum9_cast1 + tapsum9_cast2;

  delay_pipeline_9 <= delay_pipeline_1(9);

  tapsum11_cast1 <= resize(delay_pipeline_9, 17);

  delay_pipeline_31 <= delay_pipeline_1(31);

  tapsum11_cast2 <= resize(delay_pipeline_31, 17);

  tapsum11 <= tapsum11_cast1 + tapsum11_cast2;

  delay_pipeline_11 <= delay_pipeline_1(11);

  tapsum13_cast1 <= resize(delay_pipeline_11, 17);

  delay_pipeline_29 <= delay_pipeline_1(29);

  tapsum13_cast2 <= resize(delay_pipeline_29, 17);

  tapsum13 <= tapsum13_cast1 + tapsum13_cast2;

  delay_pipeline_12 <= delay_pipeline_1(12);

  tapsum14_cast1 <= resize(delay_pipeline_12, 17);

  delay_pipeline_28 <= delay_pipeline_1(28);

  tapsum14_cast2 <= resize(delay_pipeline_28, 17);

  tapsum14 <= tapsum14_cast1 + tapsum14_cast2;

  delay_pipeline_13 <= delay_pipeline_1(13);

  tapsum15_cast1 <= resize(delay_pipeline_13, 17);

  delay_pipeline_27 <= delay_pipeline_1(27);

  tapsum15_cast2 <= resize(delay_pipeline_27, 17);

  tapsum15 <= tapsum15_cast1 + tapsum15_cast2;

  delay_pipeline_14 <= delay_pipeline_1(14);

  tapsum16_cast1 <= resize(delay_pipeline_14, 17);

  delay_pipeline_26 <= delay_pipeline_1(26);

  tapsum16_cast2 <= resize(delay_pipeline_26, 17);

  tapsum16 <= tapsum16_cast1 + tapsum16_cast2;

  delay_pipeline_16 <= delay_pipeline_1(16);

  tapsum18_cast1 <= resize(delay_pipeline_16, 17);

  delay_pipeline_24 <= delay_pipeline_1(24);

  tapsum18_cast2 <= resize(delay_pipeline_24, 17);

  tapsum18 <= tapsum18_cast1 + tapsum18_cast2;

  delay_pipeline_18 <= delay_pipeline_1(18);

  tapsum20_cast1 <= resize(delay_pipeline_18, 17);

  delay_pipeline_22 <= delay_pipeline_1(22);

  tapsum20_cast2 <= resize(delay_pipeline_22, 17);

  tapsum20 <= tapsum20_cast1 + tapsum20_cast2;

  delay_pipeline_19 <= delay_pipeline_1(19);

  tapsum21_cast1 <= resize(delay_pipeline_19, 17);

  delay_pipeline_21 <= delay_pipeline_1(21);

  tapsum21_cast2 <= resize(delay_pipeline_21, 17);

  tapsum21 <= tapsum21_cast1 + tapsum21_cast2;

  delay_pipeline_20 <= delay_pipeline_1(20);

  tapsum1_cast1 <= resize(filter_in_signed, 17);

  delay_pipeline_41 <= delay_pipeline_1(41);

  tapsum1_cast2 <= resize(delay_pipeline_41, 17);

  tapsum1 <= tapsum1_cast1 + tapsum1_cast2;

  gain_mul_temp <= to_signed(-16#01#, 8) * tapsum1;
  product1 <= gain_mul_temp(23 DOWNTO 0);

  product1_out_pipe_cast <= resize(product1, 25);

  sum1_cast1 <= resize(product1_out_pipe_cast, 26);

  tapsum2_in_pipe <= tapsum2;

  product2 <= to_signed(16#000000#, 24);

  sum1_cast2 <= resize(product2, 26);

  sum1_temp <= sum1_cast1 + sum1_cast2;

  sum1 <= sum1_temp(24 DOWNTO 0);

  sum2_cast1 <= resize(sum1, 26);

  delay_pipeline_1_1 <= delay_pipeline_1(1);

  tapsum3_cast1 <= resize(delay_pipeline_1_1, 17);

  delay_pipeline_39 <= delay_pipeline_1(39);

  tapsum3_cast2 <= resize(delay_pipeline_39, 17);

  tapsum3 <= tapsum3_cast1 + tapsum3_cast2;

  gain_cast <= resize(tapsum3 & '0', 25);
  product3 <= gain_cast(23 DOWNTO 0);

  sum2_cast2 <= resize(product3, 26);

  sum2_temp <= sum2_cast1 + sum2_cast2;

  sum2 <= sum2_temp(24 DOWNTO 0);

  sum3_cast1 <= resize(sum2, 26);

  delay_pipeline_2 <= delay_pipeline_1(2);

  tapsum4_cast1 <= resize(delay_pipeline_2, 17);

  delay_pipeline_38 <= delay_pipeline_1(38);

  tapsum4_cast2 <= resize(delay_pipeline_38, 17);

  tapsum4 <= tapsum4_cast1 + tapsum4_cast2;

  -- CSD Encoding (2) : 10; Cost (Adders) = 0
  gain_mul_temp_1 <=  - (resize(tapsum4 & '0', 25));
  product4 <= gain_mul_temp_1(23 DOWNTO 0);

  sum3_cast2 <= resize(product4, 26);

  sum3_temp <= sum3_cast1 + sum3_cast2;

  sum3 <= sum3_temp(24 DOWNTO 0);

  sum4_cast1 <= resize(sum3, 26);

  delay_pipeline_3 <= delay_pipeline_1(3);

  tapsum5_cast1 <= resize(delay_pipeline_3, 17);

  delay_pipeline_37 <= delay_pipeline_1(37);

  tapsum5_cast2 <= resize(delay_pipeline_37, 17);

  tapsum5 <= tapsum5_cast1 + tapsum5_cast2;

  gain_mul_temp_2 <= to_signed(-16#01#, 8) * tapsum5;
  product5 <= gain_mul_temp_2(23 DOWNTO 0);

  sum4_cast2 <= resize(product5, 26);

  sum4_temp <= sum4_cast1 + sum4_cast2;

  sum4 <= sum4_temp(24 DOWNTO 0);

  sum5_cast1 <= resize(sum4, 26);

  coeff6 <= to_signed(16#03#, 8);

  multiplier_mul_temp <= tapsum6 * coeff6;
  product6 <= multiplier_mul_temp(23 DOWNTO 0);

  sum5_cast2 <= resize(product6, 26);

  sum5_temp <= sum5_cast1 + sum5_cast2;

  sum5 <= sum5_temp(24 DOWNTO 0);

  sum6_cast1 <= resize(sum5, 26);

  delay_pipeline_5 <= delay_pipeline_1(5);

  tapsum7_cast1 <= resize(delay_pipeline_5, 17);

  delay_pipeline_35 <= delay_pipeline_1(35);

  tapsum7_cast2 <= resize(delay_pipeline_35, 17);

  tapsum7 <= tapsum7_cast1 + tapsum7_cast2;

  gain_mul_temp_3 <= to_signed(-16#01#, 8) * tapsum7;
  product7 <= gain_mul_temp_3(23 DOWNTO 0);

  sum6_cast2 <= resize(product7, 26);

  sum6_temp <= sum6_cast1 + sum6_cast2;

  sum6 <= sum6_temp(24 DOWNTO 0);

  sum7_cast1 <= resize(sum6, 26);

  coeff8 <= to_signed(-16#03#, 8);

  multiplier_mul_temp_1 <= tapsum8 * coeff8;
  product8 <= multiplier_mul_temp_1(23 DOWNTO 0);

  sum7_cast2 <= resize(product8, 26);

  sum7_temp <= sum7_cast1 + sum7_cast2;

  sum7 <= sum7_temp(24 DOWNTO 0);

  sum8_cast1 <= resize(sum7, 26);

  coeff9 <= to_signed(16#03#, 8);

  multiplier_mul_temp_2 <= tapsum9 * coeff9;
  product9 <= multiplier_mul_temp_2(23 DOWNTO 0);

  sum8_cast2 <= resize(product9, 26);

  sum8_temp <= sum8_cast1 + sum8_cast2;

  sum8 <= sum8_temp(24 DOWNTO 0);

  sum9_cast1 <= resize(sum8, 26);

  delay_pipeline_8 <= delay_pipeline_1(8);

  tapsum10_cast1 <= resize(delay_pipeline_8, 17);

  delay_pipeline_32 <= delay_pipeline_1(32);

  tapsum10_cast2 <= resize(delay_pipeline_32, 17);

  tapsum10 <= tapsum10_cast1 + tapsum10_cast2;

  gain_cast_1 <= resize(tapsum10 & '0', 25);
  product10 <= gain_cast_1(23 DOWNTO 0);

  sum9_cast2 <= resize(product10, 26);

  sum9_temp <= sum9_cast1 + sum9_cast2;

  sum9 <= sum9_temp(24 DOWNTO 0);

  sum10_cast1 <= resize(sum9, 26);

  coeff11 <= to_signed(-16#06#, 8);

  multiplier_mul_temp_3 <= tapsum11 * coeff11;
  product11 <= multiplier_mul_temp_3(23 DOWNTO 0);

  sum10_cast2 <= resize(product11, 26);

  sum10_temp <= sum10_cast1 + sum10_cast2;

  sum10 <= sum10_temp(24 DOWNTO 0);

  sum11_cast1 <= resize(sum10, 26);

  delay_pipeline_10 <= delay_pipeline_1(10);

  tapsum12_cast1 <= resize(delay_pipeline_10, 17);

  delay_pipeline_30 <= delay_pipeline_1(30);

  tapsum12_cast2 <= resize(delay_pipeline_30, 17);

  tapsum12 <= tapsum12_cast1 + tapsum12_cast2;

  gain_cast_2 <= resize(tapsum12, 25);
  product12 <= gain_cast_2(23 DOWNTO 0);

  sum11_cast2 <= resize(product12, 26);

  sum11_temp <= sum11_cast1 + sum11_cast2;

  sum11 <= sum11_temp(24 DOWNTO 0);

  sum12_cast1 <= resize(sum11, 26);

  coeff13 <= to_signed(16#07#, 8);

  multiplier_mul_temp_4 <= tapsum13 * coeff13;
  product13 <= multiplier_mul_temp_4(23 DOWNTO 0);

  sum12_cast2 <= resize(product13, 26);

  sum12_temp <= sum12_cast1 + sum12_cast2;

  sum12 <= sum12_temp(24 DOWNTO 0);

  sum13_cast1 <= resize(sum12, 26);

  coeff14 <= to_signed(-16#06#, 8);

  multiplier_mul_temp_5 <= tapsum14 * coeff14;
  product14 <= multiplier_mul_temp_5(23 DOWNTO 0);

  sum13_cast2 <= resize(product14, 26);

  sum13_temp <= sum13_cast1 + sum13_cast2;

  sum13 <= sum13_temp(24 DOWNTO 0);

  sum14_cast1 <= resize(sum13, 26);

  coeff15 <= to_signed(-16#05#, 8);

  multiplier_mul_temp_6 <= tapsum15 * coeff15;
  product15 <= multiplier_mul_temp_6(23 DOWNTO 0);

  sum14_cast2 <= resize(product15, 26);

  sum14_temp <= sum14_cast1 + sum14_cast2;

  sum14 <= sum14_temp(24 DOWNTO 0);

  sum15_cast1 <= resize(sum14, 26);

  coeff16 <= to_signed(16#0C#, 8);

  multiplier_mul_temp_7 <= tapsum16 * coeff16;
  product16 <= multiplier_mul_temp_7(23 DOWNTO 0);

  sum15_cast2 <= resize(product16, 26);

  sum15_temp <= sum15_cast1 + sum15_cast2;

  sum15 <= sum15_temp(24 DOWNTO 0);

  sum16_cast1 <= resize(sum15, 26);

  delay_pipeline_15 <= delay_pipeline_1(15);

  tapsum17_cast1 <= resize(delay_pipeline_15, 17);

  delay_pipeline_25 <= delay_pipeline_1(25);

  tapsum17_cast2 <= resize(delay_pipeline_25, 17);

  tapsum17 <= tapsum17_cast1 + tapsum17_cast2;

  gain_mul_temp_4 <= to_signed(-16#01#, 8) * tapsum17;
  product17 <= gain_mul_temp_4(23 DOWNTO 0);

  sum16_cast2 <= resize(product17, 26);

  sum16_temp <= sum16_cast1 + sum16_cast2;

  sum16 <= sum16_temp(24 DOWNTO 0);

  sum17_cast1 <= resize(sum16, 26);

  coeff18 <= to_signed(-16#12#, 8);

  multiplier_mul_temp_8 <= tapsum18 * coeff18;
  product18 <= multiplier_mul_temp_8(23 DOWNTO 0);

  sum17_cast2 <= resize(product18, 26);

  sum17_temp <= sum17_cast1 + sum17_cast2;

  sum17 <= sum17_temp(24 DOWNTO 0);

  sum18_cast1 <= resize(sum17, 26);

  delay_pipeline_17 <= delay_pipeline_1(17);

  tapsum19_cast1 <= resize(delay_pipeline_17, 17);

  delay_pipeline_23 <= delay_pipeline_1(23);

  tapsum19_cast2 <= resize(delay_pipeline_23, 17);

  tapsum19 <= tapsum19_cast1 + tapsum19_cast2;

  gain_cast_3 <= resize(tapsum19 & '0' & '0' & '0' & '0', 25);
  product19 <= gain_cast_3(23 DOWNTO 0);

  sum18_cast2 <= resize(product19, 26);

  sum18_temp <= sum18_cast1 + sum18_cast2;

  sum18 <= sum18_temp(24 DOWNTO 0);

  sum19_cast1 <= resize(sum18, 26);

  coeff20 <= to_signed(16#16#, 8);

  multiplier_mul_temp_9 <= tapsum20 * coeff20;
  product20 <= multiplier_mul_temp_9(23 DOWNTO 0);

  sum19_cast2 <= resize(product20, 26);

  sum19_temp <= sum19_cast1 + sum19_cast2;

  sum19 <= sum19_temp(24 DOWNTO 0);

  sum20_cast1 <= resize(sum19, 26);

  coeff21 <= to_signed(-16#4B#, 8);

  multiplier_mul_temp_10 <= tapsum21 * coeff21;
  product21 <= multiplier_mul_temp_10(23 DOWNTO 0);

  sum20_cast2 <= resize(product21, 26);

  sum20_temp <= sum20_cast1 + sum20_cast2;

  sum20 <= sum20_temp(24 DOWNTO 0);

  sum21_cast1 <= resize(sum20, 26);

  coeff22 <= to_signed(16#64#, 8);

  product22 <= delay_pipeline_20 * coeff22;

  sum21_cast2 <= resize(product22, 26);

  sum21_temp <= sum21_cast1 + sum21_cast2;

  sum21 <= sum21_temp(24 DOWNTO 0);

  filter_out <= std_logic_vector(sum21);

END rtl;

