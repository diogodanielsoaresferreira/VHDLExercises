-- Projeto MasterMind
-- Diogo Daniel Soares Ferreira e Eduardo Reis Silva

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Counter4 is
	port(	clk	:	in std_logic;
			reset	:	in std_logic;
			enable:	in std_logic;
			count :	out std_logic_vector(1 downto 0));
end Counter4;

-- Contador de 0 a 3.

architecture Behavioral of Counter4 is
	signal s_count	:	unsigned (1 downto 0);
begin

	process(clk)
	begin
		if(rising_edge(clk)) then
			if(not(s_count(0)='0') and not(s_count(0)='1')) then
				s_count <= (others => '0');
			elsif(reset='1') then
				s_count <= (others => '0');
			elsif (enable = '0') then
				s_count <= s_count;
			else
				s_count <= s_count + 1;
			end if;
		end if;
	end process;
	
	count <= std_logic_vector(s_count);
end Behavioral;