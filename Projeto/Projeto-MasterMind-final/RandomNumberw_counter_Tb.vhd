-- Projeto MasterMind
-- Diogo Daniel Soares Ferreira e Eduardo Reis Silva


library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity RandomNumberw_counter_Tb is
end RandomNumberw_counter_Tb;

-- Testes unitários para a sincronização das entidade RandomNumber e counter9999


architecture Stimulus of RandomNumberw_counter_Tb is

	signal s_reset, s_stop, s_clock, s_count, s_resetOut	:	std_logic;
	signal s_random0, s_random3,s_random2,s_random1			:	std_logic_vector(3 downto 0);

begin 
	
	uutrandom:	entity work.RandomNumber(Behavioral)
						port map(clock 		=> s_clock,
									stop_signal => s_stop,
									reset 		=> s_reset,
									count 		=> s_count,
									resetOut 	=> s_resetOut);
	
	uutcounter: entity work.Counter9999(Behavioral)
						port map(clk 		=> s_clock,
									reset		=> s_resetOut,
									enable 	=> s_count,
									count0 	=> s_random0,
									count1 	=> s_random1,
									count2 	=> s_random2,
									count3 	=> s_random3);
									
	clk_proc:process
	begin
	
		s_clock <= '1';
		wait for 13 ns;
		s_clock <= '0';
		wait for 13 ns;
	
	end process;
	
	comb_process:process
	begin
		s_stop <= '0';
		s_reset <= '0';
		wait for 50 ns;
		
		s_stop <= '1';
		wait for 25 ns;
		
		s_stop <= '0';
		wait for 25 ns;
		
		s_reset <= '1';
		wait for 25 ns;
	
	end process;

end Stimulus;