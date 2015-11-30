-- Projeto MasterMind
-- Diogo Daniel Soares Ferreira e Eduardo Reis Silva


library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Counter9999 is
	port(	clk		:	in std_logic;
			reset		:	in std_logic;
			enable	:	in std_logic;
			count0 	:	out std_logic_vector(3 downto 0);
			count1 	:	out std_logic_vector(3 downto 0);
			count2 	:	out std_logic_vector(3 downto 0);
			count3 	:	out std_logic_vector(3 downto 0));

end Counter9999;

-- Contador com enable e reset, de 0 a 9999.
-- Necessário para gerar número pseudo-aleatório.

architecture Behavioral of Counter9999 is
	signal s_count0, s_count1, s_count2, s_count3	:	unsigned (3 downto 0);
begin

	process(clk)
	begin
		if(rising_edge(clk)) then
			if(not(s_count0(0)='0') and not(s_count0(0)='1')) then
				s_count0 <= (others => '0');
				s_count1 <= (others => '0');
				s_count2 <= (others => '0');
				s_count3 <= (others => '0');
			elsif(reset='1') then
				s_count0 <= (others => '0');
				s_count1 <= (others => '0');
				s_count2 <= (others => '0');
				s_count3 <= (others => '0');
			elsif (enable = '0') then
				s_count0 <= s_count0;
				s_count1 <= s_count1;
				s_count2 <= s_count2;
				s_count3 <= s_count3;
			else
				if (s_count0="1001") then
					s_count0 <= "0000";
					if(s_count1 = "1001") then
						s_count1 <= "0000";
						if(s_count2 = "1001") then
							s_count2 <= "0000";
							if(s_count3 = "1001") then
								s_count3 <= "0000";
							else
								s_count3 <= s_count3 + 1;
							end if;
						else
							s_count2 <= s_count2 + 1;
						end if;
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
	count2 <= std_logic_vector(s_count2);
	count3 <= std_logic_vector(s_count3);


end Behavioral;