library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

----------------- Package Declaration -----------------

package my_package is 
		function bin2ssd_f (bin: std_logic_vector) return std_logic_vector;
end package;

-------------------- Body Package --------------------

package body my_package is

	function bin2ssd_f (bin: std_logic_vector) return std_logic_vector is
		variable ssd : std_logic_vector (6 downto 0);
		variable bin_int : natural RANGE 0 TO 15 := 0;	
	begin
		bin_int := to_integer(unsigned(bin));
--		assert(bin_int < 10)
--			report "Valor " & integer'image(bin_int) & " fora da faixa de funcionamento."
--			severity ERROR;
--		assert FALSE
--			report "Autor: Vinicius Souza - contribua com U$ 100,00"
--			severity WARNING;
			
		CASE bin_int IS
			WHEN 0 => ssd := "0000001";
			WHEN 1 => ssd := "1001111";
			WHEN 2 => ssd := "0010010";
			WHEN 3 => ssd := "0000110";
			WHEN 4 => ssd := "1001100";
			WHEN 5 => ssd := "0100100";
			WHEN 6 => ssd := "0100000";
			WHEN 7 => ssd := "0001111";
			WHEN 8 => ssd := "0000000";
			WHEN 9 => ssd := "0000100";
			WHEN OTHERS => ssd := "0110000";
		END CASE; 
		return ssd;
		
	end bin2ssd_f;
	
end package body;