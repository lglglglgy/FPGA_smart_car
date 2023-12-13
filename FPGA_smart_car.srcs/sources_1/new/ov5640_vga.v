module ov5640_vga (
    input clk25,
    output reg [3:0] vga_red,
    output reg [3:0] vga_green,
    output reg [3:0] vga_blue,
    output reg vga_hsync,
    output reg vga_vsync,
    output  [17:0] frame_addr,
    input [11:0] frame_pixel,
    output reg [19:0] left_pixel_count,
    output reg [19:0] middle_pixel_count,
    output reg [19:0] right_pixel_count
);

// Timing constants
parameter hRez = 640+160;
parameter hStartSync = 640+16+160;
parameter hEndSync = 640+16+96+160;
parameter hMaxCount = 800+160;

parameter vRez = 480;
parameter vStartSync = 480+10;
parameter vEndSync = 480+10+2;
parameter vMaxCount = 480+10+2+33;

parameter hsync_active = 1'b0;
parameter vsync_active = 1'b0;

reg [9:0] hCounter = 10'b0;
reg [9:0] vCounter = 10'b0;
reg [18:0] address = 19'b0;
reg blank = 1'b1;

reg [19:0] left_count = 20'b0;
reg [19:0] middle_count = 20'b0;
reg [19:0] right_count = 20'b0;

assign frame_addr = address[18:1];

always @(posedge clk25) begin
    // Count the lines and rows
    if (hCounter == hMaxCount-1) begin
        hCounter <= 10'b0;
        if (vCounter == vMaxCount-1) begin
            vCounter <= 10'b0;
            
            // Output the pixel counts at the end of a frame
            left_pixel_count <= left_count;
            middle_pixel_count <= middle_count;
            right_pixel_count <= right_count;
            
            // Reset the counts for the next frame
            left_count <= 20'b0;
            middle_count <= 20'b0;
            right_count <= 20'b0;
        end else begin
            vCounter <= vCounter + 1;
        end
    end else begin
        hCounter <= hCounter + 1;
    end

    if (blank == 1'b0) begin
        vga_red <= frame_pixel[11:8];
        vga_green <= frame_pixel[7:4];
        vga_blue <= frame_pixel[3:0];
        
        // Count pixels in the three sections
        if (hCounter < hRez *1/3 ) begin
            if (vga_green - 4'b0011 > vga_red && vga_green - 4'b0011 > vga_blue && vga_green > 4'b0101)
                begin
                    left_count <= left_count + 1;
                    vga_red <= 4'b0;
                    vga_green <= 4'b0;
                    vga_blue <= 4'b0;
                end

        end else if (hCounter < hRez*2/3) begin
            if (vga_green - 4'b0011 > vga_red && vga_green - 4'b0011 > vga_blue && vga_green > 4'b0101)
               begin
                    middle_count <= middle_count + 1;
                    vga_red <= 4'b0;
                    vga_green <= 4'b0;
                    vga_blue <= 4'b0;
                end
        end else begin
            if (vga_green - 4'b0011 > vga_red && vga_green - 4'b0011 > vga_blue && vga_green > 4'b0101)
                begin
                    right_count <= right_count + 1;
                    vga_red <= 4'b0;
                    vga_green <= 4'b0;
                    vga_blue <= 4'b0;
                end
        end
    end else begin
        vga_red <= 4'b0;
        vga_green <= 4'b0;
        vga_blue <= 4'b0;
    end

    if (vCounter >= vRez) begin
        address <= 19'b0;
        blank <= 1'b1;
    end else begin
        if (hCounter < hRez) begin
            blank <= 1'b0;
            address <= address + 1;
        end else begin
            blank <= 1'b1;
        end
    end

    // hSync pulse?
    if (hCounter >= hStartSync && hCounter <= hEndSync) begin
        vga_hsync <= hsync_active;
    end else begin
        vga_hsync <= ~hsync_active;
    end

    // vSync pulse?
    if (vCounter >= vStartSync && vCounter < vEndSync) begin
        vga_vsync <= vsync_active;
    end else begin
        vga_vsync <= ~vsync_active;
    end
end

endmodule
