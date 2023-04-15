module midori_key_generation (input [8:0] cnt,
                              input [127:0] key,
                              output reg [127:0] sub_key);

always @(cnt) begin
    case (cnt)
        8'd1: begin
            // 0, 0, 0, 1,
            sub_key[7:0]   = key[7:0] ^ 8'd0;
            sub_key[15:8]  = key[15:8] ^ 8'd0;
            sub_key[23:16] = key[23:16] ^ 8'd0;
            sub_key[31:24] = key[31:24] ^ 8'd1;
            // 0, 1, 0, 1,
            sub_key[39:32] = key[39:32] ^ 8'd0;
            sub_key[47:40] = key[47:40] ^ 8'd1;
            sub_key[55:48] = key[55:48] ^ 8'd0;
            sub_key[63:56] = key[63:56] ^ 8'd1;
            // 1, 0, 1, 1,
            sub_key[71:64] = key[71:64] ^ 8'd1;
            sub_key[79:72] = key[79:72] ^ 8'd0;
            sub_key[87:80] = key[87:80] ^ 8'd1;
            sub_key[95:88] = key[95:88] ^ 8'd1;
            // 0, 0, 1, 1,
            sub_key[103:96]  = key[103:96] ^ 8'd0;
            sub_key[111:104] = key[111:104] ^ 8'd0;
            sub_key[119:112] = key[119:112] ^ 8'd1;
            sub_key[127:120] = key[127:120] ^ 8'd1;
        end
        8'd2: begin
            // 0, 1, 1, 1,
            sub_key[7:0]   = key[7:0] ^ 8'd0;
            sub_key[15:8]  = key[15:8] ^ 8'd1;
            sub_key[23:16] = key[23:16] ^ 8'd1;
            sub_key[31:24] = key[31:24] ^ 8'd1;
            //  1, 0, 0, 0,
            sub_key[39:32] = key[39:32] ^ 8'd1;
            sub_key[47:40] = key[47:40] ^ 8'd0;
            sub_key[55:48] = key[55:48] ^ 8'd0;
            sub_key[63:56] = key[63:56] ^ 8'd0;
            //  1, 1, 0, 0,
            sub_key[71:64] = key[71:64] ^ 8'd1;
            sub_key[79:72] = key[79:72] ^ 8'd1;
            sub_key[87:80] = key[87:80] ^ 8'd0;
            sub_key[95:88] = key[95:88] ^ 8'd0;
            // 0, 0, 0, 0,
            sub_key[103:96]  = key[103:96] ^ 8'd0;
            sub_key[111:104] = key[111:104] ^ 8'd0;
            sub_key[119:112] = key[119:112] ^ 8'd0;
            sub_key[127:120] = key[127:120] ^ 8'd0;
        end
        8'd3: begin
            // 1, 0, 1, 0,
            sub_key[7:0]   = key[7:0] ^ 8'd1;
            sub_key[15:8]  = key[15:8] ^ 8'd0;
            sub_key[23:16] = key[23:16] ^ 8'd1;
            sub_key[31:24] = key[31:24] ^ 8'd0;
            // 0, 1, 0, 0,
            sub_key[39:32] = key[39:32] ^ 8'd0;
            sub_key[47:40] = key[47:40] ^ 8'd1;
            sub_key[55:48] = key[55:48] ^ 8'd0;
            sub_key[63:56] = key[63:56] ^ 8'd0;
            // 0, 0, 1, 1,
            sub_key[71:64] = key[71:64] ^ 8'd0;
            sub_key[79:72] = key[79:72] ^ 8'd0;
            sub_key[87:80] = key[87:80] ^ 8'd1;
            sub_key[95:88] = key[95:88] ^ 8'd1;
            // 0, 1, 0, 1,
            sub_key[103:96]  = key[103:96] ^ 8'd0;
            sub_key[111:104] = key[111:104] ^ 8'd1;
            sub_key[119:112] = key[119:112] ^ 8'd0;
            sub_key[127:120] = key[127:120] ^ 8'd1;
        end
        8'd4: begin
            // 0, 1, 1, 0,
            sub_key[7:0]   = key[7:0] ^ 8'd0;
            sub_key[15:8]  = key[15:8] ^ 8'd1;
            sub_key[23:16] = key[23:16] ^ 8'd1;
            sub_key[31:24] = key[31:24] ^ 8'd0;
            //  0, 0, 1, 0,
            sub_key[39:32] = key[39:32] ^ 8'd0;
            sub_key[47:40] = key[47:40] ^ 8'd0;
            sub_key[55:48] = key[55:48] ^ 8'd1;
            sub_key[63:56] = key[63:56] ^ 8'd0;
            // 0, 0, 0, 1,
            sub_key[71:64] = key[71:64] ^ 8'd0;
            sub_key[79:72] = key[79:72] ^ 8'd0;
            sub_key[87:80] = key[87:80] ^ 8'd0;
            sub_key[95:88] = key[95:88] ^ 8'd1;
            // 0, 0, 1, 1,
            sub_key[103:96]  = key[103:96] ^ 8'd0;
            sub_key[111:104] = key[111:104] ^ 8'd0;
            sub_key[119:112] = key[119:112] ^ 8'd1;
            sub_key[127:120] = key[127:120] ^ 8'd1;
        end
        8'd5: begin
            // 0, 0, 0, 1,
            sub_key[7:0]   = key[7:0] ^ 8'd0;
            sub_key[15:8]  = key[15:8] ^ 8'd0;
            sub_key[23:16] = key[23:16] ^ 8'd0;
            sub_key[31:24] = key[31:24] ^ 8'd1;
            //  0, 0, 0, 0,
            sub_key[39:32] = key[39:32] ^ 8'd0;
            sub_key[47:40] = key[47:40] ^ 8'd0;
            sub_key[55:48] = key[55:48] ^ 8'd0;
            sub_key[63:56] = key[63:56] ^ 8'd0;
            // 0, 1, 0, 0,
            sub_key[71:64] = key[71:64] ^ 8'd0;
            sub_key[79:72] = key[79:72] ^ 8'd1;
            sub_key[87:80] = key[87:80] ^ 8'd0;
            sub_key[95:88] = key[95:88] ^ 8'd0;
            // 1, 1, 1, 1,
            sub_key[103:96]  = key[103:96] ^ 8'd1;
            sub_key[111:104] = key[111:104] ^ 8'd1;
            sub_key[119:112] = key[119:112] ^ 8'd1;
            sub_key[127:120] = key[127:120] ^ 8'd1;
        end
        8'd6: begin
            // 1, 1, 0, 1,
            sub_key[7:0]   = key[7:0] ^ 8'd1;
            sub_key[15:8]  = key[15:8] ^ 8'd1;
            sub_key[23:16] = key[23:16] ^ 8'd0;
            sub_key[31:24] = key[31:24] ^ 8'd1;
            //  0, 0, 0, 1,
            sub_key[39:32] = key[39:32] ^ 8'd0;
            sub_key[47:40] = key[47:40] ^ 8'd0;
            sub_key[55:48] = key[55:48] ^ 8'd0;
            sub_key[63:56] = key[63:56] ^ 8'd1;
            // 0, 1, 1, 1,
            sub_key[71:64] = key[71:64] ^ 8'd0;
            sub_key[79:72] = key[79:72] ^ 8'd1;
            sub_key[87:80] = key[87:80] ^ 8'd1;
            sub_key[95:88] = key[95:88] ^ 8'd1;
            // 0, 0, 0, 0,
            sub_key[103:96]  = key[103:96] ^ 8'd0;
            sub_key[111:104] = key[111:104] ^ 8'd0;
            sub_key[119:112] = key[119:112] ^ 8'd0;
            sub_key[127:120] = key[127:120] ^ 8'd0;
        end
        8'd7: begin
            // 0, 0, 0, 0,
            sub_key[7:0]   = key[7:0] ^ 8'd0;
            sub_key[15:8]  = key[15:8] ^ 8'd0;
            sub_key[23:16] = key[23:16] ^ 8'd0;
            sub_key[31:24] = key[31:24] ^ 8'd0;
            //   0, 0, 1, 0,
            sub_key[39:32] = key[39:32] ^ 8'd0;
            sub_key[47:40] = key[47:40] ^ 8'd0;
            sub_key[55:48] = key[55:48] ^ 8'd1;
            sub_key[63:56] = key[63:56] ^ 8'd0;
            // 0, 1, 1, 0,
            sub_key[71:64] = key[71:64] ^ 8'd0;
            sub_key[79:72] = key[79:72] ^ 8'd1;
            sub_key[87:80] = key[87:80] ^ 8'd1;
            sub_key[95:88] = key[95:88] ^ 8'd0;
            // 0, 1, 1, 0,
            sub_key[103:96]  = key[103:96] ^ 8'd0;
            sub_key[111:104] = key[111:104] ^ 8'd1;
            sub_key[119:112] = key[119:112] ^ 8'd1;
            sub_key[127:120] = key[127:120] ^ 8'd0;
        end
        8'd8: begin
            // 0, 0, 0, 0,
            sub_key[7:0]   = key[7:0] ^ 8'd0;
            sub_key[15:8]  = key[15:8] ^ 8'd0;
            sub_key[23:16] = key[23:16] ^ 8'd0;
            sub_key[31:24] = key[31:24] ^ 8'd0;
            //   1, 0, 1, 1,
            sub_key[39:32] = key[39:32] ^ 8'd1;
            sub_key[47:40] = key[47:40] ^ 8'd0;
            sub_key[55:48] = key[55:48] ^ 8'd1;
            sub_key[63:56] = key[63:56] ^ 8'd1;
            // 1, 1, 0, 0,
            sub_key[71:64] = key[71:64] ^ 8'd1;
            sub_key[79:72] = key[79:72] ^ 8'd1;
            sub_key[87:80] = key[87:80] ^ 8'd0;
            sub_key[95:88] = key[95:88] ^ 8'd0;
            //  1, 1, 0, 0,
            sub_key[103:96]  = key[103:96] ^ 8'd1;
            sub_key[111:104] = key[111:104] ^ 8'd1;
            sub_key[119:112] = key[119:112] ^ 8'd0;
            sub_key[127:120] = key[127:120] ^ 8'd0;
        end
        8'd9: begin
            // 1, 0, 0, 1,
            sub_key[7:0]   = key[7:0] ^ 8'd1;
            sub_key[15:8]  = key[15:8] ^ 8'd0;
            sub_key[23:16] = key[23:16] ^ 8'd0;
            sub_key[31:24] = key[31:24] ^ 8'd1;
            //   0, 1, 0, 0,
            sub_key[39:32] = key[39:32] ^ 8'd0;
            sub_key[47:40] = key[47:40] ^ 8'd1;
            sub_key[55:48] = key[55:48] ^ 8'd0;
            sub_key[63:56] = key[63:56] ^ 8'd0;
            // 1, 0, 0, 0,
            sub_key[71:64] = key[71:64] ^ 8'd1;
            sub_key[79:72] = key[79:72] ^ 8'd0;
            sub_key[87:80] = key[87:80] ^ 8'd0;
            sub_key[95:88] = key[95:88] ^ 8'd0;
            //   0, 0, 0, 1,
            sub_key[103:96]  = key[103:96] ^ 8'd0;
            sub_key[111:104] = key[111:104] ^ 8'd0;
            sub_key[119:112] = key[119:112] ^ 8'd0;
            sub_key[127:120] = key[127:120] ^ 8'd1;
        end
        8'd10: begin
            // 0, 1, 0, 0,
            sub_key[7:0]   = key[7:0] ^ 8'd0;
            sub_key[15:8]  = key[15:8] ^ 8'd1;
            sub_key[23:16] = key[23:16] ^ 8'd0;
            sub_key[31:24] = key[31:24] ^ 8'd0;
            //   0, 0, 0, 0,
            sub_key[39:32] = key[39:32] ^ 8'd0;
            sub_key[47:40] = key[47:40] ^ 8'd0;
            sub_key[55:48] = key[55:48] ^ 8'd0;
            sub_key[63:56] = key[63:56] ^ 8'd0;
            // 1, 0, 1, 1,
            sub_key[71:64] = key[71:64] ^ 8'd1;
            sub_key[79:72] = key[79:72] ^ 8'd0;
            sub_key[87:80] = key[87:80] ^ 8'd1;
            sub_key[95:88] = key[95:88] ^ 8'd1;
            //   1, 0, 0, 0,
            sub_key[103:96]  = key[103:96] ^ 8'd1;
            sub_key[111:104] = key[111:104] ^ 8'd0;
            sub_key[119:112] = key[119:112] ^ 8'd0;
            sub_key[127:120] = key[127:120] ^ 8'd0;
        end
        8'd11: begin
            // 0, 1, 1, 1,
            sub_key[7:0]   = key[7:0] ^ 8'd0;
            sub_key[15:8]  = key[15:8] ^ 8'd1;
            sub_key[23:16] = key[23:16] ^ 8'd1;
            sub_key[31:24] = key[31:24] ^ 8'd1;
            //   0, 0, 0, 1,
            sub_key[39:32] = key[39:32] ^ 8'd0;
            sub_key[47:40] = key[47:40] ^ 8'd0;
            sub_key[55:48] = key[55:48] ^ 8'd0;
            sub_key[63:56] = key[63:56] ^ 8'd1;
            // 1, 0, 0, 1,
            sub_key[71:64] = key[71:64] ^ 8'd1;
            sub_key[79:72] = key[79:72] ^ 8'd0;
            sub_key[87:80] = key[87:80] ^ 8'd0;
            sub_key[95:88] = key[95:88] ^ 8'd1;
            //  0, 1, 1, 1,
            sub_key[103:96]  = key[103:96] ^ 8'd0;
            sub_key[111:104] = key[111:104] ^ 8'd1;
            sub_key[119:112] = key[119:112] ^ 8'd1;
            sub_key[127:120] = key[127:120] ^ 8'd1;
        end
        8'd12: begin
            // 0, 0, 1, 0,
            sub_key[7:0]   = key[7:0] ^ 8'd0;
            sub_key[15:8]  = key[15:8] ^ 8'd0;
            sub_key[23:16] = key[23:16] ^ 8'd1;
            sub_key[31:24] = key[31:24] ^ 8'd0;
            //   0, 0, 1, 0,
            sub_key[39:32] = key[39:32] ^ 8'd0;
            sub_key[47:40] = key[47:40] ^ 8'd0;
            sub_key[55:48] = key[55:48] ^ 8'd1;
            sub_key[63:56] = key[63:56] ^ 8'd0;
            // 1, 0, 0, 0,
            sub_key[71:64] = key[71:64] ^ 8'd1;
            sub_key[79:72] = key[79:72] ^ 8'd0;
            sub_key[87:80] = key[87:80] ^ 8'd0;
            sub_key[95:88] = key[95:88] ^ 8'd0;
            //  1, 1, 1, 0,
            sub_key[103:96]  = key[103:96] ^ 8'd1;
            sub_key[111:104] = key[111:104] ^ 8'd1;
            sub_key[119:112] = key[119:112] ^ 8'd1;
            sub_key[127:120] = key[127:120] ^ 8'd0;
        end
        8'd13: begin
            // 0, 1, 0, 1,
            sub_key[7:0]   = key[7:0] ^ 8'd0;
            sub_key[15:8]  = key[15:8] ^ 8'd1;
            sub_key[23:16] = key[23:16] ^ 8'd0;
            sub_key[31:24] = key[31:24] ^ 8'd1;
            //   0, 0, 0, 1,
            sub_key[39:32] = key[39:32] ^ 8'd0;
            sub_key[47:40] = key[47:40] ^ 8'd0;
            sub_key[55:48] = key[55:48] ^ 8'd0;
            sub_key[63:56] = key[63:56] ^ 8'd1;
            // 0, 0, 1, 1,
            sub_key[71:64] = key[71:64] ^ 8'd0;
            sub_key[79:72] = key[79:72] ^ 8'd0;
            sub_key[87:80] = key[87:80] ^ 8'd1;
            sub_key[95:88] = key[95:88] ^ 8'd1;
            //  0, 0, 0, 0,
            sub_key[103:96]  = key[103:96] ^ 8'd0;
            sub_key[111:104] = key[111:104] ^ 8'd0;
            sub_key[119:112] = key[119:112] ^ 8'd0;
            sub_key[127:120] = key[127:120] ^ 8'd0;
        end
        8'd14: begin
            // 1, 1, 1, 1,
            sub_key[7:0]   = key[7:0] ^ 8'd1;
            sub_key[15:8]  = key[15:8] ^ 8'd1;
            sub_key[23:16] = key[23:16] ^ 8'd1;
            sub_key[31:24] = key[31:24] ^ 8'd1;
            // 1, 0, 0, 0,
            sub_key[39:32] = key[39:32] ^ 8'd1;
            sub_key[47:40] = key[47:40] ^ 8'd0;
            sub_key[55:48] = key[55:48] ^ 8'd0;
            sub_key[63:56] = key[63:56] ^ 8'd0;
            // 1, 1, 0, 0,
            sub_key[71:64] = key[71:64] ^ 8'd1;
            sub_key[79:72] = key[79:72] ^ 8'd1;
            sub_key[87:80] = key[87:80] ^ 8'd0;
            sub_key[95:88] = key[95:88] ^ 8'd0;
            //  1, 0, 1, 0,
            sub_key[103:96]  = key[103:96] ^ 8'd1;
            sub_key[111:104] = key[111:104] ^ 8'd0;
            sub_key[119:112] = key[119:112] ^ 8'd1;
            sub_key[127:120] = key[127:120] ^ 8'd0;
        end
        8'd15: begin
            // 1, 1, 0, 1,
            sub_key[7:0]   = key[7:0] ^ 8'd1;
            sub_key[15:8]  = key[15:8] ^ 8'd1;
            sub_key[23:16] = key[23:16] ^ 8'd0;
            sub_key[31:24] = key[31:24] ^ 8'd1;
            //  1, 1, 1, 1,
            sub_key[39:32] = key[39:32] ^ 8'd1;
            sub_key[47:40] = key[47:40] ^ 8'd1;
            sub_key[55:48] = key[55:48] ^ 8'd1;
            sub_key[63:56] = key[63:56] ^ 8'd1;
            //  1, 0, 0, 1,
            sub_key[71:64] = key[71:64] ^ 8'd1;
            sub_key[79:72] = key[79:72] ^ 8'd0;
            sub_key[87:80] = key[87:80] ^ 8'd0;
            sub_key[95:88] = key[95:88] ^ 8'd1;
            //  0, 0, 0, 0,
            sub_key[103:96]  = key[103:96] ^ 8'd0;
            sub_key[111:104] = key[111:104] ^ 8'd0;
            sub_key[119:112] = key[119:112] ^ 8'd0;
            sub_key[127:120] = key[127:120] ^ 8'd0;
        end
        8'd16: begin
            // 0, 1, 1, 1,
            sub_key[7:0]   = key[7:0] ^ 8'd0;
            sub_key[15:8]  = key[15:8] ^ 8'd1;
            sub_key[23:16] = key[23:16] ^ 8'd1;
            sub_key[31:24] = key[31:24] ^ 8'd1;
            //   1, 1, 0, 0,
            sub_key[39:32] = key[39:32] ^ 8'd1;
            sub_key[47:40] = key[47:40] ^ 8'd1;
            sub_key[55:48] = key[55:48] ^ 8'd0;
            sub_key[63:56] = key[63:56] ^ 8'd0;
            //   1, 0, 0, 0,
            sub_key[71:64] = key[71:64] ^ 8'd1;
            sub_key[79:72] = key[79:72] ^ 8'd0;
            sub_key[87:80] = key[87:80] ^ 8'd0;
            sub_key[95:88] = key[95:88] ^ 8'd0;
            // 0, 0, 0, 1,
            sub_key[103:96]  = key[103:96] ^ 8'd0;
            sub_key[111:104] = key[111:104] ^ 8'd0;
            sub_key[119:112] = key[119:112] ^ 8'd0;
            sub_key[127:120] = key[127:120] ^ 8'd1;
        end
        8'd17: begin
            // 0, 0, 0, 1,
            sub_key[7:0]   = key[7:0] ^ 8'd0;
            sub_key[15:8]  = key[15:8] ^ 8'd0;
            sub_key[23:16] = key[23:16] ^ 8'd0;
            sub_key[31:24] = key[31:24] ^ 8'd1;
            //    1, 1, 0, 0,
            sub_key[39:32] = key[39:32] ^ 8'd1;
            sub_key[47:40] = key[47:40] ^ 8'd1;
            sub_key[55:48] = key[55:48] ^ 8'd0;
            sub_key[63:56] = key[63:56] ^ 8'd0;
            //   0, 0, 1, 0,
            sub_key[71:64] = key[71:64] ^ 8'd0;
            sub_key[79:72] = key[79:72] ^ 8'd0;
            sub_key[87:80] = key[87:80] ^ 8'd1;
            sub_key[95:88] = key[95:88] ^ 8'd0;
            // 0, 1, 0, 0,
            sub_key[103:96]  = key[103:96] ^ 8'd0;
            sub_key[111:104] = key[111:104] ^ 8'd1;
            sub_key[119:112] = key[119:112] ^ 8'd0;
            sub_key[127:120] = key[127:120] ^ 8'd0;
        end
        8'd18: begin
            // 0, 0, 1, 0,
            sub_key[7:0]   = key[7:0] ^ 8'd0;
            sub_key[15:8]  = key[15:8] ^ 8'd0;
            sub_key[23:16] = key[23:16] ^ 8'd1;
            sub_key[31:24] = key[31:24] ^ 8'd0;
            //  0, 0, 1, 1,
            sub_key[39:32] = key[39:32] ^ 8'd0;
            sub_key[47:40] = key[47:40] ^ 8'd0;
            sub_key[55:48] = key[55:48] ^ 8'd1;
            sub_key[63:56] = key[63:56] ^ 8'd1;
            //  1, 0, 1, 1,
            sub_key[71:64] = key[71:64] ^ 8'd1;
            sub_key[79:72] = key[79:72] ^ 8'd0;
            sub_key[87:80] = key[87:80] ^ 8'd1;
            sub_key[95:88] = key[95:88] ^ 8'd1;
            //  0, 1, 0, 0,
            sub_key[103:96]  = key[103:96] ^ 8'd0;
            sub_key[111:104] = key[111:104] ^ 8'd1;
            sub_key[119:112] = key[119:112] ^ 8'd0;
            sub_key[127:120] = key[127:120] ^ 8'd0;
        end
        8'd19: begin
            // 0, 1, 1, 0,
            sub_key[7:0]   = key[7:0] ^ 8'd0;
            sub_key[15:8]  = key[15:8] ^ 8'd1;
            sub_key[23:16] = key[23:16] ^ 8'd1;
            sub_key[31:24] = key[31:24] ^ 8'd0;
            //   0, 0, 1, 0,
            sub_key[39:32] = key[39:32] ^ 8'd0;
            sub_key[47:40] = key[47:40] ^ 8'd0;
            sub_key[55:48] = key[55:48] ^ 8'd1;
            sub_key[63:56] = key[63:56] ^ 8'd0;
            //   1, 0, 0, 0,
            sub_key[71:64] = key[71:64] ^ 8'd1;
            sub_key[79:72] = key[79:72] ^ 8'd0;
            sub_key[87:80] = key[87:80] ^ 8'd0;
            sub_key[95:88] = key[95:88] ^ 8'd0;
            //  1, 0, 1, 0
            sub_key[103:96]  = key[103:96] ^ 8'd1;
            sub_key[111:104] = key[111:104] ^ 8'd0;
            sub_key[119:112] = key[119:112] ^ 8'd1;
            sub_key[127:120] = key[127:120] ^ 8'd0;
        end
        8'd20: begin
            sub_key = key;
        end
    endcase
    
end

endmodule //midori_key_generation
