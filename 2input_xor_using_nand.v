// Code your design here
//2 input xor gate using only NAND gate using structural modelling

module nand_gate(
  input a,
  input b,
  output y);
  
  assign y = ~(a&b);
  
endmodule

module xor_using_nand(
  input a,
  input b,
  output y);
  
  wire n1,n2,n3;
  
  nand_gate g1(.a(a),.b(b),.y(n1));
  nand_gate g2(.a(a),.b(n1),.y(n2)); 
  nand_gate g3(.a(b),.b(n1),.y(n3));
  nand_gate g4(.a(n2),.b(n3),.y(y)); 
  
endmodule