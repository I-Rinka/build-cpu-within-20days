`timescale 1ns / 1ps

`include"define.vh"
module control(
    input [31:0] con_instr,
    input [4:0] con_uins,
    input [31:0] con_reg_rd1,
    input [31:0] con_reg_rd2,
    input [1:0] con_conflict,
    input [31:0] con_mem_rd,
    input [31:0] con_alu_res,


    output con_mem_we,
    output [31:0] con_mem_wd,
    output [31:0] con_mem_addr,

    output con_reg_we,

    output [31:0] con_reg_wd,
    output [4:0] con_reg_wa,
    output con_jmp_e,

    output [31:0] con_alu1,
    output [31:0] con_alu2,
    output [32:0] con_imm32
    );
    reg [31:0] reg_alu1;
    reg [31:0] reg_alu2;
    reg [32:0] reg_imm32;
    reg reg_alu_jmp_e ;

    reg reg_reg_we;
    reg [31:0] reg_reg_wd;
    reg [31:0] reg_reg_wa;

    reg [31:0] reg_data_ram_addr;
    reg reg_data_ram_we;
    reg [31:0] reg_data_ram_wd;
    //为什么这里用reg就不会慢一个周期再更新呢 这里综合出来的是组合逻辑
    always @(*) begin
        reg_alu_jmp_e <= 1'b0;
        reg_reg_we <= 1'b0;
        reg_alu1 <= 32'b0;
        reg_alu2 <= 32'b0;
        reg_imm32 <= 32'b0;
        reg_reg_wd <= 32'b0;
        reg_reg_wa <= 5'b0;
        reg_reg_we <= 1'b0;
        reg_data_ram_addr <= 32'b0;
        reg_data_ram_we <= 1'b0;
        reg_data_ram_wd <= 32'b0;
        case(con_uins)
            // `U_NOP : //啥也不做
            //     begin
            //          reg_alu1 <= 32'b0;
            //          reg_alu2 <= 32'b0;
            //          imm16 <= 16'b0;
            //     end 
            `U_LUI :  //存数到寄存器中
                begin
                    //  reg_alu1 <= 32'b0;
                    //  reg_alu2 <= 32'b0;
                     reg_imm32 <= con_instr[15:0];
                     reg_reg_we <= 1'b1;
                     reg_reg_wd <= con_alu_res;
                     reg_reg_wa <= con_instr[20:16];
                end
            `U_ORI, `U_ANDI, `U_ADDI, `U_ADDIU:    //计算后存数到寄存器中
                begin
                     reg_alu1 <= con_reg_rd1;
                    //  reg_alu2 <= 32'b0;
                     reg_imm32 <= con_instr[15:0];
                     reg_reg_we <= 1'b1;
                     reg_reg_wd <= con_alu_res;
                     reg_reg_wa <= con_instr[20:16];
                end
            `U_BEQ :                                //判断是否跳转
                begin
                    if(con_reg_rd1 == con_reg_rd2)
                        reg_alu_jmp_e <= 1'b1;
                    else 
                        reg_alu_jmp_e <= 1'b0;
                    // reg_alu1 <= 32'b0;
                    // reg_alu2 <= 32'b0;
                    reg_imm32 <= con_instr[15:0];
                end
            `U_J : 
            begin
                reg_alu_jmp_e <= 1'b1;
                // reg_alu1 <= 32'b0;
                // reg_alu2 <= 32'b0;
                reg_imm32 <= con_instr[25:0];
            end
            `U_ADD, `U_SUB, `U_ADDU, `U_SUBU, `U_SRLV, `U_SLLV : 
                begin
                    reg_alu1 <= con_reg_rd1;
                    reg_alu2 <= con_reg_rd2;
                    reg_reg_we <= 1'b1;
                    reg_reg_wa <= con_instr[15:11];
                    reg_reg_wd <= con_alu_res; 
                end
            `U_LW :  //从数据存储器中读数据
                begin
                    reg_alu1 <= con_reg_rd1;
                    reg_imm32 <= con_instr[15:0];

                    reg_reg_we <= 1'b1;
                    reg_data_ram_addr <= con_alu_res;
                    reg_reg_wa <= con_instr[20:16];
                    reg_reg_wd <= con_mem_rd;
                end
            `U_SW :
               begin
                    reg_alu1 <= con_reg_rd1;
                    reg_imm32 <= con_instr[15:0];
                    reg_data_ram_addr <= con_alu_res;
                    reg_data_ram_we <= 1'b1;
                    reg_data_ram_wd <= con_reg_rd2;
               end
        endcase
        
    end


    assign con_mem_addr = reg_data_ram_addr;
    assign con_mem_we = reg_data_ram_we;
    assign con_mem_wd = reg_data_ram_wd;

    assign con_reg_we = reg_reg_we;

    assign con_reg_wd = reg_reg_wd;
    assign con_reg_wa = reg_reg_wa;
    assign con_jmp_e = reg_alu_jmp_e;

    assign con_alu1 = reg_alu1;
    assign con_alu2 = reg_alu2;
    assign con_imm32 = reg_imm32;

endmodule
