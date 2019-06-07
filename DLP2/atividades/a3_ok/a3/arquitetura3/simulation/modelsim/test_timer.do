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
sim:/timer/min_t \
sim:/timer/c_reg_d \
sim:/timer/c_reg_u \
sim:/timer/s_reg_d \
sim:/timer/s_reg_u \
sim:/timer/m_reg_d \
sim:/timer/m_reg_u

force -freeze sim:/timer/clk 1 0, 0 {10000 ps} -r {20 ns}
force -freeze sim:/timer/reset 1 0
run 30 ns

force -freeze sim:/timer/reset 0 0
force -freeze sim:/timer/c_reg_u 10#9 0
force -freeze sim:/timer/c_reg_d 10#9 0
force -freeze sim:/timer/s_reg_u 10#9 0
force -freeze sim:/timer/s_reg_d 10#5 0
force -freeze sim:/timer/m_reg_u 10#9 0
force -freeze sim:/timer/m_reg_d 10#5 0
run 30 ns

noforce sim:/timer/c_reg_u
noforce sim:/timer/c_reg_d
noforce sim:/timer/s_reg_u
noforce sim:/timer/s_reg_d
noforce sim:/timer/m_reg_u
noforce sim:/timer/m_reg_d

radix -unsigned

run 50 ms