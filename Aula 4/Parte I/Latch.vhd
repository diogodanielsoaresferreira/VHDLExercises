library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Latch is

	port(	clk	:	in	std_logic;
			d		:	in std_logic;
			q		:	out std_logic);

end Latch;

architecture Behavioral of Latch is
begin
	process (clk)
	begin
		if(clk='1') then
			q <= d;
		end if;
	end process;

end Behavioral;