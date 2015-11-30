library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Debouncer_Demo is

	port (CLOCK_50	:	in std_logic;
			KEY		:	in std_logic_vector(0 downto 0);
			SW			:	in std_logic_vector(7 downto 0);
			LEDR		:	out std_logic_vector(3 downto 0));

end Debouncer_Demo;

architecture Shell of Debouncer_Demo is

	signal s_clk	:	std_logic;

begin

	Deb_core: entity work.Debouncer(Behavioral)
					generic map(N 	 	=> 20)
					port map(clk		=>	CLOCK_50,
								dirty_In => KEY(0),
								cleanOut	=>	s_clk);
	
	Count_core: entity work.CounterLoadUpDown4(Behavioral)
					port map(clk	=>	s_clk,
								updown=>	SW(0),
								reset	=>	SW(1),
								enable=> SW(2),
								load	=> SW(3),
								dataIn=> SW(7 downto 4),
								count => LEDR(3 downto 0));

end Shell;