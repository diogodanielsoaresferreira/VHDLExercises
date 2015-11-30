-- Projeto MasterMind
-- Diogo Daniel Soares Ferreira e Eduardo Reis Silva


library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity MasterMind is

	port(	KEY		:	in std_logic_vector(3 downto 0);
			SW			:	in std_logic_vector(0 downto 0);
			CLOCK_50	:	in std_logic;
			HEX7		:	out std_logic_vector(6 downto 0);
			HEX6		:	out std_logic_vector(6 downto 0);
			HEX5		:	out std_logic_vector(6 downto 0);
			HEX4		:	out std_logic_vector(6 downto 0);
			HEX3		:	out std_logic_vector(6 downto 0);
			HEX2		:	out std_logic_vector(6 downto 0);
			HEX1		:	out std_logic_vector(6 downto 0);
			HEX0		:	out std_logic_vector(6 downto 0));

end MasterMind;


architecture Shell of MasterMind is


begin

	MasterMind_Core:	entity work.MasterMind_Str(Structural)
								port map(key0	=>	NOT KEY(0),
											key1	=>	NOT KEY(1),
											key2	=>	NOT KEY(2),
											key3	=>	NOT KEY(3),
											SW0	=> SW(0),
											clock	=> CLOCK_50,
											hex7	=> HEX7,
											hex6	=> HEX6,
											hex5	=> HEX5,
											hex4	=> HEX4,
											hex3	=> HEX3,
											hex2	=> HEX2,
											hex1	=> HEX1,
											hex0	=> HEX0);

end Shell;