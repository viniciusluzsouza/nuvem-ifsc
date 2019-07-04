onbreak resume
onerror resume
vsim -novopt work.P1_tb
add wave sim:/P1_tb/u_P1/clk
add wave sim:/P1_tb/u_P1/resetx
add wave sim:/P1_tb/u_P1/clkenable
add wave sim:/P1_tb/u_P1/ceout
add wave sim:/P1_tb/u_P1/Out_P1_1
add wave sim:/P1_tb/Out_P1_1_ref
add wave sim:/P1_tb/u_P1/Out_P1_2
add wave sim:/P1_tb/Out_P1_2_ref
run -all
