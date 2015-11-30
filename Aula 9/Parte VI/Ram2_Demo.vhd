library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Ram2_Demo is

	port(	CLOCK_50	:	in std_logic;
			SW			:	in std_logic_vector(17 downto 0);
			KEY		:	in std_logic_vector(0 downto 0);
			LEDG		:	out std_logic_vector(7 downto 0));
	
end Ram2_Demo;

architecture Structural of Ram2_Demo is

	signal clk		:	std_logic;
	signal s_count : std_logic_vector(3 downto 0);

begin

	ram:entity work.Ram_2Port_16_8(Behavioral)
				port map(clk 			=> clk,
							writeEnable => KEY(0),
							writeAddress=> SW(17 downto 14),
							writeData 	=> SW(7 downto 0),
							readAddress => s_count,
							readData 	=> LEDG(7 downto 0));
				
	counter:entity work.CounterUpDownN(Behavioral)
				generic map(N => 4)
				port map(clk 	=> clk,
							updown=> '1',
							reset	=> '0',
							count 	=> s_count);
				
	freq_div:entity work.FreqDivider(Behavioral)
				generic map(K => 50000000)
				port map(clkIn => CLOCK_50,
							clkOut=> clk);

end Structural;