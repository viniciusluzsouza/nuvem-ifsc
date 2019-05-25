library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
	
entity conversor_DA is
generic(
   CLOCK_FREQUENCY : integer := 50000000
);
port(
		-- IO modulo, entradas e saídas de controle do modulo
		clk_i				:	in std_logic;
		rst_i				:	in std_logic;
		conv_i			:	in std_logic;
		csn_i				: 	in std_logic;
		data_1_i			:	in  std_logic_vector(11 downto 0);
		data_2_i			:	in  std_logic_vector(11 downto 0);
     
      busy_o  			:  out std_logic := '0';

      
		-- IO conversor, interfaces a serem ligadas ao AD
	
		DAC_CLR_N_o	:		out std_logic;
		DAC_CS_N_o	:		out std_logic;
		DAC_DIN_o	:		out std_logic;
		DAC_SCLK_o	: 		out std_logic
	);
end conversor_DA;

architecture behavior of conversor_DA is

constant CODEn_LOADn : std_logic_vector (3 downto 0) := "0011";
constant DAC_A			: std_logic_vector (3 downto 0) := "0000";
constant DAC_B			: std_logic_vector (3 downto 0) := "0001";

signal count 			: integer range 0 to 53;
signal preescaler		: integer range 0 to CLOCK_FREQUENCY/1250000;
signal sclk				: std_logic := '0';
signal busy				: std_logic := '0';
signal code_1_buffer : std_logic_vector (23 downto 0);
signal code_2_buffer : std_logic_vector (23 downto 0);
signal data_out		: std_logic;

begin

process (clk_i, rst_i)
begin

if rst_i = '0' then
	sclk			<= '0';
	count			<= 0;
	data_out 	<= 'Z';

elsif rising_edge (clk_i) then
	if csn_i = '0' then
		if busy = '0' and conv_i = '1' then
			busy <= '1';
			DAC_CS_N_o 	<= '1';
			code_1_buffer <= CODEn_LOADn & DAC_A & data_1_i & "0000";	-- criaçao do código que será enviado para o DAC 
			code_2_buffer <= CODEn_LOADn & DAC_B & data_2_i & "0000";
		elsif busy = '1' then
			-- Comunicaçao SPI com o DAC
			if preescaler < CLOCK_FREQUENCY/25000000 then -- Divisor de clock (criaçao do sclk)
				preescaler <= preescaler + 1;
			end if;
			if preescaler = CLOCK_FREQUENCY/(2*25000000) then
				sclk <= '1';
				if count < 53 then
					count <= count + 1;
				end if;
				if count < 24 then
					DAC_CS_N_o 	<= '0';
					data_out <= code_1_buffer(23);
					code_1_buffer (23 downto 1) <= code_1_buffer(22 downto 0);
				elsif count < 27 then
					DAC_CS_N_o 	<= '1';
				elsif count < 51 then
					DAC_CS_N_o 	<= '0';
					data_out <= code_2_buffer(23);
					code_2_buffer (23 downto 1) <= code_2_buffer(22 downto 0);
				elsif count < 53 then
					DAC_CS_N_o 	<= '1';
					count <= 0;
					busy <= '0';
					sclk <= '0';
				end if;
			elsif preescaler  = CLOCK_FREQUENCY/25000000 then
				sclk <= '0';
				preescaler <= 1;
			end if;
		end if;
	end if;
end if;
end process;

DAC_CLR_N_o <= '1';
DAC_DIN_o	<= data_out;
DAC_SCLK_o <= sclk;
busy_o <= busy;

end behavior;