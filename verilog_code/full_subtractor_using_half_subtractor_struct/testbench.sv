// Code your testbench here
// or browse Examples
//Kiran gorajanal

module full_subtractor_tb;

  reg a, b, bin;
  wire diff, bout;

  integer i;

  // DUT Instantiation
  full_subtractor dut(a, b, bin, diff, bout);

  initial begin
    // 3 inputs → 2^3 = 8 combinations
    for(i = 0; i < 2**3; i = i + 1)
    begin
      {a, b, bin} = i;
      #5;
    end
  end

  // Monitor outputs
  initial begin
    $monitor("Time=%0t | a=%b b=%b bin=%b | diff=%b bout=%b",
              $time, a, b, bin, diff, bout);
  end

  // Dump VCD file
  initial begin
    $dumpfile("full_subtractor.vcd");
    $dumpvars(0, full_subtractor_tb);
  end

endmodule