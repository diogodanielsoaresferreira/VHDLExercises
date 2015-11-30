library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity lampadamod is
	port( input0 : in std_logic;
		   input1 : in std_logic;
			input2 : in std_logic;
			outp	 : out std_logic);
end lampadamod;

architecture Behavioral of lampadamod is
begin

	outp <= input0 xor input1 xor input2;

end Behavioral;