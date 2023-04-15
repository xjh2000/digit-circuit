module midori_encrypt(input clk,                // system clock
                      input [127:0] key,        // key
                      input [127:0] text_in,    // plain text
                      output [127:0] text_out); // cipher text
    
    reg	[127:0]	text_out;
    reg [127:0] state;
    reg	[8:0]	cnt;
    
    wire [127:0] sub_key;
    wire [127:0] state_s;
    wire [127:0] state_sh;
    wire [127:0] state_mc;
    wire [127:0] state_next;
    
    initial begin
        cnt = 8'd0;
        state                       = 128'h00000000000000000000000000000000;
    end
    
    always @(posedge clk) begin
        cnt      <= (cnt ^ 8'd20)?cnt+1:cnt;
        state    <= (cnt ^ 8'd20)?(cnt ^ 8'd0)?text_in^key:state_next:state;
        text_out <= state_s ^ key;
    end
    
    midori_key_generation uk(
    .cnt(cnt),
    .key(key),
    .sub_key(sub_key)
    );
    
    midori_sub_cell us(
    .state(state),
    .state_s(state_s)
    );
    
    midori_shuffle_cell ush(
    .state_s(state_s),
    .state_sh(state_sh)
    );
    
    midori_mix_column umc(
    .state_sh(state_sh),
    .state_mc(state_mc)
    );
    
    assign state_next = state_mc ^ sub_key;
    
endmodule
