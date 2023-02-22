`timescale  1ns / 1ps
`include "xor_gate.v"
module tb_xor_gate();
    parameter PERIOD = 10;
    reg a            = 0 ;
    reg b            = 0 ;
    reg clk;
    reg rst_n;
    wire y ;
    // generate colck
    initial begin
        forever #(PERIOD/2)
            clk = ~clk;
    end
    initial begin
        #(PERIOD*2) rst_n = 1;
    end
    
    initial begin
        #(PERIOD*1)
        a = 1'b1;
        b = 1'b0;
        #(PERIOD*1)
        a = 1'b0;
        b = 1'b1;
        #(PERIOD*1)
        a = 1'b1;
        b = 1'b1;
    end
    
    xor_gate u_xor_gate (.a (a), .b (b), .y (y));
    
    initial begin
        $dumpfile("./wave.vcd");
        $dumpvars(0, u_xor_gate);
        #(PERIOD*4) $finish;
    end
    
endmodule
