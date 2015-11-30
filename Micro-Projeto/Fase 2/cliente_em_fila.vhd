library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity cliente_em_fila is

	port(	client	:	in std_logic;
			reset		:	in std_logic;
			binOut2	:	out std_logic_vector(6 downto 0);
			ledOut	:	out std_logic);

end cliente_em_fila;

architecture Behavioral of cliente_em_fila is

	signal count :	unsigned(6 downto 0);

begin

	process(client, reset)
	begin
	
		if(reset='1') then 
			count <= (others => '0');
			ledOut<= '0';
		elsif(rising_edge(client)) then
			ledOut <= '1';
			if (count = "1100011") then	--99
				count <= count;
			else
				count <= count + 1;
			end if;
		end if;
	end process;
	
	binOut2<= std_logic_vector(count);

end Behavioral;