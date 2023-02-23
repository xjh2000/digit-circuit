`timescale  1ns / 1ps
`include "edge_test.v"
module tb_edge_test();
    parameter PERIOD = 10;
    reg clk;
    reg rst_n;
    reg a;
    wire y1;
    wire y2;
    wire y3;
    
    // generate colck
    initial begin
        rst_n = 1'b1;
        clk   = 1'b0;
        forever #(PERIOD/2)
            clk = ~clk;
    end
    initial begin
        a = 1'b0;
        #(PERIOD)
        a = 1'b1;
        #(PERIOD)
        a = 1'b0;
    end
    
    edge_test u_edge_test (.clk(clk), .rst_n (rst_n), .a(a),.y1 (y1),.y2(y2),.y3(y3));
    
    initial begin
        $dumpfile("./wave.vcd");
        $dumpvars(0, u_edge_test);
        #(PERIOD*10) $finish;
    end
    
endmodule
