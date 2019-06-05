vcom -93 -work work {../../timer.vhd}
vsim work.timer

add wave -position insertpoint  \
sim:/timer/clk \
sim:/timer/reset \
sim:/timer/csec_o \
sim:/timer/csec_t \
sim:/timer/sec_o \
sim:/timer/sec_t \
sim:/timer/min_o \
sim:/timer/min_t

force -freeze sim:/timer/clk 1 0, 0 {10000 ps} -r {20 ns}
force -freeze sim:/timer/reset 1 0
run 30 ns

force -freeze sim:/timer/reset 0 0
force -freeze sim:/timer/csec_o 10#9 0
force -freeze sim:/timer/csec_t 10#9 0
force -freeze sim:/timer/sec_o 10#9 0
force -freeze sim:/timer/sec_t 10#5 0
force -freeze sim:/timer/min_o 10#9 0
force -freeze sim:/timer/min_t 10#5 0
run 30 ns

noforce sim:/timer/csec_o
noforce sim:/timer/csec_t
noforce sim:/timer/sec_o
noforce sim:/timer/sec_t
noforce sim:/timer/min_o
noforce sim:/timer/min_t

radix -unsigned

run 50 ms