vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/dist_mem_gen_v8_0_13
vlib modelsim_lib/msim/xil_defaultlib

vmap dist_mem_gen_v8_0_13 modelsim_lib/msim/dist_mem_gen_v8_0_13
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work dist_mem_gen_v8_0_13 -64 -incr \
"../../pipline_cpu.ip_user_files/ipstatic/simulation/dist_mem_gen_v8_0.v" \

vlog -work xil_defaultlib -64 -incr \
"../../pipline_cpu.srcs/sources_1/new/ip/inst_rom/sim/inst_rom.v" \
"../../pipline_cpu.srcs/sources_1/new/mycpu/fetch.v" \
"../../pipline_cpu.srcs/sources_1/new/mycpu/fetch_decode.v" \
"../../pipline_cpu.srcs/sources_1/new/mycpu/mycpu.v" \
"../../pipline_cpu.srcs/sources_1/new/pip_cpu.v" \
"../../pipline_cpu.srcs/sim_1/new/testbench.v" \

vlog -work xil_defaultlib \
"glbl.v"

