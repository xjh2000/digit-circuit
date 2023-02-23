`timescale  1ns / 1ps
`include "cnt.v"
module tb_cnt();
    parameter PERIOD = 10;
    reg clk;
    reg rst_n;
    wire[2:0] y;
    
    // generate colck
    initial begin
        rst_n = 1'b1;
        clk   = 1'b0;
        forever #(PERIOD/2)
            clk = ~clk;
    end
    
    cnt u_cnt (.clk(clk), .rst_n (rst_n), .y (y));
    
    initial begin
        $dumpfile("./wave.vcd");
        $dumpvars(0, u_cnt);
        #(PERIOD*10) $finish;
    end
    
endmodule
