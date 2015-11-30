library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity SeqShiftUnitTb is
end SeqShiftUnitTb;

architecture Stimulus of SeqShiftUnitTb is

	signal s_clk, s_siLeft, s_siRight, s_loadEn, s_rotate, s_dirLeft, s_shArith	:	std_logic;
	signal s_dataIn, s_dataOut	:	std_logic_vector(7 downto 0);

begin

	s_dataIn <= "10101010";

	seqshiftunit_core: entity work.SeqShiftUnit(RTL)
								port map(clk 		=> s_clk,
											siLeft	=> s_siLeft,
											siRight	=> s_siRight,
											loadEn 	=> s_loadEn,
											rotate 	=> s_rotate,
											dirLeft 	=> s_dirLeft,
											shArith 	=> s_shArith,
											dataIn	=> s_dataIn,
											dataOut	=> s_dataOut);

	clk_proc: process
	begin
	
	s_clk <= '0';
	wait for 50 ns;
	s_clk <= '1';
	wait for 50 ns;
	
	end process;

	stim_proc: process
	begin
		
		s_siLeft <= '1';
		s_siRight <= '1';
		s_loadEn <= '1';
		s_rotate <= '0';
		s_dirLeft <= '0';
		s_shArith <= '0';
		
		wait for 100 ns;
		s_loadEn <= '0';
		s_rotate <= '1';
		wait for 100 ns;
		
		s_dirLeft <= '1';
		wait for 100 ns;
		
		s_rotate <= '0';
		s_shArith <= '1';
		s_dirLeft <= '1';
		wait for 100 ns;
		
		s_dirLeft <= '0';
		wait for 100 ns;
		
		s_shArith <= '0';
		wait for 100 ns;
		
		s_dirLeft <= '1';
		wait for 100 ns;
	end process;
	
end Stimulus;