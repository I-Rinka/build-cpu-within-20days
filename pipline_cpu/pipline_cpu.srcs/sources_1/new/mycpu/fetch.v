`timescale 1ns / 1ps


module fetch(

    input clk,
    input rst_n,

    input [31:0] fet_pc_tar,
    input  fet_pc_jmp_e,
    output [31:0] fet_pc_val,
    output [31:0] fet_pc_val_pre,
    output [31:0] fet_pc_val_j
    );


 
    reg [31:0] pc_reg;
    reg [31:0] pc_reg_pre;
    wire [31:0] pc_ds;
    assign pc_ds = pc_reg + 32'h4;

    //assign pc_ds =  (fet_pc_jmp_e)? fet_pc_tar:pc_reg + 32'h4;
    // assign pc_ds = pc_reg + 32'h4;

    // 为什么同样都是这么写jmp，学长的jmp就可以跳，我们的就不能跳


    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) 
            begin
                pc_reg <= 32'h0;
                // pc_reg_pre <= 32'h0;
            end
        // else if(fet_pc_jmp_e)
        //         pc_reg <= fet_pc_tar;
        
        else
            begin
                pc_reg_pre <= pc_reg;
                if(fet_pc_jmp_e) pc_reg <= fet_pc_tar+32'h4;
                else pc_reg <= pc_ds;
                // pc_reg <= pc_ds;
            end
        
    end
    assign fet_pc_val_j = fet_pc_tar;
    assign fet_pc_val = pc_reg;
    //assign  fet_pc_val = (fet_pc_jmp_e) ? fet_pc_tar:pc_reg;
    assign fet_pc_val_pre = pc_reg_pre;
    // assign fet_pc_val_pre = pc_reg-4;
endmodule
