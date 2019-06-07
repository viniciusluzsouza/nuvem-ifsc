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
   signal r_reg: unsigned(19 downto 0);
   signal r_next: unsigned(19 downto 0);
	
   signal c_reg_d, c_reg_u, s_reg_d, s_reg_u,
			 m_reg_d, m_reg_u : unsigned(3 downto 0);

   signal c_next_d, c_next_u, s_next_d, s_next_u,
			 m_next_d, m_next_u : unsigned(3 downto 0);

   signal c_u_en, c_d_en, s_u_en, s_d_en, m_u_en, m_d_en: std_logic;
begin
   -- register
   process(clk,reset)
   begin
      if (reset='1') then
         r_reg <= (others=>'0');
			c_reg_d <= (others=>'0');
         c_reg_u <= (others=>'0');
         s_reg_d <= (others=>'0');
			s_reg_u <= (others=>'0');
			m_reg_d <= (others=>'0');
			m_reg_u <= (others=>'0');
      elsif (clk'event and clk='1') then
			r_reg <= r_next;
         c_reg_d <= c_next_d;
			c_reg_u <= c_next_u;
         s_reg_d <= s_next_d;
         s_reg_u <= s_next_u;
			m_reg_d <= m_next_d;
			m_reg_u <= m_next_u;
      end if;
   end process;

   -- next-state logic/output logic for mod-1000000 counter
   r_next <= (others=>'0') when r_reg=499999 else
             r_reg + 1;	 
	c_u_en <= '1' when r_reg = 499999 else
				 '0';
 
    -- next state logic/output logic for center of seconds unit
   c_next_u <= (others=>'0') when (c_reg_u=9 and c_u_en='1') else
					c_reg_u + 1  when c_u_en='1' else
					c_reg_u;
   c_d_en <= '1' when c_reg_u = 9 and c_u_en='1' else
				 '0';
 
   -- next state logic/output logic for center of seconds tens
   c_next_d <= (others=>'0') when (c_reg_d=9 and c_d_en='1') else
					c_reg_d + 1  when c_d_en='1' else
					c_reg_d;
   s_u_en <= '1' when c_reg_d = 9 and c_d_en='1' else
				 '0';
 
   -- next state logic/output logic for seconds unit
   s_next_u <= (others=>'0') when (s_reg_u=9 and s_u_en='1') else
             s_reg_u + 1     when s_u_en='1' else
             s_reg_u;
   s_d_en <= '1' when s_reg_u=9 and s_u_en='1' else
				 '0';
 
   -- next state logic/output logic for seconds tens
   s_next_d <= (others=>'0') when (s_reg_d=5 and s_d_en='1') else
             s_reg_d + 1     when s_d_en='1' else
             s_reg_d;
   m_u_en <= '1' when s_reg_d=5 and s_d_en='1' else
				 '0';

   -- next state logic/output logic for minutes unit
   m_next_u <= (others=>'0') when (m_reg_u=9 and m_u_en='1') else
             m_reg_u + 1     when m_u_en='1' else
             m_reg_u;
   m_d_en <= '1' when m_reg_u=9 and m_u_en='1' else
				 '0';
 
   -- next state logic/output logic for minutes tens
   m_next_d <= (others=>'0') when (m_reg_d=5 and m_d_en='1') else
             m_reg_d + 1     when m_d_en='1' else
             m_reg_d;

   -- output logic
	csec_o <= std_logic_vector(c_reg_u);
   csec_t <= std_logic_vector(c_reg_d);
   sec_o <= std_logic_vector(s_reg_u);
	sec_t <= std_logic_vector(s_reg_d);
	min_o <= std_logic_vector(m_reg_u);
	min_t <= std_logic_vector(m_reg_d);

end single_clock_arch;