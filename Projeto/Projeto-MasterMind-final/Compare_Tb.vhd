-- Projeto MasterMind
-- Diogo Daniel Soares Ferreira e Eduardo Reis Silva

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Compare_Tb is
end Compare_Tb;

-- Teste funcional para a entidade compare.

architecture Stimulus of Compare_Tb is

	signal num1, num2,num3, num4,num5, num6,num7, num8		:	std_logic_vector(3 downto 0);
	signal s_cert, s_erra											:	std_logic_vector(3 downto 0);
	signal s_clk, s_reset											:	std_logic;

begin

	uut	:	entity work.Compare2(Behavioral)
					port map(randomnum0	=> num1,
								usernum0		=> num2,
								randomnum1	=> num3,
								usernum1		=> num4,
								randomnum2	=> num5,
								usernum2		=> num6,
								randomnum3	=> num7,
								usernum3		=> num8,
								cert			=> s_cert,
								erra			=> s_erra,
								clock			=> s_clk,
								reset 		=> s_reset);
								
	clk_proc: process
	begin
	s_clk <= '1';
	wait for 1 ns;
	s_clk <= '0';
	wait for 1 ns;
	
	
	end process;
	
	comb_proc	:	process
	begin
		s_reset <= '0';
		num1 <= "1010";
		num2 <= "0101";
		num3 <= "1010";
		num4 <= "0101";
		num5 <= "1010";
		num6 <= "0101";
		num7 <= "1010";
		num8 <= "0101";
		wait for 5 ns;
		s_reset <= '1';
		wait for 5 ns;
		s_reset <= '0';
		
		
		wait for 10 ns;
		num1 <= "0011";
		num2 <= "0011";
		num3 <= "0011";
		num4 <= "0011";
		num5 <= "0011";
		num6 <= "0011";
		num7 <= "0011";
		num8 <= "0011";
		s_reset <= '1';
		wait for 5 ns;
		s_reset <= '0';
		wait for 15 ns;
		num1 <= "0001";
		wait for 15 ns;
		
		num1 <= "0010";
		num2 <= "0001";
		num3 <= "0010";
		num4 <= "0010";
		num5 <= "0001";
		num6 <= "0010";
		num7 <= "0001";
		num8 <= "0001";
		s_reset <= '1';
		wait for 5 ns;
		s_reset <= '0';
		wait for 15 ns;
		
		num1 <= "0010";
		num2 <= "0001";
		num3 <= "0010";
		num4 <= "0010";
		num5 <= "0001";
		num6 <= "0010";
		num7 <= "0001";
		num8 <= "0010";
		s_reset <= '1';
		wait for 5 ns;
		s_reset <= '0';
		wait for 15 ns;
		
		
	
	end process;
end Stimulus;