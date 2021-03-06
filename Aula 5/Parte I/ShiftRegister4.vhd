library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity ShiftRegister4 is

	port(	clk		:	in std_logic;
			so			:	out std_logic;
			dataOut 	:	out std_logic_vector(3 downto 0);
			si			:	in std_logic);

end ShiftRegister4;

architecture Behavioral of ShiftRegister4 is

	signal s_dataOut : std_logic_vector(3 downto 0);

begin

	process(clk)
	begin
		if(rising_edge(clk)) then
			s_dataOut <= s_dataOut(2 downto 0) & si;
		end if;
	end process;
	
	dataOut <= s_dataOut(3 downto 0);
	so <= s_dataOut(3);
end Behavioral;