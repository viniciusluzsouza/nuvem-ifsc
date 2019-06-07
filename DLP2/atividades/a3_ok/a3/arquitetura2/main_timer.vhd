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
---------- Componente ctrl ----------
	COMPONENT ctrl IS
		PORT (
			clk, rst : in std_logic;
			sel: out std_logic_vector(1 downto 0)
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
		signal ones_s, tens_s : std_logic_vector(3 downto 0);
		
		-- Sinals to bin2ssd
		signal ssd_u, ssd_d : std_logic_vector(6 downto 0);
					
		-- signal
		signal to_bcd : std_logic_vector(6 downto 0);
		signal control : std_logic_vector(1 downto 0);

		-- reset
		signal not_reset : std_logic;
BEGIN

	-- Timer MAP
	timer_1 : timer
		PORT MAP(clk => CLK, reset => not_reset, csec => s_cseg, sec => s_seg, min => s_min);

	-- CTRL MAP
	ctrl_1 : ctrl
			PORT MAP(clk => CLK, sel => control, rst => not_reset);
			
	s_seg_6 <= '0' & s_seg;
	s_min_6 <= '0' & s_min;
	to_bcd <= s_cseg when (control = "00") else
				 s_seg_6 when (control = "01") else
				 s_min_6 when (control = "10") else
				 s_min_6;

--	with control select to_bcd <= s_cseg when "00",
--											s_seg_6 when "01",
--											s_min_6 when others;


	-- BIN2BCD MAP
	bin2bcd_1 : bin2bcd
			PORT MAP(binIN => to_bcd, ones => ones_s, tens => tens_s);

	-- BIN2SSD MAP
	bin2ssd_1 : bin2ssd
			PORT MAP(input => ones_s, ssd => ssd_u);

	bin2ssd_2 : bin2ssd
			PORT MAP(input => tens_s, ssd => ssd_d);
		

	-- OUT SSD
	cseg_u <= ssd_u when control = "00" else
				(others=>'1');
	cseg_d <= ssd_d when control = "00" else
				(others=>'1');

	seg_u <= ssd_u when control = "01" else
				(others=>'1');
	seg_d <= ssd_d when control = "01" else
				(others=>'1');

	min_u <= ssd_u when control = "10" else
				(others=>'1');
	min_d <= ssd_d when control = "10" else
				(others=>'1');

   -- RST LOW ACTIVE
	not_reset <= not RST;
		
END ARCHITECTURE;