library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity EqCmp4 is
	port(input0 : in std_logic_vector(3 downto 0);
		  input1 : in std_logic_vector(3 downto 0);
		  cmpOut : out std_logic);
end EqCmp4;

architecture Behavioral of EqCmp4 is
begin

		cmpOut <= '1' when (input0 = input1) else
					 '0';

end Behavioral;