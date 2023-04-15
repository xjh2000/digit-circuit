module midori_sub_cell (input[127:0] state,
                        output [127:0] state_s);
reg [3:0] sb1[15:0];

initial begin
    //{0x01, 0x00, 0x05, 0x03, 0x0e, 0x02, 0x0f, 0x07, 0x0d, 0x0a, 0x09, 0x0b, 0x0c, 0x08, 0x04, 0x06};
    sb1[0]  = 4'h1;
    sb1[1]  = 4'h0;
    sb1[2]  = 4'h5;
    sb1[3]  = 4'h3;
    sb1[4]  = 4'he;
    sb1[5]  = 4'h2;
    sb1[6]  = 4'hf;
    sb1[7]  = 4'h7;
    sb1[8]  = 4'hd;
    sb1[9]  = 4'ha;
    sb1[10] = 4'h9;
    sb1[11] = 4'hb;
    sb1[12] = 4'hc;
    sb1[13] = 4'h8;
    sb1[14] = 4'h4;
    sb1[15] = 4'h6;
end
wire [127:0] state_tmp;
//**********************31-0*************************
// sp1
// 4,1,6,3,0,5,2,7
assign state_tmp[7:0] = {
sb1[{
state[0+4],
state[0+1],
state[0+6],
state[0+3]}],
sb1[{
state[0+0],
state[0+5],
state[0+2],
state[0+7]}
]};
// 4,1,6,3,0,5,2,7
assign state_s[7:0] = {
state_tmp[0+4],
state_tmp[0+1],
state_tmp[0+6],
state_tmp[0+3],
state_tmp[0+0],
state_tmp[0+5],
state_tmp[0+2],
state_tmp[0+7]
};

// sp2
// 1,6,7,0,5,2,3,4
assign state_tmp[15:8] = {
sb1[{
state[8+1],
state[8+6],
state[8+7],
state[8+0]}],
sb1[{
state[8+5],
state[8+2],
state[8+3],
state[8+4]}
]};
// 3,0,5,6,7,4,1,2
assign state_s[15:8] = {
state_tmp[8+3],
state_tmp[8+0],
state_tmp[8+5],
state_tmp[8+6],
state_tmp[8+7],
state_tmp[8+4],
state_tmp[8+1],
state_tmp[8+2]
};

// sp3
// 2,3,4,1,6,7,0,5
assign state_tmp[23:16] = {
sb1[{
state[16+2],
state[16+3],
state[16+4],
state[16+1]}],
sb1[{
state[16+6],
state[16+7],
state[16+0],
state[16+5]}
]};
// 6,3,0,1,2,7,4,5
assign state_s[23:16] = {
state_tmp[16+6],
state_tmp[16+2],
state_tmp[16+0],
state_tmp[16+1],
state_tmp[16+2],
state_tmp[16+7],
state_tmp[16+4],
state_tmp[16+5]
};

// sp4
// 7,4,1,2,3,0,5,6
assign state_tmp[31:24] = {
sb1[{
state[24+7],
state[24+4],
state[24+1],
state[24+2]}
],
sb1[{
state[24+3],
state[24+0],
state[24+5],
state[24+6]}
]};
// 5,2,3,4,1,6,7,0
assign state_s[31:24] = {
state_tmp[24+5],
state_tmp[24+2],
state_tmp[24+3],
state_tmp[24+4],
state_tmp[24+1],
state_tmp[24+6],
state_tmp[24+7],
state_tmp[24+0]
};
//**********************63-32*************************
// sp1
// 4,1,6,3,0,5,2,7
assign state_tmp[39:32] = {
sb1[{
state[32+4],
state[32+1],
state[32+6],
state[32+3]}],
sb1[{
state[32+0],
state[32+5],
state[32+2],
state[32+7]}
]};
// 4,1,6,3,0,5,2,7
assign state_s[39:32] = {
state_tmp[32+4],
state_tmp[32+1],
state_tmp[32+6],
state_tmp[32+3],
state_tmp[32+0],
state_tmp[32+5],
state_tmp[32+2],
state_tmp[32+7]
};

// sp2
// 1,6,7,0,5,2,3,4
assign state_tmp[47:40] = {
sb1[{
state[40+1],
state[40+6],
state[40+7],
state[40+0]}],
sb1[{
state[40+5],
state[40+2],
state[40+3],
state[40+4]}
]};
// 3,0,5,6,7,4,1,2
assign state_s[47:40] = {
state_tmp[40+3],
state_tmp[40+0],
state_tmp[40+5],
state_tmp[40+6],
state_tmp[40+7],
state_tmp[40+4],
state_tmp[40+1],
state_tmp[40+2]
};

// sp3
// 2,3,4,1,6,7,0,5
assign state_tmp[55:48] = {
sb1[{
state[48+2],
state[48+3],
state[48+4],
state[48+1]}],
sb1[{
state[48+6],
state[48+7],
state[48+0],
state[48+5]}
]};
// 6,3,0,1,2,7,4,5
assign state_s[55:48] = {
state_tmp[48+6],
state_tmp[48+2],
state_tmp[48+0],
state_tmp[48+1],
state_tmp[48+2],
state_tmp[48+7],
state_tmp[48+4],
state_tmp[48+5]
};

// sp4
// 7,4,1,2,3,0,5,6
assign state_tmp[63:56] = {
sb1[{
state[56+7],
state[56+4],
state[56+1],
state[56+2]}],
sb1[{
state[56+3],
state[56+0],
state[56+5],
state[56+6]}
]};
// 5,2,3,4,1,6,7,0
assign state_s[63:56] = {
state_tmp[56+5],
state_tmp[56+2],
state_tmp[56+3],
state_tmp[56+4],
state_tmp[56+1],
state_tmp[56+6],
state_tmp[56+7],
state_tmp[56+0]
};
//**********************95-64*************************

// sp1
// 4,1,6,3,0,5,2,7
assign state_tmp[71:64] = {
sb1[{
state[64+4],
state[64+1],
state[64+6],
state[64+3]}],
sb1[{
state[64+0],
state[64+5],
state[64+2],
state[64+7]}
]};
// 4,1,6,3,0,5,2,7
assign state_s[71:64] = {
state_tmp[64+4],
state_tmp[64+1],
state_tmp[64+6],
state_tmp[64+3],
state_tmp[64+0],
state_tmp[64+5],
state_tmp[64+2],
state_tmp[64+7]
};

// sp2
// 1,6,7,0,5,2,3,4
assign state_tmp[79:72] = {
sb1[{
state[72+1],
state[72+6],
state[72+7],
state[72+0]}],
sb1[{
state[72+5],
state[72+2],
state[72+3],
state[72+4]}
]};
// 3,0,5,6,7,4,1,2
assign state_s[79:72] = {
state_tmp[72+3],
state_tmp[72+0],
state_tmp[72+5],
state_tmp[72+6],
state_tmp[72+7],
state_tmp[72+4],
state_tmp[72+1],
state_tmp[72+2]
};

// sp3
// 2,3,4,1,6,7,0,5
assign state_tmp[87:80] = {
sb1[{
state[80+2],
state[80+3],
state[80+4],
state[80+1]}],
sb1[{
state[80+6],
state[80+7],
state[80+0],
state[80+5]}
]};
// 6,3,0,1,2,7,4,5
assign state_s[87:80] = {
state_tmp[80+6],
state_tmp[80+2],
state_tmp[80+0],
state_tmp[80+1],
state_tmp[80+2],
state_tmp[80+7],
state_tmp[80+4],
state_tmp[80+5]
};

// sp4
// 7,4,1,2,3,0,5,6
assign state_tmp[95:88] = {
sb1[{
state[88+7],
state[88+4],
state[88+1],
state[88+2]}],
sb1[{
state[88+3],
state[88+0],
state[88+5],
state[88+6]}
]};
// 5,2,3,4,1,6,7,0
assign state_s[95:88] = {
state_tmp[88+5],
state_tmp[88+2],
state_tmp[88+3],
state_tmp[88+4],
state_tmp[88+1],
state_tmp[88+6],
state_tmp[88+7],
state_tmp[88+0]
};
//************************127-96***********************
// sp1
// 4,1,6,3,0,5,2,7
assign state_tmp[103:96] = {
sb1[{
state[96+4],
state[96+1],
state[96+6],
state[96+3]}],
sb1[{
state[96+0],
state[96+5],
state[96+2],
state[96+7]}
]};
// 4,1,6,3,0,5,2,7
assign state_s[103:96] = {
state_tmp[96+4],
state_tmp[96+1],
state_tmp[96+6],
state_tmp[96+3],
state_tmp[96+0],
state_tmp[96+5],
state_tmp[96+2],
state_tmp[96+7]
};

// sp2
// 1,6,7,0,5,2,3,4
assign state_tmp[111:104] = {
sb1[{
state[104+1],
state[104+6],
state[104+7],
state[104+0]}],
sb1[{
state[104+5],
state[104+2],
state[104+3],
state[104+4]}
]};
// 3,0,5,6,7,4,1,2
assign state_s[111:104] = {
state_tmp[104+3],
state_tmp[104+0],
state_tmp[104+5],
state_tmp[104+6],
state_tmp[104+7],
state_tmp[104+4],
state_tmp[104+1],
state_tmp[104+2]
};

// sp3
// 2,3,4,1,6,7,0,5
assign state_tmp[119:112] = {
sb1[{
state[112+2],
state[112+3],
state[112+4],
state[112+1]}],
sb1[{
state[112+6],
state[112+7],
state[112+0],
state[112+5]}
]};
// 6,3,0,1,2,7,4,5
assign state_s[119:112] = {
state_tmp[112+6],
state_tmp[112+2],
state_tmp[112+0],
state_tmp[112+1],
state_tmp[112+2],
state_tmp[112+7],
state_tmp[112+4],
state_tmp[112+5]
};

// sp4
// 7,4,1,2,3,0,5,6
assign state_tmp[127:120] = {
sb1[{
state[120+7],
state[120+4],
state[120+1],
state[120+2]}],
sb1[{
state[120+3],
state[120+0],
state[120+5],
state[120+6]}
]};
// 5,2,3,4,1,6,7,0
assign state_s[127:120] = {
state_tmp[120+5],
state_tmp[120+2],
state_tmp[120+3],
state_tmp[120+4],
state_tmp[120+1],
state_tmp[120+6],
state_tmp[120+7],
state_tmp[120+0]
};
//***********************************************


endmodule //midori_sub_cell
