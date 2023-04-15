`timescale  1ns / 1ps
module tb_p();
    parameter PERIOD = 10;
    reg clk;
    reg rst_n;
    reg start_flag;
    reg [127:0] state;
    reg [127:0] keys;
    reg [23:0] counter;
    wire [127:0] result;
    wire end_flag ;
    
    // generate colck
    initial begin
        rst_n = 1'b1;
        clk   = 1'b0;
        forever #(PERIOD/2)
            clk = ~clk;
    end
    
    
    initial begin
        // state                    = 64'hffff_ffff_ffff_ffff;
        // keys                     = 80'hffff_ffff_ffff_ffff_ffff;
        state                       = 128'h00000000000000000000000000000000;
        keys                        = 128'h00000000000000000000000000000000;
        #((PERIOD/2)*1)  start_flag = 1'b1;
        #((PERIOD/2)*2)  start_flag = 1'b0;
    end
    
    
    
    midori_encrypt u_midori(
    .text_out(result),
    .text_in(state),
    .key(keys),
    .clk(clk));
    
    initial begin
        $dumpfile("./wave.vcd");
        $dumpvars(0, tb_p);
        #(PERIOD*40) $finish;
    end
    
endmodule
