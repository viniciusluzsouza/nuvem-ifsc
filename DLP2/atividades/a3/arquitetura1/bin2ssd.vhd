library ieee;
use ieee.std_logic_1164.all;
use work.my_package.all;

entity bin2ssd is
   port(
      input : in std_logic_vector(3 downto 0);
      ssd: out std_logic_vector(6 downto 0)
   );
end bin2ssd;

architecture bin2ssd_arch of bin2ssd is
BEGIN
	ssd <= bin2ssd_f(input);
END architecture;