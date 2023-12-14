module car_left_or_right (
    input [19:0] right_pixel_count,
    input [19:0] middle_pixel_count,
    input [19:0] left_pixel_count,
    input clk,
    input rst,
    output reg  [1:0] lr
);
    always @(posedge clk or posedge rst) begin
        if (rst)
            lr <= 2'b00; 
        else
        if (right_pixel_count  > left_pixel_count + 20'd1000 )
            lr <= 2'b10;
        else if (left_pixel_count > right_pixel_count + 20'd1000 )
            lr <= 2'b01;
        else
            lr <= 2'b11;
    end

endmodule


module car_run_or_stop (
    input [19:0] right_pixel_count,
    input [19:0] middle_pixel_count,
    input [19:0] left_pixel_count,
    input clk,
    input rst,
    output reg  [2:0] speed
);
 wire [21:0] total_pixel_count;
    assign  total_pixel_count[21:0] = {1'b0,right_pixel_count }+ {1'b0,middle_pixel_count} + {1'b0,left_pixel_count};
    always @(posedge clk or posedge rst) begin
        if (rst)
            speed <= 3'b000; 
        else if (total_pixel_count > 22'd800000)
            speed <= 3'b000;
        else if (total_pixel_count > 22'd500000)
            speed <= 3'b001;
        else if (total_pixel_count > 22'd100000)
            speed <= 3'b010;
        else if (total_pixel_count > 22'd50000)
            speed <= 3'b011;
        else if (total_pixel_count > 22'd10000)
            speed <= 3'b100;
        else if (total_pixel_count > 22'd1000)
            speed <= 3'b101;
        else if (total_pixel_count > 22'd500)
            speed <= 3'b110;
        else if (total_pixel_count > 22'd100)
            speed <= 3'b111;
        else
            speed <= 3'b000;
    end
endmodule