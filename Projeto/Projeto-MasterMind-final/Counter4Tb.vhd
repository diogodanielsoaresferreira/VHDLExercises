-- Projeto MasterMind
-- Diogo Daniel Soares Ferreira e Eduardo Reis Silva

library IEEE;
use IEEE.std_LOGIC_1164.all;

entity Counter4Tb is
end Counter4Tb;

-- Testbench para contador de 0 a 3

architecture Stimulus of Counter4Tb is

	signal s_clk, s_reset, s_enable	:	std_logic;
	signal s_count	:	std_logic_vector(1 downto 0);

begin

	counter_str:	entity work.Counter4(Behavioral)
							port map(clk	=> s_clk,
										reset	=> s_reset,
										enable=> s_enable,
										count => s_count);


	clk_proc: process
	begin
	
	s_clk <= '0';
	wait for 10 ns;
	s_clk <= '1';
	wait for 10 ns;
	
	end process;
	
	
	stim_proc: process
	begin
	
	s_enable <= '0';
	s_reset 	<= '0';
	wait for 11 ns;
	
	s_enable <= '1';
	wait for 50 ns;
	
	s_enable <= '0';
	wait for 11 ns;
	
	s_reset <= '1';
	wait for 11 ns;
	
	end process;

end Stimulus;