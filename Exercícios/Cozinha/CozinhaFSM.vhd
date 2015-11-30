library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity CozinhaFSM is

	port(	BS	:	in std_logic;
			BC	:	in std_logic;
			C	:	in std_logic;
			S	:	in std_logic;
			U	:	out std_logic;
			D	:	out std_logic;
			clk:	in std_logic);

end CozinhaFSM;

architecture Behavioral of CozinhaFSM is

	type Tstate is (S0, S1, S2);
	
	signal pState, nState:	Tstate;
	signal s_u, s_d		:	std_logic;

begin

	U <= s_u;
	D <= s_d;
	
	clk_process:process(clk)
	begin
		if(rising_edge(clk)) then
			nState <= pState;
		end if;
	end process;
	
	com_proc: process(pState, C, S, BC, BS)
	begin
	
	case pState is 
		when S0 =>
			s_u<='1';
			s_d<='0';
			if(BS='1' and BS='1' and s_U/='1' and s_D/='1') then
				nState <= S1;
			elsif(C='1' or S='1') then
				nState <= S2;
			else
				nState <= S0;
			end if;
		when S1 =>
			s_u<='0';
			s_d<='1';
			if(BC='1' and C='1' and s_U/='1' and s_D/='1') then
				nState <= S0;
			elsif(C='1' or S='1') then
				nState <= S2;
			else
				nState <= S1;
			end if;
			
		when S2 =>
			s_u<='0';
			s_d<='0';
			if(BC='1' and C='1' and s_U/='1' and s_D/='1') then
				nState <= S0;
			elsif(BS='1' and BS='1' and s_U/='1' and s_D/='1') then
				nState <= S1;
			else
				nState <= S2;
			end if;
		when others =>
			s_u<='0';
			s_d<='0';
			nState <= S2;
			
	end case;
	
	end process;
end Behavioral;