-- Projeto MasterMind
-- Diogo Daniel Soares Ferreira e Eduardo Reis Silva


library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity checkEnd is

	port(	try0		:	in std_logic_vector(3 downto 0);
			try1		:	in std_logic_vector(3 downto 0);
			cert		:	in std_logic_vector(3 downto 0);
			erra		:	in std_logic_vector(3 downto 0);
			clock		:	in std_logic;
			reset		:	in std_logic;
			isBlink	:	out std_logic;
			isend		:	out std_logic;
			p			:	out std_logic_vector(3 downto 0);
			n			:	out std_logic_vector(3 downto 0);
			t1			:	out std_logic_vector(3 downto 0);
			t0			:	out std_logic_vector(3 downto 0);
			b_load	:	out std_logic);

end checkEnd;

-- Entidade que possui máquina de estados que faz atribuições essenciais para sinalização de saídas.

architecture Behavioral of checkEnd is
	type Tstate is (S0, S1, S2, S3);
	signal pState, nState			:	Tstate := S0;
	signal s_p, s_n					:	std_logic_vector(3 downto 0) := "0000";
	signal final_try1, final_try0	:std_logic_vector(3 downto 0);
	signal load							:	std_logic;

begin

	clk_proc:process(clock, reset)
	begin
		if(reset = '1') then
			pState <= S0;
			final_try0 <= (others => '0');
			final_try1 <= (others => '0');
		elsif(rising_edge(clock)) then
			if(load = '1') then
				final_try0 <= try0;
				final_try1 <= try1;
			end if;
		 pState <= nState;
		end if;
	end process;
	
	compare_proc:process(pState, cert, erra, try0, try1)
	begin
		b_load <= '1';
		load <= '1';
		case pState is
		when S0 =>
			b_load <= '1';
			isblink <= '0';
			t1 <= "1111";
			t0 <= "1111";
			isend <= '0';
			nState <= S3;
		when S1 =>
			isblink <= '1';
			t1 <= final_try1;
			t0 <= final_try0;
			s_p <= "0100";
			s_n <= "0000";
			load <= '0';
			isend <= '0';
			b_load <= '0';
			nState <= S1;
		when S2 =>
			s_p <= "0000";
			s_n <= "0000";
			isend <= '1';
			isBlink <= '0';
			t1 <= "1001";
			t0 <= "1001";
			nState <= S2;
		when S3 =>
			s_p <= cert;
			s_n <= erra;
			t1  <= "1111";
			t0  <= "1111";
			isend <= '0';
			isblink <= '0';
			if(s_p = "0100") then
				t1 <= try1;
				t0 <= try0;
				isblink <= '1';
				nState <= S1;
				b_load <= '0';
				load <= '1';
			elsif(try1 = "1001" and try0 = "1001") then
				nState <= S2;
			else
				nState <= S3;
			end if;
		when others =>
			nState <= S0;
		end case;
	end process;

	p <= s_p;
	n <= s_n;
	
end Behavioral;