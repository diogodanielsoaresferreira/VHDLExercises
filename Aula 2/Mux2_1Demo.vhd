Library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Mux2_1Demo is
	port(	SW		:	in STD_LOGIC_VECTOR(3 downto 0);
			KEY	:	in STD_LOGIC_VECTOR(3 downto 2);
			LEDR	:	out STD_LOGIC_VECTOR(0 downto 0));
end Mux2_1Demo;

Architecture Shell of Mux2_1Demo is
begin

	system_core:	entity work.Mux2_1(BehavProcess)
							port map(	dataln(0) => SW(0),
											dataln(1) => SW(1),
											dataln(2) => SW(2),
											dataln(3) => SW(3),
											sel(1)	 => KEY(3),
											sel(0)	 => KEY(2),
											dataOut	 => LEDR(0));
							

end Shell;