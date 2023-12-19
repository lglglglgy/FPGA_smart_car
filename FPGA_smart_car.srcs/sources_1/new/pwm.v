module car_pwm(
    input clk,
    input [7:0] duty,
    output reg pwm
    );
    reg [7:0] count=8'd0;
    always @(posedge clk) begin
        if(count < duty) begin
            pwm <= 1'b1;
        end                                                                                     
        else begin
            pwm <= 1'b0;
        end
        if(count == 8'b11111111) begin
            count <= 8'b00000000;
        end
        else begin
            count <= count + 1'b1;
        end
    end
endmodule
 module speed_code(
    input [2:0] speed,
    input [1:0] lr,
    output  [15:0] speed_code
    );
    wire [7:0] speed1;
    wire [7:0] speed2;
    assign speed1[7:6] = speed[2:1];
    assign speed2[7:6] = speed[2:1];
    assign speed1[5:0] = {lr[1],lr[1],lr[1],lr[1],lr[1],lr[1]};
    assign speed2[5:0] = {lr[0],lr[0],lr[0],lr[0],lr[0],lr[0]};
    assign speed_code[15:8] = speed1[7:0];
    assign speed_code[7:0] = speed2[7:0];
endmodule