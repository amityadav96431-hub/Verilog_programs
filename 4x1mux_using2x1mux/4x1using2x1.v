//4x1 mx using 2x1mux

// 2x1 MUX  
module mux2x1(
  input  i0,
  input  i1,
  input  s,
  output y
);
  //assign y = s?i1:i0;
  assign y = (~s & i0) | (s & i1);
endmodule


// 4x1 MUX using 2x1 MUX (structural)
module mux4x1_using_2x1(
  input  [3:0] i,
  input  [1:0] s,
  output y
);

  wire w1, w2;

  mux2x1 m1 (.i0(i[0]), .i1(i[1]), .s(s[0]), .y(w1));
  mux2x1 m2 (.i0(i[2]), .i1(i[3]), .s(s[0]), .y(w2));
  mux2x1 m3 (.i0(w1),   .i1(w2),   .s(s[1]), .y(y));

endmodule

