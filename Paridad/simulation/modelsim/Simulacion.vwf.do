vcom -work work Simulacion.vwf.vht
vsim -novopt -c -t 1ps -L fiftyfivenm -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.paridad1_vhd_vec_tst -voptargs="+acc"
add wave /*
run -all
