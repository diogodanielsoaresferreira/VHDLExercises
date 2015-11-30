transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {F:/LSD-VHDL/Projeto-MasterMind-final/Register4.vhd}
vcom -93 -work work {F:/LSD-VHDL/Projeto-MasterMind-final/RandomNumber.vhd}
vcom -93 -work work {F:/LSD-VHDL/Projeto-MasterMind-final/MasterMind_Str.vhd}
vcom -93 -work work {F:/LSD-VHDL/Projeto-MasterMind-final/MasterMind.vhd}
vcom -93 -work work {F:/LSD-VHDL/Projeto-MasterMind-final/FreqDivider.vhd}
vcom -93 -work work {F:/LSD-VHDL/Projeto-MasterMind-final/Demultiplexer.vhd}
vcom -93 -work work {F:/LSD-VHDL/Projeto-MasterMind-final/Debouncer.vhd}
vcom -93 -work work {F:/LSD-VHDL/Projeto-MasterMind-final/Counter9999.vhd}
vcom -93 -work work {F:/LSD-VHDL/Projeto-MasterMind-final/Counter99.vhd}
vcom -93 -work work {F:/LSD-VHDL/Projeto-MasterMind-final/Counter9.vhd}
vcom -93 -work work {F:/LSD-VHDL/Projeto-MasterMind-final/Counter4.vhd}
vcom -93 -work work {F:/LSD-VHDL/Projeto-MasterMind-final/Compare2.vhd}
vcom -93 -work work {F:/LSD-VHDL/Projeto-MasterMind-final/checkEnd.vhd}
vcom -93 -work work {F:/LSD-VHDL/Projeto-MasterMind-final/Blink.vhd}
vcom -93 -work work {F:/LSD-VHDL/Projeto-MasterMind-final/Bin7SegDecoder.vhd}

