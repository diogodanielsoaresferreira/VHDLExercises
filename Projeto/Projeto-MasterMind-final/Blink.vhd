-- Projeto MasterMind
-- Diogo Daniel Soares Ferreira e Eduardo Reis Silva


library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Blink is

	port(	enable	:	in std_logic;
			numberIn	:	in std_logic_vector(3 downto 0);
			numberOut:	out std_logic_vector(3 downto 0);
			clock		:	in std_logic;
			load		:	in std_logic);

end Blink;

-- Entidade que faz piscar a uma certa frequência o valor de entrada caso o enable estiver ligado('1').

architecture Behavioral of Blink is

	signal checkblink	:	std_logic;
	signal s_nin		:	std_logic_vector(3 downto 0);

begin

	process(clock, enable, load)
		begin
		if(enable = '1') then
			if(rising_edge(clock))then		
				if(checkblink = '1') then
					numberOut <= s_nin;
					checkblink<= '0';
				else
					checkblink<= '1';
					numberOut <= "1111";
				end if;
			end if;
		else
			checkblink<= '0';
			numberOut <= s_nin;	
		end if;
		if(load = '1') then
			s_nin <= numberIn;
		end if;
	end process;

end Behavioral;