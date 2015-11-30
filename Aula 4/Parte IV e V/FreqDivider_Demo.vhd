library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity FreqDivider_Demo is

	port(	LEDR 		: out std_logic_vector(0 downto 0);
			CLOCK_50 : in std_logic;
			SW			: in std_logic_vector(1 downto 0);
			HEX7		: out std_logic_vector(6 downto 0));

end FreqDivider_Demo;

architecture Structural of FreqDivider_Demo is

signal s_count : std_logic_vector(3 downto 0);
signal s_clk_out:std_logic;

begin

	--FreqDivider: entity work.FreqDivider(Behavioral)
	--							generic map(K => 25000000)
	--							port map(clkIn => CLOCK_50,
	--										clkOut=> LEDR(0));
		
	FreqDivider:	entity work.FreqDivider(Behavioral)
								generic map(K => 50000000)
								port map(clkIn => CLOCK_50,
											clkOut => s_clk_out);

	UpDown4:			entity work.CounterUpDown4(Behavioral)
									port map(clk => s_clk_out,
												updown => SW(0),
												reset => SW(1),
												count => s_count);
												
											
	Bin7SegDec:		entity work.Bin7SegDecoder(Behavioral)
									port map(enable => '1',
												decOut_n => HEX7(6 downto 0),
												binInput => s_count);

end Structural;