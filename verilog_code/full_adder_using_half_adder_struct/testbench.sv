// Code your testbench here
// or browse Examples

module full_adder_tb;

  reg a, b, cin;
  wire sum, cout;

  integer i;

  // DUT
  full_adder dut(a, b, cin, sum, cout);

  initial begin
    // 3 inputs → 2^3 = 8 combinations
    for(i = 0; i < 2**3; i = i + 1)
    begin
      {a, b, cin} = i;
      #5;
    end
  end

  // Monitor
  initial begin
    $monitor("Time=%0t | a=%b b=%b cin=%b | sum=%b cout=%b",
              $time, a, b, cin, sum, cout);
  end

  // Dump VCD
  initial begin
    $dumpfile("full_adder_tb.vcd");
    $dumpvars(0, full_adder_tb);
  end

endmodule