onerror {quit -f}
vlib work
vlog -work work topo.vo
vlog -work work topo.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.topo_vlg_vec_tst
vcd file -direction topo.msim.vcd
vcd add -internal topo_vlg_vec_tst/*
vcd add -internal topo_vlg_vec_tst/i1/*
add wave /*
run -all
