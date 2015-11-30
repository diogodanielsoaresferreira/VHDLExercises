library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Rom is

	port(	addrin	:	in std_logic_vector(3 downto 0);
			dataOut	:	out std_logic_vector(7 downto 0));

end Rom;

architecture Behavioral of Rom is

	subtype memory is std_logic_vector(7 downto 0);
	type ROM is array (15 downto 0) of memory;
	constant c_memory : ROM := ("00000000", "00000001", "00000010", "00000011", "00000100", "00000101","00000110", "00000111", 
										"00001000", "00001001", "00001010", "00001011", "00001100", "00001101", "00001110", "00001111");

begin

	dataOut <= c_memory(to_integer(unsigned(addrin)));

end Behavioral;