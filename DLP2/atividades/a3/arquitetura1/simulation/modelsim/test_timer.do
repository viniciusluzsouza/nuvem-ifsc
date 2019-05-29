
vcom -93 -work work {../../timer.vhd}
# vcom -93 -work work {../../my_package.vhd}
# vcom -93 -work work {../../bin2bcd.vhd}
# vcom -93 -work work {../../main_timer.vhd}
# vcom -93 -work work {../../bin2ssd.vhd}
vsim work.timer

add wave -position insertpoint  \
sim:/timer/clk \
sim:/timer/reset \
sim:/timer/csec \
sim:/timer/sec \
sim:/timer/min \
sim:/timer/c_reg \
sim:/timer/s_reg \
sim:/timer/m_reg

force -freeze sim:/timer/clk 1 0, 0 {10000 ps} -r {20 ns}
force -freeze sim:/timer/reset 1 0
run 30 ns

force -freeze sim:/timer/reset 0 0
force -freeze sim:/timer/c_reg 10#99 0
force -freeze sim:/timer/s_reg 10#59 0
force -freeze sim:/timer/m_reg 10#59 0
run 30 ns

noforce sim:/timer/c_reg
noforce sim:/timer/s_reg
noforce sim:/timer/m_reg

radix -unsigned

run 50 ms