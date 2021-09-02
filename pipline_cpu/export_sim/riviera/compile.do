vlib work
vlib riviera

vlib riviera/dist_mem_gen_v8_0_13
vlib riviera/xil_defaultlib

vmap dist_mem_gen_v8_0_13 riviera/dist_mem_gen_v8_0_13
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work dist_mem_gen_v8_0_13  -v2k5 \
"../../pipline_cpu.ip_user_files/ipstatic/simulation/dist_mem_gen_v8_0.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../pipline_cpu.srcs/sources_1/new/ip/inst_rom/sim/inst_rom.v" \
"../../pipline_cpu.srcs/sources_1/new/mycpu/fetch.v" \
"../../pipline_cpu.srcs/sources_1/new/mycpu/fetch_decode.v" \
"../../pipline_cpu.srcs/sources_1/new/mycpu/mycpu.v" \
"../../pipline_cpu.srcs/sources_1/new/pip_cpu.v" \
"../../pipline_cpu.srcs/sim_1/new/testbench.v" \

vlog -work xil_defaultlib \
"glbl.v"

