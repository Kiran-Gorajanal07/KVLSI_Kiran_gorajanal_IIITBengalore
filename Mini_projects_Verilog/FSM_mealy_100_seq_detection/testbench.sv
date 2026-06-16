// Code your testbench here
// or browse Examples
module fsm_100_mealy_tb;

  reg clk, rst, seq_in;
  wire det_out;

  fsm_100_mealy dut(clk, rst, seq_in, det_out);

  initial begin
    clk = 0;
    rst = 0;
    seq_in = 0;

    #10 rst = 1;

    // Sequence input stream
    #10 seq_in = 1;
    #10 seq_in = 0;
    #10 seq_in = 0;   // detect 100

    #10 seq_in = 1;
    #10 seq_in = 1;
    #10 seq_in = 0;
    #10 seq_in = 0;   // detect 100

    #10 seq_in = 1;
    #10 seq_in = 0;
    #10 seq_in = 1;

    #20 $finish;
  end

  always #5 clk = ~clk;

  initial begin
    $monitor("time=%0t | seq_in=%b | det_out=%b | ps=%b",
              $time, seq_in, det_out, dut.ps);

    $dumpfile("fsm_mealy.vcd");
    $dumpvars(0, fsm_100_mealy_tb);
  end

endmodule