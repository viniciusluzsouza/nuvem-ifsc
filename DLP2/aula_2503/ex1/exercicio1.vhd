library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity exercicio1 is
	generic (
		N: 	natural := 8); 
	port(
		x0, x1, x2, x3 :	in  std_logic_vector (N-1 downto 0);
		y0 : in  std_logic_vector (N-1 downto 0);
		s :	out std_logic_vector (N-1 downto 0);
		sel : in std_logic);
end entity;
 
ARCHITECTURE exercicio1_impl OF exercicio1 IS
	signal andout, andout2: std_logic_vector(N-1 downto 0);
	signal sumout, sumout2: std_logic_vector(N-1 downto 0);
	signal mux1out: std_logic_vector(N-1 downto 0);
BEGIN
	sumout <= std_logic_vector(unsigned(x0)+unsigned(x1)+unsigned(x2)+unsigned(x3));
	sumout2 <= std_logic_vector(unsigned(mux1out) + unsigned(y0));
	
	andout <= x0 and x1 and x2 and x3;
	andout2 <= mux1out and y0;
	
	WITH sel SELECT
		mux1out <= sumout WHEN '0',
					  andout WHEN '1';
					  
	WITH sel SELECT
		s <= andout2 WHEN '0',
			  sumout2 WHEN '1';

END ARCHITECTURE;