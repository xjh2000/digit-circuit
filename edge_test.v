module edge_test (input clk,
                  input rst_n,
                  input a,
                  output y1,
                  output y2,
                  output y3);
    
    reg a_dly1;
    
    always @(posedge clk or negedge rst_n) begin
        if (rst_n == 1'b0)
            a_dly1 <= 1'b0;
        else
            a_dly1 <= a;
    end
    assign y1 = a & (~a_dly1);
    assign y2 = (~a) & a_dly1;
    assign y3 = a ^ a_dly1;
    
endmodule
