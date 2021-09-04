`timescale 1ns / 1ps

module pip_cpu(
    input clk,
    input rst_n,
    output [6:0] O_led1,
    output [6:0] O_led2,
    output [7:0] O_px
    );

wire [31:0] instr_rom_addr;
wire [31:0] instr_rom_rd;
wire [31:0] data_ram_rd;
wire data_ram_we;
wire [31:0] data_ram_wd;
wire [31:0] data_ram_addr;

mycpu _mycpu(
    .clk(clk),
    .rst_n(rst_n),
    .cpu_instr_addr(instr_rom_addr),
    .cpu_instr(instr_rom_rd),

    .cpu_mem_rd(data_ram_rd),
    .cpu_mem_we(data_ram_we),
    .cpu_mem_wd(data_ram_wd),
    .cpu_mem_addr(data_ram_addr)
    );

inst_rom _inst_rom(
    .a(instr_rom_addr[11:2]),
    .spo(instr_rom_rd)
);

data_ram data_ram_4k(
    .a(data_ram_addr[11:2]),                           // input wire [9 : 0] a
    .d(data_ram_wd),                                  // input wire [31 : 0] d
    .clk(clk),                                        // input wire clk
    .we(data_ram_we),                                // input wire we
    .spo(data_ram_rd)                             // output wire [31 : 0] spo
);


// input       I_clk,              //系统时钟
// input       I_rst_n,            //复位信号
// input       [7:0] I_show_num,   //输入8-bit数据
// output      [6:0] O_led,        //七段数码管段选信号
// output      [1:0] O_px          //七段数码管位选信号
wire light_wen = data_ram_we &&  data_ram_addr[31:16] == 16'hbfaf ? 1 : 0;
wire [31:0] show_num = light_wen ? data_ram_wd : 0;

light_show _light_show(
    .I_clk(clk),
    .I_rst_n(rst_n),
    // .light_wen(light_wen),
    .I_show_num(show_num),
    .O_led1(O_led1),
    .O_led2(O_led2),
    .O_px(O_px)
);

endmodule
