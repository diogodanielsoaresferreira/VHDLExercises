library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.numeric_std.all;

entity AddSubN is

	generic(n 	:	positive := 4);
	port (op0	:	in std_logic_vector(n-1 downto 0);
			op1	:	in std_logic_vector(n-1 downto 0);
			sub	:	in std_logic;
			cout	:	out std_logic;
			res	:	out std_logic_vector(n-1 downto 0));

end AddSubN;

architecture Behavioral of AddSubN is

signal s_a, s_b, s_s : unsigned(n downto 0);

begin
	s_a <= '0' & unsigned(op0);
	s_b <= '0' & unsigned(op1);
	s_s <= (s_a + s_b) when (sub='0') else
				(s_a - s_b);
	res <= std_logic_vector(s_s(n-1 downto 0));
	cout<= std_logic(s_s(n));

end Behavioral;