-- Projeto MasterMind
-- Diogo Daniel Soares Ferreira e Eduardo Reis Silva


library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity counteranddem_tb is
end counteranddem_tb;

-- Testes funcionais para os contadores do número de tentativas,
-- contadores do número do utilizador e demultiplexer

architecture Stimulus of counteranddem_tb is

	signal clk_100hz, set, confirm, dim, inc, SW0									:	std_logic;
	signal s_out0,s_out1, s_out2, s_out3												:	std_logic;
	signal sel																					: 	std_logic_vector(1 downto 0);
	signal s_up0, s_up1, s_up2, s_up3, s_down0, s_down1, s_down2, s_down3	:	std_logic;
	signal c0,c1,c2,c3																		:	std_logic_vector(3 downto 0);
	
begin

	Counter4:		entity work.Counter4(Behavioral)
							port map(clk 	=> clk_100hz,
										enable=> set,
										reset => SW0,
										count => sel);
										
	Demultiplexer:	entity work.Demultiplexer(Behavioral)
							port map(S 	  => sel,
										out1 => s_out0,
										out2 => s_out1,
										out3 => s_out2,
										out4 => s_out3);
	s_up0 	<= s_out0 and inc;
	s_down0 	<= s_out0 and dim;
	s_up1 	<= s_out1 and inc;
	s_down1 	<= s_out1 and dim;
	s_up2 	<= s_out2 and inc;
	s_down2 	<= s_out2 and dim;
	s_up3 	<= s_out3 and inc;
	s_down3 	<= s_out3 and dim;
	
	Counter9_0:		entity work.Counter9(Behavioral)
							port map(clk 	=> clk_100hz,
										up		=> s_up0,
										down	=> s_down0,
										reset => SW0,
										count => c0);
										
	Counter9_1:		entity work.Counter9(Behavioral)
							port map(clk 	=> clk_100hz,
										up		=> s_up1,
										down	=> s_down1,
										reset => SW0,
										count => c1);
										
	Counter9_2:		entity work.Counter9(Behavioral)
							port map(clk 	=> clk_100hz,
										up		=> s_up2,
										down	=> s_down2,
										reset => SW0,
										count => c2);
										
	Counter9_3:		entity work.Counter9(Behavioral)
							port map(clk 	=> clk_100hz,
										up		=> s_up3,
										down	=> s_down3,
										reset => SW0,
										count => c3);
	
	clk_process:process
	begin
	
		
		clk_100Hz <='1';
		wait for 2 ns;
		clk_100Hz <= '0';
		wait for 2 ns;

	end process;
	
	comb_process:process
	begin
	
		set 		<= '0';
		confirm 	<= '0';
		dim 		<= '0';
		inc 		<= '0';
		SW0 		<= '0';
		wait for 17 ns;
		
		inc 	<= '1';
		wait for 5 ns;
		
		inc 	<= '0';
		set 	<= '1';
		wait for 5 ns;
		
		set 	<= '0';
		dim 	<= '1';
		wait for 5 ns;
		
		dim		<= '0';
		confirm 	<= '1';
		wait for 5 ns;
		
		SW0 		<= '1';
		wait for 5 ns;
	end process;
	
end Stimulus;