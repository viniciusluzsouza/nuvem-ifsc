# do shift3mode_run_msim_rtl_vhdl.do 
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
vcom -93 -work work {../../shift3mode.vhd}
# Model Technology ModelSim ALTERA vcom 10.1d Compiler 2012.11 Nov  2 2012
# -- Loading package STANDARD
# -- Loading package TEXTIO
# -- Loading package std_logic_1164
# -- Loading package MATH_REAL
# -- Compiling entity shift3mode
# -- Compiling architecture multi_level_arch of shift3mode
# 
vsim work.shift3mode(multi_level_arch)
# vsim work.shift3mode(multi_level_arch) 
# //  ModelSim ALTERA 10.1d Nov  2 2012 Linux 4.9.0-8-amd64
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
# Loading ieee.math_real(body)
# Loading work.shift3mode(multi_level_arch)


restart -force

add wave -position insertpoint sim:/shift3mode/a 
add wave -position insertpoint sim:/shift3mode/lar
add wave -radix unsigned sim:/shift3mode/amt
add wave -position insertpoint sim:/shift3mode/y

force -freeze sim:/shift3mode/a 10100110101001101101101000011110 0

force -freeze sim:/shift3mode/lar 00 0
force -freeze sim:/shift3mode/amt 00000 0
run 500 ps
force -freeze sim:/shift3mode/amt 00001 0
run 500 ps
force -freeze sim:/shift3mode/amt 00010 0
run 500 ps
force -freeze sim:/shift3mode/amt 00011 0
run 500 ps
force -freeze sim:/shift3mode/amt 00100 0
run 500 ps
force -freeze sim:/shift3mode/amt 00101 0
run 500 ps
force -freeze sim:/shift3mode/amt 00110 0
run 500 ps
force -freeze sim:/shift3mode/amt 00111 0
run 500 ps
force -freeze sim:/shift3mode/amt 01000 0
run 500 ps
force -freeze sim:/shift3mode/amt 01001 0
run 500 ps
force -freeze sim:/shift3mode/amt 01010 0
run 500 ps
force -freeze sim:/shift3mode/amt 01011 0
run 500 ps
force -freeze sim:/shift3mode/amt 01100 0
run 500 ps
force -freeze sim:/shift3mode/amt 01101 0
run 500 ps
force -freeze sim:/shift3mode/amt 01110 0
run 500 ps
force -freeze sim:/shift3mode/amt 01111 0
run 500 ps
force -freeze sim:/shift3mode/amt 10000 0
run 500 ps
force -freeze sim:/shift3mode/amt 10001 0
run 500 ps
force -freeze sim:/shift3mode/amt 10010 0
run 500 ps
force -freeze sim:/shift3mode/amt 10011 0
run 500 ps
force -freeze sim:/shift3mode/amt 10100 0
run 500 ps
force -freeze sim:/shift3mode/amt 10101 0
run 500 ps
force -freeze sim:/shift3mode/amt 10110 0
run 500 ps
force -freeze sim:/shift3mode/amt 10111 0
run 500 ps
force -freeze sim:/shift3mode/amt 11000 0
run 500 ps
force -freeze sim:/shift3mode/amt 11001 0
run 500 ps
force -freeze sim:/shift3mode/amt 11010 0
run 500 ps
force -freeze sim:/shift3mode/amt 11011 0
run 500 ps
force -freeze sim:/shift3mode/amt 11100 0
run 500 ps
force -freeze sim:/shift3mode/amt 11101 0
run 500 ps
force -freeze sim:/shift3mode/amt 11110 0
run 500 ps
force -freeze sim:/shift3mode/amt 11111 0
run 500 ps



force -freeze sim:/shift3mode/lar 01 0
force -freeze sim:/shift3mode/amt 00000 0
run 500 ps
force -freeze sim:/shift3mode/amt 00001 0
run 500 ps
force -freeze sim:/shift3mode/amt 00010 0
run 500 ps
force -freeze sim:/shift3mode/amt 00011 0
run 500 ps
force -freeze sim:/shift3mode/amt 00100 0
run 500 ps
force -freeze sim:/shift3mode/amt 00101 0
run 500 ps
force -freeze sim:/shift3mode/amt 00110 0
run 500 ps
force -freeze sim:/shift3mode/amt 00111 0
run 500 ps
force -freeze sim:/shift3mode/amt 01000 0
run 500 ps
force -freeze sim:/shift3mode/amt 01001 0
run 500 ps
force -freeze sim:/shift3mode/amt 01010 0
run 500 ps
force -freeze sim:/shift3mode/amt 01011 0
run 500 ps
force -freeze sim:/shift3mode/amt 01100 0
run 500 ps
force -freeze sim:/shift3mode/amt 01101 0
run 500 ps
force -freeze sim:/shift3mode/amt 01110 0
run 500 ps
force -freeze sim:/shift3mode/amt 01111 0
run 500 ps
force -freeze sim:/shift3mode/amt 10000 0
run 500 ps
force -freeze sim:/shift3mode/amt 10001 0
run 500 ps
force -freeze sim:/shift3mode/amt 10010 0
run 500 ps
force -freeze sim:/shift3mode/amt 10011 0
run 500 ps
force -freeze sim:/shift3mode/amt 10100 0
run 500 ps
force -freeze sim:/shift3mode/amt 10101 0
run 500 ps
force -freeze sim:/shift3mode/amt 10110 0
run 500 ps
force -freeze sim:/shift3mode/amt 10111 0
run 500 ps
force -freeze sim:/shift3mode/amt 11000 0
run 500 ps
force -freeze sim:/shift3mode/amt 11001 0
run 500 ps
force -freeze sim:/shift3mode/amt 11010 0
run 500 ps
force -freeze sim:/shift3mode/amt 11011 0
run 500 ps
force -freeze sim:/shift3mode/amt 11100 0
run 500 ps
force -freeze sim:/shift3mode/amt 11101 0
run 500 ps
force -freeze sim:/shift3mode/amt 11110 0
run 500 ps
force -freeze sim:/shift3mode/amt 11111 0
run 500 ps


force -freeze sim:/shift3mode/lar 10 0
force -freeze sim:/shift3mode/amt 00000 0
run 500 ps
force -freeze sim:/shift3mode/amt 00001 0
run 500 ps
force -freeze sim:/shift3mode/amt 00010 0
run 500 ps
force -freeze sim:/shift3mode/amt 00011 0
run 500 ps
force -freeze sim:/shift3mode/amt 00100 0
run 500 ps
force -freeze sim:/shift3mode/amt 00101 0
run 500 ps
force -freeze sim:/shift3mode/amt 00110 0
run 500 ps
force -freeze sim:/shift3mode/amt 00111 0
run 500 ps
force -freeze sim:/shift3mode/amt 01000 0
run 500 ps
force -freeze sim:/shift3mode/amt 01001 0
run 500 ps
force -freeze sim:/shift3mode/amt 01010 0
run 500 ps
force -freeze sim:/shift3mode/amt 01011 0
run 500 ps
force -freeze sim:/shift3mode/amt 01100 0
run 500 ps
force -freeze sim:/shift3mode/amt 01101 0
run 500 ps
force -freeze sim:/shift3mode/amt 01110 0
run 500 ps
force -freeze sim:/shift3mode/amt 01111 0
run 500 ps
force -freeze sim:/shift3mode/amt 10000 0
run 500 ps
force -freeze sim:/shift3mode/amt 10001 0
run 500 ps
force -freeze sim:/shift3mode/amt 10010 0
run 500 ps
force -freeze sim:/shift3mode/amt 10011 0
run 500 ps
force -freeze sim:/shift3mode/amt 10100 0
run 500 ps
force -freeze sim:/shift3mode/amt 10101 0
run 500 ps
force -freeze sim:/shift3mode/amt 10110 0
run 500 ps
force -freeze sim:/shift3mode/amt 10111 0
run 500 ps
force -freeze sim:/shift3mode/amt 11000 0
run 500 ps
force -freeze sim:/shift3mode/amt 11001 0
run 500 ps
force -freeze sim:/shift3mode/amt 11010 0
run 500 ps
force -freeze sim:/shift3mode/amt 11011 0
run 500 ps
force -freeze sim:/shift3mode/amt 11100 0
run 500 ps
force -freeze sim:/shift3mode/amt 11101 0
run 500 ps
force -freeze sim:/shift3mode/amt 11110 0
run 500 ps
force -freeze sim:/shift3mode/amt 11111 0
run 500 ps
