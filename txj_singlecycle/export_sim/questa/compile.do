vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 \
"../../../pipline_cpu/pipline_cpu.srcs/sources_1/new/pip_cpu.v" \


vlog -work xil_defaultlib \
"glbl.v"

