-- Projeto MasterMind
-- Diogo Daniel Soares Ferreira e Eduardo Reis Silva


library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity RandomNumberTb is
end RandomNumberTb;

-- Testes funcionais à entidade RandomNumber


architecture Stimulus of RandomNumberTb is

	signal s_clock, s_stop, s_reseti, s_resetO, s_counter 	:	std_logic;

begin

	uut: entity work.RandomNumber(Behavioral)
					port map(clock 		=> s_clock,
								stop_signal => s_stop,
								reset 		=> s_reseti,
								resetOut		=> s_resetO,
								count 		=> s_counter);

	clk_process:process
	begin
		s_clock <= '1';
		wait for 20 ns;
		s_clock <= '0';
		wait for 20 ns;
	
	end process;

	comb_process:process
	begin
		s_stop <= '0';
		s_reseti <= '0';
		wait for 50 ns;
		
		s_stop <= '1';
		wait for 50 ns;
		
		s_stop <= '0';
		wait for 50 ns;
		
		s_stop <= '1';
		wait for 50 ns;
		
		s_reseti <= '1';
		wait for 50 ns;
	
	
	end process;

end Stimulus;