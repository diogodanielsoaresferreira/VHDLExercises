Library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity DisplayDemo is
	port(	SW		:	in std_logic_vector(3 downto 0);
			HEX7	:	out std_logic_vector(6 downto 0);
			LEDR	:	out std_logic_vector(3 downto 0);
			KEY	:	in std_logic_vector(3 downto 3));

end DisplayDemo;

architecture Shell of DisplayDemo is
begin
	system_core	:	entity work.Bin7SegDecoder(Behavioral)
							port map(binInput 	=> SW (3 downto 0),
										decOut_n		=> HEX7(6 downto 0),
										ledOut		=> LEDR(3 downto 0),
										enable		=> KEY(3));

end Shell;