library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity EqCmpDemo is
	port(SW		: in  std_logic_vector(7 downto 0);
		  LEDR	: out std_logic_vector(0 downto 0));
end EqCmpDemo;

architecture Shell of EqCmpDemo is
begin
	system_core : entity work.EqCmp4(Behavioral)
							port map(input0 => SW(3 downto 0),
										input1 => SW(7 downto 4),
										cmpout =>LEDR(0));


end Shell;