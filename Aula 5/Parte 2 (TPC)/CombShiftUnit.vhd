library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity CombShiftUnit is

	port(	dataIn	:	in std_logic_vector(7 downto 0);
			rotate	:	in std_logic;
			dirLeft	:	in std_logic;
			shArith	:	in std_logic;
			shAmount :	in std_logic_vector(2 downto 0);
			dataOut	:	out std_logic_vector(7 downto 0));

end CombShiftUnit;

architecture Behavioral of CombShiftUnit is

	signal s_shAmount : natural;
	signal s_dataOut	:	std_logic_vector(7 downto 0);

begin

	s_shAmount <= to_integer(unsigned(shAmount));

	process(rotate, dirLeft, shAmount, shArith)
	begin
		if(rotate='1') then
			s_dataOut <= dataIn;
			if(dirLeft='1') then
				dataOut <= s_dataOut(6 downto 0) & s_dataOut(7);
			else
				dataOut <= s_dataOut(0) & s_dataOut(7 downto 1);
			end if;
		elsif(shArith='1') then
			if(dirLeft='1') then
				dataOut <= std_logic_vector(shift_left(signed(dataIn), s_shAmount));
			else
				dataOut <= std_logic_vector(shift_right(signed(dataIn), s_shAmount));
			end if;
		else
			if(dirLeft='1') then
				dataOut <= std_logic_vector(shift_left(unsigned(dataIn), s_shAmount));
			else
				dataOut <= std_logic_vector(shift_right(unsigned(dataIn), s_shAmount));
			end if;
		end if;
	end process;

end Behavioral;