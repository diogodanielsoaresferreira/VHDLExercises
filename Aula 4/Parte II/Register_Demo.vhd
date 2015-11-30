library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Register_Demo is

	port(	SW	:	in std_logic_vector(15 downto 0);
			KEY:	in std_logic_vector(1 downto 0);
			LEDG:	out std_logic_vector(7 downto 0);
			LEDR:	out std_logic_vector(5 downto 0));

end Register_Demo;

architecture Structural of Register_Demo is
begin

	Register8: entity work.RegisterN(Behavioral)
									generic map(N 			=> 8)
									port map(	dataIn	=> SW(7 downto 0),
													wrEn		=>	SW(8),
													clk		=>	KEY(0),
													dataOut	=>	LEDG(7 downto 0));

	Register6: entity work.RegisterN(Behavioral)
									generic map(N 			=> 6)
									port map(	dataIn	=> SW(14 downto 9),
													wrEn		=>	SW(15),
													clk		=>	KEY(1),
													dataOut	=>	LEDR(5 downto 0));

	
end Structural;