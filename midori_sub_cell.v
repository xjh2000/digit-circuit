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
state[7-4],
state[7-1],
state[7-6],
state[7-3]}],
sb1[{
state[7-0],
state[7-5],
state[7-2],
state[7-7]}
]};
// 4,1,6,3,0,5,2,7
assign state_s[7:0] = {
state_tmp[7-4],
state_tmp[7-1],
state_tmp[7-6],
state_tmp[7-3],
state_tmp[7-0],
state_tmp[7-5],
state_tmp[7-2],
state_tmp[7-7]
};

// sp2
// 1,6,7,0,5,2,3,4
assign state_tmp[15:8] = {
sb1[{
state[15-1],
state[15-6],
state[15-7],
state[15-0]}],
sb1[{
state[15-5],
state[15-2],
state[15-3],
state[15-4]}
]};
// 3,0,5,6,7,4,1,2
assign state_s[15:8] = {
state_tmp[15-3],
state_tmp[15-0],
state_tmp[15-5],
state_tmp[15-6],
state_tmp[15-7],
state_tmp[15-4],
state_tmp[15-1],
state_tmp[15-2]
};

// sp3
// 2,3,4,1,6,7,0,5
assign state_tmp[23:16] = {
sb1[{
state[23-2],
state[23-3],
state[23-4],
state[23-1]}],
sb1[{
state[23-6],
state[23-7],
state[23-0],
state[23-5]}
]};
// 6,3,0,1,2,7,4,5
assign state_s[23:16] = {
state_tmp[23-6],
state_tmp[23-3],
state_tmp[23-0],
state_tmp[23-1],
state_tmp[23-2],
state_tmp[23-7],
state_tmp[23-4],
state_tmp[23-5]
};

// sp4
// 7,4,1,2,3,0,5,6
assign state_tmp[31:24] = {
sb1[{
state[31-7],
state[31-4],
state[31-1],
state[31-2]}
],
sb1[{
state[31-3],
state[31-0],
state[31-5],
state[31-6]}
]};
// 5,2,3,4,1,6,7,0
assign state_s[31:24] = {
state_tmp[31-5],
state_tmp[31-2],
state_tmp[31-3],
state_tmp[31-4],
state_tmp[31-1],
state_tmp[31-6],
state_tmp[31-7],
state_tmp[31-0]
};
//**********************63-32*************************
// sp1
// 4,1,6,3,0,5,2,7
assign state_tmp[39:32] = {
sb1[{
state[39-4],
state[39-1],
state[39-6],
state[39-3]}],
sb1[{
state[39-0],
state[39-5],
state[39-2],
state[39-7]}
]};
// 4,1,6,3,0,5,2,7
assign state_s[39:32] = {
state_tmp[39-4],
state_tmp[39-1],
state_tmp[39-6],
state_tmp[39-3],
state_tmp[39-0],
state_tmp[39-5],
state_tmp[39-2],
state_tmp[39-7]
};

// sp2
// 1,6,7,0,5,2,3,4
assign state_tmp[47:40] = {
sb1[{
state[47-1],
state[47-6],
state[47-7],
state[47-0]}],
sb1[{
state[47-5],
state[47-2],
state[47-3],
state[47-4]}
]};
// 3,0,5,6,7,4,1,2
assign state_s[47:40] = {
state_tmp[47-3],
state_tmp[47-0],
state_tmp[47-5],
state_tmp[47-6],
state_tmp[47-7],
state_tmp[47-4],
state_tmp[47-1],
state_tmp[47-2]
};

// sp3
// 2,3,4,1,6,7,0,5
assign state_tmp[55:48] = {
sb1[{
state[55-2],
state[55-3],
state[55-4],
state[55-1]}],
sb1[{
state[55-6],
state[55-7],
state[55-0],
state[55-5]}
]};
// 6,3,0,1,2,7,4,5
assign state_s[55:48] = {
state_tmp[55-6],
state_tmp[55-3],
state_tmp[55-0],
state_tmp[55-1],
state_tmp[55-2],
state_tmp[55-7],
state_tmp[55-4],
state_tmp[55-5]
};

// sp4
// 7,4,1,2,3,0,5,6
assign state_tmp[63:56] = {
sb1[{
state[63-7],
state[63-4],
state[63-1],
state[63-2]}],
sb1[{
state[63-3],
state[63-0],
state[63-5],
state[63-6]}
]};
// 5,2,3,4,1,6,7,0
assign state_s[63:56] = {
state_tmp[63-5],
state_tmp[63-2],
state_tmp[63-3],
state_tmp[63-4],
state_tmp[63-1],
state_tmp[63-6],
state_tmp[63-7],
state_tmp[63-0]
};
//**********************95-64*************************

// sp1
// 4,1,6,3,0,5,2,7
assign state_tmp[71:64] = {
sb1[{
state[71-4],
state[71-1],
state[71-6],
state[71-3]}],
sb1[{
state[71-0],
state[71-5],
state[71-2],
state[71-7]}
]};
// 4,1,6,3,0,5,2,7
assign state_s[71:64] = {
state_tmp[71-4],
state_tmp[71-1],
state_tmp[71-6],
state_tmp[71-3],
state_tmp[71-0],
state_tmp[71-5],
state_tmp[71-2],
state_tmp[71-7]
};

// sp2
// 1,6,7,0,5,2,3,4
assign state_tmp[79:72] = {
sb1[{
state[79-1],
state[79-6],
state[79-7],
state[79-0]}],
sb1[{
state[79-5],
state[79-2],
state[79-3],
state[79-4]}
]};
// 3,0,5,6,7,4,1,2
assign state_s[79:72] = {
state_tmp[79-3],
state_tmp[79-0],
state_tmp[79-5],
state_tmp[79-6],
state_tmp[79-7],
state_tmp[79-4],
state_tmp[79-1],
state_tmp[79-2]
};

// sp3
// 2,3,4,1,6,7,0,5
assign state_tmp[87:80] = {
sb1[{
state[87-2],
state[87-3],
state[87-4],
state[87-1]}],
sb1[{
state[87-6],
state[87-7],
state[87-0],
state[87-5]}
]};
// 6,3,0,1,2,7,4,5
assign state_s[87:80] = {
state_tmp[87-6],
state_tmp[87-3],
state_tmp[87-0],
state_tmp[87-1],
state_tmp[87-2],
state_tmp[87-7],
state_tmp[87-4],
state_tmp[87-5]
};

// sp4
// 7,4,1,2,3,0,5,6
assign state_tmp[95:88] = {
sb1[{
state[95-7],
state[95-4],
state[95-1],
state[95-2]}],
sb1[{
state[95-3],
state[95-0],
state[95-5],
state[95-6]}
]};
// 5,2,3,4,1,6,7,0
assign state_s[95:88] = {
state_tmp[95-5],
state_tmp[95-2],
state_tmp[95-3],
state_tmp[95-4],
state_tmp[95-1],
state_tmp[95-6],
state_tmp[95-7],
state_tmp[95-0]
};
//************************127-96***********************
// sp1
// 4,1,6,3,0,5,2,7
assign state_tmp[103:96] = {
sb1[{
state[103-4],
state[103-1],
state[103-6],
state[103-3]}],
sb1[{
state[103-0],
state[103-5],
state[103-2],
state[103-7]}
]};
// 4,1,6,3,0,5,2,7
assign state_s[103:96] = {
state_tmp[103-4],
state_tmp[103-1],
state_tmp[103-6],
state_tmp[103-3],
state_tmp[103-0],
state_tmp[103-5],
state_tmp[103-2],
state_tmp[103-7]
};

// sp2
// 1,6,7,0,5,2,3,4
assign state_tmp[111:104] = {
sb1[{
state[111-1],
state[111-6],
state[111-7],
state[111-0]}],
sb1[{
state[111-5],
state[111-2],
state[111-3],
state[111-4]}
]};
// 3,0,5,6,7,4,1,2
assign state_s[111:104] = {
state_tmp[111-3],
state_tmp[111-0],
state_tmp[111-5],
state_tmp[111-6],
state_tmp[111-7],
state_tmp[111-4],
state_tmp[111-1],
state_tmp[111-2]
};

// sp3
// 2,3,4,1,6,7,0,5
assign state_tmp[119:112] = {
sb1[{
state[119-2],
state[119-3],
state[119-4],
state[119-1]}],
sb1[{
state[119-6],
state[119-7],
state[119-0],
state[119-5]}
]};
// 6,3,0,1,2,7,4,5
assign state_s[119:112] = {
state_tmp[119-6],
state_tmp[119-3],
state_tmp[119-0],
state_tmp[119-1],
state_tmp[119-2],
state_tmp[119-7],
state_tmp[119-4],
state_tmp[119-5]
};

// sp4
// 7,4,1,2,3,0,5,6
assign state_tmp[127:120] = {
sb1[{
state[127-7],
state[127-4],
state[127-1],
state[127-2]}],
sb1[{
state[127-3],
state[127-0],
state[127-5],
state[127-6]}
]};
// 5,2,3,4,1,6,7,0
assign state_s[127:120] = {
state_tmp[127-5],
state_tmp[127-2],
state_tmp[127-3],
state_tmp[127-4],
state_tmp[127-1],
state_tmp[127-6],
state_tmp[127-7],
state_tmp[127-0]
};
//***********************************************


endmodule //midori_sub_cell
