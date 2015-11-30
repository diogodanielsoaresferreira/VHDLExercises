library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity fase3 is

	port(	KEY	:	in std_logic_vector(1 downto 0);
			SW		:	in std_logic_vector(0 downto 0);
			HEX7	:	out std_logic_vector(6 downto 0);
			HEX6	:	out std_logic_vector(6 downto 0);
			HEX5	:	out std_logic_vector(6 downto 0);
			HEX4	:	out std_logic_vector(6 downto 0);
			LEDR	:	out std_logic_vector(0 downto 0);
			LEDG	:	out std_logic_vector(0 downto 0);
			CLOCK_50:in std_logic);

end fase3;

architecture Structural of fase3 is

	signal s_binOut, s_binOut2, s_binOut3				:	unsigned(6 downto 0);
	signal s_reset, s_clk									: 	std_logic;
	signal decOut_1, decOut_2, decOut_3, decOut_4	:	std_logic_vector(3 downto 0);

begin

	clock_core:					entity work.FreqDivider(Behavioral)
										generic map(K => 12500000)
										port map(clkIn =>CLOCK_50,
													clkOut=> s_clk);

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
													outLed				=> LEDR(0),
													compareTo			=>	std_logic_vector(s_binOut));
													
	blink_core:				entity work.blink(Behavioral)
										port map(binIn =>std_logic_vector(s_binOut2),
													std_logic_vector(binOut)=>s_binOut3,
													clk	=> s_clk,
													outLed => LEDG(0),
													reset => s_reset);
	
	Bin2BCD_cliente_seg_core:	entity work.Bin2BCDDecoder(Behavioral)
										port map(inBin 	=> std_logic_vector(s_binOut),
													outBCD 	=> decOut_1,
													outBCD2 	=> decOut_2);
										
	Bin7Seg_core1:				entity work.bin7Seg(Behavioral)
										port map( binInput => decOut_1,
														decOut_n => HEX6);
	
	Bin7Seg_core2:				entity work.bin7Seg(Behavioral)
										port map( binInput => decOut_2,
														decOut_n => HEX7);
														
	Bin2BCD_cliente_fila_core:	entity work.Bin2BCDDecoder(Behavioral)
										port map(inBin 	=> std_logic_vector(s_binOut3),
													outBCD 	=> decOut_3,
													outBCD2 	=> decOut_4);
										
	Bin7Seg_core3:				entity work.bin7Seg(Behavioral)
										port map( binInput => decOut_3,
														decOut_n => HEX4);
	
	Bin7Seg_core4:				entity work.bin7Seg(Behavioral)
										port map( binInput => decOut_4,
														decOut_n => HEX5);

end Structural;