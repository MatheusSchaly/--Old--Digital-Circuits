transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/altera/Small Circuits/Flip_Flop_D_Reset_Enable/Flip_Flop_D_Reset_Enable.vhd}

