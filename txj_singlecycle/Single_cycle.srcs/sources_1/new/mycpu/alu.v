`timescale 1ns / 1ps
`include "define.vh"

module alu(
    input[31:0] alu_in1,
    input[31:0] alu_in2,
    input[3:0] alu_op,

    output[31:0] alu_res

    );



    //lui操作
    wire [31:0] lui_res = {alu_in2[15:0],16'b0};
    //addiu,lw,sw操作,符号扩展
    wire [31:0] add1_in1 = alu_in1;
    wire [31:0] add1_in2 = {{16{alu_in2[15]}},alu_in2[15:0]};
    wire [31:0] add1_res = add1_in1 + add1_in2;
    //add操作
    wire [31:0] add2_in1 = alu_in1;
    wire [31:0] add2_in2 = alu_in2;
    wire [31:0] add2_res = add2_in1 + add2_in2;

    //srl操作
    wire [4:0] sa = alu_in1[10:6];
    wire [31:0] num = alu_in2;
    wire [31:0] srl_res = (alu_in2 >> sa);

    //ori操作
    wire [31:0] ori_in1 = alu_in1;
    wire [31:0] ori_in2 = {16'b0,alu_in2[15:0]};
    wire [31:0] ori_res = ori_in1 | ori_in2;

    assign alu_res = (alu_op == `ALU_ADD1) ? add1_res :
                     (alu_op == `ALU_LUI) ?  lui_res :
                     (alu_op == `ALU_ADD2) ? add2_res :
                     (alu_op == `ALU_SRL) ? srl_res :
                     (alu_op == `ALU_ORI) ? ori_res : 32'b0;
    
    

endmodule
