module seg_disp(
      input [6:0] a,b,
      input clk, rst,                   
      output  [6:0] sseg,
      output  [7:0] an
      );
      wire [3:0] one,ten,hun;
      wire [7:0] sum;                  
      assign sum = {1'b0,a}+{1'b0,b};

      bintobcd8 bintobcd8_1(
         .bin(sum),
         .one(one),
         .ten(ten),
         .hun(hun)
         );
         
      scan_led_disp scan_led_disp_1(
         .clk(clk),
         .rst(rst), 
         .one(one),
         .ten(ten),
         .hun(hun),
         .an(an), 
         .sseg(sseg)
         ); 
endmodule
/////////////////////////////////////////////////////////////

module bintobcd8(
       input [7:0] bin,      
       output [3:0] one,ten,hun
       );
       ////////////////////////////////////////////// 
       integer k;
       reg [3:0] ones;
       reg [3:0] tens;
       reg [3:0] hundreds;
       always@(*)
       begin
           ones = 4'd0;
           tens = 4'd0;
           hundreds = 4'd0;
           for(k=7;k>=0;k=k-1)
           begin
                   if(ones >= 4'd5)   ones = ones + 4'd3;
                   if(tens >= 4'd5)   tens = tens + 4'd3;
                   if(hundreds >= 4'd5)  hundreds = hundreds + 4'd3;
                   hundreds = {hundreds[2:0],tens[3]};
                   tens     = {tens[2:0],ones[3]};
                   ones     = {ones[2:0],bin[k]};
           end
        end
        assign {hun,ten,one}={hundreds,tens,ones};   
endmodule
/////////////////////////////////////////////////// 
module scan_led_disp(
   input clk,
   input rst, 
   input [3:0] one,ten,hun,
   output reg [7:0] an, 
   output reg [6:0] sseg
   ); 
   localparam N = 16;
   reg [N-1:0] cnt;  
   reg [3:0] hex;  
   
   always @(posedge clk,posedge rst) 
   begin 
     if(rst) begin
       cnt <= 0; 
       hex <= 4'd10;
       end
     else begin
       cnt <= cnt + 1; 
       case(cnt[N-1:N-2]) 
           2'b00:begin
                hex <= one;
                an <= 8'b11111110;
                end
           2'b01:begin
                hex <= ten;
                an <= 8'b11111101;
                end
           default: begin
                hex <= hun;
                an <= 8'b11111011;
                end  
       endcase 
     end
   end
   always@ (*)
      case(hex)
        4'h0: sseg[6:0] = 7'b0000001;
        4'h1: sseg[6:0] = 7'b1001111;
        4'h2: sseg[6:0] = 7'b0010010;
        4'h3: sseg[6:0] = 7'b0000110;
        4'h4: sseg[6:0] = 7'b1001100;
        4'h5: sseg[6:0] = 7'b0100100;
        4'h6: sseg[6:0] = 7'b0100000;
        4'h7: sseg[6:0] = 7'b0001111;
        4'h8: sseg[6:0] = 7'b0000000;
        4'h9: sseg[6:0] = 7'b0000100;
        default:
              sseg[6:0] = 7'b1111111;
      endcase
endmodule 