library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity RAM_16_8 is

	port(	clk			:	in std_logic;
			writeEnable	:	in std_logic;
			address		:	in std_logic_vector(3 downto 0);
			writeData	:	in std_logic_vector(7 downto 0);
			readData		:	out std_logic_vector(7 downto 0));

end Ram_16_8;

architecture Behavioral of Ram_16_8 is

	subtype memory is std_logic_vector(7 downto 0);
	type Ram1 is array (15 downto 0) of memory;
	signal ram	:	Ram1;
	
begin

	process(clk)
	begin
		if(rising_edge(clk)) then
			if(writeEnable='1') then
				Ram(to_integer(unsigned(address))) <= writeData;
			end if;
		end if;
	end process;
	
	readData <= Ram(to_integer(unsigned(address)));

end Behavioral;