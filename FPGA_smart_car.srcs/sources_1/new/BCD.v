module seg_disp(
    input [19:0] a, b,
    input clk, rst,
    output [6:0] sseg,
    output [7:0] an
);
    wire [20:0] sum = a + b; // 20位二进制数相加最多产生21位结果
    wire [34:0] bcd_concatenated; // 7个BCD位连接成一个35位宽的向量

    // 实例化二进制到BCD转换模块
    bin_to_bcd converter(
        .bin(sum),
        .bcd_concatenated(bcd_concatenated)
    );

    // 实例化七段显示驱动模块
    scan_led_disp display_driver(
        .clk(clk),
        .rst(rst),
        .bcd_concatenated(bcd_concatenated),
        .an(an),
        .sseg(sseg)
    );
endmodule

// 二进制到BCD转换模块定义
module bin_to_bcd(
    input [20:0] bin,
    output reg [34:0] bcd_concatenated
);
    // 变量定义
    integer i;
    reg [4:0] bcd [6:0]; // 7个BCD位
    reg [20:0] shift_reg;

    always @(bin) begin
        // 初始化
        shift_reg = bin;
        for(i = 0; i < 7; i = i + 1) begin
            bcd[i] = 5'd0;
        end

        // 执行21次循环，对每一位进行处理
        for(i = 0; i < 21; i = i + 1) begin
            // 从最高位开始，对每个BCD位进行检查和调整
            if(bcd[6] >= 5)
                bcd[6] = bcd[6] + 3;
            if(bcd[5] >= 5)
                bcd[5] = bcd[5] + 3;
            if(bcd[4] >= 5)
                bcd[4] = bcd[4] + 3;
            if(bcd[3] >= 5)
                bcd[3] = bcd[3] + 3;
            if(bcd[2] >= 5)
                bcd[2] = bcd[2] + 3;
            if(bcd[1] >= 5)
                bcd[1] = bcd[1] + 3;
            if(bcd[0] >= 5)
                bcd[0] = bcd[0] + 3;

            // 左移BCD位
            bcd[6] = bcd[6] << 1;
            bcd[6][0] = bcd[5][4];
            bcd[5] = bcd[5] << 1;
            bcd[5][0] = bcd[4][4];
            bcd[4] = bcd[4] << 1;
            bcd[4][0] = bcd[3][4];
            bcd[3] = bcd[3] << 1;
            bcd[3][0] = bcd[2][4];
            bcd[2] = bcd[2] << 1;
            bcd[2][0] = bcd[1][4];
            bcd[1] = bcd[1] << 1;
            bcd[1][0] = bcd[0][4];
            bcd[0] = bcd[0] << 1;
            bcd[0][0] = shift_reg[20];

            // 二进制数左移
            shift_reg = shift_reg << 1;
        end

        // 将BCD数组连接成一个向量
        bcd_concatenated = {bcd[6], bcd[5], bcd[4], bcd[3], bcd[2], bcd[1], bcd[0]};
    end
endmodule

// 七段显示驱动模块定义
module scan_led_disp(
    input clk, rst,
    input [34:0] bcd_concatenated,
    output reg [7:0] an,
    output reg [6:0] sseg
);
    reg [2:0] scan;
    reg [19:0] clk_divider;
    wire [4:0] bcd [6:0];

    // 将35位宽的向量分割成7个5位的数组
    assign {bcd[6], bcd[5], bcd[4], bcd[3], bcd[2], bcd[1], bcd[0]} = bcd_concatenated;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            clk_divider <= 0;
            scan <= 0;
        end else begin
            clk_divider <= clk_divider + 1'b1;
            if (clk_divider == 20'd999999) begin // 简单的时钟分频
                clk_divider <= 0;
                scan <= scan + 1'b1;
                if (scan == 3'd7)
                    scan <= 0;
            end
        end
    end

    always @(*) begin
        case (scan)
            3'd0: an = 8'b11111110;
            3'd1: an = 8'b11111101;
            3'd2: an = 8'b11111011;
            3'd3: an = 8'b11110111;
            3'd4: an = 8'b11101111;
            3'd5: an = 8'b11011111;
            3'd6: an = 8'b10111111;
            default: an = 8'b11111111;
        endcase

        // 根据BCD值选择相应的段编码
        sseg = bcd_to_seg(bcd[scan]);
    end

    // BCD到七段显示编码的转换函数
    function [6:0] bcd_to_seg;
        input [4:0] bcd_value;
        case (bcd_value)
            5'd0: bcd_to_seg = 7'b1000000; // 0
            5'd1: bcd_to_seg = 7'b1111001; // 1
            5'd2: bcd_to_seg = 7'b0100100; // 2
            5'd3: bcd_to_seg = 7'b0110000; // 3
            5'd4: bcd_to_seg = 7'b0011001; // 4
            5'd5: bcd_to_seg = 7'b0010010; // 5
            5'd6: bcd_to_seg = 7'b0000010; // 6
            5'd7: bcd_to_seg = 7'b1111000; // 7
            5'd8: bcd_to_seg = 7'b0000000; // 8
            5'd9: bcd_to_seg = 7'b0010000; // 9
            default: bcd_to_seg = 7'b1111111; // 熄灭
        endcase
    endfunction
endmodule