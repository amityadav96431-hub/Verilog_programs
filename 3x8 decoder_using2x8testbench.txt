// Testbench for 3x8 decoder
module tb_decoder3x8;

  reg a, b, c;
  wire [7:0] y;

  // Instantiate DUT
  decoder3x8_using_2x4 dut (
    .a(a),
    .b(b),
    .c(c),
    .y(y)
  );

  initial begin
    // Waveform dump
    $dumpfile("decoder3x8.vcd");
    $dumpvars(0, tb_decoder3x8);

    $monitor("time=%0t a=%b b=%b c=%b y=%b", 
              $time, a, b, c, y);

    // Apply all input combinations
    a=0; b=0; c=0; #10;
    a=0; b=1; c=0; #10;
    a=1; b=0; c=0; #10;
    a=1; b=1; c=0; #10;

    a=0; b=0; c=1; #10;
    a=0; b=1; c=1; #10;
    a=1; b=0; c=1; #10;
    a=1; b=1; c=1; #10;

    #10 $finish;
  end

endmodule
