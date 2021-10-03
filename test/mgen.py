import random

test_reg = ("$0", "$1", "$2", "$16", "$26", "$27")


def get_reg():
    return test_reg[random.randint(0, len(test_reg)-1)]


imm_inst = ("lui", "ori", "andi", "addi", "addiu")


def get_imm_inst():
    ins = imm_inst[random.randint(0, len(imm_inst)-1)]
    rs = get_reg()
    rt = get_reg()
    imm = hex(random.randint(0, 100))
    if ins == "lui":
        return ins+" "+rs+","+imm
    return ins+" "+rs+","+rt+","+imm


tri_inst = ("add", "sub", "addu", "subu", "srlv", "sllv")


def get_tri_inst():
    ins = tri_inst[random.randint(0, len(tri_inst)-1)]
    rs = get_reg()
    rt = get_reg()
    rd = get_reg()
    return ins+" "+rd+","+rs+","+rt


addr = ("0x1000", "0x1234", "0x2020")


def get_sl():
    # rt = "lui $3,"+addr[random.randint(0, len(addr)-1)]+"\n"
    rt = "lui $3,"+"0x0000"+"\n"
    rt += "ori $3,"+addr[random.randint(0, len(addr)-1)]+"\n"
    if random.randint(0, 1) == 0:  # lw
        rt += "lw "+get_reg()+","+"0x0($3)"
    else:  # sw
        rt += "sw "+get_reg()+","+"0x0($3)"
    return rt

# j系指令容易炸，建议人为添加

for ins in range(50):
    r = random.randint(0,100)
    if r>=0 and r<=40:
        print(get_imm_inst())
    # elif r>40 and r<=80:
    else:
        print(get_tri_inst())
    # else:
    #     print(get_sl())
