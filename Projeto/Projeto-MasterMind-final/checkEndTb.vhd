-- Projeto MasterMind
-- Diogo Daniel Soares Ferreira e Eduardo Reis Silva


library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity checkEndTb is
end checkEndTb;

-- Testes funcionais para entidade CheckEnd

architecture Stimulus of checkEndTb is

	signal s_try0, s_try1, s_p, s_n, s_t1, s_t0		:	std_logic_vector(3 downto 0);
	signal s_clock, s_reset, s_isBlink					:	std_logic;
	signal s_erra, s_cert									:	std_logic_vector(3 downto 0);

begin

	uut	:	entity work.checkEnd(Behavioral)
					port map(try0		=> s_try0,
								try1		=>	s_try1,
								p			=> s_p, 
								n			=> s_n, 
								t1			=> s_t1,
								t0			=> s_t0,
								clock		=> s_clock,
								reset		=> s_reset,
								isBlink	=>	s_isBlink,
								cert		=>	s_cert,
								erra		=> s_erra);

	clk:process
	begin
		s_clock <= '1';
		wait for 15 ns;
		
		s_clock <= '0';
		wait for 15 ns;
	end process;
	
	comb_proc:process
	begin
		
		s_reset 	<= '0';
		s_erra 	<= "0011";
		s_cert   <= "0001";
		s_try1 	<= "0000";
		s_try0 	<= "0001";
		wait for 40 ns;
		
		s_erra   <= "0100";
		s_cert 	<= "0000";
		s_try1	<= "0000";
		s_try0	<= "0001";
		wait for 40 ns;
		
		s_reset <= '1';
		wait for 40 ns;

	
	end process;
								
end Stimulus;