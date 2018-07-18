transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/altera/UFSC/AULA9/top_calc.vhd}
vcom -93 -work work {E:/altera/UFSC/AULA9/FSCctrl.vhd}
vcom -93 -work work {E:/altera/UFSC/AULA9/Decod7seg.vhd}
vcom -93 -work work {E:/altera/UFSC/AULA9/D_8FF.vhd}
vcom -93 -work work {E:/altera/UFSC/AULA9/D_4FF.vhd}
vcom -93 -work work {E:/altera/UFSC/AULA9/mux4x1.vhd}
vcom -93 -work work {E:/altera/UFSC/AULA9/c1.vhd}
vcom -93 -work work {E:/altera/UFSC/AULA9/c2.vhd}
vcom -93 -work work {E:/altera/UFSC/AULA9/desloc_1_bit_esq.vhd}
vcom -93 -work work {E:/altera/UFSC/AULA9/desloc_1_bit_dir.vhd}

