-- Projeto MasterMind
-- Diogo Daniel Soares Ferreira e Eduardo Reis Silva


library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Demultiplexer is

	port(	S								:	in std_logic_vector(1 downto 0);
			out1, out2, out3, out4	:	out std_logic);

end Demultiplexer;

-- Demultiplexer simples

architecture Behavioral of Demultiplexer is

begin

	process(S)
	begin
		out1 <= '0';
		out2 <= '0';
		out3 <= '0';
		out4 <= '0';
		if(s="11") then
			out4 <= '1';
		elsif(s = "01") then
			out2 <= '1';
		elsif (s="10") then
			out3 <= '1';
		else
			out1 <= '1';
		end if;
	end process;


end Behavioral;