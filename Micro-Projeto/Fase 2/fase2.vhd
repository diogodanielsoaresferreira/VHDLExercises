library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity fase2 is

	port(	KEY	:	in std_logic_vector(1 downto 0);
			SW		:	in std_logic_vector(0 downto 0);
			HEX7	:	out std_logic_vector(6 downto 0);
			HEX6	:	out std_logic_vector(6 downto 0);
			HEX5	:	out std_logic_vector(6 downto 0);
			HEX4	:	out std_logic_vector(6 downto 0);
			LEDR	:	out std_logic_vector(0 downto 0));

end fase2;

architecture Structural of fase2 is

	signal s_binOut											:	unsigned(6 downto 0);
	signal s_binOut2											:	unsigned(6 downto 0);
	signal s_reset												: 	std_logic;
	signal decOut_1, decOut_2, decOut_3, decOut_4 	:	std_logic_vector(3 downto 0);

begin

	cliente_seguinte_core:	entity work.cliente_seguinte(Behavioral)
										port map(clienseg 			=> KEY(0),
													reset 				=>	SW(0),
													compareTo			=> std_logic_vector(s_binOut2),
													resetOut				=> s_reset,
													unsigned(binOut)	=> s_binOut);

	cliente_em_fila_core:	entity work.cliente_em_fila(Behavioral)
										port map(client 				=> KEY(1),
													reset 				=>	s_reset,
													unsigned(binOut2)	=> s_binOut2,
													ledOut				=> LEDR(0));
											
	Bin2BCD_cliente_seg_core:	entity work.Bin2BCDDecoder(Behavioral)
										port map(inBin 	=> std_logic_vector(s_binOut),
													outBCD 	=> decOut_1,
													outBCD2 	=> decOut_2);
										
	Bin7Seg_core1:				entity work.bin7Seg(Behavioral)
										port map( binInput => decOut_1,
														decOut_n => HEX7);
	
	Bin7Seg_core2:				entity work.bin7Seg(Behavioral)
										port map( binInput => decOut_2,
														decOut_n => HEX6);
														
	Bin2BCD_cliente_fila_core:	entity work.Bin2BCDDecoder(Behavioral)
										port map(inBin 	=> std_logic_vector(s_binOut2),
													outBCD 	=> decOut_3,
													outBCD2 	=> decOut_4);
										
	Bin7Seg_core3:				entity work.bin7Seg(Behavioral)
										port map( binInput => decOut_3,
														decOut_n => HEX5);
	
	Bin7Seg_core4:				entity work.bin7Seg(Behavioral)
										port map( binInput => decOut_4,
														decOut_n => HEX4);

end Structural;