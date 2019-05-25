library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

library altera_mf;
use altera_mf.all;
	
entity conversor_AD is
generic(
   CLOCK_FREQUENCY : integer := 50000000 -- ciclos, latencia para um dado lido aparecer na saida
);
port(
		-- IO modulo, entradas e saídas de controle do modulo
		clk_i				:	in std_logic;
		rst_i				:	in std_logic;
		conv_i			:	in std_logic;
		sd_i				:	in std_logic;
		ub_i				:	in std_logic;
		csn_i				: 	in std_logic; 
     
      busy_o  			:  out std_logic := '0';
      data_1_o			:	out  std_logic_vector(11 downto 0);
		data_2_o			:	out  std_logic_vector(11 downto 0);
		data_3_o			:	out  std_logic_vector(11 downto 0);
		data_4_o			:	out  std_logic_vector(11 downto 0);
      
		-- IO conversor, interfaces a serem ligadas ao AD
		ADC_DOUT_i		:		in  std_logic_vector(2 downto 1);
		
		ADC_CNVST_o	:		out std_logic;
		ADC_CS_N_o	:		out std_logic;
		ADC_SEL_o	:		out std_logic;
		ADC_UB_o		:		out std_logic;
		ADC_SD_o		:		out std_logic;
		ADC_REFSEL_o:		out std_logic;
		ADC_SCLK_o	: 		out std_logic
	);
end conversor_AD;

architecture behavior of conversor_AD is

signal count 		: integer range 0 to 64;
signal preescaler	: integer range 0 to CLOCK_FREQUENCY/10000000;
signal sclk			: std_logic := '0';
signal busy			: std_logic := '0';
signal data_1_buffer : std_logic_vector (11 downto 0);
signal data_2_buffer : std_logic_vector (11 downto 0);

begin

process (clk_i, rst_i)
begin

if rst_i = '0' then
	data_1_o 	<= (others => '0');
	data_2_o 	<= (others => '0');
	data_3_o 	<= (others => '0');
	data_4_o 	<= (others => '0');
	ADC_CNVST_o <= '0';
	ADC_SEL_o	<= '0';
	sclk			<= '0';
	count			<= 0;

elsif rising_edge (clk_i) then
	if csn_i = '0' then
		if busy = '0' and conv_i = '1' then
			ADC_CNVST_o <= '1';
			busy <= '1';
		elsif busy = '1' then
			if preescaler < CLOCK_FREQUENCY/10000000 then
				preescaler <= preescaler + 1;
			end if;
			if preescaler = CLOCK_FREQUENCY/(10000000) then
				preescaler <= 0;
				sclk <= '1';
				if count < 64 then
					count <= count + 1;
				end if;
				data_1_buffer (11 downto 1) <= data_1_buffer(10 downto 0);
				data_1_buffer(0) <= ADC_DOUT_i(1);
				data_2_buffer (11 downto 1) <= data_2_buffer(10 downto 0); 
				data_2_buffer(0)<= ADC_DOUT_i(2);
				if count = 16 then
					data_1_o <= data_1_buffer;
					if sd_i = '0' then
						data_2_o <= data_2_buffer;
						if ub_i = '1' then -- quando opera em modo bipolar, reseta o contador.
							count <= 0;					
							busy <= '0';
						end if;
					end if;
				elsif count = 32 then
					if sd_i = '0' and ub_i = '0' then
						data_3_o <= data_1_buffer;
						data_4_o <= data_2_buffer;
						count <= 0;
						busy <= '0';
					else
						data_2_o <= data_1_buffer;
						ADC_SEL_o <= '1';
					end if;	
				elsif count = 48 then
					data_3_o <= data_1_buffer;
				elsif count = 64 then
					data_4_o <= data_1_buffer;
					count <= 0;
					ADC_SEL_o <= '0';
					busy <= '0';
				end if;
			elsif preescaler  = CLOCK_FREQUENCY/(2*10000000) then -- inicia sclk em zero
				ADC_CNVST_o <= '0';
				sclk <= '0';
			end if;
		end if;
	end if;
end if;
end process;

ADC_SD_o <= sd_i;
ADC_UB_o <= ub_i;
ADC_REFSEL_o <= '0';
ADC_SCLK_o <= sclk;
ADC_CS_N_o <= csn_i;
busy_o <= busy;

end behavior;