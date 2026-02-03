// Code your design here
//3x8 decoder using 2x4 decoder
module decoder2x4(
  input a,b,EN,
  output [3:0]y);
  
  assign y[0]=EN & (~a) & (~b);
  assign y[1]=EN & (~a) & (b);
  assign y[2]=EN & (a) & (~b);
  assign y[3]=EN & (a) & (b);  
endmodule

module decoder3x8_using_2x4(
   input a,b,c,
  output [7:0]y);
  
  wire[3:0] y_low,y_high;
  
  decoder2x4 d1(a,b,~c,y_low);
  decoder2x4 d2(a,b,c,y_high);
  
  assign y[3:0] = y_low;
  assign y[7:4] = y_high;
endmodule
  