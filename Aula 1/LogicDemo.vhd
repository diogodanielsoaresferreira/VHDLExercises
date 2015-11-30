library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity LogicDemo is
	port(LEDR : out std_logic_vector(5 downto 0);
		  SW	 : in  std_logic_vector(1 downto 0));
end LogicDemo;

architecture Structural of LogicDemo is
begin
		system_core : entity work.LogicUnit(Behavioral)
					port map(input0 => SW(0),
								input1 => SW(1),
								invOut => LEDR(0),
								andOut => LEDR(1),
								orOut => LEDR(2),
								xorOut => LEDR(3),
								nandOut => LEDR(4),
								norOut => LEDR(5));

end Structural;