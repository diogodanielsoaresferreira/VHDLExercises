-- Projeto MasterMind
-- Diogo Daniel Soares Ferreira e Eduardo Reis Silva

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Compare2 is

	port(	randomnum0	:	in std_logic_vector(3 downto 0);
			usernum0		:	in std_logic_vector(3 downto 0);
			randomnum1	:	in std_logic_vector(3 downto 0);
			usernum1		:	in std_logic_vector(3 downto 0);
			randomnum2	:	in std_logic_vector(3 downto 0);
			usernum2		:	in std_logic_vector(3 downto 0);
			randomnum3	:	in std_logic_vector(3 downto 0);
			usernum3		:	in std_logic_vector(3 downto 0);
			cert			:	out std_logic_vector(3 downto 0);
			erra			:	out std_logic_vector(3 downto 0);
			clock			:	in std_logic;
			reset			:	in std_logic);

end Compare2;

-- Entidade que compara os dois números recebidos e calcula os digitos nas posiçoes certas
-- e os digitos certos nas posições erradas.

architecture Behavioral of Compare2 is

	type state is (S0, S1, S2);
	signal CState, NState: state;
	signal s_cert, s_erra: std_logic_vector(3 downto 0);

begin

	process(clock)
	
	variable comparar_user 	: unsigned(3 downto 0):= "0000";
	variable comparar_rand 	: unsigned(3 downto 0):= "0000";
	variable err      		: unsigned(3 downto 0) := "0000";
	variable cer     			: unsigned(3 downto 0) := "0000";
	
	begin
		if(rising_edge(clock))then
			case CState is
				when S0 =>
					err := "0000";
					cer := "0000";
					comparar_user := "0000";
					comparar_rand := "0000";
					if (reset = '1') then
						NState <= S0;
					else
						NState <= S1;
					end if;
					
				when S1 =>
					if (randomnum0 = usernum0) then
						cer := cer +1;
						comparar_user(0) := '1';
						comparar_rand(0) := '1';
					end if;
						
					if (randomnum1 = usernum1) then
						cer := cer +1;
						comparar_user(1) := '1';
						comparar_rand(1) := '1';
					end if;
							
					if (randomnum2 = usernum2) then
						cer := cer +1;
						comparar_user(2) := '1';
						comparar_rand(2) := '1';
					end if;
							
					if (randomnum3 = usernum3) then
						cer := cer +1;
						comparar_user(3) := '1';
						comparar_rand(3) := '1';
					end if;
							
							
					if(cer = 4)then
						NState <= S2;
					else 
						if (comparar_rand(0) = '0' ) then
							if(randomnum0 = usernum1 and comparar_user(1) = '0') then
								err := err + 1;
								comparar_user(1) := '1';
							elsif(randomnum0 = usernum2 and comparar_user(2) = '0') then
								err := err + 1;
								comparar_user(2) := '1';
							elsif(randomnum0 = usernum3 and comparar_user(3) = '0') then
								err := err + 1;
								comparar_user(3) := '1';
							end if;
						end if;
							
						if (comparar_rand(1) = '0') then
							if(randomnum1 = usernum0 and comparar_user(0) = '0') then
								err := err + 1;
								comparar_user(0) := '1';
							elsif(randomnum1 = usernum2 and comparar_user(2) = '0') then
								err := err + 1;
								comparar_user(2) := '1';
							elsif(randomnum1 = usernum3 and comparar_user(3) = '0') then
								err := err + 1;
								comparar_user(3) := '1';
							end if;
						end if;
								
						if (comparar_rand(2) = '0') then
							if(randomnum2 = usernum0 and comparar_user(0) = '0') then
								err := err + 1;
								comparar_user(0) := '1';
							elsif(randomnum2 = usernum1 and comparar_user(1) = '0') then
								err := err + 1;
								comparar_user(1) := '1';
							elsif(randomnum2 = usernum3 and comparar_user(3) = '0') then
								err := err + 1;
								comparar_user(3) := '1';
							end if;
						end if;
								
						if (comparar_rand(3) = '0') then
							if(randomnum3 = usernum0 and comparar_user(0) = '0') then
								err := err + 1;
								comparar_user(0) := '1';
							elsif(randomnum3 = usernum1 and comparar_user(1) = '0') then
								err := err + 1;
								comparar_user(1) := '1';
							elsif(randomnum3 = usernum2 and comparar_user(2) = '0') then
								err := err + 1;
								comparar_user(2) := '1';
							end if;
						end if;
						NState <= S2;
								
					end if;
				when S2 =>
					if(reset = '1') then
						NState <= S0;
					end if;
				when others =>	
					NState <= S0;
			end case;
		end if;
	s_cert <= std_logic_vector(cer);		
	s_erra <= std_logic_vector(err); 
	end process;
	
	process(NState)
	begin
		CState <= NState;
	end process;
	
	cert <= std_logic_vector(s_cert);		
	erra <= std_logic_vector(s_erra);

end Behavioral;