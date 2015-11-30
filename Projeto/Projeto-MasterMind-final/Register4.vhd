-- Projeto MasterMind
-- Diogo Daniel Soares Ferreira e Eduardo Reis Silva


library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Register4 is
	port(	dataIn0	:	in std_logic_vector(3 downto 0);
			dataIn1	:	in std_logic_vector(3 downto 0);
			dataIn2	:	in std_logic_vector(3 downto 0);
			dataIn3	:	in std_logic_vector(3 downto 0);
			clk		:	in std_logic;
			reset		:	in std_logic;
			dataOut0	:	out std_logic_vector(3 downto 0);
			dataOut1	:	out std_logic_vector(3 downto 0);
			dataOut2	:	out std_logic_vector(3 downto 0);
			dataOut3	:	out std_logic_vector(3 downto 0));

end Register4;

-- Register simples de 4 algarismos decimais

architecture Behavioral of Register4 is
begin

	process(clk, reset)
	begin
		if(reset = '1') then
			dataOut0 <= "0000";
		elsif(rising_edge(clk)) then
			dataOut0 <= dataIn0;
			dataOut1 <= dataIn1;
			dataOut2 <= dataIn2;
			dataOut3 <= dataIn3;
		end if;
		
	end process;

end Behavioral;