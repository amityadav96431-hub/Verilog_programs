// Code your testbench here
// or browse Examples
module testmux_4x1;
  reg [3:0]i;
  reg[1:0]s;
      
  wire y;
  mux4x1_using_2x1 dut(
    .i(i),
    .s(s),
    .y(y)
  );
  initial begin
    $dumpfile("dump.vcd"); // file name can be anything (make sure there is no space before the file name, otherwise it will show "vcd not found")
$dumpvars(0, testmux_4x1);

 $monitor("time=%0t i=%b s=%b y=%b", $time, i, s, y);

    // Test cases
    i = 4'b1010;

    s = 2'b00; #10;  // y = i[0]
    s = 2'b01; #10;  // y = i[1]
    s = 2'b10; #10;  // y = i[2]
    s = 2'b11; #10;  // y = i[3]

    #10 $finish;
  end

endmodule
