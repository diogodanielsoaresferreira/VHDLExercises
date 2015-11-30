library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity MultiAddSub is

port(	op0, op1	:	in std_logic_vector(3 downto 0);
		op2, op3	:	in std_logic_vector(4 downto 0);
		cout0, cout1:out std_logic;
		res0		:	out std_logic_vector(3 downto 0);
		res1		:	out std_logic_vector(4 downto 0);
		sub		:	in std_logic);

end MultiAddSub;

architecture Structural of MultiAddSub is
begin

	AddSub4: entity work.AddSubN(Behavioral)
					generic map(n => 4)
					port map(op0 => op0,
								op1 => op1,
								sub => sub,
								cout=> cout0,
								res => res0);
	AddSub5: entity work.AddSubN(Behavioral)
					generic map(n => 5)
					port map(op0 => op2,
								op1 => op3,
								cout => cout1,
								res => res1,
								sub => sub);
					
end Structural;