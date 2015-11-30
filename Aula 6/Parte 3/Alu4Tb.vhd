library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Alu4Tb is
end Alu4Tb;

architecture Stimulus of Alu4Tb is

	signal s_a, s_b, s_r, s_m	:	std_logic_vector(3 downto 0);
	signal s_op						:	std_logic_vector(2 downto 0);
	--signal count					:	unsigned(2 downto 0);

begin

	alu4_core:	entity work.Alu4(Behavioral)
						port map(a => s_a,
									b => s_b,
									r => s_r,
									m => s_m,
									op=> s_op);
	s_a <= "0011";
	s_b <= "0011";

	stim_proc: process
	begin
		s_op <= "000";
		wait for 50 ns;
		
		s_op <= "001";
		wait for 50 ns;
		
		s_op <= "010";
		wait for 50 ns;
		
		s_op <= "011";
		wait for 50 ns;
		
		s_op <= "100";
		wait for 50 ns;
		
		s_op <= "101";
		wait for 50 ns;
		
		s_op <= "110";
		wait for 50 ns;
		
		s_op <= "111";
		wait for 50 ns;
		
		
	end process;

end Stimulus;