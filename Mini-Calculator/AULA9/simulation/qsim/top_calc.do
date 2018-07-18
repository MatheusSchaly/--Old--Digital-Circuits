onerror {quit -f}
vlib work
vlog -work work top_calc.vo
vlog -work work top_calc.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.top_calc_vlg_vec_tst
vcd file -direction top_calc.msim.vcd
vcd add -internal top_calc_vlg_vec_tst/*
vcd add -internal top_calc_vlg_vec_tst/i1/*
add wave /*
run -all
