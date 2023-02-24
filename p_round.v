`include "p_layer.v"

module p_round(input [63:0] state,        // current cipher text
               input [79:0] keys,         // current key
               input [4:0] round_counter, // round counter
               output [63:0] res,         // next cipher text
               output [79:0] r_keys);     // next round key


wire   [63:0] tem0;
wire   [63:0] tem1;

reg [3:0] sbox[15:0]; // s box for sBoxLayer

initial begin
    sbox[0]  = 12;  sbox[1]  = 5; sbox[2]  = 6;  sbox[3]  = 11;
    sbox[4]  = 9;   sbox[5]  = 0; sbox[6]  = 10; sbox[7]  = 13;
    sbox[8]  = 3;  sbox[9]  = 14;sbox[10]  = 15; sbox[11]  = 8;
    sbox[12] = 4; sbox[13] = 7;sbox[14] = 1;  sbox[15] = 2;
end

// add round key
assign tem0 = state ^ keys[63:0];

// sBoxLayer
assign tem1 = {
sbox[tem0[3:0]],sbox[tem0[7:4]],sbox[tem0[11:8]],sbox[tem0[15:12]],
sbox[tem0[19:16]],sbox[tem0[23:20]],sbox[tem0[27:24]],sbox[tem0[31:28]],
sbox[tem0[35:32]],sbox[tem0[39:36]],sbox[tem0[43:40]],sbox[tem0[47:44]],
sbox[tem0[51:48]],sbox[tem0[55:52]],sbox[tem0[59:56]],sbox[tem0[63:60]]
};

// KeyExtend
assign     r_keys = {
sbox[keys[64:61]],keys[79:65],keys[40:0],(keys[45:41])^round_counter,keys[60:46]
};

// pLayer
p_layer      u_p_layer(
.state(tem1),
.res(res)
);

endmodule
