`define OP_SPECIAL  6'b000000
`define OP_ADDIU  6'b001001
`define OP_LUI  6'b001111
`define OP_ORI  6'b001101
`define OP_SW  6'b101011
`define OP_LW  6'b100011
`define OP_J  6'b000010
`define OP_BEQ  6'b000100

`define FUNC_ADD    6'b100000
`define FUNC_SRLV    6'b000110


// fill alu function
`define _STALL   0 // stall means stop
`define _ADD  1
`define _ADDIU 4

`define _LUI 17
`define _ORI 20
`define _SRLV 28
`define _BEQ 29
`define _J 37


`define _LW 51
`define _SW 54
