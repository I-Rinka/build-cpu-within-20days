-makelib ies_lib/dist_mem_gen_v8_0_13 \
  "../../pipline_cpu.ip_user_files/ipstatic/simulation/dist_mem_gen_v8_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../pipline_cpu.srcs/sources_1/new/ip/inst_rom/sim/inst_rom.v" \
  "../../pipline_cpu.srcs/sources_1/new/mycpu/fetch.v" \
  "../../pipline_cpu.srcs/sources_1/new/mycpu/fetch_decode.v" \
  "../../pipline_cpu.srcs/sources_1/new/mycpu/mycpu.v" \
  "../../pipline_cpu.srcs/sources_1/new/pip_cpu.v" \
  "../../pipline_cpu.srcs/sim_1/new/testbench.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

