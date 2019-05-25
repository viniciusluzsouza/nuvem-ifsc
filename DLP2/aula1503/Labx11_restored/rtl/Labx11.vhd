library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use work.sine_package.all;

entity Labx11 is
generic(
	CLOCK_PERIOD : integer := 20;
	CLOCK_FREQUENCY: integer := 50000000;
	CLOCK_SINE_PERIOD: integer := 500000 -- periodo do seno gerado em ns. Periodo escolhido para que seja ´pssivel ver uma oscilaçao completa no signaltap	
);
port(
	CLOCK_50MHz		: in std_logic;
	KEY				: in std_logic_vector (11 downto 0);
	
	-- ADC
	ADC_OUT			: in std_logic_vector(1 downto 0);
	
	ADC_CNVST		: out std_logic;
	ADC_CS_N			: out std_logic;
	ADC_REFSEL		: out std_logic;
	ADC_SCLK			: out std_logic;
	ADC_SD			: out std_logic;
	ADC_UB			: out std_logic;
	ADC_SEL			: out std_logic;
	
	-- DAC
	DAC_CLR_N		: out std_logic;
	DAC_CS_N			: out std_logic;
	DAC_DIN			: out std_logic;
	DAC_SCLK			: out std_logic
	
	);
end Labx11;

architecture behavior of Labx11 is

COMPONENT sine_wave
	PORT
	(
		clock			:	 IN STD_LOGIC;
      clock_en    :	 IN STD_LOGIC;
		reset			:	 IN STD_LOGIC;
		enable		:	 IN STD_LOGIC;
		wave_out		:	 OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT conversor_DA
	GENERIC ( CLOCK_FREQUENCY : INTEGER := 50000000 );
	PORT
	(
		clk_i		:	 IN STD_LOGIC;
		rst_i		:	 IN STD_LOGIC;
		conv_i		:	 IN STD_LOGIC;
		csn_i		:	 IN STD_LOGIC;
		data_1_i		:	 IN STD_LOGIC_VECTOR(11 DOWNTO 0);
		data_2_i		:	 IN STD_LOGIC_VECTOR(11 DOWNTO 0);
		busy_o		:	 OUT STD_LOGIC;
		DAC_CLR_N_o		:	 OUT STD_LOGIC;
		DAC_CS_N_o		:	 OUT STD_LOGIC;
		DAC_DIN_o		:	 OUT STD_LOGIC;
		DAC_SCLK_o		:	 OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT conversor_AD
	GENERIC ( CLOCK_FREQUENCY : INTEGER := 50000000 );
	PORT
	(
		clk_i			:	 IN STD_LOGIC;
		rst_i			:	 IN STD_LOGIC;
		conv_i		:	 IN STD_LOGIC;
		sd_i			:	 IN STD_LOGIC;
		ub_i			:	 IN STD_LOGIC;
		csn_i			:	 IN STD_LOGIC;
		busy_o		:	 OUT STD_LOGIC;
		data_1_o		:	 OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
		data_2_o		:	 OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
		data_3_o		:	 OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
		data_4_o		:	 OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
		ADC_DOUT_i		:	 IN STD_LOGIC_VECTOR(2 DOWNTO 1);
		ADC_CNVST_o		:	 OUT STD_LOGIC;
		ADC_CS_N_o		:	 OUT STD_LOGIC;
		ADC_SEL_o		:	 OUT STD_LOGIC;
		ADC_UB_o			:	 OUT STD_LOGIC;
		ADC_SD_o			:	 OUT STD_LOGIC;
		ADC_REFSEL_o	:	 OUT STD_LOGIC;
		ADC_SCLK_o		:	 OUT STD_LOGIC
	);
END COMPONENT;

signal rst : std_logic;
signal dado_da: std_logic_vector (11 downto 0) := x"000";
signal enable: std_logic;
signal flag_conv: std_logic;
signal clock_sine:	std_logic := '0';
signal count_sine: integer range 0 to CLOCK_SINE_PERIOD/(CLOCK_PERIOD*2*4*128) := 0; -- o valor maximo se count será 


begin

rst <= not KEY(11);

sine_gen: sine_wave
port map(
		clock			=> CLOCK_50MHz,
		clock_en		=> clock_sine,
		reset			=> KEY(11),
		enable		=> enable,
		wave_out		=> dado_da (11 downto 4)
);
-- Clock para o gerador de senos
process(CLOCK_50MHz, rst)
begin

if rst = '0' then
	clock_sine <= '0';
elsif rising_edge(CLOCK_50MHz) then
	flag_conv <= '0';
	if count_sine < CLOCK_SINE_PERIOD/(CLOCK_PERIOD*2*4*128) then -- 4*128 é devido ao numero de pontos gerado pelo gerador de senos. *2 para gerar os dois semiciclos
		count_sine <= count_sine + 1;
      clock_sine <= '0';
	else
		clock_sine <= '1';
		count_sine <= 0;
		--if clock_sine = '1' then -- Manda o sinal de conversão na borda de descida do clock que gera o seno
			flag_conv <= '1';
		--end if;
	end if;
	
end if;
end process;

-- instanciaçao do DAC
Inst_DAC: conversor_DA
	PORT MAP
	(
		clk_i			=> clock_50MHz,
		rst_i			=> rst,
		conv_i		=> clock_sine,
		csn_i			=> '0',
		data_1_i		=> dado_da,
		data_2_i		=> dado_da,
		busy_o		=> open,
		DAC_CLR_N_o	=> DAC_CLR_N,	
		DAC_CS_N_o	=>	DAC_CS_N,
		DAC_DIN_o	=> DAC_DIN,	
		DAC_SCLK_o	=>	DAC_SCLK
	);
	
-- Instaciaçao do ADC
Inst_ADC: conversor_AD
	PORT MAP
	(
		clk_i				=>	 CLOCK_50MHz,
		rst_i				=>	 rst,
		conv_i			=>	 flag_conv, -- comando de conversão
		sd_i				=>	'0',
		ub_i				=>	'0',
		csn_i				=>	'0',
		busy_o			=>	open,
		data_1_o			=>	open,
		data_2_o			=>	open,
		data_3_o			=>	open,
		data_4_o			=>	open,
		ADC_DOUT_i		=>	ADC_OUT,
		ADC_CNVST_o		=>	ADC_CNVST,
		ADC_CS_N_o		=>	ADC_CS_N,
		ADC_SEL_o		=>	ADC_SEL,
		ADC_UB_o			=>	ADC_UB,
		ADC_SD_o			=>	ADC_SD,
		ADC_REFSEL_o	=>	ADC_REFSEL,
		ADC_SCLK_o		=>	ADC_SCLK
	);
	
	enable <= '1';
end behavior;