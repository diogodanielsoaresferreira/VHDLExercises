-- Projeto MasterMind
-- Diogo Daniel Soares Ferreira e Eduardo Reis Silva

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Counter99 is
	port(	clk	:	in std_logic;
			reset	:	in std_logic;
			enable:	in std_logic;
			count0:	out std_logic_vector(3 downto 0);
			count1:	out std_logic_vector(3 downto 0));

end Counter99;

-- Contador de quatro dígitos decimais com entrada de enable, reset e clock.

architecture Behavioral of Counter99 is
	signal s_count0, s_count1	:	unsigned (3 downto 0);
begin

	process(clk)
	begin
		if(rising_edge(clk)) then
			if(reset='1') then
				s_count0 <= (others => '0');
				s_count1 <= (others => '0');
			elsif(s_count0 = "1001" and s_count1 = "1001") then
				s_count0 <= s_count0;
				s_count1 <= s_count1;
			elsif(not(s_count0(0)='0') and not(s_count0(0)='1')) then
				s_count0 <= (others => '0');
				s_count1 <= (others => '0');
			elsif (enable = '0') then
				s_count0 <= s_count0;
				s_count1 <= s_count1;
			else
				if (s_count0="1001") then
					s_count0 <= "0000";
					if(s_count1 = "1001") then
						s_count1 <= "0000";
					else
						s_count1 <= s_count1 + 1;
					end if;
				else
					s_count0 <= s_count0 + 1;
				end if;
			end if;
		end if;
	end process;
	
	count0 <= std_logic_vector(s_count0);	
	count1 <= std_logic_vector(s_count1);


end Behavioral;