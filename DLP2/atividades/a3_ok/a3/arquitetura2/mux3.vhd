library IEEE;
use IEEE.std_logic_1164.all;

entity mux3 is
port(
  a1, a2, a3      : in  std_logic_vector(6 downto 0);
  sel     : in  std_logic_vector(1 downto 0);
  b       : out std_logic_vector(6 downto 0)
  );
end mux3;

architecture rtl of mux3 is
begin

  b <= a1 when (sel = "00") else
       a2 when (sel = "01") else
       a3 when (sel = "10") else
       a3;

end rtl;