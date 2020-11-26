transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {decoder.vo}

vlog -vlog01compat -work work +incdir+C:/Users/42072/OneDrive/Documents/Innopolis/ComputerArchitecture/Lab/Week13 {C:/Users/42072/OneDrive/Documents/Innopolis/ComputerArchitecture/Lab/Week13/alu_decoder.v}
vlog -vlog01compat -work work +incdir+C:/Users/42072/OneDrive/Documents/Innopolis/ComputerArchitecture/Lab/Week13 {C:/Users/42072/OneDrive/Documents/Innopolis/ComputerArchitecture/Lab/Week13/control_unit.v}
vlog -vlog01compat -work work +incdir+C:/Users/42072/OneDrive/Documents/Innopolis/ComputerArchitecture/Lab/Week13 {C:/Users/42072/OneDrive/Documents/Innopolis/ComputerArchitecture/Lab/Week13/decoder.v}
vlog -vlog01compat -work work +incdir+C:/Users/42072/OneDrive/Documents/Innopolis/ComputerArchitecture/Lab/Week13 {C:/Users/42072/OneDrive/Documents/Innopolis/ComputerArchitecture/Lab/Week13/testbench.v}

vsim -t 1ps +transport_int_delays +transport_path_delays -L altera_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L gate_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
