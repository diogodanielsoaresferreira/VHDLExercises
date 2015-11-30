library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity AluDemo is

port(	SW	:	in std_logic_vector(17 downto 0);
		LEDR:	out std_logic_vector(7 downto 0);
		HEX7	:	out std_logic_vector(6 downto 0);
		HEX6	:	out std_logic_vector(6 downto 0));
end AluDemo;

architecture Structural of AluDemo is

signal s	:	std_logic_vector(3 downto 0);

begin

	--Alu4: entity work.AluN(Behavioral)
	--					generic map(N => 4)
		--				port map(a => SW(7 downto 4),
			--						b => SW(3 downto 0),
				--					op => SW(17 downto 15),
					--				m => LEDR(7 downto 4),
						--			r2 => s,
							--		r => LEDR(3 downto 0));

	--Bin7SecDec: entity work.Bin7SecDec(Behavioral)
		--				port map(binInput => s,
			--						decOut_n => HEX7(6 downto 0));
	aluDuaplay: entity work.AluDisplay(Behavioral)
								generic map(N => 4)
								port map(a => SW(7 downto 4),
											b => SW(3 downto 0),
											op => SW(17 downto 15),
											r => LEDR(3 downto 0),
											m => LEDR(7 downto 4),
											decOut_n => HEX7(6 downto 0),
											m2 => HEX6 (6 downto 0));
	
end Structural;