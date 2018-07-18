onerror {quit -f}
vlib work
vlog -work work Process_Test.vo
vlog -work work Process_Test.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Process_Test_vlg_vec_tst
vcd file -direction Process_Test.msim.vcd
vcd add -internal Process_Test_vlg_vec_tst/*
vcd add -internal Process_Test_vlg_vec_tst/i1/*
add wave /*
run -all
