library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Counter_Demo is
	port(	KEY	:	in std_logic_vector(3 downto 3);
			SW		:	in std_logic_vector(7 downto 0);
			LEDR	:	out std_logic_vector(3 downto 0);
			HEX7	:	out std_logic_vector(7 downto 0));

end Counter_Demo;

architecture Structural of Counter_Demo is

signal s_count : std_logic_vector(3 downto 0);
begin

--	CounterUpDown:	entity work.CounterUpDown4(Behavioral)
--							port map(clk => KEY(3),
--										updown => SW(0),
--										reset => SW(1),
--										count => s_count);
--
--LEDR(3 downto 0) <= s_count;
--
--	bin7seg_core :	entity work.Bin7SegDecoder(Behavioral)
--							port map(enable => not SW(1),
--										binInput => s_count,
--										decOut_n => HEX7(6 downto 0));

	counterloadupdown4: entity work.CounterLoadupdown4(Behavioral)
								port map(clk => KEY(3),
											reset => SW(7),
											enable => SW(6),
											load => SW(5),
											updown => SW(4),
											dataIn => SW(3 downto 0),
											count => s_count);
LEDR(3 downto 0) <= s_count;

	bin7seg_core :	entity work.Bin7SegDecoder(Behavioral)
							port map(enable => not SW(6),
										binInput => s_count,
										decOut_n => HEX7(6 downto 0));


end Structural;