
//指令的opcode
`define INST_LUI    6'b001111
`define INST_ADDIU  6'b001001
`define INST_LW     6'b100011
`define INST_SW     6'b101011
`define INST_BEQ    6'b000100
`define INST_J      6'b000010
`define INST_ORI    6'b001101


`define INST_FUNC   6'b000000
//funcode
`define FUNC_ADD    6'b100000
`define FUNC_SRL     6'b000010

//为了进行查表映射
`define ID_LUI      0
`define ID_ADDIU    1
`define ID_LW       2
`define ID_SW       3
`define ID_BEQ      4
`define ID_J        5
`define ID_ADD      6
`define ID_SRL      7
`define ID_ORI      8
`define ID_NULL     9


//对应的ALU操作
`define ALU_ADD1     0
`define ALU_ADD2     1
`define ALU_SRL      2
`define ALU_LUI      3  //用来拼接的作用
`define ALU_NULL     4  //用来空操作，什么都不做
`define ALU_ORI      5

// `define BR_UNIT_J       1
// `define BR_UNIT_BEQ     2


