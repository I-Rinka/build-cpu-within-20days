vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../pipline_cpu/pipline_cpu.srcs/sources_1/new/pip_cpu.v" \


vlog -work xil_defaultlib \
"glbl.v"

