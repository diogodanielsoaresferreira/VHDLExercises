library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;


entity Ram1_N_demo is

	port(	KEY	:	in std_logic_vector(0 downto 0);
			SW		:	in std_logic_vector(17 downto 0);
			LEDG	:	out std_logic_vector(7 downto 0));

end Ram1_N_demo;


architecture Behavioral of Ram1_N_demo is

begin

	ram: entity work.Ram1_N(Behavioral)
			generic map(addr => 4,
							data => 8)
			port map(clk 			=> KEY(0),
						writeenable => SW(0),
						address		=> SW(17 downto 14),
						writeData	=> SW(8 downto 1),
						readData		=> LEDG(7 downto 0));


end Behavioral;