`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2021/08/26 11:14:35
// Design Name:
// Module Name: DCD
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

module decode(
         input wire [31:0] DCDFTC_in_instr,
         input wire [31:0] DCDFTC_in_next_pc,

         input wire [31:0] DCD_in_reg1_data,
         input wire [31:0] DCD_in_reg2_data,

         output reg DCD_reg_we,
         output reg DCD_mem_we,
         output reg DCD_jmp_we,

         output wire [5:0] DCD_out_unionOP,
         output wire [4:0] DCD_out_reg1_addr,
         output wire [4:0] DCD_out_reg2_addr,

         output reg [4:0] DCD_out_wtreg_addr,

         output reg [31:0] DCD_out_data1,
         output reg [31:0] DCD_out_data2
       );

wire [5:0] opcode=DCDFTC_in_instr[31:26];
wire [5:0] funcode=DCDFTC_in_instr[5:0];

wire [5:0] OP=GetEXEOP(opcode,funcode);


wire [4:0] rs=DCDFTC_in_instr[25:21];
wire [4:0] rt=DCDFTC_in_instr[20:16];
wire [4:0] rd=DCDFTC_in_instr[15:11];
wire [15:0] imm16=DCDFTC_in_instr[15:0];
wire [25:0] imm26=DCDFTC_in_instr[25:0];

wire [31:0] sign_ext_imm16={{16{imm16[15]}}, imm16};

assign DCD_out_reg1_addr=rs;
assign DCD_out_reg2_addr=rt;

always @(*)
  begin
    case (OP)
      `_ADD:
        begin
          DCD_out_wtreg_addr=rd;
          DCD_out_data1=DCD_in_reg1_data;
          DCD_out_data2=DCD_in_reg2_data;
          DCD_reg_we=1;
          DCD_mem_we=0;
          DCD_jmp_we=0;
        end
      `_ADDIU:
        begin
          DCD_out_wtreg_addr=rt;
          DCD_out_data1=DCD_in_reg1_data;
          DCD_out_data2=sign_ext_imm16;
          DCD_reg_we=1;
          DCD_mem_we=0;
          DCD_jmp_we=0;
        end
      `_LUI:
        begin
          DCD_out_wtreg_addr=rt;
          DCD_out_data1={imm16,16'b0};
          DCD_out_data2=0;
          DCD_reg_we=1;
          DCD_mem_we=0;
          DCD_jmp_we=0;
        end
      `_ORI:
        begin
          DCD_out_wtreg_addr=rt;
          DCD_out_data1=DCD_in_reg1_data;
          DCD_out_data2=imm16;
          DCD_reg_we=1;
          DCD_mem_we=0;
          DCD_jmp_we=0;
        end
      `_BEQ:
        begin
          DCD_out_wtreg_addr=rt;
          DCD_out_data1=DCDFTC_in_next_pc;
          DCD_out_data2={sign_ext_imm16[29:0],2'b0};
          DCD_reg_we=0;
          DCD_mem_we=0;
          if (DCD_in_reg1_data==DCD_in_reg2_data)
            begin
              DCD_jmp_we=1;
            end
          else
            DCD_jmp_we=0;
        end
      `_J:
        begin
          DCD_out_wtreg_addr=rt;
          DCD_out_data1={DCDFTC_in_next_pc[31:28],imm26,2'b0};
          DCD_out_data2=0;
          DCD_reg_we=0;
          DCD_mem_we=0;
          DCD_jmp_we=1;
        end
      `_SW:
        begin
          DCD_out_wtreg_addr=rs;
          DCD_out_data1=DCD_in_reg1_data;
          DCD_out_data2=sign_ext_imm16;
          DCD_reg_we=0;
          DCD_mem_we=1;
          DCD_jmp_we=0;
        end
      `_LW:
        begin
          DCD_out_wtreg_addr=rt;
          DCD_out_data1=DCD_in_reg1_data;
          DCD_out_data2=sign_ext_imm16;
          DCD_reg_we=1;
          DCD_mem_we=0;
          DCD_jmp_we=0;
        end
      `_SRLV:
        begin
          DCD_out_wtreg_addr=rd;
          DCD_out_data1=DCD_in_reg1_data;
          DCD_out_data2=DCD_in_reg2_data;
          DCD_reg_we=1;
          DCD_mem_we=0;
          DCD_jmp_we=0;
        end
      default:
        begin
          DCD_out_wtreg_addr=0;
          DCD_out_data1=0;
          DCD_out_data2=0;
          DCD_reg_we=0;
          DCD_mem_we=0;
          DCD_jmp_we=0;
        end
    endcase
  end

function [5:0] GetEXEOP(input [5:0] opcode,input [5:0] funcode);
  begin
    case (opcode)
      `OP_SPECIAL :
        begin
          case (funcode)
            `FUNC_ADD  :
              GetEXEOP=`_ADD;
            `FUNC_SRLV  :
              GetEXEOP=`_SRLV;

            default:
              GetEXEOP=`_STALL;
          endcase
        end
      `OP_LUI :
        GetEXEOP=`_LUI;
      `OP_ORI :
        GetEXEOP=`_ORI;
      `OP_SW :
        GetEXEOP=`_SW;
      `OP_LW :
        GetEXEOP=`_LW;
      `OP_J :
        GetEXEOP=`_J;
      `OP_BEQ :
        GetEXEOP=`_BEQ;
      `OP_ADDIU :
        GetEXEOP=`_ADDIU;
      default:
        GetEXEOP=`_STALL;
    endcase
  end
endfunction

assign DCD_out_unionOP=OP;

endmodule
