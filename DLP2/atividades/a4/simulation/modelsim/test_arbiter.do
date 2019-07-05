# do arbiter4_run_msim_rtl_vhdl.do 
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
vcom -93 -work work {../../arbiter4.vhd}
# Model Technology ModelSim ALTERA vcom 10.1d Compiler 2012.11 Nov  2 2012
# -- Loading package STANDARD
# -- Loading package TEXTIO
# -- Loading package std_logic_1164
# -- Loading package NUMERIC_STD
# -- Compiling entity arbiter4
# -- Compiling architecture rotated_prio_arch of arbiter4
# 
vsim work.arbiter4
# vsim work.arbiter4 
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
# Loading ieee.numeric_std(body)
# Loading work.arbiter4(rotated_prio_arch)
add wave -position insertpoint  \
sim:/arbiter4/clk \
sim:/arbiter4/reset \
sim:/arbiter4/t \
sim:/arbiter4/r \
sim:/arbiter4/g_out \
sim:/arbiter4/state_reg \
sim:/arbiter4/state_next \
sim:/arbiter4/g
force -freeze sim:/arbiter4/clk 1 0, 0 {10000 ps} -r 20ns
force -freeze sim:/arbiter4/reset 1 0
force -freeze sim:/arbiter4/r 0000 0
force -freeze sim:/arbiter4/t 0 0
run 50 ns
force -freeze sim:/arbiter4/reset 0 0
run 50 ns
force -freeze sim:/arbiter4/r 1111 0
run 200 ns
force -freeze sim:/arbiter4/r 0111 0
run 200 ns
force -freeze sim:/arbiter4/r 0011 0
run 200 ns
force -freeze sim:/arbiter4/r 0001 0
run 200 ns
force -freeze sim:/arbiter4/r 0000 0
run 200 ns
run 200 ns
force -freeze sim:/arbiter4/r 0011 0
run 200 ns
force -freeze sim:/arbiter4/t 1 0
run 30 ns
force -freeze sim:/arbiter4/t 0 0
run 200 ns
run 200 ns
force -freeze sim:/arbiter4/r 0000 0
run 200 ns
run 200 ns
force -freeze sim:/arbiter4/r 0100 0
run 200 ns
force -freeze sim:/arbiter4/r 0001 0
run 200 ns
run 200 ns
force -freeze sim:/arbiter4/reset 1 0
run 200 ns
run 200 ns
force -freeze sim:/arbiter4/reset 0 0
run 200 ns
run 200 ns
force -freeze sim:/arbiter4/r 0000 0
run 200 ns
run 200 ns
run 200 ns

