module ov5640_capture (
    input pclk,
    input vsync,
    input href,
    input [7:0] d,
    output  [17:0] addr,
    output reg [11:0] dout,
    output reg we
);

reg [15:0] d_latch = 16'b0;
reg [18:0] address = 19'b0;
reg [18:0] address_next = 19'b0;
reg [1:0] wr_hold = 2'b0;

assign addr = address[18:1];

always @(posedge pclk) begin
    if (vsync == 1'b1) begin
        address <= 19'b0;
        address_next <= 19'b0;
        wr_hold <= 2'b0;
    end else begin
        dout <= {d_latch[11:8], d_latch[7:4], d_latch[3:0]};
        address <= address_next;
        we <= wr_hold[1];
        wr_hold <= {wr_hold[0], href & ~wr_hold[0]};
        d_latch <= {d_latch[14:0], d};

        if (wr_hold[1] == 1'b1) begin
            address_next <= address_next + 1;
        end else if (wr_hold[0] == 1'b1) begin
            address_next <= address_next;
        end
    end
end

endmodule
