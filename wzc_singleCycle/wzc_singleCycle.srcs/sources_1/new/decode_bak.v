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
         input  wire [31:0] DCDFTC_in_instr,

         output wire [5:0] DCD_out_unionOP
       );

wire [5:0] opcode=DCDFTC_in_instr[31:26];
wire [5:0] funcode=DCDFTC_in_instr[5:0];

wire [5:0]OP=GetEXEOP(opcode,funcode);

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
      default:
        GetEXEOP=`_STALL;
    endcase
  end
endfunction

assign DCD_out_unionOP=OP;

endmodule
