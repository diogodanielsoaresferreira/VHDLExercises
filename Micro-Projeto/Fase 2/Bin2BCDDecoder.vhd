library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Bin2BCDDecoder is
	port(	inBin	: in std_logic_vector (6 downto 0);
			outBCD: out std_logic_vector(3 downto 0);
			outBCD2:out std_logic_vector(3 downto 0));

end Bin2BCDDecoder;

architecture Behavioral of Bin2BCDDecoder is

	signal n,l,m 	:	natural;

begin

	n <= to_integer(unsigned(inBin));

	
	outBCD2 <=	"0000" when n<10 else
					"0001" when n<20 else
					"0010" when n<30 else
					"0011" when n<40 else
					"0100" when n<50 else
					"0101" when n<60 else
					"0110" when n<70 else
					"0111" when n<80 else
					"1000" when n<90 else
					"1001";
					
	l 			<=	0 when n<10 else
					10 when n<20 else
					20 when n<30 else
					30 when n<40 else
					40 when n<50 else
					50 when n<60 else
					60 when n<70 else
					70 when n<80 else
					80 when n<90 else
					90;
	m <= n-l;
	
	outBCD <=	"0000" when m=0 else
					"0001" when m=1 else
					"0010" when m=2 else
					"0011" when m=3 else
					"0100" when m=4 else
					"0101" when m=5 else
					"0110" when m=6 else
					"0111" when m=7 else
					"1000" when m=8 else
					"1001";

end Behavioral;