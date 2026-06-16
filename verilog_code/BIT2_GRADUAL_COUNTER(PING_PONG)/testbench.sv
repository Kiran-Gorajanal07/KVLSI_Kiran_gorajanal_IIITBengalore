// Code your testbench here
// or browse Examples


module tb;

  reg clk, rst;
  wire [1:0] count;

  updown_2bit dut(clk, rst, count);

  initial begin
    clk = 0;
    rst = 0;

    #10 rst = 1;

    #100 $finish;
  end

  always #5 clk = ~clk;

  initial begin
    $monitor("time=%0t count=%0d", $time, count);
    $dumpfile("updown2.vcd");
    $dumpvars(0, tb);
  end

endmodule