library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity NOR2Gate is
	port(inPort0 : in  std_logic;
		  inPort1 : in  std_logic;
		  outPort : out std_logic);
end NOR2Gate;

architecture Structural of NOR2Gate is

	signal s_orOut : std_logic;

begin
	or_gate : entity work.OR2Gate(Behavioral)
				port map(inPort0 => inPort0,
							inPort1 => inPort1,
							outPort => s_orOut);
	not_gate : entity work.NotGate(Behavioral)
				port map(inPort  => s_orOut,
							outPort => outPort);
							
							
end Structural;