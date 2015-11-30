Library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ShiftRegister_Demo is

	port(	SW			:	in std_logic_vector(11 downto 0);
			LEDR		:	out std_logic_vector(8 downto 0);
			CLOCK_50: in std_logic);

end ShiftRegister_Demo;

architecture Structural of ShiftRegister_Demo is

	signal s_clk	:	std_logic;

begin

	FreqDiv:				entity work.FreqDivider(Behavioral)
										generic map(K  => 50000000)
										port map(clkIn => CLOCK_50,
													clkOut=> s_clk);

	ShiftRegister_8:	entity work.ShiftRegisterN(Behavioral)
										generic map(N 	=> 8)
										port map(clk	=> s_clk,
													si 	=> SW(0),
													dataOut => LEDR(7 downto 0),
													so		=> LEDR(8),
													reset => SW(1),
													load	=> SW(2),
													dataIn=> SW(11 downto 4));

end Structural;