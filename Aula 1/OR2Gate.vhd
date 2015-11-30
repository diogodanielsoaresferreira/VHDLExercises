library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity OR2Gate is
	port(inPort0 : in std_logic;
		  inPort1 : in std_logic;
		  outPort : out std_logic);
end OR2Gate;

architecture Behavioral of OR2Gate is
begin

	outPort <= inPort0 or inPort1;
	
end Behavioral;