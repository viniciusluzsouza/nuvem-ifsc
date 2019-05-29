library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity timer is
   port(
      clk, reset: in std_logic;
		csec_o, csec_t, sec_o, sec_t, min_o, min_t
				: out std_logic_vector(3 downto 0)
   );
end timer;

--=============================
-- Listing 9.6
--=============================
architecture single_clock_arch of timer is
	signal cseg_u, cseg_d, seg_u, seg_d,
		min_u, min_d : unsigned(3 downto 0) := "0000";
begin
   -- register
   process(clk,reset)
		variable cseg_counter : integer range 0 to 500000 := 0;
		variable v_cseg_u : integer range 0 to 10 := 0;
		variable v_cseg_d : integer range 0 to 10 := 0;
		variable v_seg_u : integer range 0 to 10 := 0;
		variable v_seg_d : integer range 0 to 6 := 0;
		variable v_min_u : integer range 0 to 10 := 0;
		variable v_min_d : integer range 0 to 6 := 0;
   begin
      if (reset='1') then
         v_cseg_u := 0;
			v_cseg_d := 0;
			v_seg_u := 0;
			v_seg_d := 0;
			v_min_u := 0;
			v_min_d := 0;
      elsif (clk'event and clk='1') then
			cseg_counter := cseg_counter + 1;
			if (cseg_counter = 500000) then
				v_cseg_u := v_cseg_u + 1;
				cseg_counter := 0;
				if (v_cseg_u = 10) then
					v_cseg_d := v_cseg_d + 1;
					v_cseg_u := 0;
					if (v_cseg_d = 10) then
						v_seg_u := v_seg_u + 1;
						v_cseg_d := 0;
						if (v_seg_u = 10) then
							v_seg_d := v_seg_d + 1;
							v_seg_u := 0;
							if (v_seg_d = 6) then
								v_min_u := v_min_u + 1;
								v_seg_d := 0;
								if (v_min_u = 10) then
									v_min_d := v_min_d + 1;
									v_min_u := 0;
									if (v_min_d = 6) then
										v_min_d := 0;
									end if;
								end if;
							end if;
						end if;
					end if;
				end if;
			end if;
			
      end if;
		
		cseg_u <= to_unsigned(v_cseg_u, 4);
		cseg_d <= to_unsigned(v_cseg_d, 4);
		seg_u <= to_unsigned(v_seg_u, 4);
		seg_d <= to_unsigned(v_seg_d, 4);
		min_u <= to_unsigned(v_min_u, 4);
		min_d <= to_unsigned(v_min_d, 4);
   end process;
	
	csec_o <= std_logic_vector(cseg_u);
	csec_t <= std_logic_vector(cseg_d);
	sec_o <= std_logic_vector(seg_u);
	sec_t <= std_logic_vector(seg_d);
	min_o <= std_logic_vector(min_u);
	min_t <= std_logic_vector(min_d);
	

end single_clock_arch;