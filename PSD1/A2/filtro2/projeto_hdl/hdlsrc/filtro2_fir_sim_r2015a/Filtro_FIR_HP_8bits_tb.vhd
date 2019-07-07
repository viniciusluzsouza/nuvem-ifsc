-- -------------------------------------------------------------
-- 
-- File Name: /home/vinicius.ls/PSD1/A2/filtro2/projeto_hdl/hdlsrc/filtro2_fir_sim_r2015a/Filtro_FIR_HP_8bits_tb.vhd
-- Created: 2019-07-06 23:28:34
-- 
-- Generated by MATLAB 8.5 and HDL Coder 3.6
-- 
-- 
-- -------------------------------------------------------------
-- Rate and Clocking Details
-- -------------------------------------------------------------
-- Model base rate: 0.0001
-- Target subsystem base rate: 0.0001
-- 
-- 
-- Clock Enable  Sample Time
-- -------------------------------------------------------------
-- ce_out        0.0001
-- -------------------------------------------------------------
-- 
-- 
-- Output Signal                 Clock Enable  Sample Time
-- -------------------------------------------------------------
-- Out_rsvd                      ce_out        0.0001
-- -------------------------------------------------------------
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: Filtro_FIR_HP_8bits_tb
-- Source Path: 
-- Hierarchy Level: 0
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
LIBRARY work;
USE work.Filtro_FIR_HP_8bits_pkg.ALL;
USE work.Filtro_FIR_HP_8bits_tb_pkg.ALL;

ENTITY Filtro_FIR_HP_8bits_tb IS
END Filtro_FIR_HP_8bits_tb;


ARCHITECTURE rtl OF Filtro_FIR_HP_8bits_tb IS

  -- Component Declarations
  COMPONENT Filtro_FIR_HP_8bits_tb_data
    PORT( Sinal_Nao_Filtrado_addr         :   IN    std_logic_vector(13 DOWNTO 0);  -- ufix14
          Out_rsvd_addr                   :   IN    std_logic_vector(13 DOWNTO 0);  -- ufix14
          rdEnb                           :   IN    std_logic;
          Sinal_Nao_Filtrado_force        :   OUT   std_logic_vector(24 DOWNTO 0);  -- sfix25_En23
          Out_rsvd_expected               :   OUT   std_logic_vector(24 DOWNTO 0)  -- sfix25_En23
          );
  END COMPONENT;

  COMPONENT Filtro_FIR_HP_8bits
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          clk_enable                      :   IN    std_logic;
          In_rsvd                         :   IN    std_logic_vector(24 DOWNTO 0);  -- sfix25_En23
          ce_out                          :   OUT   std_logic;
          Out_rsvd                        :   OUT   std_logic_vector(24 DOWNTO 0)  -- sfix25_En23
          );
  END COMPONENT;

  -- Component Configuration Statements
  FOR ALL : Filtro_FIR_HP_8bits_tb_data
    USE ENTITY work.Filtro_FIR_HP_8bits_tb_data(rtl);

  FOR ALL : Filtro_FIR_HP_8bits
    USE ENTITY work.Filtro_FIR_HP_8bits(rtl);

  -- Signals
  SIGNAL clk                              : std_logic;
  SIGNAL reset                            : std_logic;
  SIGNAL clk_enable                       : std_logic;
  SIGNAL Out_rsvd_addr                    : unsigned(13 DOWNTO 0);  -- ufix14
  SIGNAL Out_rsvd_active                  : std_logic;  -- ufix1
  SIGNAL Sinal_Nao_Filtrado_addr          : unsigned(13 DOWNTO 0);  -- ufix14
  SIGNAL Sinal_Nao_Filtrado_active        : std_logic;  -- ufix1
  SIGNAL rdEnb                            : std_logic;
  SIGNAL tb_enb_delay                     : std_logic;
  SIGNAL Sinal_Nao_Filtrado_enb           : std_logic;  -- ufix1
  SIGNAL In_rsvd                          : std_logic_vector(24 DOWNTO 0);  -- ufix25
  SIGNAL Out_rsvd_ref                     : std_logic_vector(24 DOWNTO 0);  -- ufix25
  SIGNAL Out_rsvd_done                    : std_logic;  -- ufix1
  SIGNAL snkDonen                         : std_logic;
  SIGNAL resetn                           : std_logic;
  SIGNAL tb_enb                           : std_logic;
  SIGNAL ce_out                           : std_logic;
  SIGNAL Out_rsvd                         : std_logic_vector(24 DOWNTO 0);  -- ufix25
  SIGNAL Out_rsvd_enb                     : std_logic;  -- ufix1
  SIGNAL Out_rsvd_lastAddr                : std_logic;  -- ufix1
  SIGNAL Out_rsvd_signed                  : signed(24 DOWNTO 0);  -- sfix25_En23
  SIGNAL Out_rsvd_ref_signed              : signed(24 DOWNTO 0);  -- sfix25_En23
  SIGNAL Out_rsvd_testFailure             : std_logic;  -- ufix1

BEGIN
  u_Filtro_FIR_HP_8bits_tb_data : Filtro_FIR_HP_8bits_tb_data
    PORT MAP( Sinal_Nao_Filtrado_addr => std_logic_vector(Sinal_Nao_Filtrado_addr),  -- ufix14
              Out_rsvd_addr => std_logic_vector(Out_rsvd_addr),  -- ufix14
              rdEnb => rdEnb,
              Sinal_Nao_Filtrado_force => In_rsvd,  -- sfix25_En23
              Out_rsvd_expected => Out_rsvd_ref  -- sfix25_En23
              );

  u_Filtro_FIR_HP_8bits : Filtro_FIR_HP_8bits
    PORT MAP( clk => clk,
              reset => reset,
              clk_enable => clk_enable,
              In_rsvd => In_rsvd,  -- sfix25_En23
              ce_out => ce_out,
              Out_rsvd => Out_rsvd  -- sfix25_En23
              );

  
  Out_rsvd_active <= '1' WHEN Out_rsvd_addr /= to_unsigned(16#2710#, 14) ELSE
      '0';

  
  Sinal_Nao_Filtrado_active <= '1' WHEN Sinal_Nao_Filtrado_addr /= to_unsigned(16#2710#, 14) ELSE
      '0';

  Sinal_Nao_Filtrado_enb <= Sinal_Nao_Filtrado_active AND (rdEnb AND tb_enb_delay);

  -- Count limited, Unsigned Counter
  --  initial value   = 0
  --  step value      = 1
  --  count to value  = 10000
  DataTypeConversion1_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      Sinal_Nao_Filtrado_addr <= to_unsigned(16#0000#, 14);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF Sinal_Nao_Filtrado_enb = '1' THEN
        IF Sinal_Nao_Filtrado_addr = to_unsigned(16#2710#, 14) THEN 
          Sinal_Nao_Filtrado_addr <= to_unsigned(16#0000#, 14);
        ELSE 
          Sinal_Nao_Filtrado_addr <= Sinal_Nao_Filtrado_addr + to_unsigned(16#0001#, 14);
        END IF;
      END IF;
    END IF;
  END PROCESS DataTypeConversion1_process;


  snkDonen <=  NOT Out_rsvd_done;

  resetn <=  NOT reset;

  tb_enb <= resetn AND snkDonen;

  -- Delay inside enable generation: register depth 
  u_enable_delay_process: PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      tb_enb_delay <= '0';
    ELSIF clk'event AND clk = '1' THEN
      tb_enb_delay <= tb_enb;
    END IF;
  END PROCESS u_enable_delay_process;

  
  rdEnb <= tb_enb_delay WHEN Out_rsvd_done = '0' ELSE
      '0';

  clk_enable <= rdEnb AFTER 2 ns;

  reset_gen: PROCESS 
  BEGIN
    reset <= '1';
    WAIT FOR 20 ns;
    WAIT UNTIL clk'event AND clk = '1';
    WAIT FOR 2 ns;
    reset <= '0';
    WAIT;
  END PROCESS reset_gen;

  clk_gen: PROCESS 
  BEGIN
    clk <= '1';
    WAIT FOR 5 ns;
    clk <= '0';
    WAIT FOR 5 ns;
    IF Out_rsvd_done = '1' THEN
      clk <= '1';
      WAIT FOR 5 ns;
      clk <= '0';
      WAIT FOR 5 ns;
      WAIT;
    END IF;
  END PROCESS clk_gen;

  Out_rsvd_enb <= ce_out AND Out_rsvd_active;

  -- Count limited, Unsigned Counter
  --  initial value   = 0
  --  step value      = 1
  --  count to value  = 10000
  c_3_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      Out_rsvd_addr <= to_unsigned(16#0000#, 14);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF Out_rsvd_enb = '1' THEN
        IF Out_rsvd_addr = to_unsigned(16#2710#, 14) THEN 
          Out_rsvd_addr <= to_unsigned(16#0000#, 14);
        ELSE 
          Out_rsvd_addr <= Out_rsvd_addr + to_unsigned(16#0001#, 14);
        END IF;
      END IF;
    END IF;
  END PROCESS c_3_process;


  
  Out_rsvd_lastAddr <= '1' WHEN Out_rsvd_addr >= to_unsigned(16#2710#, 14) ELSE
      '0';

  Out_rsvd_done <= Out_rsvd_lastAddr AND resetn;

  Out_rsvd_signed <= signed(Out_rsvd);

  Out_rsvd_ref_signed <= signed(Out_rsvd_ref);

  Out_rsvd_signed_checker: PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      Out_rsvd_testFailure <= '0';
    ELSIF clk'event AND clk = '1' THEN
      IF ce_out = '1' AND Out_rsvd_signed /= Out_rsvd_ref_signed THEN
        Out_rsvd_testFailure <= '1';
        ASSERT FALSE
          REPORT "Error in Out_rsvd_signed: Expected " & to_hex(Out_rsvd_ref_signed) & (" Actual " & to_hex(Out_rsvd_signed))
          SEVERITY ERROR;
      END IF;
    END IF;
  END PROCESS Out_rsvd_signed_checker;

  completed_msg: PROCESS (clk)
  BEGIN
    IF clk'event AND clk = '1' THEN
      IF Out_rsvd_done = '1' THEN
        IF Out_rsvd_testFailure = '0' THEN
          ASSERT FALSE
            REPORT "**************TEST COMPLETED (PASSED)**************"
            SEVERITY NOTE;
        ELSE
          ASSERT FALSE
            REPORT "**************TEST COMPLETED (FAILED)**************"
            SEVERITY NOTE;
        END IF;
      END IF;
    END IF;
  END PROCESS completed_msg;

END rtl;

