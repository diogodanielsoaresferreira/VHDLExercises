library IEEE;
use IEEE.NUMERIC_STD.all;
use IEEE.STD_LOGIC_1164.all;

entity AluDisplayex5 is
	generic(N	:	natural := 8);
	port(	decOut_n, m2	:	out std_logic_vector(6 downto 0);
			a, b 	: in std_logic_vector(N-1 downto 0);
			op 	: in std_logic_vector(2 downto 0);
			r, m  : out std_logic_vector(N-1 downto 0));

end AluDisplayex5;

architecture Behavioral of AluDisplayex5 is

signal s_a, s_b, s_r : unsigned(N-1 downto 0);
signal s_m : unsigned((2*N)-1 downto 0);

begin

decOut_n <= "1111001" when r="0001" else --1
					"0100100" when r="0010" else --2
					"0110000" when r="0011" else --3
					"0011001" when r="0100" else --4
					"0010010" when r="0101" else --5
					"0000010" when r="0110" else --6
					"1111000" when r="0111" else --7
					"0000000" when r="1000" else --8
					"0010000" when r="1001" else --9
					"0001000" when r="1010" else --A
					"0000011" when r="1011" else --B
					"1000110" when r="1100" else --C
					"0100001" when r="1101" else --D
					"0000110" when r="1110" else --E
					"0001110" when r="1111" else --F
					"1000000"; --0
					
m2 <= 			"1111001" when m="0001" else --1
					"0100100" when m="0010" else --2
					"0110000" when m="0011" else --3
					"0011001" when m="0100" else --4
					"0010010" when m="0101" else --5
					"0000010" when m="0110" else --6
					"1111000" when m="0111" else --7
					"0000000" when m="1000" else --8
					"0010000" when m="1001" else --9
					"0001000" when m="1010" else --A
					"0000011" when m="1011" else --B
					"1000110" when m="1100" else --C
					"0100001" when m="1101" else --D
					"0000110" when m="1110" else --E
					"0001110" when m="1111" else --F
					"1000000"; --0
	s_a <= unsigned(a);
	s_b <= unsigned(b);
	
	s_m <= s_a * s_b;

	with op select
		s_r <= 	(s_a + s_b) when "000",
					(s_a - s_b) when "001",
					s_m(N-1 downto 0) when "010",
					(s_a / s_b) when "011",
					s_a rem s_b when "100",
					s_a and s_b when "101",
					s_a or s_b when "110",
					s_a xor s_b when "111";
					
	r <= std_logic_vector(s_r);
	m <= std_logic_vector(s_m((2*N)-1 downto 4)) when (op = "010") else
														(others => '0');


end Behavioral;