`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2021/08/25 22:37:11
// Design Name:
// Module Name: mycpu
// Project Name:
// Target Devices:
// Tool Versions:
// Description:
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////
`include "macro.vh"

module mycpu (
         input         rstn,
         input         clk,

         (*mark_debug = "true"*)output [31:0] inst_rom_addr,
         input  [31:0] inst_rom_rdata,

         (*mark_debug = "true"*)output [31:0] data_ram_addr,
         (*mark_debug = "true"*)output [31:0] data_ram_wdata,
         (*mark_debug = "true"*)output        data_ram_wen,
         (*mark_debug = "true"*)input  [31:0] data_ram_rdata
       );

(*mark_debug = "true"*)wire        reg_we;     // in: cu
(*mark_debug = "true"*)wire [4:0]  reg_ra1;    // in: imem
(*mark_debug = "true"*)wire [4:0]  reg_ra2;    // in: imem
(*mark_debug = "true"*)wire [4:0]  reg_wa;     // in: imem
(*mark_debug = "true"*)wire [31:0] reg_wd;     // in: imem
(*mark_debug = "true"*)wire [31:0] reg_rd1;    // out: alu
(*mark_debug = "true"*)wire [31:0] reg_rd2;    // out: alu

regfile _regfile(
          .clk(clk),
          .rst(rstn),
          .reg_we(reg_we),
          .reg_ra1(reg_ra1),
          .reg_ra2(reg_ra2),
          .reg_wa(reg_wa),
          .reg_wd(reg_wd),
          .reg_rd1(reg_rd1),
          .reg_rd2(reg_rd2)
        );

wire [31:0] alu_result;
wire [31:0] instruction;
wire jmp_en;
wire mem_we;

fetch FTC(
        .clk(clk),
        .rst(rstn),
        .FTCMEM_out_pc_val(inst_rom_addr),
        .FTCEXE_in_new_pc_addr(alu_result),
        .FTC_in_jmp_en(jmp_en),
        .FTCDCD_out_instr(instruction),
        .FTCMEM_in_instr(inst_rom_rdata)
      );

wire [31:0] data1;
wire [31:0] data2;
wire [31:0] next_pc=inst_rom_addr+4;

wire [5:0] union_opcode;

decode DCD(
         .DCDFTC_in_instr(instruction),
         
         .DCD_in_reg1_data(reg_rd1),
         .DCD_in_reg2_data(reg_rd2),

         .DCDFTC_in_next_pc(next_pc),
         .DCD_out_reg1_addr(reg_ra1),
         .DCD_out_reg2_addr(reg_ra2),
         .DCD_out_wtreg_addr(reg_wa),
         .DCD_out_unionOP(union_opcode),
         .DCD_jmp_we(jmp_en),
         .DCD_reg_we(reg_we),
         .DCD_mem_we(mem_we),
         .DCD_out_data1(data1),
         .DCD_out_data2(data2)
       );

assign reg_wd=(union_opcode!=`_LW)? alu_result:data_ram_rdata;
assign data_ram_wdata=reg_rd2;
assign data_ram_addr=alu_result;

execute EXE(
          .EXEDCD_in_input1(data1),
          .EXEDCD_in_input2(data2),
          .EXEDCD_in_op(union_opcode),
          .EXE_out_result(alu_result)
        );

endmodule
