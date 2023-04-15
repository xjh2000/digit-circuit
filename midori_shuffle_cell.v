module midori_shuffle_cell (input [127:0] state_s,
                            output [127:0] state_sh);
// (0,1,2,...,15) <- (0,10,5,15,14,4,11,1,9,3,12,6,7,13,2,8)
assign state_sh[0*8+7:0*8] = state_s[0*8+7:0*8];
assign state_sh[1*8+7:1*8] = state_s[10*8+7:10*8];
assign state_sh[2*8+7:2*8] = state_s[5*8+7:5*8];
assign state_sh[3*8+7:3*8] = state_s[15*8+7:15*8];
assign state_sh[4*8+7:4*8] = state_s[14*8+7:14*8];
assign state_sh[5*8+7:5*8] = state_s[4*8+7:4*8];
assign state_sh[6*8+7:6*8] = state_s[11*8+7:11*8];
assign state_sh[7*8+7:7*8] = state_s[1*8+7:1*8];
assign state_sh[8*8+7:8*8] = state_s[9*8+7:9*8];
assign state_sh[9*8+7:9*8] = state_s[3*8+7:3*8];
assign state_sh[10*8+7:10*8] = state_s[12*8+7:12*8];
assign state_sh[11*8+7:11*8] = state_s[6*8+7:6*8];
assign state_sh[12*8+7:12*8] = state_s[7*8+7:7*8];
assign state_sh[13*8+7:13*8] = state_s[13*8+7:13*8];
assign state_sh[14*8+7:14*8] = state_s[2*8+7:2*8];
assign state_sh[15*8+7:15*8] = state_s[8*8+7:8*8];
endmodule //midori_shuffle_cell
