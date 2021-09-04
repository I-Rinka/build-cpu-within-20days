`timescale 1ns / 1ps


module regfile(

    input clk,
    input rst_n,

    input [4:0] reg_ra1,
    input [4:0] reg_ra2,
    input [4:0] reg_wa,
    input [31:0] reg_wd,
    input reg_we,

    output [31:0] reg_rd1,
    output [31:0] reg_rd2

    );

    //写寄存器
    reg [31:0] regs[31:0];
    integer i;
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)
            begin
                for( i = 0; i <= 31; i = i+1)
                    regs[i] <= 32'b0;
            end
        else if(reg_we == 1'b1) regs[reg_wa] <= reg_wd;
    end

    //读寄存器
    assign reg_rd1 = regs[reg_ra1];
    assign reg_rd2 = regs[reg_ra2];

endmodule
