onerror {quit -f}
vlib work
vlog -work work project.vo
vlog -work work project.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.multi_vlg_vec_tst
vcd file -direction project.msim.vcd
vcd add -internal multi_vlg_vec_tst/*
vcd add -internal multi_vlg_vec_tst/i1/*
add wave /*
run -all
