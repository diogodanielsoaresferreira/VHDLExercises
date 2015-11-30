-- Projeto MasterMind
-- Diogo Daniel Soares Ferreira e Eduardo Reis Silva

library IEEE;
use IEEE.STD_LOGIC_1164.all;


entity MasterMind_Str is

	port(	Key0	:	in std_logic;
			Key1	:	in std_logic;
			Key2	:	in std_logic;
			Key3	:	in std_logic;
			SW0	:	in std_logic;
			clock	:	in std_logic;
			Hex7	:	out std_logic_vector(6 downto 0);
			Hex6	:	out std_logic_vector(6 downto 0);
			Hex5	:	out std_logic_vector(6 downto 0);
			Hex4	:	out std_logic_vector(6 downto 0);
			Hex3	:	out std_logic_vector(6 downto 0);
			Hex2	:	out std_logic_vector(6 downto 0);
			Hex1	:	out std_logic_vector(6 downto 0);
			Hex0	:	out std_logic_vector(6 downto 0));
			
end MasterMind_Str;

architecture Structural of MasterMind_Str is

	signal clk_2hz, clk_100hz										:	std_logic;
	signal confirm, set, dim, inc									:	std_logic;
	signal s_count, s_resetOut										:	std_logic;
	signal s_ran0, s_ran1, s_ran2, s_ran3						:	std_logic_vector(3 downto 0);
	signal sel															:	std_logic_vector(1 downto 0);
	signal s_out0, s_out1, s_out2, s_out3						:	std_logic;
	signal s_up0, s_up1, s_up2, s_up3							:	std_logic;
	signal s_down0, s_down1, s_down2, s_down3					:	std_logic;
	signal c0, c1, c2, c3											:	std_logic_vector(3 downto 0);
	signal reg_Out0, reg_Out1, reg_Out2, reg_Out3			:	std_logic_vector(3 downto 0);
	signal tent0, tent1												:	std_logic_vector(3 downto 0);
	signal s_com0, s_com1, s_com2, s_com3						:	std_logic;
	signal s_blink														:	std_logic;
	signal s_t0, s_t1, s_p, s_n									:	std_logic_vector(3 downto 0);
	signal s_c0, s_c1, s_c2, s_c3									:	std_logic_vector(3 downto 0);
	signal s_isend														:	std_logic;
	signal s_isblink0, s_isblink1, s_isblink2, s_isblink3	:	std_logic;
	signal s_cert, s_erra											:	std_logic_vector(3 downto 0);
	signal s_state														:	std_logic_vector(1 downto 0);
	signal s_load														:	std_logic;

begin
	freq_div1:	entity work.FreqDivider(Behavioral)
						generic map(K => 25000000)
						port map(clkIn =>clock,
									clkOut=> clk_2hz);
									
	freq_div2:	entity work.FreqDivider(Behavioral)
						generic map(K => 5000000)
						port map(clkIn => clock,
									clkOut=> clk_100hz);
									
	deb_0:		entity work.Debouncer(Behavioral)
						generic map(N		=>	5)
						port map(clk		=> clk_100hz,
									dirty_In	=> Key0,
									cleanOut	=> set);

	deb_1:		entity work.Debouncer(Behavioral)
						generic map(N		=>	5)
						port map(clk		=> clk_100hz,
									dirty_In	=> Key1,
									cleanOut	=> inc);
									

	deb_2:		entity work.Debouncer(Behavioral)
						generic map(N		=>	5)
						port map(clk		=> clk_100hz,
									dirty_In	=> Key2,
									cleanOut	=> dim);
									

	deb_3:		entity work.Debouncer(Behavioral)
						generic map(N		=>	5)
						port map(clk		=> clk_100hz,
									dirty_In	=> Key3,
									cleanOut	=> confirm);
									
	Rand_Num:	entity work.RandomNumber(Behavioral)
						port map(clock 		=> clock,
									stop_signal => Key3,
									reset 		=> SW0,
									count 		=> s_count,
									resetOut 	=> s_resetOut);
									
	Counter9999:	entity work.Counter9999(Behavioral)
							port map(clk 	=> clock,
									enable 	=> s_count,
									reset 	=> s_resetOut,
									count0 	=> s_ran0,
									count1 	=> s_ran1,
									count2	=>	s_ran2,
									count3	=> s_ran3);
	
	Counter4:		entity work.Counter4(Behavioral)
							port map(clk 	=> clk_100hz,
										enable=> set,
										reset => SW0,
										count => sel);
										
	Demultiplexer:	entity work.Demultiplexer(Behavioral)
							port map(S => sel,
										out1 => s_out0,
										out2 => s_out1,
										out3 => s_out2,
										out4 => s_out3);
	s_up0 <= s_out0 and inc;
	s_down0 <= s_out0 and dim;
	s_up1 <= s_out1 and inc;
	s_down1 <= s_out1 and dim;
	s_up2 <= s_out2 and inc;
	s_down2 <= s_out2 and dim;
	s_up3 <= s_out3 and inc;
	s_down3 <= s_out3 and dim;
	
	Counter9_0:		entity work.Counter9(Behavioral)
							port map(clk 	=> clk_100hz,
										up		=> s_up0,
										down	=> s_down0,
										reset => SW0,
										count => c0);
										
	Counter9_1:		entity work.Counter9(Behavioral)
							port map(clk 	=> clk_100hz,
										up		=> s_up1,
										down	=> s_down1,
										reset => SW0,
										count => c1);
										
	Counter9_2:		entity work.Counter9(Behavioral)
							port map(clk 	=> clk_100hz,
										up		=> s_up2,
										down	=> s_down2,
										reset => SW0,
										count => c2);
										
	Counter9_3:		entity work.Counter9(Behavioral)
							port map(clk 	=> clk_100hz,
										up		=> s_up3,
										down	=> s_down3,
										reset => SW0,
										count => c3);
	
	register_c:		entity work.register4(Behavioral)
							port map(dataIn0 => c0,
										dataIn1 => c1,
										dataIn2 => c2,
										dataIn3 => c3,
										clk 	  => confirm,
										reset   => SW0,
										dataOut0 => reg_Out0,
										dataOut1 => reg_Out1,
										dataOut2 => reg_Out2,
										dataOut3 => reg_Out3);
										
	counter99:		entity work.Counter99(Behavioral)
							port map(clk 		=> clk_100hz,
										enable	=> confirm,
										reset 	=> SW0,
										count0	=> tent0,
										count1	=> tent1);
	
	compare:			entity work.Compare2(Behavioral)
							port map(randomnum0 	=> s_ran0,
										randomnum1 	=> s_ran1,
										randomnum2 	=> s_ran2,
										randomnum3 	=> s_ran3,
										usernum0   	=> reg_Out0,
										usernum1		=> reg_Out1,
										usernum2		=> reg_Out2,
										usernum3		=> reg_Out3,
										cert			=> s_cert,
										erra			=> s_erra,
										clock			=> clock,
										reset			=> confirm or SW0);

	
	checkEnd:		entity work.checkEnd(Behavioral)
							port map(try0 		=> tent0,
										try1 		=> tent1,
										clock		=> confirm,
										reset		=> SW0,
										isBlink	=> s_blink,
										p			=> s_p, 
										n			=> s_n,
										t1			=> s_t1,
										t0			=> s_t0,
										isend		=> s_isend,
										cert		=> s_cert,
										erra		=> s_erra,
										b_load	=> s_load);
	
	
	
	s_isblink0 <= s_blink or s_out0;
	s_isblink1 <= s_blink or s_out1;
	s_isblink2 <= s_blink or s_out2;
	s_isblink3 <= s_blink or s_out3;
	
	blink0:			entity work.Blink(Behavioral)
							port map(enable 	=> s_isblink0,
										numberIn => c0,
										numberOut=> s_c0,
										clock		=> clk_2hz,
										load 		=> s_load);
	
	blink1:			entity work.Blink(Behavioral)
							port map(enable 	=> s_isblink1,
										numberIn => c1,
										numberOut=> s_c1,
										clock		=> clk_2hz,
										load 		=> s_load);
	
	blink2:			entity work.Blink(Behavioral)
							port map(enable 	=> s_isblink2,
										numberIn => c2,
										numberOut=> s_c2,
										clock		=> clk_2hz,
										load 		=> s_load);
	
	blink3:			entity work.Blink(Behavioral)
							port map(enable 	=> s_isblink3,
										numberIn => c3,
										numberOut=> s_c3,
										clock		=> clk_2hz,
										load 		=> s_load);
										
	bin7segdec0:	entity work.Bin7SegDecoder(Behavioral)
							port map(enable 	=> '1',
										binInput => s_t0,
										decOut_n => Hex4);
										
	bin7segdec1:	entity work.Bin7SegDecoder(Behavioral)
							port map(enable 	=> '1',
										binInput => s_t1,
										decOut_n => Hex5);
										
	bin7segdec2:	entity work.Bin7SegDecoder(Behavioral)
							port map(enable 	=> '1',
										binInput => s_p,
										decOut_n => Hex7);
										
	bin7segdec3:	entity work.Bin7SegDecoder(Behavioral)
							port map(enable 	=> '1',
										binInput => s_n,
										decOut_n => Hex6);
										
	bin7segdec4:	entity work.Bin7SegDecoder(Behavioral)
							port map(enable 	=> not s_isend,
										binInput => s_c0,
										decOut_n => Hex0);
										
	bin7segdec5:	entity work.Bin7SegDecoder(Behavioral)
							port map(enable 	=> not s_isend,
										binInput => s_c1,
										decOut_n => Hex1);
										
	bin7segdec6:	entity work.Bin7SegDecoder(Behavioral)
							port map(enable 	=> not s_isend,
										binInput => s_c2,
										decOut_n => Hex2);
										
	bin7segdec7:	entity work.Bin7SegDecoder(Behavioral)
							port map(enable 	=> not s_isend,
										binInput => s_c3,
										decOut_n => Hex3);

end Structural;