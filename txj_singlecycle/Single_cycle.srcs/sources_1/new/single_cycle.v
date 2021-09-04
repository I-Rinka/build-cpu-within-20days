`timescale 1ns / 1ps


module single_cycle(
    input clk,
    input rst_n
);


    wire [31:0] inst_rom_addr;
    wire [31:0] inst_rom_rdata;
    wire [31:0] data_ram_rd;
    wire [31:0] data_ram_addr;
    wire [31:0] data_ram_wd;
    wire data_ram_we;

    mycpu _mycpu(
        .clk(clk),
        .rst_n(rst_n),
        
        .inst_rom_addr(inst_rom_addr),   //输出
        .inst_rom_rdata(inst_rom_rdata),  //输入
        .data_ram_addr(data_ram_addr),
        .data_ram_rd(data_ram_rd),
        .data_ram_wd(data_ram_wd),
        .data_ram_we(data_ram_we)
    );

    inst_rom _inst_rom(
        .a(inst_rom_addr[11:2]),  //输入
        .spo(inst_rom_rdata)         //输出
    );

    data_ram data_ram_4k(
        .a(data_ram_addr[11:2]),                           // input wire [9 : 0] a
        .d(data_ram_wd),                                  // input wire [31 : 0] d
        .clk(clk),                                        // input wire clk
        .we(data_ram_we),                                // input wire we
        .spo(data_ram_rd)                             // output wire [31 : 0] spo
    );
    

endmodule
