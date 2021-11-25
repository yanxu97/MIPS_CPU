setenv LMC_TIMEUNIT -9
vlib work
vmap work work
vlog -work work "control_unit.v"

vlog -work work "control_unit_tb.v"
vsim +notimingchecks -L work work.control_unit_tb -wlf testbench.wlf

add wave -noupdate -group control_unit_tb
add wave -noupdate -group control_unit_tb -radix hexadecimal /control_unit_tb/*

add wave -noupdate -group test
add wave -noupdate -group test -radix decimal /control_unit_tb/dut/*

run -all