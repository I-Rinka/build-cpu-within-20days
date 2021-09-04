`timescale 1ns / 1ps

module mycpu(

    input clk,
    input rst_n,

    output [31:0] cpu_instr_addr,


    input [31:0] cpu_instr,

    input [31:0] cpu_mem_rd,

    output cpu_mem_we,

    output [31:0] cpu_mem_wd,
    output [31:0] cpu_mem_addr

    );

wire    [31:0]  cpu_alu_res;
wire            cpu_jmp_e;
wire    [31:0]  cpu_pc_val_j;
wire    [31:0]  cpu_pc_val ;
wire    [31:0]  cpu_instr_sec;
wire    [31:0]  cpu_instr_thd;
wire    [4:0]   cpu_reg_ra1;
wire    [4:0]   cpu_reg_ra2;
wire    [4:0]   cpu_reg_wa ;
wire            cpu_reg_we ;
wire    [31:0]  cpu_reg_wd ;
wire    [31:0]  cpu_reg_rd1 ;
wire    [31:0]  cpu_reg_rd2 ;
wire    [31:0]  cpu_reg_rd1_thd;
wire    [31:0]  cpu_reg_rd2_thd;
wire    [4:0]   cpu_uins ;
wire    [4:0]   cpu_uins_thd;
wire    [1:0]   cpu_conflict;
wire    [1:0]   cpu_conflict_thd;
wire    [31:0]  cpu_alu1;
wire    [31:0]  cpu_alu2;
wire    [31:0]  cpu_imm32;  

wire    [31:0]  cpu_pc_val_pre;  

assign cpu_instr_addr = cpu_jmp_e? cpu_pc_val_j : cpu_pc_val;
//assign cpu_instr_addr = cpu_pc_val;

fetch _fetch(
    .clk(clk),                       //input
    .rst_n(rst_n),                   //input
    .fet_pc_tar(cpu_alu_res),                 //input
    .fet_pc_jmp_e(cpu_jmp_e),
    .fet_pc_val(cpu_pc_val),                  //output
    .fet_pc_val_pre(cpu_pc_val_pre),
    .fet_pc_val_j(cpu_pc_val_j)
    );

alu _alu(
    .alu_imm32(cpu_imm32),
    .alu_pc(cpu_pc_val_pre),
    .alu_in1(cpu_alu1),
    .alu_in2(cpu_alu2),
    .alu_uins(cpu_uins_thd),
    .alu_res(cpu_alu_res)
);


fetch_decode _fetch_decode(
    .clk(clk),
    .rst_n(rst_n),
    .fd_in_instr(cpu_instr),
    .fd_out_instr(cpu_instr_sec)
);

decode _decode(
    .dec_instr(cpu_instr_sec),
    .dec_reg_wa(cpu_reg_wa),
    .dec_reg_ra1(cpu_reg_ra1),
    .dec_reg_ra2(cpu_reg_ra2),
    .dec_uins(cpu_uins),
    .dec_conflict(cpu_conflict)
);



decode_control _decode_control(
    .clk(clk),
    .rst_n(rst_n),
    .dc_in_instr(cpu_instr_sec),
    .dc_in_uins(cpu_uins),
    .dc_in_conflict(cpu_conflict),
    .dc_in_reg_rd1(cpu_reg_rd1),
    .dc_in_reg_rd2(cpu_reg_rd2),
    
    // .pc_val(cpu_pc_val),
    // .pc_reg(cpu_pc_val_pre),

    .dc_out_instr(cpu_instr_thd),
    .dc_out_uins(cpu_uins_thd),
    .dc_out_conflict(cpu_conflict_thd),
    .dc_out_reg_rd1(cpu_reg_rd1_thd),
    .dc_out_reg_rd2(cpu_reg_rd2_thd)
    
);



control _control(
    .con_instr(cpu_instr_thd),
    .con_uins(cpu_uins_thd),
    .con_reg_rd1(cpu_reg_rd1_thd),
    .con_reg_rd2(cpu_reg_rd2_thd),
    .con_conflict(cpu_conflict_thd),
    .con_mem_rd(cpu_mem_rd),
    .con_alu_res(cpu_alu_res),

    .con_jmp_e(cpu_jmp_e),
    .con_mem_addr(cpu_mem_addr),
    .con_mem_we(cpu_mem_we),
    .con_mem_wd(cpu_mem_wd),

    .con_reg_we(cpu_reg_we),
    .con_reg_wd(cpu_reg_wd),
    .con_reg_wa(cpu_reg_wa),

    .con_alu1(cpu_alu1),
    .con_alu2(cpu_alu2),
    .con_imm32(cpu_imm32)
);



regfile _regfile(
    .clk(clk),
    .rst_n(rst_n),
    .regfile_reg_ra1(cpu_reg_ra1),
    .regfile_reg_ra2(cpu_reg_ra2),
    .regfile_reg_wa(cpu_reg_wa),
    .regfile_reg_wd(cpu_reg_wd),
    .regfile_reg_we(cpu_reg_we),
    .regfile_reg_rd1(cpu_reg_rd1),
    .regfile_reg_rd2(cpu_reg_rd2)

);
endmodule
