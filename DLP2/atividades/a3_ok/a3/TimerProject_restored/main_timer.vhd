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
			csec : out std_logic_vector(6 downto 0);
			sec,min: out std_logic_vector(5 downto 0)
		);
	END COMPONENT;
------------------------------------------
---------- Componente bin2bcd ----------
	COMPONENT bin2bcd IS
		PORT (
			binIN : in  STD_LOGIC_VECTOR (6 downto 0);
         ones : out  STD_LOGIC_VECTOR (3 downto 0);
         tens : out  STD_LOGIC_VECTOR (3 downto 0)
		);
	END COMPONENT;
------------------------------------------
---------- Componente bin2ssd ----------
	COMPONENT bin2ssd IS
		PORT (
			input : in std_logic_vector(3 downto 0);
			ssd: out std_logic_vector(6 downto 0)
		);
	END COMPONENT;
------------------------------------------
		signal s_cseg_u, s_cseg_d, s_seg_u, s_seg_d, s_min_u, s_min_d : 
			std_logic_vector(6 downto 0);
		
		-- Signals to timer
		signal s_cseg : std_logic_vector(6 downto 0);
		signal s_seg, s_min : std_logic_vector(5 downto 0);
		
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
		PORT MAP(clk => CLK, reset => not_reset, csec => s_cseg, sec => s_seg, min => s_min);

	s_seg_6 <= '0' & s_seg;
	s_min_6 <= '0' & s_min;
	-- BIN2BCD MAP
	bin2bcd_1 : bin2bcd
			PORT MAP(binIN => s_cseg, ones => ones_c, tens => tens_c);
			
	bin2bcd_2 : bin2bcd
			PORT MAP(binIN => s_seg_6, ones => ones_s, tens => tens_s);

	bin2bcd_3 : bin2bcd
			PORT MAP(binIN => s_min_6, ones => ones_m, tens => tens_m);

	-- BIN2SSD MAP
	bin2ssd_1 : bin2ssd
			PORT MAP(input => ones_c, ssd => ssd_cseg_u);

	bin2ssd_2 : bin2ssd
			PORT MAP(input => tens_c, ssd => ssd_cseg_d);
		
	bin2ssd_3 : bin2ssd
			PORT MAP(input => ones_s, ssd => ssd_seg_u);
			
	bin2ssd_4 : bin2ssd
			PORT MAP(input => tens_s, ssd => ssd_seg_d);
			
	bin2ssd_5 : bin2ssd
			PORT MAP(input => ones_m, ssd => ssd_min_u);
			
	bin2ssd_6 : bin2ssd
			PORT MAP(input => tens_m, ssd => ssd_min_d);

	-- OUT SSD
	cseg_u <= ssd_cseg_u;
	cseg_d <= ssd_cseg_d;
	seg_u <= ssd_seg_u;
	seg_d <= ssd_seg_d;
	min_u <= ssd_min_u;
	min_d <= ssd_min_d;
	
	not_reset <= not RST;

		
END ARCHITECTURE;