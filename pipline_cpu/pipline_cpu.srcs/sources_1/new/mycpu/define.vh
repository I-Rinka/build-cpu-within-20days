
//指令的opcode
  
`define INST_LUI    6'b001111
`define INST_ORI    6'b001101
`define INST_ANDI   6'b001100
`define INST_ADDI   6'b001000
`define INST_ADDIU  6'b001001
`define INST_BEQ    6'b000100
`define INST_J      6'b000010
`define INST_LW     6'b100011
`define INST_SW     6'b101011
  

`define INST_FUNC   6'b000000
//funcode
`define INST_NOP     6'b000000
`define INST_ADD     6'b100000
`define INST_SRL     6'b000010
`define INST_SUB     6'b100010
`define INST_ADDU    6'b100001
`define INST_SUBU    6'b100011
`define INST_SRLV    6'b000110
`define INST_SLLV    6'b000100

// //为了进行查表映射

`define U_NOP    0 
`define U_LUI    1
`define U_ORI    2
`define U_ANDI   3
`define U_ADDI   4
`define U_ADDIU  5
`define U_ADD    6
`define U_SUB    7
`define U_ADDU   8
`define U_SUBU   9
`define U_SRLV   10
`define U_SLLV   11
`define U_BEQ    12
`define U_J      13
`define U_LW      14
`define U_SW     15
    
//funcode





