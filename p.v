`include "p_round.v"

module p(input clk,             // clock
         input [63:0] state,    // PlainText
         input [79:0] keys,     // key
         output [63:0] result);
    
    reg   [7:0] cnt; /*synthesis syn_preserve = 1*/
    
    reg   [63:0]  res;
    reg   [79:0]  k;
    wire  [63:0]  next_res;
    wire  [79:0]  r_keys;
    
    initial  begin
        cnt <= 0;
    end
    
    assign  result = res ^k[63:0];
    
    // update the count,res,keys,ready
    always @(posedge  clk)  begin
        cnt <= (cnt^31)? cnt+1: 0;
        res <= ((cnt) ?next_res:state) ;
        k   <= ((cnt) ?r_keys:keys) ;
    end
    
    p_round   u_p_round(
    .res(next_res),
    .r_keys(r_keys),
    .state(res),
    .keys(k),
    .round_counter(cnt[7:3]));
    
endmodule
