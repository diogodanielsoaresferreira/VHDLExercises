-- Projeto MasterMind
-- Diogo Daniel Soares Ferreira e Eduardo Reis Silva


library IEEE;
use IEEE.std_LOGIC_1164.all;

entity Counter9999Tb is
end Counter9999Tb;

-- Teste unitário para contador de 0 a 9999.

architecture Stimulus of Counter9999Tb is

	signal s_clk, s_reset, s_enable						:	std_logic;
	signal s_count0, s_count1, s_count2, s_count3	:	std_logic_vector(3 downto 0);

begin

	counter_str:	entity work.Counter9999(Behavioral)
							port map(clk		=> s_clk,
										reset		=> s_reset,
										enable	=> s_enable,
										count0	=> s_count0,
										count1 	=> s_count1,
										count2 	=> s_count2,
										count3 	=> s_count3);


	clk_proc: process
	begin
	
	s_clk <= '0';
	wait for 1 ns;
	s_clk <= '1';
	wait for 1 ns;
	
	end process;
	
	
	stim_proc: process
	begin
	
	s_enable <= '1';
	s_reset 	<= '0';
	wait for 100 ns;
	
	
	end process;

end Stimulus;