`timescale 1ns / 1ps


module pc(
    input           clk,
    input           rst_n,
    
    input           pc_jmp,
    input           pc_br,
    input   [15:0]  pc_off,
    input   [25:0]  pc_tgt,
    
    output  [31:0]  pc_val
    );

    reg [31:0] pc_reg;
    wire [31:0] pc_ds;

    assign pc_ds = pc_reg + 32'h4;

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) pc_reg <= 32'h00000000; //复位初始化
        else if(pc_jmp) pc_reg <= {pc_ds[31:28],pc_tgt,2'b00};
        else if(pc_br) pc_reg <= pc_ds + {{14{pc_off[15]}},pc_off, 2'b00};
        else pc_reg <= pc_ds;
    end
    assign pc_val = pc_reg;
endmodule
