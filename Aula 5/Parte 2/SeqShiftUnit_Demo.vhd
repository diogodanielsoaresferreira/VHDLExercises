library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity SeqShiftUnit_Demo is

	port(	SW			:	in std_logic_vector(13 downto 0);
			CLOCK_50	:	in std_logic;
			LEDR		:	out std_logic_vector(7 downto 0));

end SeqShiftUnit_Demo;

architecture Structural of SeqShiftUnit_Demo is

	signal s_clk	:	std_logic;

begin
	seqshiftunit:	entity work.SeqShiftUnit(RTL)
									port map(clk => s_clk,
												dataIn => SW(7 downto 0),
												siLeft => SW(8),
												siRight => SW(9),
												loadEn => SW(10),
												rotate => SW(11),
												dirLeft => SW(12),
												shArith => SW(13),
												dataOut =>LEDR(7 downto 0));
												
	freqdivider:	entity work.FreqDivider(Behavioral)
									generic map(K => 50000000)
									port map(clkIn => CLOCK_50,
												clkOut => s_clk);
										

end Structural;