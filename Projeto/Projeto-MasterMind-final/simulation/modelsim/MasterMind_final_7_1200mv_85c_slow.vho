-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.1.1 Build 190 01/19/2015 SJ Web Edition"

-- DATE "05/26/2015 09:45:21"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MasterMind IS
    PORT (
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(0 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	HEX7 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0)
	);
END MasterMind;

-- Design Ports Information
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MasterMind IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MasterMind_Core|freq_div2|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MasterMind_Core|freq_div1|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MasterMind_Core|deb_3|s_dirty_In[5]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MasterMind_Core|checkEnd|Selector2~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MasterMind_Core|s_isblink3~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MasterMind_Core|s_isblink0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MasterMind_Core|s_isblink2~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MasterMind_Core|checkEnd|pState.S0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MasterMind_Core|s_isblink1~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Add0~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Add0~1\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Add0~2_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Add0~3\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Add0~4_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Add0~5\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Add0~6_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Add0~7\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Add0~8_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Add0~9\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Add0~10_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Add0~11\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Add0~12_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Add0~15\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Add0~16_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|s_counter~1_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Add0~17\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Add0~18_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|s_counter~7_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Add0~19\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Add0~20_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Add0~21\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Add0~22_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|s_counter~6_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Add0~23\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Add0~24_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Add0~25\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Add0~26_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Add0~27\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Add0~28_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|s_counter~5_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Equal1~1_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Add0~29\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Add0~30_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Add0~31\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Add0~32_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Add0~33\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Add0~34_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Add0~35\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Add0~36_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|s_counter~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Add0~37\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Add0~38_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|s_counter~4_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Add0~39\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Add0~40_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Add0~41\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Add0~42_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Add0~43\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Add0~44_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|s_counter~3_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Equal1~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Equal1~2_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Equal0~4_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Add0~45\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Add0~46_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Add0~47\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Add0~48_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Add0~49\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Add0~50_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Add0~51\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Add0~52_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Add0~53\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Add0~54_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Add0~55\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Add0~56_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Add0~57\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Add0~58_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Add0~59\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Add0~60_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Equal0~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Equal0~5_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Equal0~2_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Equal0~1_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Equal0~3_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Equal0~6_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Equal1~3_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|s_counter~2_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Add0~13\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Add0~14_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Equal0~8_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Equal0~9_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|Equal0~7_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|clkOut~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|clkOut~1_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|clkOut~q\ : std_logic;
SIGNAL \MasterMind_Core|freq_div2|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \MasterMind_Core|deb_3|s_dirty_In[5]~feeder_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \MasterMind_Core|deb_3|s_dirty_In[5]~clkctrl_outclk\ : std_logic;
SIGNAL \MasterMind_Core|checkEnd|pState.S0~feeder_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \MasterMind_Core|checkEnd|pState.S0~q\ : std_logic;
SIGNAL \MasterMind_Core|checkEnd|Selector12~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|checkEnd|pState.S1~q\ : std_logic;
SIGNAL \MasterMind_Core|compare|Selector16~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|NState.S0~q\ : std_logic;
SIGNAL \MasterMind_Core|compare|Selector17~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|NState.S1~q\ : std_logic;
SIGNAL \MasterMind_Core|compare|Selector18~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|NState.S2~feeder_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|NState.S2~q\ : std_logic;
SIGNAL \MasterMind_Core|Rand_Num|Selector0~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|Rand_Num|pState.S0~q\ : std_logic;
SIGNAL \MasterMind_Core|Rand_Num|nState.S2~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|Rand_Num|pState.S2~q\ : std_logic;
SIGNAL \MasterMind_Core|Counter9999|s_count3~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9999|s_count1~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9999|s_count0~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|Rand_Num|Selector1~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|Rand_Num|pState.S1~q\ : std_logic;
SIGNAL \MasterMind_Core|Counter9999|s_count0~1_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9999|Add3~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9999|s_count0~2_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9999|Add3~1_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9999|s_count0~3_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9999|Equal0~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9999|s_count1[3]~1_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9999|s_count1~2_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9999|Add2~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9999|s_count1~3_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9999|s_count1[2]~feeder_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9999|Add2~1_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9999|s_count1~4_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9999|Equal1~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9999|s_count2~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9999|s_count2[3]~1_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9999|s_count2~3_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9999|Add1~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9999|s_count2~4_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9999|Add1~1_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9999|s_count2~5_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9999|s_count2[3]~2_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9999|s_count1[3]~5_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9999|s_count3[2]~1_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9999|Add0~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9999|s_count3~4_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9999|Add0~1_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9999|s_count3~5_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9999|s_count3[2]~2_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9999|s_count3~3_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9_3|s_count~7_combout\ : std_logic;
SIGNAL \MasterMind_Core|deb_0|s_dirty_In[5]~feeder_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \MasterMind_Core|Counter4|Add0~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter4|Add0~1_combout\ : std_logic;
SIGNAL \MasterMind_Core|s_up3~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|deb_1|s_dirty_In[5]~feeder_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \MasterMind_Core|deb_2|s_dirty_In[5]~feeder_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \MasterMind_Core|Counter9_3|s_count[0]~8_combout\ : std_logic;
SIGNAL \MasterMind_Core|register_c|dataOut3[0]~feeder_combout\ : std_logic;
SIGNAL \MasterMind_Core|s_up3~1_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9_3|Add0~1_cout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9_3|Add0~2_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9_3|Add0~3\ : std_logic;
SIGNAL \MasterMind_Core|Counter9_3|Add0~4_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9_3|Add0~9_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9_3|Add0~5\ : std_logic;
SIGNAL \MasterMind_Core|Counter9_3|Add0~6_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9_3|s_count~6_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9_3|s_count[0]~4_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9_3|s_count[0]~5_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9_3|Add0~8_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Equal3~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|register_c|dataOut3[2]~feeder_combout\ : std_logic;
SIGNAL \MasterMind_Core|register_c|dataOut3[3]~feeder_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Equal3~1_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9_2|s_count~7_combout\ : std_logic;
SIGNAL \MasterMind_Core|s_up2~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9_2|s_count[2]~8_combout\ : std_logic;
SIGNAL \MasterMind_Core|s_up2~1_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9_2|Add0~1_cout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9_2|Add0~3\ : std_logic;
SIGNAL \MasterMind_Core|Counter9_2|Add0~4_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9_2|Add0~9_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9_2|Add0~5\ : std_logic;
SIGNAL \MasterMind_Core|Counter9_2|Add0~6_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9_2|s_count~6_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9_2|s_count[2]~4_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9_2|s_count[2]~5_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9_2|Add0~2_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9_2|Add0~8_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Equal2~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Equal2~1_combout\ : std_logic;
SIGNAL \MasterMind_Core|s_up1~1_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9_1|s_count~7_combout\ : std_logic;
SIGNAL \MasterMind_Core|s_up1~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9_1|s_count[1]~8_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9_1|Add0~1_cout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9_1|Add0~2_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9_1|Add0~8_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9_1|Add0~3\ : std_logic;
SIGNAL \MasterMind_Core|Counter9_1|Add0~5\ : std_logic;
SIGNAL \MasterMind_Core|Counter9_1|Add0~6_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9_1|s_count~6_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9_1|s_count[1]~4_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9_1|s_count[1]~5_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9_1|Add0~4_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9_1|Add0~9_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Equal1~1_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Equal1~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Add1~1_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|cer~6_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Selector7~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|s_up0~1_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9_0|s_count~7_combout\ : std_logic;
SIGNAL \MasterMind_Core|s_up0~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9_0|s_count[3]~8_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9_0|Add0~1_cout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9_0|Add0~3\ : std_logic;
SIGNAL \MasterMind_Core|Counter9_0|Add0~4_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9_0|Add0~9_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9_0|s_count[3]~4_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9_0|Add0~5\ : std_logic;
SIGNAL \MasterMind_Core|Counter9_0|Add0~6_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9_0|s_count~6_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9_0|s_count[3]~5_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9_0|Add0~2_combout\ : std_logic;
SIGNAL \MasterMind_Core|Counter9_0|Add0~8_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Equal0~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Equal0~1_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Add0~2_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Equal3~2_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Add1~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Add2~3_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|cer~5_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Selector6~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Add0~1_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Add3~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Add0~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Add2~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Add2~2_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|cer~7_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Selector5~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|checkEnd|Selector19~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|checkEnd|Selector18~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|checkEnd|Selector17~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec2|Equal7~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|counter99|s_count1[0]~4_combout\ : std_logic;
SIGNAL \MasterMind_Core|counter99|s_count1[0]~5_combout\ : std_logic;
SIGNAL \MasterMind_Core|counter99|s_count1[3]~1_combout\ : std_logic;
SIGNAL \MasterMind_Core|counter99|s_count1[1]~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|counter99|s_count1[1]~6_combout\ : std_logic;
SIGNAL \MasterMind_Core|counter99|Add0~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|counter99|s_count1[2]~2_combout\ : std_logic;
SIGNAL \MasterMind_Core|counter99|Add0~1_combout\ : std_logic;
SIGNAL \MasterMind_Core|counter99|s_count1[3]~3_combout\ : std_logic;
SIGNAL \MasterMind_Core|counter99|Equal0~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|counter99|s_count0[3]~1_combout\ : std_logic;
SIGNAL \MasterMind_Core|counter99|s_count0[0]~4_combout\ : std_logic;
SIGNAL \MasterMind_Core|counter99|s_count0[1]~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|counter99|s_count0[1]~5_combout\ : std_logic;
SIGNAL \MasterMind_Core|counter99|Add1~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|counter99|s_count0[2]~2_combout\ : std_logic;
SIGNAL \MasterMind_Core|counter99|Add1~1_combout\ : std_logic;
SIGNAL \MasterMind_Core|counter99|s_count0[3]~3_combout\ : std_logic;
SIGNAL \MasterMind_Core|counter99|Equal1~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|checkEnd|compare_proc~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|checkEnd|Selector14~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|checkEnd|pState.S3~q\ : std_logic;
SIGNAL \MasterMind_Core|compare|Add2~1_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|cer~4_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Selector4~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|checkEnd|Selector21~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec2|decOut_n~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec2|decOut_n~1_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec2|decOut_n~2_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec2|decOut_n~3_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec2|decOut_n~4_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec2|decOut_n~5_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec2|decOut_n~6_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Equal4~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Selector0~1_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Selector1~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Selector15~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Selector15~1_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|comparar_user~12_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Equal13~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Equal13~1_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Equal13~2_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Selector13~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Selector13~1_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|comparar_user~21_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Equal10~1_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Equal10~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Equal10~2_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Selector14~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Selector14~1_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|comparar_user~18_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|comparar_user~14_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|process_0~14_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|process_0~13_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Selector12~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Selector9~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|process_0~11_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|process_0~10_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|comparar_user~15_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|comparar_user~19_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|comparar_user~22_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Selector11~2_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Selector11~3_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Selector11~4_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|process_0~5_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|process_0~6_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|process_0~16_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|process_0~17_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Selector9~1_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|process_0~8_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|process_0~7_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|process_0~9_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|comparar_user~5_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|comparar_user~4_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|comparar_user~24_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|process_0~12_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|comparar_user~23_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Selector10~2_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Selector10~3_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Selector10~4_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|process_0~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|comparar_user~6_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|comparar_user~8_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|comparar_user~7_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|comparar_user~9_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|comparar_user~13_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|comparar_user~25_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|process_0~3_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|process_0~2_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|process_0~4_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|err~6_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Equal16~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Equal16~1_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|process_0~18_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Selector9~3_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Selector3~1_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Selector9~2_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Selector9~4_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|process_0~1_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|comparar_user~16_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|comparar_user~10_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Equal7~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Equal7~1_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Equal7~2_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|comparar_user~17_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|comparar_user~20_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|err~15_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Selector8~2_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Selector8~3_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Selector8~4_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|comparar_user~11_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|err~2_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|process_0~15_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|err~7_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|err~8_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|err~5_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Selector3~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Selector3~2_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|err~3_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|err~4_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|err~14_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Selector2~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Selector2~1_combout\ : std_logic;
SIGNAL \MasterMind_Core|checkEnd|Selector0~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|checkEnd|pState.S0~clkctrl_outclk\ : std_logic;
SIGNAL \MasterMind_Core|compare|Add6~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Selector1~1_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Selector1~2_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Selector1~3_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|err~10_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Add5~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|err~12_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Add7~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Add4~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|err~9_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|err~11_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|err~13_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Selector0~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|compare|Selector0~2_combout\ : std_logic;
SIGNAL \MasterMind_Core|checkEnd|Selector16~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|checkEnd|Selector15~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|checkEnd|Selector1~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec3|decOut_n~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec3|decOut_n~1_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec3|decOut_n~2_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec3|decOut_n~3_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec3|decOut_n~4_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec3|decOut_n~5_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec3|decOut_n~6_combout\ : std_logic;
SIGNAL \MasterMind_Core|checkEnd|Selector7~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|checkEnd|Selector4~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|checkEnd|pState.S2~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|checkEnd|pState.S2~q\ : std_logic;
SIGNAL \MasterMind_Core|checkEnd|Selector6~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|checkEnd|Selector6~1_combout\ : std_logic;
SIGNAL \MasterMind_Core|checkEnd|Selector5~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|checkEnd|Selector5~1_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec1|decOut_n~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec1|decOut_n~1_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec1|decOut_n~2_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec1|decOut_n~3_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec1|decOut_n~4_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec1|decOut_n~5_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec1|decOut_n~6_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec1|decOut_n~7_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec1|decOut_n~8_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec1|decOut_n~9_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec1|decOut_n~10_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec0|decOut_n~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|checkEnd|Selector8~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|checkEnd|Selector10~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|checkEnd|Selector10~1_combout\ : std_logic;
SIGNAL \MasterMind_Core|checkEnd|Selector9~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|checkEnd|Selector9~1_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec0|decOut_n~1_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec0|decOut_n~2_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec0|decOut_n~3_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec0|decOut_n~4_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec0|decOut_n~5_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec0|decOut_n~6_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec0|decOut_n~7_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec0|decOut_n~8_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec0|decOut_n~9_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec0|decOut_n~10_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Add0~1_cout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Add0~2_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Add0~3\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Add0~4_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Add0~5\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Add0~6_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Add0~7\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Add0~8_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Add0~9\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Add0~10_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|s_counter~7_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Add0~11\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Add0~12_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Add0~13\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Add0~14_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Add0~15\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Add0~16_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Add0~17\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Add0~18_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Add0~19\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Add0~20_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|s_counter~6_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Add0~21\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Add0~22_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|s_counter~5_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Add0~23\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Add0~24_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|s_counter~4_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Add0~25\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Add0~27\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Add0~28_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Add0~29\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Add0~30_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|s_counter~10_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Add0~31\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Add0~32_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Add0~33\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Add0~34_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|s_counter~3_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Add0~35\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Add0~36_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|s_counter~2_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Add0~37\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Add0~38_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|s_counter~1_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Add0~39\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Add0~40_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|s_counter~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Add0~41\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Add0~42_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|s_counter~9_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Add0~43\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Add0~44_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Add0~45\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Add0~46_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|s_counter~8_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Equal1~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Equal1~1_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Equal0~5_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Equal0~2_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Add0~47\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Add0~48_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Add0~49\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Add0~50_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Add0~51\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Add0~52_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Add0~53\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Add0~54_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Add0~55\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Add0~56_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Add0~57\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Add0~58_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Equal0~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Equal0~3_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Equal0~1_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Equal0~4_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Equal0~6_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Equal1~2_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Add0~26_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|s_counter~11_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Equal0~8_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Equal0~7_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|Equal0~9_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|clkOut~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|clkOut~q\ : std_logic;
SIGNAL \MasterMind_Core|freq_div1|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \MasterMind_Core|s_isblink3~combout\ : std_logic;
SIGNAL \MasterMind_Core|s_isblink3~clkctrl_outclk\ : std_logic;
SIGNAL \MasterMind_Core|checkEnd|Selector2~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|checkEnd|Selector2~0clkctrl_outclk\ : std_logic;
SIGNAL \MasterMind_Core|blink3|numberOut[3]~1_combout\ : std_logic;
SIGNAL \MasterMind_Core|blink3|checkblink~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|blink3|checkblink~q\ : std_logic;
SIGNAL \MasterMind_Core|blink3|numberOut[3]~3_combout\ : std_logic;
SIGNAL \MasterMind_Core|blink3|numberOut[3]~_emulated_q\ : std_logic;
SIGNAL \MasterMind_Core|blink3|numberOut[3]~2_combout\ : std_logic;
SIGNAL \MasterMind_Core|blink3|numberOut[1]~5_combout\ : std_logic;
SIGNAL \MasterMind_Core|blink3|numberOut[1]~7_combout\ : std_logic;
SIGNAL \MasterMind_Core|blink3|numberOut[1]~_emulated_q\ : std_logic;
SIGNAL \MasterMind_Core|blink3|numberOut[1]~6_combout\ : std_logic;
SIGNAL \MasterMind_Core|blink3|numberOut[0]~9_combout\ : std_logic;
SIGNAL \MasterMind_Core|blink3|numberOut[0]~11_combout\ : std_logic;
SIGNAL \MasterMind_Core|blink3|numberOut[0]~_emulated_q\ : std_logic;
SIGNAL \MasterMind_Core|blink3|numberOut[0]~10_combout\ : std_logic;
SIGNAL \MasterMind_Core|blink3|numberOut[2]~13_combout\ : std_logic;
SIGNAL \MasterMind_Core|blink3|numberOut[2]~15_combout\ : std_logic;
SIGNAL \MasterMind_Core|blink3|numberOut[2]~_emulated_q\ : std_logic;
SIGNAL \MasterMind_Core|blink3|numberOut[2]~14_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec7|decOut_n~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec7|decOut_n~1_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec7|decOut_n~2_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec7|decOut_n~3_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec7|decOut_n~4_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec7|decOut_n~5_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec7|decOut_n~6_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec7|decOut_n~7_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec7|decOut_n~8_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec7|decOut_n~9_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec7|decOut_n~10_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec7|decOut_n~11_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec7|decOut_n~12_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec7|decOut_n~13_combout\ : std_logic;
SIGNAL \MasterMind_Core|s_isblink2~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|s_isblink2~combout\ : std_logic;
SIGNAL \MasterMind_Core|blink2|checkblink~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|s_isblink2~clkctrl_outclk\ : std_logic;
SIGNAL \MasterMind_Core|blink2|checkblink~q\ : std_logic;
SIGNAL \MasterMind_Core|blink2|numberOut[3]~1_combout\ : std_logic;
SIGNAL \MasterMind_Core|blink2|numberOut[3]~3_combout\ : std_logic;
SIGNAL \MasterMind_Core|blink2|numberOut[3]~_emulated_q\ : std_logic;
SIGNAL \MasterMind_Core|blink2|numberOut[3]~2_combout\ : std_logic;
SIGNAL \MasterMind_Core|blink2|numberOut[1]~5_combout\ : std_logic;
SIGNAL \MasterMind_Core|blink2|numberOut[1]~7_combout\ : std_logic;
SIGNAL \MasterMind_Core|blink2|numberOut[1]~_emulated_q\ : std_logic;
SIGNAL \MasterMind_Core|blink2|numberOut[1]~6_combout\ : std_logic;
SIGNAL \MasterMind_Core|blink2|numberOut[0]~9_combout\ : std_logic;
SIGNAL \MasterMind_Core|blink2|numberOut[0]~11_combout\ : std_logic;
SIGNAL \MasterMind_Core|blink2|numberOut[0]~_emulated_q\ : std_logic;
SIGNAL \MasterMind_Core|blink2|numberOut[0]~10_combout\ : std_logic;
SIGNAL \MasterMind_Core|blink2|numberOut[2]~13_combout\ : std_logic;
SIGNAL \MasterMind_Core|blink2|numberOut[2]~15_combout\ : std_logic;
SIGNAL \MasterMind_Core|blink2|numberOut[2]~_emulated_q\ : std_logic;
SIGNAL \MasterMind_Core|blink2|numberOut[2]~14_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec6|decOut_n~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec6|decOut_n~1_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec6|decOut_n~2_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec6|decOut_n~3_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec6|decOut_n~4_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec6|decOut_n~5_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec6|decOut_n~6_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec6|decOut_n~7_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec6|decOut_n~8_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec6|decOut_n~9_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec6|decOut_n~10_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec6|decOut_n~11_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec6|decOut_n~12_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec6|decOut_n~13_combout\ : std_logic;
SIGNAL \MasterMind_Core|s_isblink1~combout\ : std_logic;
SIGNAL \MasterMind_Core|s_isblink1~clkctrl_outclk\ : std_logic;
SIGNAL \MasterMind_Core|blink1|numberOut[3]~1_combout\ : std_logic;
SIGNAL \MasterMind_Core|blink1|checkblink~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|blink1|checkblink~q\ : std_logic;
SIGNAL \MasterMind_Core|blink1|numberOut[3]~3_combout\ : std_logic;
SIGNAL \MasterMind_Core|blink1|numberOut[3]~_emulated_q\ : std_logic;
SIGNAL \MasterMind_Core|blink1|numberOut[3]~2_combout\ : std_logic;
SIGNAL \MasterMind_Core|blink1|numberOut[1]~5_combout\ : std_logic;
SIGNAL \MasterMind_Core|blink1|numberOut[1]~7_combout\ : std_logic;
SIGNAL \MasterMind_Core|blink1|numberOut[1]~_emulated_q\ : std_logic;
SIGNAL \MasterMind_Core|blink1|numberOut[1]~6_combout\ : std_logic;
SIGNAL \MasterMind_Core|blink1|numberOut[2]~13_combout\ : std_logic;
SIGNAL \MasterMind_Core|blink1|numberOut[2]~15_combout\ : std_logic;
SIGNAL \MasterMind_Core|blink1|numberOut[2]~_emulated_q\ : std_logic;
SIGNAL \MasterMind_Core|blink1|numberOut[2]~14_combout\ : std_logic;
SIGNAL \MasterMind_Core|blink1|numberOut[0]~9_combout\ : std_logic;
SIGNAL \MasterMind_Core|blink1|numberOut[0]~11_combout\ : std_logic;
SIGNAL \MasterMind_Core|blink1|numberOut[0]~_emulated_q\ : std_logic;
SIGNAL \MasterMind_Core|blink1|numberOut[0]~10_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec5|decOut_n~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec5|decOut_n~1_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec5|decOut_n~2_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec5|decOut_n~3_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec5|decOut_n~4_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec5|decOut_n~5_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec5|decOut_n~6_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec5|decOut_n~7_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec5|decOut_n~8_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec5|decOut_n~9_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec5|decOut_n~10_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec5|decOut_n~11_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec5|decOut_n~12_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec5|decOut_n~13_combout\ : std_logic;
SIGNAL \MasterMind_Core|blink0|checkblink~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|s_isblink0~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|s_isblink0~0clkctrl_outclk\ : std_logic;
SIGNAL \MasterMind_Core|blink0|checkblink~q\ : std_logic;
SIGNAL \MasterMind_Core|blink0|numberOut[2]~13_combout\ : std_logic;
SIGNAL \MasterMind_Core|blink0|numberOut[2]~15_combout\ : std_logic;
SIGNAL \MasterMind_Core|blink0|numberOut[2]~_emulated_q\ : std_logic;
SIGNAL \MasterMind_Core|blink0|numberOut[2]~14_combout\ : std_logic;
SIGNAL \MasterMind_Core|blink0|numberOut[0]~9_combout\ : std_logic;
SIGNAL \MasterMind_Core|blink0|numberOut[0]~11_combout\ : std_logic;
SIGNAL \MasterMind_Core|blink0|numberOut[0]~_emulated_q\ : std_logic;
SIGNAL \MasterMind_Core|blink0|numberOut[0]~10_combout\ : std_logic;
SIGNAL \MasterMind_Core|blink0|numberOut[1]~5_combout\ : std_logic;
SIGNAL \MasterMind_Core|blink0|numberOut[1]~7_combout\ : std_logic;
SIGNAL \MasterMind_Core|blink0|numberOut[1]~_emulated_q\ : std_logic;
SIGNAL \MasterMind_Core|blink0|numberOut[1]~6_combout\ : std_logic;
SIGNAL \MasterMind_Core|blink0|numberOut[3]~1_combout\ : std_logic;
SIGNAL \MasterMind_Core|blink0|numberOut[3]~3_combout\ : std_logic;
SIGNAL \MasterMind_Core|blink0|numberOut[3]~_emulated_q\ : std_logic;
SIGNAL \MasterMind_Core|blink0|numberOut[3]~2_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec4|decOut_n~0_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec4|decOut_n~1_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec4|decOut_n~2_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec4|decOut_n~3_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec4|decOut_n~4_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec4|decOut_n~5_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec4|decOut_n~6_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec4|decOut_n~7_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec4|decOut_n~8_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec4|decOut_n~9_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec4|decOut_n~10_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec4|decOut_n~11_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec4|decOut_n~12_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec4|decOut_n~13_combout\ : std_logic;
SIGNAL \MasterMind_Core|checkEnd|final_try1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MasterMind_Core|deb_3|s_dirty_In\ : std_logic_vector(5 DOWNTO 1);
SIGNAL \MasterMind_Core|blink1|s_nin\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MasterMind_Core|counter99|s_count0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MasterMind_Core|Counter4|s_count\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \MasterMind_Core|counter99|s_count1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MasterMind_Core|checkEnd|final_try0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MasterMind_Core|compare|cer\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MasterMind_Core|Counter9_3|s_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MasterMind_Core|compare|err\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MasterMind_Core|Counter9999|s_count0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MasterMind_Core|register_c|dataOut0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MasterMind_Core|Counter9999|s_count1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MasterMind_Core|freq_div2|s_counter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \MasterMind_Core|register_c|dataOut1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MasterMind_Core|Counter9999|s_count2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MasterMind_Core|register_c|dataOut2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MasterMind_Core|Counter9999|s_count3\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MasterMind_Core|register_c|dataOut3\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MasterMind_Core|compare|comparar_user\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MasterMind_Core|compare|comparar_rand\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MasterMind_Core|Counter9_2|s_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MasterMind_Core|Counter9_1|s_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MasterMind_Core|Counter9_0|s_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MasterMind_Core|freq_div1|s_counter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \MasterMind_Core|blink0|s_nin\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MasterMind_Core|deb_0|s_dirty_In\ : std_logic_vector(5 DOWNTO 1);
SIGNAL \MasterMind_Core|deb_1|s_dirty_In\ : std_logic_vector(5 DOWNTO 1);
SIGNAL \MasterMind_Core|checkEnd|s_p\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MasterMind_Core|deb_2|s_dirty_In\ : std_logic_vector(5 DOWNTO 1);
SIGNAL \MasterMind_Core|checkEnd|s_n\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MasterMind_Core|blink3|s_nin\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MasterMind_Core|blink2|s_nin\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MasterMind_Core|bin7segdec0|ALT_INV_decOut_n~10_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec1|ALT_INV_decOut_n~10_combout\ : std_logic;
SIGNAL \MasterMind_Core|checkEnd|ALT_INV_pState.S1~q\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec3|ALT_INV_decOut_n~6_combout\ : std_logic;
SIGNAL \MasterMind_Core|bin7segdec2|ALT_INV_decOut_n~6_combout\ : std_logic;
SIGNAL \MasterMind_Core|Rand_Num|ALT_INV_pState.S1~q\ : std_logic;
SIGNAL \MasterMind_Core|ALT_INV_s_isblink1~clkctrl_outclk\ : std_logic;
SIGNAL \MasterMind_Core|ALT_INV_s_isblink2~clkctrl_outclk\ : std_logic;
SIGNAL \MasterMind_Core|ALT_INV_s_isblink0~0clkctrl_outclk\ : std_logic;
SIGNAL \MasterMind_Core|ALT_INV_s_isblink3~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;

BEGIN

ww_KEY <= KEY;
ww_SW <= SW;
ww_CLOCK_50 <= CLOCK_50;
HEX7 <= ww_HEX7;
HEX6 <= ww_HEX6;
HEX5 <= ww_HEX5;
HEX4 <= ww_HEX4;
HEX3 <= ww_HEX3;
HEX2 <= ww_HEX2;
HEX1 <= ww_HEX1;
HEX0 <= ww_HEX0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\MasterMind_Core|freq_div2|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \MasterMind_Core|freq_div2|clkOut~q\);

\MasterMind_Core|freq_div1|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \MasterMind_Core|freq_div1|clkOut~q\);

\MasterMind_Core|deb_3|s_dirty_In[5]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \MasterMind_Core|deb_3|s_dirty_In\(5));

\MasterMind_Core|checkEnd|Selector2~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \MasterMind_Core|checkEnd|Selector2~0_combout\);

\MasterMind_Core|s_isblink3~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \MasterMind_Core|s_isblink3~combout\);

\MasterMind_Core|s_isblink0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \MasterMind_Core|s_isblink0~0_combout\);

\MasterMind_Core|s_isblink2~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \MasterMind_Core|s_isblink2~combout\);

\MasterMind_Core|checkEnd|pState.S0~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \MasterMind_Core|checkEnd|pState.S0~q\);

\MasterMind_Core|s_isblink1~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \MasterMind_Core|s_isblink1~combout\);
\MasterMind_Core|bin7segdec0|ALT_INV_decOut_n~10_combout\ <= NOT \MasterMind_Core|bin7segdec0|decOut_n~10_combout\;
\MasterMind_Core|bin7segdec1|ALT_INV_decOut_n~10_combout\ <= NOT \MasterMind_Core|bin7segdec1|decOut_n~10_combout\;
\MasterMind_Core|checkEnd|ALT_INV_pState.S1~q\ <= NOT \MasterMind_Core|checkEnd|pState.S1~q\;
\MasterMind_Core|bin7segdec3|ALT_INV_decOut_n~6_combout\ <= NOT \MasterMind_Core|bin7segdec3|decOut_n~6_combout\;
\MasterMind_Core|bin7segdec2|ALT_INV_decOut_n~6_combout\ <= NOT \MasterMind_Core|bin7segdec2|decOut_n~6_combout\;
\MasterMind_Core|Rand_Num|ALT_INV_pState.S1~q\ <= NOT \MasterMind_Core|Rand_Num|pState.S1~q\;
\MasterMind_Core|ALT_INV_s_isblink1~clkctrl_outclk\ <= NOT \MasterMind_Core|s_isblink1~clkctrl_outclk\;
\MasterMind_Core|ALT_INV_s_isblink2~clkctrl_outclk\ <= NOT \MasterMind_Core|s_isblink2~clkctrl_outclk\;
\MasterMind_Core|ALT_INV_s_isblink0~0clkctrl_outclk\ <= NOT \MasterMind_Core|s_isblink0~0clkctrl_outclk\;
\MasterMind_Core|ALT_INV_s_isblink3~clkctrl_outclk\ <= NOT \MasterMind_Core|s_isblink3~clkctrl_outclk\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MasterMind_Core|bin7segdec2|decOut_n~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MasterMind_Core|bin7segdec2|decOut_n~1_combout\,
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MasterMind_Core|bin7segdec2|decOut_n~2_combout\,
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MasterMind_Core|bin7segdec2|decOut_n~3_combout\,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MasterMind_Core|bin7segdec2|decOut_n~4_combout\,
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MasterMind_Core|bin7segdec2|decOut_n~5_combout\,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MasterMind_Core|bin7segdec2|ALT_INV_decOut_n~6_combout\,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MasterMind_Core|bin7segdec3|decOut_n~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MasterMind_Core|bin7segdec3|decOut_n~1_combout\,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MasterMind_Core|bin7segdec3|decOut_n~2_combout\,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MasterMind_Core|bin7segdec3|decOut_n~3_combout\,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MasterMind_Core|bin7segdec3|decOut_n~4_combout\,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MasterMind_Core|bin7segdec3|decOut_n~5_combout\,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MasterMind_Core|bin7segdec3|ALT_INV_decOut_n~6_combout\,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MasterMind_Core|bin7segdec1|decOut_n~1_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MasterMind_Core|bin7segdec1|decOut_n~5_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MasterMind_Core|bin7segdec1|decOut_n~6_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MasterMind_Core|bin7segdec1|decOut_n~7_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MasterMind_Core|bin7segdec1|decOut_n~8_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MasterMind_Core|bin7segdec1|decOut_n~9_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MasterMind_Core|bin7segdec1|ALT_INV_decOut_n~10_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MasterMind_Core|bin7segdec0|decOut_n~1_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MasterMind_Core|bin7segdec0|decOut_n~5_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MasterMind_Core|bin7segdec0|decOut_n~6_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MasterMind_Core|bin7segdec0|decOut_n~7_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MasterMind_Core|bin7segdec0|decOut_n~8_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MasterMind_Core|bin7segdec0|decOut_n~9_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MasterMind_Core|bin7segdec0|ALT_INV_decOut_n~10_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MasterMind_Core|bin7segdec7|decOut_n~1_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MasterMind_Core|bin7segdec7|decOut_n~3_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MasterMind_Core|bin7segdec7|decOut_n~5_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MasterMind_Core|bin7segdec7|decOut_n~7_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MasterMind_Core|bin7segdec7|decOut_n~9_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MasterMind_Core|bin7segdec7|decOut_n~11_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MasterMind_Core|bin7segdec7|decOut_n~13_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MasterMind_Core|bin7segdec6|decOut_n~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MasterMind_Core|bin7segdec6|decOut_n~3_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MasterMind_Core|bin7segdec6|decOut_n~5_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MasterMind_Core|bin7segdec6|decOut_n~7_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MasterMind_Core|bin7segdec6|decOut_n~9_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MasterMind_Core|bin7segdec6|decOut_n~11_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MasterMind_Core|bin7segdec6|decOut_n~13_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MasterMind_Core|bin7segdec5|decOut_n~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MasterMind_Core|bin7segdec5|decOut_n~3_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MasterMind_Core|bin7segdec5|decOut_n~5_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MasterMind_Core|bin7segdec5|decOut_n~7_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MasterMind_Core|bin7segdec5|decOut_n~9_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MasterMind_Core|bin7segdec5|decOut_n~11_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MasterMind_Core|bin7segdec5|decOut_n~13_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MasterMind_Core|bin7segdec4|decOut_n~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MasterMind_Core|bin7segdec4|decOut_n~3_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MasterMind_Core|bin7segdec4|decOut_n~5_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MasterMind_Core|bin7segdec4|decOut_n~7_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MasterMind_Core|bin7segdec4|decOut_n~9_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MasterMind_Core|bin7segdec4|decOut_n~11_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MasterMind_Core|bin7segdec4|decOut_n~13_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X67_Y56_N2
\MasterMind_Core|freq_div2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div2|Add0~0_combout\ = \MasterMind_Core|freq_div2|s_counter\(0) $ (VCC)
-- \MasterMind_Core|freq_div2|Add0~1\ = CARRY(\MasterMind_Core|freq_div2|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|freq_div2|s_counter\(0),
	datad => VCC,
	combout => \MasterMind_Core|freq_div2|Add0~0_combout\,
	cout => \MasterMind_Core|freq_div2|Add0~1\);

-- Location: FF_X67_Y56_N3
\MasterMind_Core|freq_div2|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|freq_div2|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|freq_div2|s_counter\(0));

-- Location: LCCOMB_X67_Y56_N4
\MasterMind_Core|freq_div2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div2|Add0~2_combout\ = (\MasterMind_Core|freq_div2|s_counter\(1) & (!\MasterMind_Core|freq_div2|Add0~1\)) # (!\MasterMind_Core|freq_div2|s_counter\(1) & ((\MasterMind_Core|freq_div2|Add0~1\) # (GND)))
-- \MasterMind_Core|freq_div2|Add0~3\ = CARRY((!\MasterMind_Core|freq_div2|Add0~1\) # (!\MasterMind_Core|freq_div2|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|freq_div2|s_counter\(1),
	datad => VCC,
	cin => \MasterMind_Core|freq_div2|Add0~1\,
	combout => \MasterMind_Core|freq_div2|Add0~2_combout\,
	cout => \MasterMind_Core|freq_div2|Add0~3\);

-- Location: FF_X67_Y56_N5
\MasterMind_Core|freq_div2|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|freq_div2|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|freq_div2|s_counter\(1));

-- Location: LCCOMB_X67_Y56_N6
\MasterMind_Core|freq_div2|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div2|Add0~4_combout\ = (\MasterMind_Core|freq_div2|s_counter\(2) & (\MasterMind_Core|freq_div2|Add0~3\ $ (GND))) # (!\MasterMind_Core|freq_div2|s_counter\(2) & (!\MasterMind_Core|freq_div2|Add0~3\ & VCC))
-- \MasterMind_Core|freq_div2|Add0~5\ = CARRY((\MasterMind_Core|freq_div2|s_counter\(2) & !\MasterMind_Core|freq_div2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|freq_div2|s_counter\(2),
	datad => VCC,
	cin => \MasterMind_Core|freq_div2|Add0~3\,
	combout => \MasterMind_Core|freq_div2|Add0~4_combout\,
	cout => \MasterMind_Core|freq_div2|Add0~5\);

-- Location: FF_X67_Y56_N7
\MasterMind_Core|freq_div2|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|freq_div2|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|freq_div2|s_counter\(2));

-- Location: LCCOMB_X67_Y56_N8
\MasterMind_Core|freq_div2|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div2|Add0~6_combout\ = (\MasterMind_Core|freq_div2|s_counter\(3) & (!\MasterMind_Core|freq_div2|Add0~5\)) # (!\MasterMind_Core|freq_div2|s_counter\(3) & ((\MasterMind_Core|freq_div2|Add0~5\) # (GND)))
-- \MasterMind_Core|freq_div2|Add0~7\ = CARRY((!\MasterMind_Core|freq_div2|Add0~5\) # (!\MasterMind_Core|freq_div2|s_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|freq_div2|s_counter\(3),
	datad => VCC,
	cin => \MasterMind_Core|freq_div2|Add0~5\,
	combout => \MasterMind_Core|freq_div2|Add0~6_combout\,
	cout => \MasterMind_Core|freq_div2|Add0~7\);

-- Location: FF_X67_Y56_N9
\MasterMind_Core|freq_div2|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|freq_div2|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|freq_div2|s_counter\(3));

-- Location: LCCOMB_X67_Y56_N10
\MasterMind_Core|freq_div2|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div2|Add0~8_combout\ = (\MasterMind_Core|freq_div2|s_counter\(4) & (\MasterMind_Core|freq_div2|Add0~7\ $ (GND))) # (!\MasterMind_Core|freq_div2|s_counter\(4) & (!\MasterMind_Core|freq_div2|Add0~7\ & VCC))
-- \MasterMind_Core|freq_div2|Add0~9\ = CARRY((\MasterMind_Core|freq_div2|s_counter\(4) & !\MasterMind_Core|freq_div2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|freq_div2|s_counter\(4),
	datad => VCC,
	cin => \MasterMind_Core|freq_div2|Add0~7\,
	combout => \MasterMind_Core|freq_div2|Add0~8_combout\,
	cout => \MasterMind_Core|freq_div2|Add0~9\);

-- Location: FF_X67_Y56_N11
\MasterMind_Core|freq_div2|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|freq_div2|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|freq_div2|s_counter\(4));

-- Location: LCCOMB_X67_Y56_N12
\MasterMind_Core|freq_div2|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div2|Add0~10_combout\ = (\MasterMind_Core|freq_div2|s_counter\(5) & (!\MasterMind_Core|freq_div2|Add0~9\)) # (!\MasterMind_Core|freq_div2|s_counter\(5) & ((\MasterMind_Core|freq_div2|Add0~9\) # (GND)))
-- \MasterMind_Core|freq_div2|Add0~11\ = CARRY((!\MasterMind_Core|freq_div2|Add0~9\) # (!\MasterMind_Core|freq_div2|s_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|freq_div2|s_counter\(5),
	datad => VCC,
	cin => \MasterMind_Core|freq_div2|Add0~9\,
	combout => \MasterMind_Core|freq_div2|Add0~10_combout\,
	cout => \MasterMind_Core|freq_div2|Add0~11\);

-- Location: FF_X67_Y56_N13
\MasterMind_Core|freq_div2|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|freq_div2|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|freq_div2|s_counter\(5));

-- Location: LCCOMB_X67_Y56_N14
\MasterMind_Core|freq_div2|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div2|Add0~12_combout\ = (\MasterMind_Core|freq_div2|s_counter\(6) & (\MasterMind_Core|freq_div2|Add0~11\ $ (GND))) # (!\MasterMind_Core|freq_div2|s_counter\(6) & (!\MasterMind_Core|freq_div2|Add0~11\ & VCC))
-- \MasterMind_Core|freq_div2|Add0~13\ = CARRY((\MasterMind_Core|freq_div2|s_counter\(6) & !\MasterMind_Core|freq_div2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|freq_div2|s_counter\(6),
	datad => VCC,
	cin => \MasterMind_Core|freq_div2|Add0~11\,
	combout => \MasterMind_Core|freq_div2|Add0~12_combout\,
	cout => \MasterMind_Core|freq_div2|Add0~13\);

-- Location: LCCOMB_X67_Y56_N16
\MasterMind_Core|freq_div2|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div2|Add0~14_combout\ = (\MasterMind_Core|freq_div2|s_counter\(7) & (!\MasterMind_Core|freq_div2|Add0~13\)) # (!\MasterMind_Core|freq_div2|s_counter\(7) & ((\MasterMind_Core|freq_div2|Add0~13\) # (GND)))
-- \MasterMind_Core|freq_div2|Add0~15\ = CARRY((!\MasterMind_Core|freq_div2|Add0~13\) # (!\MasterMind_Core|freq_div2|s_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|freq_div2|s_counter\(7),
	datad => VCC,
	cin => \MasterMind_Core|freq_div2|Add0~13\,
	combout => \MasterMind_Core|freq_div2|Add0~14_combout\,
	cout => \MasterMind_Core|freq_div2|Add0~15\);

-- Location: LCCOMB_X67_Y56_N18
\MasterMind_Core|freq_div2|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div2|Add0~16_combout\ = (\MasterMind_Core|freq_div2|s_counter\(8) & (\MasterMind_Core|freq_div2|Add0~15\ $ (GND))) # (!\MasterMind_Core|freq_div2|s_counter\(8) & (!\MasterMind_Core|freq_div2|Add0~15\ & VCC))
-- \MasterMind_Core|freq_div2|Add0~17\ = CARRY((\MasterMind_Core|freq_div2|s_counter\(8) & !\MasterMind_Core|freq_div2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|freq_div2|s_counter\(8),
	datad => VCC,
	cin => \MasterMind_Core|freq_div2|Add0~15\,
	combout => \MasterMind_Core|freq_div2|Add0~16_combout\,
	cout => \MasterMind_Core|freq_div2|Add0~17\);

-- Location: LCCOMB_X66_Y55_N10
\MasterMind_Core|freq_div2|s_counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div2|s_counter~1_combout\ = (!\MasterMind_Core|freq_div2|Equal1~3_combout\ & \MasterMind_Core|freq_div2|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MasterMind_Core|freq_div2|Equal1~3_combout\,
	datad => \MasterMind_Core|freq_div2|Add0~16_combout\,
	combout => \MasterMind_Core|freq_div2|s_counter~1_combout\);

-- Location: FF_X66_Y55_N11
\MasterMind_Core|freq_div2|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|freq_div2|s_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|freq_div2|s_counter\(8));

-- Location: LCCOMB_X67_Y56_N20
\MasterMind_Core|freq_div2|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div2|Add0~18_combout\ = (\MasterMind_Core|freq_div2|s_counter\(9) & (!\MasterMind_Core|freq_div2|Add0~17\)) # (!\MasterMind_Core|freq_div2|s_counter\(9) & ((\MasterMind_Core|freq_div2|Add0~17\) # (GND)))
-- \MasterMind_Core|freq_div2|Add0~19\ = CARRY((!\MasterMind_Core|freq_div2|Add0~17\) # (!\MasterMind_Core|freq_div2|s_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|freq_div2|s_counter\(9),
	datad => VCC,
	cin => \MasterMind_Core|freq_div2|Add0~17\,
	combout => \MasterMind_Core|freq_div2|Add0~18_combout\,
	cout => \MasterMind_Core|freq_div2|Add0~19\);

-- Location: LCCOMB_X66_Y56_N16
\MasterMind_Core|freq_div2|s_counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div2|s_counter~7_combout\ = (!\MasterMind_Core|freq_div2|Equal1~3_combout\ & \MasterMind_Core|freq_div2|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|freq_div2|Equal1~3_combout\,
	datac => \MasterMind_Core|freq_div2|Add0~18_combout\,
	combout => \MasterMind_Core|freq_div2|s_counter~7_combout\);

-- Location: FF_X66_Y56_N17
\MasterMind_Core|freq_div2|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|freq_div2|s_counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|freq_div2|s_counter\(9));

-- Location: LCCOMB_X67_Y56_N22
\MasterMind_Core|freq_div2|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div2|Add0~20_combout\ = (\MasterMind_Core|freq_div2|s_counter\(10) & (\MasterMind_Core|freq_div2|Add0~19\ $ (GND))) # (!\MasterMind_Core|freq_div2|s_counter\(10) & (!\MasterMind_Core|freq_div2|Add0~19\ & VCC))
-- \MasterMind_Core|freq_div2|Add0~21\ = CARRY((\MasterMind_Core|freq_div2|s_counter\(10) & !\MasterMind_Core|freq_div2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|freq_div2|s_counter\(10),
	datad => VCC,
	cin => \MasterMind_Core|freq_div2|Add0~19\,
	combout => \MasterMind_Core|freq_div2|Add0~20_combout\,
	cout => \MasterMind_Core|freq_div2|Add0~21\);

-- Location: FF_X67_Y56_N23
\MasterMind_Core|freq_div2|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|freq_div2|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|freq_div2|s_counter\(10));

-- Location: LCCOMB_X67_Y56_N24
\MasterMind_Core|freq_div2|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div2|Add0~22_combout\ = (\MasterMind_Core|freq_div2|s_counter\(11) & (!\MasterMind_Core|freq_div2|Add0~21\)) # (!\MasterMind_Core|freq_div2|s_counter\(11) & ((\MasterMind_Core|freq_div2|Add0~21\) # (GND)))
-- \MasterMind_Core|freq_div2|Add0~23\ = CARRY((!\MasterMind_Core|freq_div2|Add0~21\) # (!\MasterMind_Core|freq_div2|s_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|freq_div2|s_counter\(11),
	datad => VCC,
	cin => \MasterMind_Core|freq_div2|Add0~21\,
	combout => \MasterMind_Core|freq_div2|Add0~22_combout\,
	cout => \MasterMind_Core|freq_div2|Add0~23\);

-- Location: LCCOMB_X66_Y56_N12
\MasterMind_Core|freq_div2|s_counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div2|s_counter~6_combout\ = (!\MasterMind_Core|freq_div2|Equal1~3_combout\ & \MasterMind_Core|freq_div2|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MasterMind_Core|freq_div2|Equal1~3_combout\,
	datad => \MasterMind_Core|freq_div2|Add0~22_combout\,
	combout => \MasterMind_Core|freq_div2|s_counter~6_combout\);

-- Location: FF_X66_Y56_N13
\MasterMind_Core|freq_div2|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|freq_div2|s_counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|freq_div2|s_counter\(11));

-- Location: LCCOMB_X67_Y56_N26
\MasterMind_Core|freq_div2|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div2|Add0~24_combout\ = (\MasterMind_Core|freq_div2|s_counter\(12) & (\MasterMind_Core|freq_div2|Add0~23\ $ (GND))) # (!\MasterMind_Core|freq_div2|s_counter\(12) & (!\MasterMind_Core|freq_div2|Add0~23\ & VCC))
-- \MasterMind_Core|freq_div2|Add0~25\ = CARRY((\MasterMind_Core|freq_div2|s_counter\(12) & !\MasterMind_Core|freq_div2|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|freq_div2|s_counter\(12),
	datad => VCC,
	cin => \MasterMind_Core|freq_div2|Add0~23\,
	combout => \MasterMind_Core|freq_div2|Add0~24_combout\,
	cout => \MasterMind_Core|freq_div2|Add0~25\);

-- Location: FF_X67_Y56_N27
\MasterMind_Core|freq_div2|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|freq_div2|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|freq_div2|s_counter\(12));

-- Location: LCCOMB_X67_Y56_N28
\MasterMind_Core|freq_div2|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div2|Add0~26_combout\ = (\MasterMind_Core|freq_div2|s_counter\(13) & (!\MasterMind_Core|freq_div2|Add0~25\)) # (!\MasterMind_Core|freq_div2|s_counter\(13) & ((\MasterMind_Core|freq_div2|Add0~25\) # (GND)))
-- \MasterMind_Core|freq_div2|Add0~27\ = CARRY((!\MasterMind_Core|freq_div2|Add0~25\) # (!\MasterMind_Core|freq_div2|s_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|freq_div2|s_counter\(13),
	datad => VCC,
	cin => \MasterMind_Core|freq_div2|Add0~25\,
	combout => \MasterMind_Core|freq_div2|Add0~26_combout\,
	cout => \MasterMind_Core|freq_div2|Add0~27\);

-- Location: FF_X67_Y56_N29
\MasterMind_Core|freq_div2|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|freq_div2|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|freq_div2|s_counter\(13));

-- Location: LCCOMB_X67_Y56_N30
\MasterMind_Core|freq_div2|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div2|Add0~28_combout\ = (\MasterMind_Core|freq_div2|s_counter\(14) & (\MasterMind_Core|freq_div2|Add0~27\ $ (GND))) # (!\MasterMind_Core|freq_div2|s_counter\(14) & (!\MasterMind_Core|freq_div2|Add0~27\ & VCC))
-- \MasterMind_Core|freq_div2|Add0~29\ = CARRY((\MasterMind_Core|freq_div2|s_counter\(14) & !\MasterMind_Core|freq_div2|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|freq_div2|s_counter\(14),
	datad => VCC,
	cin => \MasterMind_Core|freq_div2|Add0~27\,
	combout => \MasterMind_Core|freq_div2|Add0~28_combout\,
	cout => \MasterMind_Core|freq_div2|Add0~29\);

-- Location: LCCOMB_X66_Y56_N6
\MasterMind_Core|freq_div2|s_counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div2|s_counter~5_combout\ = (!\MasterMind_Core|freq_div2|Equal1~3_combout\ & \MasterMind_Core|freq_div2|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|freq_div2|Equal1~3_combout\,
	datac => \MasterMind_Core|freq_div2|Add0~28_combout\,
	combout => \MasterMind_Core|freq_div2|s_counter~5_combout\);

-- Location: FF_X66_Y56_N7
\MasterMind_Core|freq_div2|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|freq_div2|s_counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|freq_div2|s_counter\(14));

-- Location: LCCOMB_X66_Y56_N26
\MasterMind_Core|freq_div2|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div2|Equal1~1_combout\ = (\MasterMind_Core|freq_div2|s_counter\(11) & (!\MasterMind_Core|freq_div2|s_counter\(13) & (\MasterMind_Core|freq_div2|s_counter\(14) & !\MasterMind_Core|freq_div2|s_counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|freq_div2|s_counter\(11),
	datab => \MasterMind_Core|freq_div2|s_counter\(13),
	datac => \MasterMind_Core|freq_div2|s_counter\(14),
	datad => \MasterMind_Core|freq_div2|s_counter\(10),
	combout => \MasterMind_Core|freq_div2|Equal1~1_combout\);

-- Location: LCCOMB_X67_Y55_N0
\MasterMind_Core|freq_div2|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div2|Add0~30_combout\ = (\MasterMind_Core|freq_div2|s_counter\(15) & (!\MasterMind_Core|freq_div2|Add0~29\)) # (!\MasterMind_Core|freq_div2|s_counter\(15) & ((\MasterMind_Core|freq_div2|Add0~29\) # (GND)))
-- \MasterMind_Core|freq_div2|Add0~31\ = CARRY((!\MasterMind_Core|freq_div2|Add0~29\) # (!\MasterMind_Core|freq_div2|s_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|freq_div2|s_counter\(15),
	datad => VCC,
	cin => \MasterMind_Core|freq_div2|Add0~29\,
	combout => \MasterMind_Core|freq_div2|Add0~30_combout\,
	cout => \MasterMind_Core|freq_div2|Add0~31\);

-- Location: FF_X67_Y55_N1
\MasterMind_Core|freq_div2|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|freq_div2|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|freq_div2|s_counter\(15));

-- Location: LCCOMB_X67_Y55_N2
\MasterMind_Core|freq_div2|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div2|Add0~32_combout\ = (\MasterMind_Core|freq_div2|s_counter\(16) & (\MasterMind_Core|freq_div2|Add0~31\ $ (GND))) # (!\MasterMind_Core|freq_div2|s_counter\(16) & (!\MasterMind_Core|freq_div2|Add0~31\ & VCC))
-- \MasterMind_Core|freq_div2|Add0~33\ = CARRY((\MasterMind_Core|freq_div2|s_counter\(16) & !\MasterMind_Core|freq_div2|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|freq_div2|s_counter\(16),
	datad => VCC,
	cin => \MasterMind_Core|freq_div2|Add0~31\,
	combout => \MasterMind_Core|freq_div2|Add0~32_combout\,
	cout => \MasterMind_Core|freq_div2|Add0~33\);

-- Location: FF_X67_Y55_N3
\MasterMind_Core|freq_div2|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|freq_div2|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|freq_div2|s_counter\(16));

-- Location: LCCOMB_X67_Y55_N4
\MasterMind_Core|freq_div2|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div2|Add0~34_combout\ = (\MasterMind_Core|freq_div2|s_counter\(17) & (!\MasterMind_Core|freq_div2|Add0~33\)) # (!\MasterMind_Core|freq_div2|s_counter\(17) & ((\MasterMind_Core|freq_div2|Add0~33\) # (GND)))
-- \MasterMind_Core|freq_div2|Add0~35\ = CARRY((!\MasterMind_Core|freq_div2|Add0~33\) # (!\MasterMind_Core|freq_div2|s_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|freq_div2|s_counter\(17),
	datad => VCC,
	cin => \MasterMind_Core|freq_div2|Add0~33\,
	combout => \MasterMind_Core|freq_div2|Add0~34_combout\,
	cout => \MasterMind_Core|freq_div2|Add0~35\);

-- Location: FF_X67_Y55_N5
\MasterMind_Core|freq_div2|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|freq_div2|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|freq_div2|s_counter\(17));

-- Location: LCCOMB_X67_Y55_N6
\MasterMind_Core|freq_div2|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div2|Add0~36_combout\ = (\MasterMind_Core|freq_div2|s_counter\(18) & (\MasterMind_Core|freq_div2|Add0~35\ $ (GND))) # (!\MasterMind_Core|freq_div2|s_counter\(18) & (!\MasterMind_Core|freq_div2|Add0~35\ & VCC))
-- \MasterMind_Core|freq_div2|Add0~37\ = CARRY((\MasterMind_Core|freq_div2|s_counter\(18) & !\MasterMind_Core|freq_div2|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|freq_div2|s_counter\(18),
	datad => VCC,
	cin => \MasterMind_Core|freq_div2|Add0~35\,
	combout => \MasterMind_Core|freq_div2|Add0~36_combout\,
	cout => \MasterMind_Core|freq_div2|Add0~37\);

-- Location: LCCOMB_X66_Y55_N16
\MasterMind_Core|freq_div2|s_counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div2|s_counter~0_combout\ = (!\MasterMind_Core|freq_div2|Equal1~3_combout\ & \MasterMind_Core|freq_div2|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MasterMind_Core|freq_div2|Equal1~3_combout\,
	datad => \MasterMind_Core|freq_div2|Add0~36_combout\,
	combout => \MasterMind_Core|freq_div2|s_counter~0_combout\);

-- Location: FF_X66_Y55_N17
\MasterMind_Core|freq_div2|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|freq_div2|s_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|freq_div2|s_counter\(18));

-- Location: LCCOMB_X67_Y55_N8
\MasterMind_Core|freq_div2|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div2|Add0~38_combout\ = (\MasterMind_Core|freq_div2|s_counter\(19) & (!\MasterMind_Core|freq_div2|Add0~37\)) # (!\MasterMind_Core|freq_div2|s_counter\(19) & ((\MasterMind_Core|freq_div2|Add0~37\) # (GND)))
-- \MasterMind_Core|freq_div2|Add0~39\ = CARRY((!\MasterMind_Core|freq_div2|Add0~37\) # (!\MasterMind_Core|freq_div2|s_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|freq_div2|s_counter\(19),
	datad => VCC,
	cin => \MasterMind_Core|freq_div2|Add0~37\,
	combout => \MasterMind_Core|freq_div2|Add0~38_combout\,
	cout => \MasterMind_Core|freq_div2|Add0~39\);

-- Location: LCCOMB_X66_Y56_N28
\MasterMind_Core|freq_div2|s_counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div2|s_counter~4_combout\ = (!\MasterMind_Core|freq_div2|Equal1~3_combout\ & \MasterMind_Core|freq_div2|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|freq_div2|Equal1~3_combout\,
	datac => \MasterMind_Core|freq_div2|Add0~38_combout\,
	combout => \MasterMind_Core|freq_div2|s_counter~4_combout\);

-- Location: FF_X66_Y56_N29
\MasterMind_Core|freq_div2|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|freq_div2|s_counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|freq_div2|s_counter\(19));

-- Location: LCCOMB_X67_Y55_N10
\MasterMind_Core|freq_div2|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div2|Add0~40_combout\ = (\MasterMind_Core|freq_div2|s_counter\(20) & (\MasterMind_Core|freq_div2|Add0~39\ $ (GND))) # (!\MasterMind_Core|freq_div2|s_counter\(20) & (!\MasterMind_Core|freq_div2|Add0~39\ & VCC))
-- \MasterMind_Core|freq_div2|Add0~41\ = CARRY((\MasterMind_Core|freq_div2|s_counter\(20) & !\MasterMind_Core|freq_div2|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|freq_div2|s_counter\(20),
	datad => VCC,
	cin => \MasterMind_Core|freq_div2|Add0~39\,
	combout => \MasterMind_Core|freq_div2|Add0~40_combout\,
	cout => \MasterMind_Core|freq_div2|Add0~41\);

-- Location: FF_X67_Y55_N11
\MasterMind_Core|freq_div2|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|freq_div2|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|freq_div2|s_counter\(20));

-- Location: LCCOMB_X67_Y55_N12
\MasterMind_Core|freq_div2|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div2|Add0~42_combout\ = (\MasterMind_Core|freq_div2|s_counter\(21) & (!\MasterMind_Core|freq_div2|Add0~41\)) # (!\MasterMind_Core|freq_div2|s_counter\(21) & ((\MasterMind_Core|freq_div2|Add0~41\) # (GND)))
-- \MasterMind_Core|freq_div2|Add0~43\ = CARRY((!\MasterMind_Core|freq_div2|Add0~41\) # (!\MasterMind_Core|freq_div2|s_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|freq_div2|s_counter\(21),
	datad => VCC,
	cin => \MasterMind_Core|freq_div2|Add0~41\,
	combout => \MasterMind_Core|freq_div2|Add0~42_combout\,
	cout => \MasterMind_Core|freq_div2|Add0~43\);

-- Location: FF_X67_Y55_N13
\MasterMind_Core|freq_div2|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|freq_div2|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|freq_div2|s_counter\(21));

-- Location: LCCOMB_X67_Y55_N14
\MasterMind_Core|freq_div2|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div2|Add0~44_combout\ = (\MasterMind_Core|freq_div2|s_counter\(22) & (\MasterMind_Core|freq_div2|Add0~43\ $ (GND))) # (!\MasterMind_Core|freq_div2|s_counter\(22) & (!\MasterMind_Core|freq_div2|Add0~43\ & VCC))
-- \MasterMind_Core|freq_div2|Add0~45\ = CARRY((\MasterMind_Core|freq_div2|s_counter\(22) & !\MasterMind_Core|freq_div2|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|freq_div2|s_counter\(22),
	datad => VCC,
	cin => \MasterMind_Core|freq_div2|Add0~43\,
	combout => \MasterMind_Core|freq_div2|Add0~44_combout\,
	cout => \MasterMind_Core|freq_div2|Add0~45\);

-- Location: LCCOMB_X66_Y56_N18
\MasterMind_Core|freq_div2|s_counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div2|s_counter~3_combout\ = (!\MasterMind_Core|freq_div2|Equal1~3_combout\ & \MasterMind_Core|freq_div2|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MasterMind_Core|freq_div2|Equal1~3_combout\,
	datad => \MasterMind_Core|freq_div2|Add0~44_combout\,
	combout => \MasterMind_Core|freq_div2|s_counter~3_combout\);

-- Location: FF_X66_Y56_N19
\MasterMind_Core|freq_div2|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|freq_div2|s_counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|freq_div2|s_counter\(22));

-- Location: LCCOMB_X66_Y56_N8
\MasterMind_Core|freq_div2|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div2|Equal1~0_combout\ = (!\MasterMind_Core|freq_div2|s_counter\(21) & (\MasterMind_Core|freq_div2|s_counter\(19) & (!\MasterMind_Core|freq_div2|s_counter\(17) & \MasterMind_Core|freq_div2|s_counter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|freq_div2|s_counter\(21),
	datab => \MasterMind_Core|freq_div2|s_counter\(19),
	datac => \MasterMind_Core|freq_div2|s_counter\(17),
	datad => \MasterMind_Core|freq_div2|s_counter\(22),
	combout => \MasterMind_Core|freq_div2|Equal1~0_combout\);

-- Location: LCCOMB_X66_Y56_N14
\MasterMind_Core|freq_div2|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div2|Equal1~2_combout\ = (\MasterMind_Core|freq_div2|s_counter\(9) & (\MasterMind_Core|freq_div2|s_counter\(5) & !\MasterMind_Core|freq_div2|s_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|freq_div2|s_counter\(9),
	datac => \MasterMind_Core|freq_div2|s_counter\(5),
	datad => \MasterMind_Core|freq_div2|s_counter\(7),
	combout => \MasterMind_Core|freq_div2|Equal1~2_combout\);

-- Location: LCCOMB_X66_Y55_N12
\MasterMind_Core|freq_div2|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div2|Equal0~4_combout\ = (\MasterMind_Core|freq_div2|s_counter\(8) & (!\MasterMind_Core|freq_div2|s_counter\(6) & (\MasterMind_Core|freq_div2|s_counter\(4) & !\MasterMind_Core|freq_div2|s_counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|freq_div2|s_counter\(8),
	datab => \MasterMind_Core|freq_div2|s_counter\(6),
	datac => \MasterMind_Core|freq_div2|s_counter\(4),
	datad => \MasterMind_Core|freq_div2|s_counter\(12),
	combout => \MasterMind_Core|freq_div2|Equal0~4_combout\);

-- Location: LCCOMB_X67_Y55_N16
\MasterMind_Core|freq_div2|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div2|Add0~46_combout\ = (\MasterMind_Core|freq_div2|s_counter\(23) & (!\MasterMind_Core|freq_div2|Add0~45\)) # (!\MasterMind_Core|freq_div2|s_counter\(23) & ((\MasterMind_Core|freq_div2|Add0~45\) # (GND)))
-- \MasterMind_Core|freq_div2|Add0~47\ = CARRY((!\MasterMind_Core|freq_div2|Add0~45\) # (!\MasterMind_Core|freq_div2|s_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|freq_div2|s_counter\(23),
	datad => VCC,
	cin => \MasterMind_Core|freq_div2|Add0~45\,
	combout => \MasterMind_Core|freq_div2|Add0~46_combout\,
	cout => \MasterMind_Core|freq_div2|Add0~47\);

-- Location: FF_X67_Y55_N17
\MasterMind_Core|freq_div2|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|freq_div2|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|freq_div2|s_counter\(23));

-- Location: LCCOMB_X67_Y55_N18
\MasterMind_Core|freq_div2|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div2|Add0~48_combout\ = (\MasterMind_Core|freq_div2|s_counter\(24) & (\MasterMind_Core|freq_div2|Add0~47\ $ (GND))) # (!\MasterMind_Core|freq_div2|s_counter\(24) & (!\MasterMind_Core|freq_div2|Add0~47\ & VCC))
-- \MasterMind_Core|freq_div2|Add0~49\ = CARRY((\MasterMind_Core|freq_div2|s_counter\(24) & !\MasterMind_Core|freq_div2|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|freq_div2|s_counter\(24),
	datad => VCC,
	cin => \MasterMind_Core|freq_div2|Add0~47\,
	combout => \MasterMind_Core|freq_div2|Add0~48_combout\,
	cout => \MasterMind_Core|freq_div2|Add0~49\);

-- Location: FF_X67_Y55_N19
\MasterMind_Core|freq_div2|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|freq_div2|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|freq_div2|s_counter\(24));

-- Location: LCCOMB_X67_Y55_N20
\MasterMind_Core|freq_div2|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div2|Add0~50_combout\ = (\MasterMind_Core|freq_div2|s_counter\(25) & (!\MasterMind_Core|freq_div2|Add0~49\)) # (!\MasterMind_Core|freq_div2|s_counter\(25) & ((\MasterMind_Core|freq_div2|Add0~49\) # (GND)))
-- \MasterMind_Core|freq_div2|Add0~51\ = CARRY((!\MasterMind_Core|freq_div2|Add0~49\) # (!\MasterMind_Core|freq_div2|s_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|freq_div2|s_counter\(25),
	datad => VCC,
	cin => \MasterMind_Core|freq_div2|Add0~49\,
	combout => \MasterMind_Core|freq_div2|Add0~50_combout\,
	cout => \MasterMind_Core|freq_div2|Add0~51\);

-- Location: FF_X67_Y55_N21
\MasterMind_Core|freq_div2|s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|freq_div2|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|freq_div2|s_counter\(25));

-- Location: LCCOMB_X67_Y55_N22
\MasterMind_Core|freq_div2|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div2|Add0~52_combout\ = (\MasterMind_Core|freq_div2|s_counter\(26) & (\MasterMind_Core|freq_div2|Add0~51\ $ (GND))) # (!\MasterMind_Core|freq_div2|s_counter\(26) & (!\MasterMind_Core|freq_div2|Add0~51\ & VCC))
-- \MasterMind_Core|freq_div2|Add0~53\ = CARRY((\MasterMind_Core|freq_div2|s_counter\(26) & !\MasterMind_Core|freq_div2|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|freq_div2|s_counter\(26),
	datad => VCC,
	cin => \MasterMind_Core|freq_div2|Add0~51\,
	combout => \MasterMind_Core|freq_div2|Add0~52_combout\,
	cout => \MasterMind_Core|freq_div2|Add0~53\);

-- Location: FF_X67_Y55_N23
\MasterMind_Core|freq_div2|s_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|freq_div2|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|freq_div2|s_counter\(26));

-- Location: LCCOMB_X67_Y55_N24
\MasterMind_Core|freq_div2|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div2|Add0~54_combout\ = (\MasterMind_Core|freq_div2|s_counter\(27) & (!\MasterMind_Core|freq_div2|Add0~53\)) # (!\MasterMind_Core|freq_div2|s_counter\(27) & ((\MasterMind_Core|freq_div2|Add0~53\) # (GND)))
-- \MasterMind_Core|freq_div2|Add0~55\ = CARRY((!\MasterMind_Core|freq_div2|Add0~53\) # (!\MasterMind_Core|freq_div2|s_counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|freq_div2|s_counter\(27),
	datad => VCC,
	cin => \MasterMind_Core|freq_div2|Add0~53\,
	combout => \MasterMind_Core|freq_div2|Add0~54_combout\,
	cout => \MasterMind_Core|freq_div2|Add0~55\);

-- Location: FF_X67_Y55_N25
\MasterMind_Core|freq_div2|s_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|freq_div2|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|freq_div2|s_counter\(27));

-- Location: LCCOMB_X67_Y55_N26
\MasterMind_Core|freq_div2|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div2|Add0~56_combout\ = (\MasterMind_Core|freq_div2|s_counter\(28) & (\MasterMind_Core|freq_div2|Add0~55\ $ (GND))) # (!\MasterMind_Core|freq_div2|s_counter\(28) & (!\MasterMind_Core|freq_div2|Add0~55\ & VCC))
-- \MasterMind_Core|freq_div2|Add0~57\ = CARRY((\MasterMind_Core|freq_div2|s_counter\(28) & !\MasterMind_Core|freq_div2|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|freq_div2|s_counter\(28),
	datad => VCC,
	cin => \MasterMind_Core|freq_div2|Add0~55\,
	combout => \MasterMind_Core|freq_div2|Add0~56_combout\,
	cout => \MasterMind_Core|freq_div2|Add0~57\);

-- Location: FF_X67_Y55_N27
\MasterMind_Core|freq_div2|s_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|freq_div2|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|freq_div2|s_counter\(28));

-- Location: LCCOMB_X67_Y55_N28
\MasterMind_Core|freq_div2|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div2|Add0~58_combout\ = (\MasterMind_Core|freq_div2|s_counter\(29) & (!\MasterMind_Core|freq_div2|Add0~57\)) # (!\MasterMind_Core|freq_div2|s_counter\(29) & ((\MasterMind_Core|freq_div2|Add0~57\) # (GND)))
-- \MasterMind_Core|freq_div2|Add0~59\ = CARRY((!\MasterMind_Core|freq_div2|Add0~57\) # (!\MasterMind_Core|freq_div2|s_counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|freq_div2|s_counter\(29),
	datad => VCC,
	cin => \MasterMind_Core|freq_div2|Add0~57\,
	combout => \MasterMind_Core|freq_div2|Add0~58_combout\,
	cout => \MasterMind_Core|freq_div2|Add0~59\);

-- Location: FF_X67_Y55_N29
\MasterMind_Core|freq_div2|s_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|freq_div2|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|freq_div2|s_counter\(29));

-- Location: LCCOMB_X67_Y55_N30
\MasterMind_Core|freq_div2|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div2|Add0~60_combout\ = \MasterMind_Core|freq_div2|s_counter\(30) $ (!\MasterMind_Core|freq_div2|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|freq_div2|s_counter\(30),
	cin => \MasterMind_Core|freq_div2|Add0~59\,
	combout => \MasterMind_Core|freq_div2|Add0~60_combout\);

-- Location: FF_X67_Y55_N31
\MasterMind_Core|freq_div2|s_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|freq_div2|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|freq_div2|s_counter\(30));

-- Location: LCCOMB_X66_Y55_N28
\MasterMind_Core|freq_div2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div2|Equal0~0_combout\ = (!\MasterMind_Core|freq_div2|s_counter\(30) & (!\MasterMind_Core|freq_div2|s_counter\(28) & (!\MasterMind_Core|freq_div2|s_counter\(29) & !\MasterMind_Core|freq_div2|s_counter\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|freq_div2|s_counter\(30),
	datab => \MasterMind_Core|freq_div2|s_counter\(28),
	datac => \MasterMind_Core|freq_div2|s_counter\(29),
	datad => \MasterMind_Core|freq_div2|s_counter\(27),
	combout => \MasterMind_Core|freq_div2|Equal0~0_combout\);

-- Location: LCCOMB_X66_Y55_N14
\MasterMind_Core|freq_div2|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div2|Equal0~5_combout\ = (!\MasterMind_Core|freq_div2|s_counter\(25) & (\MasterMind_Core|freq_div2|s_counter\(3) & (\MasterMind_Core|freq_div2|s_counter\(2) & !\MasterMind_Core|freq_div2|s_counter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|freq_div2|s_counter\(25),
	datab => \MasterMind_Core|freq_div2|s_counter\(3),
	datac => \MasterMind_Core|freq_div2|s_counter\(2),
	datad => \MasterMind_Core|freq_div2|s_counter\(26),
	combout => \MasterMind_Core|freq_div2|Equal0~5_combout\);

-- Location: LCCOMB_X66_Y55_N30
\MasterMind_Core|freq_div2|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div2|Equal0~2_combout\ = (!\MasterMind_Core|freq_div2|s_counter\(20) & \MasterMind_Core|freq_div2|s_counter\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MasterMind_Core|freq_div2|s_counter\(20),
	datad => \MasterMind_Core|freq_div2|s_counter\(18),
	combout => \MasterMind_Core|freq_div2|Equal0~2_combout\);

-- Location: LCCOMB_X66_Y55_N6
\MasterMind_Core|freq_div2|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div2|Equal0~1_combout\ = (!\MasterMind_Core|freq_div2|s_counter\(23) & (!\MasterMind_Core|freq_div2|s_counter\(24) & (\MasterMind_Core|freq_div2|s_counter\(1) & \MasterMind_Core|freq_div2|s_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|freq_div2|s_counter\(23),
	datab => \MasterMind_Core|freq_div2|s_counter\(24),
	datac => \MasterMind_Core|freq_div2|s_counter\(1),
	datad => \MasterMind_Core|freq_div2|s_counter\(0),
	combout => \MasterMind_Core|freq_div2|Equal0~1_combout\);

-- Location: LCCOMB_X66_Y55_N20
\MasterMind_Core|freq_div2|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div2|Equal0~3_combout\ = (!\MasterMind_Core|freq_div2|s_counter\(16) & (!\MasterMind_Core|freq_div2|s_counter\(15) & (\MasterMind_Core|freq_div2|Equal0~2_combout\ & \MasterMind_Core|freq_div2|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|freq_div2|s_counter\(16),
	datab => \MasterMind_Core|freq_div2|s_counter\(15),
	datac => \MasterMind_Core|freq_div2|Equal0~2_combout\,
	datad => \MasterMind_Core|freq_div2|Equal0~1_combout\,
	combout => \MasterMind_Core|freq_div2|Equal0~3_combout\);

-- Location: LCCOMB_X66_Y55_N24
\MasterMind_Core|freq_div2|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div2|Equal0~6_combout\ = (\MasterMind_Core|freq_div2|Equal0~4_combout\ & (\MasterMind_Core|freq_div2|Equal0~0_combout\ & (\MasterMind_Core|freq_div2|Equal0~5_combout\ & \MasterMind_Core|freq_div2|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|freq_div2|Equal0~4_combout\,
	datab => \MasterMind_Core|freq_div2|Equal0~0_combout\,
	datac => \MasterMind_Core|freq_div2|Equal0~5_combout\,
	datad => \MasterMind_Core|freq_div2|Equal0~3_combout\,
	combout => \MasterMind_Core|freq_div2|Equal0~6_combout\);

-- Location: LCCOMB_X66_Y56_N30
\MasterMind_Core|freq_div2|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div2|Equal1~3_combout\ = (\MasterMind_Core|freq_div2|Equal1~1_combout\ & (\MasterMind_Core|freq_div2|Equal1~0_combout\ & (\MasterMind_Core|freq_div2|Equal1~2_combout\ & \MasterMind_Core|freq_div2|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|freq_div2|Equal1~1_combout\,
	datab => \MasterMind_Core|freq_div2|Equal1~0_combout\,
	datac => \MasterMind_Core|freq_div2|Equal1~2_combout\,
	datad => \MasterMind_Core|freq_div2|Equal0~6_combout\,
	combout => \MasterMind_Core|freq_div2|Equal1~3_combout\);

-- Location: LCCOMB_X67_Y56_N0
\MasterMind_Core|freq_div2|s_counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div2|s_counter~2_combout\ = (\MasterMind_Core|freq_div2|Add0~12_combout\ & !\MasterMind_Core|freq_div2|Equal1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MasterMind_Core|freq_div2|Add0~12_combout\,
	datad => \MasterMind_Core|freq_div2|Equal1~3_combout\,
	combout => \MasterMind_Core|freq_div2|s_counter~2_combout\);

-- Location: FF_X67_Y56_N1
\MasterMind_Core|freq_div2|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|freq_div2|s_counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|freq_div2|s_counter\(6));

-- Location: FF_X67_Y56_N17
\MasterMind_Core|freq_div2|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|freq_div2|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|freq_div2|s_counter\(7));

-- Location: LCCOMB_X66_Y56_N2
\MasterMind_Core|freq_div2|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div2|Equal0~8_combout\ = (!\MasterMind_Core|freq_div2|s_counter\(11) & (\MasterMind_Core|freq_div2|s_counter\(13) & (!\MasterMind_Core|freq_div2|s_counter\(14) & \MasterMind_Core|freq_div2|s_counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|freq_div2|s_counter\(11),
	datab => \MasterMind_Core|freq_div2|s_counter\(13),
	datac => \MasterMind_Core|freq_div2|s_counter\(14),
	datad => \MasterMind_Core|freq_div2|s_counter\(10),
	combout => \MasterMind_Core|freq_div2|Equal0~8_combout\);

-- Location: LCCOMB_X66_Y56_N10
\MasterMind_Core|freq_div2|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div2|Equal0~9_combout\ = (!\MasterMind_Core|freq_div2|s_counter\(5) & (\MasterMind_Core|freq_div2|s_counter\(7) & (!\MasterMind_Core|freq_div2|s_counter\(9) & \MasterMind_Core|freq_div2|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|freq_div2|s_counter\(5),
	datab => \MasterMind_Core|freq_div2|s_counter\(7),
	datac => \MasterMind_Core|freq_div2|s_counter\(9),
	datad => \MasterMind_Core|freq_div2|Equal0~8_combout\,
	combout => \MasterMind_Core|freq_div2|Equal0~9_combout\);

-- Location: LCCOMB_X66_Y56_N20
\MasterMind_Core|freq_div2|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div2|Equal0~7_combout\ = (\MasterMind_Core|freq_div2|s_counter\(21) & (!\MasterMind_Core|freq_div2|s_counter\(19) & (\MasterMind_Core|freq_div2|s_counter\(17) & !\MasterMind_Core|freq_div2|s_counter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|freq_div2|s_counter\(21),
	datab => \MasterMind_Core|freq_div2|s_counter\(19),
	datac => \MasterMind_Core|freq_div2|s_counter\(17),
	datad => \MasterMind_Core|freq_div2|s_counter\(22),
	combout => \MasterMind_Core|freq_div2|Equal0~7_combout\);

-- Location: LCCOMB_X66_Y56_N22
\MasterMind_Core|freq_div2|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div2|clkOut~0_combout\ = (!\MasterMind_Core|freq_div2|Equal1~3_combout\ & \MasterMind_Core|freq_div2|clkOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MasterMind_Core|freq_div2|Equal1~3_combout\,
	datad => \MasterMind_Core|freq_div2|clkOut~q\,
	combout => \MasterMind_Core|freq_div2|clkOut~0_combout\);

-- Location: LCCOMB_X66_Y56_N24
\MasterMind_Core|freq_div2|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div2|clkOut~1_combout\ = (\MasterMind_Core|freq_div2|clkOut~0_combout\) # ((\MasterMind_Core|freq_div2|Equal0~9_combout\ & (\MasterMind_Core|freq_div2|Equal0~7_combout\ & \MasterMind_Core|freq_div2|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|freq_div2|Equal0~9_combout\,
	datab => \MasterMind_Core|freq_div2|Equal0~7_combout\,
	datac => \MasterMind_Core|freq_div2|clkOut~0_combout\,
	datad => \MasterMind_Core|freq_div2|Equal0~6_combout\,
	combout => \MasterMind_Core|freq_div2|clkOut~1_combout\);

-- Location: FF_X66_Y56_N25
\MasterMind_Core|freq_div2|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|freq_div2|clkOut~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|freq_div2|clkOut~q\);

-- Location: CLKCTRL_G10
\MasterMind_Core|freq_div2|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \MasterMind_Core|freq_div2|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \MasterMind_Core|freq_div2|clkOut~clkctrl_outclk\);

-- Location: LCCOMB_X82_Y19_N22
\MasterMind_Core|deb_3|s_dirty_In[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|deb_3|s_dirty_In[5]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \MasterMind_Core|deb_3|s_dirty_In[5]~feeder_combout\);

-- Location: IOIBUF_X115_Y35_N22
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: FF_X82_Y19_N23
\MasterMind_Core|deb_3|s_dirty_In[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|freq_div2|clkOut~clkctrl_outclk\,
	d => \MasterMind_Core|deb_3|s_dirty_In[5]~feeder_combout\,
	clrn => \ALT_INV_KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|deb_3|s_dirty_In\(5));

-- Location: CLKCTRL_G8
\MasterMind_Core|deb_3|s_dirty_In[5]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \MasterMind_Core|deb_3|s_dirty_In[5]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \MasterMind_Core|deb_3|s_dirty_In[5]~clkctrl_outclk\);

-- Location: LCCOMB_X84_Y19_N6
\MasterMind_Core|checkEnd|pState.S0~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|checkEnd|pState.S0~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \MasterMind_Core|checkEnd|pState.S0~feeder_combout\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: FF_X84_Y19_N7
\MasterMind_Core|checkEnd|pState.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|deb_3|s_dirty_In[5]~clkctrl_outclk\,
	d => \MasterMind_Core|checkEnd|pState.S0~feeder_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|checkEnd|pState.S0~q\);

-- Location: LCCOMB_X81_Y19_N0
\MasterMind_Core|checkEnd|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|checkEnd|Selector12~0_combout\ = (\MasterMind_Core|checkEnd|pState.S1~q\) # ((\MasterMind_Core|bin7segdec2|Equal7~0_combout\ & \MasterMind_Core|checkEnd|pState.S3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|bin7segdec2|Equal7~0_combout\,
	datac => \MasterMind_Core|checkEnd|pState.S1~q\,
	datad => \MasterMind_Core|checkEnd|pState.S3~q\,
	combout => \MasterMind_Core|checkEnd|Selector12~0_combout\);

-- Location: FF_X81_Y19_N1
\MasterMind_Core|checkEnd|pState.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|deb_3|s_dirty_In\(5),
	d => \MasterMind_Core|checkEnd|Selector12~0_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|checkEnd|pState.S1~q\);

-- Location: LCCOMB_X82_Y21_N20
\MasterMind_Core|compare|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Selector16~0_combout\ = (\MasterMind_Core|compare|NState.S1~q\) # ((!\SW[0]~input_o\ & !\MasterMind_Core|deb_3|s_dirty_In\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datac => \MasterMind_Core|compare|NState.S1~q\,
	datad => \MasterMind_Core|deb_3|s_dirty_In\(5),
	combout => \MasterMind_Core|compare|Selector16~0_combout\);

-- Location: FF_X82_Y21_N27
\MasterMind_Core|compare|NState.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \MasterMind_Core|compare|Selector16~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|compare|NState.S0~q\);

-- Location: LCCOMB_X82_Y21_N26
\MasterMind_Core|compare|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Selector17~0_combout\ = (!\SW[0]~input_o\ & (!\MasterMind_Core|compare|NState.S0~q\ & !\MasterMind_Core|deb_3|s_dirty_In\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datac => \MasterMind_Core|compare|NState.S0~q\,
	datad => \MasterMind_Core|deb_3|s_dirty_In\(5),
	combout => \MasterMind_Core|compare|Selector17~0_combout\);

-- Location: FF_X82_Y21_N21
\MasterMind_Core|compare|NState.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \MasterMind_Core|compare|Selector17~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|compare|NState.S1~q\);

-- Location: LCCOMB_X82_Y21_N8
\MasterMind_Core|compare|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Selector18~0_combout\ = (\MasterMind_Core|compare|NState.S1~q\) # ((\MasterMind_Core|compare|NState.S2~q\ & (!\MasterMind_Core|deb_3|s_dirty_In\(5) & !\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|NState.S2~q\,
	datab => \MasterMind_Core|compare|NState.S1~q\,
	datac => \MasterMind_Core|deb_3|s_dirty_In\(5),
	datad => \SW[0]~input_o\,
	combout => \MasterMind_Core|compare|Selector18~0_combout\);

-- Location: LCCOMB_X82_Y21_N22
\MasterMind_Core|compare|NState.S2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|NState.S2~feeder_combout\ = \MasterMind_Core|compare|Selector18~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MasterMind_Core|compare|Selector18~0_combout\,
	combout => \MasterMind_Core|compare|NState.S2~feeder_combout\);

-- Location: FF_X82_Y21_N23
\MasterMind_Core|compare|NState.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|compare|NState.S2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|compare|NState.S2~q\);

-- Location: LCCOMB_X84_Y22_N0
\MasterMind_Core|Rand_Num|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Rand_Num|Selector0~0_combout\ = (\SW[0]~input_o\) # ((!\MasterMind_Core|Rand_Num|pState.S2~q\ & ((\MasterMind_Core|Rand_Num|pState.S0~q\) # (!\KEY[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[3]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \MasterMind_Core|Rand_Num|pState.S0~q\,
	datad => \MasterMind_Core|Rand_Num|pState.S2~q\,
	combout => \MasterMind_Core|Rand_Num|Selector0~0_combout\);

-- Location: FF_X84_Y22_N1
\MasterMind_Core|Rand_Num|pState.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|Rand_Num|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|Rand_Num|pState.S0~q\);

-- Location: LCCOMB_X84_Y22_N24
\MasterMind_Core|Rand_Num|nState.S2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Rand_Num|nState.S2~0_combout\ = (\SW[0]~input_o\ & ((\KEY[3]~input_o\) # (\MasterMind_Core|Rand_Num|pState.S0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[3]~input_o\,
	datab => \MasterMind_Core|Rand_Num|pState.S0~q\,
	datac => \SW[0]~input_o\,
	combout => \MasterMind_Core|Rand_Num|nState.S2~0_combout\);

-- Location: FF_X84_Y22_N25
\MasterMind_Core|Rand_Num|pState.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|Rand_Num|nState.S2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|Rand_Num|pState.S2~q\);

-- Location: LCCOMB_X81_Y24_N4
\MasterMind_Core|Counter9999|s_count3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9999|s_count3~0_combout\ = (!\MasterMind_Core|Rand_Num|pState.S2~q\ & !\MasterMind_Core|Counter9999|s_count3\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|Rand_Num|pState.S2~q\,
	datac => \MasterMind_Core|Counter9999|s_count3\(0),
	combout => \MasterMind_Core|Counter9999|s_count3~0_combout\);

-- Location: LCCOMB_X82_Y23_N8
\MasterMind_Core|Counter9999|s_count1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9999|s_count1~0_combout\ = (!\MasterMind_Core|Counter9999|s_count1\(0) & !\MasterMind_Core|Rand_Num|pState.S2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MasterMind_Core|Counter9999|s_count1\(0),
	datad => \MasterMind_Core|Rand_Num|pState.S2~q\,
	combout => \MasterMind_Core|Counter9999|s_count1~0_combout\);

-- Location: LCCOMB_X84_Y22_N14
\MasterMind_Core|Counter9999|s_count0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9999|s_count0~0_combout\ = (!\MasterMind_Core|Counter9999|s_count0\(0) & !\MasterMind_Core|Rand_Num|pState.S2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MasterMind_Core|Counter9999|s_count0\(0),
	datad => \MasterMind_Core|Rand_Num|pState.S2~q\,
	combout => \MasterMind_Core|Counter9999|s_count0~0_combout\);

-- Location: LCCOMB_X84_Y22_N28
\MasterMind_Core|Rand_Num|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Rand_Num|Selector1~0_combout\ = (\KEY[3]~input_o\ & (!\SW[0]~input_o\ & (\MasterMind_Core|Rand_Num|pState.S1~q\))) # (!\KEY[3]~input_o\ & (((!\SW[0]~input_o\ & \MasterMind_Core|Rand_Num|pState.S1~q\)) # 
-- (!\MasterMind_Core|Rand_Num|pState.S0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[3]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \MasterMind_Core|Rand_Num|pState.S1~q\,
	datad => \MasterMind_Core|Rand_Num|pState.S0~q\,
	combout => \MasterMind_Core|Rand_Num|Selector1~0_combout\);

-- Location: FF_X84_Y22_N29
\MasterMind_Core|Rand_Num|pState.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|Rand_Num|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|Rand_Num|pState.S1~q\);

-- Location: FF_X83_Y22_N1
\MasterMind_Core|Counter9999|s_count0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \MasterMind_Core|Counter9999|s_count0~0_combout\,
	sload => VCC,
	ena => \MasterMind_Core|Rand_Num|ALT_INV_pState.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|Counter9999|s_count0\(0));

-- Location: LCCOMB_X83_Y22_N6
\MasterMind_Core|Counter9999|s_count0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9999|s_count0~1_combout\ = (\MasterMind_Core|Counter9999|Equal0~0_combout\ & (!\MasterMind_Core|Rand_Num|pState.S2~q\ & (\MasterMind_Core|Counter9999|s_count0\(1) $ (\MasterMind_Core|Counter9999|s_count0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Counter9999|Equal0~0_combout\,
	datab => \MasterMind_Core|Rand_Num|pState.S2~q\,
	datac => \MasterMind_Core|Counter9999|s_count0\(1),
	datad => \MasterMind_Core|Counter9999|s_count0\(0),
	combout => \MasterMind_Core|Counter9999|s_count0~1_combout\);

-- Location: FF_X83_Y22_N7
\MasterMind_Core|Counter9999|s_count0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|Counter9999|s_count0~1_combout\,
	ena => \MasterMind_Core|Rand_Num|ALT_INV_pState.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|Counter9999|s_count0\(1));

-- Location: LCCOMB_X82_Y22_N18
\MasterMind_Core|Counter9999|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9999|Add3~0_combout\ = \MasterMind_Core|Counter9999|s_count0\(2) $ (((\MasterMind_Core|Counter9999|s_count0\(0) & \MasterMind_Core|Counter9999|s_count0\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|Counter9999|s_count0\(2),
	datac => \MasterMind_Core|Counter9999|s_count0\(0),
	datad => \MasterMind_Core|Counter9999|s_count0\(1),
	combout => \MasterMind_Core|Counter9999|Add3~0_combout\);

-- Location: LCCOMB_X83_Y22_N16
\MasterMind_Core|Counter9999|s_count0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9999|s_count0~2_combout\ = (\MasterMind_Core|Counter9999|Add3~0_combout\ & (!\MasterMind_Core|Rand_Num|pState.S2~q\ & \MasterMind_Core|Counter9999|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Counter9999|Add3~0_combout\,
	datab => \MasterMind_Core|Rand_Num|pState.S2~q\,
	datad => \MasterMind_Core|Counter9999|Equal0~0_combout\,
	combout => \MasterMind_Core|Counter9999|s_count0~2_combout\);

-- Location: FF_X83_Y22_N17
\MasterMind_Core|Counter9999|s_count0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|Counter9999|s_count0~2_combout\,
	ena => \MasterMind_Core|Rand_Num|ALT_INV_pState.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|Counter9999|s_count0\(2));

-- Location: LCCOMB_X84_Y22_N10
\MasterMind_Core|Counter9999|Add3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9999|Add3~1_combout\ = \MasterMind_Core|Counter9999|s_count0\(3) $ (((\MasterMind_Core|Counter9999|s_count0\(2) & (\MasterMind_Core|Counter9999|s_count0\(0) & \MasterMind_Core|Counter9999|s_count0\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Counter9999|s_count0\(3),
	datab => \MasterMind_Core|Counter9999|s_count0\(2),
	datac => \MasterMind_Core|Counter9999|s_count0\(0),
	datad => \MasterMind_Core|Counter9999|s_count0\(1),
	combout => \MasterMind_Core|Counter9999|Add3~1_combout\);

-- Location: LCCOMB_X83_Y22_N2
\MasterMind_Core|Counter9999|s_count0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9999|s_count0~3_combout\ = (\MasterMind_Core|Counter9999|Equal0~0_combout\ & (\MasterMind_Core|Counter9999|Add3~1_combout\ & !\MasterMind_Core|Rand_Num|pState.S2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Counter9999|Equal0~0_combout\,
	datac => \MasterMind_Core|Counter9999|Add3~1_combout\,
	datad => \MasterMind_Core|Rand_Num|pState.S2~q\,
	combout => \MasterMind_Core|Counter9999|s_count0~3_combout\);

-- Location: FF_X83_Y22_N3
\MasterMind_Core|Counter9999|s_count0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|Counter9999|s_count0~3_combout\,
	ena => \MasterMind_Core|Rand_Num|ALT_INV_pState.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|Counter9999|s_count0\(3));

-- Location: LCCOMB_X83_Y22_N0
\MasterMind_Core|Counter9999|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9999|Equal0~0_combout\ = (\MasterMind_Core|Counter9999|s_count0\(1)) # ((\MasterMind_Core|Counter9999|s_count0\(2)) # ((!\MasterMind_Core|Counter9999|s_count0\(3)) # (!\MasterMind_Core|Counter9999|s_count0\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Counter9999|s_count0\(1),
	datab => \MasterMind_Core|Counter9999|s_count0\(2),
	datac => \MasterMind_Core|Counter9999|s_count0\(0),
	datad => \MasterMind_Core|Counter9999|s_count0\(3),
	combout => \MasterMind_Core|Counter9999|Equal0~0_combout\);

-- Location: LCCOMB_X81_Y23_N10
\MasterMind_Core|Counter9999|s_count1[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9999|s_count1[3]~1_combout\ = (\MasterMind_Core|Rand_Num|pState.S2~q\) # ((!\MasterMind_Core|Rand_Num|pState.S0~q\ & !\MasterMind_Core|Counter9999|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Rand_Num|pState.S0~q\,
	datac => \MasterMind_Core|Rand_Num|pState.S2~q\,
	datad => \MasterMind_Core|Counter9999|Equal0~0_combout\,
	combout => \MasterMind_Core|Counter9999|s_count1[3]~1_combout\);

-- Location: FF_X82_Y23_N9
\MasterMind_Core|Counter9999|s_count1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|Counter9999|s_count1~0_combout\,
	ena => \MasterMind_Core|Counter9999|s_count1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|Counter9999|s_count1\(0));

-- Location: LCCOMB_X81_Y23_N22
\MasterMind_Core|Counter9999|s_count1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9999|s_count1~2_combout\ = (\MasterMind_Core|Counter9999|Equal1~0_combout\ & (!\MasterMind_Core|Rand_Num|pState.S2~q\ & (\MasterMind_Core|Counter9999|s_count1\(1) $ (\MasterMind_Core|Counter9999|s_count1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Counter9999|s_count1\(1),
	datab => \MasterMind_Core|Counter9999|Equal1~0_combout\,
	datac => \MasterMind_Core|Rand_Num|pState.S2~q\,
	datad => \MasterMind_Core|Counter9999|s_count1\(0),
	combout => \MasterMind_Core|Counter9999|s_count1~2_combout\);

-- Location: FF_X82_Y23_N23
\MasterMind_Core|Counter9999|s_count1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \MasterMind_Core|Counter9999|s_count1~2_combout\,
	sload => VCC,
	ena => \MasterMind_Core|Counter9999|s_count1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|Counter9999|s_count1\(1));

-- Location: LCCOMB_X81_Y23_N12
\MasterMind_Core|Counter9999|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9999|Add2~0_combout\ = \MasterMind_Core|Counter9999|s_count1\(2) $ (((\MasterMind_Core|Counter9999|s_count1\(1) & \MasterMind_Core|Counter9999|s_count1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Counter9999|s_count1\(1),
	datab => \MasterMind_Core|Counter9999|s_count1\(0),
	datac => \MasterMind_Core|Counter9999|s_count1\(2),
	combout => \MasterMind_Core|Counter9999|Add2~0_combout\);

-- Location: LCCOMB_X81_Y23_N18
\MasterMind_Core|Counter9999|s_count1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9999|s_count1~3_combout\ = (\MasterMind_Core|Counter9999|Equal1~0_combout\ & (!\MasterMind_Core|Rand_Num|pState.S2~q\ & \MasterMind_Core|Counter9999|Add2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|Counter9999|Equal1~0_combout\,
	datac => \MasterMind_Core|Rand_Num|pState.S2~q\,
	datad => \MasterMind_Core|Counter9999|Add2~0_combout\,
	combout => \MasterMind_Core|Counter9999|s_count1~3_combout\);

-- Location: LCCOMB_X82_Y23_N0
\MasterMind_Core|Counter9999|s_count1[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9999|s_count1[2]~feeder_combout\ = \MasterMind_Core|Counter9999|s_count1~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MasterMind_Core|Counter9999|s_count1~3_combout\,
	combout => \MasterMind_Core|Counter9999|s_count1[2]~feeder_combout\);

-- Location: FF_X82_Y23_N1
\MasterMind_Core|Counter9999|s_count1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|Counter9999|s_count1[2]~feeder_combout\,
	ena => \MasterMind_Core|Counter9999|s_count1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|Counter9999|s_count1\(2));

-- Location: LCCOMB_X81_Y23_N24
\MasterMind_Core|Counter9999|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9999|Add2~1_combout\ = \MasterMind_Core|Counter9999|s_count1\(3) $ (((\MasterMind_Core|Counter9999|s_count1\(1) & (\MasterMind_Core|Counter9999|s_count1\(2) & \MasterMind_Core|Counter9999|s_count1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Counter9999|s_count1\(1),
	datab => \MasterMind_Core|Counter9999|s_count1\(2),
	datac => \MasterMind_Core|Counter9999|s_count1\(0),
	datad => \MasterMind_Core|Counter9999|s_count1\(3),
	combout => \MasterMind_Core|Counter9999|Add2~1_combout\);

-- Location: LCCOMB_X81_Y23_N26
\MasterMind_Core|Counter9999|s_count1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9999|s_count1~4_combout\ = (!\MasterMind_Core|Rand_Num|pState.S2~q\ & (\MasterMind_Core|Counter9999|Equal1~0_combout\ & \MasterMind_Core|Counter9999|Add2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Rand_Num|pState.S2~q\,
	datac => \MasterMind_Core|Counter9999|Equal1~0_combout\,
	datad => \MasterMind_Core|Counter9999|Add2~1_combout\,
	combout => \MasterMind_Core|Counter9999|s_count1~4_combout\);

-- Location: FF_X82_Y23_N27
\MasterMind_Core|Counter9999|s_count1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \MasterMind_Core|Counter9999|s_count1~4_combout\,
	sload => VCC,
	ena => \MasterMind_Core|Counter9999|s_count1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|Counter9999|s_count1\(3));

-- Location: LCCOMB_X81_Y23_N8
\MasterMind_Core|Counter9999|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9999|Equal1~0_combout\ = (\MasterMind_Core|Counter9999|s_count1\(1)) # (((\MasterMind_Core|Counter9999|s_count1\(2)) # (!\MasterMind_Core|Counter9999|s_count1\(0))) # (!\MasterMind_Core|Counter9999|s_count1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Counter9999|s_count1\(1),
	datab => \MasterMind_Core|Counter9999|s_count1\(3),
	datac => \MasterMind_Core|Counter9999|s_count1\(2),
	datad => \MasterMind_Core|Counter9999|s_count1\(0),
	combout => \MasterMind_Core|Counter9999|Equal1~0_combout\);

-- Location: LCCOMB_X82_Y22_N24
\MasterMind_Core|Counter9999|s_count2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9999|s_count2~0_combout\ = (!\MasterMind_Core|Counter9999|s_count2\(0) & !\MasterMind_Core|Rand_Num|pState.S2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MasterMind_Core|Counter9999|s_count2\(0),
	datad => \MasterMind_Core|Rand_Num|pState.S2~q\,
	combout => \MasterMind_Core|Counter9999|s_count2~0_combout\);

-- Location: LCCOMB_X81_Y23_N28
\MasterMind_Core|Counter9999|s_count2[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9999|s_count2[3]~1_combout\ = (\MasterMind_Core|Rand_Num|pState.S2~q\) # ((!\MasterMind_Core|Rand_Num|pState.S0~q\ & (!\MasterMind_Core|Counter9999|Equal1~0_combout\ & !\MasterMind_Core|Counter9999|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Rand_Num|pState.S0~q\,
	datab => \MasterMind_Core|Counter9999|Equal1~0_combout\,
	datac => \MasterMind_Core|Rand_Num|pState.S2~q\,
	datad => \MasterMind_Core|Counter9999|Equal0~0_combout\,
	combout => \MasterMind_Core|Counter9999|s_count2[3]~1_combout\);

-- Location: FF_X82_Y22_N25
\MasterMind_Core|Counter9999|s_count2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|Counter9999|s_count2~0_combout\,
	ena => \MasterMind_Core|Counter9999|s_count2[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|Counter9999|s_count2\(0));

-- Location: LCCOMB_X82_Y22_N10
\MasterMind_Core|Counter9999|s_count2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9999|s_count2~3_combout\ = (!\MasterMind_Core|Counter9999|s_count2[3]~2_combout\ & (!\MasterMind_Core|Rand_Num|pState.S2~q\ & (\MasterMind_Core|Counter9999|s_count2\(0) $ (\MasterMind_Core|Counter9999|s_count2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Counter9999|s_count2[3]~2_combout\,
	datab => \MasterMind_Core|Counter9999|s_count2\(0),
	datac => \MasterMind_Core|Counter9999|s_count2\(1),
	datad => \MasterMind_Core|Rand_Num|pState.S2~q\,
	combout => \MasterMind_Core|Counter9999|s_count2~3_combout\);

-- Location: FF_X82_Y22_N11
\MasterMind_Core|Counter9999|s_count2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|Counter9999|s_count2~3_combout\,
	ena => \MasterMind_Core|Counter9999|s_count2[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|Counter9999|s_count2\(1));

-- Location: LCCOMB_X82_Y22_N20
\MasterMind_Core|Counter9999|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9999|Add1~0_combout\ = \MasterMind_Core|Counter9999|s_count2\(2) $ (((\MasterMind_Core|Counter9999|s_count2\(1) & \MasterMind_Core|Counter9999|s_count2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Counter9999|s_count2\(1),
	datab => \MasterMind_Core|Counter9999|s_count2\(2),
	datad => \MasterMind_Core|Counter9999|s_count2\(0),
	combout => \MasterMind_Core|Counter9999|Add1~0_combout\);

-- Location: LCCOMB_X82_Y22_N8
\MasterMind_Core|Counter9999|s_count2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9999|s_count2~4_combout\ = (\MasterMind_Core|Counter9999|Add1~0_combout\ & (!\MasterMind_Core|Counter9999|s_count2[3]~2_combout\ & !\MasterMind_Core|Rand_Num|pState.S2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Counter9999|Add1~0_combout\,
	datac => \MasterMind_Core|Counter9999|s_count2[3]~2_combout\,
	datad => \MasterMind_Core|Rand_Num|pState.S2~q\,
	combout => \MasterMind_Core|Counter9999|s_count2~4_combout\);

-- Location: FF_X82_Y22_N9
\MasterMind_Core|Counter9999|s_count2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|Counter9999|s_count2~4_combout\,
	ena => \MasterMind_Core|Counter9999|s_count2[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|Counter9999|s_count2\(2));

-- Location: LCCOMB_X82_Y22_N2
\MasterMind_Core|Counter9999|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9999|Add1~1_combout\ = \MasterMind_Core|Counter9999|s_count2\(3) $ (((\MasterMind_Core|Counter9999|s_count2\(0) & (\MasterMind_Core|Counter9999|s_count2\(2) & \MasterMind_Core|Counter9999|s_count2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Counter9999|s_count2\(3),
	datab => \MasterMind_Core|Counter9999|s_count2\(0),
	datac => \MasterMind_Core|Counter9999|s_count2\(2),
	datad => \MasterMind_Core|Counter9999|s_count2\(1),
	combout => \MasterMind_Core|Counter9999|Add1~1_combout\);

-- Location: LCCOMB_X82_Y22_N6
\MasterMind_Core|Counter9999|s_count2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9999|s_count2~5_combout\ = (\MasterMind_Core|Counter9999|Add1~1_combout\ & (!\MasterMind_Core|Rand_Num|pState.S2~q\ & !\MasterMind_Core|Counter9999|s_count2[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Counter9999|Add1~1_combout\,
	datab => \MasterMind_Core|Rand_Num|pState.S2~q\,
	datac => \MasterMind_Core|Counter9999|s_count2[3]~2_combout\,
	combout => \MasterMind_Core|Counter9999|s_count2~5_combout\);

-- Location: FF_X82_Y22_N7
\MasterMind_Core|Counter9999|s_count2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|Counter9999|s_count2~5_combout\,
	ena => \MasterMind_Core|Counter9999|s_count2[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|Counter9999|s_count2\(3));

-- Location: LCCOMB_X81_Y23_N30
\MasterMind_Core|Counter9999|s_count2[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9999|s_count2[3]~2_combout\ = (\MasterMind_Core|Counter9999|s_count2\(3) & (!\MasterMind_Core|Counter9999|s_count2\(2) & (!\MasterMind_Core|Counter9999|s_count2\(1) & \MasterMind_Core|Counter9999|s_count2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Counter9999|s_count2\(3),
	datab => \MasterMind_Core|Counter9999|s_count2\(2),
	datac => \MasterMind_Core|Counter9999|s_count2\(1),
	datad => \MasterMind_Core|Counter9999|s_count2\(0),
	combout => \MasterMind_Core|Counter9999|s_count2[3]~2_combout\);

-- Location: LCCOMB_X81_Y23_N0
\MasterMind_Core|Counter9999|s_count1[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9999|s_count1[3]~5_combout\ = (!\MasterMind_Core|Rand_Num|pState.S0~q\ & !\MasterMind_Core|Counter9999|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MasterMind_Core|Rand_Num|pState.S0~q\,
	datad => \MasterMind_Core|Counter9999|Equal0~0_combout\,
	combout => \MasterMind_Core|Counter9999|s_count1[3]~5_combout\);

-- Location: LCCOMB_X81_Y23_N6
\MasterMind_Core|Counter9999|s_count3[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9999|s_count3[2]~1_combout\ = (\MasterMind_Core|Rand_Num|pState.S2~q\) # ((!\MasterMind_Core|Counter9999|Equal1~0_combout\ & (\MasterMind_Core|Counter9999|s_count2[3]~2_combout\ & 
-- \MasterMind_Core|Counter9999|s_count1[3]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Rand_Num|pState.S2~q\,
	datab => \MasterMind_Core|Counter9999|Equal1~0_combout\,
	datac => \MasterMind_Core|Counter9999|s_count2[3]~2_combout\,
	datad => \MasterMind_Core|Counter9999|s_count1[3]~5_combout\,
	combout => \MasterMind_Core|Counter9999|s_count3[2]~1_combout\);

-- Location: FF_X81_Y24_N5
\MasterMind_Core|Counter9999|s_count3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|Counter9999|s_count3~0_combout\,
	ena => \MasterMind_Core|Counter9999|s_count3[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|Counter9999|s_count3\(0));

-- Location: LCCOMB_X81_Y24_N30
\MasterMind_Core|Counter9999|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9999|Add0~0_combout\ = \MasterMind_Core|Counter9999|s_count3\(2) $ (((\MasterMind_Core|Counter9999|s_count3\(1) & \MasterMind_Core|Counter9999|s_count3\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Counter9999|s_count3\(1),
	datac => \MasterMind_Core|Counter9999|s_count3\(0),
	datad => \MasterMind_Core|Counter9999|s_count3\(2),
	combout => \MasterMind_Core|Counter9999|Add0~0_combout\);

-- Location: LCCOMB_X81_Y24_N12
\MasterMind_Core|Counter9999|s_count3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9999|s_count3~4_combout\ = (\MasterMind_Core|Counter9999|Add0~0_combout\ & (!\MasterMind_Core|Rand_Num|pState.S2~q\ & \MasterMind_Core|Counter9999|s_count3[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Counter9999|Add0~0_combout\,
	datac => \MasterMind_Core|Rand_Num|pState.S2~q\,
	datad => \MasterMind_Core|Counter9999|s_count3[2]~2_combout\,
	combout => \MasterMind_Core|Counter9999|s_count3~4_combout\);

-- Location: FF_X81_Y24_N13
\MasterMind_Core|Counter9999|s_count3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|Counter9999|s_count3~4_combout\,
	ena => \MasterMind_Core|Counter9999|s_count3[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|Counter9999|s_count3\(2));

-- Location: LCCOMB_X81_Y24_N24
\MasterMind_Core|Counter9999|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9999|Add0~1_combout\ = \MasterMind_Core|Counter9999|s_count3\(3) $ (((\MasterMind_Core|Counter9999|s_count3\(1) & (\MasterMind_Core|Counter9999|s_count3\(0) & \MasterMind_Core|Counter9999|s_count3\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Counter9999|s_count3\(1),
	datab => \MasterMind_Core|Counter9999|s_count3\(3),
	datac => \MasterMind_Core|Counter9999|s_count3\(0),
	datad => \MasterMind_Core|Counter9999|s_count3\(2),
	combout => \MasterMind_Core|Counter9999|Add0~1_combout\);

-- Location: LCCOMB_X81_Y24_N22
\MasterMind_Core|Counter9999|s_count3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9999|s_count3~5_combout\ = (\MasterMind_Core|Counter9999|s_count3[2]~2_combout\ & (!\MasterMind_Core|Rand_Num|pState.S2~q\ & \MasterMind_Core|Counter9999|Add0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|Counter9999|s_count3[2]~2_combout\,
	datac => \MasterMind_Core|Rand_Num|pState.S2~q\,
	datad => \MasterMind_Core|Counter9999|Add0~1_combout\,
	combout => \MasterMind_Core|Counter9999|s_count3~5_combout\);

-- Location: FF_X81_Y24_N23
\MasterMind_Core|Counter9999|s_count3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|Counter9999|s_count3~5_combout\,
	ena => \MasterMind_Core|Counter9999|s_count3[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|Counter9999|s_count3\(3));

-- Location: LCCOMB_X81_Y24_N28
\MasterMind_Core|Counter9999|s_count3[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9999|s_count3[2]~2_combout\ = (\MasterMind_Core|Counter9999|s_count3\(1)) # (((\MasterMind_Core|Counter9999|s_count3\(2)) # (!\MasterMind_Core|Counter9999|s_count3\(0))) # (!\MasterMind_Core|Counter9999|s_count3\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Counter9999|s_count3\(1),
	datab => \MasterMind_Core|Counter9999|s_count3\(3),
	datac => \MasterMind_Core|Counter9999|s_count3\(0),
	datad => \MasterMind_Core|Counter9999|s_count3\(2),
	combout => \MasterMind_Core|Counter9999|s_count3[2]~2_combout\);

-- Location: LCCOMB_X81_Y24_N26
\MasterMind_Core|Counter9999|s_count3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9999|s_count3~3_combout\ = (!\MasterMind_Core|Rand_Num|pState.S2~q\ & (\MasterMind_Core|Counter9999|s_count3[2]~2_combout\ & (\MasterMind_Core|Counter9999|s_count3\(0) $ (\MasterMind_Core|Counter9999|s_count3\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Counter9999|s_count3\(0),
	datab => \MasterMind_Core|Rand_Num|pState.S2~q\,
	datac => \MasterMind_Core|Counter9999|s_count3\(1),
	datad => \MasterMind_Core|Counter9999|s_count3[2]~2_combout\,
	combout => \MasterMind_Core|Counter9999|s_count3~3_combout\);

-- Location: FF_X81_Y24_N27
\MasterMind_Core|Counter9999|s_count3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|Counter9999|s_count3~3_combout\,
	ena => \MasterMind_Core|Counter9999|s_count3[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|Counter9999|s_count3\(1));

-- Location: LCCOMB_X82_Y24_N24
\MasterMind_Core|Counter9_3|s_count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9_3|s_count~7_combout\ = (!\MasterMind_Core|Counter9_3|s_count\(0) & !\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MasterMind_Core|Counter9_3|s_count\(0),
	datad => \SW[0]~input_o\,
	combout => \MasterMind_Core|Counter9_3|s_count~7_combout\);

-- Location: LCCOMB_X86_Y20_N4
\MasterMind_Core|deb_0|s_dirty_In[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|deb_0|s_dirty_In[5]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \MasterMind_Core|deb_0|s_dirty_In[5]~feeder_combout\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: FF_X86_Y20_N5
\MasterMind_Core|deb_0|s_dirty_In[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|freq_div2|clkOut~clkctrl_outclk\,
	d => \MasterMind_Core|deb_0|s_dirty_In[5]~feeder_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|deb_0|s_dirty_In\(5));

-- Location: LCCOMB_X86_Y20_N6
\MasterMind_Core|Counter4|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter4|Add0~0_combout\ = \MasterMind_Core|deb_0|s_dirty_In\(5) $ (\MasterMind_Core|Counter4|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|deb_0|s_dirty_In\(5),
	datad => \MasterMind_Core|Counter4|s_count\(0),
	combout => \MasterMind_Core|Counter4|Add0~0_combout\);

-- Location: FF_X83_Y20_N23
\MasterMind_Core|Counter4|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|freq_div2|clkOut~clkctrl_outclk\,
	asdata => \MasterMind_Core|Counter4|Add0~0_combout\,
	sclr => \SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|Counter4|s_count\(0));

-- Location: LCCOMB_X82_Y20_N2
\MasterMind_Core|Counter4|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter4|Add0~1_combout\ = \MasterMind_Core|Counter4|s_count\(1) $ (((\MasterMind_Core|deb_0|s_dirty_In\(5) & \MasterMind_Core|Counter4|s_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|deb_0|s_dirty_In\(5),
	datab => \MasterMind_Core|Counter4|s_count\(0),
	datac => \MasterMind_Core|Counter4|s_count\(1),
	combout => \MasterMind_Core|Counter4|Add0~1_combout\);

-- Location: FF_X82_Y20_N3
\MasterMind_Core|Counter4|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|freq_div2|clkOut~q\,
	d => \MasterMind_Core|Counter4|Add0~1_combout\,
	sclr => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|Counter4|s_count\(1));

-- Location: LCCOMB_X82_Y20_N4
\MasterMind_Core|s_up3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|s_up3~0_combout\ = (\MasterMind_Core|Counter4|s_count\(1) & \MasterMind_Core|Counter4|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|Counter4|s_count\(1),
	datad => \MasterMind_Core|Counter4|s_count\(0),
	combout => \MasterMind_Core|s_up3~0_combout\);

-- Location: LCCOMB_X83_Y20_N10
\MasterMind_Core|deb_1|s_dirty_In[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|deb_1|s_dirty_In[5]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \MasterMind_Core|deb_1|s_dirty_In[5]~feeder_combout\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: FF_X83_Y20_N11
\MasterMind_Core|deb_1|s_dirty_In[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|freq_div2|clkOut~clkctrl_outclk\,
	d => \MasterMind_Core|deb_1|s_dirty_In[5]~feeder_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|deb_1|s_dirty_In\(5));

-- Location: LCCOMB_X84_Y21_N28
\MasterMind_Core|deb_2|s_dirty_In[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|deb_2|s_dirty_In[5]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \MasterMind_Core|deb_2|s_dirty_In[5]~feeder_combout\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: FF_X84_Y21_N29
\MasterMind_Core|deb_2|s_dirty_In[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|freq_div2|clkOut~clkctrl_outclk\,
	d => \MasterMind_Core|deb_2|s_dirty_In[5]~feeder_combout\,
	clrn => \ALT_INV_KEY[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|deb_2|s_dirty_In\(5));

-- Location: LCCOMB_X82_Y24_N0
\MasterMind_Core|Counter9_3|s_count[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9_3|s_count[0]~8_combout\ = (\SW[0]~input_o\) # ((\MasterMind_Core|s_up3~0_combout\ & ((\MasterMind_Core|deb_1|s_dirty_In\(5)) # (\MasterMind_Core|deb_2|s_dirty_In\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \MasterMind_Core|s_up3~0_combout\,
	datac => \MasterMind_Core|deb_1|s_dirty_In\(5),
	datad => \MasterMind_Core|deb_2|s_dirty_In\(5),
	combout => \MasterMind_Core|Counter9_3|s_count[0]~8_combout\);

-- Location: FF_X82_Y24_N25
\MasterMind_Core|Counter9_3|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|freq_div2|clkOut~clkctrl_outclk\,
	d => \MasterMind_Core|Counter9_3|s_count~7_combout\,
	ena => \MasterMind_Core|Counter9_3|s_count[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|Counter9_3|s_count\(0));

-- Location: LCCOMB_X82_Y24_N18
\MasterMind_Core|register_c|dataOut3[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|register_c|dataOut3[0]~feeder_combout\ = \MasterMind_Core|Counter9_3|s_count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MasterMind_Core|Counter9_3|s_count\(0),
	combout => \MasterMind_Core|register_c|dataOut3[0]~feeder_combout\);

-- Location: FF_X82_Y24_N19
\MasterMind_Core|register_c|dataOut3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|deb_3|s_dirty_In[5]~clkctrl_outclk\,
	d => \MasterMind_Core|register_c|dataOut3[0]~feeder_combout\,
	ena => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|register_c|dataOut3\(0));

-- Location: LCCOMB_X83_Y20_N20
\MasterMind_Core|s_up3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|s_up3~1_combout\ = (\MasterMind_Core|Counter4|s_count\(1) & (\MasterMind_Core|Counter4|s_count\(0) & \MasterMind_Core|deb_1|s_dirty_In\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Counter4|s_count\(1),
	datab => \MasterMind_Core|Counter4|s_count\(0),
	datad => \MasterMind_Core|deb_1|s_dirty_In\(5),
	combout => \MasterMind_Core|s_up3~1_combout\);

-- Location: LCCOMB_X83_Y20_N12
\MasterMind_Core|Counter9_3|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9_3|Add0~1_cout\ = CARRY(\MasterMind_Core|Counter9_3|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Counter9_3|s_count\(0),
	datad => VCC,
	cout => \MasterMind_Core|Counter9_3|Add0~1_cout\);

-- Location: LCCOMB_X83_Y20_N14
\MasterMind_Core|Counter9_3|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9_3|Add0~2_combout\ = (\MasterMind_Core|Counter9_3|s_count\(1) & ((\MasterMind_Core|s_up3~1_combout\ & (!\MasterMind_Core|Counter9_3|Add0~1_cout\)) # (!\MasterMind_Core|s_up3~1_combout\ & (\MasterMind_Core|Counter9_3|Add0~1_cout\ & 
-- VCC)))) # (!\MasterMind_Core|Counter9_3|s_count\(1) & ((\MasterMind_Core|s_up3~1_combout\ & ((\MasterMind_Core|Counter9_3|Add0~1_cout\) # (GND))) # (!\MasterMind_Core|s_up3~1_combout\ & (!\MasterMind_Core|Counter9_3|Add0~1_cout\))))
-- \MasterMind_Core|Counter9_3|Add0~3\ = CARRY((\MasterMind_Core|Counter9_3|s_count\(1) & (\MasterMind_Core|s_up3~1_combout\ & !\MasterMind_Core|Counter9_3|Add0~1_cout\)) # (!\MasterMind_Core|Counter9_3|s_count\(1) & ((\MasterMind_Core|s_up3~1_combout\) # 
-- (!\MasterMind_Core|Counter9_3|Add0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Counter9_3|s_count\(1),
	datab => \MasterMind_Core|s_up3~1_combout\,
	datad => VCC,
	cin => \MasterMind_Core|Counter9_3|Add0~1_cout\,
	combout => \MasterMind_Core|Counter9_3|Add0~2_combout\,
	cout => \MasterMind_Core|Counter9_3|Add0~3\);

-- Location: LCCOMB_X83_Y20_N16
\MasterMind_Core|Counter9_3|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9_3|Add0~4_combout\ = ((\MasterMind_Core|Counter9_3|s_count\(2) $ (\MasterMind_Core|s_up3~1_combout\ $ (\MasterMind_Core|Counter9_3|Add0~3\)))) # (GND)
-- \MasterMind_Core|Counter9_3|Add0~5\ = CARRY((\MasterMind_Core|Counter9_3|s_count\(2) & ((!\MasterMind_Core|Counter9_3|Add0~3\) # (!\MasterMind_Core|s_up3~1_combout\))) # (!\MasterMind_Core|Counter9_3|s_count\(2) & (!\MasterMind_Core|s_up3~1_combout\ & 
-- !\MasterMind_Core|Counter9_3|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Counter9_3|s_count\(2),
	datab => \MasterMind_Core|s_up3~1_combout\,
	datad => VCC,
	cin => \MasterMind_Core|Counter9_3|Add0~3\,
	combout => \MasterMind_Core|Counter9_3|Add0~4_combout\,
	cout => \MasterMind_Core|Counter9_3|Add0~5\);

-- Location: LCCOMB_X82_Y24_N26
\MasterMind_Core|Counter9_3|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9_3|Add0~9_combout\ = (\MasterMind_Core|Counter9_3|s_count[0]~5_combout\ & (!\SW[0]~input_o\ & \MasterMind_Core|Counter9_3|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Counter9_3|s_count[0]~5_combout\,
	datac => \SW[0]~input_o\,
	datad => \MasterMind_Core|Counter9_3|Add0~4_combout\,
	combout => \MasterMind_Core|Counter9_3|Add0~9_combout\);

-- Location: FF_X82_Y24_N27
\MasterMind_Core|Counter9_3|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|freq_div2|clkOut~clkctrl_outclk\,
	d => \MasterMind_Core|Counter9_3|Add0~9_combout\,
	ena => \MasterMind_Core|Counter9_3|s_count[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|Counter9_3|s_count\(2));

-- Location: LCCOMB_X83_Y20_N18
\MasterMind_Core|Counter9_3|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9_3|Add0~6_combout\ = \MasterMind_Core|s_up3~1_combout\ $ (\MasterMind_Core|Counter9_3|Add0~5\ $ (!\MasterMind_Core|Counter9_3|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|s_up3~1_combout\,
	datad => \MasterMind_Core|Counter9_3|s_count\(3),
	cin => \MasterMind_Core|Counter9_3|Add0~5\,
	combout => \MasterMind_Core|Counter9_3|Add0~6_combout\);

-- Location: LCCOMB_X83_Y24_N20
\MasterMind_Core|Counter9_3|s_count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9_3|s_count~6_combout\ = (!\SW[0]~input_o\ & ((\MasterMind_Core|Counter9_3|s_count[0]~5_combout\ & (\MasterMind_Core|Counter9_3|Add0~6_combout\)) # (!\MasterMind_Core|Counter9_3|s_count[0]~5_combout\ & 
-- ((!\MasterMind_Core|s_up3~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Counter9_3|s_count[0]~5_combout\,
	datab => \SW[0]~input_o\,
	datac => \MasterMind_Core|Counter9_3|Add0~6_combout\,
	datad => \MasterMind_Core|s_up3~1_combout\,
	combout => \MasterMind_Core|Counter9_3|s_count~6_combout\);

-- Location: FF_X83_Y24_N21
\MasterMind_Core|Counter9_3|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|freq_div2|clkOut~clkctrl_outclk\,
	d => \MasterMind_Core|Counter9_3|s_count~6_combout\,
	ena => \MasterMind_Core|Counter9_3|s_count[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|Counter9_3|s_count\(3));

-- Location: LCCOMB_X82_Y24_N16
\MasterMind_Core|Counter9_3|s_count[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9_3|s_count[0]~4_combout\ = (\MasterMind_Core|Counter9_3|s_count\(2)) # (\MasterMind_Core|Counter9_3|s_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MasterMind_Core|Counter9_3|s_count\(2),
	datad => \MasterMind_Core|Counter9_3|s_count\(1),
	combout => \MasterMind_Core|Counter9_3|s_count[0]~4_combout\);

-- Location: LCCOMB_X82_Y24_N10
\MasterMind_Core|Counter9_3|s_count[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9_3|s_count[0]~5_combout\ = (\MasterMind_Core|Counter9_3|s_count[0]~4_combout\) # ((\MasterMind_Core|s_up3~1_combout\ & ((!\MasterMind_Core|Counter9_3|s_count\(3)) # (!\MasterMind_Core|Counter9_3|s_count\(0)))) # 
-- (!\MasterMind_Core|s_up3~1_combout\ & ((\MasterMind_Core|Counter9_3|s_count\(0)) # (\MasterMind_Core|Counter9_3|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|s_up3~1_combout\,
	datab => \MasterMind_Core|Counter9_3|s_count\(0),
	datac => \MasterMind_Core|Counter9_3|s_count\(3),
	datad => \MasterMind_Core|Counter9_3|s_count[0]~4_combout\,
	combout => \MasterMind_Core|Counter9_3|s_count[0]~5_combout\);

-- Location: LCCOMB_X83_Y24_N2
\MasterMind_Core|Counter9_3|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9_3|Add0~8_combout\ = (\MasterMind_Core|Counter9_3|Add0~2_combout\ & (!\SW[0]~input_o\ & \MasterMind_Core|Counter9_3|s_count[0]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|Counter9_3|Add0~2_combout\,
	datac => \SW[0]~input_o\,
	datad => \MasterMind_Core|Counter9_3|s_count[0]~5_combout\,
	combout => \MasterMind_Core|Counter9_3|Add0~8_combout\);

-- Location: FF_X83_Y24_N3
\MasterMind_Core|Counter9_3|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|freq_div2|clkOut~clkctrl_outclk\,
	d => \MasterMind_Core|Counter9_3|Add0~8_combout\,
	ena => \MasterMind_Core|Counter9_3|s_count[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|Counter9_3|s_count\(1));

-- Location: FF_X83_Y22_N21
\MasterMind_Core|register_c|dataOut3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|deb_3|s_dirty_In[5]~clkctrl_outclk\,
	asdata => \MasterMind_Core|Counter9_3|s_count\(1),
	sload => VCC,
	ena => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|register_c|dataOut3\(1));

-- Location: LCCOMB_X82_Y24_N20
\MasterMind_Core|compare|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Equal3~0_combout\ = (\MasterMind_Core|Counter9999|s_count3\(1) & (\MasterMind_Core|register_c|dataOut3\(1) & (\MasterMind_Core|register_c|dataOut3\(0) $ (!\MasterMind_Core|Counter9999|s_count3\(0))))) # 
-- (!\MasterMind_Core|Counter9999|s_count3\(1) & (!\MasterMind_Core|register_c|dataOut3\(1) & (\MasterMind_Core|register_c|dataOut3\(0) $ (!\MasterMind_Core|Counter9999|s_count3\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Counter9999|s_count3\(1),
	datab => \MasterMind_Core|register_c|dataOut3\(0),
	datac => \MasterMind_Core|Counter9999|s_count3\(0),
	datad => \MasterMind_Core|register_c|dataOut3\(1),
	combout => \MasterMind_Core|compare|Equal3~0_combout\);

-- Location: LCCOMB_X82_Y24_N14
\MasterMind_Core|register_c|dataOut3[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|register_c|dataOut3[2]~feeder_combout\ = \MasterMind_Core|Counter9_3|s_count\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|Counter9_3|s_count\(2),
	combout => \MasterMind_Core|register_c|dataOut3[2]~feeder_combout\);

-- Location: FF_X82_Y24_N15
\MasterMind_Core|register_c|dataOut3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|deb_3|s_dirty_In[5]~clkctrl_outclk\,
	d => \MasterMind_Core|register_c|dataOut3[2]~feeder_combout\,
	ena => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|register_c|dataOut3\(2));

-- Location: LCCOMB_X82_Y22_N4
\MasterMind_Core|register_c|dataOut3[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|register_c|dataOut3[3]~feeder_combout\ = \MasterMind_Core|Counter9_3|s_count\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MasterMind_Core|Counter9_3|s_count\(3),
	combout => \MasterMind_Core|register_c|dataOut3[3]~feeder_combout\);

-- Location: FF_X82_Y22_N5
\MasterMind_Core|register_c|dataOut3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|deb_3|s_dirty_In[5]~clkctrl_outclk\,
	d => \MasterMind_Core|register_c|dataOut3[3]~feeder_combout\,
	ena => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|register_c|dataOut3\(3));

-- Location: LCCOMB_X82_Y24_N4
\MasterMind_Core|compare|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Equal3~1_combout\ = (\MasterMind_Core|Counter9999|s_count3\(2) & (\MasterMind_Core|register_c|dataOut3\(2) & (\MasterMind_Core|register_c|dataOut3\(3) $ (!\MasterMind_Core|Counter9999|s_count3\(3))))) # 
-- (!\MasterMind_Core|Counter9999|s_count3\(2) & (!\MasterMind_Core|register_c|dataOut3\(2) & (\MasterMind_Core|register_c|dataOut3\(3) $ (!\MasterMind_Core|Counter9999|s_count3\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Counter9999|s_count3\(2),
	datab => \MasterMind_Core|register_c|dataOut3\(2),
	datac => \MasterMind_Core|register_c|dataOut3\(3),
	datad => \MasterMind_Core|Counter9999|s_count3\(3),
	combout => \MasterMind_Core|compare|Equal3~1_combout\);

-- Location: LCCOMB_X82_Y20_N14
\MasterMind_Core|Counter9_2|s_count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9_2|s_count~7_combout\ = (!\MasterMind_Core|Counter9_2|s_count\(0) & !\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MasterMind_Core|Counter9_2|s_count\(0),
	datad => \SW[0]~input_o\,
	combout => \MasterMind_Core|Counter9_2|s_count~7_combout\);

-- Location: LCCOMB_X82_Y20_N30
\MasterMind_Core|s_up2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|s_up2~0_combout\ = (\MasterMind_Core|Counter4|s_count\(1) & !\MasterMind_Core|Counter4|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|Counter4|s_count\(1),
	datad => \MasterMind_Core|Counter4|s_count\(0),
	combout => \MasterMind_Core|s_up2~0_combout\);

-- Location: LCCOMB_X82_Y20_N12
\MasterMind_Core|Counter9_2|s_count[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9_2|s_count[2]~8_combout\ = (\SW[0]~input_o\) # ((\MasterMind_Core|s_up2~0_combout\ & ((\MasterMind_Core|deb_2|s_dirty_In\(5)) # (\MasterMind_Core|deb_1|s_dirty_In\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|s_up2~0_combout\,
	datab => \SW[0]~input_o\,
	datac => \MasterMind_Core|deb_2|s_dirty_In\(5),
	datad => \MasterMind_Core|deb_1|s_dirty_In\(5),
	combout => \MasterMind_Core|Counter9_2|s_count[2]~8_combout\);

-- Location: FF_X82_Y20_N15
\MasterMind_Core|Counter9_2|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|freq_div2|clkOut~clkctrl_outclk\,
	d => \MasterMind_Core|Counter9_2|s_count~7_combout\,
	ena => \MasterMind_Core|Counter9_2|s_count[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|Counter9_2|s_count\(0));

-- Location: FF_X83_Y22_N31
\MasterMind_Core|register_c|dataOut2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|deb_3|s_dirty_In[5]~clkctrl_outclk\,
	asdata => \MasterMind_Core|Counter9_2|s_count\(0),
	sload => VCC,
	ena => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|register_c|dataOut2\(0));

-- Location: LCCOMB_X82_Y20_N10
\MasterMind_Core|s_up2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|s_up2~1_combout\ = (\MasterMind_Core|Counter4|s_count\(1) & (\MasterMind_Core|deb_1|s_dirty_In\(5) & !\MasterMind_Core|Counter4|s_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|Counter4|s_count\(1),
	datac => \MasterMind_Core|deb_1|s_dirty_In\(5),
	datad => \MasterMind_Core|Counter4|s_count\(0),
	combout => \MasterMind_Core|s_up2~1_combout\);

-- Location: LCCOMB_X82_Y20_N20
\MasterMind_Core|Counter9_2|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9_2|Add0~1_cout\ = CARRY(\MasterMind_Core|Counter9_2|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Counter9_2|s_count\(0),
	datad => VCC,
	cout => \MasterMind_Core|Counter9_2|Add0~1_cout\);

-- Location: LCCOMB_X82_Y20_N22
\MasterMind_Core|Counter9_2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9_2|Add0~2_combout\ = (\MasterMind_Core|s_up2~1_combout\ & ((\MasterMind_Core|Counter9_2|s_count\(1) & (!\MasterMind_Core|Counter9_2|Add0~1_cout\)) # (!\MasterMind_Core|Counter9_2|s_count\(1) & 
-- ((\MasterMind_Core|Counter9_2|Add0~1_cout\) # (GND))))) # (!\MasterMind_Core|s_up2~1_combout\ & ((\MasterMind_Core|Counter9_2|s_count\(1) & (\MasterMind_Core|Counter9_2|Add0~1_cout\ & VCC)) # (!\MasterMind_Core|Counter9_2|s_count\(1) & 
-- (!\MasterMind_Core|Counter9_2|Add0~1_cout\))))
-- \MasterMind_Core|Counter9_2|Add0~3\ = CARRY((\MasterMind_Core|s_up2~1_combout\ & ((!\MasterMind_Core|Counter9_2|Add0~1_cout\) # (!\MasterMind_Core|Counter9_2|s_count\(1)))) # (!\MasterMind_Core|s_up2~1_combout\ & (!\MasterMind_Core|Counter9_2|s_count\(1) 
-- & !\MasterMind_Core|Counter9_2|Add0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|s_up2~1_combout\,
	datab => \MasterMind_Core|Counter9_2|s_count\(1),
	datad => VCC,
	cin => \MasterMind_Core|Counter9_2|Add0~1_cout\,
	combout => \MasterMind_Core|Counter9_2|Add0~2_combout\,
	cout => \MasterMind_Core|Counter9_2|Add0~3\);

-- Location: LCCOMB_X82_Y20_N24
\MasterMind_Core|Counter9_2|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9_2|Add0~4_combout\ = ((\MasterMind_Core|s_up2~1_combout\ $ (\MasterMind_Core|Counter9_2|s_count\(2) $ (\MasterMind_Core|Counter9_2|Add0~3\)))) # (GND)
-- \MasterMind_Core|Counter9_2|Add0~5\ = CARRY((\MasterMind_Core|s_up2~1_combout\ & (\MasterMind_Core|Counter9_2|s_count\(2) & !\MasterMind_Core|Counter9_2|Add0~3\)) # (!\MasterMind_Core|s_up2~1_combout\ & ((\MasterMind_Core|Counter9_2|s_count\(2)) # 
-- (!\MasterMind_Core|Counter9_2|Add0~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|s_up2~1_combout\,
	datab => \MasterMind_Core|Counter9_2|s_count\(2),
	datad => VCC,
	cin => \MasterMind_Core|Counter9_2|Add0~3\,
	combout => \MasterMind_Core|Counter9_2|Add0~4_combout\,
	cout => \MasterMind_Core|Counter9_2|Add0~5\);

-- Location: LCCOMB_X82_Y20_N0
\MasterMind_Core|Counter9_2|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9_2|Add0~9_combout\ = (\MasterMind_Core|Counter9_2|s_count[2]~5_combout\ & (\MasterMind_Core|Counter9_2|Add0~4_combout\ & !\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Counter9_2|s_count[2]~5_combout\,
	datab => \MasterMind_Core|Counter9_2|Add0~4_combout\,
	datad => \SW[0]~input_o\,
	combout => \MasterMind_Core|Counter9_2|Add0~9_combout\);

-- Location: FF_X82_Y20_N1
\MasterMind_Core|Counter9_2|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|freq_div2|clkOut~clkctrl_outclk\,
	d => \MasterMind_Core|Counter9_2|Add0~9_combout\,
	ena => \MasterMind_Core|Counter9_2|s_count[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|Counter9_2|s_count\(2));

-- Location: LCCOMB_X82_Y20_N26
\MasterMind_Core|Counter9_2|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9_2|Add0~6_combout\ = \MasterMind_Core|s_up2~1_combout\ $ (\MasterMind_Core|Counter9_2|Add0~5\ $ (!\MasterMind_Core|Counter9_2|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|s_up2~1_combout\,
	datad => \MasterMind_Core|Counter9_2|s_count\(3),
	cin => \MasterMind_Core|Counter9_2|Add0~5\,
	combout => \MasterMind_Core|Counter9_2|Add0~6_combout\);

-- Location: LCCOMB_X82_Y20_N6
\MasterMind_Core|Counter9_2|s_count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9_2|s_count~6_combout\ = (!\SW[0]~input_o\ & ((\MasterMind_Core|Counter9_2|s_count[2]~5_combout\ & ((\MasterMind_Core|Counter9_2|Add0~6_combout\))) # (!\MasterMind_Core|Counter9_2|s_count[2]~5_combout\ & 
-- (!\MasterMind_Core|s_up2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Counter9_2|s_count[2]~5_combout\,
	datab => \SW[0]~input_o\,
	datac => \MasterMind_Core|s_up2~1_combout\,
	datad => \MasterMind_Core|Counter9_2|Add0~6_combout\,
	combout => \MasterMind_Core|Counter9_2|s_count~6_combout\);

-- Location: FF_X82_Y20_N7
\MasterMind_Core|Counter9_2|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|freq_div2|clkOut~clkctrl_outclk\,
	d => \MasterMind_Core|Counter9_2|s_count~6_combout\,
	ena => \MasterMind_Core|Counter9_2|s_count[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|Counter9_2|s_count\(3));

-- Location: LCCOMB_X82_Y20_N16
\MasterMind_Core|Counter9_2|s_count[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9_2|s_count[2]~4_combout\ = (\MasterMind_Core|Counter9_2|s_count\(2)) # (\MasterMind_Core|Counter9_2|s_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|Counter9_2|s_count\(2),
	datad => \MasterMind_Core|Counter9_2|s_count\(1),
	combout => \MasterMind_Core|Counter9_2|s_count[2]~4_combout\);

-- Location: LCCOMB_X82_Y20_N8
\MasterMind_Core|Counter9_2|s_count[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9_2|s_count[2]~5_combout\ = (\MasterMind_Core|Counter9_2|s_count[2]~4_combout\) # ((\MasterMind_Core|s_up2~1_combout\ & ((!\MasterMind_Core|Counter9_2|s_count\(3)) # (!\MasterMind_Core|Counter9_2|s_count\(0)))) # 
-- (!\MasterMind_Core|s_up2~1_combout\ & ((\MasterMind_Core|Counter9_2|s_count\(0)) # (\MasterMind_Core|Counter9_2|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|s_up2~1_combout\,
	datab => \MasterMind_Core|Counter9_2|s_count\(0),
	datac => \MasterMind_Core|Counter9_2|s_count\(3),
	datad => \MasterMind_Core|Counter9_2|s_count[2]~4_combout\,
	combout => \MasterMind_Core|Counter9_2|s_count[2]~5_combout\);

-- Location: LCCOMB_X82_Y20_N18
\MasterMind_Core|Counter9_2|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9_2|Add0~8_combout\ = (\MasterMind_Core|Counter9_2|s_count[2]~5_combout\ & (\MasterMind_Core|Counter9_2|Add0~2_combout\ & !\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Counter9_2|s_count[2]~5_combout\,
	datac => \MasterMind_Core|Counter9_2|Add0~2_combout\,
	datad => \SW[0]~input_o\,
	combout => \MasterMind_Core|Counter9_2|Add0~8_combout\);

-- Location: FF_X82_Y20_N19
\MasterMind_Core|Counter9_2|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|freq_div2|clkOut~clkctrl_outclk\,
	d => \MasterMind_Core|Counter9_2|Add0~8_combout\,
	ena => \MasterMind_Core|Counter9_2|s_count[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|Counter9_2|s_count\(1));

-- Location: FF_X83_Y22_N29
\MasterMind_Core|register_c|dataOut2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|deb_3|s_dirty_In[5]~clkctrl_outclk\,
	asdata => \MasterMind_Core|Counter9_2|s_count\(1),
	sload => VCC,
	ena => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|register_c|dataOut2\(1));

-- Location: LCCOMB_X83_Y22_N30
\MasterMind_Core|compare|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Equal2~0_combout\ = (\MasterMind_Core|Counter9999|s_count2\(1) & (\MasterMind_Core|register_c|dataOut2\(1) & (\MasterMind_Core|Counter9999|s_count2\(0) $ (!\MasterMind_Core|register_c|dataOut2\(0))))) # 
-- (!\MasterMind_Core|Counter9999|s_count2\(1) & (!\MasterMind_Core|register_c|dataOut2\(1) & (\MasterMind_Core|Counter9999|s_count2\(0) $ (!\MasterMind_Core|register_c|dataOut2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Counter9999|s_count2\(1),
	datab => \MasterMind_Core|Counter9999|s_count2\(0),
	datac => \MasterMind_Core|register_c|dataOut2\(0),
	datad => \MasterMind_Core|register_c|dataOut2\(1),
	combout => \MasterMind_Core|compare|Equal2~0_combout\);

-- Location: FF_X83_Y22_N5
\MasterMind_Core|register_c|dataOut2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|deb_3|s_dirty_In[5]~clkctrl_outclk\,
	asdata => \MasterMind_Core|Counter9_2|s_count\(3),
	sload => VCC,
	ena => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|register_c|dataOut2\(3));

-- Location: FF_X83_Y22_N19
\MasterMind_Core|register_c|dataOut2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|deb_3|s_dirty_In[5]~clkctrl_outclk\,
	asdata => \MasterMind_Core|Counter9_2|s_count\(2),
	sload => VCC,
	ena => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|register_c|dataOut2\(2));

-- Location: LCCOMB_X83_Y22_N4
\MasterMind_Core|compare|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Equal2~1_combout\ = (\MasterMind_Core|Counter9999|s_count2\(2) & (\MasterMind_Core|register_c|dataOut2\(2) & (\MasterMind_Core|Counter9999|s_count2\(3) $ (!\MasterMind_Core|register_c|dataOut2\(3))))) # 
-- (!\MasterMind_Core|Counter9999|s_count2\(2) & (!\MasterMind_Core|register_c|dataOut2\(2) & (\MasterMind_Core|Counter9999|s_count2\(3) $ (!\MasterMind_Core|register_c|dataOut2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Counter9999|s_count2\(2),
	datab => \MasterMind_Core|Counter9999|s_count2\(3),
	datac => \MasterMind_Core|register_c|dataOut2\(3),
	datad => \MasterMind_Core|register_c|dataOut2\(2),
	combout => \MasterMind_Core|compare|Equal2~1_combout\);

-- Location: LCCOMB_X83_Y20_N26
\MasterMind_Core|s_up1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|s_up1~1_combout\ = (!\MasterMind_Core|Counter4|s_count\(1) & (\MasterMind_Core|Counter4|s_count\(0) & \MasterMind_Core|deb_1|s_dirty_In\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Counter4|s_count\(1),
	datab => \MasterMind_Core|Counter4|s_count\(0),
	datad => \MasterMind_Core|deb_1|s_dirty_In\(5),
	combout => \MasterMind_Core|s_up1~1_combout\);

-- Location: LCCOMB_X86_Y23_N10
\MasterMind_Core|Counter9_1|s_count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9_1|s_count~7_combout\ = (!\MasterMind_Core|Counter9_1|s_count\(0) & !\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MasterMind_Core|Counter9_1|s_count\(0),
	datad => \SW[0]~input_o\,
	combout => \MasterMind_Core|Counter9_1|s_count~7_combout\);

-- Location: LCCOMB_X83_Y20_N30
\MasterMind_Core|s_up1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|s_up1~0_combout\ = (\MasterMind_Core|Counter4|s_count\(0) & !\MasterMind_Core|Counter4|s_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MasterMind_Core|Counter4|s_count\(0),
	datad => \MasterMind_Core|Counter4|s_count\(1),
	combout => \MasterMind_Core|s_up1~0_combout\);

-- Location: LCCOMB_X85_Y23_N0
\MasterMind_Core|Counter9_1|s_count[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9_1|s_count[1]~8_combout\ = (\SW[0]~input_o\) # ((\MasterMind_Core|s_up1~0_combout\ & ((\MasterMind_Core|deb_2|s_dirty_In\(5)) # (\MasterMind_Core|deb_1|s_dirty_In\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \MasterMind_Core|s_up1~0_combout\,
	datac => \MasterMind_Core|deb_2|s_dirty_In\(5),
	datad => \MasterMind_Core|deb_1|s_dirty_In\(5),
	combout => \MasterMind_Core|Counter9_1|s_count[1]~8_combout\);

-- Location: FF_X86_Y23_N11
\MasterMind_Core|Counter9_1|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|freq_div2|clkOut~clkctrl_outclk\,
	d => \MasterMind_Core|Counter9_1|s_count~7_combout\,
	ena => \MasterMind_Core|Counter9_1|s_count[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|Counter9_1|s_count\(0));

-- Location: LCCOMB_X85_Y23_N24
\MasterMind_Core|Counter9_1|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9_1|Add0~1_cout\ = CARRY(\MasterMind_Core|Counter9_1|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Counter9_1|s_count\(0),
	datad => VCC,
	cout => \MasterMind_Core|Counter9_1|Add0~1_cout\);

-- Location: LCCOMB_X85_Y23_N26
\MasterMind_Core|Counter9_1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9_1|Add0~2_combout\ = (\MasterMind_Core|s_up1~1_combout\ & ((\MasterMind_Core|Counter9_1|s_count\(1) & (!\MasterMind_Core|Counter9_1|Add0~1_cout\)) # (!\MasterMind_Core|Counter9_1|s_count\(1) & 
-- ((\MasterMind_Core|Counter9_1|Add0~1_cout\) # (GND))))) # (!\MasterMind_Core|s_up1~1_combout\ & ((\MasterMind_Core|Counter9_1|s_count\(1) & (\MasterMind_Core|Counter9_1|Add0~1_cout\ & VCC)) # (!\MasterMind_Core|Counter9_1|s_count\(1) & 
-- (!\MasterMind_Core|Counter9_1|Add0~1_cout\))))
-- \MasterMind_Core|Counter9_1|Add0~3\ = CARRY((\MasterMind_Core|s_up1~1_combout\ & ((!\MasterMind_Core|Counter9_1|Add0~1_cout\) # (!\MasterMind_Core|Counter9_1|s_count\(1)))) # (!\MasterMind_Core|s_up1~1_combout\ & (!\MasterMind_Core|Counter9_1|s_count\(1) 
-- & !\MasterMind_Core|Counter9_1|Add0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|s_up1~1_combout\,
	datab => \MasterMind_Core|Counter9_1|s_count\(1),
	datad => VCC,
	cin => \MasterMind_Core|Counter9_1|Add0~1_cout\,
	combout => \MasterMind_Core|Counter9_1|Add0~2_combout\,
	cout => \MasterMind_Core|Counter9_1|Add0~3\);

-- Location: LCCOMB_X84_Y23_N30
\MasterMind_Core|Counter9_1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9_1|Add0~8_combout\ = (!\SW[0]~input_o\ & (\MasterMind_Core|Counter9_1|Add0~2_combout\ & \MasterMind_Core|Counter9_1|s_count[1]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \MasterMind_Core|Counter9_1|Add0~2_combout\,
	datad => \MasterMind_Core|Counter9_1|s_count[1]~5_combout\,
	combout => \MasterMind_Core|Counter9_1|Add0~8_combout\);

-- Location: FF_X84_Y23_N31
\MasterMind_Core|Counter9_1|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|freq_div2|clkOut~clkctrl_outclk\,
	d => \MasterMind_Core|Counter9_1|Add0~8_combout\,
	ena => \MasterMind_Core|Counter9_1|s_count[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|Counter9_1|s_count\(1));

-- Location: LCCOMB_X85_Y23_N28
\MasterMind_Core|Counter9_1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9_1|Add0~4_combout\ = ((\MasterMind_Core|s_up1~1_combout\ $ (\MasterMind_Core|Counter9_1|s_count\(2) $ (\MasterMind_Core|Counter9_1|Add0~3\)))) # (GND)
-- \MasterMind_Core|Counter9_1|Add0~5\ = CARRY((\MasterMind_Core|s_up1~1_combout\ & (\MasterMind_Core|Counter9_1|s_count\(2) & !\MasterMind_Core|Counter9_1|Add0~3\)) # (!\MasterMind_Core|s_up1~1_combout\ & ((\MasterMind_Core|Counter9_1|s_count\(2)) # 
-- (!\MasterMind_Core|Counter9_1|Add0~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|s_up1~1_combout\,
	datab => \MasterMind_Core|Counter9_1|s_count\(2),
	datad => VCC,
	cin => \MasterMind_Core|Counter9_1|Add0~3\,
	combout => \MasterMind_Core|Counter9_1|Add0~4_combout\,
	cout => \MasterMind_Core|Counter9_1|Add0~5\);

-- Location: LCCOMB_X85_Y23_N30
\MasterMind_Core|Counter9_1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9_1|Add0~6_combout\ = \MasterMind_Core|Counter9_1|s_count\(3) $ (\MasterMind_Core|Counter9_1|Add0~5\ $ (!\MasterMind_Core|s_up1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Counter9_1|s_count\(3),
	datad => \MasterMind_Core|s_up1~1_combout\,
	cin => \MasterMind_Core|Counter9_1|Add0~5\,
	combout => \MasterMind_Core|Counter9_1|Add0~6_combout\);

-- Location: LCCOMB_X85_Y23_N12
\MasterMind_Core|Counter9_1|s_count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9_1|s_count~6_combout\ = (!\SW[0]~input_o\ & ((\MasterMind_Core|Counter9_1|s_count[1]~5_combout\ & (\MasterMind_Core|Counter9_1|Add0~6_combout\)) # (!\MasterMind_Core|Counter9_1|s_count[1]~5_combout\ & 
-- ((!\MasterMind_Core|s_up1~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Counter9_1|s_count[1]~5_combout\,
	datab => \MasterMind_Core|Counter9_1|Add0~6_combout\,
	datac => \MasterMind_Core|s_up1~1_combout\,
	datad => \SW[0]~input_o\,
	combout => \MasterMind_Core|Counter9_1|s_count~6_combout\);

-- Location: FF_X85_Y23_N13
\MasterMind_Core|Counter9_1|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|freq_div2|clkOut~clkctrl_outclk\,
	d => \MasterMind_Core|Counter9_1|s_count~6_combout\,
	ena => \MasterMind_Core|Counter9_1|s_count[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|Counter9_1|s_count\(3));

-- Location: LCCOMB_X84_Y23_N22
\MasterMind_Core|Counter9_1|s_count[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9_1|s_count[1]~4_combout\ = (\MasterMind_Core|Counter9_1|s_count\(1)) # (\MasterMind_Core|Counter9_1|s_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Counter9_1|s_count\(1),
	datab => \MasterMind_Core|Counter9_1|s_count\(2),
	combout => \MasterMind_Core|Counter9_1|s_count[1]~4_combout\);

-- Location: LCCOMB_X84_Y23_N16
\MasterMind_Core|Counter9_1|s_count[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9_1|s_count[1]~5_combout\ = (\MasterMind_Core|Counter9_1|s_count[1]~4_combout\) # ((\MasterMind_Core|s_up1~1_combout\ & ((!\MasterMind_Core|Counter9_1|s_count\(3)) # (!\MasterMind_Core|Counter9_1|s_count\(0)))) # 
-- (!\MasterMind_Core|s_up1~1_combout\ & ((\MasterMind_Core|Counter9_1|s_count\(0)) # (\MasterMind_Core|Counter9_1|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|s_up1~1_combout\,
	datab => \MasterMind_Core|Counter9_1|s_count\(0),
	datac => \MasterMind_Core|Counter9_1|s_count\(3),
	datad => \MasterMind_Core|Counter9_1|s_count[1]~4_combout\,
	combout => \MasterMind_Core|Counter9_1|s_count[1]~5_combout\);

-- Location: LCCOMB_X85_Y23_N2
\MasterMind_Core|Counter9_1|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9_1|Add0~9_combout\ = (\MasterMind_Core|Counter9_1|s_count[1]~5_combout\ & (\MasterMind_Core|Counter9_1|Add0~4_combout\ & !\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Counter9_1|s_count[1]~5_combout\,
	datab => \MasterMind_Core|Counter9_1|Add0~4_combout\,
	datad => \SW[0]~input_o\,
	combout => \MasterMind_Core|Counter9_1|Add0~9_combout\);

-- Location: FF_X85_Y23_N3
\MasterMind_Core|Counter9_1|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|freq_div2|clkOut~clkctrl_outclk\,
	d => \MasterMind_Core|Counter9_1|Add0~9_combout\,
	ena => \MasterMind_Core|Counter9_1|s_count[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|Counter9_1|s_count\(2));

-- Location: FF_X84_Y23_N11
\MasterMind_Core|register_c|dataOut1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|deb_3|s_dirty_In[5]~clkctrl_outclk\,
	asdata => \MasterMind_Core|Counter9_1|s_count\(2),
	sload => VCC,
	ena => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|register_c|dataOut1\(2));

-- Location: FF_X84_Y23_N17
\MasterMind_Core|register_c|dataOut1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|deb_3|s_dirty_In[5]~clkctrl_outclk\,
	asdata => \MasterMind_Core|Counter9_1|s_count\(3),
	sload => VCC,
	ena => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|register_c|dataOut1\(3));

-- Location: LCCOMB_X84_Y23_N20
\MasterMind_Core|compare|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Equal1~1_combout\ = (\MasterMind_Core|register_c|dataOut1\(2) & (\MasterMind_Core|Counter9999|s_count1\(2) & (\MasterMind_Core|Counter9999|s_count1\(3) $ (!\MasterMind_Core|register_c|dataOut1\(3))))) # 
-- (!\MasterMind_Core|register_c|dataOut1\(2) & (!\MasterMind_Core|Counter9999|s_count1\(2) & (\MasterMind_Core|Counter9999|s_count1\(3) $ (!\MasterMind_Core|register_c|dataOut1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|register_c|dataOut1\(2),
	datab => \MasterMind_Core|Counter9999|s_count1\(2),
	datac => \MasterMind_Core|Counter9999|s_count1\(3),
	datad => \MasterMind_Core|register_c|dataOut1\(3),
	combout => \MasterMind_Core|compare|Equal1~1_combout\);

-- Location: FF_X84_Y23_N23
\MasterMind_Core|register_c|dataOut1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|deb_3|s_dirty_In[5]~clkctrl_outclk\,
	asdata => \MasterMind_Core|Counter9_1|s_count\(0),
	sload => VCC,
	ena => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|register_c|dataOut1\(0));

-- Location: FF_X84_Y23_N13
\MasterMind_Core|register_c|dataOut1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|deb_3|s_dirty_In[5]~clkctrl_outclk\,
	asdata => \MasterMind_Core|Counter9_1|s_count\(1),
	sload => VCC,
	ena => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|register_c|dataOut1\(1));

-- Location: LCCOMB_X84_Y23_N8
\MasterMind_Core|compare|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Equal1~0_combout\ = (\MasterMind_Core|Counter9999|s_count1\(1) & (\MasterMind_Core|register_c|dataOut1\(1) & (\MasterMind_Core|Counter9999|s_count1\(0) $ (!\MasterMind_Core|register_c|dataOut1\(0))))) # 
-- (!\MasterMind_Core|Counter9999|s_count1\(1) & (!\MasterMind_Core|register_c|dataOut1\(1) & (\MasterMind_Core|Counter9999|s_count1\(0) $ (!\MasterMind_Core|register_c|dataOut1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Counter9999|s_count1\(1),
	datab => \MasterMind_Core|Counter9999|s_count1\(0),
	datac => \MasterMind_Core|register_c|dataOut1\(0),
	datad => \MasterMind_Core|register_c|dataOut1\(1),
	combout => \MasterMind_Core|compare|Equal1~0_combout\);

-- Location: LCCOMB_X83_Y21_N18
\MasterMind_Core|compare|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Add1~1_combout\ = (\MasterMind_Core|compare|Equal2~0_combout\ & (\MasterMind_Core|compare|Equal2~1_combout\ $ (((\MasterMind_Core|compare|Equal1~1_combout\ & \MasterMind_Core|compare|Equal1~0_combout\))))) # 
-- (!\MasterMind_Core|compare|Equal2~0_combout\ & (((\MasterMind_Core|compare|Equal1~1_combout\ & \MasterMind_Core|compare|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|Equal2~0_combout\,
	datab => \MasterMind_Core|compare|Equal2~1_combout\,
	datac => \MasterMind_Core|compare|Equal1~1_combout\,
	datad => \MasterMind_Core|compare|Equal1~0_combout\,
	combout => \MasterMind_Core|compare|Add1~1_combout\);

-- Location: LCCOMB_X83_Y21_N24
\MasterMind_Core|compare|cer~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|cer~6_combout\ = \MasterMind_Core|compare|Add0~2_combout\ $ (\MasterMind_Core|compare|Add1~1_combout\ $ (((\MasterMind_Core|compare|Equal3~0_combout\ & \MasterMind_Core|compare|Equal3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|Equal3~0_combout\,
	datab => \MasterMind_Core|compare|Add0~2_combout\,
	datac => \MasterMind_Core|compare|Equal3~1_combout\,
	datad => \MasterMind_Core|compare|Add1~1_combout\,
	combout => \MasterMind_Core|compare|cer~6_combout\);

-- Location: LCCOMB_X82_Y21_N16
\MasterMind_Core|compare|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Selector7~0_combout\ = (\MasterMind_Core|compare|NState.S2~q\ & ((\MasterMind_Core|compare|cer\(0)) # ((\MasterMind_Core|compare|NState.S1~q\ & \MasterMind_Core|compare|cer~6_combout\)))) # (!\MasterMind_Core|compare|NState.S2~q\ 
-- & (\MasterMind_Core|compare|NState.S1~q\ & ((\MasterMind_Core|compare|cer~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|NState.S2~q\,
	datab => \MasterMind_Core|compare|NState.S1~q\,
	datac => \MasterMind_Core|compare|cer\(0),
	datad => \MasterMind_Core|compare|cer~6_combout\,
	combout => \MasterMind_Core|compare|Selector7~0_combout\);

-- Location: FF_X82_Y21_N17
\MasterMind_Core|compare|cer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|compare|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|compare|cer\(0));

-- Location: LCCOMB_X83_Y20_N28
\MasterMind_Core|s_up0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|s_up0~1_combout\ = (!\MasterMind_Core|Counter4|s_count\(1) & (!\MasterMind_Core|Counter4|s_count\(0) & \MasterMind_Core|deb_1|s_dirty_In\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Counter4|s_count\(1),
	datac => \MasterMind_Core|Counter4|s_count\(0),
	datad => \MasterMind_Core|deb_1|s_dirty_In\(5),
	combout => \MasterMind_Core|s_up0~1_combout\);

-- Location: LCCOMB_X84_Y20_N18
\MasterMind_Core|Counter9_0|s_count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9_0|s_count~7_combout\ = (!\MasterMind_Core|Counter9_0|s_count\(0) & !\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MasterMind_Core|Counter9_0|s_count\(0),
	datad => \SW[0]~input_o\,
	combout => \MasterMind_Core|Counter9_0|s_count~7_combout\);

-- Location: LCCOMB_X82_Y19_N16
\MasterMind_Core|s_up0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|s_up0~0_combout\ = (!\MasterMind_Core|Counter4|s_count\(0) & !\MasterMind_Core|Counter4|s_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MasterMind_Core|Counter4|s_count\(0),
	datad => \MasterMind_Core|Counter4|s_count\(1),
	combout => \MasterMind_Core|s_up0~0_combout\);

-- Location: LCCOMB_X85_Y20_N16
\MasterMind_Core|Counter9_0|s_count[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9_0|s_count[3]~8_combout\ = (\SW[0]~input_o\) # ((\MasterMind_Core|s_up0~0_combout\ & ((\MasterMind_Core|deb_2|s_dirty_In\(5)) # (\MasterMind_Core|deb_1|s_dirty_In\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|s_up0~0_combout\,
	datab => \SW[0]~input_o\,
	datac => \MasterMind_Core|deb_2|s_dirty_In\(5),
	datad => \MasterMind_Core|deb_1|s_dirty_In\(5),
	combout => \MasterMind_Core|Counter9_0|s_count[3]~8_combout\);

-- Location: FF_X84_Y20_N19
\MasterMind_Core|Counter9_0|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|freq_div2|clkOut~clkctrl_outclk\,
	d => \MasterMind_Core|Counter9_0|s_count~7_combout\,
	ena => \MasterMind_Core|Counter9_0|s_count[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|Counter9_0|s_count\(0));

-- Location: LCCOMB_X83_Y20_N2
\MasterMind_Core|Counter9_0|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9_0|Add0~1_cout\ = CARRY(\MasterMind_Core|Counter9_0|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|Counter9_0|s_count\(0),
	datad => VCC,
	cout => \MasterMind_Core|Counter9_0|Add0~1_cout\);

-- Location: LCCOMB_X83_Y20_N4
\MasterMind_Core|Counter9_0|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9_0|Add0~2_combout\ = (\MasterMind_Core|s_up0~1_combout\ & ((\MasterMind_Core|Counter9_0|s_count\(1) & (!\MasterMind_Core|Counter9_0|Add0~1_cout\)) # (!\MasterMind_Core|Counter9_0|s_count\(1) & 
-- ((\MasterMind_Core|Counter9_0|Add0~1_cout\) # (GND))))) # (!\MasterMind_Core|s_up0~1_combout\ & ((\MasterMind_Core|Counter9_0|s_count\(1) & (\MasterMind_Core|Counter9_0|Add0~1_cout\ & VCC)) # (!\MasterMind_Core|Counter9_0|s_count\(1) & 
-- (!\MasterMind_Core|Counter9_0|Add0~1_cout\))))
-- \MasterMind_Core|Counter9_0|Add0~3\ = CARRY((\MasterMind_Core|s_up0~1_combout\ & ((!\MasterMind_Core|Counter9_0|Add0~1_cout\) # (!\MasterMind_Core|Counter9_0|s_count\(1)))) # (!\MasterMind_Core|s_up0~1_combout\ & (!\MasterMind_Core|Counter9_0|s_count\(1) 
-- & !\MasterMind_Core|Counter9_0|Add0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|s_up0~1_combout\,
	datab => \MasterMind_Core|Counter9_0|s_count\(1),
	datad => VCC,
	cin => \MasterMind_Core|Counter9_0|Add0~1_cout\,
	combout => \MasterMind_Core|Counter9_0|Add0~2_combout\,
	cout => \MasterMind_Core|Counter9_0|Add0~3\);

-- Location: LCCOMB_X83_Y20_N6
\MasterMind_Core|Counter9_0|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9_0|Add0~4_combout\ = ((\MasterMind_Core|s_up0~1_combout\ $ (\MasterMind_Core|Counter9_0|s_count\(2) $ (\MasterMind_Core|Counter9_0|Add0~3\)))) # (GND)
-- \MasterMind_Core|Counter9_0|Add0~5\ = CARRY((\MasterMind_Core|s_up0~1_combout\ & (\MasterMind_Core|Counter9_0|s_count\(2) & !\MasterMind_Core|Counter9_0|Add0~3\)) # (!\MasterMind_Core|s_up0~1_combout\ & ((\MasterMind_Core|Counter9_0|s_count\(2)) # 
-- (!\MasterMind_Core|Counter9_0|Add0~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|s_up0~1_combout\,
	datab => \MasterMind_Core|Counter9_0|s_count\(2),
	datad => VCC,
	cin => \MasterMind_Core|Counter9_0|Add0~3\,
	combout => \MasterMind_Core|Counter9_0|Add0~4_combout\,
	cout => \MasterMind_Core|Counter9_0|Add0~5\);

-- Location: LCCOMB_X83_Y20_N0
\MasterMind_Core|Counter9_0|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9_0|Add0~9_combout\ = (\MasterMind_Core|Counter9_0|s_count[3]~5_combout\ & (\MasterMind_Core|Counter9_0|Add0~4_combout\ & !\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|Counter9_0|s_count[3]~5_combout\,
	datac => \MasterMind_Core|Counter9_0|Add0~4_combout\,
	datad => \SW[0]~input_o\,
	combout => \MasterMind_Core|Counter9_0|Add0~9_combout\);

-- Location: FF_X83_Y20_N1
\MasterMind_Core|Counter9_0|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|freq_div2|clkOut~clkctrl_outclk\,
	d => \MasterMind_Core|Counter9_0|Add0~9_combout\,
	ena => \MasterMind_Core|Counter9_0|s_count[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|Counter9_0|s_count\(2));

-- Location: LCCOMB_X83_Y20_N22
\MasterMind_Core|Counter9_0|s_count[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9_0|s_count[3]~4_combout\ = (\MasterMind_Core|Counter9_0|s_count\(1)) # (\MasterMind_Core|Counter9_0|s_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|Counter9_0|s_count\(1),
	datad => \MasterMind_Core|Counter9_0|s_count\(2),
	combout => \MasterMind_Core|Counter9_0|s_count[3]~4_combout\);

-- Location: LCCOMB_X83_Y20_N8
\MasterMind_Core|Counter9_0|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9_0|Add0~6_combout\ = \MasterMind_Core|Counter9_0|s_count\(3) $ (\MasterMind_Core|Counter9_0|Add0~5\ $ (!\MasterMind_Core|s_up0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|Counter9_0|s_count\(3),
	datad => \MasterMind_Core|s_up0~1_combout\,
	cin => \MasterMind_Core|Counter9_0|Add0~5\,
	combout => \MasterMind_Core|Counter9_0|Add0~6_combout\);

-- Location: LCCOMB_X84_Y20_N30
\MasterMind_Core|Counter9_0|s_count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9_0|s_count~6_combout\ = (!\SW[0]~input_o\ & ((\MasterMind_Core|Counter9_0|s_count[3]~5_combout\ & ((\MasterMind_Core|Counter9_0|Add0~6_combout\))) # (!\MasterMind_Core|Counter9_0|s_count[3]~5_combout\ & 
-- (!\MasterMind_Core|s_up0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \MasterMind_Core|s_up0~1_combout\,
	datac => \MasterMind_Core|Counter9_0|Add0~6_combout\,
	datad => \MasterMind_Core|Counter9_0|s_count[3]~5_combout\,
	combout => \MasterMind_Core|Counter9_0|s_count~6_combout\);

-- Location: FF_X84_Y20_N31
\MasterMind_Core|Counter9_0|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|freq_div2|clkOut~clkctrl_outclk\,
	d => \MasterMind_Core|Counter9_0|s_count~6_combout\,
	ena => \MasterMind_Core|Counter9_0|s_count[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|Counter9_0|s_count\(3));

-- Location: LCCOMB_X83_Y20_N24
\MasterMind_Core|Counter9_0|s_count[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9_0|s_count[3]~5_combout\ = (\MasterMind_Core|Counter9_0|s_count[3]~4_combout\) # ((\MasterMind_Core|Counter9_0|s_count\(0) & ((!\MasterMind_Core|Counter9_0|s_count\(3)) # (!\MasterMind_Core|s_up0~1_combout\))) # 
-- (!\MasterMind_Core|Counter9_0|s_count\(0) & ((\MasterMind_Core|s_up0~1_combout\) # (\MasterMind_Core|Counter9_0|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Counter9_0|s_count[3]~4_combout\,
	datab => \MasterMind_Core|Counter9_0|s_count\(0),
	datac => \MasterMind_Core|s_up0~1_combout\,
	datad => \MasterMind_Core|Counter9_0|s_count\(3),
	combout => \MasterMind_Core|Counter9_0|s_count[3]~5_combout\);

-- Location: LCCOMB_X84_Y20_N12
\MasterMind_Core|Counter9_0|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|Counter9_0|Add0~8_combout\ = (\MasterMind_Core|Counter9_0|s_count[3]~5_combout\ & (\MasterMind_Core|Counter9_0|Add0~2_combout\ & !\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Counter9_0|s_count[3]~5_combout\,
	datac => \MasterMind_Core|Counter9_0|Add0~2_combout\,
	datad => \SW[0]~input_o\,
	combout => \MasterMind_Core|Counter9_0|Add0~8_combout\);

-- Location: FF_X84_Y20_N13
\MasterMind_Core|Counter9_0|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|freq_div2|clkOut~clkctrl_outclk\,
	d => \MasterMind_Core|Counter9_0|Add0~8_combout\,
	ena => \MasterMind_Core|Counter9_0|s_count[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|Counter9_0|s_count\(1));

-- Location: FF_X83_Y23_N13
\MasterMind_Core|register_c|dataOut0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|deb_3|s_dirty_In[5]~clkctrl_outclk\,
	asdata => \MasterMind_Core|Counter9_0|s_count\(1),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|register_c|dataOut0\(1));

-- Location: FF_X83_Y23_N3
\MasterMind_Core|register_c|dataOut0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|deb_3|s_dirty_In[5]~clkctrl_outclk\,
	asdata => \MasterMind_Core|Counter9_0|s_count\(0),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|register_c|dataOut0\(0));

-- Location: LCCOMB_X83_Y23_N8
\MasterMind_Core|compare|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Equal0~0_combout\ = (\MasterMind_Core|register_c|dataOut0\(1) & (\MasterMind_Core|Counter9999|s_count0\(1) & (\MasterMind_Core|register_c|dataOut0\(0) $ (!\MasterMind_Core|Counter9999|s_count0\(0))))) # 
-- (!\MasterMind_Core|register_c|dataOut0\(1) & (!\MasterMind_Core|Counter9999|s_count0\(1) & (\MasterMind_Core|register_c|dataOut0\(0) $ (!\MasterMind_Core|Counter9999|s_count0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|register_c|dataOut0\(1),
	datab => \MasterMind_Core|register_c|dataOut0\(0),
	datac => \MasterMind_Core|Counter9999|s_count0\(1),
	datad => \MasterMind_Core|Counter9999|s_count0\(0),
	combout => \MasterMind_Core|compare|Equal0~0_combout\);

-- Location: FF_X83_Y23_N5
\MasterMind_Core|register_c|dataOut0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|deb_3|s_dirty_In[5]~clkctrl_outclk\,
	asdata => \MasterMind_Core|Counter9_0|s_count\(2),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|register_c|dataOut0\(2));

-- Location: FF_X83_Y23_N15
\MasterMind_Core|register_c|dataOut0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|deb_3|s_dirty_In[5]~clkctrl_outclk\,
	asdata => \MasterMind_Core|Counter9_0|s_count\(3),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|register_c|dataOut0\(3));

-- Location: LCCOMB_X83_Y23_N10
\MasterMind_Core|compare|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Equal0~1_combout\ = (\MasterMind_Core|Counter9999|s_count0\(2) & (\MasterMind_Core|register_c|dataOut0\(2) & (\MasterMind_Core|register_c|dataOut0\(3) $ (!\MasterMind_Core|Counter9999|s_count0\(3))))) # 
-- (!\MasterMind_Core|Counter9999|s_count0\(2) & (!\MasterMind_Core|register_c|dataOut0\(2) & (\MasterMind_Core|register_c|dataOut0\(3) $ (!\MasterMind_Core|Counter9999|s_count0\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Counter9999|s_count0\(2),
	datab => \MasterMind_Core|register_c|dataOut0\(2),
	datac => \MasterMind_Core|register_c|dataOut0\(3),
	datad => \MasterMind_Core|Counter9999|s_count0\(3),
	combout => \MasterMind_Core|compare|Equal0~1_combout\);

-- Location: LCCOMB_X83_Y23_N0
\MasterMind_Core|compare|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Add0~2_combout\ = \MasterMind_Core|compare|cer\(0) $ (((\MasterMind_Core|compare|Equal0~0_combout\ & \MasterMind_Core|compare|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|cer\(0),
	datac => \MasterMind_Core|compare|Equal0~0_combout\,
	datad => \MasterMind_Core|compare|Equal0~1_combout\,
	combout => \MasterMind_Core|compare|Add0~2_combout\);

-- Location: LCCOMB_X82_Y24_N22
\MasterMind_Core|compare|Equal3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Equal3~2_combout\ = (\MasterMind_Core|compare|Equal3~1_combout\ & \MasterMind_Core|compare|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MasterMind_Core|compare|Equal3~1_combout\,
	datad => \MasterMind_Core|compare|Equal3~0_combout\,
	combout => \MasterMind_Core|compare|Equal3~2_combout\);

-- Location: LCCOMB_X83_Y21_N20
\MasterMind_Core|compare|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Add1~0_combout\ = (\MasterMind_Core|compare|Equal1~1_combout\ & (\MasterMind_Core|compare|Equal1~0_combout\ & (\MasterMind_Core|compare|Equal2~0_combout\ & \MasterMind_Core|compare|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|Equal1~1_combout\,
	datab => \MasterMind_Core|compare|Equal1~0_combout\,
	datac => \MasterMind_Core|compare|Equal2~0_combout\,
	datad => \MasterMind_Core|compare|Equal2~1_combout\,
	combout => \MasterMind_Core|compare|Add1~0_combout\);

-- Location: LCCOMB_X83_Y21_N22
\MasterMind_Core|compare|Add2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Add2~3_combout\ = \MasterMind_Core|compare|Add0~1_combout\ $ (\MasterMind_Core|compare|Add1~0_combout\ $ (((\MasterMind_Core|compare|Add0~2_combout\ & \MasterMind_Core|compare|Add1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|Add0~2_combout\,
	datab => \MasterMind_Core|compare|Add1~1_combout\,
	datac => \MasterMind_Core|compare|Add0~1_combout\,
	datad => \MasterMind_Core|compare|Add1~0_combout\,
	combout => \MasterMind_Core|compare|Add2~3_combout\);

-- Location: LCCOMB_X83_Y21_N8
\MasterMind_Core|compare|cer~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|cer~5_combout\ = \MasterMind_Core|compare|Add2~3_combout\ $ (((\MasterMind_Core|compare|Equal3~2_combout\ & (\MasterMind_Core|compare|Add0~2_combout\ $ (\MasterMind_Core|compare|Add1~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|Add0~2_combout\,
	datab => \MasterMind_Core|compare|Add1~1_combout\,
	datac => \MasterMind_Core|compare|Equal3~2_combout\,
	datad => \MasterMind_Core|compare|Add2~3_combout\,
	combout => \MasterMind_Core|compare|cer~5_combout\);

-- Location: LCCOMB_X82_Y21_N28
\MasterMind_Core|compare|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Selector6~0_combout\ = (\MasterMind_Core|compare|NState.S2~q\ & ((\MasterMind_Core|compare|cer\(1)) # ((\MasterMind_Core|compare|NState.S1~q\ & \MasterMind_Core|compare|cer~5_combout\)))) # (!\MasterMind_Core|compare|NState.S2~q\ 
-- & (\MasterMind_Core|compare|NState.S1~q\ & ((\MasterMind_Core|compare|cer~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|NState.S2~q\,
	datab => \MasterMind_Core|compare|NState.S1~q\,
	datac => \MasterMind_Core|compare|cer\(1),
	datad => \MasterMind_Core|compare|cer~5_combout\,
	combout => \MasterMind_Core|compare|Selector6~0_combout\);

-- Location: FF_X82_Y21_N29
\MasterMind_Core|compare|cer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|compare|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|compare|cer\(1));

-- Location: LCCOMB_X83_Y23_N22
\MasterMind_Core|compare|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Add0~1_combout\ = \MasterMind_Core|compare|cer\(1) $ (((\MasterMind_Core|compare|cer\(0) & (\MasterMind_Core|compare|Equal0~0_combout\ & \MasterMind_Core|compare|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|cer\(0),
	datab => \MasterMind_Core|compare|cer\(1),
	datac => \MasterMind_Core|compare|Equal0~0_combout\,
	datad => \MasterMind_Core|compare|Equal0~1_combout\,
	combout => \MasterMind_Core|compare|Add0~1_combout\);

-- Location: LCCOMB_X83_Y21_N30
\MasterMind_Core|compare|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Add3~0_combout\ = (\MasterMind_Core|compare|Add0~2_combout\ & (!\MasterMind_Core|compare|Add1~1_combout\ & (\MasterMind_Core|compare|Add0~1_combout\ $ (\MasterMind_Core|compare|Add1~0_combout\)))) # 
-- (!\MasterMind_Core|compare|Add0~2_combout\ & (\MasterMind_Core|compare|Add1~1_combout\ & (\MasterMind_Core|compare|Add0~1_combout\ $ (\MasterMind_Core|compare|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|Add0~2_combout\,
	datab => \MasterMind_Core|compare|Add1~1_combout\,
	datac => \MasterMind_Core|compare|Add0~1_combout\,
	datad => \MasterMind_Core|compare|Add1~0_combout\,
	combout => \MasterMind_Core|compare|Add3~0_combout\);

-- Location: LCCOMB_X83_Y23_N24
\MasterMind_Core|compare|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Add0~0_combout\ = (\MasterMind_Core|compare|Equal0~1_combout\ & (\MasterMind_Core|compare|cer\(1) & (\MasterMind_Core|compare|Equal0~0_combout\ & \MasterMind_Core|compare|cer\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|Equal0~1_combout\,
	datab => \MasterMind_Core|compare|cer\(1),
	datac => \MasterMind_Core|compare|Equal0~0_combout\,
	datad => \MasterMind_Core|compare|cer\(0),
	combout => \MasterMind_Core|compare|Add0~0_combout\);

-- Location: LCCOMB_X83_Y21_N28
\MasterMind_Core|compare|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Add2~0_combout\ = (\MasterMind_Core|compare|Add0~1_combout\ & ((\MasterMind_Core|compare|Add1~0_combout\) # ((\MasterMind_Core|compare|Add0~2_combout\ & \MasterMind_Core|compare|Add1~1_combout\)))) # 
-- (!\MasterMind_Core|compare|Add0~1_combout\ & (\MasterMind_Core|compare|Add0~2_combout\ & (\MasterMind_Core|compare|Add1~1_combout\ & \MasterMind_Core|compare|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|Add0~2_combout\,
	datab => \MasterMind_Core|compare|Add1~1_combout\,
	datac => \MasterMind_Core|compare|Add0~1_combout\,
	datad => \MasterMind_Core|compare|Add1~0_combout\,
	combout => \MasterMind_Core|compare|Add2~0_combout\);

-- Location: LCCOMB_X83_Y21_N16
\MasterMind_Core|compare|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Add2~2_combout\ = \MasterMind_Core|compare|cer\(2) $ (\MasterMind_Core|compare|Add0~0_combout\ $ (\MasterMind_Core|compare|Add2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|cer\(2),
	datac => \MasterMind_Core|compare|Add0~0_combout\,
	datad => \MasterMind_Core|compare|Add2~0_combout\,
	combout => \MasterMind_Core|compare|Add2~2_combout\);

-- Location: LCCOMB_X83_Y21_N6
\MasterMind_Core|compare|cer~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|cer~7_combout\ = \MasterMind_Core|compare|Add2~2_combout\ $ (((\MasterMind_Core|compare|Equal3~0_combout\ & (\MasterMind_Core|compare|Equal3~1_combout\ & \MasterMind_Core|compare|Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|Equal3~0_combout\,
	datab => \MasterMind_Core|compare|Equal3~1_combout\,
	datac => \MasterMind_Core|compare|Add3~0_combout\,
	datad => \MasterMind_Core|compare|Add2~2_combout\,
	combout => \MasterMind_Core|compare|cer~7_combout\);

-- Location: LCCOMB_X81_Y19_N20
\MasterMind_Core|compare|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Selector5~0_combout\ = (\MasterMind_Core|compare|NState.S2~q\ & ((\MasterMind_Core|compare|cer\(2)) # ((\MasterMind_Core|compare|NState.S1~q\ & \MasterMind_Core|compare|cer~7_combout\)))) # (!\MasterMind_Core|compare|NState.S2~q\ 
-- & (\MasterMind_Core|compare|NState.S1~q\ & ((\MasterMind_Core|compare|cer~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|NState.S2~q\,
	datab => \MasterMind_Core|compare|NState.S1~q\,
	datac => \MasterMind_Core|compare|cer\(2),
	datad => \MasterMind_Core|compare|cer~7_combout\,
	combout => \MasterMind_Core|compare|Selector5~0_combout\);

-- Location: FF_X81_Y19_N21
\MasterMind_Core|compare|cer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|compare|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|compare|cer\(2));

-- Location: LCCOMB_X81_Y19_N10
\MasterMind_Core|checkEnd|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|checkEnd|Selector19~0_combout\ = (\MasterMind_Core|checkEnd|pState.S1~q\) # ((\MasterMind_Core|checkEnd|pState.S3~q\ & \MasterMind_Core|compare|cer\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|checkEnd|pState.S3~q\,
	datab => \MasterMind_Core|checkEnd|pState.S1~q\,
	datad => \MasterMind_Core|compare|cer\(2),
	combout => \MasterMind_Core|checkEnd|Selector19~0_combout\);

-- Location: LCCOMB_X81_Y19_N14
\MasterMind_Core|checkEnd|s_p[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|checkEnd|s_p\(2) = (\MasterMind_Core|checkEnd|pState.S0~q\ & ((\MasterMind_Core|checkEnd|Selector19~0_combout\))) # (!\MasterMind_Core|checkEnd|pState.S0~q\ & (\MasterMind_Core|checkEnd|s_p\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|checkEnd|s_p\(2),
	datac => \MasterMind_Core|checkEnd|pState.S0~q\,
	datad => \MasterMind_Core|checkEnd|Selector19~0_combout\,
	combout => \MasterMind_Core|checkEnd|s_p\(2));

-- Location: LCCOMB_X82_Y21_N2
\MasterMind_Core|checkEnd|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|checkEnd|Selector18~0_combout\ = (\MasterMind_Core|checkEnd|pState.S3~q\ & \MasterMind_Core|compare|cer\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MasterMind_Core|checkEnd|pState.S3~q\,
	datad => \MasterMind_Core|compare|cer\(1),
	combout => \MasterMind_Core|checkEnd|Selector18~0_combout\);

-- Location: LCCOMB_X82_Y19_N30
\MasterMind_Core|checkEnd|s_p[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|checkEnd|s_p\(1) = (\MasterMind_Core|checkEnd|pState.S0~q\ & ((\MasterMind_Core|checkEnd|Selector18~0_combout\))) # (!\MasterMind_Core|checkEnd|pState.S0~q\ & (\MasterMind_Core|checkEnd|s_p\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|checkEnd|s_p\(1),
	datac => \MasterMind_Core|checkEnd|pState.S0~q\,
	datad => \MasterMind_Core|checkEnd|Selector18~0_combout\,
	combout => \MasterMind_Core|checkEnd|s_p\(1));

-- Location: LCCOMB_X82_Y21_N14
\MasterMind_Core|checkEnd|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|checkEnd|Selector17~0_combout\ = (\MasterMind_Core|checkEnd|pState.S3~q\ & \MasterMind_Core|compare|cer\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MasterMind_Core|checkEnd|pState.S3~q\,
	datad => \MasterMind_Core|compare|cer\(0),
	combout => \MasterMind_Core|checkEnd|Selector17~0_combout\);

-- Location: LCCOMB_X82_Y19_N18
\MasterMind_Core|checkEnd|s_p[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|checkEnd|s_p\(0) = (\MasterMind_Core|checkEnd|pState.S0~q\ & ((\MasterMind_Core|checkEnd|Selector17~0_combout\))) # (!\MasterMind_Core|checkEnd|pState.S0~q\ & (\MasterMind_Core|checkEnd|s_p\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|checkEnd|s_p\(0),
	datac => \MasterMind_Core|checkEnd|pState.S0~q\,
	datad => \MasterMind_Core|checkEnd|Selector17~0_combout\,
	combout => \MasterMind_Core|checkEnd|s_p\(0));

-- Location: LCCOMB_X82_Y19_N0
\MasterMind_Core|bin7segdec2|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec2|Equal7~0_combout\ = (\MasterMind_Core|checkEnd|s_p\(2) & (!\MasterMind_Core|checkEnd|s_p\(3) & (!\MasterMind_Core|checkEnd|s_p\(1) & !\MasterMind_Core|checkEnd|s_p\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|checkEnd|s_p\(2),
	datab => \MasterMind_Core|checkEnd|s_p\(3),
	datac => \MasterMind_Core|checkEnd|s_p\(1),
	datad => \MasterMind_Core|checkEnd|s_p\(0),
	combout => \MasterMind_Core|bin7segdec2|Equal7~0_combout\);

-- Location: LCCOMB_X84_Y21_N30
\MasterMind_Core|counter99|s_count1[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|counter99|s_count1[0]~4_combout\ = \MasterMind_Core|counter99|s_count1\(0) $ ((((\MasterMind_Core|counter99|Equal0~0_combout\) # (!\MasterMind_Core|deb_3|s_dirty_In\(5))) # (!\MasterMind_Core|counter99|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|counter99|s_count1\(0),
	datab => \MasterMind_Core|counter99|Equal1~0_combout\,
	datac => \MasterMind_Core|deb_3|s_dirty_In\(5),
	datad => \MasterMind_Core|counter99|Equal0~0_combout\,
	combout => \MasterMind_Core|counter99|s_count1[0]~4_combout\);

-- Location: LCCOMB_X84_Y21_N4
\MasterMind_Core|counter99|s_count1[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|counter99|s_count1[0]~5_combout\ = (!\MasterMind_Core|counter99|s_count1[0]~4_combout\ & !\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MasterMind_Core|counter99|s_count1[0]~4_combout\,
	datad => \SW[0]~input_o\,
	combout => \MasterMind_Core|counter99|s_count1[0]~5_combout\);

-- Location: FF_X84_Y21_N5
\MasterMind_Core|counter99|s_count1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|freq_div2|clkOut~clkctrl_outclk\,
	d => \MasterMind_Core|counter99|s_count1[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|counter99|s_count1\(0));

-- Location: LCCOMB_X83_Y19_N24
\MasterMind_Core|counter99|s_count1[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|counter99|s_count1[3]~1_combout\ = (!\SW[0]~input_o\ & (((\MasterMind_Core|counter99|Equal0~0_combout\) # (!\MasterMind_Core|counter99|Equal1~0_combout\)) # (!\MasterMind_Core|deb_3|s_dirty_In\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|deb_3|s_dirty_In\(5),
	datab => \SW[0]~input_o\,
	datac => \MasterMind_Core|counter99|Equal1~0_combout\,
	datad => \MasterMind_Core|counter99|Equal0~0_combout\,
	combout => \MasterMind_Core|counter99|s_count1[3]~1_combout\);

-- Location: LCCOMB_X83_Y19_N0
\MasterMind_Core|counter99|s_count1[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|counter99|s_count1[1]~0_combout\ = (\MasterMind_Core|counter99|Equal1~0_combout\ & (\MasterMind_Core|deb_3|s_dirty_In\(5) & (!\SW[0]~input_o\ & !\MasterMind_Core|counter99|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|counter99|Equal1~0_combout\,
	datab => \MasterMind_Core|deb_3|s_dirty_In\(5),
	datac => \SW[0]~input_o\,
	datad => \MasterMind_Core|counter99|Equal0~0_combout\,
	combout => \MasterMind_Core|counter99|s_count1[1]~0_combout\);

-- Location: LCCOMB_X83_Y19_N2
\MasterMind_Core|counter99|s_count1[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|counter99|s_count1[1]~6_combout\ = (\MasterMind_Core|counter99|s_count1\(1) & ((\MasterMind_Core|counter99|s_count1[3]~1_combout\) # ((!\MasterMind_Core|counter99|s_count1\(0) & \MasterMind_Core|counter99|s_count1[1]~0_combout\)))) # 
-- (!\MasterMind_Core|counter99|s_count1\(1) & (\MasterMind_Core|counter99|s_count1\(0) & ((\MasterMind_Core|counter99|s_count1[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|counter99|s_count1\(0),
	datab => \MasterMind_Core|counter99|s_count1[3]~1_combout\,
	datac => \MasterMind_Core|counter99|s_count1\(1),
	datad => \MasterMind_Core|counter99|s_count1[1]~0_combout\,
	combout => \MasterMind_Core|counter99|s_count1[1]~6_combout\);

-- Location: FF_X83_Y19_N3
\MasterMind_Core|counter99|s_count1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|freq_div2|clkOut~clkctrl_outclk\,
	d => \MasterMind_Core|counter99|s_count1[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|counter99|s_count1\(1));

-- Location: LCCOMB_X84_Y19_N2
\MasterMind_Core|counter99|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|counter99|Add0~0_combout\ = \MasterMind_Core|counter99|s_count1\(2) $ (((\MasterMind_Core|counter99|s_count1\(0) & \MasterMind_Core|counter99|s_count1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|counter99|s_count1\(2),
	datac => \MasterMind_Core|counter99|s_count1\(0),
	datad => \MasterMind_Core|counter99|s_count1\(1),
	combout => \MasterMind_Core|counter99|Add0~0_combout\);

-- Location: LCCOMB_X83_Y19_N8
\MasterMind_Core|counter99|s_count1[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|counter99|s_count1[2]~2_combout\ = (\MasterMind_Core|counter99|s_count1[1]~0_combout\ & ((\MasterMind_Core|counter99|Add0~0_combout\) # ((\MasterMind_Core|counter99|s_count1[3]~1_combout\ & \MasterMind_Core|counter99|s_count1\(2))))) # 
-- (!\MasterMind_Core|counter99|s_count1[1]~0_combout\ & (\MasterMind_Core|counter99|s_count1[3]~1_combout\ & (\MasterMind_Core|counter99|s_count1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|counter99|s_count1[1]~0_combout\,
	datab => \MasterMind_Core|counter99|s_count1[3]~1_combout\,
	datac => \MasterMind_Core|counter99|s_count1\(2),
	datad => \MasterMind_Core|counter99|Add0~0_combout\,
	combout => \MasterMind_Core|counter99|s_count1[2]~2_combout\);

-- Location: FF_X83_Y19_N9
\MasterMind_Core|counter99|s_count1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|freq_div2|clkOut~clkctrl_outclk\,
	d => \MasterMind_Core|counter99|s_count1[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|counter99|s_count1\(2));

-- Location: LCCOMB_X84_Y19_N20
\MasterMind_Core|counter99|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|counter99|Add0~1_combout\ = \MasterMind_Core|counter99|s_count1\(3) $ (((\MasterMind_Core|counter99|s_count1\(1) & (\MasterMind_Core|counter99|s_count1\(2) & \MasterMind_Core|counter99|s_count1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|counter99|s_count1\(1),
	datab => \MasterMind_Core|counter99|s_count1\(2),
	datac => \MasterMind_Core|counter99|s_count1\(0),
	datad => \MasterMind_Core|counter99|s_count1\(3),
	combout => \MasterMind_Core|counter99|Add0~1_combout\);

-- Location: LCCOMB_X83_Y19_N30
\MasterMind_Core|counter99|s_count1[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|counter99|s_count1[3]~3_combout\ = (\MasterMind_Core|counter99|Add0~1_combout\ & ((\MasterMind_Core|counter99|s_count1[1]~0_combout\) # ((\MasterMind_Core|counter99|s_count1[3]~1_combout\ & \MasterMind_Core|counter99|s_count1\(3))))) # 
-- (!\MasterMind_Core|counter99|Add0~1_combout\ & (\MasterMind_Core|counter99|s_count1[3]~1_combout\ & (\MasterMind_Core|counter99|s_count1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|counter99|Add0~1_combout\,
	datab => \MasterMind_Core|counter99|s_count1[3]~1_combout\,
	datac => \MasterMind_Core|counter99|s_count1\(3),
	datad => \MasterMind_Core|counter99|s_count1[1]~0_combout\,
	combout => \MasterMind_Core|counter99|s_count1[3]~3_combout\);

-- Location: FF_X83_Y19_N31
\MasterMind_Core|counter99|s_count1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|freq_div2|clkOut~clkctrl_outclk\,
	d => \MasterMind_Core|counter99|s_count1[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|counter99|s_count1\(3));

-- Location: LCCOMB_X83_Y19_N18
\MasterMind_Core|counter99|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|counter99|Equal0~0_combout\ = (\MasterMind_Core|counter99|s_count1\(3) & (!\MasterMind_Core|counter99|s_count1\(1) & (!\MasterMind_Core|counter99|s_count1\(2) & \MasterMind_Core|counter99|s_count1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|counter99|s_count1\(3),
	datab => \MasterMind_Core|counter99|s_count1\(1),
	datac => \MasterMind_Core|counter99|s_count1\(2),
	datad => \MasterMind_Core|counter99|s_count1\(0),
	combout => \MasterMind_Core|counter99|Equal0~0_combout\);

-- Location: LCCOMB_X83_Y19_N10
\MasterMind_Core|counter99|s_count0[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|counter99|s_count0[3]~1_combout\ = (!\SW[0]~input_o\ & (((\MasterMind_Core|counter99|Equal1~0_combout\ & \MasterMind_Core|counter99|Equal0~0_combout\)) # (!\MasterMind_Core|deb_3|s_dirty_In\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|deb_3|s_dirty_In\(5),
	datab => \SW[0]~input_o\,
	datac => \MasterMind_Core|counter99|Equal1~0_combout\,
	datad => \MasterMind_Core|counter99|Equal0~0_combout\,
	combout => \MasterMind_Core|counter99|s_count0[3]~1_combout\);

-- Location: LCCOMB_X83_Y19_N20
\MasterMind_Core|counter99|s_count0[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|counter99|s_count0[0]~4_combout\ = (!\SW[0]~input_o\ & (\MasterMind_Core|counter99|s_count0\(0) $ (((\MasterMind_Core|checkEnd|compare_proc~0_combout\ & \MasterMind_Core|deb_3|s_dirty_In\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|checkEnd|compare_proc~0_combout\,
	datab => \SW[0]~input_o\,
	datac => \MasterMind_Core|counter99|s_count0\(0),
	datad => \MasterMind_Core|deb_3|s_dirty_In\(5),
	combout => \MasterMind_Core|counter99|s_count0[0]~4_combout\);

-- Location: FF_X83_Y19_N21
\MasterMind_Core|counter99|s_count0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|freq_div2|clkOut~clkctrl_outclk\,
	d => \MasterMind_Core|counter99|s_count0[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|counter99|s_count0\(0));

-- Location: LCCOMB_X83_Y19_N4
\MasterMind_Core|counter99|s_count0[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|counter99|s_count0[1]~0_combout\ = (\MasterMind_Core|deb_3|s_dirty_In\(5) & (!\SW[0]~input_o\ & !\MasterMind_Core|counter99|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|deb_3|s_dirty_In\(5),
	datab => \SW[0]~input_o\,
	datac => \MasterMind_Core|counter99|Equal1~0_combout\,
	combout => \MasterMind_Core|counter99|s_count0[1]~0_combout\);

-- Location: LCCOMB_X83_Y19_N28
\MasterMind_Core|counter99|s_count0[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|counter99|s_count0[1]~5_combout\ = (\MasterMind_Core|counter99|s_count0\(1) & ((\MasterMind_Core|counter99|s_count0[3]~1_combout\) # ((!\MasterMind_Core|counter99|s_count0\(0) & \MasterMind_Core|counter99|s_count0[1]~0_combout\)))) # 
-- (!\MasterMind_Core|counter99|s_count0\(1) & (((\MasterMind_Core|counter99|s_count0\(0) & \MasterMind_Core|counter99|s_count0[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|counter99|s_count0[3]~1_combout\,
	datab => \MasterMind_Core|counter99|s_count0\(0),
	datac => \MasterMind_Core|counter99|s_count0\(1),
	datad => \MasterMind_Core|counter99|s_count0[1]~0_combout\,
	combout => \MasterMind_Core|counter99|s_count0[1]~5_combout\);

-- Location: FF_X83_Y19_N29
\MasterMind_Core|counter99|s_count0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|freq_div2|clkOut~clkctrl_outclk\,
	d => \MasterMind_Core|counter99|s_count0[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|counter99|s_count0\(1));

-- Location: LCCOMB_X84_Y19_N26
\MasterMind_Core|counter99|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|counter99|Add1~0_combout\ = \MasterMind_Core|counter99|s_count0\(2) $ (((\MasterMind_Core|counter99|s_count0\(0) & \MasterMind_Core|counter99|s_count0\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|counter99|s_count0\(0),
	datac => \MasterMind_Core|counter99|s_count0\(2),
	datad => \MasterMind_Core|counter99|s_count0\(1),
	combout => \MasterMind_Core|counter99|Add1~0_combout\);

-- Location: LCCOMB_X83_Y19_N26
\MasterMind_Core|counter99|s_count0[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|counter99|s_count0[2]~2_combout\ = (\MasterMind_Core|counter99|s_count0[3]~1_combout\ & ((\MasterMind_Core|counter99|s_count0\(2)) # ((\MasterMind_Core|counter99|Add1~0_combout\ & \MasterMind_Core|counter99|s_count0[1]~0_combout\)))) # 
-- (!\MasterMind_Core|counter99|s_count0[3]~1_combout\ & (\MasterMind_Core|counter99|Add1~0_combout\ & ((\MasterMind_Core|counter99|s_count0[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|counter99|s_count0[3]~1_combout\,
	datab => \MasterMind_Core|counter99|Add1~0_combout\,
	datac => \MasterMind_Core|counter99|s_count0\(2),
	datad => \MasterMind_Core|counter99|s_count0[1]~0_combout\,
	combout => \MasterMind_Core|counter99|s_count0[2]~2_combout\);

-- Location: FF_X83_Y19_N27
\MasterMind_Core|counter99|s_count0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|freq_div2|clkOut~clkctrl_outclk\,
	d => \MasterMind_Core|counter99|s_count0[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|counter99|s_count0\(2));

-- Location: LCCOMB_X84_Y19_N16
\MasterMind_Core|counter99|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|counter99|Add1~1_combout\ = \MasterMind_Core|counter99|s_count0\(3) $ (((\MasterMind_Core|counter99|s_count0\(0) & (\MasterMind_Core|counter99|s_count0\(1) & \MasterMind_Core|counter99|s_count0\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|counter99|s_count0\(0),
	datab => \MasterMind_Core|counter99|s_count0\(1),
	datac => \MasterMind_Core|counter99|s_count0\(2),
	datad => \MasterMind_Core|counter99|s_count0\(3),
	combout => \MasterMind_Core|counter99|Add1~1_combout\);

-- Location: LCCOMB_X83_Y19_N14
\MasterMind_Core|counter99|s_count0[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|counter99|s_count0[3]~3_combout\ = (\MasterMind_Core|counter99|s_count0[3]~1_combout\ & ((\MasterMind_Core|counter99|s_count0\(3)) # ((\MasterMind_Core|counter99|Add1~1_combout\ & \MasterMind_Core|counter99|s_count0[1]~0_combout\)))) # 
-- (!\MasterMind_Core|counter99|s_count0[3]~1_combout\ & (\MasterMind_Core|counter99|Add1~1_combout\ & ((\MasterMind_Core|counter99|s_count0[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|counter99|s_count0[3]~1_combout\,
	datab => \MasterMind_Core|counter99|Add1~1_combout\,
	datac => \MasterMind_Core|counter99|s_count0\(3),
	datad => \MasterMind_Core|counter99|s_count0[1]~0_combout\,
	combout => \MasterMind_Core|counter99|s_count0[3]~3_combout\);

-- Location: FF_X83_Y19_N15
\MasterMind_Core|counter99|s_count0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|freq_div2|clkOut~clkctrl_outclk\,
	d => \MasterMind_Core|counter99|s_count0[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|counter99|s_count0\(3));

-- Location: LCCOMB_X83_Y19_N22
\MasterMind_Core|counter99|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|counter99|Equal1~0_combout\ = (!\MasterMind_Core|counter99|s_count0\(2) & (\MasterMind_Core|counter99|s_count0\(0) & (\MasterMind_Core|counter99|s_count0\(3) & !\MasterMind_Core|counter99|s_count0\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|counter99|s_count0\(2),
	datab => \MasterMind_Core|counter99|s_count0\(0),
	datac => \MasterMind_Core|counter99|s_count0\(3),
	datad => \MasterMind_Core|counter99|s_count0\(1),
	combout => \MasterMind_Core|counter99|Equal1~0_combout\);

-- Location: LCCOMB_X83_Y19_N12
\MasterMind_Core|checkEnd|compare_proc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|checkEnd|compare_proc~0_combout\ = (!\MasterMind_Core|counter99|Equal0~0_combout\) # (!\MasterMind_Core|counter99|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MasterMind_Core|counter99|Equal1~0_combout\,
	datad => \MasterMind_Core|counter99|Equal0~0_combout\,
	combout => \MasterMind_Core|checkEnd|compare_proc~0_combout\);

-- Location: LCCOMB_X83_Y19_N6
\MasterMind_Core|checkEnd|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|checkEnd|Selector14~0_combout\ = ((!\MasterMind_Core|bin7segdec2|Equal7~0_combout\ & (\MasterMind_Core|checkEnd|pState.S3~q\ & \MasterMind_Core|checkEnd|compare_proc~0_combout\))) # (!\MasterMind_Core|checkEnd|pState.S0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|bin7segdec2|Equal7~0_combout\,
	datab => \MasterMind_Core|checkEnd|pState.S0~q\,
	datac => \MasterMind_Core|checkEnd|pState.S3~q\,
	datad => \MasterMind_Core|checkEnd|compare_proc~0_combout\,
	combout => \MasterMind_Core|checkEnd|Selector14~0_combout\);

-- Location: FF_X83_Y19_N7
\MasterMind_Core|checkEnd|pState.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|deb_3|s_dirty_In\(5),
	d => \MasterMind_Core|checkEnd|Selector14~0_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|checkEnd|pState.S3~q\);

-- Location: LCCOMB_X83_Y21_N2
\MasterMind_Core|compare|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Add2~1_combout\ = \MasterMind_Core|compare|cer\(3) $ (((\MasterMind_Core|compare|cer\(2) & ((\MasterMind_Core|compare|Add0~0_combout\) # (\MasterMind_Core|compare|Add2~0_combout\))) # (!\MasterMind_Core|compare|cer\(2) & 
-- (\MasterMind_Core|compare|Add0~0_combout\ & \MasterMind_Core|compare|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|cer\(2),
	datab => \MasterMind_Core|compare|cer\(3),
	datac => \MasterMind_Core|compare|Add0~0_combout\,
	datad => \MasterMind_Core|compare|Add2~0_combout\,
	combout => \MasterMind_Core|compare|Add2~1_combout\);

-- Location: LCCOMB_X83_Y21_N4
\MasterMind_Core|compare|cer~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|cer~4_combout\ = \MasterMind_Core|compare|Add2~1_combout\ $ (((\MasterMind_Core|compare|Add3~0_combout\ & (\MasterMind_Core|compare|Equal3~2_combout\ & \MasterMind_Core|compare|Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|Add3~0_combout\,
	datab => \MasterMind_Core|compare|Add2~1_combout\,
	datac => \MasterMind_Core|compare|Equal3~2_combout\,
	datad => \MasterMind_Core|compare|Add2~2_combout\,
	combout => \MasterMind_Core|compare|cer~4_combout\);

-- Location: LCCOMB_X82_Y19_N28
\MasterMind_Core|compare|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Selector4~0_combout\ = (\MasterMind_Core|compare|NState.S2~q\ & ((\MasterMind_Core|compare|cer\(3)) # ((\MasterMind_Core|compare|NState.S1~q\ & \MasterMind_Core|compare|cer~4_combout\)))) # (!\MasterMind_Core|compare|NState.S2~q\ 
-- & (\MasterMind_Core|compare|NState.S1~q\ & ((\MasterMind_Core|compare|cer~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|NState.S2~q\,
	datab => \MasterMind_Core|compare|NState.S1~q\,
	datac => \MasterMind_Core|compare|cer\(3),
	datad => \MasterMind_Core|compare|cer~4_combout\,
	combout => \MasterMind_Core|compare|Selector4~0_combout\);

-- Location: FF_X82_Y19_N29
\MasterMind_Core|compare|cer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|compare|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|compare|cer\(3));

-- Location: LCCOMB_X82_Y19_N10
\MasterMind_Core|checkEnd|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|checkEnd|Selector21~0_combout\ = (\MasterMind_Core|checkEnd|pState.S3~q\ & \MasterMind_Core|compare|cer\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|checkEnd|pState.S3~q\,
	datad => \MasterMind_Core|compare|cer\(3),
	combout => \MasterMind_Core|checkEnd|Selector21~0_combout\);

-- Location: LCCOMB_X82_Y19_N12
\MasterMind_Core|checkEnd|s_p[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|checkEnd|s_p\(3) = (\MasterMind_Core|checkEnd|pState.S0~q\ & ((\MasterMind_Core|checkEnd|Selector21~0_combout\))) # (!\MasterMind_Core|checkEnd|pState.S0~q\ & (\MasterMind_Core|checkEnd|s_p\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|checkEnd|s_p\(3),
	datac => \MasterMind_Core|checkEnd|pState.S0~q\,
	datad => \MasterMind_Core|checkEnd|Selector21~0_combout\,
	combout => \MasterMind_Core|checkEnd|s_p\(3));

-- Location: LCCOMB_X81_Y19_N22
\MasterMind_Core|bin7segdec2|decOut_n~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec2|decOut_n~0_combout\ = (\MasterMind_Core|checkEnd|s_p\(3) & (\MasterMind_Core|checkEnd|s_p\(0) & ((\MasterMind_Core|checkEnd|s_p\(2)) # (\MasterMind_Core|checkEnd|s_p\(1))))) # (!\MasterMind_Core|checkEnd|s_p\(3) & 
-- (!\MasterMind_Core|checkEnd|s_p\(1) & (\MasterMind_Core|checkEnd|s_p\(2) $ (\MasterMind_Core|checkEnd|s_p\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|checkEnd|s_p\(3),
	datab => \MasterMind_Core|checkEnd|s_p\(2),
	datac => \MasterMind_Core|checkEnd|s_p\(1),
	datad => \MasterMind_Core|checkEnd|s_p\(0),
	combout => \MasterMind_Core|bin7segdec2|decOut_n~0_combout\);

-- Location: LCCOMB_X81_Y19_N26
\MasterMind_Core|bin7segdec2|decOut_n~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec2|decOut_n~1_combout\ = (\MasterMind_Core|checkEnd|s_p\(3) & ((\MasterMind_Core|checkEnd|s_p\(0) & ((\MasterMind_Core|checkEnd|s_p\(1)))) # (!\MasterMind_Core|checkEnd|s_p\(0) & (\MasterMind_Core|checkEnd|s_p\(2))))) # 
-- (!\MasterMind_Core|checkEnd|s_p\(3) & (\MasterMind_Core|checkEnd|s_p\(2) & (\MasterMind_Core|checkEnd|s_p\(1) $ (\MasterMind_Core|checkEnd|s_p\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|checkEnd|s_p\(3),
	datab => \MasterMind_Core|checkEnd|s_p\(2),
	datac => \MasterMind_Core|checkEnd|s_p\(1),
	datad => \MasterMind_Core|checkEnd|s_p\(0),
	combout => \MasterMind_Core|bin7segdec2|decOut_n~1_combout\);

-- Location: LCCOMB_X81_Y19_N8
\MasterMind_Core|bin7segdec2|decOut_n~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec2|decOut_n~2_combout\ = (\MasterMind_Core|checkEnd|s_p\(3) & (\MasterMind_Core|checkEnd|s_p\(2) & ((\MasterMind_Core|checkEnd|s_p\(1)) # (!\MasterMind_Core|checkEnd|s_p\(0))))) # (!\MasterMind_Core|checkEnd|s_p\(3) & 
-- (!\MasterMind_Core|checkEnd|s_p\(2) & (\MasterMind_Core|checkEnd|s_p\(1) & !\MasterMind_Core|checkEnd|s_p\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|checkEnd|s_p\(3),
	datab => \MasterMind_Core|checkEnd|s_p\(2),
	datac => \MasterMind_Core|checkEnd|s_p\(1),
	datad => \MasterMind_Core|checkEnd|s_p\(0),
	combout => \MasterMind_Core|bin7segdec2|decOut_n~2_combout\);

-- Location: LCCOMB_X81_Y19_N18
\MasterMind_Core|bin7segdec2|decOut_n~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec2|decOut_n~3_combout\ = (\MasterMind_Core|checkEnd|s_p\(1) & ((\MasterMind_Core|checkEnd|s_p\(2) & ((\MasterMind_Core|checkEnd|s_p\(0)))) # (!\MasterMind_Core|checkEnd|s_p\(2) & (\MasterMind_Core|checkEnd|s_p\(3) & 
-- !\MasterMind_Core|checkEnd|s_p\(0))))) # (!\MasterMind_Core|checkEnd|s_p\(1) & (!\MasterMind_Core|checkEnd|s_p\(3) & (\MasterMind_Core|checkEnd|s_p\(2) $ (\MasterMind_Core|checkEnd|s_p\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|checkEnd|s_p\(3),
	datab => \MasterMind_Core|checkEnd|s_p\(2),
	datac => \MasterMind_Core|checkEnd|s_p\(1),
	datad => \MasterMind_Core|checkEnd|s_p\(0),
	combout => \MasterMind_Core|bin7segdec2|decOut_n~3_combout\);

-- Location: LCCOMB_X81_Y19_N4
\MasterMind_Core|bin7segdec2|decOut_n~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec2|decOut_n~4_combout\ = (\MasterMind_Core|checkEnd|s_p\(3) & (\MasterMind_Core|checkEnd|s_p\(0) & (\MasterMind_Core|checkEnd|s_p\(2) $ (!\MasterMind_Core|checkEnd|s_p\(1))))) # (!\MasterMind_Core|checkEnd|s_p\(3) & 
-- ((\MasterMind_Core|checkEnd|s_p\(0)) # ((\MasterMind_Core|checkEnd|s_p\(2) & !\MasterMind_Core|checkEnd|s_p\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|checkEnd|s_p\(3),
	datab => \MasterMind_Core|checkEnd|s_p\(2),
	datac => \MasterMind_Core|checkEnd|s_p\(1),
	datad => \MasterMind_Core|checkEnd|s_p\(0),
	combout => \MasterMind_Core|bin7segdec2|decOut_n~4_combout\);

-- Location: LCCOMB_X81_Y19_N16
\MasterMind_Core|bin7segdec2|decOut_n~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec2|decOut_n~5_combout\ = (\MasterMind_Core|checkEnd|s_p\(2) & (\MasterMind_Core|checkEnd|s_p\(0) & ((\MasterMind_Core|checkEnd|s_p\(3)) # (\MasterMind_Core|checkEnd|s_p\(1))))) # (!\MasterMind_Core|checkEnd|s_p\(2) & 
-- (!\MasterMind_Core|checkEnd|s_p\(3) & ((\MasterMind_Core|checkEnd|s_p\(1)) # (\MasterMind_Core|checkEnd|s_p\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|checkEnd|s_p\(3),
	datab => \MasterMind_Core|checkEnd|s_p\(2),
	datac => \MasterMind_Core|checkEnd|s_p\(1),
	datad => \MasterMind_Core|checkEnd|s_p\(0),
	combout => \MasterMind_Core|bin7segdec2|decOut_n~5_combout\);

-- Location: LCCOMB_X81_Y19_N24
\MasterMind_Core|bin7segdec2|decOut_n~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec2|decOut_n~6_combout\ = (\MasterMind_Core|checkEnd|s_p\(2) & ((\MasterMind_Core|checkEnd|s_p\(1) & ((!\MasterMind_Core|checkEnd|s_p\(0)))) # (!\MasterMind_Core|checkEnd|s_p\(1) & ((\MasterMind_Core|checkEnd|s_p\(0)) # 
-- (!\MasterMind_Core|checkEnd|s_p\(3)))))) # (!\MasterMind_Core|checkEnd|s_p\(2) & ((\MasterMind_Core|checkEnd|s_p\(3)) # ((\MasterMind_Core|checkEnd|s_p\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|checkEnd|s_p\(3),
	datab => \MasterMind_Core|checkEnd|s_p\(2),
	datac => \MasterMind_Core|checkEnd|s_p\(1),
	datad => \MasterMind_Core|checkEnd|s_p\(0),
	combout => \MasterMind_Core|bin7segdec2|decOut_n~6_combout\);

-- Location: LCCOMB_X83_Y21_N10
\MasterMind_Core|compare|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Equal4~0_combout\ = (!\MasterMind_Core|compare|cer~5_combout\ & (!\MasterMind_Core|compare|cer~6_combout\ & (!\MasterMind_Core|compare|cer~4_combout\ & \MasterMind_Core|compare|cer~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|cer~5_combout\,
	datab => \MasterMind_Core|compare|cer~6_combout\,
	datac => \MasterMind_Core|compare|cer~4_combout\,
	datad => \MasterMind_Core|compare|cer~7_combout\,
	combout => \MasterMind_Core|compare|Equal4~0_combout\);

-- Location: LCCOMB_X83_Y21_N26
\MasterMind_Core|compare|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Selector0~1_combout\ = (\MasterMind_Core|compare|NState.S2~q\) # ((\MasterMind_Core|compare|NState.S1~q\ & \MasterMind_Core|compare|Equal4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|NState.S1~q\,
	datab => \MasterMind_Core|compare|NState.S2~q\,
	datad => \MasterMind_Core|compare|Equal4~0_combout\,
	combout => \MasterMind_Core|compare|Selector0~1_combout\);

-- Location: LCCOMB_X83_Y21_N12
\MasterMind_Core|compare|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Selector1~0_combout\ = (\MasterMind_Core|compare|NState.S1~q\ & !\MasterMind_Core|compare|Equal4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|NState.S1~q\,
	datad => \MasterMind_Core|compare|Equal4~0_combout\,
	combout => \MasterMind_Core|compare|Selector1~0_combout\);

-- Location: LCCOMB_X82_Y23_N22
\MasterMind_Core|compare|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Selector15~0_combout\ = (\MasterMind_Core|compare|comparar_rand\(0) & ((\MasterMind_Core|compare|NState.S2~q\) # (\MasterMind_Core|compare|NState.S1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|NState.S2~q\,
	datab => \MasterMind_Core|compare|comparar_rand\(0),
	datad => \MasterMind_Core|compare|NState.S1~q\,
	combout => \MasterMind_Core|compare|Selector15~0_combout\);

-- Location: LCCOMB_X83_Y23_N26
\MasterMind_Core|compare|Selector15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Selector15~1_combout\ = (\MasterMind_Core|compare|Selector15~0_combout\) # ((\MasterMind_Core|compare|NState.S1~q\ & (\MasterMind_Core|compare|Equal0~0_combout\ & \MasterMind_Core|compare|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|NState.S1~q\,
	datab => \MasterMind_Core|compare|Equal0~0_combout\,
	datac => \MasterMind_Core|compare|Equal0~1_combout\,
	datad => \MasterMind_Core|compare|Selector15~0_combout\,
	combout => \MasterMind_Core|compare|Selector15~1_combout\);

-- Location: FF_X83_Y23_N27
\MasterMind_Core|compare|comparar_rand[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|compare|Selector15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|compare|comparar_rand\(0));

-- Location: LCCOMB_X83_Y23_N20
\MasterMind_Core|compare|comparar_user~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|comparar_user~12_combout\ = (!\MasterMind_Core|compare|comparar_rand\(0) & ((!\MasterMind_Core|compare|Equal0~1_combout\) # (!\MasterMind_Core|compare|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|compare|comparar_rand\(0),
	datac => \MasterMind_Core|compare|Equal0~0_combout\,
	datad => \MasterMind_Core|compare|Equal0~1_combout\,
	combout => \MasterMind_Core|compare|comparar_user~12_combout\);

-- Location: LCCOMB_X82_Y22_N26
\MasterMind_Core|compare|Equal13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Equal13~0_combout\ = (\MasterMind_Core|Counter9999|s_count2\(1) & (\MasterMind_Core|register_c|dataOut3\(1) & (\MasterMind_Core|Counter9999|s_count2\(0) $ (!\MasterMind_Core|register_c|dataOut3\(0))))) # 
-- (!\MasterMind_Core|Counter9999|s_count2\(1) & (!\MasterMind_Core|register_c|dataOut3\(1) & (\MasterMind_Core|Counter9999|s_count2\(0) $ (!\MasterMind_Core|register_c|dataOut3\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Counter9999|s_count2\(1),
	datab => \MasterMind_Core|Counter9999|s_count2\(0),
	datac => \MasterMind_Core|register_c|dataOut3\(1),
	datad => \MasterMind_Core|register_c|dataOut3\(0),
	combout => \MasterMind_Core|compare|Equal13~0_combout\);

-- Location: LCCOMB_X82_Y22_N12
\MasterMind_Core|compare|Equal13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Equal13~1_combout\ = (\MasterMind_Core|Counter9999|s_count2\(3) & (\MasterMind_Core|register_c|dataOut3\(3) & (\MasterMind_Core|Counter9999|s_count2\(2) $ (!\MasterMind_Core|register_c|dataOut3\(2))))) # 
-- (!\MasterMind_Core|Counter9999|s_count2\(3) & (!\MasterMind_Core|register_c|dataOut3\(3) & (\MasterMind_Core|Counter9999|s_count2\(2) $ (!\MasterMind_Core|register_c|dataOut3\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Counter9999|s_count2\(3),
	datab => \MasterMind_Core|Counter9999|s_count2\(2),
	datac => \MasterMind_Core|register_c|dataOut3\(3),
	datad => \MasterMind_Core|register_c|dataOut3\(2),
	combout => \MasterMind_Core|compare|Equal13~1_combout\);

-- Location: LCCOMB_X82_Y22_N22
\MasterMind_Core|compare|Equal13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Equal13~2_combout\ = (\MasterMind_Core|compare|Equal13~0_combout\ & \MasterMind_Core|compare|Equal13~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MasterMind_Core|compare|Equal13~0_combout\,
	datad => \MasterMind_Core|compare|Equal13~1_combout\,
	combout => \MasterMind_Core|compare|Equal13~2_combout\);

-- Location: LCCOMB_X82_Y21_N30
\MasterMind_Core|compare|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Selector13~0_combout\ = (\MasterMind_Core|compare|comparar_rand\(2) & ((\MasterMind_Core|compare|NState.S2~q\) # (\MasterMind_Core|compare|NState.S1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|NState.S2~q\,
	datac => \MasterMind_Core|compare|comparar_rand\(2),
	datad => \MasterMind_Core|compare|NState.S1~q\,
	combout => \MasterMind_Core|compare|Selector13~0_combout\);

-- Location: LCCOMB_X83_Y21_N14
\MasterMind_Core|compare|Selector13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Selector13~1_combout\ = (\MasterMind_Core|compare|Selector13~0_combout\) # ((\MasterMind_Core|compare|NState.S1~q\ & (\MasterMind_Core|compare|Equal2~0_combout\ & \MasterMind_Core|compare|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|NState.S1~q\,
	datab => \MasterMind_Core|compare|Selector13~0_combout\,
	datac => \MasterMind_Core|compare|Equal2~0_combout\,
	datad => \MasterMind_Core|compare|Equal2~1_combout\,
	combout => \MasterMind_Core|compare|Selector13~1_combout\);

-- Location: FF_X83_Y21_N15
\MasterMind_Core|compare|comparar_rand[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|compare|Selector13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|compare|comparar_rand\(2));

-- Location: LCCOMB_X83_Y22_N20
\MasterMind_Core|compare|comparar_user~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|comparar_user~21_combout\ = (!\MasterMind_Core|compare|comparar_rand\(2) & ((!\MasterMind_Core|compare|Equal2~1_combout\) # (!\MasterMind_Core|compare|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|Equal2~0_combout\,
	datab => \MasterMind_Core|compare|comparar_rand\(2),
	datad => \MasterMind_Core|compare|Equal2~1_combout\,
	combout => \MasterMind_Core|compare|comparar_user~21_combout\);

-- Location: LCCOMB_X82_Y22_N14
\MasterMind_Core|compare|Equal10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Equal10~1_combout\ = (\MasterMind_Core|Counter9999|s_count1\(2) & (\MasterMind_Core|register_c|dataOut3\(2) & (\MasterMind_Core|register_c|dataOut3\(3) $ (!\MasterMind_Core|Counter9999|s_count1\(3))))) # 
-- (!\MasterMind_Core|Counter9999|s_count1\(2) & (!\MasterMind_Core|register_c|dataOut3\(2) & (\MasterMind_Core|register_c|dataOut3\(3) $ (!\MasterMind_Core|Counter9999|s_count1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Counter9999|s_count1\(2),
	datab => \MasterMind_Core|register_c|dataOut3\(3),
	datac => \MasterMind_Core|Counter9999|s_count1\(3),
	datad => \MasterMind_Core|register_c|dataOut3\(2),
	combout => \MasterMind_Core|compare|Equal10~1_combout\);

-- Location: LCCOMB_X82_Y22_N0
\MasterMind_Core|compare|Equal10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Equal10~0_combout\ = (\MasterMind_Core|Counter9999|s_count1\(1) & (\MasterMind_Core|register_c|dataOut3\(1) & (\MasterMind_Core|Counter9999|s_count1\(0) $ (!\MasterMind_Core|register_c|dataOut3\(0))))) # 
-- (!\MasterMind_Core|Counter9999|s_count1\(1) & (!\MasterMind_Core|register_c|dataOut3\(1) & (\MasterMind_Core|Counter9999|s_count1\(0) $ (!\MasterMind_Core|register_c|dataOut3\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Counter9999|s_count1\(1),
	datab => \MasterMind_Core|Counter9999|s_count1\(0),
	datac => \MasterMind_Core|register_c|dataOut3\(1),
	datad => \MasterMind_Core|register_c|dataOut3\(0),
	combout => \MasterMind_Core|compare|Equal10~0_combout\);

-- Location: LCCOMB_X82_Y22_N16
\MasterMind_Core|compare|Equal10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Equal10~2_combout\ = (\MasterMind_Core|compare|Equal10~1_combout\ & \MasterMind_Core|compare|Equal10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MasterMind_Core|compare|Equal10~1_combout\,
	datad => \MasterMind_Core|compare|Equal10~0_combout\,
	combout => \MasterMind_Core|compare|Equal10~2_combout\);

-- Location: LCCOMB_X81_Y23_N16
\MasterMind_Core|compare|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Selector14~0_combout\ = (\MasterMind_Core|compare|comparar_rand\(1) & ((\MasterMind_Core|compare|NState.S2~q\) # (\MasterMind_Core|compare|NState.S1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|compare|comparar_rand\(1),
	datac => \MasterMind_Core|compare|NState.S2~q\,
	datad => \MasterMind_Core|compare|NState.S1~q\,
	combout => \MasterMind_Core|compare|Selector14~0_combout\);

-- Location: LCCOMB_X81_Y23_N20
\MasterMind_Core|compare|Selector14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Selector14~1_combout\ = (\MasterMind_Core|compare|Selector14~0_combout\) # ((\MasterMind_Core|compare|NState.S1~q\ & (\MasterMind_Core|compare|Equal1~0_combout\ & \MasterMind_Core|compare|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|NState.S1~q\,
	datab => \MasterMind_Core|compare|Selector14~0_combout\,
	datac => \MasterMind_Core|compare|Equal1~0_combout\,
	datad => \MasterMind_Core|compare|Equal1~1_combout\,
	combout => \MasterMind_Core|compare|Selector14~1_combout\);

-- Location: FF_X81_Y23_N21
\MasterMind_Core|compare|comparar_rand[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|compare|Selector14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|compare|comparar_rand\(1));

-- Location: LCCOMB_X84_Y23_N24
\MasterMind_Core|compare|comparar_user~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|comparar_user~18_combout\ = (!\MasterMind_Core|compare|comparar_rand\(1) & ((!\MasterMind_Core|compare|Equal1~1_combout\) # (!\MasterMind_Core|compare|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|comparar_rand\(1),
	datac => \MasterMind_Core|compare|Equal1~0_combout\,
	datad => \MasterMind_Core|compare|Equal1~1_combout\,
	combout => \MasterMind_Core|compare|comparar_user~18_combout\);

-- Location: LCCOMB_X83_Y23_N2
\MasterMind_Core|compare|comparar_user~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|comparar_user~14_combout\ = (\MasterMind_Core|Counter9999|s_count1\(0) & (\MasterMind_Core|register_c|dataOut0\(0) & (\MasterMind_Core|Counter9999|s_count1\(1) $ (!\MasterMind_Core|register_c|dataOut0\(1))))) # 
-- (!\MasterMind_Core|Counter9999|s_count1\(0) & (!\MasterMind_Core|register_c|dataOut0\(0) & (\MasterMind_Core|Counter9999|s_count1\(1) $ (!\MasterMind_Core|register_c|dataOut0\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Counter9999|s_count1\(0),
	datab => \MasterMind_Core|Counter9999|s_count1\(1),
	datac => \MasterMind_Core|register_c|dataOut0\(0),
	datad => \MasterMind_Core|register_c|dataOut0\(1),
	combout => \MasterMind_Core|compare|comparar_user~14_combout\);

-- Location: LCCOMB_X82_Y23_N10
\MasterMind_Core|compare|process_0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|process_0~14_combout\ = (\MasterMind_Core|Counter9999|s_count3\(2) & (\MasterMind_Core|register_c|dataOut0\(2) & (\MasterMind_Core|Counter9999|s_count3\(3) $ (!\MasterMind_Core|register_c|dataOut0\(3))))) # 
-- (!\MasterMind_Core|Counter9999|s_count3\(2) & (!\MasterMind_Core|register_c|dataOut0\(2) & (\MasterMind_Core|Counter9999|s_count3\(3) $ (!\MasterMind_Core|register_c|dataOut0\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Counter9999|s_count3\(2),
	datab => \MasterMind_Core|Counter9999|s_count3\(3),
	datac => \MasterMind_Core|register_c|dataOut0\(2),
	datad => \MasterMind_Core|register_c|dataOut0\(3),
	combout => \MasterMind_Core|compare|process_0~14_combout\);

-- Location: LCCOMB_X82_Y23_N28
\MasterMind_Core|compare|process_0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|process_0~13_combout\ = (\MasterMind_Core|Counter9999|s_count3\(0) & (\MasterMind_Core|register_c|dataOut0\(0) & (\MasterMind_Core|Counter9999|s_count3\(1) $ (!\MasterMind_Core|register_c|dataOut0\(1))))) # 
-- (!\MasterMind_Core|Counter9999|s_count3\(0) & (!\MasterMind_Core|register_c|dataOut0\(0) & (\MasterMind_Core|Counter9999|s_count3\(1) $ (!\MasterMind_Core|register_c|dataOut0\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Counter9999|s_count3\(0),
	datab => \MasterMind_Core|Counter9999|s_count3\(1),
	datac => \MasterMind_Core|register_c|dataOut0\(1),
	datad => \MasterMind_Core|register_c|dataOut0\(0),
	combout => \MasterMind_Core|compare|process_0~13_combout\);

-- Location: LCCOMB_X82_Y21_N12
\MasterMind_Core|compare|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Selector12~0_combout\ = (\MasterMind_Core|compare|NState.S1~q\ & (((\MasterMind_Core|compare|comparar_rand\(3)) # (\MasterMind_Core|compare|Equal3~2_combout\)))) # (!\MasterMind_Core|compare|NState.S1~q\ & 
-- (\MasterMind_Core|compare|NState.S2~q\ & (\MasterMind_Core|compare|comparar_rand\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|NState.S2~q\,
	datab => \MasterMind_Core|compare|NState.S1~q\,
	datac => \MasterMind_Core|compare|comparar_rand\(3),
	datad => \MasterMind_Core|compare|Equal3~2_combout\,
	combout => \MasterMind_Core|compare|Selector12~0_combout\);

-- Location: FF_X82_Y21_N13
\MasterMind_Core|compare|comparar_rand[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|compare|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|compare|comparar_rand\(3));

-- Location: LCCOMB_X82_Y24_N30
\MasterMind_Core|compare|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Selector9~0_combout\ = (!\MasterMind_Core|compare|comparar_rand\(3) & ((!\MasterMind_Core|compare|Equal3~0_combout\) # (!\MasterMind_Core|compare|Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|compare|comparar_rand\(3),
	datac => \MasterMind_Core|compare|Equal3~1_combout\,
	datad => \MasterMind_Core|compare|Equal3~0_combout\,
	combout => \MasterMind_Core|compare|Selector9~0_combout\);

-- Location: LCCOMB_X83_Y23_N14
\MasterMind_Core|compare|process_0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|process_0~11_combout\ = (\MasterMind_Core|Counter9999|s_count2\(3) & (\MasterMind_Core|register_c|dataOut0\(3) & (\MasterMind_Core|register_c|dataOut0\(2) $ (!\MasterMind_Core|Counter9999|s_count2\(2))))) # 
-- (!\MasterMind_Core|Counter9999|s_count2\(3) & (!\MasterMind_Core|register_c|dataOut0\(3) & (\MasterMind_Core|register_c|dataOut0\(2) $ (!\MasterMind_Core|Counter9999|s_count2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Counter9999|s_count2\(3),
	datab => \MasterMind_Core|register_c|dataOut0\(2),
	datac => \MasterMind_Core|register_c|dataOut0\(3),
	datad => \MasterMind_Core|Counter9999|s_count2\(2),
	combout => \MasterMind_Core|compare|process_0~11_combout\);

-- Location: LCCOMB_X83_Y23_N12
\MasterMind_Core|compare|process_0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|process_0~10_combout\ = (\MasterMind_Core|Counter9999|s_count2\(0) & (\MasterMind_Core|register_c|dataOut0\(0) & (\MasterMind_Core|register_c|dataOut0\(1) $ (!\MasterMind_Core|Counter9999|s_count2\(1))))) # 
-- (!\MasterMind_Core|Counter9999|s_count2\(0) & (!\MasterMind_Core|register_c|dataOut0\(0) & (\MasterMind_Core|register_c|dataOut0\(1) $ (!\MasterMind_Core|Counter9999|s_count2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Counter9999|s_count2\(0),
	datab => \MasterMind_Core|register_c|dataOut0\(0),
	datac => \MasterMind_Core|register_c|dataOut0\(1),
	datad => \MasterMind_Core|Counter9999|s_count2\(1),
	combout => \MasterMind_Core|compare|process_0~10_combout\);

-- Location: LCCOMB_X83_Y23_N4
\MasterMind_Core|compare|comparar_user~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|comparar_user~15_combout\ = (\MasterMind_Core|Counter9999|s_count1\(2) & (\MasterMind_Core|register_c|dataOut0\(2) & (\MasterMind_Core|register_c|dataOut0\(3) $ (!\MasterMind_Core|Counter9999|s_count1\(3))))) # 
-- (!\MasterMind_Core|Counter9999|s_count1\(2) & (!\MasterMind_Core|register_c|dataOut0\(2) & (\MasterMind_Core|register_c|dataOut0\(3) $ (!\MasterMind_Core|Counter9999|s_count1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Counter9999|s_count1\(2),
	datab => \MasterMind_Core|register_c|dataOut0\(3),
	datac => \MasterMind_Core|register_c|dataOut0\(2),
	datad => \MasterMind_Core|Counter9999|s_count1\(3),
	combout => \MasterMind_Core|compare|comparar_user~15_combout\);

-- Location: LCCOMB_X83_Y23_N18
\MasterMind_Core|compare|comparar_user~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|comparar_user~19_combout\ = ((\MasterMind_Core|compare|comparar_user~15_combout\ & (\MasterMind_Core|compare|comparar_user~14_combout\ & \MasterMind_Core|compare|comparar_user~18_combout\))) # 
-- (!\MasterMind_Core|compare|process_0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|comparar_user~15_combout\,
	datab => \MasterMind_Core|compare|comparar_user~14_combout\,
	datac => \MasterMind_Core|compare|process_0~5_combout\,
	datad => \MasterMind_Core|compare|comparar_user~18_combout\,
	combout => \MasterMind_Core|compare|comparar_user~19_combout\);

-- Location: LCCOMB_X83_Y23_N6
\MasterMind_Core|compare|comparar_user~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|comparar_user~22_combout\ = (\MasterMind_Core|compare|comparar_user~19_combout\) # ((\MasterMind_Core|compare|process_0~11_combout\ & (\MasterMind_Core|compare|process_0~10_combout\ & 
-- \MasterMind_Core|compare|comparar_user~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|process_0~11_combout\,
	datab => \MasterMind_Core|compare|process_0~10_combout\,
	datac => \MasterMind_Core|compare|comparar_user~21_combout\,
	datad => \MasterMind_Core|compare|comparar_user~19_combout\,
	combout => \MasterMind_Core|compare|comparar_user~22_combout\);

-- Location: LCCOMB_X82_Y23_N20
\MasterMind_Core|compare|Selector11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Selector11~2_combout\ = (\MasterMind_Core|compare|comparar_user~22_combout\) # ((\MasterMind_Core|compare|process_0~14_combout\ & (\MasterMind_Core|compare|process_0~13_combout\ & \MasterMind_Core|compare|Selector9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|process_0~14_combout\,
	datab => \MasterMind_Core|compare|process_0~13_combout\,
	datac => \MasterMind_Core|compare|Selector9~0_combout\,
	datad => \MasterMind_Core|compare|comparar_user~22_combout\,
	combout => \MasterMind_Core|compare|Selector11~2_combout\);

-- Location: LCCOMB_X82_Y23_N18
\MasterMind_Core|compare|Selector11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Selector11~3_combout\ = (\MasterMind_Core|compare|NState.S2~q\ & ((\MasterMind_Core|compare|comparar_user\(0)) # ((\MasterMind_Core|compare|Selector11~2_combout\ & \MasterMind_Core|compare|Selector1~0_combout\)))) # 
-- (!\MasterMind_Core|compare|NState.S2~q\ & (\MasterMind_Core|compare|Selector11~2_combout\ & (\MasterMind_Core|compare|Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|NState.S2~q\,
	datab => \MasterMind_Core|compare|Selector11~2_combout\,
	datac => \MasterMind_Core|compare|Selector1~0_combout\,
	datad => \MasterMind_Core|compare|comparar_user\(0),
	combout => \MasterMind_Core|compare|Selector11~3_combout\);

-- Location: LCCOMB_X82_Y23_N6
\MasterMind_Core|compare|Selector11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Selector11~4_combout\ = (\MasterMind_Core|compare|Selector11~3_combout\) # ((!\MasterMind_Core|compare|process_0~5_combout\ & (\MasterMind_Core|compare|NState.S1~q\ & \MasterMind_Core|compare|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|process_0~5_combout\,
	datab => \MasterMind_Core|compare|NState.S1~q\,
	datac => \MasterMind_Core|compare|Equal4~0_combout\,
	datad => \MasterMind_Core|compare|Selector11~3_combout\,
	combout => \MasterMind_Core|compare|Selector11~4_combout\);

-- Location: FF_X82_Y23_N7
\MasterMind_Core|compare|comparar_user[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|compare|Selector11~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|compare|comparar_user\(0));

-- Location: LCCOMB_X83_Y23_N30
\MasterMind_Core|compare|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|process_0~5_combout\ = (!\MasterMind_Core|compare|comparar_user\(0) & ((!\MasterMind_Core|compare|Equal0~1_combout\) # (!\MasterMind_Core|compare|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|compare|comparar_user\(0),
	datac => \MasterMind_Core|compare|Equal0~0_combout\,
	datad => \MasterMind_Core|compare|Equal0~1_combout\,
	combout => \MasterMind_Core|compare|process_0~5_combout\);

-- Location: LCCOMB_X83_Y23_N16
\MasterMind_Core|compare|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|process_0~6_combout\ = (\MasterMind_Core|compare|comparar_user~14_combout\ & (\MasterMind_Core|compare|process_0~5_combout\ & \MasterMind_Core|compare|comparar_user~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|compare|comparar_user~14_combout\,
	datac => \MasterMind_Core|compare|process_0~5_combout\,
	datad => \MasterMind_Core|compare|comparar_user~15_combout\,
	combout => \MasterMind_Core|compare|process_0~6_combout\);

-- Location: LCCOMB_X84_Y23_N12
\MasterMind_Core|compare|process_0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|process_0~16_combout\ = (\MasterMind_Core|register_c|dataOut1\(0) & (\MasterMind_Core|Counter9999|s_count3\(0) & (\MasterMind_Core|register_c|dataOut1\(1) $ (!\MasterMind_Core|Counter9999|s_count3\(1))))) # 
-- (!\MasterMind_Core|register_c|dataOut1\(0) & (!\MasterMind_Core|Counter9999|s_count3\(0) & (\MasterMind_Core|register_c|dataOut1\(1) $ (!\MasterMind_Core|Counter9999|s_count3\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|register_c|dataOut1\(0),
	datab => \MasterMind_Core|Counter9999|s_count3\(0),
	datac => \MasterMind_Core|register_c|dataOut1\(1),
	datad => \MasterMind_Core|Counter9999|s_count3\(1),
	combout => \MasterMind_Core|compare|process_0~16_combout\);

-- Location: LCCOMB_X84_Y23_N10
\MasterMind_Core|compare|process_0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|process_0~17_combout\ = (\MasterMind_Core|Counter9999|s_count3\(2) & (\MasterMind_Core|register_c|dataOut1\(2) & (\MasterMind_Core|register_c|dataOut1\(3) $ (!\MasterMind_Core|Counter9999|s_count3\(3))))) # 
-- (!\MasterMind_Core|Counter9999|s_count3\(2) & (!\MasterMind_Core|register_c|dataOut1\(2) & (\MasterMind_Core|register_c|dataOut1\(3) $ (!\MasterMind_Core|Counter9999|s_count3\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Counter9999|s_count3\(2),
	datab => \MasterMind_Core|register_c|dataOut1\(3),
	datac => \MasterMind_Core|register_c|dataOut1\(2),
	datad => \MasterMind_Core|Counter9999|s_count3\(3),
	combout => \MasterMind_Core|compare|process_0~17_combout\);

-- Location: LCCOMB_X82_Y23_N4
\MasterMind_Core|compare|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Selector9~1_combout\ = (\MasterMind_Core|compare|Selector9~0_combout\ & (((\MasterMind_Core|compare|comparar_user~22_combout\) # (!\MasterMind_Core|compare|process_0~13_combout\)) # 
-- (!\MasterMind_Core|compare|process_0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|process_0~14_combout\,
	datab => \MasterMind_Core|compare|process_0~13_combout\,
	datac => \MasterMind_Core|compare|Selector9~0_combout\,
	datad => \MasterMind_Core|compare|comparar_user~22_combout\,
	combout => \MasterMind_Core|compare|Selector9~1_combout\);

-- Location: LCCOMB_X84_Y23_N28
\MasterMind_Core|compare|process_0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|process_0~8_combout\ = (\MasterMind_Core|register_c|dataOut1\(2) & (\MasterMind_Core|Counter9999|s_count2\(2) & (\MasterMind_Core|register_c|dataOut1\(3) $ (!\MasterMind_Core|Counter9999|s_count2\(3))))) # 
-- (!\MasterMind_Core|register_c|dataOut1\(2) & (!\MasterMind_Core|Counter9999|s_count2\(2) & (\MasterMind_Core|register_c|dataOut1\(3) $ (!\MasterMind_Core|Counter9999|s_count2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|register_c|dataOut1\(2),
	datab => \MasterMind_Core|register_c|dataOut1\(3),
	datac => \MasterMind_Core|Counter9999|s_count2\(3),
	datad => \MasterMind_Core|Counter9999|s_count2\(2),
	combout => \MasterMind_Core|compare|process_0~8_combout\);

-- Location: LCCOMB_X84_Y23_N26
\MasterMind_Core|compare|process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|process_0~7_combout\ = (\MasterMind_Core|register_c|dataOut1\(1) & (\MasterMind_Core|Counter9999|s_count2\(1) & (\MasterMind_Core|Counter9999|s_count2\(0) $ (!\MasterMind_Core|register_c|dataOut1\(0))))) # 
-- (!\MasterMind_Core|register_c|dataOut1\(1) & (!\MasterMind_Core|Counter9999|s_count2\(1) & (\MasterMind_Core|Counter9999|s_count2\(0) $ (!\MasterMind_Core|register_c|dataOut1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|register_c|dataOut1\(1),
	datab => \MasterMind_Core|Counter9999|s_count2\(0),
	datac => \MasterMind_Core|register_c|dataOut1\(0),
	datad => \MasterMind_Core|Counter9999|s_count2\(1),
	combout => \MasterMind_Core|compare|process_0~7_combout\);

-- Location: LCCOMB_X82_Y23_N26
\MasterMind_Core|compare|process_0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|process_0~9_combout\ = (\MasterMind_Core|compare|process_0~8_combout\ & \MasterMind_Core|compare|process_0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|process_0~8_combout\,
	datad => \MasterMind_Core|compare|process_0~7_combout\,
	combout => \MasterMind_Core|compare|process_0~9_combout\);

-- Location: LCCOMB_X84_Y23_N2
\MasterMind_Core|compare|comparar_user~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|comparar_user~5_combout\ = (\MasterMind_Core|register_c|dataOut1\(2) & (\MasterMind_Core|Counter9999|s_count0\(2) & (\MasterMind_Core|Counter9999|s_count0\(3) $ (!\MasterMind_Core|register_c|dataOut1\(3))))) # 
-- (!\MasterMind_Core|register_c|dataOut1\(2) & (!\MasterMind_Core|Counter9999|s_count0\(2) & (\MasterMind_Core|Counter9999|s_count0\(3) $ (!\MasterMind_Core|register_c|dataOut1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|register_c|dataOut1\(2),
	datab => \MasterMind_Core|Counter9999|s_count0\(3),
	datac => \MasterMind_Core|Counter9999|s_count0\(2),
	datad => \MasterMind_Core|register_c|dataOut1\(3),
	combout => \MasterMind_Core|compare|comparar_user~5_combout\);

-- Location: LCCOMB_X84_Y23_N4
\MasterMind_Core|compare|comparar_user~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|comparar_user~4_combout\ = (\MasterMind_Core|register_c|dataOut1\(0) & (\MasterMind_Core|Counter9999|s_count0\(0) & (\MasterMind_Core|Counter9999|s_count0\(1) $ (!\MasterMind_Core|register_c|dataOut1\(1))))) # 
-- (!\MasterMind_Core|register_c|dataOut1\(0) & (!\MasterMind_Core|Counter9999|s_count0\(0) & (\MasterMind_Core|Counter9999|s_count0\(1) $ (!\MasterMind_Core|register_c|dataOut1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|register_c|dataOut1\(0),
	datab => \MasterMind_Core|Counter9999|s_count0\(0),
	datac => \MasterMind_Core|Counter9999|s_count0\(1),
	datad => \MasterMind_Core|register_c|dataOut1\(1),
	combout => \MasterMind_Core|compare|comparar_user~4_combout\);

-- Location: LCCOMB_X84_Y23_N18
\MasterMind_Core|compare|comparar_user~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|comparar_user~24_combout\ = ((\MasterMind_Core|compare|comparar_user~5_combout\ & (\MasterMind_Core|compare|comparar_user~4_combout\ & \MasterMind_Core|compare|comparar_user~12_combout\))) # 
-- (!\MasterMind_Core|compare|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|comparar_user~5_combout\,
	datab => \MasterMind_Core|compare|comparar_user~4_combout\,
	datac => \MasterMind_Core|compare|process_0~0_combout\,
	datad => \MasterMind_Core|compare|comparar_user~12_combout\,
	combout => \MasterMind_Core|compare|comparar_user~24_combout\);

-- Location: LCCOMB_X83_Y23_N28
\MasterMind_Core|compare|process_0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|process_0~12_combout\ = (\MasterMind_Core|compare|process_0~11_combout\ & (\MasterMind_Core|compare|process_0~10_combout\ & !\MasterMind_Core|compare|comparar_user~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|process_0~11_combout\,
	datac => \MasterMind_Core|compare|process_0~10_combout\,
	datad => \MasterMind_Core|compare|comparar_user~19_combout\,
	combout => \MasterMind_Core|compare|process_0~12_combout\);

-- Location: LCCOMB_X82_Y23_N24
\MasterMind_Core|compare|comparar_user~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|comparar_user~23_combout\ = (\MasterMind_Core|compare|comparar_user~24_combout\) # ((\MasterMind_Core|compare|process_0~9_combout\ & (\MasterMind_Core|compare|comparar_user~21_combout\ & 
-- !\MasterMind_Core|compare|process_0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|process_0~9_combout\,
	datab => \MasterMind_Core|compare|comparar_user~21_combout\,
	datac => \MasterMind_Core|compare|comparar_user~24_combout\,
	datad => \MasterMind_Core|compare|process_0~12_combout\,
	combout => \MasterMind_Core|compare|comparar_user~23_combout\);

-- Location: LCCOMB_X82_Y23_N30
\MasterMind_Core|compare|Selector10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Selector10~2_combout\ = (\MasterMind_Core|compare|comparar_user~23_combout\) # ((\MasterMind_Core|compare|process_0~16_combout\ & (\MasterMind_Core|compare|process_0~17_combout\ & \MasterMind_Core|compare|Selector9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|process_0~16_combout\,
	datab => \MasterMind_Core|compare|process_0~17_combout\,
	datac => \MasterMind_Core|compare|Selector9~1_combout\,
	datad => \MasterMind_Core|compare|comparar_user~23_combout\,
	combout => \MasterMind_Core|compare|Selector10~2_combout\);

-- Location: LCCOMB_X82_Y21_N10
\MasterMind_Core|compare|Selector10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Selector10~3_combout\ = (\MasterMind_Core|compare|NState.S2~q\ & ((\MasterMind_Core|compare|comparar_user\(1)) # ((\MasterMind_Core|compare|Selector1~0_combout\ & \MasterMind_Core|compare|Selector10~2_combout\)))) # 
-- (!\MasterMind_Core|compare|NState.S2~q\ & (((\MasterMind_Core|compare|Selector1~0_combout\ & \MasterMind_Core|compare|Selector10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|NState.S2~q\,
	datab => \MasterMind_Core|compare|comparar_user\(1),
	datac => \MasterMind_Core|compare|Selector1~0_combout\,
	datad => \MasterMind_Core|compare|Selector10~2_combout\,
	combout => \MasterMind_Core|compare|Selector10~3_combout\);

-- Location: LCCOMB_X82_Y21_N4
\MasterMind_Core|compare|Selector10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Selector10~4_combout\ = (\MasterMind_Core|compare|Selector10~3_combout\) # ((!\MasterMind_Core|compare|process_0~0_combout\ & (\MasterMind_Core|compare|NState.S1~q\ & \MasterMind_Core|compare|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|process_0~0_combout\,
	datab => \MasterMind_Core|compare|NState.S1~q\,
	datac => \MasterMind_Core|compare|Equal4~0_combout\,
	datad => \MasterMind_Core|compare|Selector10~3_combout\,
	combout => \MasterMind_Core|compare|Selector10~4_combout\);

-- Location: FF_X82_Y21_N5
\MasterMind_Core|compare|comparar_user[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|compare|Selector10~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|compare|comparar_user\(1));

-- Location: LCCOMB_X84_Y23_N14
\MasterMind_Core|compare|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|process_0~0_combout\ = (!\MasterMind_Core|compare|comparar_user\(1) & ((!\MasterMind_Core|compare|Equal1~1_combout\) # (!\MasterMind_Core|compare|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|compare|comparar_user\(1),
	datac => \MasterMind_Core|compare|Equal1~0_combout\,
	datad => \MasterMind_Core|compare|Equal1~1_combout\,
	combout => \MasterMind_Core|compare|process_0~0_combout\);

-- Location: LCCOMB_X84_Y23_N0
\MasterMind_Core|compare|comparar_user~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|comparar_user~6_combout\ = (\MasterMind_Core|compare|comparar_user~4_combout\ & \MasterMind_Core|compare|comparar_user~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MasterMind_Core|compare|comparar_user~4_combout\,
	datad => \MasterMind_Core|compare|comparar_user~5_combout\,
	combout => \MasterMind_Core|compare|comparar_user~6_combout\);

-- Location: LCCOMB_X83_Y22_N24
\MasterMind_Core|compare|comparar_user~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|comparar_user~8_combout\ = (\MasterMind_Core|Counter9999|s_count0\(2) & (\MasterMind_Core|register_c|dataOut2\(2) & (\MasterMind_Core|Counter9999|s_count0\(3) $ (!\MasterMind_Core|register_c|dataOut2\(3))))) # 
-- (!\MasterMind_Core|Counter9999|s_count0\(2) & (!\MasterMind_Core|register_c|dataOut2\(2) & (\MasterMind_Core|Counter9999|s_count0\(3) $ (!\MasterMind_Core|register_c|dataOut2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Counter9999|s_count0\(2),
	datab => \MasterMind_Core|Counter9999|s_count0\(3),
	datac => \MasterMind_Core|register_c|dataOut2\(3),
	datad => \MasterMind_Core|register_c|dataOut2\(2),
	combout => \MasterMind_Core|compare|comparar_user~8_combout\);

-- Location: LCCOMB_X83_Y22_N28
\MasterMind_Core|compare|comparar_user~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|comparar_user~7_combout\ = (\MasterMind_Core|Counter9999|s_count0\(1) & (\MasterMind_Core|register_c|dataOut2\(1) & (\MasterMind_Core|Counter9999|s_count0\(0) $ (!\MasterMind_Core|register_c|dataOut2\(0))))) # 
-- (!\MasterMind_Core|Counter9999|s_count0\(1) & (!\MasterMind_Core|register_c|dataOut2\(1) & (\MasterMind_Core|Counter9999|s_count0\(0) $ (!\MasterMind_Core|register_c|dataOut2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Counter9999|s_count0\(1),
	datab => \MasterMind_Core|Counter9999|s_count0\(0),
	datac => \MasterMind_Core|register_c|dataOut2\(1),
	datad => \MasterMind_Core|register_c|dataOut2\(0),
	combout => \MasterMind_Core|compare|comparar_user~7_combout\);

-- Location: LCCOMB_X83_Y22_N14
\MasterMind_Core|compare|comparar_user~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|comparar_user~9_combout\ = (\MasterMind_Core|compare|comparar_user~8_combout\ & \MasterMind_Core|compare|comparar_user~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|compare|comparar_user~8_combout\,
	datac => \MasterMind_Core|compare|comparar_user~7_combout\,
	combout => \MasterMind_Core|compare|comparar_user~9_combout\);

-- Location: LCCOMB_X83_Y25_N22
\MasterMind_Core|compare|comparar_user~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|comparar_user~13_combout\ = (\MasterMind_Core|compare|comparar_user~9_combout\ & (\MasterMind_Core|compare|comparar_user~12_combout\ & ((!\MasterMind_Core|compare|comparar_user~6_combout\) # 
-- (!\MasterMind_Core|compare|process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|process_0~0_combout\,
	datab => \MasterMind_Core|compare|comparar_user~6_combout\,
	datac => \MasterMind_Core|compare|comparar_user~9_combout\,
	datad => \MasterMind_Core|compare|comparar_user~12_combout\,
	combout => \MasterMind_Core|compare|comparar_user~13_combout\);

-- Location: LCCOMB_X82_Y25_N30
\MasterMind_Core|compare|comparar_user~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|comparar_user~25_combout\ = (\MasterMind_Core|compare|comparar_user\(2)) # ((\MasterMind_Core|compare|comparar_user~13_combout\) # ((\MasterMind_Core|compare|Equal2~1_combout\ & \MasterMind_Core|compare|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|Equal2~1_combout\,
	datab => \MasterMind_Core|compare|comparar_user\(2),
	datac => \MasterMind_Core|compare|Equal2~0_combout\,
	datad => \MasterMind_Core|compare|comparar_user~13_combout\,
	combout => \MasterMind_Core|compare|comparar_user~25_combout\);

-- Location: LCCOMB_X83_Y22_N12
\MasterMind_Core|compare|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|process_0~3_combout\ = (\MasterMind_Core|Counter9999|s_count1\(3) & (\MasterMind_Core|register_c|dataOut2\(3) & (\MasterMind_Core|register_c|dataOut2\(2) $ (!\MasterMind_Core|Counter9999|s_count1\(2))))) # 
-- (!\MasterMind_Core|Counter9999|s_count1\(3) & (!\MasterMind_Core|register_c|dataOut2\(3) & (\MasterMind_Core|register_c|dataOut2\(2) $ (!\MasterMind_Core|Counter9999|s_count1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Counter9999|s_count1\(3),
	datab => \MasterMind_Core|register_c|dataOut2\(2),
	datac => \MasterMind_Core|register_c|dataOut2\(3),
	datad => \MasterMind_Core|Counter9999|s_count1\(2),
	combout => \MasterMind_Core|compare|process_0~3_combout\);

-- Location: LCCOMB_X83_Y22_N10
\MasterMind_Core|compare|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|process_0~2_combout\ = (\MasterMind_Core|register_c|dataOut2\(1) & (\MasterMind_Core|Counter9999|s_count1\(1) & (\MasterMind_Core|register_c|dataOut2\(0) $ (!\MasterMind_Core|Counter9999|s_count1\(0))))) # 
-- (!\MasterMind_Core|register_c|dataOut2\(1) & (!\MasterMind_Core|Counter9999|s_count1\(1) & (\MasterMind_Core|register_c|dataOut2\(0) $ (!\MasterMind_Core|Counter9999|s_count1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|register_c|dataOut2\(1),
	datab => \MasterMind_Core|register_c|dataOut2\(0),
	datac => \MasterMind_Core|Counter9999|s_count1\(1),
	datad => \MasterMind_Core|Counter9999|s_count1\(0),
	combout => \MasterMind_Core|compare|process_0~2_combout\);

-- Location: LCCOMB_X83_Y22_N22
\MasterMind_Core|compare|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|process_0~4_combout\ = (\MasterMind_Core|compare|process_0~3_combout\ & \MasterMind_Core|compare|process_0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|process_0~3_combout\,
	datad => \MasterMind_Core|compare|process_0~2_combout\,
	combout => \MasterMind_Core|compare|process_0~4_combout\);

-- Location: LCCOMB_X82_Y25_N12
\MasterMind_Core|compare|err~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|err~6_combout\ = (!\MasterMind_Core|compare|comparar_user~25_combout\ & (((\MasterMind_Core|compare|process_0~6_combout\) # (!\MasterMind_Core|compare|process_0~4_combout\)) # 
-- (!\MasterMind_Core|compare|comparar_user~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|comparar_user~18_combout\,
	datab => \MasterMind_Core|compare|process_0~6_combout\,
	datac => \MasterMind_Core|compare|comparar_user~25_combout\,
	datad => \MasterMind_Core|compare|process_0~4_combout\,
	combout => \MasterMind_Core|compare|err~6_combout\);

-- Location: LCCOMB_X82_Y22_N28
\MasterMind_Core|compare|Equal16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Equal16~0_combout\ = (\MasterMind_Core|Counter9999|s_count3\(0) & (\MasterMind_Core|register_c|dataOut2\(0) & (\MasterMind_Core|Counter9999|s_count3\(1) $ (!\MasterMind_Core|register_c|dataOut2\(1))))) # 
-- (!\MasterMind_Core|Counter9999|s_count3\(0) & (!\MasterMind_Core|register_c|dataOut2\(0) & (\MasterMind_Core|Counter9999|s_count3\(1) $ (!\MasterMind_Core|register_c|dataOut2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Counter9999|s_count3\(0),
	datab => \MasterMind_Core|register_c|dataOut2\(0),
	datac => \MasterMind_Core|Counter9999|s_count3\(1),
	datad => \MasterMind_Core|register_c|dataOut2\(1),
	combout => \MasterMind_Core|compare|Equal16~0_combout\);

-- Location: LCCOMB_X83_Y22_N18
\MasterMind_Core|compare|Equal16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Equal16~1_combout\ = (\MasterMind_Core|Counter9999|s_count3\(3) & (\MasterMind_Core|register_c|dataOut2\(3) & (\MasterMind_Core|register_c|dataOut2\(2) $ (!\MasterMind_Core|Counter9999|s_count3\(2))))) # 
-- (!\MasterMind_Core|Counter9999|s_count3\(3) & (!\MasterMind_Core|register_c|dataOut2\(3) & (\MasterMind_Core|register_c|dataOut2\(2) $ (!\MasterMind_Core|Counter9999|s_count3\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Counter9999|s_count3\(3),
	datab => \MasterMind_Core|register_c|dataOut2\(3),
	datac => \MasterMind_Core|register_c|dataOut2\(2),
	datad => \MasterMind_Core|Counter9999|s_count3\(2),
	combout => \MasterMind_Core|compare|Equal16~1_combout\);

-- Location: LCCOMB_X82_Y23_N2
\MasterMind_Core|compare|process_0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|process_0~18_combout\ = (\MasterMind_Core|compare|process_0~16_combout\ & (\MasterMind_Core|compare|process_0~17_combout\ & !\MasterMind_Core|compare|comparar_user~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|process_0~16_combout\,
	datac => \MasterMind_Core|compare|process_0~17_combout\,
	datad => \MasterMind_Core|compare|comparar_user~23_combout\,
	combout => \MasterMind_Core|compare|process_0~18_combout\);

-- Location: LCCOMB_X82_Y23_N14
\MasterMind_Core|compare|Selector9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Selector9~3_combout\ = (\MasterMind_Core|compare|Equal16~0_combout\ & (\MasterMind_Core|compare|Equal16~1_combout\ & (\MasterMind_Core|compare|Selector9~1_combout\ & !\MasterMind_Core|compare|process_0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|Equal16~0_combout\,
	datab => \MasterMind_Core|compare|Equal16~1_combout\,
	datac => \MasterMind_Core|compare|Selector9~1_combout\,
	datad => \MasterMind_Core|compare|process_0~18_combout\,
	combout => \MasterMind_Core|compare|Selector9~3_combout\);

-- Location: LCCOMB_X83_Y21_N0
\MasterMind_Core|compare|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Selector3~1_combout\ = (\MasterMind_Core|compare|NState.S1~q\ & \MasterMind_Core|compare|Equal4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|NState.S1~q\,
	datad => \MasterMind_Core|compare|Equal4~0_combout\,
	combout => \MasterMind_Core|compare|Selector3~1_combout\);

-- Location: LCCOMB_X82_Y23_N16
\MasterMind_Core|compare|Selector9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Selector9~2_combout\ = (\MasterMind_Core|compare|NState.S2~q\ & ((\MasterMind_Core|compare|comparar_user\(2)) # ((!\MasterMind_Core|compare|process_0~1_combout\ & \MasterMind_Core|compare|Selector3~1_combout\)))) # 
-- (!\MasterMind_Core|compare|NState.S2~q\ & (((!\MasterMind_Core|compare|process_0~1_combout\ & \MasterMind_Core|compare|Selector3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|NState.S2~q\,
	datab => \MasterMind_Core|compare|comparar_user\(2),
	datac => \MasterMind_Core|compare|process_0~1_combout\,
	datad => \MasterMind_Core|compare|Selector3~1_combout\,
	combout => \MasterMind_Core|compare|Selector9~2_combout\);

-- Location: LCCOMB_X82_Y23_N12
\MasterMind_Core|compare|Selector9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Selector9~4_combout\ = (\MasterMind_Core|compare|Selector9~2_combout\) # ((\MasterMind_Core|compare|Selector1~0_combout\ & ((\MasterMind_Core|compare|Selector9~3_combout\) # (!\MasterMind_Core|compare|err~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|err~6_combout\,
	datab => \MasterMind_Core|compare|Selector9~3_combout\,
	datac => \MasterMind_Core|compare|Selector1~0_combout\,
	datad => \MasterMind_Core|compare|Selector9~2_combout\,
	combout => \MasterMind_Core|compare|Selector9~4_combout\);

-- Location: FF_X82_Y23_N13
\MasterMind_Core|compare|comparar_user[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|compare|Selector9~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|compare|comparar_user\(2));

-- Location: LCCOMB_X83_Y22_N26
\MasterMind_Core|compare|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|process_0~1_combout\ = (!\MasterMind_Core|compare|comparar_user\(2) & ((!\MasterMind_Core|compare|Equal2~1_combout\) # (!\MasterMind_Core|compare|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|comparar_user\(2),
	datac => \MasterMind_Core|compare|Equal2~0_combout\,
	datad => \MasterMind_Core|compare|Equal2~1_combout\,
	combout => \MasterMind_Core|compare|process_0~1_combout\);

-- Location: LCCOMB_X83_Y25_N16
\MasterMind_Core|compare|comparar_user~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|comparar_user~16_combout\ = (!\MasterMind_Core|compare|process_0~6_combout\ & (((\MasterMind_Core|compare|comparar_user~13_combout\) # (!\MasterMind_Core|compare|process_0~4_combout\)) # 
-- (!\MasterMind_Core|compare|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|process_0~1_combout\,
	datab => \MasterMind_Core|compare|process_0~4_combout\,
	datac => \MasterMind_Core|compare|comparar_user~13_combout\,
	datad => \MasterMind_Core|compare|process_0~6_combout\,
	combout => \MasterMind_Core|compare|comparar_user~16_combout\);

-- Location: LCCOMB_X83_Y25_N4
\MasterMind_Core|compare|comparar_user~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|comparar_user~10_combout\ = (\MasterMind_Core|compare|process_0~0_combout\ & (!\MasterMind_Core|compare|comparar_user~6_combout\ & ((!\MasterMind_Core|compare|comparar_user~9_combout\) # 
-- (!\MasterMind_Core|compare|process_0~1_combout\)))) # (!\MasterMind_Core|compare|process_0~0_combout\ & (((!\MasterMind_Core|compare|comparar_user~9_combout\)) # (!\MasterMind_Core|compare|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|process_0~0_combout\,
	datab => \MasterMind_Core|compare|process_0~1_combout\,
	datac => \MasterMind_Core|compare|comparar_user~9_combout\,
	datad => \MasterMind_Core|compare|comparar_user~6_combout\,
	combout => \MasterMind_Core|compare|comparar_user~10_combout\);

-- Location: LCCOMB_X83_Y22_N8
\MasterMind_Core|compare|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Equal7~0_combout\ = (\MasterMind_Core|Counter9999|s_count0\(1) & (\MasterMind_Core|register_c|dataOut3\(1) & (\MasterMind_Core|Counter9999|s_count0\(0) $ (!\MasterMind_Core|register_c|dataOut3\(0))))) # 
-- (!\MasterMind_Core|Counter9999|s_count0\(1) & (!\MasterMind_Core|register_c|dataOut3\(1) & (\MasterMind_Core|Counter9999|s_count0\(0) $ (!\MasterMind_Core|register_c|dataOut3\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Counter9999|s_count0\(1),
	datab => \MasterMind_Core|register_c|dataOut3\(1),
	datac => \MasterMind_Core|Counter9999|s_count0\(0),
	datad => \MasterMind_Core|register_c|dataOut3\(0),
	combout => \MasterMind_Core|compare|Equal7~0_combout\);

-- Location: LCCOMB_X82_Y22_N30
\MasterMind_Core|compare|Equal7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Equal7~1_combout\ = (\MasterMind_Core|Counter9999|s_count0\(3) & (\MasterMind_Core|register_c|dataOut3\(3) & (\MasterMind_Core|Counter9999|s_count0\(2) $ (!\MasterMind_Core|register_c|dataOut3\(2))))) # 
-- (!\MasterMind_Core|Counter9999|s_count0\(3) & (!\MasterMind_Core|register_c|dataOut3\(3) & (\MasterMind_Core|Counter9999|s_count0\(2) $ (!\MasterMind_Core|register_c|dataOut3\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|Counter9999|s_count0\(3),
	datab => \MasterMind_Core|Counter9999|s_count0\(2),
	datac => \MasterMind_Core|register_c|dataOut3\(3),
	datad => \MasterMind_Core|register_c|dataOut3\(2),
	combout => \MasterMind_Core|compare|Equal7~1_combout\);

-- Location: LCCOMB_X83_Y25_N2
\MasterMind_Core|compare|Equal7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Equal7~2_combout\ = (\MasterMind_Core|compare|Equal7~0_combout\ & \MasterMind_Core|compare|Equal7~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MasterMind_Core|compare|Equal7~0_combout\,
	datad => \MasterMind_Core|compare|Equal7~1_combout\,
	combout => \MasterMind_Core|compare|Equal7~2_combout\);

-- Location: LCCOMB_X83_Y25_N6
\MasterMind_Core|compare|comparar_user~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|comparar_user~17_combout\ = (\MasterMind_Core|compare|comparar_user~11_combout\ & (((!\MasterMind_Core|compare|Equal7~2_combout\) # (!\MasterMind_Core|compare|comparar_user~10_combout\)) # 
-- (!\MasterMind_Core|compare|comparar_user~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|comparar_user~12_combout\,
	datab => \MasterMind_Core|compare|comparar_user~11_combout\,
	datac => \MasterMind_Core|compare|comparar_user~10_combout\,
	datad => \MasterMind_Core|compare|Equal7~2_combout\,
	combout => \MasterMind_Core|compare|comparar_user~17_combout\);

-- Location: LCCOMB_X83_Y25_N8
\MasterMind_Core|compare|comparar_user~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|comparar_user~20_combout\ = ((\MasterMind_Core|compare|Equal10~2_combout\ & (\MasterMind_Core|compare|comparar_user~16_combout\ & \MasterMind_Core|compare|comparar_user~18_combout\))) # 
-- (!\MasterMind_Core|compare|comparar_user~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|Equal10~2_combout\,
	datab => \MasterMind_Core|compare|comparar_user~16_combout\,
	datac => \MasterMind_Core|compare|comparar_user~18_combout\,
	datad => \MasterMind_Core|compare|comparar_user~17_combout\,
	combout => \MasterMind_Core|compare|comparar_user~20_combout\);

-- Location: LCCOMB_X84_Y23_N6
\MasterMind_Core|compare|err~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|err~15_combout\ = (!\MasterMind_Core|compare|process_0~12_combout\ & (((\MasterMind_Core|compare|comparar_user~24_combout\) # (!\MasterMind_Core|compare|process_0~8_combout\)) # (!\MasterMind_Core|compare|process_0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|process_0~7_combout\,
	datab => \MasterMind_Core|compare|process_0~8_combout\,
	datac => \MasterMind_Core|compare|comparar_user~24_combout\,
	datad => \MasterMind_Core|compare|process_0~12_combout\,
	combout => \MasterMind_Core|compare|err~15_combout\);

-- Location: LCCOMB_X83_Y25_N28
\MasterMind_Core|compare|Selector8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Selector8~2_combout\ = (\MasterMind_Core|compare|comparar_user~20_combout\) # ((\MasterMind_Core|compare|Equal13~2_combout\ & (\MasterMind_Core|compare|comparar_user~21_combout\ & \MasterMind_Core|compare|err~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|Equal13~2_combout\,
	datab => \MasterMind_Core|compare|comparar_user~21_combout\,
	datac => \MasterMind_Core|compare|comparar_user~20_combout\,
	datad => \MasterMind_Core|compare|err~15_combout\,
	combout => \MasterMind_Core|compare|Selector8~2_combout\);

-- Location: LCCOMB_X82_Y21_N0
\MasterMind_Core|compare|Selector8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Selector8~3_combout\ = (\MasterMind_Core|compare|NState.S2~q\ & ((\MasterMind_Core|compare|comparar_user\(3)) # ((\MasterMind_Core|compare|Selector1~0_combout\ & \MasterMind_Core|compare|Selector8~2_combout\)))) # 
-- (!\MasterMind_Core|compare|NState.S2~q\ & (((\MasterMind_Core|compare|Selector1~0_combout\ & \MasterMind_Core|compare|Selector8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|NState.S2~q\,
	datab => \MasterMind_Core|compare|comparar_user\(3),
	datac => \MasterMind_Core|compare|Selector1~0_combout\,
	datad => \MasterMind_Core|compare|Selector8~2_combout\,
	combout => \MasterMind_Core|compare|Selector8~3_combout\);

-- Location: LCCOMB_X82_Y21_N18
\MasterMind_Core|compare|Selector8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Selector8~4_combout\ = (\MasterMind_Core|compare|Selector8~3_combout\) # ((!\MasterMind_Core|compare|comparar_user~11_combout\ & (\MasterMind_Core|compare|NState.S1~q\ & \MasterMind_Core|compare|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|comparar_user~11_combout\,
	datab => \MasterMind_Core|compare|NState.S1~q\,
	datac => \MasterMind_Core|compare|Equal4~0_combout\,
	datad => \MasterMind_Core|compare|Selector8~3_combout\,
	combout => \MasterMind_Core|compare|Selector8~4_combout\);

-- Location: FF_X82_Y21_N19
\MasterMind_Core|compare|comparar_user[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|compare|Selector8~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|compare|comparar_user\(3));

-- Location: LCCOMB_X82_Y24_N12
\MasterMind_Core|compare|comparar_user~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|comparar_user~11_combout\ = (!\MasterMind_Core|compare|comparar_user\(3) & ((!\MasterMind_Core|compare|Equal3~0_combout\) # (!\MasterMind_Core|compare|Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|compare|comparar_user\(3),
	datac => \MasterMind_Core|compare|Equal3~1_combout\,
	datad => \MasterMind_Core|compare|Equal3~0_combout\,
	combout => \MasterMind_Core|compare|comparar_user~11_combout\);

-- Location: LCCOMB_X83_Y25_N12
\MasterMind_Core|compare|err~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|err~2_combout\ = ((\MasterMind_Core|compare|comparar_user~10_combout\ & ((!\MasterMind_Core|compare|Equal7~2_combout\) # (!\MasterMind_Core|compare|comparar_user~11_combout\)))) # 
-- (!\MasterMind_Core|compare|comparar_user~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|comparar_user~12_combout\,
	datab => \MasterMind_Core|compare|comparar_user~11_combout\,
	datac => \MasterMind_Core|compare|comparar_user~10_combout\,
	datad => \MasterMind_Core|compare|Equal7~2_combout\,
	combout => \MasterMind_Core|compare|err~2_combout\);

-- Location: LCCOMB_X82_Y25_N22
\MasterMind_Core|compare|process_0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|process_0~15_combout\ = (\MasterMind_Core|compare|process_0~13_combout\ & (\MasterMind_Core|compare|process_0~14_combout\ & !\MasterMind_Core|compare|comparar_user~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|compare|process_0~13_combout\,
	datac => \MasterMind_Core|compare|process_0~14_combout\,
	datad => \MasterMind_Core|compare|comparar_user~22_combout\,
	combout => \MasterMind_Core|compare|process_0~15_combout\);

-- Location: LCCOMB_X82_Y25_N8
\MasterMind_Core|compare|err~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|err~7_combout\ = (!\MasterMind_Core|compare|process_0~15_combout\ & (((!\MasterMind_Core|compare|err~6_combout\) # (!\MasterMind_Core|compare|Equal16~1_combout\)) # (!\MasterMind_Core|compare|Equal16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|Equal16~0_combout\,
	datab => \MasterMind_Core|compare|Equal16~1_combout\,
	datac => \MasterMind_Core|compare|process_0~15_combout\,
	datad => \MasterMind_Core|compare|err~6_combout\,
	combout => \MasterMind_Core|compare|err~7_combout\);

-- Location: LCCOMB_X82_Y25_N6
\MasterMind_Core|compare|err~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|err~8_combout\ = ((\MasterMind_Core|compare|err~7_combout\ & !\MasterMind_Core|compare|process_0~18_combout\)) # (!\MasterMind_Core|compare|Selector9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|compare|Selector9~0_combout\,
	datac => \MasterMind_Core|compare|err~7_combout\,
	datad => \MasterMind_Core|compare|process_0~18_combout\,
	combout => \MasterMind_Core|compare|err~8_combout\);

-- Location: LCCOMB_X82_Y25_N14
\MasterMind_Core|compare|err~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|err~5_combout\ = ((\MasterMind_Core|compare|err~15_combout\ & ((\MasterMind_Core|compare|comparar_user~20_combout\) # (!\MasterMind_Core|compare|Equal13~2_combout\)))) # (!\MasterMind_Core|compare|comparar_user~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|comparar_user~21_combout\,
	datab => \MasterMind_Core|compare|Equal13~2_combout\,
	datac => \MasterMind_Core|compare|comparar_user~20_combout\,
	datad => \MasterMind_Core|compare|err~15_combout\,
	combout => \MasterMind_Core|compare|err~5_combout\);

-- Location: LCCOMB_X83_Y25_N10
\MasterMind_Core|compare|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Selector3~0_combout\ = (\MasterMind_Core|compare|Selector1~0_combout\ & (\MasterMind_Core|compare|err~4_combout\ $ (\MasterMind_Core|compare|err~8_combout\ $ (\MasterMind_Core|compare|err~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|err~4_combout\,
	datab => \MasterMind_Core|compare|err~8_combout\,
	datac => \MasterMind_Core|compare|Selector1~0_combout\,
	datad => \MasterMind_Core|compare|err~5_combout\,
	combout => \MasterMind_Core|compare|Selector3~0_combout\);

-- Location: LCCOMB_X83_Y25_N24
\MasterMind_Core|compare|Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Selector3~2_combout\ = (\MasterMind_Core|compare|Selector3~0_combout\) # ((\MasterMind_Core|compare|err\(0) & ((\MasterMind_Core|compare|NState.S2~q\) # (\MasterMind_Core|compare|Selector3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|NState.S2~q\,
	datab => \MasterMind_Core|compare|Selector3~1_combout\,
	datac => \MasterMind_Core|compare|err\(0),
	datad => \MasterMind_Core|compare|Selector3~0_combout\,
	combout => \MasterMind_Core|compare|Selector3~2_combout\);

-- Location: FF_X83_Y25_N25
\MasterMind_Core|compare|err[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|compare|Selector3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|compare|err\(0));

-- Location: LCCOMB_X83_Y25_N0
\MasterMind_Core|compare|err~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|err~3_combout\ = ((\MasterMind_Core|compare|comparar_user~16_combout\ & ((!\MasterMind_Core|compare|Equal10~2_combout\) # (!\MasterMind_Core|compare|comparar_user~17_combout\)))) # 
-- (!\MasterMind_Core|compare|comparar_user~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|comparar_user~17_combout\,
	datab => \MasterMind_Core|compare|comparar_user~18_combout\,
	datac => \MasterMind_Core|compare|Equal10~2_combout\,
	datad => \MasterMind_Core|compare|comparar_user~16_combout\,
	combout => \MasterMind_Core|compare|err~3_combout\);

-- Location: LCCOMB_X83_Y25_N30
\MasterMind_Core|compare|err~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|err~4_combout\ = \MasterMind_Core|compare|err~2_combout\ $ (\MasterMind_Core|compare|err\(0) $ (\MasterMind_Core|compare|err~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|err~2_combout\,
	datac => \MasterMind_Core|compare|err\(0),
	datad => \MasterMind_Core|compare|err~3_combout\,
	combout => \MasterMind_Core|compare|err~4_combout\);

-- Location: LCCOMB_X83_Y25_N14
\MasterMind_Core|compare|err~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|err~14_combout\ = \MasterMind_Core|compare|err\(1) $ (((\MasterMind_Core|compare|err~2_combout\ & (\MasterMind_Core|compare|err\(0) & !\MasterMind_Core|compare|err~3_combout\)) # (!\MasterMind_Core|compare|err~2_combout\ & 
-- ((\MasterMind_Core|compare|err\(0)) # (!\MasterMind_Core|compare|err~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110000111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|err~2_combout\,
	datab => \MasterMind_Core|compare|err\(1),
	datac => \MasterMind_Core|compare|err\(0),
	datad => \MasterMind_Core|compare|err~3_combout\,
	combout => \MasterMind_Core|compare|err~14_combout\);

-- Location: LCCOMB_X82_Y25_N20
\MasterMind_Core|compare|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Selector2~0_combout\ = \MasterMind_Core|compare|err~14_combout\ $ (((\MasterMind_Core|compare|err~4_combout\ & ((!\MasterMind_Core|compare|err~8_combout\) # (!\MasterMind_Core|compare|err~5_combout\))) # 
-- (!\MasterMind_Core|compare|err~4_combout\ & (!\MasterMind_Core|compare|err~5_combout\ & !\MasterMind_Core|compare|err~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011001100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|err~4_combout\,
	datab => \MasterMind_Core|compare|err~14_combout\,
	datac => \MasterMind_Core|compare|err~5_combout\,
	datad => \MasterMind_Core|compare|err~8_combout\,
	combout => \MasterMind_Core|compare|Selector2~0_combout\);

-- Location: LCCOMB_X82_Y25_N16
\MasterMind_Core|compare|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Selector2~1_combout\ = (\MasterMind_Core|compare|Selector0~1_combout\ & ((\MasterMind_Core|compare|err\(1)) # ((\MasterMind_Core|compare|Selector1~0_combout\ & \MasterMind_Core|compare|Selector2~0_combout\)))) # 
-- (!\MasterMind_Core|compare|Selector0~1_combout\ & (\MasterMind_Core|compare|Selector1~0_combout\ & ((\MasterMind_Core|compare|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|Selector0~1_combout\,
	datab => \MasterMind_Core|compare|Selector1~0_combout\,
	datac => \MasterMind_Core|compare|err\(1),
	datad => \MasterMind_Core|compare|Selector2~0_combout\,
	combout => \MasterMind_Core|compare|Selector2~1_combout\);

-- Location: FF_X82_Y25_N17
\MasterMind_Core|compare|err[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|compare|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|compare|err\(1));

-- Location: LCCOMB_X81_Y25_N20
\MasterMind_Core|checkEnd|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|checkEnd|Selector0~0_combout\ = (\MasterMind_Core|checkEnd|pState.S3~q\ & \MasterMind_Core|compare|err\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MasterMind_Core|checkEnd|pState.S3~q\,
	datad => \MasterMind_Core|compare|err\(1),
	combout => \MasterMind_Core|checkEnd|Selector0~0_combout\);

-- Location: CLKCTRL_G19
\MasterMind_Core|checkEnd|pState.S0~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \MasterMind_Core|checkEnd|pState.S0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \MasterMind_Core|checkEnd|pState.S0~clkctrl_outclk\);

-- Location: LCCOMB_X81_Y25_N24
\MasterMind_Core|checkEnd|s_n[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|checkEnd|s_n\(1) = (GLOBAL(\MasterMind_Core|checkEnd|pState.S0~clkctrl_outclk\) & ((\MasterMind_Core|checkEnd|Selector0~0_combout\))) # (!GLOBAL(\MasterMind_Core|checkEnd|pState.S0~clkctrl_outclk\) & (\MasterMind_Core|checkEnd|s_n\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|checkEnd|s_n\(1),
	datac => \MasterMind_Core|checkEnd|Selector0~0_combout\,
	datad => \MasterMind_Core|checkEnd|pState.S0~clkctrl_outclk\,
	combout => \MasterMind_Core|checkEnd|s_n\(1));

-- Location: LCCOMB_X83_Y25_N20
\MasterMind_Core|compare|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Add6~0_combout\ = (\MasterMind_Core|compare|err~2_combout\ & (\MasterMind_Core|compare|err\(1) & (\MasterMind_Core|compare|err\(0) $ (!\MasterMind_Core|compare|err~3_combout\)))) # (!\MasterMind_Core|compare|err~2_combout\ & 
-- ((\MasterMind_Core|compare|err\(1) & (!\MasterMind_Core|compare|err\(0) & \MasterMind_Core|compare|err~3_combout\)) # (!\MasterMind_Core|compare|err\(1) & (\MasterMind_Core|compare|err\(0) & !\MasterMind_Core|compare|err~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|err~2_combout\,
	datab => \MasterMind_Core|compare|err\(1),
	datac => \MasterMind_Core|compare|err\(0),
	datad => \MasterMind_Core|compare|err~3_combout\,
	combout => \MasterMind_Core|compare|Add6~0_combout\);

-- Location: LCCOMB_X82_Y25_N0
\MasterMind_Core|compare|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Selector1~1_combout\ = (\MasterMind_Core|compare|err~8_combout\ & (((\MasterMind_Core|compare|err~5_combout\)))) # (!\MasterMind_Core|compare|err~8_combout\ & (\MasterMind_Core|compare|err~14_combout\ & 
-- ((\MasterMind_Core|compare|err~4_combout\) # (!\MasterMind_Core|compare|err~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|err~4_combout\,
	datab => \MasterMind_Core|compare|err~14_combout\,
	datac => \MasterMind_Core|compare|err~5_combout\,
	datad => \MasterMind_Core|compare|err~8_combout\,
	combout => \MasterMind_Core|compare|Selector1~1_combout\);

-- Location: LCCOMB_X82_Y25_N2
\MasterMind_Core|compare|Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Selector1~2_combout\ = \MasterMind_Core|compare|err~12_combout\ $ (((\MasterMind_Core|compare|err~8_combout\ & (\MasterMind_Core|compare|Add6~0_combout\ & !\MasterMind_Core|compare|Selector1~1_combout\)) # 
-- (!\MasterMind_Core|compare|err~8_combout\ & ((\MasterMind_Core|compare|Selector1~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|err~8_combout\,
	datab => \MasterMind_Core|compare|err~12_combout\,
	datac => \MasterMind_Core|compare|Add6~0_combout\,
	datad => \MasterMind_Core|compare|Selector1~1_combout\,
	combout => \MasterMind_Core|compare|Selector1~2_combout\);

-- Location: LCCOMB_X82_Y25_N26
\MasterMind_Core|compare|Selector1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Selector1~3_combout\ = (\MasterMind_Core|compare|Selector1~0_combout\ & ((\MasterMind_Core|compare|Selector1~2_combout\) # ((\MasterMind_Core|compare|Selector0~1_combout\ & \MasterMind_Core|compare|err\(2))))) # 
-- (!\MasterMind_Core|compare|Selector1~0_combout\ & (\MasterMind_Core|compare|Selector0~1_combout\ & (\MasterMind_Core|compare|err\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|Selector1~0_combout\,
	datab => \MasterMind_Core|compare|Selector0~1_combout\,
	datac => \MasterMind_Core|compare|err\(2),
	datad => \MasterMind_Core|compare|Selector1~2_combout\,
	combout => \MasterMind_Core|compare|Selector1~3_combout\);

-- Location: FF_X82_Y25_N27
\MasterMind_Core|compare|err[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|compare|Selector1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|compare|err\(2));

-- Location: LCCOMB_X81_Y25_N16
\MasterMind_Core|compare|err~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|err~10_combout\ = \MasterMind_Core|compare|err\(2) $ (((\MasterMind_Core|compare|err\(1) & (\MasterMind_Core|compare|err\(0) & !\MasterMind_Core|compare|err~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|err\(1),
	datab => \MasterMind_Core|compare|err\(2),
	datac => \MasterMind_Core|compare|err\(0),
	datad => \MasterMind_Core|compare|err~2_combout\,
	combout => \MasterMind_Core|compare|err~10_combout\);

-- Location: LCCOMB_X81_Y25_N2
\MasterMind_Core|compare|Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Add5~0_combout\ = (\MasterMind_Core|compare|err\(1) & (\MasterMind_Core|compare|err\(0) $ (!\MasterMind_Core|compare|err~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|compare|err\(1),
	datac => \MasterMind_Core|compare|err\(0),
	datad => \MasterMind_Core|compare|err~2_combout\,
	combout => \MasterMind_Core|compare|Add5~0_combout\);

-- Location: LCCOMB_X82_Y25_N24
\MasterMind_Core|compare|err~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|err~12_combout\ = \MasterMind_Core|compare|err~10_combout\ $ (((!\MasterMind_Core|compare|err~3_combout\ & \MasterMind_Core|compare|Add5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|compare|err~3_combout\,
	datac => \MasterMind_Core|compare|err~10_combout\,
	datad => \MasterMind_Core|compare|Add5~0_combout\,
	combout => \MasterMind_Core|compare|err~12_combout\);

-- Location: LCCOMB_X82_Y25_N4
\MasterMind_Core|compare|Add7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Add7~0_combout\ = (\MasterMind_Core|compare|err~14_combout\ & (\MasterMind_Core|compare|err~12_combout\ & (\MasterMind_Core|compare|err~5_combout\ $ (!\MasterMind_Core|compare|err~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|err~14_combout\,
	datab => \MasterMind_Core|compare|err~5_combout\,
	datac => \MasterMind_Core|compare|err~4_combout\,
	datad => \MasterMind_Core|compare|err~12_combout\,
	combout => \MasterMind_Core|compare|Add7~0_combout\);

-- Location: LCCOMB_X81_Y25_N26
\MasterMind_Core|compare|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Add4~0_combout\ = \MasterMind_Core|compare|err\(3) $ (((\MasterMind_Core|compare|err\(1) & (\MasterMind_Core|compare|err\(2) & \MasterMind_Core|compare|err\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|err\(1),
	datab => \MasterMind_Core|compare|err\(2),
	datac => \MasterMind_Core|compare|err\(0),
	datad => \MasterMind_Core|compare|err\(3),
	combout => \MasterMind_Core|compare|Add4~0_combout\);

-- Location: LCCOMB_X81_Y25_N4
\MasterMind_Core|compare|err~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|err~9_combout\ = (\MasterMind_Core|compare|err~2_combout\ & (\MasterMind_Core|compare|err\(3))) # (!\MasterMind_Core|compare|err~2_combout\ & ((\MasterMind_Core|compare|Add4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|compare|err\(3),
	datac => \MasterMind_Core|compare|Add4~0_combout\,
	datad => \MasterMind_Core|compare|err~2_combout\,
	combout => \MasterMind_Core|compare|err~9_combout\);

-- Location: LCCOMB_X81_Y25_N6
\MasterMind_Core|compare|err~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|err~11_combout\ = \MasterMind_Core|compare|err~9_combout\ $ (((\MasterMind_Core|compare|err~10_combout\ & (!\MasterMind_Core|compare|err~3_combout\ & \MasterMind_Core|compare|Add5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|err~9_combout\,
	datab => \MasterMind_Core|compare|err~10_combout\,
	datac => \MasterMind_Core|compare|err~3_combout\,
	datad => \MasterMind_Core|compare|Add5~0_combout\,
	combout => \MasterMind_Core|compare|err~11_combout\);

-- Location: LCCOMB_X82_Y25_N18
\MasterMind_Core|compare|err~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|err~13_combout\ = \MasterMind_Core|compare|err~11_combout\ $ (((\MasterMind_Core|compare|Add6~0_combout\ & (!\MasterMind_Core|compare|err~5_combout\ & \MasterMind_Core|compare|err~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|Add6~0_combout\,
	datab => \MasterMind_Core|compare|err~5_combout\,
	datac => \MasterMind_Core|compare|err~11_combout\,
	datad => \MasterMind_Core|compare|err~12_combout\,
	combout => \MasterMind_Core|compare|err~13_combout\);

-- Location: LCCOMB_X82_Y25_N10
\MasterMind_Core|compare|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Selector0~0_combout\ = (\MasterMind_Core|compare|Selector1~0_combout\ & (\MasterMind_Core|compare|err~13_combout\ $ (((!\MasterMind_Core|compare|err~8_combout\ & \MasterMind_Core|compare|Add7~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|compare|err~8_combout\,
	datab => \MasterMind_Core|compare|Selector1~0_combout\,
	datac => \MasterMind_Core|compare|Add7~0_combout\,
	datad => \MasterMind_Core|compare|err~13_combout\,
	combout => \MasterMind_Core|compare|Selector0~0_combout\);

-- Location: LCCOMB_X82_Y25_N28
\MasterMind_Core|compare|Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|compare|Selector0~2_combout\ = (\MasterMind_Core|compare|Selector0~0_combout\) # ((\MasterMind_Core|compare|Selector0~1_combout\ & \MasterMind_Core|compare|err\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|compare|Selector0~1_combout\,
	datac => \MasterMind_Core|compare|err\(3),
	datad => \MasterMind_Core|compare|Selector0~0_combout\,
	combout => \MasterMind_Core|compare|Selector0~2_combout\);

-- Location: FF_X82_Y25_N29
\MasterMind_Core|compare|err[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|compare|Selector0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|compare|err\(3));

-- Location: LCCOMB_X81_Y25_N0
\MasterMind_Core|checkEnd|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|checkEnd|Selector16~0_combout\ = (\MasterMind_Core|checkEnd|pState.S3~q\ & \MasterMind_Core|compare|err\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MasterMind_Core|checkEnd|pState.S3~q\,
	datad => \MasterMind_Core|compare|err\(3),
	combout => \MasterMind_Core|checkEnd|Selector16~0_combout\);

-- Location: LCCOMB_X81_Y25_N12
\MasterMind_Core|checkEnd|s_n[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|checkEnd|s_n\(3) = (GLOBAL(\MasterMind_Core|checkEnd|pState.S0~clkctrl_outclk\) & ((\MasterMind_Core|checkEnd|Selector16~0_combout\))) # (!GLOBAL(\MasterMind_Core|checkEnd|pState.S0~clkctrl_outclk\) & (\MasterMind_Core|checkEnd|s_n\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|checkEnd|s_n\(3),
	datac => \MasterMind_Core|checkEnd|Selector16~0_combout\,
	datad => \MasterMind_Core|checkEnd|pState.S0~clkctrl_outclk\,
	combout => \MasterMind_Core|checkEnd|s_n\(3));

-- Location: LCCOMB_X81_Y25_N30
\MasterMind_Core|checkEnd|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|checkEnd|Selector15~0_combout\ = (\MasterMind_Core|checkEnd|pState.S3~q\ & \MasterMind_Core|compare|err\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MasterMind_Core|checkEnd|pState.S3~q\,
	datad => \MasterMind_Core|compare|err\(2),
	combout => \MasterMind_Core|checkEnd|Selector15~0_combout\);

-- Location: LCCOMB_X81_Y25_N14
\MasterMind_Core|checkEnd|s_n[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|checkEnd|s_n\(2) = (GLOBAL(\MasterMind_Core|checkEnd|pState.S0~clkctrl_outclk\) & ((\MasterMind_Core|checkEnd|Selector15~0_combout\))) # (!GLOBAL(\MasterMind_Core|checkEnd|pState.S0~clkctrl_outclk\) & (\MasterMind_Core|checkEnd|s_n\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|checkEnd|s_n\(2),
	datac => \MasterMind_Core|checkEnd|Selector15~0_combout\,
	datad => \MasterMind_Core|checkEnd|pState.S0~clkctrl_outclk\,
	combout => \MasterMind_Core|checkEnd|s_n\(2));

-- Location: LCCOMB_X83_Y25_N18
\MasterMind_Core|checkEnd|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|checkEnd|Selector1~0_combout\ = (\MasterMind_Core|checkEnd|pState.S3~q\ & \MasterMind_Core|compare|err\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|checkEnd|pState.S3~q\,
	datad => \MasterMind_Core|compare|err\(0),
	combout => \MasterMind_Core|checkEnd|Selector1~0_combout\);

-- Location: LCCOMB_X83_Y25_N26
\MasterMind_Core|checkEnd|s_n[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|checkEnd|s_n\(0) = (GLOBAL(\MasterMind_Core|checkEnd|pState.S0~clkctrl_outclk\) & (\MasterMind_Core|checkEnd|Selector1~0_combout\)) # (!GLOBAL(\MasterMind_Core|checkEnd|pState.S0~clkctrl_outclk\) & ((\MasterMind_Core|checkEnd|s_n\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|checkEnd|Selector1~0_combout\,
	datac => \MasterMind_Core|checkEnd|s_n\(0),
	datad => \MasterMind_Core|checkEnd|pState.S0~clkctrl_outclk\,
	combout => \MasterMind_Core|checkEnd|s_n\(0));

-- Location: LCCOMB_X74_Y11_N20
\MasterMind_Core|bin7segdec3|decOut_n~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec3|decOut_n~0_combout\ = (\MasterMind_Core|checkEnd|s_n\(3) & (\MasterMind_Core|checkEnd|s_n\(0) & ((\MasterMind_Core|checkEnd|s_n\(1)) # (\MasterMind_Core|checkEnd|s_n\(2))))) # (!\MasterMind_Core|checkEnd|s_n\(3) & 
-- (!\MasterMind_Core|checkEnd|s_n\(1) & (\MasterMind_Core|checkEnd|s_n\(2) $ (\MasterMind_Core|checkEnd|s_n\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|checkEnd|s_n\(1),
	datab => \MasterMind_Core|checkEnd|s_n\(3),
	datac => \MasterMind_Core|checkEnd|s_n\(2),
	datad => \MasterMind_Core|checkEnd|s_n\(0),
	combout => \MasterMind_Core|bin7segdec3|decOut_n~0_combout\);

-- Location: LCCOMB_X74_Y11_N14
\MasterMind_Core|bin7segdec3|decOut_n~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec3|decOut_n~1_combout\ = (\MasterMind_Core|checkEnd|s_n\(1) & ((\MasterMind_Core|checkEnd|s_n\(0) & (\MasterMind_Core|checkEnd|s_n\(3))) # (!\MasterMind_Core|checkEnd|s_n\(0) & ((\MasterMind_Core|checkEnd|s_n\(2)))))) # 
-- (!\MasterMind_Core|checkEnd|s_n\(1) & (\MasterMind_Core|checkEnd|s_n\(2) & (\MasterMind_Core|checkEnd|s_n\(3) $ (\MasterMind_Core|checkEnd|s_n\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|checkEnd|s_n\(1),
	datab => \MasterMind_Core|checkEnd|s_n\(3),
	datac => \MasterMind_Core|checkEnd|s_n\(2),
	datad => \MasterMind_Core|checkEnd|s_n\(0),
	combout => \MasterMind_Core|bin7segdec3|decOut_n~1_combout\);

-- Location: LCCOMB_X74_Y11_N12
\MasterMind_Core|bin7segdec3|decOut_n~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec3|decOut_n~2_combout\ = (\MasterMind_Core|checkEnd|s_n\(3) & (\MasterMind_Core|checkEnd|s_n\(2) & ((\MasterMind_Core|checkEnd|s_n\(1)) # (!\MasterMind_Core|checkEnd|s_n\(0))))) # (!\MasterMind_Core|checkEnd|s_n\(3) & 
-- (\MasterMind_Core|checkEnd|s_n\(1) & (!\MasterMind_Core|checkEnd|s_n\(2) & !\MasterMind_Core|checkEnd|s_n\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|checkEnd|s_n\(1),
	datab => \MasterMind_Core|checkEnd|s_n\(3),
	datac => \MasterMind_Core|checkEnd|s_n\(2),
	datad => \MasterMind_Core|checkEnd|s_n\(0),
	combout => \MasterMind_Core|bin7segdec3|decOut_n~2_combout\);

-- Location: LCCOMB_X74_Y11_N6
\MasterMind_Core|bin7segdec3|decOut_n~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec3|decOut_n~3_combout\ = (\MasterMind_Core|checkEnd|s_n\(1) & ((\MasterMind_Core|checkEnd|s_n\(2) & ((\MasterMind_Core|checkEnd|s_n\(0)))) # (!\MasterMind_Core|checkEnd|s_n\(2) & (\MasterMind_Core|checkEnd|s_n\(3) & 
-- !\MasterMind_Core|checkEnd|s_n\(0))))) # (!\MasterMind_Core|checkEnd|s_n\(1) & (!\MasterMind_Core|checkEnd|s_n\(3) & (\MasterMind_Core|checkEnd|s_n\(2) $ (\MasterMind_Core|checkEnd|s_n\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|checkEnd|s_n\(1),
	datab => \MasterMind_Core|checkEnd|s_n\(3),
	datac => \MasterMind_Core|checkEnd|s_n\(2),
	datad => \MasterMind_Core|checkEnd|s_n\(0),
	combout => \MasterMind_Core|bin7segdec3|decOut_n~3_combout\);

-- Location: LCCOMB_X74_Y11_N4
\MasterMind_Core|bin7segdec3|decOut_n~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec3|decOut_n~4_combout\ = (\MasterMind_Core|checkEnd|s_n\(1) & (\MasterMind_Core|checkEnd|s_n\(0) & ((\MasterMind_Core|checkEnd|s_n\(2)) # (!\MasterMind_Core|checkEnd|s_n\(3))))) # (!\MasterMind_Core|checkEnd|s_n\(1) & 
-- ((\MasterMind_Core|checkEnd|s_n\(2) & (!\MasterMind_Core|checkEnd|s_n\(3))) # (!\MasterMind_Core|checkEnd|s_n\(2) & ((\MasterMind_Core|checkEnd|s_n\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|checkEnd|s_n\(1),
	datab => \MasterMind_Core|checkEnd|s_n\(3),
	datac => \MasterMind_Core|checkEnd|s_n\(2),
	datad => \MasterMind_Core|checkEnd|s_n\(0),
	combout => \MasterMind_Core|bin7segdec3|decOut_n~4_combout\);

-- Location: LCCOMB_X74_Y11_N2
\MasterMind_Core|bin7segdec3|decOut_n~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec3|decOut_n~5_combout\ = (\MasterMind_Core|checkEnd|s_n\(1) & ((\MasterMind_Core|checkEnd|s_n\(2) & ((\MasterMind_Core|checkEnd|s_n\(0)))) # (!\MasterMind_Core|checkEnd|s_n\(2) & (!\MasterMind_Core|checkEnd|s_n\(3))))) # 
-- (!\MasterMind_Core|checkEnd|s_n\(1) & (\MasterMind_Core|checkEnd|s_n\(0) & (\MasterMind_Core|checkEnd|s_n\(3) $ (!\MasterMind_Core|checkEnd|s_n\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|checkEnd|s_n\(1),
	datab => \MasterMind_Core|checkEnd|s_n\(3),
	datac => \MasterMind_Core|checkEnd|s_n\(2),
	datad => \MasterMind_Core|checkEnd|s_n\(0),
	combout => \MasterMind_Core|bin7segdec3|decOut_n~5_combout\);

-- Location: LCCOMB_X74_Y11_N0
\MasterMind_Core|bin7segdec3|decOut_n~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec3|decOut_n~6_combout\ = (\MasterMind_Core|checkEnd|s_n\(1) & (((!\MasterMind_Core|checkEnd|s_n\(0)) # (!\MasterMind_Core|checkEnd|s_n\(2))))) # (!\MasterMind_Core|checkEnd|s_n\(1) & ((\MasterMind_Core|checkEnd|s_n\(3) & 
-- ((\MasterMind_Core|checkEnd|s_n\(0)) # (!\MasterMind_Core|checkEnd|s_n\(2)))) # (!\MasterMind_Core|checkEnd|s_n\(3) & (\MasterMind_Core|checkEnd|s_n\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|checkEnd|s_n\(1),
	datab => \MasterMind_Core|checkEnd|s_n\(3),
	datac => \MasterMind_Core|checkEnd|s_n\(2),
	datad => \MasterMind_Core|checkEnd|s_n\(0),
	combout => \MasterMind_Core|bin7segdec3|decOut_n~6_combout\);

-- Location: FF_X84_Y19_N31
\MasterMind_Core|checkEnd|final_try1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|deb_3|s_dirty_In[5]~clkctrl_outclk\,
	asdata => \MasterMind_Core|counter99|s_count1\(3),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \MasterMind_Core|checkEnd|ALT_INV_pState.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|checkEnd|final_try1\(3));

-- Location: LCCOMB_X82_Y19_N26
\MasterMind_Core|checkEnd|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|checkEnd|Selector7~0_combout\ = (\MasterMind_Core|checkEnd|pState.S3~q\ & ((\MasterMind_Core|bin7segdec2|Equal7~0_combout\))) # (!\MasterMind_Core|checkEnd|pState.S3~q\ & (\MasterMind_Core|checkEnd|pState.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|checkEnd|pState.S3~q\,
	datac => \MasterMind_Core|checkEnd|pState.S1~q\,
	datad => \MasterMind_Core|bin7segdec2|Equal7~0_combout\,
	combout => \MasterMind_Core|checkEnd|Selector7~0_combout\);

-- Location: LCCOMB_X84_Y19_N30
\MasterMind_Core|checkEnd|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|checkEnd|Selector4~0_combout\ = (\MasterMind_Core|checkEnd|Selector7~0_combout\ & ((\MasterMind_Core|checkEnd|pState.S3~q\ & (!\MasterMind_Core|counter99|s_count1\(3))) # (!\MasterMind_Core|checkEnd|pState.S3~q\ & 
-- ((!\MasterMind_Core|checkEnd|final_try1\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|checkEnd|pState.S3~q\,
	datab => \MasterMind_Core|counter99|s_count1\(3),
	datac => \MasterMind_Core|checkEnd|final_try1\(3),
	datad => \MasterMind_Core|checkEnd|Selector7~0_combout\,
	combout => \MasterMind_Core|checkEnd|Selector4~0_combout\);

-- Location: FF_X84_Y19_N15
\MasterMind_Core|checkEnd|final_try1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|deb_3|s_dirty_In[5]~clkctrl_outclk\,
	asdata => \MasterMind_Core|counter99|s_count1\(1),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \MasterMind_Core|checkEnd|ALT_INV_pState.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|checkEnd|final_try1\(1));

-- Location: LCCOMB_X83_Y19_N16
\MasterMind_Core|checkEnd|pState.S2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|checkEnd|pState.S2~0_combout\ = (\MasterMind_Core|checkEnd|pState.S2~q\) # ((!\MasterMind_Core|bin7segdec2|Equal7~0_combout\ & (\MasterMind_Core|checkEnd|pState.S3~q\ & !\MasterMind_Core|checkEnd|compare_proc~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|bin7segdec2|Equal7~0_combout\,
	datab => \MasterMind_Core|checkEnd|pState.S3~q\,
	datac => \MasterMind_Core|checkEnd|pState.S2~q\,
	datad => \MasterMind_Core|checkEnd|compare_proc~0_combout\,
	combout => \MasterMind_Core|checkEnd|pState.S2~0_combout\);

-- Location: FF_X83_Y19_N17
\MasterMind_Core|checkEnd|pState.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|deb_3|s_dirty_In\(5),
	d => \MasterMind_Core|checkEnd|pState.S2~0_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|checkEnd|pState.S2~q\);

-- Location: LCCOMB_X84_Y19_N14
\MasterMind_Core|checkEnd|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|checkEnd|Selector6~0_combout\ = (!\MasterMind_Core|checkEnd|pState.S3~q\ & ((\MasterMind_Core|checkEnd|pState.S1~q\ & (\MasterMind_Core|checkEnd|final_try1\(1))) # (!\MasterMind_Core|checkEnd|pState.S1~q\ & 
-- ((!\MasterMind_Core|checkEnd|pState.S2~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|checkEnd|pState.S1~q\,
	datab => \MasterMind_Core|checkEnd|pState.S3~q\,
	datac => \MasterMind_Core|checkEnd|final_try1\(1),
	datad => \MasterMind_Core|checkEnd|pState.S2~q\,
	combout => \MasterMind_Core|checkEnd|Selector6~0_combout\);

-- Location: LCCOMB_X81_Y19_N30
\MasterMind_Core|checkEnd|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|checkEnd|Selector6~1_combout\ = (\MasterMind_Core|checkEnd|Selector6~0_combout\) # ((\MasterMind_Core|checkEnd|pState.S3~q\ & ((\MasterMind_Core|counter99|s_count1\(1)) # (!\MasterMind_Core|bin7segdec2|Equal7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|checkEnd|pState.S3~q\,
	datab => \MasterMind_Core|counter99|s_count1\(1),
	datac => \MasterMind_Core|checkEnd|Selector6~0_combout\,
	datad => \MasterMind_Core|bin7segdec2|Equal7~0_combout\,
	combout => \MasterMind_Core|checkEnd|Selector6~1_combout\);

-- Location: FF_X84_Y19_N23
\MasterMind_Core|checkEnd|final_try1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|deb_3|s_dirty_In[5]~clkctrl_outclk\,
	asdata => \MasterMind_Core|counter99|s_count1\(2),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \MasterMind_Core|checkEnd|ALT_INV_pState.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|checkEnd|final_try1\(2));

-- Location: LCCOMB_X84_Y19_N22
\MasterMind_Core|checkEnd|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|checkEnd|Selector5~0_combout\ = (!\MasterMind_Core|checkEnd|pState.S3~q\ & ((\MasterMind_Core|checkEnd|pState.S1~q\ & (\MasterMind_Core|checkEnd|final_try1\(2))) # (!\MasterMind_Core|checkEnd|pState.S1~q\ & 
-- ((!\MasterMind_Core|checkEnd|pState.S2~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|checkEnd|pState.S1~q\,
	datab => \MasterMind_Core|checkEnd|pState.S3~q\,
	datac => \MasterMind_Core|checkEnd|final_try1\(2),
	datad => \MasterMind_Core|checkEnd|pState.S2~q\,
	combout => \MasterMind_Core|checkEnd|Selector5~0_combout\);

-- Location: LCCOMB_X81_Y19_N12
\MasterMind_Core|checkEnd|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|checkEnd|Selector5~1_combout\ = (\MasterMind_Core|checkEnd|Selector5~0_combout\) # ((\MasterMind_Core|checkEnd|pState.S3~q\ & ((\MasterMind_Core|counter99|s_count1\(2)) # (!\MasterMind_Core|bin7segdec2|Equal7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|checkEnd|pState.S3~q\,
	datab => \MasterMind_Core|counter99|s_count1\(2),
	datac => \MasterMind_Core|checkEnd|Selector5~0_combout\,
	datad => \MasterMind_Core|bin7segdec2|Equal7~0_combout\,
	combout => \MasterMind_Core|checkEnd|Selector5~1_combout\);

-- Location: FF_X84_Y19_N9
\MasterMind_Core|checkEnd|final_try1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|deb_3|s_dirty_In[5]~clkctrl_outclk\,
	asdata => \MasterMind_Core|counter99|s_count1\(0),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \MasterMind_Core|checkEnd|ALT_INV_pState.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|checkEnd|final_try1\(0));

-- Location: LCCOMB_X84_Y19_N4
\MasterMind_Core|bin7segdec1|decOut_n~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec1|decOut_n~0_combout\ = (\MasterMind_Core|checkEnd|Selector7~0_combout\ & ((\MasterMind_Core|checkEnd|pState.S3~q\ & ((!\MasterMind_Core|counter99|s_count1\(0)))) # (!\MasterMind_Core|checkEnd|pState.S3~q\ & 
-- (!\MasterMind_Core|checkEnd|final_try1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|checkEnd|final_try1\(0),
	datab => \MasterMind_Core|counter99|s_count1\(0),
	datac => \MasterMind_Core|checkEnd|pState.S3~q\,
	datad => \MasterMind_Core|checkEnd|Selector7~0_combout\,
	combout => \MasterMind_Core|bin7segdec1|decOut_n~0_combout\);

-- Location: LCCOMB_X82_Y18_N16
\MasterMind_Core|bin7segdec1|decOut_n~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec1|decOut_n~1_combout\ = (\MasterMind_Core|checkEnd|Selector4~0_combout\ & (!\MasterMind_Core|checkEnd|Selector6~1_combout\ & (\MasterMind_Core|checkEnd|Selector5~1_combout\ $ 
-- (!\MasterMind_Core|bin7segdec1|decOut_n~0_combout\)))) # (!\MasterMind_Core|checkEnd|Selector4~0_combout\ & (!\MasterMind_Core|bin7segdec1|decOut_n~0_combout\ & ((\MasterMind_Core|checkEnd|Selector6~1_combout\) # 
-- (\MasterMind_Core|checkEnd|Selector5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|checkEnd|Selector4~0_combout\,
	datab => \MasterMind_Core|checkEnd|Selector6~1_combout\,
	datac => \MasterMind_Core|checkEnd|Selector5~1_combout\,
	datad => \MasterMind_Core|bin7segdec1|decOut_n~0_combout\,
	combout => \MasterMind_Core|bin7segdec1|decOut_n~1_combout\);

-- Location: LCCOMB_X84_Y19_N10
\MasterMind_Core|bin7segdec1|decOut_n~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec1|decOut_n~2_combout\ = (\MasterMind_Core|counter99|s_count1\(0) & \MasterMind_Core|counter99|s_count1\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MasterMind_Core|counter99|s_count1\(0),
	datad => \MasterMind_Core|counter99|s_count1\(3),
	combout => \MasterMind_Core|bin7segdec1|decOut_n~2_combout\);

-- Location: LCCOMB_X84_Y19_N8
\MasterMind_Core|bin7segdec1|decOut_n~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec1|decOut_n~3_combout\ = (\MasterMind_Core|checkEnd|pState.S3~q\ & (((\MasterMind_Core|bin7segdec1|decOut_n~2_combout\)))) # (!\MasterMind_Core|checkEnd|pState.S3~q\ & (\MasterMind_Core|checkEnd|final_try1\(3) & 
-- (\MasterMind_Core|checkEnd|final_try1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|checkEnd|final_try1\(3),
	datab => \MasterMind_Core|checkEnd|pState.S3~q\,
	datac => \MasterMind_Core|checkEnd|final_try1\(0),
	datad => \MasterMind_Core|bin7segdec1|decOut_n~2_combout\,
	combout => \MasterMind_Core|bin7segdec1|decOut_n~3_combout\);

-- Location: LCCOMB_X82_Y18_N18
\MasterMind_Core|bin7segdec1|decOut_n~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec1|decOut_n~4_combout\ = (\MasterMind_Core|checkEnd|Selector6~1_combout\ & ((\MasterMind_Core|checkEnd|Selector5~1_combout\) # ((\MasterMind_Core|bin7segdec1|decOut_n~3_combout\) # 
-- (!\MasterMind_Core|checkEnd|Selector7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|checkEnd|Selector5~1_combout\,
	datab => \MasterMind_Core|checkEnd|Selector6~1_combout\,
	datac => \MasterMind_Core|checkEnd|Selector7~0_combout\,
	datad => \MasterMind_Core|bin7segdec1|decOut_n~3_combout\,
	combout => \MasterMind_Core|bin7segdec1|decOut_n~4_combout\);

-- Location: LCCOMB_X82_Y18_N24
\MasterMind_Core|bin7segdec1|decOut_n~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec1|decOut_n~5_combout\ = (\MasterMind_Core|checkEnd|Selector4~0_combout\ & (\MasterMind_Core|bin7segdec1|decOut_n~4_combout\ $ (((\MasterMind_Core|checkEnd|Selector5~1_combout\ & 
-- !\MasterMind_Core|bin7segdec1|decOut_n~0_combout\))))) # (!\MasterMind_Core|checkEnd|Selector4~0_combout\ & ((\MasterMind_Core|bin7segdec1|decOut_n~4_combout\) # ((\MasterMind_Core|checkEnd|Selector5~1_combout\ & 
-- \MasterMind_Core|bin7segdec1|decOut_n~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|checkEnd|Selector4~0_combout\,
	datab => \MasterMind_Core|bin7segdec1|decOut_n~4_combout\,
	datac => \MasterMind_Core|checkEnd|Selector5~1_combout\,
	datad => \MasterMind_Core|bin7segdec1|decOut_n~0_combout\,
	combout => \MasterMind_Core|bin7segdec1|decOut_n~5_combout\);

-- Location: LCCOMB_X82_Y18_N22
\MasterMind_Core|bin7segdec1|decOut_n~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec1|decOut_n~6_combout\ = (\MasterMind_Core|checkEnd|Selector4~0_combout\ & (\MasterMind_Core|checkEnd|Selector6~1_combout\ & (!\MasterMind_Core|checkEnd|Selector5~1_combout\ & \MasterMind_Core|bin7segdec1|decOut_n~0_combout\))) # 
-- (!\MasterMind_Core|checkEnd|Selector4~0_combout\ & (\MasterMind_Core|checkEnd|Selector5~1_combout\ & ((\MasterMind_Core|checkEnd|Selector6~1_combout\) # (\MasterMind_Core|bin7segdec1|decOut_n~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|checkEnd|Selector4~0_combout\,
	datab => \MasterMind_Core|checkEnd|Selector6~1_combout\,
	datac => \MasterMind_Core|checkEnd|Selector5~1_combout\,
	datad => \MasterMind_Core|bin7segdec1|decOut_n~0_combout\,
	combout => \MasterMind_Core|bin7segdec1|decOut_n~6_combout\);

-- Location: LCCOMB_X81_Y19_N28
\MasterMind_Core|bin7segdec1|decOut_n~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec1|decOut_n~7_combout\ = (\MasterMind_Core|checkEnd|Selector6~1_combout\ & ((\MasterMind_Core|checkEnd|Selector5~1_combout\ & ((!\MasterMind_Core|bin7segdec1|decOut_n~0_combout\))) # 
-- (!\MasterMind_Core|checkEnd|Selector5~1_combout\ & (!\MasterMind_Core|checkEnd|Selector4~0_combout\ & \MasterMind_Core|bin7segdec1|decOut_n~0_combout\)))) # (!\MasterMind_Core|checkEnd|Selector6~1_combout\ & (\MasterMind_Core|checkEnd|Selector4~0_combout\ 
-- & (\MasterMind_Core|checkEnd|Selector5~1_combout\ $ (!\MasterMind_Core|bin7segdec1|decOut_n~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|checkEnd|Selector5~1_combout\,
	datab => \MasterMind_Core|checkEnd|Selector6~1_combout\,
	datac => \MasterMind_Core|checkEnd|Selector4~0_combout\,
	datad => \MasterMind_Core|bin7segdec1|decOut_n~0_combout\,
	combout => \MasterMind_Core|bin7segdec1|decOut_n~7_combout\);

-- Location: LCCOMB_X81_Y19_N6
\MasterMind_Core|bin7segdec1|decOut_n~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec1|decOut_n~8_combout\ = (\MasterMind_Core|checkEnd|Selector5~1_combout\ & ((\MasterMind_Core|checkEnd|Selector6~1_combout\ & ((!\MasterMind_Core|bin7segdec1|decOut_n~0_combout\))) # 
-- (!\MasterMind_Core|checkEnd|Selector6~1_combout\ & (\MasterMind_Core|checkEnd|Selector4~0_combout\)))) # (!\MasterMind_Core|checkEnd|Selector5~1_combout\ & (!\MasterMind_Core|bin7segdec1|decOut_n~0_combout\ & 
-- ((\MasterMind_Core|checkEnd|Selector4~0_combout\) # (!\MasterMind_Core|checkEnd|Selector6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|checkEnd|Selector5~1_combout\,
	datab => \MasterMind_Core|checkEnd|Selector6~1_combout\,
	datac => \MasterMind_Core|checkEnd|Selector4~0_combout\,
	datad => \MasterMind_Core|bin7segdec1|decOut_n~0_combout\,
	combout => \MasterMind_Core|bin7segdec1|decOut_n~8_combout\);

-- Location: LCCOMB_X82_Y18_N12
\MasterMind_Core|bin7segdec1|decOut_n~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec1|decOut_n~9_combout\ = (\MasterMind_Core|checkEnd|Selector6~1_combout\ & ((\MasterMind_Core|checkEnd|Selector5~1_combout\ & ((!\MasterMind_Core|bin7segdec1|decOut_n~0_combout\))) # 
-- (!\MasterMind_Core|checkEnd|Selector5~1_combout\ & (\MasterMind_Core|checkEnd|Selector4~0_combout\)))) # (!\MasterMind_Core|checkEnd|Selector6~1_combout\ & (!\MasterMind_Core|bin7segdec1|decOut_n~0_combout\ & 
-- (\MasterMind_Core|checkEnd|Selector4~0_combout\ $ (\MasterMind_Core|checkEnd|Selector5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|checkEnd|Selector4~0_combout\,
	datab => \MasterMind_Core|checkEnd|Selector6~1_combout\,
	datac => \MasterMind_Core|checkEnd|Selector5~1_combout\,
	datad => \MasterMind_Core|bin7segdec1|decOut_n~0_combout\,
	combout => \MasterMind_Core|bin7segdec1|decOut_n~9_combout\);

-- Location: LCCOMB_X82_Y18_N6
\MasterMind_Core|bin7segdec1|decOut_n~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec1|decOut_n~10_combout\ = (\MasterMind_Core|checkEnd|Selector6~1_combout\ & (((\MasterMind_Core|bin7segdec1|decOut_n~0_combout\) # (!\MasterMind_Core|checkEnd|Selector5~1_combout\)))) # 
-- (!\MasterMind_Core|checkEnd|Selector6~1_combout\ & ((\MasterMind_Core|checkEnd|Selector4~0_combout\ & (\MasterMind_Core|checkEnd|Selector5~1_combout\)) # (!\MasterMind_Core|checkEnd|Selector4~0_combout\ & 
-- ((!\MasterMind_Core|bin7segdec1|decOut_n~0_combout\) # (!\MasterMind_Core|checkEnd|Selector5~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110100111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|checkEnd|Selector4~0_combout\,
	datab => \MasterMind_Core|checkEnd|Selector6~1_combout\,
	datac => \MasterMind_Core|checkEnd|Selector5~1_combout\,
	datad => \MasterMind_Core|bin7segdec1|decOut_n~0_combout\,
	combout => \MasterMind_Core|bin7segdec1|decOut_n~10_combout\);

-- Location: FF_X83_Y18_N31
\MasterMind_Core|checkEnd|final_try0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|deb_3|s_dirty_In[5]~clkctrl_outclk\,
	asdata => \MasterMind_Core|counter99|s_count0\(0),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \MasterMind_Core|checkEnd|ALT_INV_pState.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|checkEnd|final_try0\(0));

-- Location: LCCOMB_X83_Y18_N12
\MasterMind_Core|bin7segdec0|decOut_n~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec0|decOut_n~0_combout\ = (\MasterMind_Core|checkEnd|Selector7~0_combout\ & ((\MasterMind_Core|checkEnd|pState.S3~q\ & ((!\MasterMind_Core|counter99|s_count0\(0)))) # (!\MasterMind_Core|checkEnd|pState.S3~q\ & 
-- (!\MasterMind_Core|checkEnd|final_try0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|checkEnd|final_try0\(0),
	datab => \MasterMind_Core|checkEnd|Selector7~0_combout\,
	datac => \MasterMind_Core|counter99|s_count0\(0),
	datad => \MasterMind_Core|checkEnd|pState.S3~q\,
	combout => \MasterMind_Core|bin7segdec0|decOut_n~0_combout\);

-- Location: FF_X83_Y18_N21
\MasterMind_Core|checkEnd|final_try0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|deb_3|s_dirty_In[5]~clkctrl_outclk\,
	asdata => \MasterMind_Core|counter99|s_count0\(3),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \MasterMind_Core|checkEnd|ALT_INV_pState.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|checkEnd|final_try0\(3));

-- Location: LCCOMB_X83_Y18_N20
\MasterMind_Core|checkEnd|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|checkEnd|Selector8~0_combout\ = (\MasterMind_Core|checkEnd|Selector7~0_combout\ & ((\MasterMind_Core|checkEnd|pState.S3~q\ & (!\MasterMind_Core|counter99|s_count0\(3))) # (!\MasterMind_Core|checkEnd|pState.S3~q\ & 
-- ((!\MasterMind_Core|checkEnd|final_try0\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|counter99|s_count0\(3),
	datab => \MasterMind_Core|checkEnd|Selector7~0_combout\,
	datac => \MasterMind_Core|checkEnd|final_try0\(3),
	datad => \MasterMind_Core|checkEnd|pState.S3~q\,
	combout => \MasterMind_Core|checkEnd|Selector8~0_combout\);

-- Location: FF_X84_Y19_N19
\MasterMind_Core|checkEnd|final_try0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|deb_3|s_dirty_In[5]~clkctrl_outclk\,
	asdata => \MasterMind_Core|counter99|s_count0\(1),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \MasterMind_Core|checkEnd|ALT_INV_pState.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|checkEnd|final_try0\(1));

-- Location: LCCOMB_X84_Y19_N18
\MasterMind_Core|checkEnd|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|checkEnd|Selector10~0_combout\ = (!\MasterMind_Core|checkEnd|pState.S3~q\ & ((\MasterMind_Core|checkEnd|pState.S1~q\ & (\MasterMind_Core|checkEnd|final_try0\(1))) # (!\MasterMind_Core|checkEnd|pState.S1~q\ & 
-- ((!\MasterMind_Core|checkEnd|pState.S2~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|checkEnd|pState.S1~q\,
	datab => \MasterMind_Core|checkEnd|pState.S3~q\,
	datac => \MasterMind_Core|checkEnd|final_try0\(1),
	datad => \MasterMind_Core|checkEnd|pState.S2~q\,
	combout => \MasterMind_Core|checkEnd|Selector10~0_combout\);

-- Location: LCCOMB_X84_Y19_N28
\MasterMind_Core|checkEnd|Selector10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|checkEnd|Selector10~1_combout\ = (\MasterMind_Core|checkEnd|Selector10~0_combout\) # ((\MasterMind_Core|checkEnd|pState.S3~q\ & ((\MasterMind_Core|counter99|s_count0\(1)) # (!\MasterMind_Core|bin7segdec2|Equal7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|counter99|s_count0\(1),
	datab => \MasterMind_Core|bin7segdec2|Equal7~0_combout\,
	datac => \MasterMind_Core|checkEnd|pState.S3~q\,
	datad => \MasterMind_Core|checkEnd|Selector10~0_combout\,
	combout => \MasterMind_Core|checkEnd|Selector10~1_combout\);

-- Location: FF_X84_Y19_N13
\MasterMind_Core|checkEnd|final_try0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|deb_3|s_dirty_In[5]~clkctrl_outclk\,
	asdata => \MasterMind_Core|counter99|s_count0\(2),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \MasterMind_Core|checkEnd|ALT_INV_pState.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|checkEnd|final_try0\(2));

-- Location: LCCOMB_X84_Y19_N12
\MasterMind_Core|checkEnd|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|checkEnd|Selector9~0_combout\ = (!\MasterMind_Core|checkEnd|pState.S3~q\ & ((\MasterMind_Core|checkEnd|pState.S1~q\ & (\MasterMind_Core|checkEnd|final_try0\(2))) # (!\MasterMind_Core|checkEnd|pState.S1~q\ & 
-- ((!\MasterMind_Core|checkEnd|pState.S2~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|checkEnd|pState.S1~q\,
	datab => \MasterMind_Core|checkEnd|pState.S3~q\,
	datac => \MasterMind_Core|checkEnd|final_try0\(2),
	datad => \MasterMind_Core|checkEnd|pState.S2~q\,
	combout => \MasterMind_Core|checkEnd|Selector9~0_combout\);

-- Location: LCCOMB_X84_Y19_N24
\MasterMind_Core|checkEnd|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|checkEnd|Selector9~1_combout\ = (\MasterMind_Core|checkEnd|Selector9~0_combout\) # ((\MasterMind_Core|checkEnd|pState.S3~q\ & ((\MasterMind_Core|counter99|s_count0\(2)) # (!\MasterMind_Core|bin7segdec2|Equal7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|counter99|s_count0\(2),
	datab => \MasterMind_Core|bin7segdec2|Equal7~0_combout\,
	datac => \MasterMind_Core|checkEnd|pState.S3~q\,
	datad => \MasterMind_Core|checkEnd|Selector9~0_combout\,
	combout => \MasterMind_Core|checkEnd|Selector9~1_combout\);

-- Location: LCCOMB_X83_Y18_N18
\MasterMind_Core|bin7segdec0|decOut_n~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec0|decOut_n~1_combout\ = (\MasterMind_Core|bin7segdec0|decOut_n~0_combout\ & (\MasterMind_Core|checkEnd|Selector8~0_combout\ & (!\MasterMind_Core|checkEnd|Selector10~1_combout\ & \MasterMind_Core|checkEnd|Selector9~1_combout\))) 
-- # (!\MasterMind_Core|bin7segdec0|decOut_n~0_combout\ & (\MasterMind_Core|checkEnd|Selector8~0_combout\ $ (((\MasterMind_Core|checkEnd|Selector10~1_combout\) # (\MasterMind_Core|checkEnd|Selector9~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|bin7segdec0|decOut_n~0_combout\,
	datab => \MasterMind_Core|checkEnd|Selector8~0_combout\,
	datac => \MasterMind_Core|checkEnd|Selector10~1_combout\,
	datad => \MasterMind_Core|checkEnd|Selector9~1_combout\,
	combout => \MasterMind_Core|bin7segdec0|decOut_n~1_combout\);

-- Location: LCCOMB_X83_Y18_N16
\MasterMind_Core|bin7segdec0|decOut_n~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec0|decOut_n~2_combout\ = (\MasterMind_Core|counter99|s_count0\(0) & \MasterMind_Core|counter99|s_count0\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|counter99|s_count0\(0),
	datac => \MasterMind_Core|counter99|s_count0\(3),
	combout => \MasterMind_Core|bin7segdec0|decOut_n~2_combout\);

-- Location: LCCOMB_X83_Y18_N30
\MasterMind_Core|bin7segdec0|decOut_n~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec0|decOut_n~3_combout\ = (\MasterMind_Core|checkEnd|pState.S3~q\ & (((\MasterMind_Core|bin7segdec0|decOut_n~2_combout\)))) # (!\MasterMind_Core|checkEnd|pState.S3~q\ & (\MasterMind_Core|checkEnd|final_try0\(3) & 
-- ((\MasterMind_Core|checkEnd|final_try0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|checkEnd|final_try0\(3),
	datab => \MasterMind_Core|bin7segdec0|decOut_n~2_combout\,
	datac => \MasterMind_Core|checkEnd|final_try0\(0),
	datad => \MasterMind_Core|checkEnd|pState.S3~q\,
	combout => \MasterMind_Core|bin7segdec0|decOut_n~3_combout\);

-- Location: LCCOMB_X83_Y18_N22
\MasterMind_Core|bin7segdec0|decOut_n~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec0|decOut_n~4_combout\ = (\MasterMind_Core|checkEnd|Selector10~1_combout\ & (((\MasterMind_Core|bin7segdec0|decOut_n~3_combout\) # (\MasterMind_Core|checkEnd|Selector9~1_combout\)) # 
-- (!\MasterMind_Core|checkEnd|Selector7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|checkEnd|Selector7~0_combout\,
	datab => \MasterMind_Core|bin7segdec0|decOut_n~3_combout\,
	datac => \MasterMind_Core|checkEnd|Selector10~1_combout\,
	datad => \MasterMind_Core|checkEnd|Selector9~1_combout\,
	combout => \MasterMind_Core|bin7segdec0|decOut_n~4_combout\);

-- Location: LCCOMB_X83_Y18_N24
\MasterMind_Core|bin7segdec0|decOut_n~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec0|decOut_n~5_combout\ = (\MasterMind_Core|bin7segdec0|decOut_n~0_combout\ & ((\MasterMind_Core|bin7segdec0|decOut_n~4_combout\) # ((!\MasterMind_Core|checkEnd|Selector8~0_combout\ & 
-- \MasterMind_Core|checkEnd|Selector9~1_combout\)))) # (!\MasterMind_Core|bin7segdec0|decOut_n~0_combout\ & (\MasterMind_Core|bin7segdec0|decOut_n~4_combout\ $ (((\MasterMind_Core|checkEnd|Selector8~0_combout\ & 
-- \MasterMind_Core|checkEnd|Selector9~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|bin7segdec0|decOut_n~0_combout\,
	datab => \MasterMind_Core|checkEnd|Selector8~0_combout\,
	datac => \MasterMind_Core|bin7segdec0|decOut_n~4_combout\,
	datad => \MasterMind_Core|checkEnd|Selector9~1_combout\,
	combout => \MasterMind_Core|bin7segdec0|decOut_n~5_combout\);

-- Location: LCCOMB_X83_Y18_N14
\MasterMind_Core|bin7segdec0|decOut_n~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec0|decOut_n~6_combout\ = (\MasterMind_Core|checkEnd|Selector8~0_combout\ & (\MasterMind_Core|bin7segdec0|decOut_n~0_combout\ & (\MasterMind_Core|checkEnd|Selector10~1_combout\ & !\MasterMind_Core|checkEnd|Selector9~1_combout\))) 
-- # (!\MasterMind_Core|checkEnd|Selector8~0_combout\ & (\MasterMind_Core|checkEnd|Selector9~1_combout\ & ((\MasterMind_Core|bin7segdec0|decOut_n~0_combout\) # (\MasterMind_Core|checkEnd|Selector10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|bin7segdec0|decOut_n~0_combout\,
	datab => \MasterMind_Core|checkEnd|Selector8~0_combout\,
	datac => \MasterMind_Core|checkEnd|Selector10~1_combout\,
	datad => \MasterMind_Core|checkEnd|Selector9~1_combout\,
	combout => \MasterMind_Core|bin7segdec0|decOut_n~6_combout\);

-- Location: LCCOMB_X83_Y18_N4
\MasterMind_Core|bin7segdec0|decOut_n~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec0|decOut_n~7_combout\ = (\MasterMind_Core|checkEnd|Selector10~1_combout\ & ((\MasterMind_Core|bin7segdec0|decOut_n~0_combout\ & (!\MasterMind_Core|checkEnd|Selector8~0_combout\ & !\MasterMind_Core|checkEnd|Selector9~1_combout\)) 
-- # (!\MasterMind_Core|bin7segdec0|decOut_n~0_combout\ & ((\MasterMind_Core|checkEnd|Selector9~1_combout\))))) # (!\MasterMind_Core|checkEnd|Selector10~1_combout\ & (\MasterMind_Core|checkEnd|Selector8~0_combout\ & 
-- (\MasterMind_Core|bin7segdec0|decOut_n~0_combout\ $ (!\MasterMind_Core|checkEnd|Selector9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|bin7segdec0|decOut_n~0_combout\,
	datab => \MasterMind_Core|checkEnd|Selector8~0_combout\,
	datac => \MasterMind_Core|checkEnd|Selector10~1_combout\,
	datad => \MasterMind_Core|checkEnd|Selector9~1_combout\,
	combout => \MasterMind_Core|bin7segdec0|decOut_n~7_combout\);

-- Location: LCCOMB_X83_Y18_N10
\MasterMind_Core|bin7segdec0|decOut_n~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec0|decOut_n~8_combout\ = (\MasterMind_Core|bin7segdec0|decOut_n~0_combout\ & (\MasterMind_Core|checkEnd|Selector8~0_combout\ & (!\MasterMind_Core|checkEnd|Selector10~1_combout\ & \MasterMind_Core|checkEnd|Selector9~1_combout\))) 
-- # (!\MasterMind_Core|bin7segdec0|decOut_n~0_combout\ & ((\MasterMind_Core|checkEnd|Selector8~0_combout\) # (\MasterMind_Core|checkEnd|Selector10~1_combout\ $ (!\MasterMind_Core|checkEnd|Selector9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|bin7segdec0|decOut_n~0_combout\,
	datab => \MasterMind_Core|checkEnd|Selector8~0_combout\,
	datac => \MasterMind_Core|checkEnd|Selector10~1_combout\,
	datad => \MasterMind_Core|checkEnd|Selector9~1_combout\,
	combout => \MasterMind_Core|bin7segdec0|decOut_n~8_combout\);

-- Location: LCCOMB_X83_Y18_N0
\MasterMind_Core|bin7segdec0|decOut_n~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec0|decOut_n~9_combout\ = (\MasterMind_Core|checkEnd|Selector10~1_combout\ & ((\MasterMind_Core|checkEnd|Selector9~1_combout\ & (!\MasterMind_Core|bin7segdec0|decOut_n~0_combout\)) # 
-- (!\MasterMind_Core|checkEnd|Selector9~1_combout\ & ((\MasterMind_Core|checkEnd|Selector8~0_combout\))))) # (!\MasterMind_Core|checkEnd|Selector10~1_combout\ & (!\MasterMind_Core|bin7segdec0|decOut_n~0_combout\ & 
-- (\MasterMind_Core|checkEnd|Selector8~0_combout\ $ (\MasterMind_Core|checkEnd|Selector9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|bin7segdec0|decOut_n~0_combout\,
	datab => \MasterMind_Core|checkEnd|Selector8~0_combout\,
	datac => \MasterMind_Core|checkEnd|Selector10~1_combout\,
	datad => \MasterMind_Core|checkEnd|Selector9~1_combout\,
	combout => \MasterMind_Core|bin7segdec0|decOut_n~9_combout\);

-- Location: LCCOMB_X83_Y18_N26
\MasterMind_Core|bin7segdec0|decOut_n~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec0|decOut_n~10_combout\ = (\MasterMind_Core|checkEnd|Selector10~1_combout\ & ((\MasterMind_Core|bin7segdec0|decOut_n~0_combout\) # ((!\MasterMind_Core|checkEnd|Selector9~1_combout\)))) # 
-- (!\MasterMind_Core|checkEnd|Selector10~1_combout\ & ((\MasterMind_Core|checkEnd|Selector8~0_combout\ & ((\MasterMind_Core|checkEnd|Selector9~1_combout\))) # (!\MasterMind_Core|checkEnd|Selector8~0_combout\ & 
-- ((!\MasterMind_Core|checkEnd|Selector9~1_combout\) # (!\MasterMind_Core|bin7segdec0|decOut_n~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|bin7segdec0|decOut_n~0_combout\,
	datab => \MasterMind_Core|checkEnd|Selector8~0_combout\,
	datac => \MasterMind_Core|checkEnd|Selector10~1_combout\,
	datad => \MasterMind_Core|checkEnd|Selector9~1_combout\,
	combout => \MasterMind_Core|bin7segdec0|decOut_n~10_combout\);

-- Location: LCCOMB_X68_Y56_N2
\MasterMind_Core|freq_div1|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div1|Add0~1_cout\ = CARRY((\MasterMind_Core|freq_div2|s_counter\(0) & \MasterMind_Core|freq_div2|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|freq_div2|s_counter\(0),
	datab => \MasterMind_Core|freq_div2|s_counter\(1),
	datad => VCC,
	cout => \MasterMind_Core|freq_div1|Add0~1_cout\);

-- Location: LCCOMB_X68_Y56_N4
\MasterMind_Core|freq_div1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div1|Add0~2_combout\ = (\MasterMind_Core|freq_div1|s_counter\(2) & (!\MasterMind_Core|freq_div1|Add0~1_cout\)) # (!\MasterMind_Core|freq_div1|s_counter\(2) & ((\MasterMind_Core|freq_div1|Add0~1_cout\) # (GND)))
-- \MasterMind_Core|freq_div1|Add0~3\ = CARRY((!\MasterMind_Core|freq_div1|Add0~1_cout\) # (!\MasterMind_Core|freq_div1|s_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|freq_div1|s_counter\(2),
	datad => VCC,
	cin => \MasterMind_Core|freq_div1|Add0~1_cout\,
	combout => \MasterMind_Core|freq_div1|Add0~2_combout\,
	cout => \MasterMind_Core|freq_div1|Add0~3\);

-- Location: FF_X68_Y56_N5
\MasterMind_Core|freq_div1|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|freq_div1|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|freq_div1|s_counter\(2));

-- Location: LCCOMB_X68_Y56_N6
\MasterMind_Core|freq_div1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div1|Add0~4_combout\ = (\MasterMind_Core|freq_div1|s_counter\(3) & (\MasterMind_Core|freq_div1|Add0~3\ $ (GND))) # (!\MasterMind_Core|freq_div1|s_counter\(3) & (!\MasterMind_Core|freq_div1|Add0~3\ & VCC))
-- \MasterMind_Core|freq_div1|Add0~5\ = CARRY((\MasterMind_Core|freq_div1|s_counter\(3) & !\MasterMind_Core|freq_div1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|freq_div1|s_counter\(3),
	datad => VCC,
	cin => \MasterMind_Core|freq_div1|Add0~3\,
	combout => \MasterMind_Core|freq_div1|Add0~4_combout\,
	cout => \MasterMind_Core|freq_div1|Add0~5\);

-- Location: FF_X68_Y56_N7
\MasterMind_Core|freq_div1|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|freq_div1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|freq_div1|s_counter\(3));

-- Location: LCCOMB_X68_Y56_N8
\MasterMind_Core|freq_div1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div1|Add0~6_combout\ = (\MasterMind_Core|freq_div1|s_counter\(4) & (!\MasterMind_Core|freq_div1|Add0~5\)) # (!\MasterMind_Core|freq_div1|s_counter\(4) & ((\MasterMind_Core|freq_div1|Add0~5\) # (GND)))
-- \MasterMind_Core|freq_div1|Add0~7\ = CARRY((!\MasterMind_Core|freq_div1|Add0~5\) # (!\MasterMind_Core|freq_div1|s_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|freq_div1|s_counter\(4),
	datad => VCC,
	cin => \MasterMind_Core|freq_div1|Add0~5\,
	combout => \MasterMind_Core|freq_div1|Add0~6_combout\,
	cout => \MasterMind_Core|freq_div1|Add0~7\);

-- Location: FF_X68_Y56_N9
\MasterMind_Core|freq_div1|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|freq_div1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|freq_div1|s_counter\(4));

-- Location: LCCOMB_X68_Y56_N10
\MasterMind_Core|freq_div1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div1|Add0~8_combout\ = (\MasterMind_Core|freq_div1|s_counter\(5) & (\MasterMind_Core|freq_div1|Add0~7\ $ (GND))) # (!\MasterMind_Core|freq_div1|s_counter\(5) & (!\MasterMind_Core|freq_div1|Add0~7\ & VCC))
-- \MasterMind_Core|freq_div1|Add0~9\ = CARRY((\MasterMind_Core|freq_div1|s_counter\(5) & !\MasterMind_Core|freq_div1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|freq_div1|s_counter\(5),
	datad => VCC,
	cin => \MasterMind_Core|freq_div1|Add0~7\,
	combout => \MasterMind_Core|freq_div1|Add0~8_combout\,
	cout => \MasterMind_Core|freq_div1|Add0~9\);

-- Location: FF_X68_Y56_N11
\MasterMind_Core|freq_div1|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|freq_div1|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|freq_div1|s_counter\(5));

-- Location: LCCOMB_X68_Y56_N12
\MasterMind_Core|freq_div1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div1|Add0~10_combout\ = (\MasterMind_Core|freq_div1|s_counter\(6) & (!\MasterMind_Core|freq_div1|Add0~9\)) # (!\MasterMind_Core|freq_div1|s_counter\(6) & ((\MasterMind_Core|freq_div1|Add0~9\) # (GND)))
-- \MasterMind_Core|freq_div1|Add0~11\ = CARRY((!\MasterMind_Core|freq_div1|Add0~9\) # (!\MasterMind_Core|freq_div1|s_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|freq_div1|s_counter\(6),
	datad => VCC,
	cin => \MasterMind_Core|freq_div1|Add0~9\,
	combout => \MasterMind_Core|freq_div1|Add0~10_combout\,
	cout => \MasterMind_Core|freq_div1|Add0~11\);

-- Location: LCCOMB_X68_Y56_N0
\MasterMind_Core|freq_div1|s_counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div1|s_counter~7_combout\ = (\MasterMind_Core|freq_div1|Add0~10_combout\ & !\MasterMind_Core|freq_div1|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|freq_div1|Add0~10_combout\,
	datad => \MasterMind_Core|freq_div1|Equal1~2_combout\,
	combout => \MasterMind_Core|freq_div1|s_counter~7_combout\);

-- Location: FF_X68_Y56_N1
\MasterMind_Core|freq_div1|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|freq_div1|s_counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|freq_div1|s_counter\(6));

-- Location: LCCOMB_X68_Y56_N14
\MasterMind_Core|freq_div1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div1|Add0~12_combout\ = (\MasterMind_Core|freq_div1|s_counter\(7) & (\MasterMind_Core|freq_div1|Add0~11\ $ (GND))) # (!\MasterMind_Core|freq_div1|s_counter\(7) & (!\MasterMind_Core|freq_div1|Add0~11\ & VCC))
-- \MasterMind_Core|freq_div1|Add0~13\ = CARRY((\MasterMind_Core|freq_div1|s_counter\(7) & !\MasterMind_Core|freq_div1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|freq_div1|s_counter\(7),
	datad => VCC,
	cin => \MasterMind_Core|freq_div1|Add0~11\,
	combout => \MasterMind_Core|freq_div1|Add0~12_combout\,
	cout => \MasterMind_Core|freq_div1|Add0~13\);

-- Location: FF_X68_Y56_N15
\MasterMind_Core|freq_div1|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|freq_div1|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|freq_div1|s_counter\(7));

-- Location: LCCOMB_X68_Y56_N16
\MasterMind_Core|freq_div1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div1|Add0~14_combout\ = (\MasterMind_Core|freq_div1|s_counter\(8) & (!\MasterMind_Core|freq_div1|Add0~13\)) # (!\MasterMind_Core|freq_div1|s_counter\(8) & ((\MasterMind_Core|freq_div1|Add0~13\) # (GND)))
-- \MasterMind_Core|freq_div1|Add0~15\ = CARRY((!\MasterMind_Core|freq_div1|Add0~13\) # (!\MasterMind_Core|freq_div1|s_counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|freq_div1|s_counter\(8),
	datad => VCC,
	cin => \MasterMind_Core|freq_div1|Add0~13\,
	combout => \MasterMind_Core|freq_div1|Add0~14_combout\,
	cout => \MasterMind_Core|freq_div1|Add0~15\);

-- Location: FF_X68_Y56_N17
\MasterMind_Core|freq_div1|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|freq_div1|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|freq_div1|s_counter\(8));

-- Location: LCCOMB_X68_Y56_N18
\MasterMind_Core|freq_div1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div1|Add0~16_combout\ = (\MasterMind_Core|freq_div1|s_counter\(9) & (\MasterMind_Core|freq_div1|Add0~15\ $ (GND))) # (!\MasterMind_Core|freq_div1|s_counter\(9) & (!\MasterMind_Core|freq_div1|Add0~15\ & VCC))
-- \MasterMind_Core|freq_div1|Add0~17\ = CARRY((\MasterMind_Core|freq_div1|s_counter\(9) & !\MasterMind_Core|freq_div1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|freq_div1|s_counter\(9),
	datad => VCC,
	cin => \MasterMind_Core|freq_div1|Add0~15\,
	combout => \MasterMind_Core|freq_div1|Add0~16_combout\,
	cout => \MasterMind_Core|freq_div1|Add0~17\);

-- Location: FF_X68_Y56_N19
\MasterMind_Core|freq_div1|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|freq_div1|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|freq_div1|s_counter\(9));

-- Location: LCCOMB_X68_Y56_N20
\MasterMind_Core|freq_div1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div1|Add0~18_combout\ = (\MasterMind_Core|freq_div1|s_counter\(10) & (!\MasterMind_Core|freq_div1|Add0~17\)) # (!\MasterMind_Core|freq_div1|s_counter\(10) & ((\MasterMind_Core|freq_div1|Add0~17\) # (GND)))
-- \MasterMind_Core|freq_div1|Add0~19\ = CARRY((!\MasterMind_Core|freq_div1|Add0~17\) # (!\MasterMind_Core|freq_div1|s_counter\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|freq_div1|s_counter\(10),
	datad => VCC,
	cin => \MasterMind_Core|freq_div1|Add0~17\,
	combout => \MasterMind_Core|freq_div1|Add0~18_combout\,
	cout => \MasterMind_Core|freq_div1|Add0~19\);

-- Location: FF_X68_Y56_N21
\MasterMind_Core|freq_div1|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|freq_div1|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|freq_div1|s_counter\(10));

-- Location: LCCOMB_X68_Y56_N22
\MasterMind_Core|freq_div1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div1|Add0~20_combout\ = (\MasterMind_Core|freq_div1|s_counter\(11) & (\MasterMind_Core|freq_div1|Add0~19\ $ (GND))) # (!\MasterMind_Core|freq_div1|s_counter\(11) & (!\MasterMind_Core|freq_div1|Add0~19\ & VCC))
-- \MasterMind_Core|freq_div1|Add0~21\ = CARRY((\MasterMind_Core|freq_div1|s_counter\(11) & !\MasterMind_Core|freq_div1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|freq_div1|s_counter\(11),
	datad => VCC,
	cin => \MasterMind_Core|freq_div1|Add0~19\,
	combout => \MasterMind_Core|freq_div1|Add0~20_combout\,
	cout => \MasterMind_Core|freq_div1|Add0~21\);

-- Location: LCCOMB_X69_Y55_N12
\MasterMind_Core|freq_div1|s_counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div1|s_counter~6_combout\ = (!\MasterMind_Core|freq_div1|Equal1~2_combout\ & \MasterMind_Core|freq_div1|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MasterMind_Core|freq_div1|Equal1~2_combout\,
	datad => \MasterMind_Core|freq_div1|Add0~20_combout\,
	combout => \MasterMind_Core|freq_div1|s_counter~6_combout\);

-- Location: FF_X69_Y55_N13
\MasterMind_Core|freq_div1|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|freq_div1|s_counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|freq_div1|s_counter\(11));

-- Location: LCCOMB_X68_Y56_N24
\MasterMind_Core|freq_div1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div1|Add0~22_combout\ = (\MasterMind_Core|freq_div1|s_counter\(12) & (!\MasterMind_Core|freq_div1|Add0~21\)) # (!\MasterMind_Core|freq_div1|s_counter\(12) & ((\MasterMind_Core|freq_div1|Add0~21\) # (GND)))
-- \MasterMind_Core|freq_div1|Add0~23\ = CARRY((!\MasterMind_Core|freq_div1|Add0~21\) # (!\MasterMind_Core|freq_div1|s_counter\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|freq_div1|s_counter\(12),
	datad => VCC,
	cin => \MasterMind_Core|freq_div1|Add0~21\,
	combout => \MasterMind_Core|freq_div1|Add0~22_combout\,
	cout => \MasterMind_Core|freq_div1|Add0~23\);

-- Location: LCCOMB_X69_Y55_N8
\MasterMind_Core|freq_div1|s_counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div1|s_counter~5_combout\ = (!\MasterMind_Core|freq_div1|Equal1~2_combout\ & \MasterMind_Core|freq_div1|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MasterMind_Core|freq_div1|Equal1~2_combout\,
	datad => \MasterMind_Core|freq_div1|Add0~22_combout\,
	combout => \MasterMind_Core|freq_div1|s_counter~5_combout\);

-- Location: FF_X69_Y55_N9
\MasterMind_Core|freq_div1|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|freq_div1|s_counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|freq_div1|s_counter\(12));

-- Location: LCCOMB_X68_Y56_N26
\MasterMind_Core|freq_div1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div1|Add0~24_combout\ = (\MasterMind_Core|freq_div1|s_counter\(13) & (\MasterMind_Core|freq_div1|Add0~23\ $ (GND))) # (!\MasterMind_Core|freq_div1|s_counter\(13) & (!\MasterMind_Core|freq_div1|Add0~23\ & VCC))
-- \MasterMind_Core|freq_div1|Add0~25\ = CARRY((\MasterMind_Core|freq_div1|s_counter\(13) & !\MasterMind_Core|freq_div1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|freq_div1|s_counter\(13),
	datad => VCC,
	cin => \MasterMind_Core|freq_div1|Add0~23\,
	combout => \MasterMind_Core|freq_div1|Add0~24_combout\,
	cout => \MasterMind_Core|freq_div1|Add0~25\);

-- Location: LCCOMB_X69_Y55_N24
\MasterMind_Core|freq_div1|s_counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div1|s_counter~4_combout\ = (!\MasterMind_Core|freq_div1|Equal1~2_combout\ & \MasterMind_Core|freq_div1|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MasterMind_Core|freq_div1|Equal1~2_combout\,
	datad => \MasterMind_Core|freq_div1|Add0~24_combout\,
	combout => \MasterMind_Core|freq_div1|s_counter~4_combout\);

-- Location: FF_X69_Y55_N25
\MasterMind_Core|freq_div1|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|freq_div1|s_counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|freq_div1|s_counter\(13));

-- Location: LCCOMB_X68_Y56_N28
\MasterMind_Core|freq_div1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div1|Add0~26_combout\ = (\MasterMind_Core|freq_div1|s_counter\(14) & (!\MasterMind_Core|freq_div1|Add0~25\)) # (!\MasterMind_Core|freq_div1|s_counter\(14) & ((\MasterMind_Core|freq_div1|Add0~25\) # (GND)))
-- \MasterMind_Core|freq_div1|Add0~27\ = CARRY((!\MasterMind_Core|freq_div1|Add0~25\) # (!\MasterMind_Core|freq_div1|s_counter\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|freq_div1|s_counter\(14),
	datad => VCC,
	cin => \MasterMind_Core|freq_div1|Add0~25\,
	combout => \MasterMind_Core|freq_div1|Add0~26_combout\,
	cout => \MasterMind_Core|freq_div1|Add0~27\);

-- Location: LCCOMB_X68_Y56_N30
\MasterMind_Core|freq_div1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div1|Add0~28_combout\ = (\MasterMind_Core|freq_div1|s_counter\(15) & (\MasterMind_Core|freq_div1|Add0~27\ $ (GND))) # (!\MasterMind_Core|freq_div1|s_counter\(15) & (!\MasterMind_Core|freq_div1|Add0~27\ & VCC))
-- \MasterMind_Core|freq_div1|Add0~29\ = CARRY((\MasterMind_Core|freq_div1|s_counter\(15) & !\MasterMind_Core|freq_div1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|freq_div1|s_counter\(15),
	datad => VCC,
	cin => \MasterMind_Core|freq_div1|Add0~27\,
	combout => \MasterMind_Core|freq_div1|Add0~28_combout\,
	cout => \MasterMind_Core|freq_div1|Add0~29\);

-- Location: FF_X68_Y56_N31
\MasterMind_Core|freq_div1|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|freq_div1|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|freq_div1|s_counter\(15));

-- Location: LCCOMB_X68_Y55_N0
\MasterMind_Core|freq_div1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div1|Add0~30_combout\ = (\MasterMind_Core|freq_div1|s_counter\(16) & (!\MasterMind_Core|freq_div1|Add0~29\)) # (!\MasterMind_Core|freq_div1|s_counter\(16) & ((\MasterMind_Core|freq_div1|Add0~29\) # (GND)))
-- \MasterMind_Core|freq_div1|Add0~31\ = CARRY((!\MasterMind_Core|freq_div1|Add0~29\) # (!\MasterMind_Core|freq_div1|s_counter\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|freq_div1|s_counter\(16),
	datad => VCC,
	cin => \MasterMind_Core|freq_div1|Add0~29\,
	combout => \MasterMind_Core|freq_div1|Add0~30_combout\,
	cout => \MasterMind_Core|freq_div1|Add0~31\);

-- Location: LCCOMB_X69_Y55_N6
\MasterMind_Core|freq_div1|s_counter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div1|s_counter~10_combout\ = (!\MasterMind_Core|freq_div1|Equal1~2_combout\ & \MasterMind_Core|freq_div1|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|freq_div1|Equal1~2_combout\,
	datac => \MasterMind_Core|freq_div1|Add0~30_combout\,
	combout => \MasterMind_Core|freq_div1|s_counter~10_combout\);

-- Location: FF_X69_Y55_N7
\MasterMind_Core|freq_div1|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|freq_div1|s_counter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|freq_div1|s_counter\(16));

-- Location: LCCOMB_X68_Y55_N2
\MasterMind_Core|freq_div1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div1|Add0~32_combout\ = (\MasterMind_Core|freq_div1|s_counter\(17) & (\MasterMind_Core|freq_div1|Add0~31\ $ (GND))) # (!\MasterMind_Core|freq_div1|s_counter\(17) & (!\MasterMind_Core|freq_div1|Add0~31\ & VCC))
-- \MasterMind_Core|freq_div1|Add0~33\ = CARRY((\MasterMind_Core|freq_div1|s_counter\(17) & !\MasterMind_Core|freq_div1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|freq_div1|s_counter\(17),
	datad => VCC,
	cin => \MasterMind_Core|freq_div1|Add0~31\,
	combout => \MasterMind_Core|freq_div1|Add0~32_combout\,
	cout => \MasterMind_Core|freq_div1|Add0~33\);

-- Location: FF_X68_Y55_N3
\MasterMind_Core|freq_div1|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|freq_div1|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|freq_div1|s_counter\(17));

-- Location: LCCOMB_X68_Y55_N4
\MasterMind_Core|freq_div1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div1|Add0~34_combout\ = (\MasterMind_Core|freq_div1|s_counter\(18) & (!\MasterMind_Core|freq_div1|Add0~33\)) # (!\MasterMind_Core|freq_div1|s_counter\(18) & ((\MasterMind_Core|freq_div1|Add0~33\) # (GND)))
-- \MasterMind_Core|freq_div1|Add0~35\ = CARRY((!\MasterMind_Core|freq_div1|Add0~33\) # (!\MasterMind_Core|freq_div1|s_counter\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|freq_div1|s_counter\(18),
	datad => VCC,
	cin => \MasterMind_Core|freq_div1|Add0~33\,
	combout => \MasterMind_Core|freq_div1|Add0~34_combout\,
	cout => \MasterMind_Core|freq_div1|Add0~35\);

-- Location: LCCOMB_X69_Y55_N2
\MasterMind_Core|freq_div1|s_counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div1|s_counter~3_combout\ = (!\MasterMind_Core|freq_div1|Equal1~2_combout\ & \MasterMind_Core|freq_div1|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|freq_div1|Equal1~2_combout\,
	datac => \MasterMind_Core|freq_div1|Add0~34_combout\,
	combout => \MasterMind_Core|freq_div1|s_counter~3_combout\);

-- Location: FF_X69_Y55_N3
\MasterMind_Core|freq_div1|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|freq_div1|s_counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|freq_div1|s_counter\(18));

-- Location: LCCOMB_X68_Y55_N6
\MasterMind_Core|freq_div1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div1|Add0~36_combout\ = (\MasterMind_Core|freq_div1|s_counter\(19) & (\MasterMind_Core|freq_div1|Add0~35\ $ (GND))) # (!\MasterMind_Core|freq_div1|s_counter\(19) & (!\MasterMind_Core|freq_div1|Add0~35\ & VCC))
-- \MasterMind_Core|freq_div1|Add0~37\ = CARRY((\MasterMind_Core|freq_div1|s_counter\(19) & !\MasterMind_Core|freq_div1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|freq_div1|s_counter\(19),
	datad => VCC,
	cin => \MasterMind_Core|freq_div1|Add0~35\,
	combout => \MasterMind_Core|freq_div1|Add0~36_combout\,
	cout => \MasterMind_Core|freq_div1|Add0~37\);

-- Location: LCCOMB_X69_Y55_N26
\MasterMind_Core|freq_div1|s_counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div1|s_counter~2_combout\ = (!\MasterMind_Core|freq_div1|Equal1~2_combout\ & \MasterMind_Core|freq_div1|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|freq_div1|Equal1~2_combout\,
	datac => \MasterMind_Core|freq_div1|Add0~36_combout\,
	combout => \MasterMind_Core|freq_div1|s_counter~2_combout\);

-- Location: FF_X69_Y55_N27
\MasterMind_Core|freq_div1|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|freq_div1|s_counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|freq_div1|s_counter\(19));

-- Location: LCCOMB_X68_Y55_N8
\MasterMind_Core|freq_div1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div1|Add0~38_combout\ = (\MasterMind_Core|freq_div1|s_counter\(20) & (!\MasterMind_Core|freq_div1|Add0~37\)) # (!\MasterMind_Core|freq_div1|s_counter\(20) & ((\MasterMind_Core|freq_div1|Add0~37\) # (GND)))
-- \MasterMind_Core|freq_div1|Add0~39\ = CARRY((!\MasterMind_Core|freq_div1|Add0~37\) # (!\MasterMind_Core|freq_div1|s_counter\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|freq_div1|s_counter\(20),
	datad => VCC,
	cin => \MasterMind_Core|freq_div1|Add0~37\,
	combout => \MasterMind_Core|freq_div1|Add0~38_combout\,
	cout => \MasterMind_Core|freq_div1|Add0~39\);

-- Location: LCCOMB_X68_Y55_N30
\MasterMind_Core|freq_div1|s_counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div1|s_counter~1_combout\ = (\MasterMind_Core|freq_div1|Add0~38_combout\ & !\MasterMind_Core|freq_div1|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MasterMind_Core|freq_div1|Add0~38_combout\,
	datad => \MasterMind_Core|freq_div1|Equal1~2_combout\,
	combout => \MasterMind_Core|freq_div1|s_counter~1_combout\);

-- Location: FF_X68_Y55_N31
\MasterMind_Core|freq_div1|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|freq_div1|s_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|freq_div1|s_counter\(20));

-- Location: LCCOMB_X68_Y55_N10
\MasterMind_Core|freq_div1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div1|Add0~40_combout\ = (\MasterMind_Core|freq_div1|s_counter\(21) & (\MasterMind_Core|freq_div1|Add0~39\ $ (GND))) # (!\MasterMind_Core|freq_div1|s_counter\(21) & (!\MasterMind_Core|freq_div1|Add0~39\ & VCC))
-- \MasterMind_Core|freq_div1|Add0~41\ = CARRY((\MasterMind_Core|freq_div1|s_counter\(21) & !\MasterMind_Core|freq_div1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|freq_div1|s_counter\(21),
	datad => VCC,
	cin => \MasterMind_Core|freq_div1|Add0~39\,
	combout => \MasterMind_Core|freq_div1|Add0~40_combout\,
	cout => \MasterMind_Core|freq_div1|Add0~41\);

-- Location: LCCOMB_X69_Y55_N28
\MasterMind_Core|freq_div1|s_counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div1|s_counter~0_combout\ = (!\MasterMind_Core|freq_div1|Equal1~2_combout\ & \MasterMind_Core|freq_div1|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MasterMind_Core|freq_div1|Equal1~2_combout\,
	datad => \MasterMind_Core|freq_div1|Add0~40_combout\,
	combout => \MasterMind_Core|freq_div1|s_counter~0_combout\);

-- Location: FF_X69_Y55_N29
\MasterMind_Core|freq_div1|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|freq_div1|s_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|freq_div1|s_counter\(21));

-- Location: LCCOMB_X68_Y55_N12
\MasterMind_Core|freq_div1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div1|Add0~42_combout\ = (\MasterMind_Core|freq_div1|s_counter\(22) & (!\MasterMind_Core|freq_div1|Add0~41\)) # (!\MasterMind_Core|freq_div1|s_counter\(22) & ((\MasterMind_Core|freq_div1|Add0~41\) # (GND)))
-- \MasterMind_Core|freq_div1|Add0~43\ = CARRY((!\MasterMind_Core|freq_div1|Add0~41\) # (!\MasterMind_Core|freq_div1|s_counter\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|freq_div1|s_counter\(22),
	datad => VCC,
	cin => \MasterMind_Core|freq_div1|Add0~41\,
	combout => \MasterMind_Core|freq_div1|Add0~42_combout\,
	cout => \MasterMind_Core|freq_div1|Add0~43\);

-- Location: LCCOMB_X69_Y55_N4
\MasterMind_Core|freq_div1|s_counter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div1|s_counter~9_combout\ = (!\MasterMind_Core|freq_div1|Equal1~2_combout\ & \MasterMind_Core|freq_div1|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MasterMind_Core|freq_div1|Equal1~2_combout\,
	datad => \MasterMind_Core|freq_div1|Add0~42_combout\,
	combout => \MasterMind_Core|freq_div1|s_counter~9_combout\);

-- Location: FF_X69_Y55_N5
\MasterMind_Core|freq_div1|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|freq_div1|s_counter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|freq_div1|s_counter\(22));

-- Location: LCCOMB_X68_Y55_N14
\MasterMind_Core|freq_div1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div1|Add0~44_combout\ = (\MasterMind_Core|freq_div1|s_counter\(23) & (\MasterMind_Core|freq_div1|Add0~43\ $ (GND))) # (!\MasterMind_Core|freq_div1|s_counter\(23) & (!\MasterMind_Core|freq_div1|Add0~43\ & VCC))
-- \MasterMind_Core|freq_div1|Add0~45\ = CARRY((\MasterMind_Core|freq_div1|s_counter\(23) & !\MasterMind_Core|freq_div1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|freq_div1|s_counter\(23),
	datad => VCC,
	cin => \MasterMind_Core|freq_div1|Add0~43\,
	combout => \MasterMind_Core|freq_div1|Add0~44_combout\,
	cout => \MasterMind_Core|freq_div1|Add0~45\);

-- Location: FF_X68_Y55_N15
\MasterMind_Core|freq_div1|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|freq_div1|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|freq_div1|s_counter\(23));

-- Location: LCCOMB_X68_Y55_N16
\MasterMind_Core|freq_div1|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div1|Add0~46_combout\ = (\MasterMind_Core|freq_div1|s_counter\(24) & (!\MasterMind_Core|freq_div1|Add0~45\)) # (!\MasterMind_Core|freq_div1|s_counter\(24) & ((\MasterMind_Core|freq_div1|Add0~45\) # (GND)))
-- \MasterMind_Core|freq_div1|Add0~47\ = CARRY((!\MasterMind_Core|freq_div1|Add0~45\) # (!\MasterMind_Core|freq_div1|s_counter\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|freq_div1|s_counter\(24),
	datad => VCC,
	cin => \MasterMind_Core|freq_div1|Add0~45\,
	combout => \MasterMind_Core|freq_div1|Add0~46_combout\,
	cout => \MasterMind_Core|freq_div1|Add0~47\);

-- Location: LCCOMB_X70_Y55_N8
\MasterMind_Core|freq_div1|s_counter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div1|s_counter~8_combout\ = (!\MasterMind_Core|freq_div1|Equal1~2_combout\ & \MasterMind_Core|freq_div1|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|freq_div1|Equal1~2_combout\,
	datad => \MasterMind_Core|freq_div1|Add0~46_combout\,
	combout => \MasterMind_Core|freq_div1|s_counter~8_combout\);

-- Location: FF_X70_Y55_N9
\MasterMind_Core|freq_div1|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|freq_div1|s_counter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|freq_div1|s_counter\(24));

-- Location: LCCOMB_X70_Y55_N24
\MasterMind_Core|freq_div1|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div1|Equal1~0_combout\ = (!\MasterMind_Core|freq_div1|s_counter\(23) & (\MasterMind_Core|freq_div1|s_counter\(22) & (\MasterMind_Core|freq_div1|s_counter\(24) & !\MasterMind_Core|freq_div1|s_counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|freq_div1|s_counter\(23),
	datab => \MasterMind_Core|freq_div1|s_counter\(22),
	datac => \MasterMind_Core|freq_div1|s_counter\(24),
	datad => \MasterMind_Core|freq_div1|s_counter\(17),
	combout => \MasterMind_Core|freq_div1|Equal1~0_combout\);

-- Location: LCCOMB_X70_Y55_N30
\MasterMind_Core|freq_div1|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div1|Equal1~1_combout\ = (\MasterMind_Core|freq_div1|s_counter\(14) & (!\MasterMind_Core|freq_div1|s_counter\(15) & (\MasterMind_Core|freq_div1|s_counter\(16) & !\MasterMind_Core|freq_div1|s_counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|freq_div1|s_counter\(14),
	datab => \MasterMind_Core|freq_div1|s_counter\(15),
	datac => \MasterMind_Core|freq_div1|s_counter\(16),
	datad => \MasterMind_Core|freq_div1|s_counter\(10),
	combout => \MasterMind_Core|freq_div1|Equal1~1_combout\);

-- Location: LCCOMB_X69_Y56_N28
\MasterMind_Core|freq_div1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div1|Equal0~5_combout\ = (!\MasterMind_Core|freq_div1|s_counter\(7) & (!\MasterMind_Core|freq_div1|s_counter\(8) & (!\MasterMind_Core|freq_div1|s_counter\(6) & \MasterMind_Core|freq_div1|s_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|freq_div1|s_counter\(7),
	datab => \MasterMind_Core|freq_div1|s_counter\(8),
	datac => \MasterMind_Core|freq_div1|s_counter\(6),
	datad => \MasterMind_Core|freq_div1|s_counter\(4),
	combout => \MasterMind_Core|freq_div1|Equal0~5_combout\);

-- Location: LCCOMB_X69_Y55_N22
\MasterMind_Core|freq_div1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div1|Equal0~2_combout\ = (\MasterMind_Core|freq_div1|s_counter\(19) & (\MasterMind_Core|freq_div1|s_counter\(21) & (\MasterMind_Core|freq_div1|s_counter\(18) & \MasterMind_Core|freq_div1|s_counter\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|freq_div1|s_counter\(19),
	datab => \MasterMind_Core|freq_div1|s_counter\(21),
	datac => \MasterMind_Core|freq_div1|s_counter\(18),
	datad => \MasterMind_Core|freq_div1|s_counter\(20),
	combout => \MasterMind_Core|freq_div1|Equal0~2_combout\);

-- Location: LCCOMB_X68_Y55_N18
\MasterMind_Core|freq_div1|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div1|Add0~48_combout\ = (\MasterMind_Core|freq_div1|s_counter\(25) & (\MasterMind_Core|freq_div1|Add0~47\ $ (GND))) # (!\MasterMind_Core|freq_div1|s_counter\(25) & (!\MasterMind_Core|freq_div1|Add0~47\ & VCC))
-- \MasterMind_Core|freq_div1|Add0~49\ = CARRY((\MasterMind_Core|freq_div1|s_counter\(25) & !\MasterMind_Core|freq_div1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|freq_div1|s_counter\(25),
	datad => VCC,
	cin => \MasterMind_Core|freq_div1|Add0~47\,
	combout => \MasterMind_Core|freq_div1|Add0~48_combout\,
	cout => \MasterMind_Core|freq_div1|Add0~49\);

-- Location: FF_X68_Y55_N19
\MasterMind_Core|freq_div1|s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|freq_div1|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|freq_div1|s_counter\(25));

-- Location: LCCOMB_X68_Y55_N20
\MasterMind_Core|freq_div1|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div1|Add0~50_combout\ = (\MasterMind_Core|freq_div1|s_counter\(26) & (!\MasterMind_Core|freq_div1|Add0~49\)) # (!\MasterMind_Core|freq_div1|s_counter\(26) & ((\MasterMind_Core|freq_div1|Add0~49\) # (GND)))
-- \MasterMind_Core|freq_div1|Add0~51\ = CARRY((!\MasterMind_Core|freq_div1|Add0~49\) # (!\MasterMind_Core|freq_div1|s_counter\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|freq_div1|s_counter\(26),
	datad => VCC,
	cin => \MasterMind_Core|freq_div1|Add0~49\,
	combout => \MasterMind_Core|freq_div1|Add0~50_combout\,
	cout => \MasterMind_Core|freq_div1|Add0~51\);

-- Location: FF_X68_Y55_N21
\MasterMind_Core|freq_div1|s_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|freq_div1|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|freq_div1|s_counter\(26));

-- Location: LCCOMB_X68_Y55_N22
\MasterMind_Core|freq_div1|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div1|Add0~52_combout\ = (\MasterMind_Core|freq_div1|s_counter\(27) & (\MasterMind_Core|freq_div1|Add0~51\ $ (GND))) # (!\MasterMind_Core|freq_div1|s_counter\(27) & (!\MasterMind_Core|freq_div1|Add0~51\ & VCC))
-- \MasterMind_Core|freq_div1|Add0~53\ = CARRY((\MasterMind_Core|freq_div1|s_counter\(27) & !\MasterMind_Core|freq_div1|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|freq_div1|s_counter\(27),
	datad => VCC,
	cin => \MasterMind_Core|freq_div1|Add0~51\,
	combout => \MasterMind_Core|freq_div1|Add0~52_combout\,
	cout => \MasterMind_Core|freq_div1|Add0~53\);

-- Location: FF_X68_Y55_N23
\MasterMind_Core|freq_div1|s_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|freq_div1|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|freq_div1|s_counter\(27));

-- Location: LCCOMB_X68_Y55_N24
\MasterMind_Core|freq_div1|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div1|Add0~54_combout\ = (\MasterMind_Core|freq_div1|s_counter\(28) & (!\MasterMind_Core|freq_div1|Add0~53\)) # (!\MasterMind_Core|freq_div1|s_counter\(28) & ((\MasterMind_Core|freq_div1|Add0~53\) # (GND)))
-- \MasterMind_Core|freq_div1|Add0~55\ = CARRY((!\MasterMind_Core|freq_div1|Add0~53\) # (!\MasterMind_Core|freq_div1|s_counter\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|freq_div1|s_counter\(28),
	datad => VCC,
	cin => \MasterMind_Core|freq_div1|Add0~53\,
	combout => \MasterMind_Core|freq_div1|Add0~54_combout\,
	cout => \MasterMind_Core|freq_div1|Add0~55\);

-- Location: FF_X68_Y55_N25
\MasterMind_Core|freq_div1|s_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|freq_div1|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|freq_div1|s_counter\(28));

-- Location: LCCOMB_X68_Y55_N26
\MasterMind_Core|freq_div1|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div1|Add0~56_combout\ = (\MasterMind_Core|freq_div1|s_counter\(29) & (\MasterMind_Core|freq_div1|Add0~55\ $ (GND))) # (!\MasterMind_Core|freq_div1|s_counter\(29) & (!\MasterMind_Core|freq_div1|Add0~55\ & VCC))
-- \MasterMind_Core|freq_div1|Add0~57\ = CARRY((\MasterMind_Core|freq_div1|s_counter\(29) & !\MasterMind_Core|freq_div1|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|freq_div1|s_counter\(29),
	datad => VCC,
	cin => \MasterMind_Core|freq_div1|Add0~55\,
	combout => \MasterMind_Core|freq_div1|Add0~56_combout\,
	cout => \MasterMind_Core|freq_div1|Add0~57\);

-- Location: FF_X68_Y55_N27
\MasterMind_Core|freq_div1|s_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|freq_div1|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|freq_div1|s_counter\(29));

-- Location: LCCOMB_X68_Y55_N28
\MasterMind_Core|freq_div1|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div1|Add0~58_combout\ = \MasterMind_Core|freq_div1|Add0~57\ $ (\MasterMind_Core|freq_div1|s_counter\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \MasterMind_Core|freq_div1|s_counter\(30),
	cin => \MasterMind_Core|freq_div1|Add0~57\,
	combout => \MasterMind_Core|freq_div1|Add0~58_combout\);

-- Location: FF_X68_Y55_N29
\MasterMind_Core|freq_div1|s_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|freq_div1|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|freq_div1|s_counter\(30));

-- Location: LCCOMB_X69_Y55_N16
\MasterMind_Core|freq_div1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div1|Equal0~0_combout\ = (!\MasterMind_Core|freq_div1|s_counter\(29) & (!\MasterMind_Core|freq_div1|s_counter\(30) & (\MasterMind_Core|freq_div2|s_counter\(0) & \MasterMind_Core|freq_div2|s_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|freq_div1|s_counter\(29),
	datab => \MasterMind_Core|freq_div1|s_counter\(30),
	datac => \MasterMind_Core|freq_div2|s_counter\(0),
	datad => \MasterMind_Core|freq_div2|s_counter\(1),
	combout => \MasterMind_Core|freq_div1|Equal0~0_combout\);

-- Location: LCCOMB_X69_Y55_N30
\MasterMind_Core|freq_div1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div1|Equal0~3_combout\ = (\MasterMind_Core|freq_div1|s_counter\(11) & (\MasterMind_Core|freq_div1|s_counter\(13) & (\MasterMind_Core|freq_div1|s_counter\(12) & !\MasterMind_Core|freq_div1|s_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|freq_div1|s_counter\(11),
	datab => \MasterMind_Core|freq_div1|s_counter\(13),
	datac => \MasterMind_Core|freq_div1|s_counter\(12),
	datad => \MasterMind_Core|freq_div1|s_counter\(9),
	combout => \MasterMind_Core|freq_div1|Equal0~3_combout\);

-- Location: LCCOMB_X69_Y55_N20
\MasterMind_Core|freq_div1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div1|Equal0~1_combout\ = (!\MasterMind_Core|freq_div1|s_counter\(28) & (!\MasterMind_Core|freq_div1|s_counter\(26) & (!\MasterMind_Core|freq_div1|s_counter\(25) & !\MasterMind_Core|freq_div1|s_counter\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|freq_div1|s_counter\(28),
	datab => \MasterMind_Core|freq_div1|s_counter\(26),
	datac => \MasterMind_Core|freq_div1|s_counter\(25),
	datad => \MasterMind_Core|freq_div1|s_counter\(27),
	combout => \MasterMind_Core|freq_div1|Equal0~1_combout\);

-- Location: LCCOMB_X69_Y55_N18
\MasterMind_Core|freq_div1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div1|Equal0~4_combout\ = (\MasterMind_Core|freq_div1|Equal0~2_combout\ & (\MasterMind_Core|freq_div1|Equal0~0_combout\ & (\MasterMind_Core|freq_div1|Equal0~3_combout\ & \MasterMind_Core|freq_div1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|freq_div1|Equal0~2_combout\,
	datab => \MasterMind_Core|freq_div1|Equal0~0_combout\,
	datac => \MasterMind_Core|freq_div1|Equal0~3_combout\,
	datad => \MasterMind_Core|freq_div1|Equal0~1_combout\,
	combout => \MasterMind_Core|freq_div1|Equal0~4_combout\);

-- Location: LCCOMB_X69_Y55_N14
\MasterMind_Core|freq_div1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div1|Equal0~6_combout\ = (\MasterMind_Core|freq_div1|s_counter\(3) & (\MasterMind_Core|freq_div1|Equal0~5_combout\ & (\MasterMind_Core|freq_div1|s_counter\(2) & \MasterMind_Core|freq_div1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|freq_div1|s_counter\(3),
	datab => \MasterMind_Core|freq_div1|Equal0~5_combout\,
	datac => \MasterMind_Core|freq_div1|s_counter\(2),
	datad => \MasterMind_Core|freq_div1|Equal0~4_combout\,
	combout => \MasterMind_Core|freq_div1|Equal0~6_combout\);

-- Location: LCCOMB_X70_Y55_N12
\MasterMind_Core|freq_div1|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div1|Equal1~2_combout\ = (\MasterMind_Core|freq_div1|s_counter\(5) & (\MasterMind_Core|freq_div1|Equal1~0_combout\ & (\MasterMind_Core|freq_div1|Equal1~1_combout\ & \MasterMind_Core|freq_div1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|freq_div1|s_counter\(5),
	datab => \MasterMind_Core|freq_div1|Equal1~0_combout\,
	datac => \MasterMind_Core|freq_div1|Equal1~1_combout\,
	datad => \MasterMind_Core|freq_div1|Equal0~6_combout\,
	combout => \MasterMind_Core|freq_div1|Equal1~2_combout\);

-- Location: LCCOMB_X69_Y56_N6
\MasterMind_Core|freq_div1|s_counter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div1|s_counter~11_combout\ = (!\MasterMind_Core|freq_div1|Equal1~2_combout\ & \MasterMind_Core|freq_div1|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MasterMind_Core|freq_div1|Equal1~2_combout\,
	datad => \MasterMind_Core|freq_div1|Add0~26_combout\,
	combout => \MasterMind_Core|freq_div1|s_counter~11_combout\);

-- Location: FF_X69_Y56_N7
\MasterMind_Core|freq_div1|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \MasterMind_Core|freq_div1|s_counter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|freq_div1|s_counter\(14));

-- Location: LCCOMB_X70_Y55_N28
\MasterMind_Core|freq_div1|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div1|Equal0~8_combout\ = (!\MasterMind_Core|freq_div1|s_counter\(14) & (\MasterMind_Core|freq_div1|s_counter\(15) & (!\MasterMind_Core|freq_div1|s_counter\(16) & \MasterMind_Core|freq_div1|s_counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|freq_div1|s_counter\(14),
	datab => \MasterMind_Core|freq_div1|s_counter\(15),
	datac => \MasterMind_Core|freq_div1|s_counter\(16),
	datad => \MasterMind_Core|freq_div1|s_counter\(10),
	combout => \MasterMind_Core|freq_div1|Equal0~8_combout\);

-- Location: LCCOMB_X70_Y55_N18
\MasterMind_Core|freq_div1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div1|Equal0~7_combout\ = (\MasterMind_Core|freq_div1|s_counter\(23) & (!\MasterMind_Core|freq_div1|s_counter\(22) & (!\MasterMind_Core|freq_div1|s_counter\(24) & \MasterMind_Core|freq_div1|s_counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|freq_div1|s_counter\(23),
	datab => \MasterMind_Core|freq_div1|s_counter\(22),
	datac => \MasterMind_Core|freq_div1|s_counter\(24),
	datad => \MasterMind_Core|freq_div1|s_counter\(17),
	combout => \MasterMind_Core|freq_div1|Equal0~7_combout\);

-- Location: LCCOMB_X70_Y55_N2
\MasterMind_Core|freq_div1|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div1|Equal0~9_combout\ = (\MasterMind_Core|freq_div1|Equal0~8_combout\ & (!\MasterMind_Core|freq_div1|s_counter\(5) & \MasterMind_Core|freq_div1|Equal0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|freq_div1|Equal0~8_combout\,
	datac => \MasterMind_Core|freq_div1|s_counter\(5),
	datad => \MasterMind_Core|freq_div1|Equal0~7_combout\,
	combout => \MasterMind_Core|freq_div1|Equal0~9_combout\);

-- Location: LCCOMB_X69_Y55_N10
\MasterMind_Core|freq_div1|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|freq_div1|clkOut~0_combout\ = (\MasterMind_Core|freq_div1|Equal0~9_combout\ & ((\MasterMind_Core|freq_div1|Equal0~6_combout\) # ((!\MasterMind_Core|freq_div1|Equal1~2_combout\ & \MasterMind_Core|freq_div1|clkOut~q\)))) # 
-- (!\MasterMind_Core|freq_div1|Equal0~9_combout\ & (((!\MasterMind_Core|freq_div1|Equal1~2_combout\ & \MasterMind_Core|freq_div1|clkOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|freq_div1|Equal0~9_combout\,
	datab => \MasterMind_Core|freq_div1|Equal0~6_combout\,
	datac => \MasterMind_Core|freq_div1|Equal1~2_combout\,
	datad => \MasterMind_Core|freq_div1|clkOut~q\,
	combout => \MasterMind_Core|freq_div1|clkOut~0_combout\);

-- Location: FF_X69_Y55_N1
\MasterMind_Core|freq_div1|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \MasterMind_Core|freq_div1|clkOut~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|freq_div1|clkOut~q\);

-- Location: CLKCTRL_G11
\MasterMind_Core|freq_div1|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \MasterMind_Core|freq_div1|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \MasterMind_Core|freq_div1|clkOut~clkctrl_outclk\);

-- Location: LCCOMB_X82_Y20_N28
\MasterMind_Core|s_isblink3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|s_isblink3~combout\ = (!\MasterMind_Core|checkEnd|pState.S1~q\ & (!\MasterMind_Core|s_up3~0_combout\ & ((!\MasterMind_Core|checkEnd|pState.S3~q\) # (!\MasterMind_Core|bin7segdec2|Equal7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|checkEnd|pState.S1~q\,
	datab => \MasterMind_Core|bin7segdec2|Equal7~0_combout\,
	datac => \MasterMind_Core|s_up3~0_combout\,
	datad => \MasterMind_Core|checkEnd|pState.S3~q\,
	combout => \MasterMind_Core|s_isblink3~combout\);

-- Location: CLKCTRL_G16
\MasterMind_Core|s_isblink3~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \MasterMind_Core|s_isblink3~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \MasterMind_Core|s_isblink3~clkctrl_outclk\);

-- Location: LCCOMB_X84_Y19_N0
\MasterMind_Core|checkEnd|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|checkEnd|Selector2~0_combout\ = (\MasterMind_Core|checkEnd|pState.S2~q\) # (((\MasterMind_Core|checkEnd|pState.S3~q\ & !\MasterMind_Core|bin7segdec2|Equal7~0_combout\)) # (!\MasterMind_Core|checkEnd|pState.S0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|checkEnd|pState.S2~q\,
	datab => \MasterMind_Core|checkEnd|pState.S3~q\,
	datac => \MasterMind_Core|bin7segdec2|Equal7~0_combout\,
	datad => \MasterMind_Core|checkEnd|pState.S0~q\,
	combout => \MasterMind_Core|checkEnd|Selector2~0_combout\);

-- Location: CLKCTRL_G9
\MasterMind_Core|checkEnd|Selector2~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \MasterMind_Core|checkEnd|Selector2~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \MasterMind_Core|checkEnd|Selector2~0clkctrl_outclk\);

-- Location: LCCOMB_X83_Y24_N6
\MasterMind_Core|blink3|s_nin[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink3|s_nin\(3) = (GLOBAL(\MasterMind_Core|checkEnd|Selector2~0clkctrl_outclk\) & ((\MasterMind_Core|Counter9_3|s_count\(3)))) # (!GLOBAL(\MasterMind_Core|checkEnd|Selector2~0clkctrl_outclk\) & (\MasterMind_Core|blink3|s_nin\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|blink3|s_nin\(3),
	datac => \MasterMind_Core|Counter9_3|s_count\(3),
	datad => \MasterMind_Core|checkEnd|Selector2~0clkctrl_outclk\,
	combout => \MasterMind_Core|blink3|s_nin\(3));

-- Location: LCCOMB_X83_Y24_N28
\MasterMind_Core|blink3|numberOut[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink3|numberOut[3]~1_combout\ = (GLOBAL(\MasterMind_Core|s_isblink3~clkctrl_outclk\) & ((\MasterMind_Core|blink3|s_nin\(3)))) # (!GLOBAL(\MasterMind_Core|s_isblink3~clkctrl_outclk\) & (\MasterMind_Core|blink3|numberOut[3]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|blink3|numberOut[3]~1_combout\,
	datac => \MasterMind_Core|s_isblink3~clkctrl_outclk\,
	datad => \MasterMind_Core|blink3|s_nin\(3),
	combout => \MasterMind_Core|blink3|numberOut[3]~1_combout\);

-- Location: LCCOMB_X83_Y24_N22
\MasterMind_Core|blink3|checkblink~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink3|checkblink~0_combout\ = !\MasterMind_Core|blink3|checkblink~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MasterMind_Core|blink3|checkblink~q\,
	combout => \MasterMind_Core|blink3|checkblink~0_combout\);

-- Location: FF_X83_Y24_N23
\MasterMind_Core|blink3|checkblink\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|freq_div1|clkOut~clkctrl_outclk\,
	d => \MasterMind_Core|blink3|checkblink~0_combout\,
	clrn => \MasterMind_Core|ALT_INV_s_isblink3~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|blink3|checkblink~q\);

-- Location: LCCOMB_X83_Y24_N16
\MasterMind_Core|blink3|numberOut[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink3|numberOut[3]~3_combout\ = \MasterMind_Core|blink3|numberOut[3]~1_combout\ $ (((\MasterMind_Core|blink3|s_nin\(3)) # (!\MasterMind_Core|blink3|checkblink~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|blink3|numberOut[3]~1_combout\,
	datac => \MasterMind_Core|blink3|checkblink~q\,
	datad => \MasterMind_Core|blink3|s_nin\(3),
	combout => \MasterMind_Core|blink3|numberOut[3]~3_combout\);

-- Location: FF_X83_Y24_N17
\MasterMind_Core|blink3|numberOut[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|freq_div1|clkOut~clkctrl_outclk\,
	d => \MasterMind_Core|blink3|numberOut[3]~3_combout\,
	clrn => \MasterMind_Core|ALT_INV_s_isblink3~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|blink3|numberOut[3]~_emulated_q\);

-- Location: LCCOMB_X83_Y24_N30
\MasterMind_Core|blink3|numberOut[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink3|numberOut[3]~2_combout\ = (\MasterMind_Core|s_isblink3~combout\ & (((\MasterMind_Core|blink3|s_nin\(3))))) # (!\MasterMind_Core|s_isblink3~combout\ & (\MasterMind_Core|blink3|numberOut[3]~_emulated_q\ $ 
-- ((\MasterMind_Core|blink3|numberOut[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|blink3|numberOut[3]~_emulated_q\,
	datab => \MasterMind_Core|blink3|numberOut[3]~1_combout\,
	datac => \MasterMind_Core|blink3|s_nin\(3),
	datad => \MasterMind_Core|s_isblink3~combout\,
	combout => \MasterMind_Core|blink3|numberOut[3]~2_combout\);

-- Location: LCCOMB_X83_Y24_N18
\MasterMind_Core|blink3|s_nin[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink3|s_nin\(1) = (GLOBAL(\MasterMind_Core|checkEnd|Selector2~0clkctrl_outclk\) & ((\MasterMind_Core|Counter9_3|s_count\(1)))) # (!GLOBAL(\MasterMind_Core|checkEnd|Selector2~0clkctrl_outclk\) & (\MasterMind_Core|blink3|s_nin\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|blink3|s_nin\(1),
	datac => \MasterMind_Core|Counter9_3|s_count\(1),
	datad => \MasterMind_Core|checkEnd|Selector2~0clkctrl_outclk\,
	combout => \MasterMind_Core|blink3|s_nin\(1));

-- Location: LCCOMB_X83_Y24_N8
\MasterMind_Core|blink3|numberOut[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink3|numberOut[1]~5_combout\ = (GLOBAL(\MasterMind_Core|s_isblink3~clkctrl_outclk\) & (\MasterMind_Core|blink3|s_nin\(1))) # (!GLOBAL(\MasterMind_Core|s_isblink3~clkctrl_outclk\) & ((\MasterMind_Core|blink3|numberOut[1]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|blink3|s_nin\(1),
	datac => \MasterMind_Core|s_isblink3~clkctrl_outclk\,
	datad => \MasterMind_Core|blink3|numberOut[1]~5_combout\,
	combout => \MasterMind_Core|blink3|numberOut[1]~5_combout\);

-- Location: LCCOMB_X83_Y24_N0
\MasterMind_Core|blink3|numberOut[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink3|numberOut[1]~7_combout\ = \MasterMind_Core|blink3|numberOut[1]~5_combout\ $ (((\MasterMind_Core|blink3|s_nin\(1)) # (!\MasterMind_Core|blink3|checkblink~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|blink3|numberOut[1]~5_combout\,
	datac => \MasterMind_Core|blink3|checkblink~q\,
	datad => \MasterMind_Core|blink3|s_nin\(1),
	combout => \MasterMind_Core|blink3|numberOut[1]~7_combout\);

-- Location: FF_X83_Y24_N1
\MasterMind_Core|blink3|numberOut[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|freq_div1|clkOut~clkctrl_outclk\,
	d => \MasterMind_Core|blink3|numberOut[1]~7_combout\,
	clrn => \MasterMind_Core|ALT_INV_s_isblink3~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|blink3|numberOut[1]~_emulated_q\);

-- Location: LCCOMB_X83_Y24_N14
\MasterMind_Core|blink3|numberOut[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink3|numberOut[1]~6_combout\ = (\MasterMind_Core|s_isblink3~combout\ & (\MasterMind_Core|blink3|s_nin\(1))) # (!\MasterMind_Core|s_isblink3~combout\ & ((\MasterMind_Core|blink3|numberOut[1]~5_combout\ $ 
-- (\MasterMind_Core|blink3|numberOut[1]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|blink3|s_nin\(1),
	datab => \MasterMind_Core|blink3|numberOut[1]~5_combout\,
	datac => \MasterMind_Core|blink3|numberOut[1]~_emulated_q\,
	datad => \MasterMind_Core|s_isblink3~combout\,
	combout => \MasterMind_Core|blink3|numberOut[1]~6_combout\);

-- Location: LCCOMB_X82_Y24_N8
\MasterMind_Core|blink3|s_nin[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink3|s_nin\(0) = (GLOBAL(\MasterMind_Core|checkEnd|Selector2~0clkctrl_outclk\) & ((\MasterMind_Core|Counter9_3|s_count\(0)))) # (!GLOBAL(\MasterMind_Core|checkEnd|Selector2~0clkctrl_outclk\) & (\MasterMind_Core|blink3|s_nin\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|blink3|s_nin\(0),
	datac => \MasterMind_Core|Counter9_3|s_count\(0),
	datad => \MasterMind_Core|checkEnd|Selector2~0clkctrl_outclk\,
	combout => \MasterMind_Core|blink3|s_nin\(0));

-- Location: LCCOMB_X82_Y24_N6
\MasterMind_Core|blink3|numberOut[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink3|numberOut[0]~9_combout\ = (GLOBAL(\MasterMind_Core|s_isblink3~clkctrl_outclk\) & ((\MasterMind_Core|blink3|s_nin\(0)))) # (!GLOBAL(\MasterMind_Core|s_isblink3~clkctrl_outclk\) & (\MasterMind_Core|blink3|numberOut[0]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|s_isblink3~clkctrl_outclk\,
	datac => \MasterMind_Core|blink3|numberOut[0]~9_combout\,
	datad => \MasterMind_Core|blink3|s_nin\(0),
	combout => \MasterMind_Core|blink3|numberOut[0]~9_combout\);

-- Location: LCCOMB_X83_Y24_N12
\MasterMind_Core|blink3|numberOut[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink3|numberOut[0]~11_combout\ = \MasterMind_Core|blink3|numberOut[0]~9_combout\ $ (((\MasterMind_Core|blink3|s_nin\(0)) # (!\MasterMind_Core|blink3|checkblink~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|blink3|checkblink~q\,
	datac => \MasterMind_Core|blink3|numberOut[0]~9_combout\,
	datad => \MasterMind_Core|blink3|s_nin\(0),
	combout => \MasterMind_Core|blink3|numberOut[0]~11_combout\);

-- Location: FF_X83_Y24_N13
\MasterMind_Core|blink3|numberOut[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|freq_div1|clkOut~clkctrl_outclk\,
	d => \MasterMind_Core|blink3|numberOut[0]~11_combout\,
	clrn => \MasterMind_Core|ALT_INV_s_isblink3~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|blink3|numberOut[0]~_emulated_q\);

-- Location: LCCOMB_X82_Y24_N28
\MasterMind_Core|blink3|numberOut[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink3|numberOut[0]~10_combout\ = (\MasterMind_Core|s_isblink3~combout\ & (((\MasterMind_Core|blink3|s_nin\(0))))) # (!\MasterMind_Core|s_isblink3~combout\ & (\MasterMind_Core|blink3|numberOut[0]~9_combout\ $ 
-- (((\MasterMind_Core|blink3|numberOut[0]~_emulated_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|s_isblink3~combout\,
	datab => \MasterMind_Core|blink3|numberOut[0]~9_combout\,
	datac => \MasterMind_Core|blink3|s_nin\(0),
	datad => \MasterMind_Core|blink3|numberOut[0]~_emulated_q\,
	combout => \MasterMind_Core|blink3|numberOut[0]~10_combout\);

-- Location: LCCOMB_X83_Y24_N10
\MasterMind_Core|blink3|s_nin[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink3|s_nin\(2) = (GLOBAL(\MasterMind_Core|checkEnd|Selector2~0clkctrl_outclk\) & (\MasterMind_Core|Counter9_3|s_count\(2))) # (!GLOBAL(\MasterMind_Core|checkEnd|Selector2~0clkctrl_outclk\) & ((\MasterMind_Core|blink3|s_nin\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|Counter9_3|s_count\(2),
	datac => \MasterMind_Core|blink3|s_nin\(2),
	datad => \MasterMind_Core|checkEnd|Selector2~0clkctrl_outclk\,
	combout => \MasterMind_Core|blink3|s_nin\(2));

-- Location: LCCOMB_X83_Y24_N4
\MasterMind_Core|blink3|numberOut[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink3|numberOut[2]~13_combout\ = (GLOBAL(\MasterMind_Core|s_isblink3~clkctrl_outclk\) & (\MasterMind_Core|blink3|s_nin\(2))) # (!GLOBAL(\MasterMind_Core|s_isblink3~clkctrl_outclk\) & ((\MasterMind_Core|blink3|numberOut[2]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|blink3|s_nin\(2),
	datac => \MasterMind_Core|s_isblink3~clkctrl_outclk\,
	datad => \MasterMind_Core|blink3|numberOut[2]~13_combout\,
	combout => \MasterMind_Core|blink3|numberOut[2]~13_combout\);

-- Location: LCCOMB_X83_Y24_N26
\MasterMind_Core|blink3|numberOut[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink3|numberOut[2]~15_combout\ = \MasterMind_Core|blink3|numberOut[2]~13_combout\ $ (((\MasterMind_Core|blink3|s_nin\(2)) # (!\MasterMind_Core|blink3|checkblink~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|blink3|checkblink~q\,
	datac => \MasterMind_Core|blink3|numberOut[2]~13_combout\,
	datad => \MasterMind_Core|blink3|s_nin\(2),
	combout => \MasterMind_Core|blink3|numberOut[2]~15_combout\);

-- Location: FF_X83_Y24_N27
\MasterMind_Core|blink3|numberOut[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|freq_div1|clkOut~clkctrl_outclk\,
	d => \MasterMind_Core|blink3|numberOut[2]~15_combout\,
	clrn => \MasterMind_Core|ALT_INV_s_isblink3~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|blink3|numberOut[2]~_emulated_q\);

-- Location: LCCOMB_X83_Y24_N24
\MasterMind_Core|blink3|numberOut[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink3|numberOut[2]~14_combout\ = (\MasterMind_Core|s_isblink3~combout\ & (((\MasterMind_Core|blink3|s_nin\(2))))) # (!\MasterMind_Core|s_isblink3~combout\ & (\MasterMind_Core|blink3|numberOut[2]~_emulated_q\ $ 
-- (((\MasterMind_Core|blink3|numberOut[2]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|blink3|numberOut[2]~_emulated_q\,
	datab => \MasterMind_Core|blink3|s_nin\(2),
	datac => \MasterMind_Core|blink3|numberOut[2]~13_combout\,
	datad => \MasterMind_Core|s_isblink3~combout\,
	combout => \MasterMind_Core|blink3|numberOut[2]~14_combout\);

-- Location: LCCOMB_X105_Y24_N4
\MasterMind_Core|bin7segdec7|decOut_n~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec7|decOut_n~0_combout\ = (\MasterMind_Core|blink3|numberOut[3]~2_combout\ & (\MasterMind_Core|blink3|numberOut[0]~10_combout\ & ((\MasterMind_Core|blink3|numberOut[1]~6_combout\) # 
-- (\MasterMind_Core|blink3|numberOut[2]~14_combout\)))) # (!\MasterMind_Core|blink3|numberOut[3]~2_combout\ & (!\MasterMind_Core|blink3|numberOut[1]~6_combout\ & (\MasterMind_Core|blink3|numberOut[0]~10_combout\ $ 
-- (\MasterMind_Core|blink3|numberOut[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|blink3|numberOut[3]~2_combout\,
	datab => \MasterMind_Core|blink3|numberOut[1]~6_combout\,
	datac => \MasterMind_Core|blink3|numberOut[0]~10_combout\,
	datad => \MasterMind_Core|blink3|numberOut[2]~14_combout\,
	combout => \MasterMind_Core|bin7segdec7|decOut_n~0_combout\);

-- Location: LCCOMB_X105_Y24_N22
\MasterMind_Core|bin7segdec7|decOut_n~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec7|decOut_n~1_combout\ = (\MasterMind_Core|checkEnd|pState.S2~q\) # (\MasterMind_Core|bin7segdec7|decOut_n~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|checkEnd|pState.S2~q\,
	datac => \MasterMind_Core|bin7segdec7|decOut_n~0_combout\,
	combout => \MasterMind_Core|bin7segdec7|decOut_n~1_combout\);

-- Location: LCCOMB_X105_Y24_N28
\MasterMind_Core|bin7segdec7|decOut_n~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec7|decOut_n~2_combout\ = (\MasterMind_Core|blink3|numberOut[3]~2_combout\ & ((\MasterMind_Core|blink3|numberOut[0]~10_combout\ & (\MasterMind_Core|blink3|numberOut[1]~6_combout\)) # 
-- (!\MasterMind_Core|blink3|numberOut[0]~10_combout\ & ((\MasterMind_Core|blink3|numberOut[2]~14_combout\))))) # (!\MasterMind_Core|blink3|numberOut[3]~2_combout\ & (\MasterMind_Core|blink3|numberOut[2]~14_combout\ & 
-- (\MasterMind_Core|blink3|numberOut[1]~6_combout\ $ (\MasterMind_Core|blink3|numberOut[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|blink3|numberOut[3]~2_combout\,
	datab => \MasterMind_Core|blink3|numberOut[1]~6_combout\,
	datac => \MasterMind_Core|blink3|numberOut[0]~10_combout\,
	datad => \MasterMind_Core|blink3|numberOut[2]~14_combout\,
	combout => \MasterMind_Core|bin7segdec7|decOut_n~2_combout\);

-- Location: LCCOMB_X105_Y24_N6
\MasterMind_Core|bin7segdec7|decOut_n~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec7|decOut_n~3_combout\ = (\MasterMind_Core|checkEnd|pState.S2~q\) # (\MasterMind_Core|bin7segdec7|decOut_n~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MasterMind_Core|checkEnd|pState.S2~q\,
	datad => \MasterMind_Core|bin7segdec7|decOut_n~2_combout\,
	combout => \MasterMind_Core|bin7segdec7|decOut_n~3_combout\);

-- Location: LCCOMB_X105_Y24_N8
\MasterMind_Core|bin7segdec7|decOut_n~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec7|decOut_n~4_combout\ = (\MasterMind_Core|blink3|numberOut[1]~6_combout\ & (!\MasterMind_Core|blink3|numberOut[0]~10_combout\ & !\MasterMind_Core|blink3|numberOut[2]~14_combout\)) # 
-- (!\MasterMind_Core|blink3|numberOut[1]~6_combout\ & (\MasterMind_Core|blink3|numberOut[0]~10_combout\ & \MasterMind_Core|blink3|numberOut[2]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|blink3|numberOut[1]~6_combout\,
	datac => \MasterMind_Core|blink3|numberOut[0]~10_combout\,
	datad => \MasterMind_Core|blink3|numberOut[2]~14_combout\,
	combout => \MasterMind_Core|bin7segdec7|decOut_n~4_combout\);

-- Location: LCCOMB_X105_Y24_N30
\MasterMind_Core|bin7segdec7|decOut_n~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec7|decOut_n~5_combout\ = (\MasterMind_Core|checkEnd|pState.S2~q\) # ((\MasterMind_Core|blink3|numberOut[3]~2_combout\ & (!\MasterMind_Core|bin7segdec7|decOut_n~4_combout\ & \MasterMind_Core|blink3|numberOut[2]~14_combout\)) # 
-- (!\MasterMind_Core|blink3|numberOut[3]~2_combout\ & (\MasterMind_Core|bin7segdec7|decOut_n~4_combout\ & !\MasterMind_Core|blink3|numberOut[2]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|blink3|numberOut[3]~2_combout\,
	datab => \MasterMind_Core|checkEnd|pState.S2~q\,
	datac => \MasterMind_Core|bin7segdec7|decOut_n~4_combout\,
	datad => \MasterMind_Core|blink3|numberOut[2]~14_combout\,
	combout => \MasterMind_Core|bin7segdec7|decOut_n~5_combout\);

-- Location: LCCOMB_X105_Y24_N24
\MasterMind_Core|bin7segdec7|decOut_n~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec7|decOut_n~6_combout\ = (\MasterMind_Core|blink3|numberOut[1]~6_combout\ & ((\MasterMind_Core|blink3|numberOut[0]~10_combout\ & ((\MasterMind_Core|blink3|numberOut[2]~14_combout\))) # 
-- (!\MasterMind_Core|blink3|numberOut[0]~10_combout\ & (\MasterMind_Core|blink3|numberOut[3]~2_combout\ & !\MasterMind_Core|blink3|numberOut[2]~14_combout\)))) # (!\MasterMind_Core|blink3|numberOut[1]~6_combout\ & 
-- (!\MasterMind_Core|blink3|numberOut[3]~2_combout\ & (\MasterMind_Core|blink3|numberOut[0]~10_combout\ $ (\MasterMind_Core|blink3|numberOut[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|blink3|numberOut[3]~2_combout\,
	datab => \MasterMind_Core|blink3|numberOut[1]~6_combout\,
	datac => \MasterMind_Core|blink3|numberOut[0]~10_combout\,
	datad => \MasterMind_Core|blink3|numberOut[2]~14_combout\,
	combout => \MasterMind_Core|bin7segdec7|decOut_n~6_combout\);

-- Location: LCCOMB_X112_Y20_N16
\MasterMind_Core|bin7segdec7|decOut_n~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec7|decOut_n~7_combout\ = (\MasterMind_Core|checkEnd|pState.S2~q\) # (\MasterMind_Core|bin7segdec7|decOut_n~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MasterMind_Core|checkEnd|pState.S2~q\,
	datad => \MasterMind_Core|bin7segdec7|decOut_n~6_combout\,
	combout => \MasterMind_Core|bin7segdec7|decOut_n~7_combout\);

-- Location: LCCOMB_X105_Y24_N2
\MasterMind_Core|bin7segdec7|decOut_n~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec7|decOut_n~8_combout\ = (\MasterMind_Core|blink3|numberOut[1]~6_combout\ & (\MasterMind_Core|blink3|numberOut[3]~2_combout\ & !\MasterMind_Core|blink3|numberOut[2]~14_combout\)) # 
-- (!\MasterMind_Core|blink3|numberOut[1]~6_combout\ & ((\MasterMind_Core|blink3|numberOut[2]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|blink3|numberOut[1]~6_combout\,
	datac => \MasterMind_Core|blink3|numberOut[3]~2_combout\,
	datad => \MasterMind_Core|blink3|numberOut[2]~14_combout\,
	combout => \MasterMind_Core|bin7segdec7|decOut_n~8_combout\);

-- Location: LCCOMB_X105_Y24_N16
\MasterMind_Core|bin7segdec7|decOut_n~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec7|decOut_n~9_combout\ = (\MasterMind_Core|checkEnd|pState.S2~q\) # ((\MasterMind_Core|bin7segdec7|decOut_n~8_combout\ & (!\MasterMind_Core|blink3|numberOut[3]~2_combout\)) # (!\MasterMind_Core|bin7segdec7|decOut_n~8_combout\ & 
-- ((\MasterMind_Core|blink3|numberOut[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|blink3|numberOut[3]~2_combout\,
	datab => \MasterMind_Core|checkEnd|pState.S2~q\,
	datac => \MasterMind_Core|blink3|numberOut[0]~10_combout\,
	datad => \MasterMind_Core|bin7segdec7|decOut_n~8_combout\,
	combout => \MasterMind_Core|bin7segdec7|decOut_n~9_combout\);

-- Location: LCCOMB_X105_Y24_N18
\MasterMind_Core|bin7segdec7|decOut_n~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec7|decOut_n~10_combout\ = (\MasterMind_Core|blink3|numberOut[1]~6_combout\ & ((\MasterMind_Core|blink3|numberOut[2]~14_combout\ & ((\MasterMind_Core|blink3|numberOut[0]~10_combout\))) # 
-- (!\MasterMind_Core|blink3|numberOut[2]~14_combout\ & (!\MasterMind_Core|blink3|numberOut[3]~2_combout\)))) # (!\MasterMind_Core|blink3|numberOut[1]~6_combout\ & (\MasterMind_Core|blink3|numberOut[0]~10_combout\ & 
-- (\MasterMind_Core|blink3|numberOut[3]~2_combout\ $ (!\MasterMind_Core|blink3|numberOut[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|blink3|numberOut[3]~2_combout\,
	datab => \MasterMind_Core|blink3|numberOut[1]~6_combout\,
	datac => \MasterMind_Core|blink3|numberOut[0]~10_combout\,
	datad => \MasterMind_Core|blink3|numberOut[2]~14_combout\,
	combout => \MasterMind_Core|bin7segdec7|decOut_n~10_combout\);

-- Location: LCCOMB_X105_Y24_N20
\MasterMind_Core|bin7segdec7|decOut_n~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec7|decOut_n~11_combout\ = (\MasterMind_Core|checkEnd|pState.S2~q\) # (\MasterMind_Core|bin7segdec7|decOut_n~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MasterMind_Core|checkEnd|pState.S2~q\,
	datad => \MasterMind_Core|bin7segdec7|decOut_n~10_combout\,
	combout => \MasterMind_Core|bin7segdec7|decOut_n~11_combout\);

-- Location: LCCOMB_X105_Y24_N10
\MasterMind_Core|bin7segdec7|decOut_n~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec7|decOut_n~12_combout\ = (\MasterMind_Core|blink3|numberOut[1]~6_combout\ & (((!\MasterMind_Core|blink3|numberOut[2]~14_combout\) # (!\MasterMind_Core|blink3|numberOut[0]~10_combout\)))) # 
-- (!\MasterMind_Core|blink3|numberOut[1]~6_combout\ & ((\MasterMind_Core|blink3|numberOut[3]~2_combout\ & ((\MasterMind_Core|blink3|numberOut[0]~10_combout\) # (!\MasterMind_Core|blink3|numberOut[2]~14_combout\))) # 
-- (!\MasterMind_Core|blink3|numberOut[3]~2_combout\ & ((\MasterMind_Core|blink3|numberOut[2]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|blink3|numberOut[3]~2_combout\,
	datab => \MasterMind_Core|blink3|numberOut[1]~6_combout\,
	datac => \MasterMind_Core|blink3|numberOut[0]~10_combout\,
	datad => \MasterMind_Core|blink3|numberOut[2]~14_combout\,
	combout => \MasterMind_Core|bin7segdec7|decOut_n~12_combout\);

-- Location: LCCOMB_X105_Y24_N12
\MasterMind_Core|bin7segdec7|decOut_n~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec7|decOut_n~13_combout\ = (\MasterMind_Core|checkEnd|pState.S2~q\) # (!\MasterMind_Core|bin7segdec7|decOut_n~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MasterMind_Core|checkEnd|pState.S2~q\,
	datad => \MasterMind_Core|bin7segdec7|decOut_n~12_combout\,
	combout => \MasterMind_Core|bin7segdec7|decOut_n~13_combout\);

-- Location: LCCOMB_X82_Y19_N6
\MasterMind_Core|s_isblink2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|s_isblink2~0_combout\ = (\MasterMind_Core|checkEnd|s_p\(2) & (!\MasterMind_Core|checkEnd|s_p\(0) & (!\MasterMind_Core|checkEnd|s_p\(1) & \MasterMind_Core|checkEnd|pState.S3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|checkEnd|s_p\(2),
	datab => \MasterMind_Core|checkEnd|s_p\(0),
	datac => \MasterMind_Core|checkEnd|s_p\(1),
	datad => \MasterMind_Core|checkEnd|pState.S3~q\,
	combout => \MasterMind_Core|s_isblink2~0_combout\);

-- Location: LCCOMB_X82_Y19_N24
\MasterMind_Core|s_isblink2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|s_isblink2~combout\ = (!\MasterMind_Core|checkEnd|pState.S1~q\ & (!\MasterMind_Core|s_up2~0_combout\ & ((\MasterMind_Core|checkEnd|s_p\(3)) # (!\MasterMind_Core|s_isblink2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|checkEnd|pState.S1~q\,
	datab => \MasterMind_Core|checkEnd|s_p\(3),
	datac => \MasterMind_Core|s_up2~0_combout\,
	datad => \MasterMind_Core|s_isblink2~0_combout\,
	combout => \MasterMind_Core|s_isblink2~combout\);

-- Location: LCCOMB_X81_Y20_N14
\MasterMind_Core|blink2|checkblink~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink2|checkblink~0_combout\ = !\MasterMind_Core|blink2|checkblink~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MasterMind_Core|blink2|checkblink~q\,
	combout => \MasterMind_Core|blink2|checkblink~0_combout\);

-- Location: CLKCTRL_G18
\MasterMind_Core|s_isblink2~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \MasterMind_Core|s_isblink2~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \MasterMind_Core|s_isblink2~clkctrl_outclk\);

-- Location: FF_X81_Y20_N15
\MasterMind_Core|blink2|checkblink\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|freq_div1|clkOut~clkctrl_outclk\,
	d => \MasterMind_Core|blink2|checkblink~0_combout\,
	clrn => \MasterMind_Core|ALT_INV_s_isblink2~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|blink2|checkblink~q\);

-- Location: LCCOMB_X81_Y20_N30
\MasterMind_Core|blink2|s_nin[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink2|s_nin\(3) = (GLOBAL(\MasterMind_Core|checkEnd|Selector2~0clkctrl_outclk\) & ((\MasterMind_Core|Counter9_2|s_count\(3)))) # (!GLOBAL(\MasterMind_Core|checkEnd|Selector2~0clkctrl_outclk\) & (\MasterMind_Core|blink2|s_nin\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|blink2|s_nin\(3),
	datac => \MasterMind_Core|Counter9_2|s_count\(3),
	datad => \MasterMind_Core|checkEnd|Selector2~0clkctrl_outclk\,
	combout => \MasterMind_Core|blink2|s_nin\(3));

-- Location: LCCOMB_X81_Y20_N24
\MasterMind_Core|blink2|numberOut[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink2|numberOut[3]~1_combout\ = (GLOBAL(\MasterMind_Core|s_isblink2~clkctrl_outclk\) & (\MasterMind_Core|blink2|s_nin\(3))) # (!GLOBAL(\MasterMind_Core|s_isblink2~clkctrl_outclk\) & ((\MasterMind_Core|blink2|numberOut[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|blink2|s_nin\(3),
	datab => \MasterMind_Core|blink2|numberOut[3]~1_combout\,
	datad => \MasterMind_Core|s_isblink2~clkctrl_outclk\,
	combout => \MasterMind_Core|blink2|numberOut[3]~1_combout\);

-- Location: LCCOMB_X81_Y20_N4
\MasterMind_Core|blink2|numberOut[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink2|numberOut[3]~3_combout\ = \MasterMind_Core|blink2|numberOut[3]~1_combout\ $ (((\MasterMind_Core|blink2|s_nin\(3)) # (!\MasterMind_Core|blink2|checkblink~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|blink2|checkblink~q\,
	datac => \MasterMind_Core|blink2|s_nin\(3),
	datad => \MasterMind_Core|blink2|numberOut[3]~1_combout\,
	combout => \MasterMind_Core|blink2|numberOut[3]~3_combout\);

-- Location: FF_X81_Y20_N5
\MasterMind_Core|blink2|numberOut[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|freq_div1|clkOut~clkctrl_outclk\,
	d => \MasterMind_Core|blink2|numberOut[3]~3_combout\,
	clrn => \MasterMind_Core|ALT_INV_s_isblink2~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|blink2|numberOut[3]~_emulated_q\);

-- Location: LCCOMB_X81_Y20_N6
\MasterMind_Core|blink2|numberOut[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink2|numberOut[3]~2_combout\ = (\MasterMind_Core|s_isblink2~combout\ & (((\MasterMind_Core|blink2|s_nin\(3))))) # (!\MasterMind_Core|s_isblink2~combout\ & (\MasterMind_Core|blink2|numberOut[3]~_emulated_q\ $ 
-- (((\MasterMind_Core|blink2|numberOut[3]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|s_isblink2~combout\,
	datab => \MasterMind_Core|blink2|numberOut[3]~_emulated_q\,
	datac => \MasterMind_Core|blink2|s_nin\(3),
	datad => \MasterMind_Core|blink2|numberOut[3]~1_combout\,
	combout => \MasterMind_Core|blink2|numberOut[3]~2_combout\);

-- Location: LCCOMB_X81_Y20_N22
\MasterMind_Core|blink2|s_nin[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink2|s_nin\(1) = (GLOBAL(\MasterMind_Core|checkEnd|Selector2~0clkctrl_outclk\) & ((\MasterMind_Core|Counter9_2|s_count\(1)))) # (!GLOBAL(\MasterMind_Core|checkEnd|Selector2~0clkctrl_outclk\) & (\MasterMind_Core|blink2|s_nin\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|blink2|s_nin\(1),
	datac => \MasterMind_Core|Counter9_2|s_count\(1),
	datad => \MasterMind_Core|checkEnd|Selector2~0clkctrl_outclk\,
	combout => \MasterMind_Core|blink2|s_nin\(1));

-- Location: LCCOMB_X81_Y20_N28
\MasterMind_Core|blink2|numberOut[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink2|numberOut[1]~5_combout\ = (GLOBAL(\MasterMind_Core|s_isblink2~clkctrl_outclk\) & (\MasterMind_Core|blink2|s_nin\(1))) # (!GLOBAL(\MasterMind_Core|s_isblink2~clkctrl_outclk\) & ((\MasterMind_Core|blink2|numberOut[1]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|blink2|s_nin\(1),
	datab => \MasterMind_Core|blink2|numberOut[1]~5_combout\,
	datad => \MasterMind_Core|s_isblink2~clkctrl_outclk\,
	combout => \MasterMind_Core|blink2|numberOut[1]~5_combout\);

-- Location: LCCOMB_X81_Y20_N20
\MasterMind_Core|blink2|numberOut[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink2|numberOut[1]~7_combout\ = \MasterMind_Core|blink2|numberOut[1]~5_combout\ $ (((\MasterMind_Core|blink2|s_nin\(1)) # (!\MasterMind_Core|blink2|checkblink~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|blink2|checkblink~q\,
	datac => \MasterMind_Core|blink2|s_nin\(1),
	datad => \MasterMind_Core|blink2|numberOut[1]~5_combout\,
	combout => \MasterMind_Core|blink2|numberOut[1]~7_combout\);

-- Location: FF_X81_Y20_N21
\MasterMind_Core|blink2|numberOut[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|freq_div1|clkOut~clkctrl_outclk\,
	d => \MasterMind_Core|blink2|numberOut[1]~7_combout\,
	clrn => \MasterMind_Core|ALT_INV_s_isblink2~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|blink2|numberOut[1]~_emulated_q\);

-- Location: LCCOMB_X81_Y20_N10
\MasterMind_Core|blink2|numberOut[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink2|numberOut[1]~6_combout\ = (\MasterMind_Core|s_isblink2~combout\ & (\MasterMind_Core|blink2|s_nin\(1))) # (!\MasterMind_Core|s_isblink2~combout\ & ((\MasterMind_Core|blink2|numberOut[1]~5_combout\ $ 
-- (\MasterMind_Core|blink2|numberOut[1]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|s_isblink2~combout\,
	datab => \MasterMind_Core|blink2|s_nin\(1),
	datac => \MasterMind_Core|blink2|numberOut[1]~5_combout\,
	datad => \MasterMind_Core|blink2|numberOut[1]~_emulated_q\,
	combout => \MasterMind_Core|blink2|numberOut[1]~6_combout\);

-- Location: LCCOMB_X81_Y20_N26
\MasterMind_Core|blink2|s_nin[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink2|s_nin\(0) = (GLOBAL(\MasterMind_Core|checkEnd|Selector2~0clkctrl_outclk\) & ((\MasterMind_Core|Counter9_2|s_count\(0)))) # (!GLOBAL(\MasterMind_Core|checkEnd|Selector2~0clkctrl_outclk\) & (\MasterMind_Core|blink2|s_nin\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|blink2|s_nin\(0),
	datac => \MasterMind_Core|Counter9_2|s_count\(0),
	datad => \MasterMind_Core|checkEnd|Selector2~0clkctrl_outclk\,
	combout => \MasterMind_Core|blink2|s_nin\(0));

-- Location: LCCOMB_X81_Y20_N16
\MasterMind_Core|blink2|numberOut[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink2|numberOut[0]~9_combout\ = (GLOBAL(\MasterMind_Core|s_isblink2~clkctrl_outclk\) & (\MasterMind_Core|blink2|s_nin\(0))) # (!GLOBAL(\MasterMind_Core|s_isblink2~clkctrl_outclk\) & ((\MasterMind_Core|blink2|numberOut[0]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|blink2|s_nin\(0),
	datac => \MasterMind_Core|blink2|numberOut[0]~9_combout\,
	datad => \MasterMind_Core|s_isblink2~clkctrl_outclk\,
	combout => \MasterMind_Core|blink2|numberOut[0]~9_combout\);

-- Location: LCCOMB_X81_Y20_N12
\MasterMind_Core|blink2|numberOut[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink2|numberOut[0]~11_combout\ = \MasterMind_Core|blink2|numberOut[0]~9_combout\ $ (((\MasterMind_Core|blink2|s_nin\(0)) # (!\MasterMind_Core|blink2|checkblink~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|blink2|checkblink~q\,
	datac => \MasterMind_Core|blink2|s_nin\(0),
	datad => \MasterMind_Core|blink2|numberOut[0]~9_combout\,
	combout => \MasterMind_Core|blink2|numberOut[0]~11_combout\);

-- Location: FF_X81_Y20_N13
\MasterMind_Core|blink2|numberOut[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|freq_div1|clkOut~clkctrl_outclk\,
	d => \MasterMind_Core|blink2|numberOut[0]~11_combout\,
	clrn => \MasterMind_Core|ALT_INV_s_isblink2~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|blink2|numberOut[0]~_emulated_q\);

-- Location: LCCOMB_X80_Y20_N4
\MasterMind_Core|blink2|numberOut[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink2|numberOut[0]~10_combout\ = (\MasterMind_Core|s_isblink2~combout\ & (((\MasterMind_Core|blink2|s_nin\(0))))) # (!\MasterMind_Core|s_isblink2~combout\ & (\MasterMind_Core|blink2|numberOut[0]~9_combout\ $ 
-- ((\MasterMind_Core|blink2|numberOut[0]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|blink2|numberOut[0]~9_combout\,
	datab => \MasterMind_Core|blink2|numberOut[0]~_emulated_q\,
	datac => \MasterMind_Core|blink2|s_nin\(0),
	datad => \MasterMind_Core|s_isblink2~combout\,
	combout => \MasterMind_Core|blink2|numberOut[0]~10_combout\);

-- Location: LCCOMB_X81_Y20_N2
\MasterMind_Core|blink2|s_nin[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink2|s_nin\(2) = (GLOBAL(\MasterMind_Core|checkEnd|Selector2~0clkctrl_outclk\) & ((\MasterMind_Core|Counter9_2|s_count\(2)))) # (!GLOBAL(\MasterMind_Core|checkEnd|Selector2~0clkctrl_outclk\) & (\MasterMind_Core|blink2|s_nin\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|blink2|s_nin\(2),
	datac => \MasterMind_Core|Counter9_2|s_count\(2),
	datad => \MasterMind_Core|checkEnd|Selector2~0clkctrl_outclk\,
	combout => \MasterMind_Core|blink2|s_nin\(2));

-- Location: LCCOMB_X81_Y20_N8
\MasterMind_Core|blink2|numberOut[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink2|numberOut[2]~13_combout\ = (GLOBAL(\MasterMind_Core|s_isblink2~clkctrl_outclk\) & ((\MasterMind_Core|blink2|s_nin\(2)))) # (!GLOBAL(\MasterMind_Core|s_isblink2~clkctrl_outclk\) & (\MasterMind_Core|blink2|numberOut[2]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|blink2|numberOut[2]~13_combout\,
	datac => \MasterMind_Core|blink2|s_nin\(2),
	datad => \MasterMind_Core|s_isblink2~clkctrl_outclk\,
	combout => \MasterMind_Core|blink2|numberOut[2]~13_combout\);

-- Location: LCCOMB_X81_Y20_N18
\MasterMind_Core|blink2|numberOut[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink2|numberOut[2]~15_combout\ = \MasterMind_Core|blink2|numberOut[2]~13_combout\ $ (((\MasterMind_Core|blink2|s_nin\(2)) # (!\MasterMind_Core|blink2|checkblink~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|blink2|checkblink~q\,
	datac => \MasterMind_Core|blink2|numberOut[2]~13_combout\,
	datad => \MasterMind_Core|blink2|s_nin\(2),
	combout => \MasterMind_Core|blink2|numberOut[2]~15_combout\);

-- Location: FF_X81_Y20_N19
\MasterMind_Core|blink2|numberOut[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|freq_div1|clkOut~clkctrl_outclk\,
	d => \MasterMind_Core|blink2|numberOut[2]~15_combout\,
	clrn => \MasterMind_Core|ALT_INV_s_isblink2~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|blink2|numberOut[2]~_emulated_q\);

-- Location: LCCOMB_X81_Y20_N0
\MasterMind_Core|blink2|numberOut[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink2|numberOut[2]~14_combout\ = (\MasterMind_Core|s_isblink2~combout\ & (\MasterMind_Core|blink2|s_nin\(2))) # (!\MasterMind_Core|s_isblink2~combout\ & ((\MasterMind_Core|blink2|numberOut[2]~_emulated_q\ $ 
-- (\MasterMind_Core|blink2|numberOut[2]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|s_isblink2~combout\,
	datab => \MasterMind_Core|blink2|s_nin\(2),
	datac => \MasterMind_Core|blink2|numberOut[2]~_emulated_q\,
	datad => \MasterMind_Core|blink2|numberOut[2]~13_combout\,
	combout => \MasterMind_Core|blink2|numberOut[2]~14_combout\);

-- Location: LCCOMB_X111_Y20_N12
\MasterMind_Core|bin7segdec6|decOut_n~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec6|decOut_n~0_combout\ = (\MasterMind_Core|blink2|numberOut[3]~2_combout\ & (\MasterMind_Core|blink2|numberOut[0]~10_combout\ & ((\MasterMind_Core|blink2|numberOut[1]~6_combout\) # 
-- (\MasterMind_Core|blink2|numberOut[2]~14_combout\)))) # (!\MasterMind_Core|blink2|numberOut[3]~2_combout\ & (!\MasterMind_Core|blink2|numberOut[1]~6_combout\ & (\MasterMind_Core|blink2|numberOut[0]~10_combout\ $ 
-- (\MasterMind_Core|blink2|numberOut[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|blink2|numberOut[3]~2_combout\,
	datab => \MasterMind_Core|blink2|numberOut[1]~6_combout\,
	datac => \MasterMind_Core|blink2|numberOut[0]~10_combout\,
	datad => \MasterMind_Core|blink2|numberOut[2]~14_combout\,
	combout => \MasterMind_Core|bin7segdec6|decOut_n~0_combout\);

-- Location: LCCOMB_X111_Y20_N10
\MasterMind_Core|bin7segdec6|decOut_n~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec6|decOut_n~1_combout\ = (\MasterMind_Core|checkEnd|pState.S2~q\) # (\MasterMind_Core|bin7segdec6|decOut_n~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MasterMind_Core|checkEnd|pState.S2~q\,
	datad => \MasterMind_Core|bin7segdec6|decOut_n~0_combout\,
	combout => \MasterMind_Core|bin7segdec6|decOut_n~1_combout\);

-- Location: LCCOMB_X111_Y20_N8
\MasterMind_Core|bin7segdec6|decOut_n~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec6|decOut_n~2_combout\ = (\MasterMind_Core|blink2|numberOut[3]~2_combout\ & ((\MasterMind_Core|blink2|numberOut[0]~10_combout\ & (\MasterMind_Core|blink2|numberOut[1]~6_combout\)) # 
-- (!\MasterMind_Core|blink2|numberOut[0]~10_combout\ & ((\MasterMind_Core|blink2|numberOut[2]~14_combout\))))) # (!\MasterMind_Core|blink2|numberOut[3]~2_combout\ & (\MasterMind_Core|blink2|numberOut[2]~14_combout\ & 
-- (\MasterMind_Core|blink2|numberOut[1]~6_combout\ $ (\MasterMind_Core|blink2|numberOut[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|blink2|numberOut[3]~2_combout\,
	datab => \MasterMind_Core|blink2|numberOut[1]~6_combout\,
	datac => \MasterMind_Core|blink2|numberOut[0]~10_combout\,
	datad => \MasterMind_Core|blink2|numberOut[2]~14_combout\,
	combout => \MasterMind_Core|bin7segdec6|decOut_n~2_combout\);

-- Location: LCCOMB_X112_Y20_N6
\MasterMind_Core|bin7segdec6|decOut_n~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec6|decOut_n~3_combout\ = (\MasterMind_Core|checkEnd|pState.S2~q\) # (\MasterMind_Core|bin7segdec6|decOut_n~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MasterMind_Core|checkEnd|pState.S2~q\,
	datad => \MasterMind_Core|bin7segdec6|decOut_n~2_combout\,
	combout => \MasterMind_Core|bin7segdec6|decOut_n~3_combout\);

-- Location: LCCOMB_X111_Y20_N22
\MasterMind_Core|bin7segdec6|decOut_n~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec6|decOut_n~4_combout\ = (\MasterMind_Core|blink2|numberOut[1]~6_combout\ & (!\MasterMind_Core|blink2|numberOut[0]~10_combout\ & !\MasterMind_Core|blink2|numberOut[2]~14_combout\)) # 
-- (!\MasterMind_Core|blink2|numberOut[1]~6_combout\ & (\MasterMind_Core|blink2|numberOut[0]~10_combout\ & \MasterMind_Core|blink2|numberOut[2]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|blink2|numberOut[1]~6_combout\,
	datac => \MasterMind_Core|blink2|numberOut[0]~10_combout\,
	datad => \MasterMind_Core|blink2|numberOut[2]~14_combout\,
	combout => \MasterMind_Core|bin7segdec6|decOut_n~4_combout\);

-- Location: LCCOMB_X111_Y20_N4
\MasterMind_Core|bin7segdec6|decOut_n~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec6|decOut_n~5_combout\ = (\MasterMind_Core|checkEnd|pState.S2~q\) # ((\MasterMind_Core|blink2|numberOut[3]~2_combout\ & (\MasterMind_Core|blink2|numberOut[2]~14_combout\ & !\MasterMind_Core|bin7segdec6|decOut_n~4_combout\)) # 
-- (!\MasterMind_Core|blink2|numberOut[3]~2_combout\ & (!\MasterMind_Core|blink2|numberOut[2]~14_combout\ & \MasterMind_Core|bin7segdec6|decOut_n~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|blink2|numberOut[3]~2_combout\,
	datab => \MasterMind_Core|blink2|numberOut[2]~14_combout\,
	datac => \MasterMind_Core|bin7segdec6|decOut_n~4_combout\,
	datad => \MasterMind_Core|checkEnd|pState.S2~q\,
	combout => \MasterMind_Core|bin7segdec6|decOut_n~5_combout\);

-- Location: LCCOMB_X111_Y20_N2
\MasterMind_Core|bin7segdec6|decOut_n~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec6|decOut_n~6_combout\ = (\MasterMind_Core|blink2|numberOut[1]~6_combout\ & ((\MasterMind_Core|blink2|numberOut[0]~10_combout\ & ((\MasterMind_Core|blink2|numberOut[2]~14_combout\))) # 
-- (!\MasterMind_Core|blink2|numberOut[0]~10_combout\ & (\MasterMind_Core|blink2|numberOut[3]~2_combout\ & !\MasterMind_Core|blink2|numberOut[2]~14_combout\)))) # (!\MasterMind_Core|blink2|numberOut[1]~6_combout\ & 
-- (!\MasterMind_Core|blink2|numberOut[3]~2_combout\ & (\MasterMind_Core|blink2|numberOut[0]~10_combout\ $ (\MasterMind_Core|blink2|numberOut[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|blink2|numberOut[3]~2_combout\,
	datab => \MasterMind_Core|blink2|numberOut[1]~6_combout\,
	datac => \MasterMind_Core|blink2|numberOut[0]~10_combout\,
	datad => \MasterMind_Core|blink2|numberOut[2]~14_combout\,
	combout => \MasterMind_Core|bin7segdec6|decOut_n~6_combout\);

-- Location: LCCOMB_X112_Y20_N12
\MasterMind_Core|bin7segdec6|decOut_n~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec6|decOut_n~7_combout\ = (\MasterMind_Core|checkEnd|pState.S2~q\) # (\MasterMind_Core|bin7segdec6|decOut_n~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MasterMind_Core|checkEnd|pState.S2~q\,
	datad => \MasterMind_Core|bin7segdec6|decOut_n~6_combout\,
	combout => \MasterMind_Core|bin7segdec6|decOut_n~7_combout\);

-- Location: LCCOMB_X111_Y20_N20
\MasterMind_Core|bin7segdec6|decOut_n~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec6|decOut_n~8_combout\ = (\MasterMind_Core|blink2|numberOut[1]~6_combout\ & (\MasterMind_Core|blink2|numberOut[3]~2_combout\ & !\MasterMind_Core|blink2|numberOut[2]~14_combout\)) # 
-- (!\MasterMind_Core|blink2|numberOut[1]~6_combout\ & ((\MasterMind_Core|blink2|numberOut[2]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|blink2|numberOut[1]~6_combout\,
	datac => \MasterMind_Core|blink2|numberOut[3]~2_combout\,
	datad => \MasterMind_Core|blink2|numberOut[2]~14_combout\,
	combout => \MasterMind_Core|bin7segdec6|decOut_n~8_combout\);

-- Location: LCCOMB_X111_Y20_N18
\MasterMind_Core|bin7segdec6|decOut_n~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec6|decOut_n~9_combout\ = (\MasterMind_Core|checkEnd|pState.S2~q\) # ((\MasterMind_Core|bin7segdec6|decOut_n~8_combout\ & ((!\MasterMind_Core|blink2|numberOut[3]~2_combout\))) # (!\MasterMind_Core|bin7segdec6|decOut_n~8_combout\ & 
-- (\MasterMind_Core|blink2|numberOut[0]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|checkEnd|pState.S2~q\,
	datab => \MasterMind_Core|bin7segdec6|decOut_n~8_combout\,
	datac => \MasterMind_Core|blink2|numberOut[0]~10_combout\,
	datad => \MasterMind_Core|blink2|numberOut[3]~2_combout\,
	combout => \MasterMind_Core|bin7segdec6|decOut_n~9_combout\);

-- Location: LCCOMB_X111_Y20_N24
\MasterMind_Core|bin7segdec6|decOut_n~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec6|decOut_n~10_combout\ = (\MasterMind_Core|blink2|numberOut[1]~6_combout\ & ((\MasterMind_Core|blink2|numberOut[2]~14_combout\ & ((\MasterMind_Core|blink2|numberOut[0]~10_combout\))) # 
-- (!\MasterMind_Core|blink2|numberOut[2]~14_combout\ & (!\MasterMind_Core|blink2|numberOut[3]~2_combout\)))) # (!\MasterMind_Core|blink2|numberOut[1]~6_combout\ & (\MasterMind_Core|blink2|numberOut[0]~10_combout\ & 
-- (\MasterMind_Core|blink2|numberOut[3]~2_combout\ $ (!\MasterMind_Core|blink2|numberOut[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|blink2|numberOut[3]~2_combout\,
	datab => \MasterMind_Core|blink2|numberOut[1]~6_combout\,
	datac => \MasterMind_Core|blink2|numberOut[0]~10_combout\,
	datad => \MasterMind_Core|blink2|numberOut[2]~14_combout\,
	combout => \MasterMind_Core|bin7segdec6|decOut_n~10_combout\);

-- Location: LCCOMB_X112_Y20_N10
\MasterMind_Core|bin7segdec6|decOut_n~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec6|decOut_n~11_combout\ = (\MasterMind_Core|checkEnd|pState.S2~q\) # (\MasterMind_Core|bin7segdec6|decOut_n~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MasterMind_Core|checkEnd|pState.S2~q\,
	datad => \MasterMind_Core|bin7segdec6|decOut_n~10_combout\,
	combout => \MasterMind_Core|bin7segdec6|decOut_n~11_combout\);

-- Location: LCCOMB_X111_Y20_N14
\MasterMind_Core|bin7segdec6|decOut_n~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec6|decOut_n~12_combout\ = (\MasterMind_Core|blink2|numberOut[1]~6_combout\ & (((!\MasterMind_Core|blink2|numberOut[2]~14_combout\) # (!\MasterMind_Core|blink2|numberOut[0]~10_combout\)))) # 
-- (!\MasterMind_Core|blink2|numberOut[1]~6_combout\ & ((\MasterMind_Core|blink2|numberOut[3]~2_combout\ & ((\MasterMind_Core|blink2|numberOut[0]~10_combout\) # (!\MasterMind_Core|blink2|numberOut[2]~14_combout\))) # 
-- (!\MasterMind_Core|blink2|numberOut[3]~2_combout\ & ((\MasterMind_Core|blink2|numberOut[2]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|blink2|numberOut[3]~2_combout\,
	datab => \MasterMind_Core|blink2|numberOut[1]~6_combout\,
	datac => \MasterMind_Core|blink2|numberOut[0]~10_combout\,
	datad => \MasterMind_Core|blink2|numberOut[2]~14_combout\,
	combout => \MasterMind_Core|bin7segdec6|decOut_n~12_combout\);

-- Location: LCCOMB_X112_Y20_N0
\MasterMind_Core|bin7segdec6|decOut_n~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec6|decOut_n~13_combout\ = (\MasterMind_Core|checkEnd|pState.S2~q\) # (!\MasterMind_Core|bin7segdec6|decOut_n~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MasterMind_Core|checkEnd|pState.S2~q\,
	datad => \MasterMind_Core|bin7segdec6|decOut_n~12_combout\,
	combout => \MasterMind_Core|bin7segdec6|decOut_n~13_combout\);

-- Location: LCCOMB_X82_Y19_N20
\MasterMind_Core|s_isblink1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|s_isblink1~combout\ = (!\MasterMind_Core|s_up1~0_combout\ & (!\MasterMind_Core|checkEnd|pState.S1~q\ & ((!\MasterMind_Core|bin7segdec2|Equal7~0_combout\) # (!\MasterMind_Core|checkEnd|pState.S3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|checkEnd|pState.S3~q\,
	datab => \MasterMind_Core|s_up1~0_combout\,
	datac => \MasterMind_Core|checkEnd|pState.S1~q\,
	datad => \MasterMind_Core|bin7segdec2|Equal7~0_combout\,
	combout => \MasterMind_Core|s_isblink1~combout\);

-- Location: LCCOMB_X85_Y23_N8
\MasterMind_Core|blink1|s_nin[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink1|s_nin\(3) = (GLOBAL(\MasterMind_Core|checkEnd|Selector2~0clkctrl_outclk\) & ((\MasterMind_Core|Counter9_1|s_count\(3)))) # (!GLOBAL(\MasterMind_Core|checkEnd|Selector2~0clkctrl_outclk\) & (\MasterMind_Core|blink1|s_nin\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|blink1|s_nin\(3),
	datac => \MasterMind_Core|Counter9_1|s_count\(3),
	datad => \MasterMind_Core|checkEnd|Selector2~0clkctrl_outclk\,
	combout => \MasterMind_Core|blink1|s_nin\(3));

-- Location: CLKCTRL_G17
\MasterMind_Core|s_isblink1~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \MasterMind_Core|s_isblink1~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \MasterMind_Core|s_isblink1~clkctrl_outclk\);

-- Location: LCCOMB_X85_Y23_N14
\MasterMind_Core|blink1|numberOut[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink1|numberOut[3]~1_combout\ = (GLOBAL(\MasterMind_Core|s_isblink1~clkctrl_outclk\) & (\MasterMind_Core|blink1|s_nin\(3))) # (!GLOBAL(\MasterMind_Core|s_isblink1~clkctrl_outclk\) & ((\MasterMind_Core|blink1|numberOut[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|blink1|s_nin\(3),
	datab => \MasterMind_Core|blink1|numberOut[3]~1_combout\,
	datac => \MasterMind_Core|s_isblink1~clkctrl_outclk\,
	combout => \MasterMind_Core|blink1|numberOut[3]~1_combout\);

-- Location: LCCOMB_X86_Y23_N28
\MasterMind_Core|blink1|checkblink~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink1|checkblink~0_combout\ = !\MasterMind_Core|blink1|checkblink~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MasterMind_Core|blink1|checkblink~q\,
	combout => \MasterMind_Core|blink1|checkblink~0_combout\);

-- Location: FF_X86_Y23_N29
\MasterMind_Core|blink1|checkblink\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|freq_div1|clkOut~clkctrl_outclk\,
	d => \MasterMind_Core|blink1|checkblink~0_combout\,
	clrn => \MasterMind_Core|ALT_INV_s_isblink1~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|blink1|checkblink~q\);

-- Location: LCCOMB_X85_Y23_N16
\MasterMind_Core|blink1|numberOut[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink1|numberOut[3]~3_combout\ = \MasterMind_Core|blink1|numberOut[3]~1_combout\ $ (((\MasterMind_Core|blink1|s_nin\(3)) # (!\MasterMind_Core|blink1|checkblink~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|blink1|s_nin\(3),
	datac => \MasterMind_Core|blink1|numberOut[3]~1_combout\,
	datad => \MasterMind_Core|blink1|checkblink~q\,
	combout => \MasterMind_Core|blink1|numberOut[3]~3_combout\);

-- Location: FF_X85_Y23_N17
\MasterMind_Core|blink1|numberOut[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|freq_div1|clkOut~clkctrl_outclk\,
	d => \MasterMind_Core|blink1|numberOut[3]~3_combout\,
	clrn => \MasterMind_Core|ALT_INV_s_isblink1~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|blink1|numberOut[3]~_emulated_q\);

-- Location: LCCOMB_X85_Y23_N18
\MasterMind_Core|blink1|numberOut[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink1|numberOut[3]~2_combout\ = (\MasterMind_Core|s_isblink1~combout\ & (((\MasterMind_Core|blink1|s_nin\(3))))) # (!\MasterMind_Core|s_isblink1~combout\ & (\MasterMind_Core|blink1|numberOut[3]~1_combout\ $ 
-- (((\MasterMind_Core|blink1|numberOut[3]~_emulated_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|s_isblink1~combout\,
	datab => \MasterMind_Core|blink1|numberOut[3]~1_combout\,
	datac => \MasterMind_Core|blink1|s_nin\(3),
	datad => \MasterMind_Core|blink1|numberOut[3]~_emulated_q\,
	combout => \MasterMind_Core|blink1|numberOut[3]~2_combout\);

-- Location: LCCOMB_X86_Y23_N30
\MasterMind_Core|blink1|s_nin[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink1|s_nin\(1) = (GLOBAL(\MasterMind_Core|checkEnd|Selector2~0clkctrl_outclk\) & ((\MasterMind_Core|Counter9_1|s_count\(1)))) # (!GLOBAL(\MasterMind_Core|checkEnd|Selector2~0clkctrl_outclk\) & (\MasterMind_Core|blink1|s_nin\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|blink1|s_nin\(1),
	datac => \MasterMind_Core|Counter9_1|s_count\(1),
	datad => \MasterMind_Core|checkEnd|Selector2~0clkctrl_outclk\,
	combout => \MasterMind_Core|blink1|s_nin\(1));

-- Location: LCCOMB_X86_Y23_N24
\MasterMind_Core|blink1|numberOut[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink1|numberOut[1]~5_combout\ = (GLOBAL(\MasterMind_Core|s_isblink1~clkctrl_outclk\) & (\MasterMind_Core|blink1|s_nin\(1))) # (!GLOBAL(\MasterMind_Core|s_isblink1~clkctrl_outclk\) & ((\MasterMind_Core|blink1|numberOut[1]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|blink1|s_nin\(1),
	datac => \MasterMind_Core|blink1|numberOut[1]~5_combout\,
	datad => \MasterMind_Core|s_isblink1~clkctrl_outclk\,
	combout => \MasterMind_Core|blink1|numberOut[1]~5_combout\);

-- Location: LCCOMB_X86_Y23_N12
\MasterMind_Core|blink1|numberOut[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink1|numberOut[1]~7_combout\ = \MasterMind_Core|blink1|numberOut[1]~5_combout\ $ (((\MasterMind_Core|blink1|s_nin\(1)) # (!\MasterMind_Core|blink1|checkblink~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|blink1|checkblink~q\,
	datac => \MasterMind_Core|blink1|s_nin\(1),
	datad => \MasterMind_Core|blink1|numberOut[1]~5_combout\,
	combout => \MasterMind_Core|blink1|numberOut[1]~7_combout\);

-- Location: FF_X86_Y23_N13
\MasterMind_Core|blink1|numberOut[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|freq_div1|clkOut~clkctrl_outclk\,
	d => \MasterMind_Core|blink1|numberOut[1]~7_combout\,
	clrn => \MasterMind_Core|ALT_INV_s_isblink1~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|blink1|numberOut[1]~_emulated_q\);

-- Location: LCCOMB_X86_Y23_N26
\MasterMind_Core|blink1|numberOut[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink1|numberOut[1]~6_combout\ = (\MasterMind_Core|s_isblink1~combout\ & (((\MasterMind_Core|blink1|s_nin\(1))))) # (!\MasterMind_Core|s_isblink1~combout\ & (\MasterMind_Core|blink1|numberOut[1]~_emulated_q\ $ 
-- (((\MasterMind_Core|blink1|numberOut[1]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|blink1|numberOut[1]~_emulated_q\,
	datab => \MasterMind_Core|blink1|s_nin\(1),
	datac => \MasterMind_Core|blink1|numberOut[1]~5_combout\,
	datad => \MasterMind_Core|s_isblink1~combout\,
	combout => \MasterMind_Core|blink1|numberOut[1]~6_combout\);

-- Location: LCCOMB_X85_Y23_N4
\MasterMind_Core|blink1|s_nin[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink1|s_nin\(2) = (GLOBAL(\MasterMind_Core|checkEnd|Selector2~0clkctrl_outclk\) & ((\MasterMind_Core|Counter9_1|s_count\(2)))) # (!GLOBAL(\MasterMind_Core|checkEnd|Selector2~0clkctrl_outclk\) & (\MasterMind_Core|blink1|s_nin\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|blink1|s_nin\(2),
	datac => \MasterMind_Core|Counter9_1|s_count\(2),
	datad => \MasterMind_Core|checkEnd|Selector2~0clkctrl_outclk\,
	combout => \MasterMind_Core|blink1|s_nin\(2));

-- Location: LCCOMB_X85_Y23_N22
\MasterMind_Core|blink1|numberOut[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink1|numberOut[2]~13_combout\ = (GLOBAL(\MasterMind_Core|s_isblink1~clkctrl_outclk\) & ((\MasterMind_Core|blink1|s_nin\(2)))) # (!GLOBAL(\MasterMind_Core|s_isblink1~clkctrl_outclk\) & (\MasterMind_Core|blink1|numberOut[2]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|blink1|numberOut[2]~13_combout\,
	datab => \MasterMind_Core|blink1|s_nin\(2),
	datac => \MasterMind_Core|s_isblink1~clkctrl_outclk\,
	combout => \MasterMind_Core|blink1|numberOut[2]~13_combout\);

-- Location: LCCOMB_X85_Y23_N20
\MasterMind_Core|blink1|numberOut[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink1|numberOut[2]~15_combout\ = \MasterMind_Core|blink1|numberOut[2]~13_combout\ $ (((\MasterMind_Core|blink1|s_nin\(2)) # (!\MasterMind_Core|blink1|checkblink~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|blink1|s_nin\(2),
	datac => \MasterMind_Core|blink1|numberOut[2]~13_combout\,
	datad => \MasterMind_Core|blink1|checkblink~q\,
	combout => \MasterMind_Core|blink1|numberOut[2]~15_combout\);

-- Location: FF_X85_Y23_N21
\MasterMind_Core|blink1|numberOut[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|freq_div1|clkOut~clkctrl_outclk\,
	d => \MasterMind_Core|blink1|numberOut[2]~15_combout\,
	clrn => \MasterMind_Core|ALT_INV_s_isblink1~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|blink1|numberOut[2]~_emulated_q\);

-- Location: LCCOMB_X85_Y23_N10
\MasterMind_Core|blink1|numberOut[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink1|numberOut[2]~14_combout\ = (\MasterMind_Core|s_isblink1~combout\ & (((\MasterMind_Core|blink1|s_nin\(2))))) # (!\MasterMind_Core|s_isblink1~combout\ & (\MasterMind_Core|blink1|numberOut[2]~_emulated_q\ $ 
-- ((\MasterMind_Core|blink1|numberOut[2]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|blink1|numberOut[2]~_emulated_q\,
	datab => \MasterMind_Core|blink1|numberOut[2]~13_combout\,
	datac => \MasterMind_Core|blink1|s_nin\(2),
	datad => \MasterMind_Core|s_isblink1~combout\,
	combout => \MasterMind_Core|blink1|numberOut[2]~14_combout\);

-- Location: LCCOMB_X86_Y23_N14
\MasterMind_Core|blink1|s_nin[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink1|s_nin\(0) = (GLOBAL(\MasterMind_Core|checkEnd|Selector2~0clkctrl_outclk\) & ((\MasterMind_Core|Counter9_1|s_count\(0)))) # (!GLOBAL(\MasterMind_Core|checkEnd|Selector2~0clkctrl_outclk\) & (\MasterMind_Core|blink1|s_nin\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|blink1|s_nin\(0),
	datac => \MasterMind_Core|Counter9_1|s_count\(0),
	datad => \MasterMind_Core|checkEnd|Selector2~0clkctrl_outclk\,
	combout => \MasterMind_Core|blink1|s_nin\(0));

-- Location: LCCOMB_X86_Y23_N20
\MasterMind_Core|blink1|numberOut[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink1|numberOut[0]~9_combout\ = (GLOBAL(\MasterMind_Core|s_isblink1~clkctrl_outclk\) & (\MasterMind_Core|blink1|s_nin\(0))) # (!GLOBAL(\MasterMind_Core|s_isblink1~clkctrl_outclk\) & ((\MasterMind_Core|blink1|numberOut[0]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|blink1|s_nin\(0),
	datac => \MasterMind_Core|blink1|numberOut[0]~9_combout\,
	datad => \MasterMind_Core|s_isblink1~clkctrl_outclk\,
	combout => \MasterMind_Core|blink1|numberOut[0]~9_combout\);

-- Location: LCCOMB_X86_Y23_N8
\MasterMind_Core|blink1|numberOut[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink1|numberOut[0]~11_combout\ = \MasterMind_Core|blink1|numberOut[0]~9_combout\ $ (((\MasterMind_Core|blink1|s_nin\(0)) # (!\MasterMind_Core|blink1|checkblink~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|blink1|checkblink~q\,
	datac => \MasterMind_Core|blink1|s_nin\(0),
	datad => \MasterMind_Core|blink1|numberOut[0]~9_combout\,
	combout => \MasterMind_Core|blink1|numberOut[0]~11_combout\);

-- Location: FF_X86_Y23_N9
\MasterMind_Core|blink1|numberOut[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|freq_div1|clkOut~clkctrl_outclk\,
	d => \MasterMind_Core|blink1|numberOut[0]~11_combout\,
	clrn => \MasterMind_Core|ALT_INV_s_isblink1~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|blink1|numberOut[0]~_emulated_q\);

-- Location: LCCOMB_X86_Y23_N22
\MasterMind_Core|blink1|numberOut[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink1|numberOut[0]~10_combout\ = (\MasterMind_Core|s_isblink1~combout\ & (\MasterMind_Core|blink1|s_nin\(0))) # (!\MasterMind_Core|s_isblink1~combout\ & ((\MasterMind_Core|blink1|numberOut[0]~_emulated_q\ $ 
-- (\MasterMind_Core|blink1|numberOut[0]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|blink1|s_nin\(0),
	datab => \MasterMind_Core|blink1|numberOut[0]~_emulated_q\,
	datac => \MasterMind_Core|blink1|numberOut[0]~9_combout\,
	datad => \MasterMind_Core|s_isblink1~combout\,
	combout => \MasterMind_Core|blink1|numberOut[0]~10_combout\);

-- Location: LCCOMB_X114_Y26_N20
\MasterMind_Core|bin7segdec5|decOut_n~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec5|decOut_n~0_combout\ = (\MasterMind_Core|blink1|numberOut[3]~2_combout\ & (\MasterMind_Core|blink1|numberOut[0]~10_combout\ & ((\MasterMind_Core|blink1|numberOut[1]~6_combout\) # 
-- (\MasterMind_Core|blink1|numberOut[2]~14_combout\)))) # (!\MasterMind_Core|blink1|numberOut[3]~2_combout\ & (!\MasterMind_Core|blink1|numberOut[1]~6_combout\ & (\MasterMind_Core|blink1|numberOut[2]~14_combout\ $ 
-- (\MasterMind_Core|blink1|numberOut[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|blink1|numberOut[3]~2_combout\,
	datab => \MasterMind_Core|blink1|numberOut[1]~6_combout\,
	datac => \MasterMind_Core|blink1|numberOut[2]~14_combout\,
	datad => \MasterMind_Core|blink1|numberOut[0]~10_combout\,
	combout => \MasterMind_Core|bin7segdec5|decOut_n~0_combout\);

-- Location: LCCOMB_X114_Y26_N22
\MasterMind_Core|bin7segdec5|decOut_n~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec5|decOut_n~1_combout\ = (\MasterMind_Core|checkEnd|pState.S2~q\) # (\MasterMind_Core|bin7segdec5|decOut_n~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|checkEnd|pState.S2~q\,
	datad => \MasterMind_Core|bin7segdec5|decOut_n~0_combout\,
	combout => \MasterMind_Core|bin7segdec5|decOut_n~1_combout\);

-- Location: LCCOMB_X114_Y26_N28
\MasterMind_Core|bin7segdec5|decOut_n~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec5|decOut_n~2_combout\ = (\MasterMind_Core|blink1|numberOut[3]~2_combout\ & ((\MasterMind_Core|blink1|numberOut[0]~10_combout\ & (\MasterMind_Core|blink1|numberOut[1]~6_combout\)) # 
-- (!\MasterMind_Core|blink1|numberOut[0]~10_combout\ & ((\MasterMind_Core|blink1|numberOut[2]~14_combout\))))) # (!\MasterMind_Core|blink1|numberOut[3]~2_combout\ & (\MasterMind_Core|blink1|numberOut[2]~14_combout\ & 
-- (\MasterMind_Core|blink1|numberOut[1]~6_combout\ $ (\MasterMind_Core|blink1|numberOut[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|blink1|numberOut[3]~2_combout\,
	datab => \MasterMind_Core|blink1|numberOut[1]~6_combout\,
	datac => \MasterMind_Core|blink1|numberOut[2]~14_combout\,
	datad => \MasterMind_Core|blink1|numberOut[0]~10_combout\,
	combout => \MasterMind_Core|bin7segdec5|decOut_n~2_combout\);

-- Location: LCCOMB_X114_Y26_N2
\MasterMind_Core|bin7segdec5|decOut_n~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec5|decOut_n~3_combout\ = (\MasterMind_Core|checkEnd|pState.S2~q\) # (\MasterMind_Core|bin7segdec5|decOut_n~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|checkEnd|pState.S2~q\,
	datad => \MasterMind_Core|bin7segdec5|decOut_n~2_combout\,
	combout => \MasterMind_Core|bin7segdec5|decOut_n~3_combout\);

-- Location: LCCOMB_X114_Y26_N16
\MasterMind_Core|bin7segdec5|decOut_n~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec5|decOut_n~4_combout\ = (\MasterMind_Core|blink1|numberOut[0]~10_combout\ & (!\MasterMind_Core|blink1|numberOut[1]~6_combout\ & \MasterMind_Core|blink1|numberOut[2]~14_combout\)) # 
-- (!\MasterMind_Core|blink1|numberOut[0]~10_combout\ & (\MasterMind_Core|blink1|numberOut[1]~6_combout\ & !\MasterMind_Core|blink1|numberOut[2]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|blink1|numberOut[0]~10_combout\,
	datab => \MasterMind_Core|blink1|numberOut[1]~6_combout\,
	datac => \MasterMind_Core|blink1|numberOut[2]~14_combout\,
	combout => \MasterMind_Core|bin7segdec5|decOut_n~4_combout\);

-- Location: LCCOMB_X114_Y26_N30
\MasterMind_Core|bin7segdec5|decOut_n~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec5|decOut_n~5_combout\ = (\MasterMind_Core|checkEnd|pState.S2~q\) # ((\MasterMind_Core|blink1|numberOut[3]~2_combout\ & (!\MasterMind_Core|bin7segdec5|decOut_n~4_combout\ & \MasterMind_Core|blink1|numberOut[2]~14_combout\)) # 
-- (!\MasterMind_Core|blink1|numberOut[3]~2_combout\ & (\MasterMind_Core|bin7segdec5|decOut_n~4_combout\ & !\MasterMind_Core|blink1|numberOut[2]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|blink1|numberOut[3]~2_combout\,
	datab => \MasterMind_Core|bin7segdec5|decOut_n~4_combout\,
	datac => \MasterMind_Core|blink1|numberOut[2]~14_combout\,
	datad => \MasterMind_Core|checkEnd|pState.S2~q\,
	combout => \MasterMind_Core|bin7segdec5|decOut_n~5_combout\);

-- Location: LCCOMB_X114_Y26_N8
\MasterMind_Core|bin7segdec5|decOut_n~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec5|decOut_n~6_combout\ = (\MasterMind_Core|blink1|numberOut[1]~6_combout\ & ((\MasterMind_Core|blink1|numberOut[2]~14_combout\ & ((\MasterMind_Core|blink1|numberOut[0]~10_combout\))) # 
-- (!\MasterMind_Core|blink1|numberOut[2]~14_combout\ & (\MasterMind_Core|blink1|numberOut[3]~2_combout\ & !\MasterMind_Core|blink1|numberOut[0]~10_combout\)))) # (!\MasterMind_Core|blink1|numberOut[1]~6_combout\ & 
-- (!\MasterMind_Core|blink1|numberOut[3]~2_combout\ & (\MasterMind_Core|blink1|numberOut[2]~14_combout\ $ (\MasterMind_Core|blink1|numberOut[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|blink1|numberOut[3]~2_combout\,
	datab => \MasterMind_Core|blink1|numberOut[1]~6_combout\,
	datac => \MasterMind_Core|blink1|numberOut[2]~14_combout\,
	datad => \MasterMind_Core|blink1|numberOut[0]~10_combout\,
	combout => \MasterMind_Core|bin7segdec5|decOut_n~6_combout\);

-- Location: LCCOMB_X114_Y26_N26
\MasterMind_Core|bin7segdec5|decOut_n~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec5|decOut_n~7_combout\ = (\MasterMind_Core|bin7segdec5|decOut_n~6_combout\) # (\MasterMind_Core|checkEnd|pState.S2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|bin7segdec5|decOut_n~6_combout\,
	datad => \MasterMind_Core|checkEnd|pState.S2~q\,
	combout => \MasterMind_Core|bin7segdec5|decOut_n~7_combout\);

-- Location: LCCOMB_X114_Y26_N4
\MasterMind_Core|bin7segdec5|decOut_n~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec5|decOut_n~8_combout\ = (\MasterMind_Core|blink1|numberOut[1]~6_combout\ & (\MasterMind_Core|blink1|numberOut[3]~2_combout\ & !\MasterMind_Core|blink1|numberOut[2]~14_combout\)) # 
-- (!\MasterMind_Core|blink1|numberOut[1]~6_combout\ & ((\MasterMind_Core|blink1|numberOut[2]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|blink1|numberOut[3]~2_combout\,
	datab => \MasterMind_Core|blink1|numberOut[1]~6_combout\,
	datac => \MasterMind_Core|blink1|numberOut[2]~14_combout\,
	combout => \MasterMind_Core|bin7segdec5|decOut_n~8_combout\);

-- Location: LCCOMB_X114_Y26_N18
\MasterMind_Core|bin7segdec5|decOut_n~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec5|decOut_n~9_combout\ = (\MasterMind_Core|checkEnd|pState.S2~q\) # ((\MasterMind_Core|bin7segdec5|decOut_n~8_combout\ & (!\MasterMind_Core|blink1|numberOut[3]~2_combout\)) # (!\MasterMind_Core|bin7segdec5|decOut_n~8_combout\ & 
-- ((\MasterMind_Core|blink1|numberOut[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|blink1|numberOut[3]~2_combout\,
	datab => \MasterMind_Core|bin7segdec5|decOut_n~8_combout\,
	datac => \MasterMind_Core|checkEnd|pState.S2~q\,
	datad => \MasterMind_Core|blink1|numberOut[0]~10_combout\,
	combout => \MasterMind_Core|bin7segdec5|decOut_n~9_combout\);

-- Location: LCCOMB_X114_Y26_N12
\MasterMind_Core|bin7segdec5|decOut_n~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec5|decOut_n~10_combout\ = (\MasterMind_Core|blink1|numberOut[1]~6_combout\ & ((\MasterMind_Core|blink1|numberOut[2]~14_combout\ & ((\MasterMind_Core|blink1|numberOut[0]~10_combout\))) # 
-- (!\MasterMind_Core|blink1|numberOut[2]~14_combout\ & (!\MasterMind_Core|blink1|numberOut[3]~2_combout\)))) # (!\MasterMind_Core|blink1|numberOut[1]~6_combout\ & (\MasterMind_Core|blink1|numberOut[0]~10_combout\ & 
-- (\MasterMind_Core|blink1|numberOut[3]~2_combout\ $ (!\MasterMind_Core|blink1|numberOut[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|blink1|numberOut[3]~2_combout\,
	datab => \MasterMind_Core|blink1|numberOut[1]~6_combout\,
	datac => \MasterMind_Core|blink1|numberOut[2]~14_combout\,
	datad => \MasterMind_Core|blink1|numberOut[0]~10_combout\,
	combout => \MasterMind_Core|bin7segdec5|decOut_n~10_combout\);

-- Location: LCCOMB_X114_Y26_N14
\MasterMind_Core|bin7segdec5|decOut_n~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec5|decOut_n~11_combout\ = (\MasterMind_Core|checkEnd|pState.S2~q\) # (\MasterMind_Core|bin7segdec5|decOut_n~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|checkEnd|pState.S2~q\,
	datad => \MasterMind_Core|bin7segdec5|decOut_n~10_combout\,
	combout => \MasterMind_Core|bin7segdec5|decOut_n~11_combout\);

-- Location: LCCOMB_X114_Y26_N24
\MasterMind_Core|bin7segdec5|decOut_n~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec5|decOut_n~12_combout\ = (\MasterMind_Core|blink1|numberOut[1]~6_combout\ & (((!\MasterMind_Core|blink1|numberOut[0]~10_combout\) # (!\MasterMind_Core|blink1|numberOut[2]~14_combout\)))) # 
-- (!\MasterMind_Core|blink1|numberOut[1]~6_combout\ & ((\MasterMind_Core|blink1|numberOut[3]~2_combout\ & ((\MasterMind_Core|blink1|numberOut[0]~10_combout\) # (!\MasterMind_Core|blink1|numberOut[2]~14_combout\))) # 
-- (!\MasterMind_Core|blink1|numberOut[3]~2_combout\ & (\MasterMind_Core|blink1|numberOut[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|blink1|numberOut[3]~2_combout\,
	datab => \MasterMind_Core|blink1|numberOut[1]~6_combout\,
	datac => \MasterMind_Core|blink1|numberOut[2]~14_combout\,
	datad => \MasterMind_Core|blink1|numberOut[0]~10_combout\,
	combout => \MasterMind_Core|bin7segdec5|decOut_n~12_combout\);

-- Location: LCCOMB_X114_Y26_N10
\MasterMind_Core|bin7segdec5|decOut_n~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec5|decOut_n~13_combout\ = (\MasterMind_Core|checkEnd|pState.S2~q\) # (!\MasterMind_Core|bin7segdec5|decOut_n~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|checkEnd|pState.S2~q\,
	datad => \MasterMind_Core|bin7segdec5|decOut_n~12_combout\,
	combout => \MasterMind_Core|bin7segdec5|decOut_n~13_combout\);

-- Location: LCCOMB_X84_Y20_N20
\MasterMind_Core|blink0|checkblink~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink0|checkblink~0_combout\ = !\MasterMind_Core|blink0|checkblink~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MasterMind_Core|blink0|checkblink~q\,
	combout => \MasterMind_Core|blink0|checkblink~0_combout\);

-- Location: LCCOMB_X82_Y19_N14
\MasterMind_Core|s_isblink0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|s_isblink0~0_combout\ = (!\MasterMind_Core|checkEnd|pState.S1~q\ & (!\MasterMind_Core|s_up0~0_combout\ & ((!\MasterMind_Core|bin7segdec2|Equal7~0_combout\) # (!\MasterMind_Core|checkEnd|pState.S3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|checkEnd|pState.S3~q\,
	datab => \MasterMind_Core|bin7segdec2|Equal7~0_combout\,
	datac => \MasterMind_Core|checkEnd|pState.S1~q\,
	datad => \MasterMind_Core|s_up0~0_combout\,
	combout => \MasterMind_Core|s_isblink0~0_combout\);

-- Location: CLKCTRL_G15
\MasterMind_Core|s_isblink0~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \MasterMind_Core|s_isblink0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \MasterMind_Core|s_isblink0~0clkctrl_outclk\);

-- Location: FF_X84_Y20_N21
\MasterMind_Core|blink0|checkblink\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|freq_div1|clkOut~clkctrl_outclk\,
	d => \MasterMind_Core|blink0|checkblink~0_combout\,
	clrn => \MasterMind_Core|ALT_INV_s_isblink0~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|blink0|checkblink~q\);

-- Location: LCCOMB_X84_Y20_N22
\MasterMind_Core|blink0|s_nin[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink0|s_nin\(2) = (GLOBAL(\MasterMind_Core|checkEnd|Selector2~0clkctrl_outclk\) & ((\MasterMind_Core|Counter9_0|s_count\(2)))) # (!GLOBAL(\MasterMind_Core|checkEnd|Selector2~0clkctrl_outclk\) & (\MasterMind_Core|blink0|s_nin\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|blink0|s_nin\(2),
	datac => \MasterMind_Core|Counter9_0|s_count\(2),
	datad => \MasterMind_Core|checkEnd|Selector2~0clkctrl_outclk\,
	combout => \MasterMind_Core|blink0|s_nin\(2));

-- Location: LCCOMB_X84_Y20_N24
\MasterMind_Core|blink0|numberOut[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink0|numberOut[2]~13_combout\ = (GLOBAL(\MasterMind_Core|s_isblink0~0clkctrl_outclk\) & (\MasterMind_Core|blink0|s_nin\(2))) # (!GLOBAL(\MasterMind_Core|s_isblink0~0clkctrl_outclk\) & 
-- ((\MasterMind_Core|blink0|numberOut[2]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|blink0|s_nin\(2),
	datac => \MasterMind_Core|s_isblink0~0clkctrl_outclk\,
	datad => \MasterMind_Core|blink0|numberOut[2]~13_combout\,
	combout => \MasterMind_Core|blink0|numberOut[2]~13_combout\);

-- Location: LCCOMB_X84_Y20_N2
\MasterMind_Core|blink0|numberOut[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink0|numberOut[2]~15_combout\ = \MasterMind_Core|blink0|numberOut[2]~13_combout\ $ (((\MasterMind_Core|blink0|s_nin\(2)) # (!\MasterMind_Core|blink0|checkblink~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|blink0|checkblink~q\,
	datac => \MasterMind_Core|blink0|s_nin\(2),
	datad => \MasterMind_Core|blink0|numberOut[2]~13_combout\,
	combout => \MasterMind_Core|blink0|numberOut[2]~15_combout\);

-- Location: FF_X84_Y20_N3
\MasterMind_Core|blink0|numberOut[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|freq_div1|clkOut~clkctrl_outclk\,
	d => \MasterMind_Core|blink0|numberOut[2]~15_combout\,
	clrn => \MasterMind_Core|ALT_INV_s_isblink0~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|blink0|numberOut[2]~_emulated_q\);

-- Location: LCCOMB_X85_Y20_N10
\MasterMind_Core|blink0|numberOut[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink0|numberOut[2]~14_combout\ = (\MasterMind_Core|s_isblink0~0_combout\ & (((\MasterMind_Core|blink0|s_nin\(2))))) # (!\MasterMind_Core|s_isblink0~0_combout\ & (\MasterMind_Core|blink0|numberOut[2]~_emulated_q\ $ 
-- ((\MasterMind_Core|blink0|numberOut[2]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|blink0|numberOut[2]~_emulated_q\,
	datab => \MasterMind_Core|blink0|numberOut[2]~13_combout\,
	datac => \MasterMind_Core|s_isblink0~0_combout\,
	datad => \MasterMind_Core|blink0|s_nin\(2),
	combout => \MasterMind_Core|blink0|numberOut[2]~14_combout\);

-- Location: LCCOMB_X84_Y20_N10
\MasterMind_Core|blink0|s_nin[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink0|s_nin\(0) = (GLOBAL(\MasterMind_Core|checkEnd|Selector2~0clkctrl_outclk\) & ((\MasterMind_Core|Counter9_0|s_count\(0)))) # (!GLOBAL(\MasterMind_Core|checkEnd|Selector2~0clkctrl_outclk\) & (\MasterMind_Core|blink0|s_nin\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|checkEnd|Selector2~0clkctrl_outclk\,
	datac => \MasterMind_Core|blink0|s_nin\(0),
	datad => \MasterMind_Core|Counter9_0|s_count\(0),
	combout => \MasterMind_Core|blink0|s_nin\(0));

-- Location: LCCOMB_X84_Y20_N8
\MasterMind_Core|blink0|numberOut[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink0|numberOut[0]~9_combout\ = (GLOBAL(\MasterMind_Core|s_isblink0~0clkctrl_outclk\) & (\MasterMind_Core|blink0|s_nin\(0))) # (!GLOBAL(\MasterMind_Core|s_isblink0~0clkctrl_outclk\) & ((\MasterMind_Core|blink0|numberOut[0]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|blink0|s_nin\(0),
	datab => \MasterMind_Core|blink0|numberOut[0]~9_combout\,
	datac => \MasterMind_Core|s_isblink0~0clkctrl_outclk\,
	combout => \MasterMind_Core|blink0|numberOut[0]~9_combout\);

-- Location: LCCOMB_X84_Y20_N0
\MasterMind_Core|blink0|numberOut[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink0|numberOut[0]~11_combout\ = \MasterMind_Core|blink0|numberOut[0]~9_combout\ $ (((\MasterMind_Core|blink0|s_nin\(0)) # (!\MasterMind_Core|blink0|checkblink~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|blink0|checkblink~q\,
	datac => \MasterMind_Core|blink0|numberOut[0]~9_combout\,
	datad => \MasterMind_Core|blink0|s_nin\(0),
	combout => \MasterMind_Core|blink0|numberOut[0]~11_combout\);

-- Location: FF_X84_Y20_N1
\MasterMind_Core|blink0|numberOut[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|freq_div1|clkOut~clkctrl_outclk\,
	d => \MasterMind_Core|blink0|numberOut[0]~11_combout\,
	clrn => \MasterMind_Core|ALT_INV_s_isblink0~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|blink0|numberOut[0]~_emulated_q\);

-- Location: LCCOMB_X85_Y20_N8
\MasterMind_Core|blink0|numberOut[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink0|numberOut[0]~10_combout\ = (\MasterMind_Core|s_isblink0~0_combout\ & (\MasterMind_Core|blink0|s_nin\(0))) # (!\MasterMind_Core|s_isblink0~0_combout\ & ((\MasterMind_Core|blink0|numberOut[0]~_emulated_q\ $ 
-- (\MasterMind_Core|blink0|numberOut[0]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|blink0|s_nin\(0),
	datab => \MasterMind_Core|s_isblink0~0_combout\,
	datac => \MasterMind_Core|blink0|numberOut[0]~_emulated_q\,
	datad => \MasterMind_Core|blink0|numberOut[0]~9_combout\,
	combout => \MasterMind_Core|blink0|numberOut[0]~10_combout\);

-- Location: LCCOMB_X84_Y20_N26
\MasterMind_Core|blink0|s_nin[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink0|s_nin\(1) = (GLOBAL(\MasterMind_Core|checkEnd|Selector2~0clkctrl_outclk\) & ((\MasterMind_Core|Counter9_0|s_count\(1)))) # (!GLOBAL(\MasterMind_Core|checkEnd|Selector2~0clkctrl_outclk\) & (\MasterMind_Core|blink0|s_nin\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|blink0|s_nin\(1),
	datac => \MasterMind_Core|Counter9_0|s_count\(1),
	datad => \MasterMind_Core|checkEnd|Selector2~0clkctrl_outclk\,
	combout => \MasterMind_Core|blink0|s_nin\(1));

-- Location: LCCOMB_X84_Y20_N16
\MasterMind_Core|blink0|numberOut[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink0|numberOut[1]~5_combout\ = (GLOBAL(\MasterMind_Core|s_isblink0~0clkctrl_outclk\) & ((\MasterMind_Core|blink0|s_nin\(1)))) # (!GLOBAL(\MasterMind_Core|s_isblink0~0clkctrl_outclk\) & (\MasterMind_Core|blink0|numberOut[1]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|blink0|numberOut[1]~5_combout\,
	datac => \MasterMind_Core|s_isblink0~0clkctrl_outclk\,
	datad => \MasterMind_Core|blink0|s_nin\(1),
	combout => \MasterMind_Core|blink0|numberOut[1]~5_combout\);

-- Location: LCCOMB_X84_Y20_N14
\MasterMind_Core|blink0|numberOut[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink0|numberOut[1]~7_combout\ = \MasterMind_Core|blink0|numberOut[1]~5_combout\ $ (((\MasterMind_Core|blink0|s_nin\(1)) # (!\MasterMind_Core|blink0|checkblink~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|blink0|checkblink~q\,
	datac => \MasterMind_Core|blink0|s_nin\(1),
	datad => \MasterMind_Core|blink0|numberOut[1]~5_combout\,
	combout => \MasterMind_Core|blink0|numberOut[1]~7_combout\);

-- Location: FF_X84_Y20_N15
\MasterMind_Core|blink0|numberOut[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|freq_div1|clkOut~clkctrl_outclk\,
	d => \MasterMind_Core|blink0|numberOut[1]~7_combout\,
	clrn => \MasterMind_Core|ALT_INV_s_isblink0~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|blink0|numberOut[1]~_emulated_q\);

-- Location: LCCOMB_X85_Y20_N22
\MasterMind_Core|blink0|numberOut[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink0|numberOut[1]~6_combout\ = (\MasterMind_Core|s_isblink0~0_combout\ & (\MasterMind_Core|blink0|s_nin\(1))) # (!\MasterMind_Core|s_isblink0~0_combout\ & ((\MasterMind_Core|blink0|numberOut[1]~5_combout\ $ 
-- (\MasterMind_Core|blink0|numberOut[1]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|blink0|s_nin\(1),
	datab => \MasterMind_Core|blink0|numberOut[1]~5_combout\,
	datac => \MasterMind_Core|s_isblink0~0_combout\,
	datad => \MasterMind_Core|blink0|numberOut[1]~_emulated_q\,
	combout => \MasterMind_Core|blink0|numberOut[1]~6_combout\);

-- Location: LCCOMB_X84_Y20_N6
\MasterMind_Core|blink0|s_nin[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink0|s_nin\(3) = (GLOBAL(\MasterMind_Core|checkEnd|Selector2~0clkctrl_outclk\) & ((\MasterMind_Core|Counter9_0|s_count\(3)))) # (!GLOBAL(\MasterMind_Core|checkEnd|Selector2~0clkctrl_outclk\) & (\MasterMind_Core|blink0|s_nin\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|blink0|s_nin\(3),
	datac => \MasterMind_Core|Counter9_0|s_count\(3),
	datad => \MasterMind_Core|checkEnd|Selector2~0clkctrl_outclk\,
	combout => \MasterMind_Core|blink0|s_nin\(3));

-- Location: LCCOMB_X84_Y20_N4
\MasterMind_Core|blink0|numberOut[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink0|numberOut[3]~1_combout\ = (GLOBAL(\MasterMind_Core|s_isblink0~0clkctrl_outclk\) & (\MasterMind_Core|blink0|s_nin\(3))) # (!GLOBAL(\MasterMind_Core|s_isblink0~0clkctrl_outclk\) & ((\MasterMind_Core|blink0|numberOut[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|blink0|s_nin\(3),
	datac => \MasterMind_Core|s_isblink0~0clkctrl_outclk\,
	datad => \MasterMind_Core|blink0|numberOut[3]~1_combout\,
	combout => \MasterMind_Core|blink0|numberOut[3]~1_combout\);

-- Location: LCCOMB_X84_Y20_N28
\MasterMind_Core|blink0|numberOut[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink0|numberOut[3]~3_combout\ = \MasterMind_Core|blink0|numberOut[3]~1_combout\ $ (((\MasterMind_Core|blink0|s_nin\(3)) # (!\MasterMind_Core|blink0|checkblink~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MasterMind_Core|blink0|checkblink~q\,
	datac => \MasterMind_Core|blink0|numberOut[3]~1_combout\,
	datad => \MasterMind_Core|blink0|s_nin\(3),
	combout => \MasterMind_Core|blink0|numberOut[3]~3_combout\);

-- Location: FF_X84_Y20_N29
\MasterMind_Core|blink0|numberOut[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MasterMind_Core|freq_div1|clkOut~clkctrl_outclk\,
	d => \MasterMind_Core|blink0|numberOut[3]~3_combout\,
	clrn => \MasterMind_Core|ALT_INV_s_isblink0~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MasterMind_Core|blink0|numberOut[3]~_emulated_q\);

-- Location: LCCOMB_X85_Y20_N0
\MasterMind_Core|blink0|numberOut[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|blink0|numberOut[3]~2_combout\ = (\MasterMind_Core|s_isblink0~0_combout\ & (\MasterMind_Core|blink0|s_nin\(3))) # (!\MasterMind_Core|s_isblink0~0_combout\ & ((\MasterMind_Core|blink0|numberOut[3]~1_combout\ $ 
-- (\MasterMind_Core|blink0|numberOut[3]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|blink0|s_nin\(3),
	datab => \MasterMind_Core|blink0|numberOut[3]~1_combout\,
	datac => \MasterMind_Core|s_isblink0~0_combout\,
	datad => \MasterMind_Core|blink0|numberOut[3]~_emulated_q\,
	combout => \MasterMind_Core|blink0|numberOut[3]~2_combout\);

-- Location: LCCOMB_X85_Y21_N16
\MasterMind_Core|bin7segdec4|decOut_n~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec4|decOut_n~0_combout\ = (\MasterMind_Core|blink0|numberOut[0]~10_combout\ & (\MasterMind_Core|blink0|numberOut[3]~2_combout\ $ (((!\MasterMind_Core|blink0|numberOut[2]~14_combout\ & 
-- !\MasterMind_Core|blink0|numberOut[1]~6_combout\))))) # (!\MasterMind_Core|blink0|numberOut[0]~10_combout\ & (\MasterMind_Core|blink0|numberOut[2]~14_combout\ & (!\MasterMind_Core|blink0|numberOut[1]~6_combout\ & 
-- !\MasterMind_Core|blink0|numberOut[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|blink0|numberOut[2]~14_combout\,
	datab => \MasterMind_Core|blink0|numberOut[0]~10_combout\,
	datac => \MasterMind_Core|blink0|numberOut[1]~6_combout\,
	datad => \MasterMind_Core|blink0|numberOut[3]~2_combout\,
	combout => \MasterMind_Core|bin7segdec4|decOut_n~0_combout\);

-- Location: LCCOMB_X84_Y25_N24
\MasterMind_Core|bin7segdec4|decOut_n~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec4|decOut_n~1_combout\ = (\MasterMind_Core|checkEnd|pState.S2~q\) # (\MasterMind_Core|bin7segdec4|decOut_n~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MasterMind_Core|checkEnd|pState.S2~q\,
	datad => \MasterMind_Core|bin7segdec4|decOut_n~0_combout\,
	combout => \MasterMind_Core|bin7segdec4|decOut_n~1_combout\);

-- Location: LCCOMB_X85_Y21_N18
\MasterMind_Core|bin7segdec4|decOut_n~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec4|decOut_n~2_combout\ = (\MasterMind_Core|blink0|numberOut[1]~6_combout\ & ((\MasterMind_Core|blink0|numberOut[0]~10_combout\ & ((\MasterMind_Core|blink0|numberOut[3]~2_combout\))) # 
-- (!\MasterMind_Core|blink0|numberOut[0]~10_combout\ & (\MasterMind_Core|blink0|numberOut[2]~14_combout\)))) # (!\MasterMind_Core|blink0|numberOut[1]~6_combout\ & (\MasterMind_Core|blink0|numberOut[2]~14_combout\ & 
-- (\MasterMind_Core|blink0|numberOut[0]~10_combout\ $ (\MasterMind_Core|blink0|numberOut[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|blink0|numberOut[2]~14_combout\,
	datab => \MasterMind_Core|blink0|numberOut[0]~10_combout\,
	datac => \MasterMind_Core|blink0|numberOut[1]~6_combout\,
	datad => \MasterMind_Core|blink0|numberOut[3]~2_combout\,
	combout => \MasterMind_Core|bin7segdec4|decOut_n~2_combout\);

-- Location: LCCOMB_X85_Y21_N8
\MasterMind_Core|bin7segdec4|decOut_n~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec4|decOut_n~3_combout\ = (\MasterMind_Core|checkEnd|pState.S2~q\) # (\MasterMind_Core|bin7segdec4|decOut_n~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MasterMind_Core|checkEnd|pState.S2~q\,
	datad => \MasterMind_Core|bin7segdec4|decOut_n~2_combout\,
	combout => \MasterMind_Core|bin7segdec4|decOut_n~3_combout\);

-- Location: LCCOMB_X85_Y21_N26
\MasterMind_Core|bin7segdec4|decOut_n~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec4|decOut_n~4_combout\ = (\MasterMind_Core|blink0|numberOut[2]~14_combout\ & (\MasterMind_Core|blink0|numberOut[0]~10_combout\ & !\MasterMind_Core|blink0|numberOut[1]~6_combout\)) # 
-- (!\MasterMind_Core|blink0|numberOut[2]~14_combout\ & (!\MasterMind_Core|blink0|numberOut[0]~10_combout\ & \MasterMind_Core|blink0|numberOut[1]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|blink0|numberOut[2]~14_combout\,
	datab => \MasterMind_Core|blink0|numberOut[0]~10_combout\,
	datac => \MasterMind_Core|blink0|numberOut[1]~6_combout\,
	combout => \MasterMind_Core|bin7segdec4|decOut_n~4_combout\);

-- Location: LCCOMB_X85_Y21_N28
\MasterMind_Core|bin7segdec4|decOut_n~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec4|decOut_n~5_combout\ = (\MasterMind_Core|checkEnd|pState.S2~q\) # ((\MasterMind_Core|blink0|numberOut[2]~14_combout\ & (\MasterMind_Core|blink0|numberOut[3]~2_combout\ & !\MasterMind_Core|bin7segdec4|decOut_n~4_combout\)) # 
-- (!\MasterMind_Core|blink0|numberOut[2]~14_combout\ & (!\MasterMind_Core|blink0|numberOut[3]~2_combout\ & \MasterMind_Core|bin7segdec4|decOut_n~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|blink0|numberOut[2]~14_combout\,
	datab => \MasterMind_Core|blink0|numberOut[3]~2_combout\,
	datac => \MasterMind_Core|bin7segdec4|decOut_n~4_combout\,
	datad => \MasterMind_Core|checkEnd|pState.S2~q\,
	combout => \MasterMind_Core|bin7segdec4|decOut_n~5_combout\);

-- Location: LCCOMB_X85_Y21_N2
\MasterMind_Core|bin7segdec4|decOut_n~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec4|decOut_n~6_combout\ = (\MasterMind_Core|blink0|numberOut[1]~6_combout\ & ((\MasterMind_Core|blink0|numberOut[2]~14_combout\ & (\MasterMind_Core|blink0|numberOut[0]~10_combout\)) # 
-- (!\MasterMind_Core|blink0|numberOut[2]~14_combout\ & (!\MasterMind_Core|blink0|numberOut[0]~10_combout\ & \MasterMind_Core|blink0|numberOut[3]~2_combout\)))) # (!\MasterMind_Core|blink0|numberOut[1]~6_combout\ & 
-- (!\MasterMind_Core|blink0|numberOut[3]~2_combout\ & (\MasterMind_Core|blink0|numberOut[2]~14_combout\ $ (\MasterMind_Core|blink0|numberOut[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|blink0|numberOut[2]~14_combout\,
	datab => \MasterMind_Core|blink0|numberOut[0]~10_combout\,
	datac => \MasterMind_Core|blink0|numberOut[1]~6_combout\,
	datad => \MasterMind_Core|blink0|numberOut[3]~2_combout\,
	combout => \MasterMind_Core|bin7segdec4|decOut_n~6_combout\);

-- Location: LCCOMB_X85_Y21_N24
\MasterMind_Core|bin7segdec4|decOut_n~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec4|decOut_n~7_combout\ = (\MasterMind_Core|checkEnd|pState.S2~q\) # (\MasterMind_Core|bin7segdec4|decOut_n~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MasterMind_Core|checkEnd|pState.S2~q\,
	datad => \MasterMind_Core|bin7segdec4|decOut_n~6_combout\,
	combout => \MasterMind_Core|bin7segdec4|decOut_n~7_combout\);

-- Location: LCCOMB_X85_Y21_N30
\MasterMind_Core|bin7segdec4|decOut_n~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec4|decOut_n~8_combout\ = (\MasterMind_Core|blink0|numberOut[2]~14_combout\ & (!\MasterMind_Core|blink0|numberOut[1]~6_combout\)) # (!\MasterMind_Core|blink0|numberOut[2]~14_combout\ & 
-- (\MasterMind_Core|blink0|numberOut[1]~6_combout\ & \MasterMind_Core|blink0|numberOut[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|blink0|numberOut[2]~14_combout\,
	datac => \MasterMind_Core|blink0|numberOut[1]~6_combout\,
	datad => \MasterMind_Core|blink0|numberOut[3]~2_combout\,
	combout => \MasterMind_Core|bin7segdec4|decOut_n~8_combout\);

-- Location: LCCOMB_X85_Y21_N0
\MasterMind_Core|bin7segdec4|decOut_n~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec4|decOut_n~9_combout\ = (\MasterMind_Core|checkEnd|pState.S2~q\) # ((\MasterMind_Core|bin7segdec4|decOut_n~8_combout\ & ((!\MasterMind_Core|blink0|numberOut[3]~2_combout\))) # (!\MasterMind_Core|bin7segdec4|decOut_n~8_combout\ & 
-- (\MasterMind_Core|blink0|numberOut[0]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|bin7segdec4|decOut_n~8_combout\,
	datab => \MasterMind_Core|blink0|numberOut[0]~10_combout\,
	datac => \MasterMind_Core|checkEnd|pState.S2~q\,
	datad => \MasterMind_Core|blink0|numberOut[3]~2_combout\,
	combout => \MasterMind_Core|bin7segdec4|decOut_n~9_combout\);

-- Location: LCCOMB_X85_Y21_N10
\MasterMind_Core|bin7segdec4|decOut_n~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec4|decOut_n~10_combout\ = (\MasterMind_Core|blink0|numberOut[2]~14_combout\ & (\MasterMind_Core|blink0|numberOut[0]~10_combout\ & ((\MasterMind_Core|blink0|numberOut[1]~6_combout\) # 
-- (\MasterMind_Core|blink0|numberOut[3]~2_combout\)))) # (!\MasterMind_Core|blink0|numberOut[2]~14_combout\ & (!\MasterMind_Core|blink0|numberOut[3]~2_combout\ & ((\MasterMind_Core|blink0|numberOut[0]~10_combout\) # 
-- (\MasterMind_Core|blink0|numberOut[1]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|blink0|numberOut[2]~14_combout\,
	datab => \MasterMind_Core|blink0|numberOut[0]~10_combout\,
	datac => \MasterMind_Core|blink0|numberOut[1]~6_combout\,
	datad => \MasterMind_Core|blink0|numberOut[3]~2_combout\,
	combout => \MasterMind_Core|bin7segdec4|decOut_n~10_combout\);

-- Location: LCCOMB_X85_Y21_N4
\MasterMind_Core|bin7segdec4|decOut_n~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec4|decOut_n~11_combout\ = (\MasterMind_Core|checkEnd|pState.S2~q\) # (\MasterMind_Core|bin7segdec4|decOut_n~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MasterMind_Core|checkEnd|pState.S2~q\,
	datad => \MasterMind_Core|bin7segdec4|decOut_n~10_combout\,
	combout => \MasterMind_Core|bin7segdec4|decOut_n~11_combout\);

-- Location: LCCOMB_X85_Y21_N22
\MasterMind_Core|bin7segdec4|decOut_n~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec4|decOut_n~12_combout\ = (\MasterMind_Core|blink0|numberOut[2]~14_combout\ & ((\MasterMind_Core|blink0|numberOut[0]~10_combout\ & (!\MasterMind_Core|blink0|numberOut[1]~6_combout\)) # 
-- (!\MasterMind_Core|blink0|numberOut[0]~10_combout\ & ((\MasterMind_Core|blink0|numberOut[1]~6_combout\) # (!\MasterMind_Core|blink0|numberOut[3]~2_combout\))))) # (!\MasterMind_Core|blink0|numberOut[2]~14_combout\ & 
-- (((\MasterMind_Core|blink0|numberOut[1]~6_combout\) # (\MasterMind_Core|blink0|numberOut[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|blink0|numberOut[2]~14_combout\,
	datab => \MasterMind_Core|blink0|numberOut[0]~10_combout\,
	datac => \MasterMind_Core|blink0|numberOut[1]~6_combout\,
	datad => \MasterMind_Core|blink0|numberOut[3]~2_combout\,
	combout => \MasterMind_Core|bin7segdec4|decOut_n~12_combout\);

-- Location: LCCOMB_X85_Y21_N12
\MasterMind_Core|bin7segdec4|decOut_n~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \MasterMind_Core|bin7segdec4|decOut_n~13_combout\ = (\MasterMind_Core|checkEnd|pState.S2~q\) # (!\MasterMind_Core|bin7segdec4|decOut_n~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MasterMind_Core|bin7segdec4|decOut_n~12_combout\,
	datac => \MasterMind_Core|checkEnd|pState.S2~q\,
	combout => \MasterMind_Core|bin7segdec4|decOut_n~13_combout\);

ww_HEX7(0) <= \HEX7[0]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;
END structure;


