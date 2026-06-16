// Code your testbench here
// or browse Examples
module moore_1010_over_tb;

  reg clk, rst, seq_in;
  wire det_out;

  moore_1010_over dut(clk, rst, seq_in, det_out);

  initial begin
    clk = 0;
    rst = 0;
    seq_in = 0;

    #10 rst = 1;

    // 1010 detection
    #10 seq_in = 1;
    #10 seq_in = 0;
    #10 seq_in = 1;
    #10 seq_in = 0;

    // overlapping 1010
    #10 seq_in = 1;
    #10 seq_in = 0;
    #10 seq_in = 1;
    #10 seq_in = 0;

    // random bits
    #10 seq_in = 1;
    #10 seq_in = 1;
    #10 seq_in = 0;

    #30 $finish;
  end

  always #5 clk = ~clk;

  initial begin
    $monitor("time=%0t | seq_in=%b | det_out=%b | ps=%b",
              $time, seq_in, det_out, dut.ps);

    $dumpfile("moore_1010.vcd");
    $dumpvars(0, moore_1010_over_tb);
  end

endmodule