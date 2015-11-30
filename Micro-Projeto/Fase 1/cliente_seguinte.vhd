library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity cliente_seguinte is

	port(	clienseg	:	in std_logic;
			reset		:	in std_logic;
			binOut	:	out std_logic_vector(6 downto 0));

end cliente_seguinte;

architecture Behavioral of cliente_seguinte is

	signal count : unsigned(6 downto 0);

begin

	process(clienseg)
	begin
	
		if(rising_edge(clienseg)) then
		
			if(reset='1') then
				count <= (others => '0');
			else
				if(count="1100011") then	--99
					count <= (others=>'0');
				else
					count <= count+1;
				end if;
			end if;
			
		end if;
		binOut <= std_logic_vector(count);
		
	end process;
	
end Behavioral;