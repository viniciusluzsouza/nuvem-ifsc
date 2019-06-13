--=============================
-- Listing 10.4
--=============================
library ieee;
use ieee.std_logic_1164.all;
entity mem_ctrl_4 is
   port(
      clk, reset: in std_logic;
      mem, rw, burst: in std_logic;
      oe, we, we_me: out std_logic
   );
end mem_ctrl_4 ;

architecture state_assign_arch of mem_ctrl_4 is
   constant idle:  std_logic_vector(3 downto 0):="0000";
   constant write: std_logic_vector(3 downto 0):="0100";
   constant read1: std_logic_vector(3 downto 0):="1000";
   constant read2: std_logic_vector(3 downto 0):="1001";
   constant read3: std_logic_vector(3 downto 0):="1010";
   constant read4: std_logic_vector(3 downto 0):="1011";
   signal state_reg,state_next: std_logic_vector(3 downto 0);
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
         when others =>
            state_next <= idle;
      end case;
   end process;
   -- Moore output logic
   process(state_reg)
   begin
      we <= '0'; -- default value
      oe <= '0';  -- default value
      case state_reg is
         when idle =>
         when write =>
            we <= '1';
         when read1 =>
            oe <= '1';
         when read2 =>
            oe <= '1';
         when read3 =>
            oe <= '1';
         when read4 =>
           oe <= '1';
         when others =>
      end case;
   end process;
   -- Mealy output logic
   we_me <= '1' when ((state_reg=idle) and (mem='1') and
                      (rw='0')) else
            '0';
end state_assign_arch;