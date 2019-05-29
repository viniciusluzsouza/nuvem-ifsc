library ieee;
use ieee.std_logic_1164.all;

ENTITY main_timer IS
	port (
		RST, CLK : in std_logic;
		cseg_u, cseg_d, seg_u, seg_d, min_u, min_d : 
			out std_logic_vector(0 to 6)
	);
END ENTITY;

ARCHITECTURE main_timer_impl OF main_timer IS
---------- Componente timer ----------
	COMPONENT timer IS
		PORT (
			clk, reset: in std_logic;
			csec_o, csec_t, sec_o, sec_t, min_o, min_t
					: out std_logic_vector(3 downto 0)
		);
	END COMPONENT;
------------------------------------------
---------- Componente bcd2ssd ----------
	COMPONENT bcd2ssd IS
		PORT (
			a1, a2, a3, a4, a5, a6 : in std_logic_vector(3 downto 0);
			y1, y2, y3, y4, y5, y6: out std_logic_vector(6 downto 0)
		);
	END COMPONENT;
------------------------------------------

		-- Signals to bin2bcd
		signal s_seg_6, s_min_6 : std_logic_vector(6 downto 0);
		signal ones_c, tens_c : std_logic_vector(3 downto 0);
		signal ones_s, tens_s : std_logic_vector(3 downto 0);
		signal ones_m, tens_m : std_logic_vector(3 downto 0);
		
		-- Sinals to bin2ssd
		signal ssd_cseg_u, ssd_cseg_d, ssd_seg_u, ssd_seg_d, 
					ssd_min_u, ssd_min_d : std_logic_vector(6 downto 0);

		-- reset
		signal not_reset : std_logic;
BEGIN

	-- Timer MAP
	timer_1 : timer
		PORT MAP(clk => CLK, reset => not_reset, csec_o => ones_c,
			csec_t => tens_c, sec_o => ones_s, sec_t => tens_s, min_o => ones_m, min_t => tens_m);

	-- BCD2SSD MAP
	bcd2ssd_1 : bcd2ssd
			PORT MAP(a1 => ones_c, a2 => tens_c, a3 => ones_s, a4 => tens_s, a5 => ones_m, a6 => tens_m,
				y1 => ssd_cseg_u, y2 => ssd_cseg_d, y3 => ssd_seg_u, y4 => ssd_seg_d, y5 => ssd_min_u, y6 => ssd_min_d);

	-- OUT SSD
	cseg_u <= ssd_cseg_u;
	cseg_d <= ssd_cseg_d;
	seg_u <= ssd_seg_u;
	seg_d <= ssd_seg_d;
	min_u <= ssd_min_u;
	min_d <= ssd_min_d;
	
	-- RST LOW ACTIVE
	not_reset <= not RST;

		
END ARCHITECTURE;