// Code your testbench here
// or browse Examples

module shifting_tb;

  reg clk, rst;
  wire [3:0] count;

  shifting dut(clk, rst, count);

  initial begin
    clk = 0;
    rst = 0;

    #10 rst = 1;

    #100 $finish;
  end

  always #5 clk = ~clk;

  initial begin
    $monitor("time=%0t | count=%b", $time, count);
    $dumpfile("ring.vcd");
    $dumpvars(0, shifting_tb);
  end

endmodule