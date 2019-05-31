--=============================
-- Listing 7.13 barrel shifter
--=============================
library ieee;
use ieee.std_logic_1164.all;
entity shift3mode is
   port(
      a: in std_logic_vector(63 downto 0);
      lar: in std_logic_vector(1 downto 0);
      amt: in std_logic_vector(5 downto 0);
      y: out std_logic_vector(63 downto 0)
   );
end shift3mode ;

--architecture direct_arch of shift3mode is
--   signal logic_result, arith_result, rot_result:
--      std_logic_vector(63 downto 0);
--begin
--   with amt select
--       rot_result<=
--          a                                when "000000",
--          a(0) & a(63 downto 1)            when "000001",
--          a(1 downto 0) & a(63 downto 2)   when "000010",
--          a(2 downto 0) & a(63 downto 3)   when "000011",
--          a(3 downto 0) & a(63 downto 4)   when "000100",
--          a(4 downto 0) & a(63 downto 5)   when "000101",
--          a(5 downto 0) & a(63 downto 6)   when "000110",
--          a(6 downto 0) & a(63 downto 7)   when "000111",
--			 a(7 downto 0) & a(63 downto 8)   when "001000",
--          a(8 downto 0) & a(63 downto 9)   when "001001",
--          a(9 downto 0) & a(63 downto 10)  when "001010",
--          a(10 downto 0) & a(63 downto 11) when "001011",
--          a(11 downto 0) & a(63 downto 12) when "001100",
--          a(12 downto 0) & a(63 downto 13) when "001101",
--          a(13 downto 0) & a(63 downto 14) when "001110",
--          a(14 downto 0) & a(63 downto 15) when "001111",
--          a(15 downto 0) & a(63 downto 16) when "010000",
--          a(16 downto 0) & a(63 downto 17) when "010001",
--          a(17 downto 0) & a(63 downto 18) when "010010",
--          a(18 downto 0) & a(63 downto 19) when "010011",
--          a(19 downto 0) & a(63 downto 20) when "010100",
--          a(20 downto 0) & a(63 downto 21) when "010101",
--          a(21 downto 0) & a(63 downto 22) when "010110",
--          a(22 downto 0) & a(63 downto 23) when "010111",
--			 a(23 downto 0) & a(63 downto 24) when "011000",
--          a(24 downto 0) & a(63 downto 25) when "011001",
--          a(25 downto 0) & a(63 downto 26) when "011010",
--          a(26 downto 0) & a(63 downto 27) when "011011",
--          a(27 downto 0) & a(63 downto 28) when "011100",
--          a(28 downto 0) & a(63 downto 29) when "011101",
--          a(29 downto 0) & a(63 downto 30) when "011110",
--          a(30 downto 0) & a(63 downto 31) when "011111",
--          a(31 downto 0) & a(63 downto 32) when "100000",
--          a(32 downto 0) & a(63 downto 33) when "100001",
--          a(33 downto 0) & a(63 downto 34) when "100010",
--          a(34 downto 0) & a(63 downto 35) when "100011",
--          a(35 downto 0) & a(63 downto 36) when "100100",
--          a(36 downto 0) & a(63 downto 37) when "100101",
--          a(37 downto 0) & a(63 downto 38) when "100110",
--          a(38 downto 0) & a(63 downto 39) when "100111",
--			 a(39 downto 0) & a(63 downto 40) when "101000",
--          a(40 downto 0) & a(63 downto 41) when "101001",
--          a(41 downto 0) & a(63 downto 42) when "101010",
--          a(42 downto 0) & a(63 downto 43) when "101011",
--          a(43 downto 0) & a(63 downto 44) when "101100",
--          a(44 downto 0) & a(63 downto 45) when "101101",
--          a(45 downto 0) & a(63 downto 46) when "101110",
--          a(46 downto 0) & a(63 downto 47) when "101111",
--          a(47 downto 0) & a(63 downto 48) when "110000",
--          a(48 downto 0) & a(63 downto 49) when "110001",
--          a(49 downto 0) & a(63 downto 50) when "110010",
--          a(50 downto 0) & a(63 downto 51) when "110011",
--          a(51 downto 0) & a(63 downto 52) when "110100",
--          a(52 downto 0) & a(63 downto 53) when "110101",
--          a(53 downto 0) & a(63 downto 54) when "110110",
--          a(54 downto 0) & a(63 downto 55) when "110111",
--			 a(55 downto 0) & a(63 downto 56) when "111000",
--          a(56 downto 0) & a(63 downto 57) when "111001",
--          a(57 downto 0) & a(63 downto 58) when "111010",
--          a(58 downto 0) & a(63 downto 59) when "111011",
--          a(59 downto 0) & a(63 downto 60) when "111100",
--          a(60 downto 0) & a(63 downto 61) when "111101",
--          a(61 downto 0) & a(63 downto 62) when "111110",
--          a(62 downto 0) & a(63) when others; -- "111111"
--
--   with amt select
--      logic_result<=
--          a                    when "000000",
--          "0" & a(63 downto 1)  when "000001",
--          "00" & a(63 downto 2)  when "000010",
--          "000" & a(63 downto 3)  when "000011",
--          "0000" & a(63 downto 4)  when "000100",
--          "00000" & a(63 downto 5)  when "000101",
--          "000000" & a(63 downto 6)  when "000110",
--          "0000000" & a(63 downto 7)  when "000111",
--			 "00000000" & a(63 downto 8)  when "001000",
--          "000000000" & a(63 downto 9)  when "001001",
--          "0000000000" & a(63 downto 10) when "001010",
--          "00000000000" & a(63 downto 11) when "001011",
--          "000000000000" & a(63 downto 12) when "001100",
--          "0000000000000" & a(63 downto 13) when "001101",
--          "00000000000000" & a(63 downto 14) when "001110",
--          "000000000000000" & a(63 downto 15) when "001111",
--          "0000000000000000" & a(63 downto 16) when "010000",
--          "00000000000000000" & a(63 downto 17) when "010001",
--          "000000000000000000" & a(63 downto 18) when "010010",
--          "0000000000000000000" & a(63 downto 19) when "010011",
--          "00000000000000000000" & a(63 downto 20) when "010100",
--          "000000000000000000000" & a(63 downto 21) when "010101",
--          "0000000000000000000000" & a(63 downto 22) when "010110",
--          "00000000000000000000000" & a(63 downto 23) when "010111",
--			 "000000000000000000000000" & a(63 downto 24) when "011000",
--          "0000000000000000000000000" & a(63 downto 25) when "011001",
--          "00000000000000000000000000" & a(63 downto 26) when "011010",
--          "000000000000000000000000000" & a(63 downto 27) when "011011",
--          "0000000000000000000000000000" & a(63 downto 28) when "011100",
--          "00000000000000000000000000000" & a(63 downto 29) when "011101",
--          "000000000000000000000000000000" & a(63 downto 30) when "011110",
--          "0000000000000000000000000000000" & a(63 downto 31) when "011111",
--          "00000000000000000000000000000000" & a(63 downto 32) when "100000",
--          "000000000000000000000000000000000" & a(63 downto 33) when "100001",
--          "0000000000000000000000000000000000" & a(63 downto 34) when "100010",
--          "00000000000000000000000000000000000" & a(63 downto 35) when "100011",
--          "000000000000000000000000000000000000" & a(63 downto 36) when "100100",
--          "0000000000000000000000000000000000000" & a(63 downto 37) when "100101",
--          "00000000000000000000000000000000000000" & a(63 downto 38) when "100110",
--          "000000000000000000000000000000000000000" & a(63 downto 39) when "100111",
--			 "0000000000000000000000000000000000000000" & a(63 downto 40) when "101000",
--          "00000000000000000000000000000000000000000" & a(63 downto 41) when "101001",
--          "000000000000000000000000000000000000000000" & a(63 downto 42) when "101010",
--          "0000000000000000000000000000000000000000000" & a(63 downto 43) when "101011",
--          "00000000000000000000000000000000000000000000" & a(63 downto 44) when "101100",
--          "000000000000000000000000000000000000000000000" & a(63 downto 45) when "101101",
--          "0000000000000000000000000000000000000000000000" & a(63 downto 46) when "101110",
--          "00000000000000000000000000000000000000000000000" & a(63 downto 47) when "101111",
--          "000000000000000000000000000000000000000000000000" & a(63 downto 48) when "110000",
--          "0000000000000000000000000000000000000000000000000" & a(63 downto 49) when "110001",
--          "00000000000000000000000000000000000000000000000000" & a(63 downto 50) when "110010",
--          "000000000000000000000000000000000000000000000000000" & a(63 downto 51) when "110011",
--          "0000000000000000000000000000000000000000000000000000" & a(63 downto 52) when "110100",
--          "00000000000000000000000000000000000000000000000000000" & a(63 downto 53) when "110101",
--          "000000000000000000000000000000000000000000000000000000" & a(63 downto 54) when "110110",
--          "0000000000000000000000000000000000000000000000000000000" & a(63 downto 55) when "110111",
--			 "00000000000000000000000000000000000000000000000000000000" & a(63 downto 56) when "111000",
--          "000000000000000000000000000000000000000000000000000000000" & a(63 downto 57) when "111001",
--          "0000000000000000000000000000000000000000000000000000000000" & a(63 downto 58) when "111010",
--          "00000000000000000000000000000000000000000000000000000000000" & a(63 downto 59) when "111011",
--          "000000000000000000000000000000000000000000000000000000000000" & a(63 downto 60) when "111100",
--          "0000000000000000000000000000000000000000000000000000000000000" & a(63 downto 61) when "111101",
--          "00000000000000000000000000000000000000000000000000000000000000" & a(63 downto 62) when "111110",
--          "000000000000000000000000000000000000000000000000000000000000000" & a(63) when others; -- "111111"
--
--   with amt select
--      arith_result<=
--         a               when "000000",
--			a(63)& a(63 downto 1) when "000001",
--			a(63)&a(63)& a(63 downto 2) when "000010",
--			a(63)&a(63)&a(63)& a(63 downto 3) when "000011",
--			a(63)&a(63)&a(63)&a(63)& a(63 downto 4) when "000100",
--			a(63)&a(63)&a(63)&a(63)&a(63)& a(63 downto 5) when "000101",
--			a(63)&a(63)&a(63)&a(63)&a(63)&a(63)& a(63 downto 6) when "000110",
--			a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)& a(63 downto 7) when "000111",
--			a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)& a(63 downto 8) when "001000",
--			a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)& a(63 downto 9) when "001001",
--			a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)& a(63 downto 10) when "001010",
--			a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)& a(63 downto 11) when "001011",
--			a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)& a(63 downto 12) when "001100",
--			a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)& a(63 downto 13) when "001101",
--			a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)& a(63 downto 14) when "001110",
--			a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)& a(63 downto 15) when "001111",
--			a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)& a(63 downto 16) when "010000",
--			a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)& a(63 downto 17) when "010001",
--			a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)& a(63 downto 18) when "010010",
--			a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)& a(63 downto 19) when "010011",
--			a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)& a(63 downto 20) when "010100",
--			a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)& a(63 downto 21) when "010101",
--			a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)& a(63 downto 22) when "010110",
--			a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)& a(63 downto 23) when "010111",
--			a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)& a(63 downto 24) when "011000",
--			a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)& a(63 downto 25) when "011001",
--			a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)& a(63 downto 26) when "011010",
--			a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)& a(63 downto 27) when "011011",
--			a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)& a(63 downto 28) when "011100",
--			a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)& a(63 downto 29) when "011101",
--			a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)& a(63 downto 30) when "011110",
--			a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)& a(63 downto 31) when "011111",
--			a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)& a(63 downto 32) when "100000",
--			a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)& a(63 downto 33) when "100001",
--			a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)& a(63 downto 34) when "100010",
--			a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)& a(63 downto 35) when "100011",
--			a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)& a(63 downto 36) when "100100",
--			a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)& a(63 downto 37) when "100101",
--			a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)& a(63 downto 38) when "100110",
--			a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)& a(63 downto 39) when "100111",
--			a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)& a(63 downto 40) when "101000",
--			a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)& a(63 downto 41) when "101001",
--			a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)& a(63 downto 42) when "101010",
--			a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)& a(63 downto 43) when "101011",
--			a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)& a(63 downto 44) when "101100",
--			a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)& a(63 downto 45) when "101101",
--			a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)& a(63 downto 46) when "101110",
--			a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)& a(63 downto 47) when "101111",
--			a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)& a(63 downto 48) when "110000",
--			a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)& a(63 downto 49) when "110001",
--			a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)& a(63 downto 50) when "110010",
--			a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)& a(63 downto 51) when "110011",
--			a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)& a(63 downto 52) when "110100",
--			a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)& a(63 downto 53) when "110101",
--			a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)& a(63 downto 54) when "110110",
--			a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)& a(63 downto 55) when "110111",
--			a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)& a(63 downto 56) when "111000",
--			a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)& a(63 downto 57) when "111001",
--			a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)& a(63 downto 58) when "111010",
--			a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)& a(63 downto 59) when "111011",
--			a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)& a(63 downto 60) when "111100",
--			a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)& a(63 downto 61) when "111101",
--			a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)& a(63 downto 62) when "111110",
--			a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)&a(63)& a(63) when others; -- "111111"
--   with lar select
--      y <= logic_result when "00",
--           arith_result when "01",
--           rot_result   when others;
--end direct_arch;


--=============================
-- Listing 7.14
--=============================
--architecture shared_arch of shift3mode is
--   signal shift_in: std_logic_vector(63 downto 0);
--begin
--   with lar select
--      shift_in <= (others=>'0')  when "00",
--                  (others=>a(63)) when "01",
--                  a              when others;
--   with amt select
--      y <= 	a                                       when "000000",
--				shift_in(0)          & a(63 downto 1)   when "000001",
--				shift_in(1 downto 0) & a(63 downto 2)   when "000010",
--				shift_in(2 downto 0) & a(63 downto 3)   when "000011",
--				shift_in(3 downto 0) & a(63 downto 4)   when "000100",
--				shift_in(4 downto 0) & a(63 downto 5)   when "000101",
--				shift_in(5 downto 0) & a(63 downto 6)   when "000110",
--				shift_in(6 downto 0) & a(63 downto 7)   when "000111",
--				shift_in(7 downto 0) & a(63 downto 8)   when "001000",
--				shift_in(8 downto 0) & a(63 downto 9)   when "001001",
--				shift_in(9 downto 0) & a(63 downto 10)  when "001010",
--				shift_in(10 downto 0) & a(63 downto 11) when "001011",
--				shift_in(11 downto 0) & a(63 downto 12) when "001100",
--				shift_in(12 downto 0) & a(63 downto 13) when "001101",
--				shift_in(13 downto 0) & a(63 downto 14) when "001110",
--				shift_in(14 downto 0) & a(63 downto 15) when "001111",
--				shift_in(15 downto 0) & a(63 downto 16) when "010000",
--				shift_in(16 downto 0) & a(63 downto 17) when "010001",
--				shift_in(17 downto 0) & a(63 downto 18) when "010010",
--				shift_in(18 downto 0) & a(63 downto 19) when "010011",
--				shift_in(19 downto 0) & a(63 downto 20) when "010100",
--				shift_in(20 downto 0) & a(63 downto 21) when "010101",
--				shift_in(21 downto 0) & a(63 downto 22) when "010110",
--				shift_in(22 downto 0) & a(63 downto 23) when "010111",
--				shift_in(23 downto 0) & a(63 downto 24) when "011000",
--				shift_in(24 downto 0) & a(63 downto 25) when "011001",
--				shift_in(25 downto 0) & a(63 downto 26) when "011010",
--				shift_in(26 downto 0) & a(63 downto 27) when "011011",
--				shift_in(27 downto 0) & a(63 downto 28) when "011100",
--				shift_in(28 downto 0) & a(63 downto 29) when "011101",
--				shift_in(29 downto 0) & a(63 downto 30) when "011110",
--				shift_in(30 downto 0) & a(63 downto 31) when "011111",
--				shift_in(31 downto 0) & a(63 downto 32) when "100000",
--				shift_in(32 downto 0) & a(63 downto 33) when "100001",
--				shift_in(33 downto 0) & a(63 downto 34) when "100010",
--				shift_in(34 downto 0) & a(63 downto 35) when "100011",
--				shift_in(35 downto 0) & a(63 downto 36) when "100100",
--				shift_in(36 downto 0) & a(63 downto 37) when "100101",
--				shift_in(37 downto 0) & a(63 downto 38) when "100110",
--				shift_in(38 downto 0) & a(63 downto 39) when "100111",
--				shift_in(39 downto 0) & a(63 downto 40) when "101000",
--				shift_in(40 downto 0) & a(63 downto 41) when "101001",
--				shift_in(41 downto 0) & a(63 downto 42) when "101010",
--				shift_in(42 downto 0) & a(63 downto 43) when "101011",
--				shift_in(43 downto 0) & a(63 downto 44) when "101100",
--				shift_in(44 downto 0) & a(63 downto 45) when "101101",
--				shift_in(45 downto 0) & a(63 downto 46) when "101110",
--				shift_in(46 downto 0) & a(63 downto 47) when "101111",
--				shift_in(47 downto 0) & a(63 downto 48) when "110000",
--				shift_in(48 downto 0) & a(63 downto 49) when "110001",
--				shift_in(49 downto 0) & a(63 downto 50) when "110010",
--				shift_in(50 downto 0) & a(63 downto 51) when "110011",
--				shift_in(51 downto 0) & a(63 downto 52) when "110100",
--				shift_in(52 downto 0) & a(63 downto 53) when "110101",
--				shift_in(53 downto 0) & a(63 downto 54) when "110110",
--				shift_in(54 downto 0) & a(63 downto 55) when "110111",
--				shift_in(55 downto 0) & a(63 downto 56) when "111000",
--				shift_in(56 downto 0) & a(63 downto 57) when "111001",
--				shift_in(57 downto 0) & a(63 downto 58) when "111010",
--				shift_in(58 downto 0) & a(63 downto 59) when "111011",
--				shift_in(59 downto 0) & a(63 downto 60) when "111100",
--				shift_in(60 downto 0) & a(63 downto 61) when "111101",
--				shift_in(61 downto 0) & a(63 downto 62) when "111110",
--				shift_in(62 downto 0) & a(63) when others;
--end shared_arch;

----=============================
---- Listing 7.29
----=============================
architecture multi_level_arch of shift3mode is
   signal le0_out, le1_out, le2_out,
			 le3_out, le4_out, le5_out:
      std_logic_vector(63 downto 0);
   signal le0_sin: std_logic;
   signal le1_sin: std_logic_vector(1 downto 0);
   signal le2_sin: std_logic_vector(3 downto 0);
   signal le3_sin: std_logic_vector(7 downto 0);
	signal le4_sin: std_logic_vector(15 downto 0);
	signal le5_sin: std_logic_vector(31 downto 0);
begin
   -- level 0, shift 0 or 1 bit
   with lar select
      le0_sin <= '0'    when "00",
                  a(63) when "01",
                  a(0)  when others;
   le0_out <= le0_sin & a(63 downto 1) when amt(0)='1' else
              a;

   -- level 1, shift 0 or 2 bits
   with lar select
      le1_sin <=
         "00"                    when "00",
         (others => le0_out(63)) when "01",
         le0_out(1 downto 0)     when others;
   le1_out <= le1_sin & le0_out(63 downto 2)
                 when amt(1)='1' else
              le0_out;

   -- level 2, shift 0 or 4 bits
   with lar select
      le2_sin <=
         "0000"                  when "00",
         (others => le1_out(63)) when "01",
         le1_out(3 downto 0)     when others;
   le2_out <= le2_sin & le1_out(63 downto 4)
                 when amt(2)='1' else
              le1_out;

   with lar select
      le3_sin <=
         "00000000"              when "00",
         (others => le2_out(63)) when "01",
         le2_out(7 downto 0)     when others;
   le3_out <= le3_sin & le2_out(63 downto 8)
                 when amt(3)='1' else
              le2_out;

   with lar select
      le4_sin <=
         "0000000000000000"      when "00",
         (others => le3_out(63)) when "01",
         le3_out(15 downto 0)    when others;
   le4_out <= le4_sin & le3_out(63 downto 16)
                 when amt(4)='1' else
              le3_out;

   with lar select
      le5_sin <=
         "00000000000000000000000000000000"when "00",
         (others => le4_out(63))           when "01",
         le4_out(31 downto 0)              when others;
   le5_out <= le5_sin & le4_out(63 downto 32)
                 when amt(5)='1' else
              le4_out;

   -- output
   y <= le5_out;
end multi_level_arch ;