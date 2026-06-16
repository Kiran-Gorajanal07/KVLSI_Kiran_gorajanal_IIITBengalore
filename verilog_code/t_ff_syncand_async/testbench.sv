// Code your testbench here
// or browse Examples

module t_flipflop_tb;

  reg clk, rst, T;
  wire Qsynch, Qasynch;

  // DUT
  t_flipflop dut(clk, rst, T, Qsynch, Qasynch);

  // Stimulus
  initial begin
    clk = 0;
    rst = 0;
    T   = 0;

    #10 rst = 1;

    #5  T = 1;   // toggle
    #10 T = 0;   // hold
    #10 T = 1;   // toggle
    #10 T = 1;   // toggle again
    #10 T = 0;   // hold

    #10 rst = 0; // async reset check
    #5  rst = 1;

    #20 $finish;
  end

  // Clock
  always #5 clk = ~clk;

  // Monitor
  initial begin
    $monitor("time=%0t | clk=%b rst=%b T=%b | Qsynch=%b Qasynch=%b",
              $time, clk, rst, T, Qsynch, Qasynch);
  end

  // Dump
  initial begin
    $dumpfile("t_ff.vcd");
    $dumpvars(0, t_flipflop_tb);
  end

endmodule