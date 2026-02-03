// Code your testbench here
// or browse Examples
module test;

  reg a, b;
  wire y;

  // DUT instantiation
  xor_using_nand dut (
    .a(a),
    .b(b),
    .y(y)
  );

  initial begin
    // EP Wave / GTKWave setup
    $dumpfile("xor_using_nand.vcd");   // waveform file
    $dumpvars(0, test);                // dump all signals

    $monitor("time=%0t a=%b b=%b y=%b", $time, a, b, y);

    a = 0; b = 0;
    #5 a = 0; b = 1;
    #5 a = 1; b = 0;
    #5 a = 1; b = 1;

    #5 $finish;
  end

endmodule
