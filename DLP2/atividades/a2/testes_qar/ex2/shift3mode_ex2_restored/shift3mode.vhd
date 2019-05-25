
library ieee;
use ieee.std_logic_1164.all;
use IEEE.math_real.all;

entity shift3mode is
	generic( bits : integer := 32 );
   port(
      a: in std_logic_vector(bits-1 downto 0);
      lar: in std_logic_vector(1 downto 0);
      amt: in std_logic_vector(integer(ceil(log2(real(bits))))-1 downto 0);
      y: out std_logic_vector(bits-1 downto 0)
   );
end shift3mode ;

--=============================
-- Listing 7.29
--=============================
architecture multi_level_arch of shift3mode is
	type le_array is array (integer(ceil(log2(real(bits))))-1 downto 0) of
		std_logic_vector(bits-1 downto 0);
	signal le_out, le_sin: le_array;
	constant zero_bits: std_logic_vector(bits-1 downto 0) := (others=>'0');
	constant pow2_bits: integer := integer(ceil(log2(real(bits))));
begin

   with lar select
      le_sin(0)(bits-1) <= '0'   when "00",
										 a(bits-1)  when "01",
										 a(0)  when others;
   le_out(0) <= le_sin(0)(bits-1) & a(bits-1 downto 1) when amt(0)='1' else
              a;

	GEN_FOR: for i in 1 to pow2_bits-1 generate
		with lar select
			le_sin(i)(bits-1 downto bits-(2**i)) <=
				zero_bits(bits-1 downto bits-(2**i)) when "00",
				(others => le_out(i-1)(bits-1)) when "01",
				le_out(i-1)((2**i)-1 downto 0) when others;
		
			le_out(i) <= le_sin(i)(bits-1 downto bits-(2**i)) & le_out(i-1)(bits-1 downto 2**i)
							when amt(i)='1' else le_out(i-1);
	end generate GEN_FOR;

   y <= le_out(pow2_bits-1);
end multi_level_arch ;
