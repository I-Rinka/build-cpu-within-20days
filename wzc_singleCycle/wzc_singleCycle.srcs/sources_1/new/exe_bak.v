`timescale 1ns / 1ps
`include "macro.vh"

module execute (
         input wire [31:0] EXEDCD_in_input1,
         input wire [31:0] EXEDCD_in_input2,

         input wire [5:0] EXEDCD_in_op,

         //  input wire [4:0] EXEDCD_in_write_addr,
         output wire [31:0] EXE_out_result
       );


wire [32:0] add_o=EXEDCD_in_input1+EXEDCD_in_input2;
wire [31:0] or_o=EXEDCD_in_input1|EXEDCD_in_input2;
wire [31:0] and_o=EXEDCD_in_input1&EXEDCD_in_input2;
wire [31:0] r_shift_o=EXEDCD_in_input2>>EXEDCD_in_input1[4:0];

function [31:0] GetResult(input [5:0] op);
  begin
    case (op)
      `_ADD,`_ADDIU,`_BEQ :
        GetResult=add_o;
      `_ORI:
        GetResult=or_o;
      `_J,`_LUI:
        GetResult=EXEDCD_in_input1;
      `_SRLV:
        GetResult=r_shift_o;
      default:
        GetResult=0;
    endcase
  end

endfunction

wire [32:0]result=GetResult(EXEDCD_in_op);
assign EXE_out_result[31:0] = result[31:0];


endmodule
