--=============================
-- Listing 10.5
--=============================
library ieee;
use ieee.std_logic_1164.all;
entity mem_ctrl_5 is
   port(
      clk, reset: in std_logic;
      mem, rw, burst: in std_logic;
      oe, we, we_me: out std_logic
   );
end mem_ctrl_5 ;

architecture plain_buffer_arch of mem_ctrl_5 is
   type mc_state_type is
      (idle, read1, read2, read3, read4, write);
   signal state_reg, state_next: mc_state_type;
   signal oe_i, we_i, oe_buf_reg, we_buf_reg: std_logic;
begin
   -- state register
   process(clk,reset)
   begin
      if (reset='1') then
         state_reg <= idle;
      elsif (clk'event and clk='1') then
         state_reg <= state_next;
      end if;
   end process;
   -- output buffer
   process(clk,reset)
   begin
      if (reset='1') then
         oe_buf_reg <= '0';
         we_buf_reg <= '0';
      elsif (clk'event and clk='1') then
         oe_buf_reg <= oe_i;
         we_buf_reg <= we_i;
      end if;
   end process;
  -- next-state logic
   process(state_reg,mem,rw,burst)
   begin
      case state_reg is
         when idle =>
            if mem='1' then
               if rw='1' then
                  state_next <= read1;
               else
                  state_next <= write;
               end if;
            else
               state_next <= idle;
            end if;
         when write =>
            state_next <= idle;
         when read1 =>
            if (burst='1') then
               state_next <= read2;
            else
               state_next <= idle;
            end if;
         when read2 =>
            state_next <= read3;
         when read3 =>
            state_next <= read4;
         when read4 =>
            state_next <= idle;
      end case;
   end process;
   -- Moore output logic
   process(state_reg)
   begin
      we_i <= '0'; -- default value
      oe_i <= '0';  -- default value
      case state_reg is
         when idle =>
         when write =>
            we_i <= '1';
         when read1 =>
            oe_i <= '1';
         when read2 =>
            oe_i <= '1';
         when read3 =>
            oe_i <= '1';
         when read4 =>
            oe_i <= '1';
      end case;
   end process;
   -- output
   we <= we_buf_reg;
   oe <= oe_buf_reg;
end plain_buffer_arch;