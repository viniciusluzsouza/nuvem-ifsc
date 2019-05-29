library ieee;
use ieee.std_logic_1164.all;
use work.my_package.all;

entity bcd2ssd is
   port(
      a1, a2, a3, a4, a5, a6 : in std_logic_vector(3 downto 0);
      y1, y2, y3, y4, y5, y6: out std_logic_vector(6 downto 0)
   );
end bcd2ssd;

architecture bin2ssd_arch of bcd2ssd is
BEGIN
	y1 <= bin2ssd_f(a1);
	y2 <= bin2ssd_f(a2);
	y3 <= bin2ssd_f(a3);
	y4 <= bin2ssd_f(a4);
	y5 <= bin2ssd_f(a5);
	y6 <= bin2ssd_f(a6);
END architecture;