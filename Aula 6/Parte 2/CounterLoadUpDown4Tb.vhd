library IEEE;
use IEEE.std_LOGIC_1164.all;

entity CounterLoadUpDown4Tb is
end CounterLoadUpDown4Tb;

architecture Stimulus of CounterLoadUpDown4Tb is

	signal s_clk, s_updown, s_reset, s_enable, s_load	:	std_logic;
	signal s_dataIn, s_count	:	std_logic_vector(3 downto 0);

begin

	counter_str:	entity work.CounterLoadUpDown4(Behavioral)
							port map(clk	=> s_clk,
										updown=> s_updown,
										reset	=> s_reset,
										enable=> s_enable,
										load	=> s_load,
										dataIn=> s_dataIn,
										count => s_count);

	s_dataIn <= "1010";

	clk_proc: process
	begin
	
	s_clk <= '0';
	wait for 50 ns;
	s_clk <= '1';
	wait for 50 ns;
	
	end process;
	
	
	stim_proc: process
	begin
	
	s_enable <= '0';
	s_reset 	<= '0';
	s_load 	<= '0';
	s_updown <= '0';
	wait for 100 ns;
	
	s_enable <= '1';
	wait for 100 ns;
	
	s_enable <= '0';
	wait for 100 ns;
	
	s_reset <= '1';
	wait for 100 ns;
	
	s_reset <= '0';
	wait for 100 ns;
	
	s_load <= '1';
	wait for 100 ns;
	
	s_load <= '0';
	wait for 100 ns;
	
	s_updown <= '1';
	wait for 100 ns;
	
	s_updown <= '0';
	wait for 100 ns;
	
	end process;

end Stimulus;