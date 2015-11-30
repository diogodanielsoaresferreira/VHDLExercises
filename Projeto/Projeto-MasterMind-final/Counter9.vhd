-- Projeto MasterMind
-- Diogo Daniel Soares Ferreira e Eduardo Reis Silva

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Counter9 is
	port(	clk		:	in std_logic;
			reset		:	in std_logic;
			up			:	in std_logic;
			down 		:	in std_logic;
			count 	:	out std_logic_vector(3 downto 0));
end Counter9;

-- Contador de um algarismo decimal com entrada de clock, reset, up e down

architecture Behavioral of Counter9 is
	signal s_count	:	unsigned (3 downto 0);
begin

	process(clk)
	begin
		if(rising_edge(clk)) then
			if(not(s_count(0)='0') and not(s_count(0)='1')) then
				s_count <= (others => '0');
			elsif(reset='1') then
				s_count <= (others => '0');
			elsif (up = '1') then
				if(s_count = "1001") then
					s_count <= (others => '0');
				else
					s_count <= s_count + 1;
				end if;
			elsif(down = '1') then
				if(s_count = "0000") then
					s_count <= "1001";
				else
					s_count <= s_count - 1;
				end if;
			else
				s_count <= s_count;
			end if;
		end if;
	end process;
	
	count <= std_logic_vector(s_count);
end Behavioral;