-- Projeto MasterMind
-- Diogo Daniel Soares Ferreira e Eduardo Reis Silva


library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity BlinkTb is
end BlinkTb;

-- Testes funcionais à entidade Blink.

architecture Stimulus of BlinkTb is

	signal s_clock, s_load, s_enable	:	std_logic;
	signal s_numberIn, s_numberOut	:	std_logic_vector(3 downto 0);

begin

	uut: entity work.Blink(Behavioral)
			port map(clock 		=> s_clock,
						enable 		=> s_enable,
						numberIn		=> s_numberIn,
						numberOut 	=> s_numberOut,
						load			=>	s_load);
	clk_proc:process
	begin
		s_clock <= '1';
		wait for 10 ns;
		s_clock <= '0';
		wait for 10 ns;
	
	end process;
	
	comb_proc:process
	begin
		s_load <= '1';
		s_numberIn <= "1010";
		s_enable <= '1';
		wait for 100 ns;
		
		s_enable <= '0';
		wait for 35 ns;
	
	end process;

end Stimulus;