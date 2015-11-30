library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity AluDemoex5 is

port(	SW	:	in std_logic_vector(17 downto 0);
		LEDR:	out std_logic_vector(7 downto 0);
		HEX7	:	out std_logic_vector(6 downto 0);
		HEX6	:	out std_logic_vector(6 downto 0);
		HEX5	:	out std_logic_vector(6 downto 0);
		HEX4	:	out std_logic_vector(6 downto 0));
end AluDemoex5;

architecture Structural of AluDemoex5 is

signal s, m, i1, i2, i3, i4	:	std_logic_vector(3 downto 0);

begin

		Alu4: entity work.AluN(Behavioral)
						generic map(N => 4)
						port map(a => SW(7 downto 4),
									b => SW(3 downto 0),
									op => SW(17 downto 15),
									m => LEDR(7 downto 4),
									r2 => s,
									r => LEDR(3 downto 0),
									m2 => m);
									
		Bin2BCDm: entity work.Bin2BCD(Behavioral)
						port map(inBin  => m,
									outBCD =>i1,
									outBCD2=>i2);
		Bin2BCDr: entity work.Bin2BCD(Behavioral)
						port map(inBin  => s,
									outBCD => i3,
									outBCD2=> i4);

	Bin7SecDec: entity work.Bin7SecDec(Behavioral)
						port map(binInput => i1,
									decOut_n => HEX7(6 downto 0));
	Bin7SecDec2: entity work.Bin7SecDec(Behavioral)
						port map(binInput => i2,
									decOut_n => HEX6(6 downto 0));
	Bin7SecDec3: entity work.Bin7SecDec(Behavioral)
						port map(binInput => i3,
									decOut_n => HEX5(6 downto 0));
	Bin7SecDec4: entity work.Bin7SecDec(Behavioral)
						port map(binInput => i4,
									decOut_n => HEX4(6 downto 0));
	
end Structural;