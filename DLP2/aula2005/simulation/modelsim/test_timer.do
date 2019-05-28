# do timer_run_msim_rtl_vhdl.do 
# if {[file exists rtl_work]} {
# 	vdel -lib rtl_work -all
# }
# vlib rtl_work
# vmap work rtl_work
# Copying /opt/altera/13.0sp1/modelsim_ae/linuxaloem/../modelsim.ini to modelsim.ini
# Modifying modelsim.ini
# ** Warning: Copied /opt/altera/13.0sp1/modelsim_ae/linuxaloem/../modelsim.ini to modelsim.ini.
#          Updated modelsim.ini.
# 
# vcom -93 -work work {/home/vinicius.ls/DLP2/aula2005/timer.vhd}
# Model Technology ModelSim ALTERA vcom 10.1d Compiler 2012.11 Nov  2 2012
# -- Loading package STANDARD
# -- Loading package TEXTIO
# -- Loading package std_logic_1164
# -- Loading package NUMERIC_STD
# -- Compiling entity timer
# -- Compiling architecture multi_clock_arch of timer
# -- Compiling architecture single_clock_arch of timer
# -- Loading entity timer
# -- Compiling configuration config
# -- Loading entity timer
# -- Loading architecture single_clock_arch of timer
# vcom -93 -work work {/home/vinicius.ls/DLP2/aula2005/my_package.vhd}
# Model Technology ModelSim ALTERA vcom 10.1d Compiler 2012.11 Nov  2 2012
# -- Loading package STANDARD
# -- Loading package TEXTIO
# -- Loading package std_logic_1164
# -- Loading package NUMERIC_STD
# -- Compiling package my_package
# -- Compiling package body my_package
# -- Loading package my_package
# vcom -93 -work work {/home/vinicius.ls/DLP2/aula2005/bin2bcd.vhd}
# Model Technology ModelSim ALTERA vcom 10.1d Compiler 2012.11 Nov  2 2012
# -- Loading package STANDARD
# -- Loading package TEXTIO
# -- Loading package std_logic_1164
# -- Loading package NUMERIC_STD
# -- Compiling entity bin2bcd
# -- Compiling architecture double_dabble of bin2bcd
# vcom -93 -work work {/home/vinicius.ls/DLP2/aula2005/main_timer.vhd}
# Model Technology ModelSim ALTERA vcom 10.1d Compiler 2012.11 Nov  2 2012
# -- Loading package STANDARD
# -- Loading package TEXTIO
# -- Loading package std_logic_1164
# -- Compiling entity main_timer
# -- Compiling architecture main_timer_impl of main_timer
# vcom -93 -work work {/home/vinicius.ls/DLP2/aula2005/bin2_ssd.vhd}
# Model Technology ModelSim ALTERA vcom 10.1d Compiler 2012.11 Nov  2 2012
# -- Loading package STANDARD
# -- Loading package TEXTIO
# -- Loading package std_logic_1164
# -- Loading package NUMERIC_STD
# -- Loading package my_package
# -- Compiling entity bin2ssd
# -- Compiling architecture bin2ssd_arch of bin2ssd
# 
vsim work.main_timer
# vsim work.main_timer 
# //  ModelSim ALTERA 10.1d Nov  2 2012 Linux 4.15.18-14-pve
# //
# //  Copyright 1991-2012 Mentor Graphics Corporation
# //  All Rights Reserved.
# //
# //  THIS WORK CONTAINS TRADE SECRET AND PROPRIETARY INFORMATION
# //  WHICH IS THE PROPERTY OF MENTOR GRAPHICS CORPORATION OR ITS
# //  LICENSORS AND IS SUBJECT TO LICENSE TERMS.
# //
# Loading std.standard
# Loading std.textio(body)
# Loading ieee.std_logic_1164(body)
# Loading work.main_timer(main_timer_impl)
# Loading ieee.numeric_std(body)
# Loading work.timer(single_clock_arch)
# Loading work.bin2bcd(double_dabble)
# Loading work.my_package(body)
# Loading work.bin2ssd(bin2ssd_arch)

add wave -position insertpoint  \
sim:/main_timer/RST \
sim:/main_timer/CLK \
sim:/main_timer/cseg_u \
sim:/main_timer/cseg_d \
sim:/main_timer/seg_u \
sim:/main_timer/seg_d \
sim:/main_timer/min_u \
sim:/main_timer/min_d \
sim:/main_timer/s_cseg \
sim:/main_timer/s_seg \
sim:/main_timer/s_min

force -freeze sim:/main_timer/CLK 1 0, 0 {10000 ps} -r 20ns
force -freeze sim:/main_timer/RST 1 0
noforce sim:/main_timer/cseg_u
noforce sim:/main_timer/cseg_d
noforce sim:/main_timer/seg_u
noforce sim:/main_timer/seg_d
noforce sim:/main_timer/min_u
noforce sim:/main_timer/min_d
noforce sim:/main_timer/s_cseg
noforce sim:/main_timer/s_seg
noforce sim:/main_timer/s_min
run 30 ns
force -freeze sim:/main_timer/RST 0 0
force -freeze sim:/main_timer/s_cseg 1100011 0
force -freeze sim:/main_timer/s_cseg 1100011 0
force -freeze sim:/main_timer/s_seg 111011 0
force -freeze sim:/main_timer/s_min 111011 0
run 30 ns
noforce sim:/main_timer/s_cseg
noforce sim:/main_timer/s_seg
noforce sim:/main_timer/s_min
run 3 us