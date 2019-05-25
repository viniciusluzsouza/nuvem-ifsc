--=============================
-- Listing 7.27 rotate-right shifter
--=============================
library ieee;
use ieee.std_logic_1164.all;
entity rotate_right_16 is
   port(
      a: in std_logic_vector(15 downto 0);
      amt: in std_logic_vector(3 downto 0);
      y: out std_logic_vector(15 downto 0)
   );
end rotate_right_16;

--architecture direct_arch_16 of rotate_right_16 is
--begin
--   with amt select
--       y<= a                             when "0000",
--           a(0) & a(15 downto 1)          when "0001",
--           a(1 downto 0) & a(15 downto 2) when "0010",
--           a(2 downto 0) & a(15 downto 3) when "0011",
--           a(3 downto 0) & a(15 downto 4) when "0100",
--           a(4 downto 0) & a(15 downto 5) when "0101",
--           a(5 downto 0) & a(15 downto 6) when "0110",
--			  a(6 downto 0) & a(15 downto 7) when "0111",
--			  a(7 downto 0) & a(15 downto 8) when "1000",
--			  a(8 downto 0) & a(15 downto 9) when "1001",
--			  a(9 downto 0) & a(15 downto 10) when "1010",
--			  a(10 downto 0) & a(15 downto 11) when "1011",
--			  a(11 downto 0) & a(15 downto 12) when "1100",
--			  a(12 downto 0) & a(15 downto 13) when "1101",
--			  a(13 downto 0) & a(15 downto 14) when "1110",
--           a(14 downto 0) & a(15) when others; -- 1111
--end direct_arch_16;

--=============================
-- Listing 7.28
--=============================
architecture multi_level_arch_16 of rotate_right_16 is
   signal le0_out, le1_out, le2_out, le3_out:
      std_logic_vector(15 downto 0);
begin
   -- level 0, shift 0 or 1 bit
   le0_out <= a(0) & a(15 downto 1) when amt(0)='1' else
              a;
   -- level 1, shift 0 or 2 bits
   le1_out <=
     le0_out(1 downto 0) & le0_out(15 downto 2)
        when amt(1)='1' else
     le0_out;
   -- level 2, shift 0 or 4 bits
   le2_out <=
     le1_out(3 downto 0) & le1_out(15 downto 4)
        when amt(2)='1' else
     le1_out;
   -- level 3, shift 0 or 8 bits
   le3_out <=
     le2_out(7 downto 0) & le2_out(15 downto 8)
        when amt(3)='1' else
     le2_out;
   -- output
   y <= le3_out;
end multi_level_arch_16;