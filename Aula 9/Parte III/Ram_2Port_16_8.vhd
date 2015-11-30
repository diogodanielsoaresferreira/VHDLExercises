library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Ram_2Port_16_8 is

	port(	clk			:	in std_logic;
			writeEnable	:	in std_logic;
			writeAddress:	in std_logic_vector(3 downto 0);
			writeData	:	in std_logic_vector(7 downto 0);
			readData		:	out std_logic_vector(7 downto 0);
			readAddress	:	in std_logic_vector(3 downto 0));

end Ram_2Port_16_8;


architecture Behavioral of Ram_2Port_16_8 is

	type ram is array (0 to 15) of std_logic_vector(7 downto 0);
	signal memory	:	ram;
	
begin

	process(clk)
	begin
	
		if(rising_edge(clk)) then
			if(writeEnable='1') then
				memory(to_integer(unsigned(writeAddress))) <= writeData;
			end if;
		end if;
	
	end process;
	
	process(clk)
	begin
	
		if(rising_edge(clk)) then
			readData <= memory(to_integer(unsigned(readAddress)));
		end if;
	
	end process;

end Behavioral;