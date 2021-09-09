`timescale 1ns / 1ps


module mycpu(

    input clk,
    input rst_n,
    input [31:0] inst_rom_rdata, //把指令内容输入
    input [31:0] data_ram_rd,

    output [31:0] inst_rom_addr, 
    output [31:0] data_ram_addr,
    output data_ram_we,
    output [31:0] data_ram_wd

);
    wire pc_jmp;
    wire pc_br;
    
    wire [15:0] pc_off;
    wire [25:0] pc_tgt;
    wire [31:0] pc_val;

    pc _pc(
        .clk(clk),
        .rst_n(rst_n),
        .pc_jmp(pc_jmp),
        .pc_br(pc_br),
        .pc_off(pc_off),
        .pc_tgt(pc_tgt),
        .pc_val(pc_val)
    );

    //得到了指令地址和指令内容
    wire [31:0] instr;

    assign inst_rom_addr = pc_val;
    assign instr = inst_rom_rdata;

    assign pc_off = instr[15:0];  //直接赋值给偏移量
    assign pc_tgt = instr[25:0];


    wire cu_c1;
    wire cu_c2;
    wire cu_c3;
    wire cu_c4;
    wire cu_br;
    wire cu_jmp;
    wire cu_data_we;
    wire cu_reg_we;
    wire [3:0] cu_op;

    wire [5:0] reg_wa;

    wire [31:0] reg_rd1;
    wire [31:0] reg_rd2;

    wire [31:0] res;

    regfile _regfile(
        .clk(clk),
        .rst_n(rst_n),
        .reg_ra1(instr[25:21]),
        .reg_ra2(instr[20:16]),
        .reg_wa(reg_wa),
        .reg_we(cu_reg_we),
        .reg_rd1(reg_rd1),
        .reg_rd2(reg_rd2),
        .reg_wd(res)
        
    );

    wire [31:0] alu_in1 = (cu_c2 == 0) ? instr : reg_rd1;
    wire [31:0] alu_in2 = (cu_c1 == 0) ? instr : reg_rd2;

    wire [31:0] alu_res;

    alu _alu(
        .alu_in1(alu_in1),
        .alu_in2(alu_in2),
        .alu_op(cu_op),
        .alu_res(alu_res)
    );
   

    assign res = (cu_c3 == 0)? alu_res : data_ram_rd;
    assign data_ram_addr = alu_res;
    assign data_ram_wd = reg_rd2;

    //开始进行译码CU
    control _control(
        // .clk(clk),
        // .rst_n(rst_n),
        .opcode(instr[31:26]),
        .funcode(instr[5:0]),

        .cu_c1(cu_c1),
        .cu_c2(cu_c2),
        .cu_c3(cu_c3),
        .cu_c4(cu_c4),
        .cu_br(cu_br),
        .cu_jmp(pc_jmp),
        .cu_op(cu_op),

        .cu_data_we(data_ram_we),
        .cu_reg_we(cu_reg_we)
    );
    
    assign reg_wa = (cu_c4 == 1'b0) ? instr[20:16] : instr[15:11];   //mux4
    assign pc_br = (cu_br == 1'b1) ? ( (reg_rd1 == reg_rd2) ? 1 : 0) : 0;

endmodule
