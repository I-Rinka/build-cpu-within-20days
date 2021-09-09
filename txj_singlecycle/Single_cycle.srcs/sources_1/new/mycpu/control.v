`timescale 1ns / 1ps

`include "define.vh"


module control(
    // input rst_n,
    // input clk,
    
    input [5:0] opcode,
    input [5:0] funcode,

    output cu_c1, //第2操作数是立即数还是rt
    output cu_c2, //第1操作数是立即数还是rs
    output cu_c3, //结果是alu数还是data_rom里面的数
    output cu_c4, //目的寄存器是rt还是rd
    output cu_jmp,
    output cu_br,

    output cu_data_we,
    output cu_reg_we,

    output [3:0] cu_op


    );
    wire [3:0] inst_id = get_inst_id(opcode,funcode);
    function [3:0] get_inst_id(input [5:0] opcode, input [5:0] funcode);
    begin 
        case(opcode)
            `INST_LUI   :     get_inst_id = `ID_LUI;
            `INST_ADDIU :     get_inst_id = `ID_ADDIU;
            `INST_LW    :     get_inst_id = `ID_LW;
            `INST_SW    :     get_inst_id = `ID_SW;
            `INST_BEQ   :     get_inst_id = `ID_BEQ;
            `INST_J     :     get_inst_id = `ID_J;
            `INST_ORI   :     get_inst_id = `ID_ORI;
            `INST_FUNC  :     begin 
                case(funcode)
                    `FUNC_ADD  : get_inst_id = `ID_ADD;
                    `FUNC_SRL  : get_inst_id = `ID_SRL;
                    default    : get_inst_id = `ID_NULL;
                endcase
            end
            default    :      get_inst_id = `ID_NULL;
        endcase
    end
    endfunction

    wire [9:0] mask_mux1 = 10'b x011xx0000;
    wire [9:0] mask_mux2 = 10'b x101xx111x;
    wire [9:0] mask_mux3 = 10'b x000xx0100;
    wire [9:0] mask_mux4 = 10'b x011xx0000;
    wire [9:0] mask_reg_we = 10'b x111000111;

    assign cu_c1 = mask_mux1[inst_id];
    assign cu_c2 = mask_mux2[inst_id];
    assign cu_c3 = mask_mux3[inst_id];
    assign cu_c4 = mask_mux4[inst_id];
    assign cu_reg_we = mask_reg_we[inst_id];

    assign cu_br = (inst_id == `ID_BEQ) ? 1 : 0;
    assign cu_jmp = (inst_id == `ID_J) ? 1 : 0;

    assign cu_data_we = (inst_id == `ID_SW) ? 1 : 0;

    assign cu_op = get_alu_op(inst_id);

    function [3:0] get_alu_op(input [4:0] inst_id);
    begin
        case (inst_id)
            `ID_SW, `ID_LW, `ID_ADDIU          : get_alu_op = `ALU_ADD1;
            `ID_ADD                            : get_alu_op = `ALU_ADD2;
            `ID_LUI                            : get_alu_op = `ALU_LUI;
            `ID_SRL                            : get_alu_op = `ALU_SRL;
            `ID_ORI                            : get_alu_op = `ALU_ORI;

            // `ID_J                              : get_alu_op = `BR_UNIT_J;
            // `ID_BEQ                            : get_alu_op = `BR_UNIT_BEQ;
            
            default                            : get_alu_op = `ALU_NULL;
        endcase
    end
    endfunction


endmodule
