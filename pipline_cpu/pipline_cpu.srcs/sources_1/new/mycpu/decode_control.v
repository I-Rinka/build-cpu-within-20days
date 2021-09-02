`timescale 1ns / 1ps

`include "define.vh"
module decode_control(

    input clk,
    input rst_n,

    input [31:0] dc_in_instr,
    input [4:0] dc_in_uins,
    input [1:0] dc_in_conflict,
    input [31:0] dc_in_reg_rd1,
    input [31:0] dc_in_reg_rd2,

    output [31:0] dc_out_instr,
    output [4:0] dc_out_uins,
    output [1:0] dc_out_conflict,
    output [31:0] dc_out_reg_rd1,
    output [31:0] dc_out_reg_rd2,
    // output reg con_jmp_e

    input [31:0] pc_val,
    output reg [31:0] pc_reg
    
    );
    reg [31:0] reg_instr;
    reg [4:0] reg_uins;
    reg [1:0] reg_conflict;
    reg [31:0] reg_rd1;
    reg [31:0] reg_rd2;

    
    // always @(*) begin
    //     case (dc_in_instr[31:26])
    //     `INST_J   : con_jmp_e = 1;
    //     `INST_BEQ : begin
    //         if(reg_rd1==reg_rd2)
    //             con_jmp_e = 1;
    //         else
    //         begin
    //             con_jmp_e=0;
    //         end
    //     end
    //     default   : con_jmp_e = 0;
    //     endcase
    // end

    always @(posedge clk or negedge rst_n) begin
        pc_reg<=pc_val;
    end

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)
            begin
                reg_instr <= 32'b0;
                reg_uins <= 5'b0;
                reg_conflict <= 2'b0;
                reg_rd1 <= 32'b0;
                reg_rd2 <= 32'b0;
            end 
        else
            begin
                reg_instr <= dc_in_instr;
                reg_uins <= dc_in_uins;
                reg_conflict <= dc_in_conflict;
                reg_rd1 <= dc_in_reg_rd1;
                reg_rd2 <= dc_in_reg_rd2;
            end
    end
    assign dc_out_instr = reg_instr;
    assign dc_out_uins = reg_uins;
    assign dc_out_conflict = reg_conflict;
    assign dc_out_reg_rd1 = reg_rd1;
    assign dc_out_reg_rd2 = reg_rd2;

endmodule
