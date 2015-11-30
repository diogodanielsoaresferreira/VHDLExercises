library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity NotGate is
	port(inPort : in std_logic;
		  outPort : out std_logic);
end NotGate;

architecture Behavioral of NotGate is
begin

	outPort <= not inPort;
	
end Behavioral;