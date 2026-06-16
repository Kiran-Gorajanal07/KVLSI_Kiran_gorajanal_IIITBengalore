module sr_ff_tb;

  reg clk, rst, S, R;
  wire Q;

  sr_ff dut(clk, rst, S, R, Q);

  // Clock
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  // Stimulus
  initial begin
    rst = 0; S = 0; R = 0;
    #10 rst = 1;

    S = 1; R = 0; #10;  // set
    S = 0; R = 1; #10;  // reset
    S = 0; R = 0; #10;  // hold
    S = 1; R = 1; #10;  // invalid

    #20 $finish;
  end

  // Monitor
  initial begin
    $monitor("time=%0t | S=%b R=%b Q=%b", $time, S, R, Q);
  end

  initial begin
    $dumpfile("sr_ff.vcd");
    $dumpvars(0, sr_ff_tb);
  end

endmodule