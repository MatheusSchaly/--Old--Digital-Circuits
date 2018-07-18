onerror {quit -f}
vlib work
vlog -work work halfadder.vo
vlog -work work halfadder.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.halfadder_vlg_vec_tst
vcd file -direction halfadder.msim.vcd
vcd add -internal halfadder_vlg_vec_tst/*
vcd add -internal halfadder_vlg_vec_tst/i1/*
add wave /*
run -all
