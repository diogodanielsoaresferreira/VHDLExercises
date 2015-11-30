library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity cliente_seguinte is

	port(	clienseg	:	in std_logic;
			reset		:	in std_logic;
			binOut	:	out std_logic_vector(6 downto 0);
			compareTo:	in std_logic_vector(6 downto 0);
			resetOut	:	out std_logic);

end cliente_seguinte;

architecture Behavioral of cliente_seguinte is

	signal count : unsigned(6 downto 0);

begin

	process(clienseg)
	begin
	
		if(rising_edge(clienseg)) then

			if(reset='1') then
				count <= (others => '0');
				resetOut <= '1';
			else
				if(count="1100011") then	--99
					count <= "1100011";
				elsif(compareTo="0000000") then
					resetOut <= '0';
				elsif(count<unsigned(compareTo)) then
					count <= count+1;
					resetOut <= '0';
				else
					count <= count;
				end if;
			end if;
			
		end if;
		binOut <= std_logic_vector(count);
		
	end process;
	
end Behavioral;