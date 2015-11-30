-- Projeto MasterMind
-- Diogo Daniel Soares Ferreira e Eduardo Reis Silva


Library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Debouncer is
	
	generic (N		:	positive);
	port (clk		:	in std_logic;
			dirty_In	:	in std_logic;
			cleanOut	:	out std_logic);

end Debouncer;

-- Debouncer simples

architecture Behavioral of Debouncer is

	signal s_dirty_In	:	std_logic_vector(N downto 1);

begin

	process(clk, dirty_In)
	begin
	
		if(dirty_In='0') then
			s_dirty_In <= (others => '0');
		elsif(rising_edge(clk)) then
			s_dirty_In	<=	'1' & s_dirty_In(N downto 2);
			
		end if;
		
		cleanOut <= s_dirty_In(N);
	end process;

end Behavioral;