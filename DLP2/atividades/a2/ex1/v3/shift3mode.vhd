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