library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ctrl is
   port(
		clk, rst : in std_logic;
      sel: out std_logic_vector(1 downto 0)
   );
end ctrl;

architecture controller of ctrl is
	signal r_reg, r_next: unsigned(5 downto 0);
	signal sel_reg, sel_next: unsigned(1 downto 0);
	signal sel_en : std_logic;
BEGIN
   process(clk, rst)
   begin
		if (rst='1') then
			r_reg <= (others=>'0');
			sel_reg <= (others=>'0');
      elsif (clk'event and clk='1') then
			r_reg <= r_next;
			sel_reg <= sel_next;
      end if;
   end process;
	
   r_next <= (others=>'0') when r_reg=49 else
             r_reg + 1;	 
	sel_en <= '1' when r_reg = 49 else
				 '0';
			  
	sel_next <= (others=>'0') when (sel_reg=2 and sel_en='1') else
					sel_reg + 1     when sel_en='1' else
					sel_reg;

			  
	sel <= std_logic_vector(sel_reg);
END architecture;