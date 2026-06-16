module sr_flipflop_tb;

  reg s, r, clk, rst;
  wire Qfs, Qfas;

  // DUT
  sr_flipflop dut(s, r, clk, rst, Qfs, Qfas);

  initial begin
    
    clk = 0;
    rst = 0;
    s = 0; r = 0;

    #12 rst = 1;

    #1  s = 0; r = 1;   // reset
    #10 s = 1; r = 0;   // set
    #5  s = 0; r = 0;   // hold
    #10 s = 1; r = 1;   // invalid
    #5  s = 0; r = 1;   // reset again

    #10 $finish;
  end

  // Clock generation
  always #5 clk = ~clk;

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, sr_flipflop_tb);
  end

endmodule