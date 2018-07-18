transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/altera/Small Circuits/Finite_State_Machine/Finite_State_Machine.vhd}

