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

wire [31:0] alu_data1;
wire [31:0] alu_data2;
wire [31:0] alu_result;


wire [31:0] instruction;

wire [31:0] PC_now;
wire [31:0] PC_ds=PC_now+4;
assign PC_now=inst_rom_addr;

wire jmp_enable=GetJMP(union_code,reg1_val,reg2_val);

fetch FTC(
        .clk(clk),
        .rst(rstn),
        .FTCEXE_in_new_pc_addr(alu_result),
        .FTCMEM_in_instr(inst_rom_rdata),
        .FTCMEM_out_pc_val(inst_rom_addr),
        .FTCDCD_out_instr(instruction),
        .FTC_in_jmp_en(jmp_enable)
      );

wire [5:0] union_code; // A general code to choose right route
decode DCD(
         .DCDFTC_in_instr(instruction),
         .DCD_out_unionOP(union_code)
       );

wire [5:0]write_reg_addr=GetWriteReg(union_code);
function [5:0] GetWriteReg(uc);
  begin
    case (uc)
      `_LUI,`_ORI,`_LW: // 20~16 rt
        GetWriteReg=instruction[20:16];
      `_SW: // 25~21 base
        GetWriteReg=instruction[20:16];
      `_ADD,`_SRLV:
        GetWriteReg=instruction[15:11];
      default:
        GetWriteReg=0;
    endcase
  end
endfunction


// wire reg_write=reg_write_en(union_code);
function reg_write_en(uc);
  begin
    case (uc)
      `_ADD,`_ORI,`_ADDIU,`_LW,`_SRLV:
        reg_write_en=1;
      default:
        reg_write_en= 0;
    endcase
  end

endfunction
assign data_ram_wen=(union_code==`_SW)? 1:0;
assign reg_we=reg_write_en(union_code);


assign data_ram_wdata=reg_rd2;

assign reg_wd=(union_code==`_LW)? data_ram_rdata:alu_result; // reg data

wire [31:0] reg1_val=reg_rd1|(|reg_ra1); // get 0 from address0, and mask the input data
wire [31:0] reg2_val=reg_rd2|(|reg_ra2);

wire [15:0] imm=instruction[15:0];
wire [31:0] sign_ext_imm={{16{instruction[15]}},imm};
wire [31:0] zero_ext_imm={16'b0,imm};

assign {alu_data1,alu_data2} =
       (union_code==`_ADDIU)? {reg1_val,sign_ext_imm}
       :(union_code==`_ORI)? {reg1_val,zero_ext_imm}
       :(union_code==`_LUI)? {imm,reg2_val[15:0],32'b0}
       :(union_code==`_J)? {PC_ds[31:28],instruction[25:0],2'b0,32'b0}
       :(union_code==`_SW||union_code==`_LW)? {reg1_val,sign_ext_imm}
       :(union_code==`_BEQ)? {PC_ds[31:0],{sign_ext_imm[29:0],2'b0}}
       :(union_code==`_ADD || union_code==`_SRLV)? {reg1_val,reg2_val}
       :0;

function GetJMP(input [4:0]uc,input [31:0]reg1_val,input [31:0]reg2_val);
  begin
    case (uc)
      `_BEQ:
        if (reg1_val==reg2_val)
          GetJMP=1;
        else
          GetJMP=0;
      `_J:
        GetJMP=1;
      default:
        GetJMP=0;
    endcase
  end

endfunction
execute EXE(
          .EXEDCD_in_op(union_code),
          .EXEDCD_in_input1(alu_data1),
          .EXEDCD_in_input2(alu_data2),
          .EXE_out_result(alu_result)
        );

assign data_ram_addr=alu_result;
assign reg_ra1=instruction[25:21];
assign reg_ra2=instruction[20:16];
assign reg_wa=write_reg_addr;

endmodule
