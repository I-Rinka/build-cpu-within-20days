vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../pipline_cpu/pipline_cpu.srcs/sources_1/new/pip_cpu.v" \


vlog -work xil_defaultlib \
"glbl.v"

