library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity LampStr is
	port( SW : in std_logic_vector(2 downto 0);
			LEDR : out std_logic_vector(0 downto 0));

end LampStr;

architecture Shell of LampStr is
begin

	System_core: entity work.lampadamod(Behavioral)
							port map(input0 => SW(0),
										input1 => SW(1),
										input2 => SW(2),
										outp   => LEDR(0));

end Shell;