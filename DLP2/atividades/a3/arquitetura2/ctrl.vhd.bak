library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ctrl is
   port(
		clk : in std_logic;
      sel: out std_logic_vector(1 downto 0)
   );
end ctrl;

architecture controller of ctrl is
	signal r_reg: unsigned(1 downto 0) := "00";
BEGIN
   process(clk)
   begin
      if (clk'event and clk='1') then
			if (to_integer(r_reg) < 2) then
				r_reg <= r_reg + 1;
			else
				r_reg <= "00";
			end if;
      end if;
   end process;

	sel <= std_logic_vector(r_reg);
END architecture;