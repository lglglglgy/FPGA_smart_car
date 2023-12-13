module car (
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