onerror {exit -code 1}
vlib work
vcom -work work paridad1.vho
vcom -work work Simulacion.vwf.vht
vsim -novopt -c -t 1ps -L fiftyfivenm -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.paridad1_vhd_vec_tst
vcd file -direction Paridad1.msim.vcd
vcd add -internal paridad1_vhd_vec_tst/*
vcd add -internal paridad1_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f


