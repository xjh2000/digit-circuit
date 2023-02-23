module cnt (input clk,
            input rst_n,
            output reg [2:0] y);
    
    always @(posedge clk or negedge rst_n) begin
        if (rst_n == 1'b0)
            y <= 3'b1;
        else
        // TODO thie have a bug, not to work
            y <= y + 1'b1;
    end
endmodule
