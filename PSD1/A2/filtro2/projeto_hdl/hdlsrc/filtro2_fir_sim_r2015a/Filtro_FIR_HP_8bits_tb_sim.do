onbreak resume
onerror resume
vsim -novopt work.Filtro_FIR_HP_8bits_tb
add wave sim:/Filtro_FIR_HP_8bits_tb/u_Filtro_FIR_HP_8bits/clk
add wave sim:/Filtro_FIR_HP_8bits_tb/u_Filtro_FIR_HP_8bits/reset
add wave sim:/Filtro_FIR_HP_8bits_tb/u_Filtro_FIR_HP_8bits/clk_enable
add wave sim:/Filtro_FIR_HP_8bits_tb/u_Filtro_FIR_HP_8bits/In_rsvd
add wave sim:/Filtro_FIR_HP_8bits_tb/u_Filtro_FIR_HP_8bits/ce_out
add wave sim:/Filtro_FIR_HP_8bits_tb/u_Filtro_FIR_HP_8bits/Out_rsvd
add wave sim:/Filtro_FIR_HP_8bits_tb/Out_rsvd_ref
run -all
