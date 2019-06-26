--=============================
-- Listing 10.3
--=============================
library ieee;
use ieee.std_logic_1164.all;
entity mem_ctrl_3 is
   port(
      clk, reset: in std_logic;
      mem, rw, burst: in std_logic;
      oe, we, we_me: out std_logic
   );
end mem_ctrl_3 ;

architecture one_seg_wrong_arch of mem_ctrl_3 is
   type mc_state_type is
        (idle, read1, read2, read3, read4, write);
   signal state_reg: mc_state_type;
begin
   process(clk,reset)
   begin
      if (reset='1') then
         state_reg <= idle;
      elsif (clk'event and clk='1') then
         oe <= '0';    -- default values
         we <= '0';
         we_me <= '0';
         case state_reg is
            when idle =>
               if mem='1' then
                  if rw='1' then
                     state_reg <= read1;
                  else
                     state_reg <= write;
                     we_me <= '1';
                  end if;
               else
                  state_reg <= idle;
               end if;
            when write =>
               state_reg <= idle;
               we <= '1';
            when read1 =>
               if (burst='1') then
                  state_reg <= read2;
               else
                  state_reg <= idle;
               end if;
               oe <= '1';
            when read2 =>
               state_reg <= read3;
               oe <= '1';
            when read3 =>
               state_reg <= read4;
               oe <= '1';
            when read4 =>
               state_reg <= idle;
               oe <= '1';
         end case;
      end if;
   end process;
end one_seg_wrong_arch;