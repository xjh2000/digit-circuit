`timescale  1ns / 1ps
`include "p.v"
module tb_p();
    parameter PERIOD = 10;
    reg clk;
    reg rst_n;
    reg [63:0] state;
    reg [79:0] keys;
    reg [23:0] counter;
    wire [63:0] result;
    
    // generate colck
    initial begin
        rst_n = 1'b1;
        clk   = 1'b0;
        forever #(PERIOD/2)
            clk = ~clk;
    end
    
    initial begin
        state = 64'hffff_ffff_ffff_ffff;
        keys  = 80'hffff_ffff_ffff_ffff_ffff;
    end
    
    
    p u_p(
    .result(result),
    .state(state),
    .keys(keys),
    .clk(clk));
    
    initial begin
        $dumpfile("./wave.vcd");
        $dumpvars(0, u_p);
        #(PERIOD*40) $finish;
    end
    
endmodule
