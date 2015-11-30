library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity BasicWatch is
	port(SW			: in  std_logic_vector(0 downto 0);
		  CLOCK_50	: in  std_logic;
		  KEY			: in  std_logic_vector(2 downto 0);
		  HEX2		: out std_logic_vector(6 downto 0);
		  HEX3		: out std_logic_vector(6 downto 0);
		  HEX4		: out std_logic_vector(6 downto 0);
		  HEX5		: out std_logic_vector(6 downto 0);
		  HEX6		: out std_logic_vector(6 downto 0);
		  HEX7		: out std_logic_vector(6 downto 0);
		  LEDG		: out std_logic_vector(8 downto 7));
end BasicWatch;

architecture Shell of BasicWatch is
begin
	system_core : entity work.BasicWatchCore(RTL)
							port map(reset		=> SW(0),
										clk		=> CLOCK_50,
										mode		=> not KEY(1),
										hSet		=> not KEY(2),
										mSet		=> not KEY(0),
										hTens		=> HEX7,
										hUnits	=> HEX6,
										mTens		=> HEX5,
										mUnits	=> HEX4,
										sTens		=> HEX3,
										sUnits	=> HEX2,
										sTick		=> LEDG(8),
										ledOut   => LEDG(7));
end Shell;
