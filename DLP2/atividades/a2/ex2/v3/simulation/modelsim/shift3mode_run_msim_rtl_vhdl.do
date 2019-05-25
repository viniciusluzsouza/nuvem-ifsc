transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/vinicius.ls/DLP2/atividades/a2/ex2/v3/shift3mode.vhd}

