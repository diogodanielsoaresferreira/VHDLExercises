library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Rom_Demo is

	port(	LEDG		:	out std_logic_vector(7 downto 0);
			CLOCK_50	:	in std_logic;
			SW			:	in std_logic_vector(0 downto 0));

end Rom_Demo;


architecture Structural of Rom_Demo is

	signal clk_100hz	:	std_logic;
	signal s_count		:	std_logic_vector(3 downto 0);

begin
	freq_div:	entity work.FreqDivider(Behavioral)
						generic map(K	=> 5000000)
						port map(clkIn	=> CLOCK_50,
									clkOut=> clk_100hz);
	
	counter:		entity work.CounterUpDownN(Behavioral)
						generic map(N => 4)
						port map(clk => clk_100hz,
									updown => '1',
									reset => SW(0),
									count => s_count);

	rom:	entity work.Rom(Behavioral)
				port map(addrin => s_count,
							dataOut=> LEDG(7 downto 0));

end Structural;