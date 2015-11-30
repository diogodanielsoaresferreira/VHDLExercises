library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity BasicWatchCore is
	port(reset	: in  std_logic;
		  clk		: in  std_logic;
		  mode	: in  std_logic;
		  hSet	: in  std_logic;
		  mSet	: in  std_logic;
		  hTens	: out std_logic_vector(6 downto 0);
		  hUnits	: out std_logic_vector(6 downto 0);
		  mTens	: out std_logic_vector(6 downto 0);
		  mUnits	: out std_logic_vector(6 downto 0);
		  sTens	: out std_logic_vector(6 downto 0);
		  sUnits	: out std_logic_vector(6 downto 0);
		  sTick	: out std_logic;
		  ledOut	: out std_logic);
end BasicWatchCore;

architecture RTL of BasicWatchCore is

	signal s_clk1Hz, s_clkFast			: std_logic;
	signal s_clk							: std_logic;

	signal s_sReset, s_finreset, treset, treset2	: std_logic;

	signal s_sUnitsBin, s_sTensBin	: std_logic_vector(3 downto 0);
	signal s_mUnitsBin, s_mTensBin	: std_logic_vector(3 downto 0);
	signal s_hUnitsBin, s_hTensBin	: std_logic_vector(3 downto 0);

	signal s_sUnitsTerm, s_sTensTerm	: std_logic;
	signal s_mUnitsTerm, s_mTensTerm	: std_logic;
	signal s_hUnitsTerm					: std_logic;

	signal s_sUnitsEnb, s_sTensEnb	: std_logic;
	signal s_mUnitsEnb, s_mTensEnb	: std_logic;
	signal s_hUnitsEnb, s_hTensEnb	: std_logic;

begin
	clk_div_1hz : entity work.ClkDividerN(RTL)
							generic map(divFactor	=> 50000000)
							port map(clkIn				=> clk,
									 clkOut				=> s_clk1Hz);

	clk_div_fast : entity work.ClkDividerN(RTL)
							generic map(divFactor	=> 12500000)
							port map(clkIn				=> clk,
									 clkOut				=> s_clkFast);

	s_clk	<= s_clk1Hz when (mode = '0') else
				s_clkFast;

	sTick	<= s_clk;

	s_sReset		<= reset or mode;
	s_sUnitsEnb	<= '1';
	
	treset <= s_finreset or s_sReset;

	s_units_cnt : entity work.Counter4Bits(RTL)
							generic map(MAX	=> 9)
							port map(reset		=> treset,
									 clk			=> s_clk,
									 enable		=> s_sUnitsEnb,
									 valOut		=> s_sUnitsBin,
									 termCnt		=> s_sUnitsTerm);

	s_sTensEnb <= s_sUnitsTerm or reset;

	s_tens_cnt : entity work.Counter4Bits(RTL)
							generic map(MAX	=> 5)
							port map(reset		=> treset,
									 clk			=> s_clk,
									 enable		=> s_sTensEnb,
									 valOut		=> s_sTensBin,
									 termCnt		=> s_sTensTerm);

	s_mUnitsEnb <= ((s_sTensTerm and s_sUnitsTerm) and not mode) or
						reset or (mode and mSet);
	
	treset2 <= s_finreset or reset;

	m_units_cnt : entity work.Counter4Bits(RTL)
							generic map(MAX	=> 9)
							port map(reset		=> treset2,
									 clk			=> s_clk,
									 enable		=> s_mUnitsEnb,
									 valOut		=> s_mUnitsBin,
									 termCnt		=> s_mUnitsTerm);

	s_mTensEnb <= (s_mUnitsTerm and s_mUnitsEnb) or reset;

	m_tens_cnt : entity work.Counter4Bits(RTL)
							generic map(MAX	=> 5)
							port map(reset		=> treset2,
									 clk			=> s_clk,
									 enable		=> s_mTensEnb,
									 valOut		=> s_mTensBin,
									 termCnt		=> s_mTensTerm);

	s_hUnitsEnb <= ((s_mTensTerm and s_mTensEnb) and not mode) or
						reset or (mode and hSet);

	h_units_cnt : entity work.Counter4Bits(RTL)
							generic map(MAX	=> 9)
							port map(reset		=> treset2,
									 clk			=> s_clk,
									 enable		=> s_hUnitsEnb,
									 valOut		=> s_hUnitsBin,
									 termCnt		=> s_hUnitsTerm);

	s_hTensEnb <= (s_hUnitsTerm and s_hUnitsEnb) or reset;

	h_tens_cnt : entity work.Counter4Bits(RTL)
							generic map(MAX	=> 2)
							port map(reset		=> treset2,
									 clk			=> s_clk,
									 enable		=> s_hTensEnb,
									 valOut		=> s_hTensBin,
									 termCnt		=> open);

	process(s_hTensBin,s_hUnitsBin, s_mTensBin, s_mUnitsBin, s_sTensBin, s_sUnitsBin)
	begin
	
		if(s_hTensBin="0010" and s_hUnitsBin="0011" and s_mTensBin="0101" and s_mUnitsBin="1001" and s_sTensBin="0101" and s_sUnitsBin="1001") then
			s_finreset <= '1';
			ledOut <= '1';
		else
			s_finreset <= '0';
			ledOut <= '0';
		end if;
	
	end process;
									 
	s_units_decod : entity work.Bin7SegDecoder(RTL)
							port map(enable	=> '1',
									   binInput	=> s_sUnitsBin,
									   decOut_n	=> sUnits);

	s_tens_decod : entity work.Bin7SegDecoder(RTL)
							port map(enable	=> '1',
									   binInput	=> s_sTensBin,
									   decOut_n	=> sTens);

	m_units_decod : entity work.Bin7SegDecoder(RTL)
							port map(enable	=> '1',
									   binInput	=> s_mUnitsBin,
									   decOut_n	=> mUnits);

	m_tens_decod : entity work.Bin7SegDecoder(RTL)
							port map(enable	=> '1',
									   binInput	=> s_mTensBin,
									   decOut_n	=> mTens);

	h_units_decod : entity work.Bin7SegDecoder(RTL)
							port map(enable	=> '1',
									   binInput	=> s_hUnitsBin,
									   decOut_n	=> hUnits);

	h_tens_decod : entity work.Bin7SegDecoderH(RTL)
							port map(enable	=> '1',
									   binInput	=> s_hTensBin,
									   decOut_n	=> hTens);
end RTL;
