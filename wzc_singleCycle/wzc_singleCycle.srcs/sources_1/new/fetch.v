`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2021/08/25 23:42:19
// Design Name:
// Module Name: fetch
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

// Output next instruction
`include "macro.vh"
module fetch(
         input           clk,
         input           rst,
         input   wire FTC_in_jmp_en, // enable change value for jump instructions
         input   [31:0]  FTCEXE_in_new_pc_addr,

         input   [31:0]  FTCMEM_in_instr,

         output  [31:0]  FTCMEM_out_pc_val,
         output  [31:0]  FTCDCD_out_instr
       );

reg [31:0] pc_addr;

// reg [31:0] new_pc_addr; // delay slot, if branch instructions come, new_pc_addr will become the result address

assign FTCDCD_out_instr=FTCMEM_in_instr&{32{rst}};
assign FTCMEM_out_pc_val=pc_addr;


always @(posedge clk or negedge rst)
  begin
    if (!rst)
      begin
        // pc_addr <= 32'hbfc00000;
        pc_addr <= 32'h000000000;
      end
    else if (FTC_in_jmp_en==1)
      begin
        pc_addr <= FTCEXE_in_new_pc_addr;
      end
    else
      pc_addr <= pc_addr+32'd4;

  end
// new_pc_addr <= new_pc_addr+4;
// if (!rst)
//   begin
//     new_pc_addr <= 32'hbfc00000;
//     pc_addr <= 32'hbfc00000;
//   end
// else if (FTC_in_jmp_op==`EXE_J) //J
//   pc_addr <= {new_pc_addr[31:28],FTCEXE_in_addr[27:0]};
// else if (FTC_in_jmp_op==`EXE_BEQ) //BEQ
//   pc_addr <= new_pc_addr+FTCEXE_in_addr;
// else
//   pc_addr <= new_pc_addr;


endmodule
