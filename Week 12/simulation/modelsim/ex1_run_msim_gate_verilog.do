transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {ex1.vo}

vlog -vlog01compat -work work +incdir+C:/Users/xxxau/Documents/GitHub/Comppp/CompArch/Week12 {C:/Users/xxxau/Documents/GitHub/Comppp/CompArch/Week12/alu.v}
vlog -vlog01compat -work work +incdir+C:/Users/xxxau/Documents/GitHub/Comppp/CompArch/Week12 {C:/Users/xxxau/Documents/GitHub/Comppp/CompArch/Week12/alu_testbench.v}

vsim -t 1ps +transport_int_delays +transport_path_delays -L altera_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L gate_work -L work -voptargs="+acc"  test

add wave *
view structure
view signals
run -all
