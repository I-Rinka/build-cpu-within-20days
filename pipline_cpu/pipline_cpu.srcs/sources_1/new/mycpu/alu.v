`timescale 1ns / 1ps
`include"define.vh"
module alu(
    input [31:0] alu_in1,
    input [31:0] alu_in2,
    input [31:0] alu_imm32,
    input [4:0] alu_uins,
    input [31:0] alu_pc,
    output [31:0] alu_res
    );

    wire [31:0] ress[16:0];
    
    //lui操作
    wire [31:0] lui_res = {alu_imm32[15:0],16'b0};
    assign ress[`U_LUI] = lui_res;
    // //addiu,lw,sw操作,符号扩展
    // wire [31:0] add1_in1 = alu_in1;
    // wire [31:0] add1_in2 = {{16{alu_in2[15]}},alu_in2[15:0]};
    // wire [31:0] add1_res = add1_in1 + add1_in2;
    // assign ress[`U_LUI] = add1_res;
   
    //add,sub,addu,subu,srlv操作
    assign ress[`U_ADD] = alu_in1 + alu_in2;
    assign ress[`U_SUB] = alu_in1 - alu_in2;
    assign ress[`U_ADDU] = alu_in1 + alu_in2;
    assign ress[`U_SUBU] = alu_in1 - alu_in2;
    assign ress[`U_SRLV] = alu_in2 >> alu_in1;
    assign ress[`U_SLLV] = alu_in2 << alu_in1;
    // //srl操作
    // wire [4:0] sa = alu_in1[10:6];
    // wire [31:0] num = alu_in2;
    // wire [31:0] srl_res = (alu_in2 >> sa);

    //ori操作
    wire [31:0] ori_in1 = alu_in1;
    wire [31:0] ori_in2 = {16'b0,alu_imm32[15:0]};
    wire [31:0] ori_res = ori_in1 | ori_in2;
    assign ress[`U_ORI] = ori_res;

    //andi
    wire [31:0] andi_in1 = alu_in1;
    wire [31:0] andi_in2 = {16'b0,alu_imm32[15:0]};
    wire [31:0] andi_res = andi_in1 & andi_in2;
    assign ress[`U_ANDI] = andi_res;

    //addi,addiu,sw,lw
    wire [31:0] addi_in1 = alu_in1;
    wire [31:0] addi_in2 =  {{16{alu_imm32[15]}},alu_imm32[15:0]};
    wire [31:0] addi_res = addi_in1 + addi_in2;
    assign ress[`U_ADDI] = addi_res;
    assign ress[`U_ADDIU] = addi_res;
    assign ress[`U_SW] = addi_res;
    assign ress[`U_LW] = addi_res;


    //beq
    wire [31:0] beq_in = {{14{alu_imm32[15]}},alu_imm32[15:0], 2'b00};
    wire [31:0] beq_res = alu_pc + beq_in;
    assign ress[`U_BEQ] = beq_res;

    //j
    wire [31:0] j_res = {alu_pc[31:28],alu_imm32[25:0],2'b0};
    assign ress[`U_J] = j_res;

    assign alu_res = ress[alu_uins];
    

endmodule
