`timescale 1ns / 1ps


module regfile(

    input clk,
    input rst_n,

    input [4:0] regfile_reg_ra1,
    input [4:0] regfile_reg_ra2,
    input [4:0] regfile_reg_wa,
    input [31:0] regfile_reg_wd,
    input regfile_reg_we,

    output [31:0] regfile_reg_rd1,
    output [31:0] regfile_reg_rd2

    );
    reg [31:0] reg_rd1;
    reg [31:0] reg_rd2;
    reg [31:0] regs[31:0];
    integer i;

    //这里debug了很久，原因是为了快速方便地利用always的特点使用if语句；
    //设置了一个中间寄存器，导致寄存器更新时慢了一个周期，从而流水线发生了断流

    assign regfile_reg_rd1 = get_reg_rd(regfile_reg_ra1,regfile_reg_wa,regs[regfile_reg_ra1],regfile_reg_wd);
    assign regfile_reg_rd2 = get_reg_rd(regfile_reg_ra2,regfile_reg_wa,regs[regfile_reg_ra2],regfile_reg_wd);
    function [31:0] get_reg_rd(input [4:0] ra, input [4:0] wa, input reg [31:0] regs_val, input [31:0] wd);
    begin
        if(ra == wa)
            get_reg_rd = wd;
        else
            get_reg_rd = regs_val; 
    end
    endfunction
    

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)
            begin
                for(i = 0 ; i <= 31 ; i=i+1)
                    regs[i] <= 32'b0;
            end
        else if(regfile_reg_we == 1'b1)
                regs[regfile_reg_wa] <= regfile_reg_wd;       
    end




endmodule
