// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2019.2" *)
module data_ram(a, d, clk, we, spo);
  input [9:0]a;
  input [31:0]d;
  input clk;
  input we;
  output [31:0]spo;
endmodule
