library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity AddSubNDemo is

port(	SW		:	in std_logic_vector(17 downto 0);
		KEY	:	in std_logic;
		LEDR	:	out std_logic_vector(13 downto 0));

end AddSubNDemo;

architecture Shell of AddSubNDemo is
begin

	AddSubNDemo: entity work.MultiAddSub(Structural)
			port map(op0 => SW(3 downto 0),
						op1 => SW(7 downto 4),
						op2 => SW(12 downto 8),
						op3 => SW(17 downto 13),
						sub => KEY,
						cout0=>LEDR(4),
						cout1=>LEDR(13),
						res0=>LEDR(3 downto 0),
						res1=>LEDR(12 downto 8));
						
end Shell;