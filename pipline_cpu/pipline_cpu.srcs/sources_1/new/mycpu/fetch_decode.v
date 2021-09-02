`timescale 1ns / 1ps

//为了缓存指令
module fetch_decode(
    input clk,
    input rst_n,

    input [31:0] fd_in_instr,

    output [31:0] fd_out_instr
    );

    reg [31:0] tmp_reg_instr;
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) tmp_reg_instr <= 32'h0;
        else tmp_reg_instr <= fd_in_instr;
    end
    assign fd_out_instr = tmp_reg_instr;

endmodule
