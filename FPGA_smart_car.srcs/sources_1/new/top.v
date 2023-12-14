//主文件

module top(pclk, vsync, href, d, i, rst_n, config_finished, sioc, siod, reset, pwdn, xclk, vga_hsync, vga_vsync, vga_r, vga_g, vga_b, sys_clock, sseg, an ,lr[1:0]);
   input        pclk;
   input        vsync;
   input        href;
   input [7:0]  d;
   input        i;
   input        rst_n;
   output       config_finished;
   output       sioc;
   inout        siod;
   output       reset;
   output       pwdn;
   output       xclk;
   output       vga_hsync;
   output       vga_vsync;
   output [3:0] vga_r;
   output [3:0] vga_g;
   output [3:0] vga_b;
   input        sys_clock;
   output [6:0] sseg;
   // output [6:0] sseg2;
   output [7:0] an;
   output [1:0] lr;
   // output [7:0] an2;
   // output reg [7:0] left_pixel_count;
   // output reg [7:0] middle_pixel_count;
   // output reg [7:0] right_pixel_count;
   
   
   wire         clk_24m;
   wire         clk_25m;
   wire         clk_50m;
   wire         o_t;
   wire [0:0]   we_t;
   wire [11:0]  dout_t;
   wire [17:0]  addr_t;
   wire [17:0]  frame_addr_t;
   wire [11:0]  frame_pixel_t;
   wire         reset_t;
   wire         initial_en_t;
   wire         rst_n_not;
   wire [7:0]   middle_pixel_count;
   wire [7:0]   left_pixel_count;
   wire [7:0]   right_pixel_count;
   assign xclk = clk_25m;
   assign reset = reset_t;
   assign rst_n_not = (~(rst_n));
   
   blk_mem_gen_0 bram(
      .clka(pclk),
      .wea(we_t),
      .dina(dout_t),
      .addra(addr_t),
      .addrb(frame_addr_t),
      .clkb(clk_24m),
      .doutb(frame_pixel_t)
      );
   
   
   clk_wiz_0 clk(
      .reset(rst_n_not),
      .clk_out1(clk_24m),
      .clk_out2(clk_25m),
      .clk_out3(clk_50m),
      .clk_in1(sys_clock)
      );
   
   
   ov5640_capture capture(
      .pclk(pclk),
      .vsync(vsync),
      .href(href),
      .d(d),
      .addr(addr_t),
      .dout(dout_t),
      .we(we_t[0])
   );
   

   ov5640_vga vga(
      .clk25(clk_25m),
      .vga_red(vga_r),
      .vga_green(vga_g),
      .vga_blue(vga_b),
      .vga_hsync(vga_hsync),
      .vga_vsync(vga_vsync),
      .frame_addr(frame_addr_t),
      .frame_pixel(frame_pixel_t),
      .left_pixel_count(left_pixel_count),
      .middle_pixel_count(middle_pixel_count),
      .right_pixel_count(right_pixel_count)
   );
   
   
   power_on_delay power(
      .reset_n(rst_n),
      .clk_50m(clk_25m),
      .camera1_rstn(reset_t),
      .camera_pwnd(pwdn),
      .initial_en(initial_en_t)
   );
   
   
   reg_config configs(
      .clk_25m(clk_25m),
      .camera_rstn(reset_t),
      .initial_en(initial_en_t),
      .reg_conf_done(config_finished),
      .i2c_sclk(sioc),
      .i2c_sdat(siod)
   );

   // module seg_disp(
   //    input [6:0] a,b,
   //    input clk, rst,                   
   //    output  [6:0] sseg,
   //    output  [7:0] an
   //    );
   //    wire [3:0] one,ten,hun;
   //    wire [7:0] sum;   
   seg_disp diap1(
      .a(20'b0),
      .b(middle_pixel_count),
      .clk(sys_clock),
      .rst(i),
      .sseg(sseg),
      .an(an)
   );
   car car1(
      .lr(lr),
      .clk(clk_25m),
      .rst(i),
      .left_pixel_count(left_pixel_count),
      .middle_pixel_count(middle_pixel_count),
      .right_pixel_count(right_pixel_count)
   );

endmodule
