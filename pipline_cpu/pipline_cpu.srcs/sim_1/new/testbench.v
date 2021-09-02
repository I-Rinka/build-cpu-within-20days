`timescale 1ns / 1ps


module testbench();
    reg rst_n,clk;
    initial begin
        rst_n = 1'b0;
        clk = 1'b0;
        #100 rst_n = 1'b1;
    end
    always #5 clk = ~clk;

    pip_cpu _pip_cpu(
        .clk(clk),
        .rst_n(rst_n)
        
    );

endmodule
