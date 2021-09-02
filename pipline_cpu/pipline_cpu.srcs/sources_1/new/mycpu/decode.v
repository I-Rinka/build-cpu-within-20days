`timescale 1ns / 1ps

`include"define.vh"

module decode(

    input [31:0] dec_instr,
    input [4:0] dec_reg_wa,

    output [4:0] dec_reg_ra1,
    output [4:0] dec_reg_ra2,

    output [4:0] dec_uins,
    output [1:0] dec_conflict
    // output reg cpu_jmp_e
    );
    reg [1:0] tmp_reg_conflict;
    reg [4:0] tmp_reg_uins;

    assign dec_reg_ra1 = dec_instr[25:21];
    assign dec_reg_ra2 = dec_instr[20:16];

    always @(*) begin
    case(dec_instr[31:26])
    `INST_LUI    : tmp_reg_uins <= `U_LUI;
    `INST_ORI    : tmp_reg_uins <= `U_ORI;
    `INST_ANDI   : tmp_reg_uins <= `U_ANDI;
    `INST_ADDI   : tmp_reg_uins <= `U_ADDI;
    `INST_ADDIU  : tmp_reg_uins <= `U_ADDIU;
    `INST_BEQ    : tmp_reg_uins <= `U_BEQ;
    `INST_J      : tmp_reg_uins <= `U_J;
    `INST_LW     : tmp_reg_uins <= `U_LW;
    `INST_SW     : tmp_reg_uins <= `U_SW;
    `INST_FUNC   :
        begin
            case(dec_instr[5:0])
                `INST_NOP     : tmp_reg_uins = `U_NOP;
                `INST_ADD     : tmp_reg_uins = `U_ADD;
                // `INST_SRL     : reg_uins = `U_SRL;
                `INST_SUB     : tmp_reg_uins = `U_SUB;
                `INST_ADDU    : tmp_reg_uins = `U_ADDU;
                `INST_SUBU    : tmp_reg_uins = `U_SUBU;
                `INST_SRLV    : tmp_reg_uins = `U_SRLV;
                `INST_SLLV    : tmp_reg_uins = `U_SLLV;
                default       : tmp_reg_uins = `U_NOP;

            endcase
        end
    default : tmp_reg_uins <= `U_NOP;
    endcase

    end

    always @(*) begin
        case(dec_instr[31:26])
            `INST_LUI,`INST_J  : tmp_reg_conflict <= 2'b0;
            `INST_ORI, `INST_ANDI, `INST_ADDI, `INST_ADDIU, `INST_BEQ ,`INST_LW,`INST_SW :   
                begin
                    if(dec_reg_ra1 == dec_reg_wa)
                        tmp_reg_conflict <= 2'b01;
                    else 
                        tmp_reg_conflict <= 2'b00; 
                end 
            `INST_FUNC:
                begin
                    case(dec_instr[5:0])
                        `INST_NOP: tmp_reg_conflict <= 2'b00;
                        `INST_ADD,`INST_SUB,`INST_ADDU,`INST_SUBU,`INST_SRLV,`INST_SLLV:
                        begin 
                            if(dec_reg_ra1 == dec_reg_wa == dec_reg_ra2)
                                tmp_reg_conflict <= 2'b11;
                            else if(dec_reg_ra1 == dec_reg_wa && dec_reg_ra2 != dec_reg_wa)
                                tmp_reg_conflict <= 2'b01;
                            else if(dec_reg_ra1 != dec_reg_wa && dec_reg_ra2 == dec_reg_wa)
                                tmp_reg_conflict <= 2'b10;
                            else tmp_reg_conflict <= 2'b00;
                        end
                        `INST_SRL :
                        begin
                            if(dec_reg_ra2 == dec_reg_wa)
                                tmp_reg_conflict <= 2'b10;
                            else 
                                tmp_reg_conflict <= 2'b00; 
                        end  
                        default : tmp_reg_conflict <= 2'b00;        
                    endcase
                end
            default : tmp_reg_conflict <= 2'b0;
        endcase
    end

    assign dec_conflict = tmp_reg_conflict;
    assign dec_uins = tmp_reg_uins;
endmodule
