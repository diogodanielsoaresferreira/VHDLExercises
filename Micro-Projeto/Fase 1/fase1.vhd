library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity fase1 is

	port(	KEY	:	in std_logic_vector(0 downto 0);
			SW		:	in std_logic_vector(0 downto 0);
			HEX7	:	out std_logic_vector(6 downto 0);
			HEX6	:	out std_logic_vector(6 downto 0));

end fase1;

architecture Structural of fase1 is

	signal s_binOut				:	unsigned(6 downto 0);
	signal decOut_1, decOut_2 	:	std_logic_vector(3 downto 0);

begin

	cliente_seguinte_core:	entity work.cliente_seguinte(Behavioral)
										port map(clienseg => KEY(0),
													reset 	=>	SW(0),
													unsigned(binOut) 	=> s_binOut);
											
	Bin2BCD_core:				entity work.Bin2BCDDecoder(Behavioral)
										port map(inBin 	=> std_logic_vector(s_binOut),
													outBCD 	=> decOut_1,
													outBCD2 	=> decOut_2);
										
	Bin7Seg_core1:				entity work.bin7Seg(Behavioral)
										port map( binInput => decOut_1,
														decOut_n => HEX7);
	
	Bin7Seg_core2:				entity work.bin7Seg(Behavioral)
										port map( binInput => decOut_2,
														decOut_n => HEX6);

end Structural;