library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity arbiter4 is
   port(
      clk: in std_logic;
      reset: in std_logic;
      t: in std_logic;  -- timeout entry
      r: in std_logic_vector(3 downto 0);
      g_out: out std_logic_vector(3 downto 0)
   );
end arbiter4;

architecture rotated_prio_arch of arbiter4 is
   type mc_state_type is (waitr3, waitr2, waitr1, waitr0, grant3, grant2, grant1, grant0);
   signal state_reg, state_next: mc_state_type;
   signal g: std_logic_vector(3 downto 0);
begin
   -- state register
   process(clk,reset)
   begin
      if (reset='1') then
         state_reg <= waitr3;
      elsif (clk'event and clk='1') then
         state_reg <= state_next;
			g_out <= g;
      end if;
   end process;
	
   -- next-state and output logic
   process(state_reg,r,t)
   begin
      case state_reg is
         when waitr3 =>
            if r(3)='1' then
               state_next <= grant3;
            elsif r(2)='1' then
               state_next <= grant2;
            elsif r(1)='1' then
               state_next <= grant1;
            elsif r(0)='1' then
               state_next <= grant0;
            else
               state_next <= waitr3;
            end if;
         when waitr2 =>
            if r(2)='1' then
               state_next <= grant2;
            elsif r(1)='1' then
               state_next <= grant1;
            elsif r(0)='1' then
               state_next <= grant0;
            elsif r(3)='1' then
               state_next <= grant3;
            else
               state_next <= waitr2;
            end if;
         when waitr1 =>
            if r(1)='1' then
               state_next <= grant1;
            elsif r(0)='1' then
               state_next <= grant0;
            elsif r(3)='1' then
               state_next <= grant3;
            elsif r(2)='1' then
               state_next <= grant2;
            else
               state_next <= waitr1;
            end if;
         when waitr0 =>
            if r(0)='1' then
               state_next <= grant0;
            elsif r(3)='1' then
               state_next <= grant3;
            elsif r(2)='1' then
               state_next <= grant2;
            elsif r(1)='1' then
               state_next <= grant1;
            else
               state_next <= waitr0;
            end if;

         when grant3 =>
            if (t='1' or r(3)='0') then
               state_next <= waitr2;
            else
               state_next <= grant3;
            end if;
         when grant2 =>
            if (t='1' or r(2)='0') then
               state_next <= waitr1;
            else
               state_next <= grant2;
            end if;
         when grant1 =>
            if (t='1' or r(1)='0') then
               state_next <= waitr0;
            else
               state_next <= grant1;
            end if;
         when grant0 =>
            if (t='1' or r(0)='0') then
               state_next <= waitr3;
            else
               state_next <= grant0;
            end if;
      end case;
   end process;

   process(state_next)
   begin
      g <= "0000";    -- default values
      case state_next is
         when grant3 =>
            g(3) <= '1';
         when grant2 =>
            g(2) <= '1';
         when grant1 =>
            g(1) <= '1';
         when grant0 =>
            g(0) <= '1';
			when others =>
				g <= "0000";
      end case;
   end process;
	
   -- look-a-head
--   process(clk,reset)
--   begin
--      if (reset='1') then
--         g_out <= "0000";
--      elsif (clk'event and clk='1') then
--         g_out <= g;
--      end if;
--   end process;
end rotated_prio_arch;