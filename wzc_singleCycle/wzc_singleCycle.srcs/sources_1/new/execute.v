`timescale 1ns / 1ps
`include "macro.vh"

module execute (
         input wire [31:0] EXEDCD_in_input1,
         input wire [31:0] EXEDCD_in_input2,

         input wire [5:0] EXEDCD_in_op,

         output reg [31:0] EXE_out_result
       );


wire [32:0] add_o=EXEDCD_in_input1+EXEDCD_in_input2;
wire [31:0] or_o=EXEDCD_in_input1|EXEDCD_in_input2;
wire [31:0] and_o=EXEDCD_in_input1&EXEDCD_in_input2;
wire [31:0] r_shift_o=EXEDCD_in_input2>>EXEDCD_in_input1[4:0];

always @(*)
  begin
    case (EXEDCD_in_op)
      `_ADD,`_ADDIU,`_BEQ :
        EXE_out_result=add_o;
      `_ORI:
        EXE_out_result=or_o;
      `_J,`_LUI:
        EXE_out_result=EXEDCD_in_input1;
      `_SRLV:
        EXE_out_result=r_shift_o;
      default:
        EXE_out_result=0;
    endcase
  end



endmodule
