-- Projeto MasterMind
-- Diogo Daniel Soares Ferreira e Eduardo Reis Silva


library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity RandomNumber is

	port(	clock			:	in std_logic;
			stop_signal	:	in std_logic;
			reset			:	in std_logic;
			count			:	out std_logic;
			resetOut		:	out std_logic);

end RandomNumber;

-- Máquina de estados onde no estado inicial, counter = 1. Caso ocorra stop_signal,
-- count = 0. count só volta a 1 após reset = 1, e nesse caso resetOut = 1.

architecture Behavioral of RandomNumber is

	type Tstate is (S0, S1, S2);
	signal pState, nState	:	Tstate;

begin

	clk_proc:process(clock)
	begin
		if(rising_edge(clock)) then
			pState <= nState;
		end if;
		
	end process;
	
	comb_proc:process(pState, stop_signal, reset)
	begin
		resetOut <= '0';
		count <= '0';
		case pState is
			when S0 =>
				count <= '1';
				if(stop_signal = '1') then
					nState <= S1;
				elsif(reset = '1') then
					nState <= S2;
				else
					nState <= S0;
				end if;
				
			when S1 =>
			resetOut <= '0';
				if(reset = '1') then
					nState <= S2;
				else
					nState <= S1;
				end if;
			when S2 =>
				resetOut <= '1';
				if(reset = '0') then
					nState <= S0;
				else
					nState <= S2;
				end if;
			when others =>
				nState 	<= S2;
				resetOut <= '0';
		end case;
	end process;

end Behavioral;