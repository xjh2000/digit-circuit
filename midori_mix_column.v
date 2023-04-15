module midori_mix_column (input [127:0] state_sh,
                          output [127:0] state_mc);
// Almost MDS
// [00 01 01 01]   [s0  s4  s8  s12]
// [01 00 01 01] . [s1  s5  s9  s13]
// [01 01 00 01]   [s2  s6  s10 s14]
// [01 01 01 00]   [s3  s7  s11 s15]

assign state_mc[0*8+7:0*8] = state_sh[1*8+7:1*8]^ state_sh[2*8+7:2*8]^ state_sh[3*8+7:3*8];
assign state_mc[1*8+7:1*8] = state_sh[0*8+7:0*8]^ state_sh[2*8+7:2*8]^ state_sh[3*8+7:3*8];
assign state_mc[2*8+7:2*8] = state_sh[0*8+7:0*8]^ state_sh[1*8+7:1*8]^ state_sh[3*8+7:3*8];
assign state_mc[3*8+7:3*8] = state_sh[0*8+7:0*8]^ state_sh[1*8+7:1*8]^ state_sh[2*8+7:2*8];

assign state_mc[4*8+7:4*8] = state_sh[5*8+7:5*8]^ state_sh[6*8+7:6*8]^ state_sh[7*8+7:7*8];
assign state_mc[5*8+7:5*8] = state_sh[4*8+7:4*8]^ state_sh[6*8+7:6*8]^ state_sh[7*8+7:7*8];
assign state_mc[6*8+7:6*8] = state_sh[4*8+7:4*8]^ state_sh[5*8+7:5*8]^ state_sh[7*8+7:7*8];
assign state_mc[7*8+7:7*8] = state_sh[4*8+7:4*8]^ state_sh[5*8+7:5*8]^ state_sh[6*8+7:6*8];

assign state_mc[8*8+7:8*8] = state_sh[9*8+7:9*8]^ state_sh[10*8+7:10*8]^ state_sh[11*8+7:11*8];
assign state_mc[9*8+7:9*8] = state_sh[8*8+7:8*8]^ state_sh[10*8+7:10*8]^ state_sh[11*8+7:11*8];
assign state_mc[10*8+7:10*8] = state_sh[8*8+7:8*8]^ state_sh[9*8+7:9*8]^ state_sh[11*8+7:11*8];
assign state_mc[11*8+7:11*8] = state_sh[8*8+7:8*8]^ state_sh[9*8+7:9*8]^ state_sh[10*8+7:10*8];

assign state_mc[12*8+7:12*8] = state_sh[13*8+7:13*8]^ state_sh[14*8+7:14*8]^ state_sh[15*8+7:15*8];
assign state_mc[13*8+7:13*8] = state_sh[12*8+7:12*8]^ state_sh[14*8+7:14*8]^ state_sh[15*8+7:15*8];
assign state_mc[14*8+7:14*8] = state_sh[12*8+7:12*8]^ state_sh[13*8+7:13*8]^ state_sh[15*8+7:15*8];
assign state_mc[15*8+7:15*8] = state_sh[12*8+7:12*8]^ state_sh[13*8+7:13*8]^ state_sh[14*8+7:14*8];


endmodule //midori_mix_column
