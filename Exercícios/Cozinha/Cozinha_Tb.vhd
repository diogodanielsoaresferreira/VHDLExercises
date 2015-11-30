library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Cozinha_Tb is
end Cozinha_Tb;

architecture Stimulus of CozinhaFSM is

	signal s_bs, s_bc, s_c, s_s, s_clk, s_u, s_d	:	std_logic;

begin
	uut:	entity CozinhaFSM(Behavioral)
				port map(BS =>s_bs,
							BC =>s_bc,
							C  =>s_c,
							S	=>s_s,
							clk=>s_clk,
							U	=>s_u,
							D	=>s_d);
							
	clk_proc:process
	begin
		s_clk <= '1';
		wait for 20 ns;
		s_clk <= '0';
	wait for 20 ns;
	
	end process;
	
	stim_proc:process
	begin
		s_bs <= '0';
		s_bc <= '0';
		s_c  <= '0';
		s_S	<=	'0';
		wait for 50 ns;
		s_bs <= '1';
		s_s <= '1';
		wait for 50 ns;
		s_bs <= '0';
		s_s <= '0';
		wait for 50 ns;
		s_bc <= '1';
		s_c  <= '1';
		wait for 50 ns;
	end process;
end Stimulus;