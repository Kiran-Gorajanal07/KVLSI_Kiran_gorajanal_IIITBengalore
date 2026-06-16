// Code your testbench here
// or browse Examples
module mealy_1010_over_tb;

  reg clk, rst, seq_in;
  wire det_out;

  mealy_1010_over dut(clk, rst, seq_in, det_out);

  initial begin
    clk = 0;
    rst = 0;
    seq_in = 0;

    #10 rst = 1;

    // 1010 detected
    #10 seq_in = 1;
    #10 seq_in = 0;
    #10 seq_in = 1;
    #10 seq_in = 0;

    // overlapping detection
    #10 seq_in = 1;
    #10 seq_in = 0;
    #10 seq_in = 1;
    #10 seq_in = 0;

    // random pattern
    #10 seq_in = 1;
    #10 seq_in = 1;
    #10 seq_in = 0;

    #20 $finish;
  end

  always #5 clk = ~clk;

  initial begin
    $monitor("time=%0t | seq_in=%b | det_out=%b | ps=%b",
              $time, seq_in, det_out, dut.ps);

    $dumpfile("mealy_1010.vcd");
    $dumpvars(0, mealy_1010_over_tb);
  end

endmodule