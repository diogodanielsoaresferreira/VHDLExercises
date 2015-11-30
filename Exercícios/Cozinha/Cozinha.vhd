library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Cozinha is

	port(	SW	:	in std_logic_vector(3 downto 0);
			LEDR:	out std_logic_vector(1 downto 0);
			CLOCK_50	:	in std_logic);

end Cozinha;

architecture Shell of Cozinha is

begin

	cozinhafsm: entity Work.CozinhaFSM(Behavioral)
						port map(BS => SW(0),
									BC	=> SW(1),
									S	=>	SW(2),
									C	=> SW(3),
									clk=> CLOCK_50,
									U	=> LEDR(0),
									D	=>	LEDR(1));

end Shell;