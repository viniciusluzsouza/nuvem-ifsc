transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/vinicius.ls/DLP2/atividades/a3_ok/a3/arquitetura1/timer.vhd}
vcom -93 -work work {/home/vinicius.ls/DLP2/atividades/a3_ok/a3/arquitetura1/my_package.vhd}
vcom -93 -work work {/home/vinicius.ls/DLP2/atividades/a3_ok/a3/arquitetura1/bin2bcd.vhd}
vcom -93 -work work {/home/vinicius.ls/DLP2/atividades/a3_ok/a3/arquitetura1/main_timer.vhd}
vcom -93 -work work {/home/vinicius.ls/DLP2/atividades/a3_ok/a3/arquitetura1/bin2ssd.vhd}

