vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../pipline_cpu/pipline_cpu.srcs/sources_1/new/pip_cpu.v" \


vlog -work xil_defaultlib \
"glbl.v"

