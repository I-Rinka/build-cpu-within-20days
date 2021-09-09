`timescale 1ns / 1ps               //定义时间单位和仿真精度
module light_show(                  //定义输入输出端口
    input       I_clk,              //系统时钟
    input       I_rst_n,            //复位信号
    // input       light_wen,
    input       [31:0] I_show_num,   //输入8-bit数据
    output      [6:0] O_led1,        //七段数码管段选信号
    output      [6:0] O_led2,
    output      [7:0] O_px          //七段数码管位选信号
    );
    
    parameter   C_COUNTER_NUM = 100000;  //1s  
    //parameter   C_COUNTER_NUM = 10; //计数器峰值
    
    reg  [3:0]  R_temp;             //当前显示的4-bit数据寄存器                
    reg  [7:0]  R_px_temp;          //段选信号寄存器
    reg  [31:0] R_counter;          //计数器寄存器
    reg  [31:0] reg_num;
    //wire [7:0]  W_show_num;         
    
    //assign W_show_num = I_show_num;
    
    always@(posedge I_clk or negedge I_rst_n)
    begin
        if(!I_rst_n)          
        begin       //复位处理
            R_px_temp <= 8'b00000001;
            R_temp <= reg_num[3:0];
            R_counter <= 0;
            reg_num <= 0;
        end
        else 
        begin
            reg_num <= I_show_num != 32'b0 ? I_show_num : reg_num;
            if(R_px_temp == 8'b00000001 && R_counter >= C_COUNTER_NUM)
            begin       //高4-bit数据
                R_px_temp <= 8'b00000010;
                R_temp <= reg_num[7:4];
                R_counter <= 0;
            end
            else if(R_px_temp == 8'b00000010 && R_counter >= C_COUNTER_NUM)
            begin       //低4-bit数据
                R_px_temp <= 8'b00000100;
                R_temp <= reg_num[11:8];
                R_counter <= 0;
            end
            else if(R_px_temp == 8'b00000100 && R_counter >= C_COUNTER_NUM)
            begin       //低4-bit数据
                R_px_temp <= 8'b00001000;
                R_temp <= reg_num[15:12];
                R_counter <= 0;
            end
            else if(R_px_temp == 8'b00001000 && R_counter >= C_COUNTER_NUM)
            begin       //低4-bit数据
                R_px_temp <= 8'b00010000;
                R_temp <= reg_num[19:16];
                R_counter <= 0;
            end
            else if(R_px_temp == 8'b00010000 && R_counter >= C_COUNTER_NUM)
            begin       //低4-bit数据
                R_px_temp <= 8'b00100000;
                R_temp <= reg_num[23:20];
                R_counter <= 0;
            end
            else if(R_px_temp == 8'b00100000 && R_counter >= C_COUNTER_NUM)
            begin       //低4-bit数据
                R_px_temp <= 8'b01000000;
                R_temp <= reg_num[27:24];
                R_counter <= 0;
            end
            else if(R_px_temp == 8'b01000000 && R_counter >= C_COUNTER_NUM)
            begin       //低4-bit数据
                R_px_temp <= 8'b10000000;
                R_temp <= reg_num[31:28];
                R_counter <= 0;
            end
            else if(R_px_temp == 8'b10000000 && R_counter >= C_COUNTER_NUM)
            begin       //低4-bit数据
                R_px_temp <= 8'b00000001;
                R_temp <= reg_num[3:0];
                R_counter <= 0;
            end
            else
            begin
                R_counter <= R_counter + 1;
            end
            end
        
        // end 
        
    end
    
    assign O_led1[0] = (R_temp == 4'b0000||R_temp == 4'b0001||R_temp == 4'b0111
                            ||R_temp == 4'b1100)?0:1;
    assign O_led1[1] = (R_temp == 4'b0001||R_temp == 4'b0010||R_temp == 4'b0011
                            ||R_temp == 4'b0111||R_temp == 4'b1101)?0:1;
    assign O_led1[2] = (R_temp == 4'b0001||R_temp == 4'b0011||R_temp == 4'b0100
                            ||R_temp == 4'b0101||R_temp == 4'b0111||R_temp == 4'b1001)?0:1;
    assign O_led1[3] = (R_temp == 4'b0001||R_temp == 4'b0100||R_temp == 4'b0111
                            ||R_temp == 4'b1010||R_temp == 4'b1111)?0:1;
    assign O_led1[4] = (R_temp == 4'b0010||R_temp == 4'b1100||R_temp == 4'b1110
                            ||R_temp == 4'b1111)?0:1;
    assign O_led1[5] = (R_temp == 4'b0101||R_temp == 4'b0110||R_temp == 4'b1011
                            ||R_temp == 4'b1100||R_temp == 4'b1110||R_temp == 4'b1111)?0:1;
    assign O_led1[6] = (R_temp == 4'b0001||R_temp == 4'b0100||R_temp == 4'b1011
                            ||R_temp == 4'b1101)?0:1;

    assign O_led2[0] = (R_temp == 4'b0000||R_temp == 4'b0001||R_temp == 4'b0111
                            ||R_temp == 4'b1100)?0:1;
    assign O_led2[1] = (R_temp == 4'b0001||R_temp == 4'b0010||R_temp == 4'b0011
                            ||R_temp == 4'b0111||R_temp == 4'b1101)?0:1;
    assign O_led2[2] = (R_temp == 4'b0001||R_temp == 4'b0011||R_temp == 4'b0100
                            ||R_temp == 4'b0101||R_temp == 4'b0111||R_temp == 4'b1001)?0:1;
    assign O_led2[3] = (R_temp == 4'b0001||R_temp == 4'b0100||R_temp == 4'b0111
                            ||R_temp == 4'b1010||R_temp == 4'b1111)?0:1;
    assign O_led2[4] = (R_temp == 4'b0010||R_temp == 4'b1100||R_temp == 4'b1110
                            ||R_temp == 4'b1111)?0:1;
    assign O_led2[5] = (R_temp == 4'b0101||R_temp == 4'b0110||R_temp == 4'b1011
                            ||R_temp == 4'b1100||R_temp == 4'b1110||R_temp == 4'b1111)?0:1;
    assign O_led2[6] = (R_temp == 4'b0001||R_temp == 4'b0100||R_temp == 4'b1011
                            ||R_temp == 4'b1101)?0:1;

    assign O_px = R_px_temp;   
endmodule

